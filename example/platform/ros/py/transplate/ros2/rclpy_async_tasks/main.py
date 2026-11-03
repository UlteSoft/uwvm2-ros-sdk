# SPDX-License-Identifier: Apache-2.0
"""Execute semantic assertions in the real Python.Wasm application."""
import json
from rclpy.context import Context
from rclpy.executors import SingleThreadedExecutor, await_or_execute
from rclpy.task import Future, Task
from roswasm import RosError

assertions = []


def expect(kind, function):
    try:
        function()
    except kind as error:
        return error
    raise AssertionError("expected " + kind.__name__)


def checked(label, condition):
    assert condition, label
    assertions.append(label)


executor = SingleThreadedExecutor(context=Context())
events = []
first = executor.create_task(lambda a, b=0: a + b, 2, b=5)
second = executor.create_task(lambda: events.append("second"))
checked("function-deferred", not first.done() and events == [])
executor.spin_once(timeout_sec=0)
checked("function-arguments-result", first.done() and first.result() == 7 and not second.done())
executor.spin_once(timeout_sec=0)
checked("task-fifo", events == ["second"])


def fail():
    raise ValueError("task failure")


failed = executor.create_task(fail)
expect(ValueError, lambda: executor.spin_once(timeout_sec=0))
checked("task-exception-result", isinstance(failed.exception(), ValueError) and
        str(expect(ValueError, failed.result)) == "task failure")

future = executor.create_future()
future.add_done_callback(lambda value: events.append(value.result()))
future.set_result(11)
checked("completion-callback-deferred", events == ["second"])
executor.spin_once(timeout_sec=0)
future.add_done_callback(lambda value: events.append(value.result() + 1))
checked("late-callback-deferred", events == ["second", 11])
executor.spin_once(timeout_sec=0)
checked("late-callback-executed", events == ["second", 11, 12])

removed = executor.create_future()
callback = lambda _: events.append("removed")
removed.add_done_callback(callback)
checked("callback-removal", removed.remove_done_callback(callback) and
        not removed.remove_done_callback(callback) and not removed.remove_done_callback(None))
removed.set_result(None)
executor.spin_once(timeout_sec=0)
assert "removed" not in events

pending = executor.create_future()


async def await_result():
    events.append("started")
    value = await pending
    events.append("resumed")
    return value + 1


coroutine = executor.create_task(await_result)
executor.spin_once(timeout_sec=0)
checked("coroutine-suspended", not coroutine.done() and events[-1] == "started")
executor.create_task(lambda: events.append("interleaved"))
executor.spin_once(timeout_sec=0)
pending.set_result(40)
executor.spin_once(timeout_sec=0)
checked("coroutine-await-resume", coroutine.done() and coroutine.result() == 41 and
        events[-3:] == ["started", "interleaved", "resumed"])


class YieldOnce:
    def __await__(self):
        yield None
        return 17


async def next_spin():
    return await YieldOnce()


yielding = executor.create_task(next_spin)
executor.spin_once(timeout_sec=0)
assert not yielding.done()
executor.spin_once(timeout_sec=0)
checked("yield-none-next-spin", yielding.done() and yielding.result() == 17)

normal_callback = executor.create_task(await_or_execute, lambda left, right: left + right, 3, 8)
executor.spin_once(timeout_sec=0)
checked("await-or-execute-normal-arguments", normal_callback.result() == 11)
callback_gate = executor.create_future()


async def async_callback(increment):
    return (await callback_gate) + increment


async_task = executor.create_task(await_or_execute, async_callback, 4)
executor.spin_once(timeout_sec=0)
assert not async_task.done()
callback_gate.set_result(6)
executor.spin_once(timeout_sec=0)
checked("await-or-execute-coroutine", async_task.done() and async_task.result() == 10)
normal_future = Future()
unchanged_result = executor.create_task(await_or_execute, lambda: normal_future)
executor.spin_once(timeout_sec=0)
checked("normal-callback-future-not-implicitly-awaited", unchanged_result.done() and
        unchanged_result.result() is normal_future and normal_future._pending())

other = SingleThreadedExecutor(context=Context())
foreign = other.create_future()


async def wrong_executor():
    return await foreign


wrong = executor.create_task(wrong_executor)
expect(RuntimeError, lambda: executor.spin_once(timeout_sec=0))
checked("foreign-executor-rejected", isinstance(wrong.exception(), RuntimeError) and
        wrong.cleanup_error is None and not wrong.executing())


class InvalidYield:
    def __await__(self):
        yield 19


async def invalid_yield():
    return await InvalidYield()


invalid = executor.create_task(invalid_yield)
expect(TypeError, lambda: executor.spin_once(timeout_sec=0))
checked("invalid-coroutine-yield-rejected", isinstance(invalid.exception(), TypeError) and
        not invalid.executing() and invalid.cleanup_error is None)

waiting = executor.create_future()
closed = []


async def cancelled_coroutine():
    try:
        await waiting
    finally:
        closed.append("closed")


cancelled = executor.create_task(cancelled_coroutine)
executor.spin_once(timeout_sec=0)
cancelled.cancel()
waiting.set_result(8)
executor.spin_once(timeout_sec=0)
checked("cancel-closes-and-unregisters-resume", cancelled.cancelled() and not cancelled.done()
        and cancelled.result() is None and closed == ["closed"])

cancel_future = executor.create_future()
cancel_events = []
cancel_future.add_done_callback(lambda value: cancel_events.append(value.cancelled()))
cancel_future.cancel()
cancel_future.cancel()
executor.spin_once(timeout_sec=0)
checked("future-cancel-not-finished", cancel_future.cancelled() and not cancel_future.done()
        and cancel_events == [True])

local = Future()
local_events = []
local.add_done_callback(lambda _: fail())
local.add_done_callback(lambda _: local_events.append("continued"))
local.set_result(23)
checked("callback-error-preserves-terminal-result", isinstance(local.callback_errors[0], ValueError)
        and local.result() == 23 and local_events == ["continued"])
expect(ValueError, lambda: local.add_done_callback(lambda _: fail()))
checked("late-direct-callback-error-propagates", local.result() == 23)

bounded = Future()
for _ in range(32):
    bounded.add_done_callback(lambda _: None)
checked("callback-quota-before-registration", expect(RosError, lambda:
        bounded.add_done_callback(lambda _: None)).error == 90 and bounded._callback_count == 32)
bounded.cancel()

quota = SingleThreadedExecutor(context=Context())
tasks = [quota.create_task(lambda: None) for _ in range(256)]
checked("task-quota-before-execution", expect(RosError, lambda:
        quota.create_task(lambda: None)).error == 90 and not any(task.done() for task in tasks))
tasks[0].cancel()
replacement = quota.create_task(lambda: 5)
quota.shutdown()
checked("quota-slot-reuse-and-shutdown-cancel", replacement.cancelled() and
        all(task.cancelled() for task in tasks))

reservation = SingleThreadedExecutor(context=Context())
reserved_future = reservation.create_future()
backlog = [reservation.create_task(lambda: None) for _ in range(255)]
reserved_events = []
reserved_future.add_done_callback(lambda value: reserved_events.append(value.result()))
assert expect(RosError, lambda: reservation.create_task(lambda: None)).error == 90
reserved_future.set_result(29)
for task in backlog:
    task.cancel()
reservation.spin_once(timeout_sec=0)
checked("callback-slot-reserved-before-completion", reserved_events == [29])
reservation.shutdown()


def reentry():
    assert executor.is_spinning
    return expect(RosError, lambda: executor.spin_once(timeout_sec=0)).error


reentrant = executor.create_task(reentry)
executor.spin_once(timeout_sec=0)
checked("spin-reentry-denied-and-restored", reentrant.result() == 17 and not executor.is_spinning)

before_timeout = []
executor.create_task(lambda: before_timeout.append(True))
for timeout in (None, 1, -1):
    expect(NotImplementedError, lambda: executor.spin_once(timeout_sec=timeout))
checked("unsupported-wait-has-no-task-effect", before_timeout == [])
executor.spin_once(timeout_sec=0)
executor.shutdown()
other.shutdown()
expect(RuntimeError, lambda: executor.create_task(lambda: None))
expect(RuntimeError, lambda: executor.spin_once(timeout_sec=0))
checked("shutdown-rejects-new-work", not executor.is_spinning and before_timeout == [True])

print(json.dumps({"format": "uwvm-python-wasm-async-task-assertions-v1",
                  "status": "GUEST_ASSERTIONS_COMPLETE", "assertions": assertions,
                  "native_ROS_roundtrip_qualified": False,
                  "independent_instance_isolation_qualified": False}, sort_keys=True))
