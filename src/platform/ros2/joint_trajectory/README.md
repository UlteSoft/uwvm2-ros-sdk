# ROS JointTrajectory value component in Wasm

The ROS Controls `ros2_controllers` 4.42.1 `Trajectory` implementation is built as
an actual Wasm C++ static archive. `upstream/` retains original sources and tests;
`value-component.patch` records every adaptation. Linear, cubic and quintic
interpolation, effort interpolation, derivative deduction, trajectory replacement,
monotonic segment search and angular wraparound use the original implementation.

The adapter replaces ROS message/time **values**, not their algorithms or a ROS
executor. `uwvm_ros::trajectory_types` stores private vectors, integer nanoseconds
and clock identity. It never opens a node, reads a host clock, or invokes DDS.
Integer time arithmetic rejects overflow. The optional interpolation string
parser writes its existing informational message to WASI stderr instead of a
native ROS logger. The upstream angles BSD license remains in its header.

This is one serial component per private Wasm instance. It does not implement a
complete JointTrajectoryController, controller_manager, action server or rclcpp.
The original C++ interface retains its documented valid-message preconditions.
The C segment interface copies finite, dimensioned endpoints and validates its
output before publishing any caller-buffer writes. Its pointers belong to this
instance; they are not transferable cross-module handles. Explicit shared-memory
threads, dynamic linking and independent-memory transport need their own ABIs.

`example/platform/ros2/cpp/joint_trajectory` compares the real original native ROS
library, the extracted native source and the same Wasm artifact. Its tests cover
all interpolation orders, real sampling and replacement, the upstream skipped
velocity-only final segment regression, empty/null paths and failed-output
canaries. Native reference execution is a test oracle, never an SDK deployment
fallback. Simulators and device transport remain separate boundary components.

The machine-readable migration boundary is portability.json. It records an
extracted source component, not a migrated ROS package. Native ROS transport
in the model fixtures is an explicit remaining dependency, not an intrinsic
Wasm limitation. See document/ros-package-portability.zh_CN.md.

The native ROS host/Gateway and its RMW/DDS transport remain the trusted
authorization and audit boundary. They are retained infrastructure, not a PID,
trajectory or other guest business-logic fallback. A package port must preserve
that audited communication route; moving DDS into a guest is outside this scope.
