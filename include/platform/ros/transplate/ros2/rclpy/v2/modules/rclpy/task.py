# Copyright 2018 Open Source Robotics Foundation, Inc.
# Copyright 2026 MacroModel SDK contributors.
# SPDX-License-Identifier: Apache-2.0
"""Jazzy 7.1.12 Future/Task spellings in the single-thread Wasm profile.

Reference: ros2/rclpy 4e607c09d624debc39a4ae5405680c06d87fac35.
Each Future has 32 lifetime callback registrations. Executor callbacks reserve
their bounded Task slot before registration, so completion does not silently
lose a callback because the queue filled later. No native thread, event loop,
ROS permission, timer or cancellation capability is supplied by these objects.
"""

from enum import Enum
import inspect
import sys
import weakref
from roswasm import Result, RosError


def _fake_weakref():
    return None


class FutureState(Enum):
    PENDING = "PENDING"
    CANCELLED = "CANCELLED"
    FINISHED = "FINISHED"


class Future:
    def __init__(self, *, executor=None, _context=None, _client=None):
        self._state = FutureState.PENDING
        self._result = self._exception = None
        self._exception_fetched = False
        self._context, self._client = _context, _client
        self._executor = _fake_weakref
        self._callbacks = [None] * 32
        self._callback_tasks = [None] * 32
        self.callback_errors = [None] * 32
        self._callback_count = 0
        self._indices = tuple(range(32))
        self._notified = False
        self.last_event = None
        self.request_id = 0
        self._set_executor(executor)

    def __del__(self):
        exception = getattr(self, "_exception", None)
        if exception is not None and not self._exception_fetched:
            print("The following exception was never retrieved: " + str(exception),
                  file=sys.stderr)

    def _pending(self):
        return self._state == FutureState.PENDING

    def __await__(self):
        if self._pending():
            yield self
        if self._pending():
            raise RuntimeError("Future awaited a second time before it was done")
        return self.result()

    def cancelled(self):
        return self._state == FutureState.CANCELLED

    def done(self):
        # Match Jazzy: cancellation and successful/exceptional completion differ.
        return self._state == FutureState.FINISHED

    def result(self):
        if self._exception is not None:
            raise self.exception()
        return self._result

    def exception(self):
        self._exception_fetched = True
        return self._exception

    def _set_executor(self, executor):
        previous = self._executor()
        if previous is executor:
            return
        if executor is not None:
            from .executors import Executor
            if not isinstance(executor, Executor):
                raise TypeError("this migration profile's Executor required")
            if self._context is not None and self._context is not executor.context:
                raise RuntimeError("Future and Executor belong to different Contexts")
        reserved = [None] * 32
        try:
            if executor is not None:
                for index in self._indices:
                    callback = self._callbacks[index]
                    if callback is not None:
                        reserved[index] = executor._reserve_done_callback(callback, self)
        except BaseException:
            for task in reserved:
                if task is not None:
                    task.cancel()
            raise
        # All new slots exist before any old association is released.
        for task in self._callback_tasks:
            if task is not None:
                task.cancel()
        self._callback_tasks = reserved
        self._executor = _fake_weakref if executor is None else weakref.ref(executor)
        if executor is not None:
            self._context = executor.context

    def _invoke_one(self, callback):
        context = self._context
        if context is None or context._dispatching or not context.ok():
            callback(self)
        else:
            from ._dispatch import DispatchLease
            with DispatchLease(context):
                callback(self)

    def _notify(self):
        if self._notified:
            return
        self._notified = True
        executor = self._executor()
        for index in self._indices:
            callback, task = self._callbacks[index], self._callback_tasks[index]
            self._callbacks[index] = self._callback_tasks[index] = None
            if callback is None:
                continue
            try:
                if executor is None:
                    self._invoke_one(callback)
                else:
                    executor._activate(task)
            except BaseException as error:
                # Preserve the terminal result and every callback's own failure.
                self.callback_errors[index] = error

    def cancel(self):
        if not self._pending():
            return
        if self._client is not None:
            self._client.remove_pending_request(self)
        self._state = FutureState.CANCELLED
        self._notify()

    def set_result(self, result):
        self._result = result
        self._state = FutureState.FINISHED
        self._notify()

    def set_exception(self, exception):
        if not isinstance(exception, BaseException):
            raise TypeError("exception required")
        self._exception = exception
        self._exception_fetched = False
        self._state = FutureState.FINISHED
        self._notify()

    def add_done_callback(self, callback):
        if not callable(callback):
            raise TypeError("done callback required")
        if self._callback_count == len(self._callbacks):
            raise RosError(Result(90))
        executor = self._executor()
        task = None
        if executor is not None:
            task = executor._reserve_done_callback(callback, self)
        index = self._callback_count
        self._callback_count += 1
        if self._pending():
            self._callbacks[index], self._callback_tasks[index] = callback, task
        elif executor is None:
            # The upstream late/no-executor callback propagates its own error.
            self._invoke_one(callback)
        else:
            executor._activate(task)

    def remove_done_callback(self, callback):
        if not self._pending():
            return False
        for index in self._indices:
            if self._callbacks[index] is not None and self._callbacks[index] is callback:
                task = self._callback_tasks[index]
                if task is not None:
                    task.cancel()
                self._callbacks[index] = self._callback_tasks[index] = None
                return True
        return False


class Task(Future):
    def __init__(self, handler, args=None, kwargs=None, executor=None):
        if not callable(handler):
            raise TypeError("function or coroutine function required")
        super().__init__(executor=executor)
        self._handler = handler
        self._args = () if args is None else args
        self._kwargs = {} if kwargs is None else kwargs
        self._executing = False
        self._slot = None
        self._ticket = None
        self._waiting_future = self._resume_callback = None
        self.cleanup_error = None
        if inspect.iscoroutinefunction(handler):
            self._handler = handler(*self._args, **self._kwargs)
            self._args = self._kwargs = None

    def __call__(self):
        if not self._pending() or self._executing:
            return
        self._executing = True
        try:
            if inspect.iscoroutine(self._handler):
                try:
                    yielded = self._handler.send(None)
                except StopIteration as finished:
                    self.set_result(finished.value)
                    self._complete_task()
                else:
                    executor = self._executor()
                    if executor is None:
                        raise RuntimeError("resuming a coroutine requires executor.create_task()")
                    if isinstance(yielded, Future):
                        self._add_resume_callback(yielded, executor)
                    elif yielded is None:
                        executor._call_task_in_next_spin(self)
                    else:
                        raise TypeError("Expected coroutine to yield a Future or None")
            else:
                self.set_result(self._handler(*self._args, **self._kwargs))
                self._complete_task()
        except Exception as error:
            self.set_exception(error)
            self._complete_task(close_coroutine=True)
        finally:
            self._executing = False

    def _add_resume_callback(self, future, executor):
        previous = future._executor()
        if previous is None:
            future._set_executor(executor)
        elif previous is not executor:
            raise RuntimeError("A task can only await futures associated with the same executor")
        self._waiting_future = future
        self._resume_callback = self._resume
        future.add_done_callback(self._resume_callback)

    def _resume(self, _future):
        self._waiting_future = self._resume_callback = None
        self.__call__()

    def _complete_task(self, *, close_coroutine=False):
        if self._waiting_future is not None:
            self._waiting_future.remove_done_callback(self._resume_callback)
            self._waiting_future = self._resume_callback = None
        if close_coroutine and inspect.iscoroutine(self._handler):
            try:
                self._handler.close()
            except BaseException as error:
                self.cleanup_error = error
        self._handler = self._args = self._kwargs = None
        executor = self._executor()
        if executor is not None:
            executor._retire(self)

    def executing(self):
        return self._executing

    def cancel(self):
        if not self._pending():
            return
        if self._executing:
            raise RosError(Result(17))
        if inspect.iscoroutine(self._handler):
            self._handler.close()
        super().cancel()
        self._complete_task()
