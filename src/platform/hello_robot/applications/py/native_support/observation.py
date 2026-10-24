"""Fresh complete native Stretch observations and an original two-point Goal.

This is native ROS2 example support, not a Guest bridge or controller safety
certificate. Six separate publications do not form an atomic driver snapshot.
"""

from dataclasses import dataclass
import math
import time

from builtin_interfaces.msg import Duration
from control_msgs.action import FollowJointTrajectory
from sensor_msgs.msg import JointState
from std_msgs.msg import Bool, String
from trajectory_msgs.msg import JointTrajectoryPoint
from rclpy.qos import qos_profile_sensor_data


@dataclass(frozen=True)
class Observation:
    """@brief Retain six complete original driver messages and receive times.

    @details joints, homed, runstopped, mode, streaming and tool retain actual
    ROS2 message objects in that order. received_ns holds their six local
    monotonic receive timestamps; maximum_age_ns is the selected freshness
    budget in nanoseconds. These separate publications are not an atomic
    controller snapshot. Frozen dataclass fields do not freeze nested ROS
    messages: borrowers must not mutate them while validating/building a goal.
    @see observe_current lift_goal Observation.fresh_until_ns
    """

    joints: JointState
    homed: Bool
    runstopped: Bool
    mode: String
    streaming: Bool
    tool: String
    received_ns: tuple
    maximum_age_ns: int

    def fresh_until_ns(self):
        """@brief Return the earliest selected local observation expiry.

        @details Uses the oldest local receive time plus maximum_age_ns, never
        the ROS Header stamp or robot clock. Does not refresh subscriptions or
        prove that all six topics describe one atomic state.
        @return Absolute time.monotonic_ns() deadline for this retained sample.
        @see Observation observe_current lift_goal
        """
        return min(self.received_ns) + self.maximum_age_ns


def complete_joint_state(value):
    """@brief Validate a bounded complete original ROS2 JointState value.

    @details Requires 1..64 unique nonempty NUL-free UTF-8 names, each <=128
    bytes, and one finite position per name. Velocity/effort are empty or full
    finite vectors. Does not infer physical joint limits or alter the message.
    @param value Borrowed original JointState; keep unchanged during this call.
    @return None when the complete value passes; no native side effect occurs.
    @raises ValueError Wrong message type, names, vector extent or finite value.
    @see Observation observe_current lift_goal
    """
    if not isinstance(value, JointState) or not 1 <= len(value.name) <= 64:
        raise ValueError("complete original bounded JointState required")
    if (
        len(set(value.name)) != len(value.name)
        or any(
            not name or "\0" in name or len(name.encode("utf-8")) > 128
            for name in value.name
        )
        or len(value.position) != len(value.name)
    ):
        raise ValueError("unique original joint names and complete positions required")
    for channel in (value.position, value.velocity, value.effort):
        if (
            channel
            and len(channel) != len(value.name)
            or any(not math.isfinite(x) for x in channel)
        ):
            raise ValueError("complete finite original joint vectors required")


def observe_current(node, executor, deadline_ns, maximum_age_ns=500_000_000):
    """@brief Receive six complete driver topics within a finite native deadline.

    @details Receive all actual driver topics with a finite native wait and cleanup.
    Freshness uses local monotonic receive time. It never substitutes the
    Header stamp, guesses missing mode/tool state, or switches the controller.
    Creates temporary sensor-data-QoS subscriptions, then spins only the supplied
    executor until every sample is fresh. Destroys every created subscription
    independently; cleanup errors are preserved on the primary exception or
    raised separately. Use a single native caller with no concurrent executor spin.
    @param node Borrowed live original rclpy Node in the selected driver namespace.
    @param executor Borrowed SingleThreadedExecutor containing node; caller owns shutdown.
    @param deadline_ns Absolute future time.monotonic_ns() deadline.
    @param maximum_age_ns Positive local freshness budget <=1e9 ns; default 500 ms.
    @return Observation retaining actual full messages and all six receive times.
    @raises ValueError Invalid bounds or malformed complete original observations.
    @raises TimeoutError All six fresh topics did not arrive before the deadline.
    @raises OSError Native ROS context stopped; errno 125.
    @raises RuntimeError Subscription cleanup failed after an otherwise successful wait.
    @see Observation complete_joint_state lift_goal
    """
    if (
        type(deadline_ns) is not int
        or type(maximum_age_ns) is not int
        or not 0 < maximum_age_ns <= 1_000_000_000
    ):
        raise ValueError("finite original native observation deadlines required")
    values, received, errors, subscriptions = [None] * 6, [0] * 6, [None], []
    primary = None

    def callback(index):
        def accept(value):
            try:
                if index == 0:
                    complete_joint_state(value)
                elif index in (3, 5) and (
                    not value.data
                    or "\0" in value.data
                    or len(value.data.encode("utf-8")) > 128
                ):
                    raise ValueError("actual nonempty driver mode/tool required")
                values[index], received[index] = value, time.monotonic_ns()
            except BaseException as error:
                errors[0] = error

        return accept

    try:
        for index, (kind, topic) in enumerate(
            (
                (JointState, "joint_states"),
                (Bool, "is_homed"),
                (Bool, "is_runstopped"),
                (String, "mode"),
                (Bool, "is_streaming_position"),
                (String, "tool"),
            )
        ):
            subscriptions.append(
                node.create_subscription(
                    kind, topic, callback(index), qos_profile_sensor_data
                )
            )
        while True:
            now = time.monotonic_ns()
            if errors[0] is not None:
                raise errors[0]
            if not node.context.ok():
                raise OSError(125, "actual native ROS context stopped")
            if now >= deadline_ns:
                raise TimeoutError(
                    "actual Stretch driver observations were not fresh before deadline"
                )
            if all(value is not None for value in values) and all(
                0 <= now - t <= maximum_age_ns for t in received
            ):
                return Observation(*values, tuple(received), maximum_age_ns)
            executor.spin_once(
                timeout_sec=min(0.05, (deadline_ns - now) / 1_000_000_000)
            )
    except BaseException as error:
        primary = error
        raise
    finally:
        cleanup = []
        for subscription in subscriptions:
            try:
                if not node.destroy_subscription(subscription):
                    raise RuntimeError(
                        "actual native subscription cleanup returned false"
                    )
            except BaseException as error:
                cleanup.append(error)
        if cleanup:
            if primary is not None:
                primary.stretch_observation_cleanup = cleanup
            else:
                raise RuntimeError(cleanup)


def lift_goal(
    observation,
    *,
    expected_tool,
    target_m,
    lower_m,
    upper_m,
    maximum_speed_mps,
    duration_ns,
    now_ns,
):
    """@brief Build an original two-point lift goal from fresh observed state.

    @details Build both genuine original points from current lift and explicit target.
    Complete tolerance/MultiDOF fields stay in the actual original Goal and
    retain their native defaults. This specific lift application does not ask
    the driver to execute an unsupported tolerance guarantee or another joint.
    Requires homed, runstop clear, non-streaming trajectory mode and the exact
    expected tool. Retains an observed start at time 0 and target at the selected
    duration. This is a pure constructor: it grants no motion or mode-change
    permission and sends no action. Caller owns native safety/model review.
    @param observation Borrowed Observation with six unchanged real ROS messages.
    @param expected_tool Exact independently selected nonempty original tool name.
    @param target_m Finite operator-selected joint_lift target in metres.
    @param lower_m Finite reviewed lower lift limit in metres.
    @param upper_m Finite reviewed upper lift limit in metres, greater than lower_m.
    @param maximum_speed_mps Positive finite reviewed linear lift speed in m/s.
    @param duration_ns Integer duration 1..5e9 ns; average displacement speed must
    fit maximum_speed_mps. Both observed start and target must lie within limits.
    @param now_ns Current local time.monotonic_ns() for all freshness checks.
    @return New complete original FollowJointTrajectory.Goal with two full
    JointTrajectoryPoint values; other original fields retain typed native defaults.
    @raises TypeError Wrong Observation or monotonic time type.
    @raises ValueError Stale/incomplete state, tool/limits/positions/duration invalid.
    @raises OSError Actual driver readiness or selected tool differs; errno 125.
    @see observe_current Observation.fresh_until_ns complete_joint_state
    """
    if type(observation) is not Observation or type(now_ns) is not int:
        raise TypeError("actual complete native observation and monotonic now required")
    if (
        type(expected_tool) is not str
        or not expected_tool
        or any(
            type(t) is not int
            or t <= 0
            or not 0 <= now_ns - t <= observation.maximum_age_ns
            for t in observation.received_ns
        )
    ):
        raise ValueError("recent actual tool/model/driver observations required")
    if (
        not observation.homed.data
        or observation.runstopped.data
        or observation.streaming.data
        or observation.mode.data != "trajectory"
        or observation.tool.data != expected_tool
    ):
        raise OSError(
            125,
            "actual driver is not in the separately qualified lift trajectory state",
        )
    complete_joint_state(observation.joints)
    if observation.joints.name.count("joint_lift") != 1:
        raise ValueError("one actual original joint_lift observation required")
    start = observation.joints.position[observation.joints.name.index("joint_lift")]
    if (
        any(
            type(x) not in (int, float) or not math.isfinite(x)
            for x in (target_m, lower_m, upper_m, maximum_speed_mps)
        )
        or lower_m >= upper_m
        or maximum_speed_mps <= 0
        or not lower_m <= start <= upper_m
        or not lower_m <= target_m <= upper_m
        or type(duration_ns) is not int
        or not 0 < duration_ns <= 5_000_000_000
        or abs(target_m - start) / (duration_ns / 1_000_000_000) > maximum_speed_mps
    ):
        raise ValueError(
            "actual start/target, reviewed lift bounds and finite trajectory speed required"
        )
    goal = FollowJointTrajectory.Goal()
    goal.trajectory.joint_names = ["joint_lift"]
    goal.trajectory.points = [
        JointTrajectoryPoint(positions=[float(start)], time_from_start=Duration()),
        JointTrajectoryPoint(
            positions=[float(target_m)],
            time_from_start=Duration(
                sec=duration_ns // 1_000_000_000, nanosec=duration_ns % 1_000_000_000
            ),
        ),
    ]
    return goal
