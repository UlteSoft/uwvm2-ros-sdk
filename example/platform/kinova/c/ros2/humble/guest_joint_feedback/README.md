# Kinova typed guest joint feedback

This additional C application performs subscription, goal construction/submission,
feedback/result processing and callbacks inside Wasm through SDK01's versioned
ROS2 transport imports. It does not run rclpy, a JVM, a host ROS client, shell ROS
commands or a separate SDK native helper. The typed binding is under
include/platform/kinova/transplate/ros2/v0_1_0/joint_feedback.h. It is a custom
resource binding, not upstream rcl/rclcpp source compatibility.

The guest opens five explicit aliases, receives an actual JointState, computes
one bounded first-joint step in Wasm, sends one complete trajectory, consumes
correlated feedback/result and requires a later source timestamp and position
inside the guest state callback. Goal IDs printed here are module-local IDs,
not native UUIDs. VM audit must independently supply the actual native UUID and
module-memory provenance. Cancellation is restricted to the current owned goal;
acknowledgment is followed by terminal-result polling. Errors and timeouts are
returned without resubmitting a goal. State callbacks reject nonfinite values,
invalid source time, duplicate/empty or reordered joint names and inconsistent
arrays before replacing the last valid state. Feedback must match the submitted
joint order and contain finite actual positions. A rejected callback fails the
current operation immediately. If a denied-authority case unexpectedly opens all
capabilities, it fails before subscribing or submitting a goal.

Run xmake from this directory with the installed pinned SDK toolchain. The
application arguments are: mode, state alias, send alias, feedback alias, result
alias, cancel-own alias, signed step in microradians (nonzero, absolute <=10000).
Modes implemented in source are normal, reverse-callback, denied and cancel.
All aliases, native resource selection and authority are external. Missing or
denied authority must fail. The explicit runtime configuration must admit the
necessary WASIp1 stdio, real clock and bounded sleep operations.

resources.json records the actual Gen3 official mock reference and required
roles. The current codec source is pinned Humble; the installed reference is
Jazzy. Exact cross-release native schema/ABI binding is NOT qualified. Shared
ABI source/host provenance also differs, so no integration may be claimed from
compilation. No native fallback is supplied.

This source has not been built or run. Six mandatory cases are registered through
SDK01's shared Xmake rule, explicitly non-success until the required implementation
exists. This registration is not an implemented integration test. It needs SDK01's qualified raw-ROS command/result/reverse-memory
verification and the VM owner's current controlled-host deployment. Normal,
denied/no-effect, boundary/stale/foreign, cancellation/timeout, restart/rollback
and reverse callback cases remain mandatory and incomplete. Guest component
assertions in the separate validate_goal example do not satisfy these cases.
The original canonical portable C0 Wasm and its cross-vendor requirement remain
unchanged; this typed application is additional coverage.
