# RRBot JointTrajectoryController software mock

This example builds the genuine portable joint application. The public test is
BLOCKED until ROS queries, callbacks and feedback execute in Wasm through the
permissioned uwvm2-ros host boundary. No native ROS client implements those
required application operations in the public SDK.

From this directory, with the installed SDK selected:

    export UWVM_ROS_SDK_ROOT=/path/to/installed/sdk
    xmake
    xmake test

The real binary target is portable-joint-step-v0-1-0. Its unchanged 4449-byte
Wasm SHA256 is c0d886e864243938999e4adf4c0f4ce6fb3c2c001723b855cd8b203bfafe2043.
The two mandatory scenarios are bounded-joint-step and permission-denied-no-effect.
The native Xmake test facility reports their aggregate as a non-success result;
missing implementation cannot produce a skipped or zero-test success.

The previous SDK-written host observer and its calling driver have been removed
from the public tree. That observer subscribed to JointState and action
status/feedback and queried ListControllers/GetResult. It did not send or cancel
goals. Its historical independent observations cannot prove Wasm query execution,
Wasm callbacks or reverse feedback. The public entry neither discovers nor runs
the retained historical implementations.

The retained environment launcher only starts the official robot_state_publisher,
ros2_control_node and controller spawner. It validates the official RRBot software
hardware plugin and joint bounds; it contains no SDK ROS client business logic.
The source references and Apache license belong to ros2_control_demos Jazzy commit
3c35e783e268e5235bb042a71c68112a3ecb777e. This is a software mock, not physics.
It is not started by the currently blocked test.

Required before acceptance: real supported rcl/rclcpp application/client source
compiled to Wasm; VM-owned current admission, installed runtime/provider closure,
module and grant provenance, actual imported command-to-native UUID correlation,
query/result/callback bytes consumed by executing Wasm, fresh official state,
and a permission-denied case with no unauthorized native effect. Preserve the
same complete application Wasm across compatible vendors. All ROS release/ABI,
architecture, physics/navigation/sensor, audit/debug, performance, restart and
update/rollback obligations remain open. No native ROS, simulator or full legacy
migration acceptance is claimed.
