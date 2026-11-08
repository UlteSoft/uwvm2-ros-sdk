# A0509 official simulation with migrated ROS control

The unchanged official mujoco robot model receives raw device frames from
Wasm running in uwvm2-ros. The original ROS Controls control_toolbox 4.11.1 PID
source is compiled into a real C++ Wasm static archive. The original ROS Controls 4.42.1 Trajectory interpolation source is a second
C++ Wasm static archive. The C guest owns both components, cancellation, message
encoding and business assertions.
The native adapter only advances official physics, reads devices and transfers
ROS2 device frames. It loads no native trajectory controller, controller manager,
robot_state_publisher or control_toolbox library.

Use xmake f -P ., xmake build -P ., then xmake test -P ..
Set UWVM_ROS_DOOSAN_MUJOCO_TEST_CONFIG to an explicit deployment based on
deployment.template.json. All imported WASI/ROS interfaces and capabilities must
be enabled explicitly. An EH-capable VM is required by the unchanged upstream
exception behavior. The test never installs dependencies. Reuse the installed
official simulator and ROS2 device transport, and build the adapter in
tools/shared/ros_joint_fixture/native against those existing headers/libraries.

model-assets.json pins the original model bytes. Set
UWVM_OFFICIAL_MUJOCO_ASSETS to that exact source tree. Model masses,
gravity, limits and intrinsic actuator behavior are preserved. The source and
dependency adaptation are documented in src/platform/ros2/control_toolbox.
The PID profile has one serial executor per private Wasm instance; it rejects
shared-memory Wasm threads.

The same artifact runs eight cases under both interpreter and LLVM JIT:
real motion/fresh feedback, absent command authority, malformed payload and memory
ranges, Wasm-owned trajectory cancellation, monotonic timeout, real gateway
disconnection, and simultaneous owner/foreign VM handle isolation. Tests record
actual executable identities, mappings, original assets, guest logs, the 64 GiB
zero-swap kernel boundary and owned-process retirement.

This migrates the original PID and trajectory interpolation components. It does
not yet port the complete JointTrajectoryController or its action-server lifecycle. Dynamic same-memory and independent multi-memory
C++ forms still require separate qualification. These finite model tests are
not manufacturer certification, production admission or physical-robot testing.
