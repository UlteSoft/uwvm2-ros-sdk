# Copyright 2018 Open Source Robotics Foundation, Inc.
# Copyright 2026 MacroModel SDK contributors.
# SPDX-License-Identifier: Apache-2.0
"""Bounded cooperative Executor over genuine Python.Wasm Tasks and ROS pollers.

Public signatures follow Jazzy 7.1.12. This explicit migration profile has no
native wait set, threads or clock. spin_once requires timeout_sec=0; spin uses
the Context's finite, explicit idle driver. Native coroutine subscription
dispatch, callback groups and blocking/timed waits remain separate gaps.
"""

import inspect
from roswasm import Result, RosError
from .task import Future, Task


async def await_or_execute(callback, *args):
    """Await a coroutine function; return a normal callback's result unchanged."""
    if inspect.iscoroutinefunction(callback):
        return await callback(*args)
    return callback(*args)


class Executor:
    _MAX_TASKS = 256
    _MAX_NODES = 256
    _MAX_LIFETIME_TASKS = 65536

    def __init__(self, *, context=None):
        if context is None:
            from . import get_default_context
            context = get_default_context()
        from .context import Context
        if not isinstance(context, Context):
            raise TypeError("rclpy Context required")
        self._context = context
        self._tasks = [None] * self._MAX_TASKS
        self._nodes = []
        self._spinning = False
        self._is_shutdown = False
        self._created = self._next_ticket = self._node_position = 0
        self._prefer_task = True
        self._context_was_live = context.ok()

    @property
    def context(self):
        return self._context

    @property
    def is_spinning(self):
        return self._spinning

    def _live(self):
        if self._is_shutdown:
            raise RuntimeError("Executor has shut down")
        live = self.context.ok()
        if self._context_was_live and not live:
            raise RuntimeError("Executor Context has shut down")
        self._context_was_live = self._context_was_live or live

    def _make_task(self, callback, args, kwargs, *, ready):
        self._live()
        if self._created >= self._MAX_LIFETIME_TASKS:
            raise RosError(Result(90))
        slot = next((i for i, value in enumerate(self._tasks) if value is None), None)
        if slot is None:
            raise RosError(Result(90))
        # Reserve before invoking coroutine-function construction.
        self._tasks[slot] = self
        try:
            task = Task(callback, args=args, kwargs=kwargs, executor=self)
            task._slot = slot
            self._tasks[slot] = task
            self._created += 1
            if ready:
                self._activate(task)
            return task
        except BaseException:
            self._tasks[slot] = None
            raise

    def create_task(self, callback, *args, **kwargs):
        return self._make_task(callback, args, kwargs, ready=True)

    def create_future(self):
        self._live()
        return Future(executor=self)

    def _reserve_done_callback(self, callback, future):
        return self._make_task(callback, (future,), {}, ready=False)

    def _activate(self, task):
        self._live()
        if not isinstance(task, Task) or task._executor() is not self:
            raise TypeError("Task reserved by this exact Executor required")
        if task._slot is None or self._tasks[task._slot] is not task:
            raise RuntimeError("Task is no longer registered")
        if not task._pending():
            return
        if task._ticket is None:
            task._ticket = self._next_ticket
            self._next_ticket += 1

    def _call_task_in_next_spin(self, task):
        self._activate(task)

    def _retire(self, task):
        slot = task._slot
        if slot is not None and self._tasks[slot] is task:
            self._tasks[slot] = None
        task._slot = task._ticket = None

    def _ready_task(self):
        selected = None
        for task in self._tasks:
            if isinstance(task, Task) and task._ticket is not None:
                if selected is None or task._ticket < selected._ticket:
                    selected = task
        return selected

    def add_node(self, node):
        from .node import Node
        self._live()
        if not isinstance(node, Node) or node.context is not self.context:
            raise TypeError("live Node from this exact Context required")
        node._live()
        if self._spinning or self.context._dispatching:
            raise RosError(Result(17))
        if node in self._nodes:
            return False
        if len(self._nodes) == self._MAX_NODES:
            raise RosError(Result(90))
        # Append can fail before changing the previous executor association.
        reference = node._executor_reference(self)
        self._nodes.append(node)
        previous = node.executor
        try:
            if previous is not None:
                previous.remove_node(node)
        except BaseException:
            self._nodes.pop()
            raise
        node._migration_executor_ref = reference
        return True

    def remove_node(self, node):
        if self._spinning or self.context._dispatching:
            raise RosError(Result(17))
        if node in self._nodes:
            self._nodes.remove(node)
            if node.executor is self:
                node._migration_executor_ref = None
            self._node_position = 0

    def get_nodes(self):
        return list(self._nodes)

    def wake(self):
        # Queue state is already visible to the same guest thread. This method
        # supplies no native wakeup or blocking-wait capability.
        self._live()

    def _poll_node(self):
        for _ in range(len(self._nodes)):
            node = self._nodes[self._node_position]
            self._node_position = (self._node_position + 1) % len(self._nodes)
            node._live()
            result = node._executor.spin_once()
            if result.error not in (0, 11):
                raise RosError(result)
            if result.error != 11:
                return True
        return False

    def spin_once(self, timeout_sec=None):
        if timeout_sec not in (0, 0.0):
            raise NotImplementedError("native timed/infinite wait-set support is required")
        self._live()
        if self._spinning or self.context._dispatching:
            raise RosError(Result(17))
        self._spinning = True
        try:
            task = self._ready_task()
            if not self._prefer_task and self._poll_node():
                self._prefer_task = True
                return
            if task is not None:
                task._ticket = None
                if self.context.ok():
                    from ._dispatch import DispatchLease
                    with DispatchLease(self.context):
                        task()
                else:
                    task()
                self._prefer_task = False
                if task.done() and task.exception() is not None:
                    raise task.exception()
            else:
                self._poll_node()
                self._prefer_task = True
        finally:
            self._spinning = False

    def spin(self):
        self._live()
        if not self.context.ok() or self.context.idle_wait is None:
            raise NotImplementedError("live Context with explicit finite idle driver required")
        while not self._is_shutdown and self.context.ok():
            self.spin_once(timeout_sec=0)
            if not self.context.next_credit():
                break

    def _future(self, future):
        if not isinstance(future, Future):
            raise TypeError("rclpy Future required")
        executor = future._executor()
        if executor is None:
            future._set_executor(self)
        elif executor is not self:
            raise RuntimeError("Future belongs to another Executor")

    def spin_once_until_future_complete(self, future, timeout_sec=None):
        if timeout_sec not in (0, 0.0):
            raise NotImplementedError("native timed/infinite wait-set support is required")
        self._future(future)
        if future._pending():
            self.spin_once(timeout_sec=0)

    def spin_until_future_complete(self, future, timeout_sec=None):
        if timeout_sec not in (None, 0, 0.0):
            raise NotImplementedError("native timed wait-set support is required")
        self._future(future)
        if timeout_sec in (0, 0.0):
            return self.spin_once_until_future_complete(future, timeout_sec=0)
        if self.context.idle_wait is None or not self.context.ok():
            raise NotImplementedError("live Context with explicit finite idle driver required")
        while future._pending() and not self._is_shutdown and self.context.ok():
            self.spin_once(timeout_sec=0)
            if future._pending() and not self.context.next_credit():
                break

    def shutdown(self, timeout_sec=None):
        if timeout_sec not in (None, 0, 0.0):
            raise NotImplementedError("native timed shutdown is not implemented")
        if self._spinning or self.context._dispatching:
            raise RosError(Result(17))
        if self._is_shutdown:
            return True
        # Keep the executor usable if coroutine.close raises: unresolved tasks
        # remain registered for explicit inspection/retry.
        tasks = tuple(task for task in self._tasks if isinstance(task, Task))
        for task in tasks:
            task.cancel()
        for node in tuple(self._nodes):
            self.remove_node(node)
        self._is_shutdown = True
        return True

    def __enter__(self):
        self._live()
        return self

    def __exit__(self, kind, error, trace):
        self.shutdown()
        return False


class SingleThreadedExecutor(Executor):
    """The caller's genuine Python.Wasm thread performs each scheduled callback."""
