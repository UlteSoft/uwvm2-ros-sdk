# Original ROS Controls PID in Wasm

This component compiles the original control_toolbox 4.11.1 PID implementation
(commit `161c3c330314f7816e97174aa5acde8f16a53e61`) into a Wasm static archive.
It does not call a native ROS PID service. The original files, licenses and
source hashes are retained in `upstream/`; `serial-component.patch` records
the source changes.

The numerical implementation, gain validation, exception behavior and formatted
diagnostics are preserved. Two rclcpp::Duration convenience overloads are
excluded; seconds, int64 nanoseconds and std::chrono overloads remain. An
explicitly serial value box replaces the native priority-inheritance mutex.
Each instance has one serial executor. Builds with Wasm atomics are rejected;
the value box is not a concurrent replacement for the upstream mutex. Existing
fmt 9.1 headers are included with their license.

The C interface in `include/uwvm_ros/pid.h` owns an actual C++ PID instance.
Creation starts with unlimited output. `uwvm_ros_pid_set_limits` explicitly
selects output bounds and the original conditional-integration anti-windup
strategy. Invalid bounds are rejected without changing the instance.
`uwvm_ros_pid_compute` catches C++ exceptions at the C boundary and returns
a status without changing the output argument on failure. The returned pointer
belongs to the same statically linked Wasm instance.

This is a **static-library** implementation. Its libc++, exception runtime,
heap, table and stack belong to the final Wasm executable. Do not reuse its raw
pointers as independent-module handles. Shared-memory preload and independent
multi-memory C++ libraries need their own allocator, stack, table, initialization
and exception-boundary contracts; those forms are not qualified by this example.
The SDK rejects those C-family configurations until their implementation exists.

The example at `example/platform/ros2/cpp/control_toolbox_pid` checks the
original arithmetic and exception behavior, four anti-windup modes, invalid
configuration, output preservation, saturation and recovery. Its 4,096-step
hexadecimal floating-point trace can be compared byte for byte with a native
build against the original ROS library. The native comparison is a reference;
all SDK example execution goes through uwvm2-ros.

The official MuJoCo and Webots device tests in `example/platform` link this
archive into the Wasm control application. Their native side contains official
physics, intrinsic model actuators and device transport. Trajectory generation,
PID, cancellation decisions and message construction execute in Wasm. These
examples do not port the complete JointTrajectoryController or its action-server
lifecycle, and passing a finite model test is not manufacturer certification.

Use the existing LLVM 23 / WASI EH library closure. This port requires actual
Wasm exceptions; disabling exceptions or substituting a host implementation
changes the original ROS semantics. Source, target libraries and runtime
identities are pinned by the build and test receipts.

The machine-readable migration boundary is portability.json. It records an
extracted source component, not a migrated ROS package. Native ROS transport
in the model fixtures is an explicit remaining dependency, not an intrinsic
Wasm limitation. See document/ros-package-portability.zh_CN.md.

The native ROS host/Gateway and its RMW/DDS transport remain the trusted
authorization and audit boundary. They are retained infrastructure, not a PID,
trajectory or other guest business-logic fallback. A package port must preserve
that audited communication route; moving DDS into a guest is outside this scope.
