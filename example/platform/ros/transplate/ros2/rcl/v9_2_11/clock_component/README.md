# RCL 9.2.11 clock component in Wasm

This finite component compiles the real upstream rcl time.c, its original public
headers and the selected genuine RCUtils implementation. The source and licenses
are pinned in share/platform/ros/transplate/ros2/rcl/v9.2.11/source-lock.json.
It is the first client implementation fragment, not a complete rcl/rclcpp node,
ROS1 roscpp migration, RMW discovery profile or official simulator result.

With the installed SDK selected by UWVM_ROS_SDK_ROOT, run xmake and xmake test
from this directory. Four required guest cases cover forward/backward jump
thresholds and callback order, callback removal and duplicate rejection, invalid
clock arguments and a denied WASI clock read leaving output unchanged. Callbacks
and assertions run in the Wasm application. No host ROS client or observer runs
application logic. Missing runtime/admission remains BLOCKED/non-success.

UWVM_ROS_RUNTIME_TEST_DEPLOYMENT selects an explicit installed runtime descriptor;
the manual VM-owned execution admission and independent guardian/lease remain
mandatory. Tests require native AOT, checked generated-chain unwind and no body
fallback. Thread-local RCUtils error state and upstream atomic declarations are
retained. Their emitted TLS/atomic/feature behavior still needs real Linux build
and runtime qualification. No Mac build or source execution is permitted.

The separate clock_bridge.c source reads one explicitly granted ROS2 clock value
through the existing controlled import and applies it to genuine RCL guest clock
callbacks. It creates no grant and never retries. This bridge is not linked into
the pure guest component. Its current ABI provenance, versioned VM capability,
actual native time/permission/audit and official /clock feedback path remain
unqualified. Full framework simulation, unchanged cross-vendor Wasm, real ROS
node/executor/pubsub/services/actions, ROS1 compatibility, architectures, debug,
audit, performance and update/rollback all remain mandatory unfinished work.
