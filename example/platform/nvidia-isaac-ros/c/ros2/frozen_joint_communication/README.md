# Frozen Wasm to official ROS communication

Full public communication qualification remains pending.
This Stage A profile uses official ROS Jazzy GenericSystem,
JointTrajectoryController and JointStateBroadcaster with two configured joints.
It requires no model or rendering GPU. It establishes no Isaac hardware,
NITROS, vendor physics, perception or Stage B simulator support.

From this directory in a qualified Linux SDK installation:

    xmake
    xmake test

The build uses the real SDK C route and checks the complete installed
4449-byte algorithm against SHA256
`c0d886e864243938999e4adf4c0f4ce6fb3c2c001723b855cd8b203bfafe2043`.
The source build keeps the original `portable-joint-step-v0-1-0` output
basename so its emitted metadata can reproduce the complete frozen bytes.
Tests reuse those bytes. Xmake-selected build/object/dependency paths and the
SDK artifact workspace hold generated output; the example overrides none of
those directories. Build and communication evidence are recorded separately.
The guest reads actual joint feedback, computes a
bounded step, submits it through the permissioned VM host and checks the fresh
post-result state inside Wasm. This is the portable SDK C API, not a claim that
the complete upstream rcl/rclcpp libraries have been migrated.

The shared public entry requires a VM-produced live admission and deployment.
`deployment-requirements.v1.json` describes this candidate's platform data;
it creates no authority or executable deployment. Missing qualified runtime,
restricted host, official packages or feedback contracts return non-success.
An exact qualified candidate can be used under its recorded identity without
calling it a released product. No private source runner is resolved.

The first case denies permission before any peer starts. The normal case
launches only genuine ROS peer/controller programs and the VM's restricted
joint host. Both ROS executables enter the public `Context.spawn` stopped
after-exec gate directly, with separate executable pins and retirement records.
A fixed official `ros2 topic echo` command is an
independent observation oracle **after** the real guest-feedback verifier has
passed. It sends no goal, supplies no guest input and cannot replace callbacks
or reverse feedback. This role follows the staged requirement's oracle
exception; quarantined SDK observers are not restored or invoked.

Jazzy receives the URDF on `robot_description`; controller parameters are
passed explicitly through the official spawner
([Jazzy migration guide](https://control.ros.org/jazzy/doc/ros2_control/doc/migration.html)).

All four selected communication cases are mandatory: permission denial, the
correlated normal result, stale feedback/reference rejection and bounded
disconnect/timeout. The last two still need real VM/SDK01 production contracts
and currently return BLOCKED. The public communication test remains nonzero
until all four execute and pass. Independent component memory/authority remains
a separate mandatory follow-up in component-memory.v1.json; it does not gate
this first CPU communication slice. Record actual guest executions separately from a
harness attempt that stops at a prerequisite.

`component-memory.v1.json` records the current single trust domain and the
required separate perception, planner and actuator instances. It is design
data, not a loader or channel ABI. Static code within one instance shares its
memory and grants; separate trust components need separate private memories.
Use bounded copy/snapshot channels for asymmetric protection. Multi-memory
does not provide a read-only memory import or per-byte ROS permissions.
See the [Wasm 3.0 runtime definition](https://webassembly.github.io/spec/core/exec/runtime.html)
and [official multi-memory examples](https://github.com/WebAssembly/multi-memory/tree/main/test/core/multi-memory).

The existing Isaac Sim nine-case Stage B profile, all other applicable
NVIDIA/Isaac/Jetson release/ABI/language/architecture cases, and the final
1Cat-vLLM world-model/multilingual/cross-vendor scenario remain required.
