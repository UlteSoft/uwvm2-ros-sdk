"""Explicit Stretch lift trajectory/independent stop witness using original ROS2."""

import argparse
import math
import time
import rclpy
from rclpy.node import Node
from rclpy.executors import SingleThreadedExecutor
from control_msgs.action import FollowJointTrajectory
from trajectory_msgs.msg import JointTrajectoryPoint
from builtin_interfaces.msg import Duration

if __package__:
    from .native_support.native_trajectory_peer import (
        NativeTrajectoryPeer,
        trigger_once,
    )
    from .native_support.observation import observe_current, lift_goal
else:
    from native_support.native_trajectory_peer import NativeTrajectoryPeer, trigger_once
    from native_support.observation import observe_current, lift_goal


def main():
    """@brief Execute one explicitly selected native Stretch operation from CLI.

    @details Requires --execute, the actual model and operation. Lift additionally
    requires independently reviewed tool, metre bounds, target, m/s speed and
    finite duration; it receives all six original driver state topics and builds
    the original two-point Goal. Stop and trajectory-mode are distinct explicit
    Trigger operations and do not run as implicit recovery. Cancellation, when
    selected, addresses only this peer's own actual goal. Every peer/executor/
    node/context cleanup is attempted independently and failures are preserved.
    @return None after printing original native service/action outcomes.
    @raises PermissionError --execute was not explicitly selected.
    @raises ValueError Complete original state or explicit reviewed limits are invalid.
    @raises Exception Original ROS/action/deadline/cleanup error; no automatic replay.
    @see native_support.observation.observe_current native_support.observation.lift_goal
    """
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--execute", action="store_true")
    parser.add_argument("--model", required=True, choices=("RE1V0", "RE2V0", "SE3"))
    parser.add_argument(
        "--operation", required=True, choices=("lift", "stop", "trajectory-mode")
    )
    parser.add_argument("--lift-m", type=float)
    parser.add_argument("--tool")
    parser.add_argument("--lift-min-m", type=float)
    parser.add_argument("--lift-max-m", type=float)
    parser.add_argument("--maximum-lift-speed-mps", type=float)
    parser.add_argument("--duration-s", type=float, default=2.0)
    parser.add_argument("--cancel", action="store_true")
    args = parser.parse_args()
    if not args.execute:
        raise PermissionError(
            13, "native witness is stopped unless explicitly selected"
        )
    if args.operation == "lift" and (
        args.lift_m is None or not math.isfinite(args.lift_m)
    ):
        raise ValueError(
            "explicit finite lift position required; actual robot limits remain mandatory"
        )
    rclpy.init()
    node, executor, peer = None, None, None
    primary, outcomes = None, [None, None, None, None]
    try:
        node = Node("uwvm_stretch_native_witness")
        executor = SingleThreadedExecutor(context=node.context)
        executor.add_node(node)
        if args.operation != "lift":
            name = (
                "/stop_the_robot"
                if args.operation == "stop"
                else "/switch_to_trajectory_mode"
            )
            response = trigger_once(
                node, executor, name, time.monotonic_ns() + 3_000_000_000
            )
            print(
                {
                    "actual_service": name,
                    "success": response.success,
                    "message": response.message,
                }
            )
            return
        peer = NativeTrajectoryPeer(
            node, executor, "/stretch_controller/follow_joint_trajectory"
        )
        peer.ready(time.monotonic_ns() + 3_000_000_000)
        # Read all real native mode/tool/runstop/homing/streaming/joint topics.
        # No implicit homing, mode switch, runstop release or movement occurs.
        observation = observe_current(
            node, executor, time.monotonic_ns() + 3_000_000_000
        )
        if not math.isfinite(args.duration_s):
            raise ValueError("finite explicit native trajectory duration required")
        goal = lift_goal(
            observation,
            expected_tool=args.tool,
            target_m=args.lift_m,
            lower_m=args.lift_min_m,
            upper_m=args.lift_max_m,
            maximum_speed_mps=args.maximum_lift_speed_mps,
            duration_ns=int(args.duration_s * 1_000_000_000),
            now_ns=time.monotonic_ns(),
        )
        peer.submit(goal, observation.fresh_until_ns())
        if args.cancel:
            print({"cancel_accepted": peer.cancel(time.monotonic_ns() + 2_000_000_000)})
        result = peer.result(time.monotonic_ns() + 10_000_000_000)
        print(
            {
                "actual_goal_uuid": bytes(peer.goal_handle.goal_id.uuid).hex(),
                "actual_status": result.status,
                "actual_error_code": result.result.error_code,
                "actual_error_string": result.result.error_string,
                "complete_feedback_count": peer.feedback_used,
            }
        )
    except BaseException as error:
        primary = error
        raise
    finally:
        for index, closer in enumerate(
            (
                peer.close if peer else None,
                (lambda: executor.shutdown(timeout_sec=2.0)) if executor else None,
                node.destroy_node if node else None,
            )
        ):
            if closer:
                try:
                    outcomes[index] = closer()
                    if outcomes[index] is False:
                        raise RuntimeError("actual cleanup returned false")
                except BaseException as error:
                    outcomes[index] = error
        try:
            if rclpy.ok():
                rclpy.shutdown()
        except BaseException as error:
            outcomes[3] = error
        if primary is not None:
            primary.mobile_manipulation_cleanup = outcomes
        elif any(isinstance(item, BaseException) for item in outcomes):
            raise RuntimeError(outcomes)


if __name__ == "__main__":
    main()
