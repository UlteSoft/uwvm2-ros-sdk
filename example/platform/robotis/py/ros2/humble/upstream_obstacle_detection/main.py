# SPDX-License-Identifier: Apache-2.0
"""Deploy the unchanged official Humble obstacle detector through real Wasm ROS.

Only explicit source aliases and the guest pacing/cancel driver are installed.
The imported original module owns all scan/min/velocity/callback decisions.
The single whole-invocation Context credit bound is a failure budget, never
successful task completion. A successful exit requires actual independent Bool cancel.
"""
import time
import rclpy
from rclpy.context import AliasBinding
from rclpy.qos import QoSProfile, qos_profile_sensor_data
from roswasm import Result, RosError

# Frozen whole-invocation failure budget, not a callback or elapsed-time count.
# The unchanged 1ms WASI pacer and actual independent Bool stop remain required.
_WHOLE_INVOCATION_MAXIMUM_CREDITS = 300001


class _Pacing:
    def __init__(self, context):
        self.context = context
        self.owner = None
        self.open_attempted = False
        self.previous_ns = None
        self.next_ns = None
        self.calls = 0
        self.stopped = False

    def _now(self):
        # Actual CPython/WASI time, never substituted for the Node's granted
        # ROS timer clock. Both clock authorities remain explicit and distinct.
        value = time.monotonic_ns()
        if type(value) is not int or value < 0:
            raise ValueError("invalid actual WASI monotonic timestamp")
        if self.previous_ns is not None and value < self.previous_ns:
            raise ValueError("actual WASI clock regressed")
        self.previous_ns = value
        return value

    def _cancel(self):
        if not self.open_attempted:
            self.open_attempted = True
            self.owner = self.context.session.open("robotis-obstacle-cancel")
            self.owner.invoke("topic_subscribe").checked()
        result = self.owner.invoke("event_poll", capacity=1)
        if result.error == 11:
            if result.data:
                raise ValueError("idle cancel response contains unexpected bytes")
            return False
        result.checked()
        if result.data not in (b"\0", b"\1"):
            raise ValueError("complete canonical Bool control required")
        if result.data == b"\1":
            self.owner.close().checked()
            self.stopped = True
            return True
        return False

    def __call__(self):
        # Context debits the one immutable whole-invocation budget before
        # calling this driver. This counter is diagnostic only; no refill,
        # second credit ceiling or callback/reconnect epoch exists here.
        self.calls += 1
        if self._cancel():
            return False
        now = self._now()
        if self.next_ns is None:
            self.next_ns = now + 1000000
        while now < self.next_ns:
            time.sleep((self.next_ns - now) / 1000000000)
            if self._cancel():
                return False
            now = self._now()
        self.next_ns += 1000000
        if self.next_ns <= now:
            self.next_ns += ((now - self.next_ns) // 1000000 + 1) * 1000000
        return True


def _prepare_context():
    context = rclpy.get_default_context()
    pacing = _Pacing(context)
    node = "/turtlebot3_obstacle_detection"
    context.configure(
        {
            ("topic_publish", "/cmd_vel", "geometry_msgs/msg/Twist"):
                AliasBinding("robotis-obstacle-cmd-vel", QoSProfile(depth=10), 48),
            ("topic_subscribe", "/scan", "sensor_msgs/msg/LaserScan"):
                AliasBinding("robotis-obstacle-scan", qos_profile_sensor_data, 8368),
            ("topic_subscribe", "/cmd_vel_raw", "geometry_msgs/msg/Twist"):
                AliasBinding("robotis-obstacle-raw-vel", qos_profile_sensor_data, 48),
            ("time_read_ros", node, ""): AliasBinding("robotis-obstacle-clock", capacity=8),
            ("time_read_system", node, ""):
                AliasBinding("robotis-obstacle-log-system-clock", capacity=8),
            ("log_write", node, ""): AliasBinding("robotis-obstacle-log", capacity=65536),
        },
        idle_wait=pacing,
        maximum_owners=8,
        maximum_credits=_WHOLE_INVOCATION_MAXIMUM_CREDITS,
        lifetime="until_shutdown",
        prepare_callback_logging=True,
        prepare_callback_logging_clock=True,
    )
    return context, pacing


def main():
    context, pacing = _prepare_context()
    primary = None
    try:
        import robotis_original_obstacle
        robotis_original_obstacle.main()
        if not pacing.stopped:
            raise RuntimeError("original task returned without an independent stop receipt")
    except BaseException as error:
        primary = error
        raise
    finally:
        if context.ok():
            try:
                rclpy.try_shutdown(context=context)
            except BaseException as cleanup:
                if primary is None:
                    raise
                try:
                    primary.roswasm_cleanup = cleanup
                except BaseException:
                    pass  # Shared Context retains its full owner cleanup ledger.


if __name__ == "__main__":
    main()
