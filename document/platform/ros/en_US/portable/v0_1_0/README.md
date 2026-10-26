# Portable robot capability preview 0.1.0

The canonical algorithm is compiled and structurally verified. The frozen file
is `lib/platform/ros/portable/v0.1.0/joint-step.wasm` (4,449 bytes), SHA256
`c0d886e864243938999e4adf4c0f4ce6fb3c2c001723b855cd8b203bfafe2043`.
Compiler, source and execution-receipt identities are recorded in
`share/platform/ros/portable/artifacts/joint-step-v0.1.0.json`.

The proposed `uwvm_portable_robot_v1` host module still requires VM integration;
this SDK does not register it or grant resources. Native21/native22 results do
not qualify this interface. VM execution, native ROS, official simulation and
unchanged-byte reuse across platforms remain unqualified.

The first capability is `joint.position.bounded.v1`: one finite position step
for 1–16 bounded revolute joints, in software simulation only. It requires fresh
state, explicit position-command authority, real controller completion and a
subsequent observed state within tolerance. Cartesian motion, force/torque,
navigation, unbounded/linear joints and physical robot operation are outside
this preview. A topic publication or accepted action goal is not completion.

`contract.json`, `abi.json`, `wire.json` and `adapter.schema.json` in the versioned
share directory define the interface. The adapter is outside the Wasm: it owns
platform selection, release/ABI/transport, native resource and joint names,
permutation/sign/zero offset, radians-to-microradians conversion, limits and
freshness policy. Joint space is explicit; no Cartesian frame conversion is
inferred. JSON metadata never grants authority. The VM host must validate the
caller, exact module/policy/adapter identity and live resources on every call.

The C example at `example/platform/ros/portable/v0_1_0/joint_step` opens only the
logical role `robot`, reads one descriptor and state, proposes at most 10,000
microradians per joint within the admitted interval, submits once, waits once,
checks fresh feedback and closes its acquired owner once. Errors and unknown
completion never trigger automatic replay. Its one-second horizon is an
algorithm parameter which the adapter must admit against native limits.

Build with the existing public Xmake C/LLVM23 path after verified Linux execution
admission when reproducing the developer build. Platform integrations consume
the already frozen file and compare its SHA before and after execution. A build
from the same source does not establish reuse evidence; changed bytes or imports
require a new artifact version. No new compiler or provider is introduced.

Formal verification requires real official simulator/fake-hardware ROS nodes,
topic state, controller-status service, command/action result and independent
observations. Official [ros2_control mock components](https://control.ros.org/jazzy/doc/ros2_control/hardware_interface/doc/mock_components_userdoc.html)
exercise software command/state wiring. Their documented mirroring behavior is
not evidence of physical dynamics or hardware safety. The official
[RRBot example](https://control.ros.org/jazzy/doc/ros2_control_demos/example_1/doc/userdoc.html)
includes a trajectory-controller configuration; the
[R6Bot tutorial](https://control.ros.org/jazzy/doc/ros2_control_demos/example_7/doc/userdoc.html)
uses a different default controller, whose semantics must not be silently
renamed to this capability. Test drivers, configurations and results remain in
the VM repository, outside this SDK.

The actual host process must retain mandatory generated-chain checked unwind,
crash-stack recovery, paired unwind/provenance and permission checks. There is
no public unwind selector. Wasm portability is independent of CPU qualification:
native and QEMU architecture checks remain separate, and performance requires
native execution and actual hardware counters.
