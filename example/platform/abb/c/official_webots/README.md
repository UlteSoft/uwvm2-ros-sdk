# ABB official software simulation

Profile `abb-irb4600-40-robotiq3f-webots-r2025a-jazzy` is **BLOCKED: real Wasm ROS migration required**.
The SDK-authored host ROS query implementation was physically removed from the
public SDK. Its historical role was read-only subscriptions and controller/result
queries; it did not submit goals. The public test declaration has no executable
scenario driver while migration is missing. No archived implementation is used.

The normal build target `abb-official-joint-step` compiles the unchanged local `main.c`
through the shared C/WASI producer. It must match the canonical 4,449-byte
`lib/platform/ros/portable/v0.1.0/joint-step.wasm`, SHA256
`c0d886e864243938999e4adf4c0f4ce6fb3c2c001723b855cd8b203bfafe2043`.
The shared source is `example/platform/ros/portable/v0_1_0/joint_step/main.c`.
This portable C program does not establish upstream rcl/rclcpp/rclpy/rcljava or
ROS1 client-library migration. Compatible vendor runs must retain the same whole
application SHA; platform selection and reviewed grants remain external.

From this directory, the public commands are:

```sh
xmake
xmake test
```

`xmake test` reuses the built exact artifact and refuses a missing or changed
output. It does not compile, relink or rewrite the application. The manifest's
`required_implementation` declares an explicit non-success result for all five
required scenario groups: unchanged-Wasm joint step, denied permission with no
native effect, bounds/stale/foreign references, cancel/timeout/disconnect, and
pause/restart/update/rollback. These remain required CI rows. Missing migration,
runtime, provider or tests cannot produce a passing or zero-test result. The
updated declaration is source-only pending fresh Linux public-command evidence.

The SDK01 `uwvm_simulation_example` declaration and
`uwvm.simulation-example.v1` rule own shared test registration and accounting.
The local Xmake file consumes that API read-only. The original SDK root and
ancestor project must remain in validation; private project-selection shortcuts
cannot establish the public entry. Prior failed command transcripts retain
their exact old source identity and scope.

The external environment is Webots R2025a with the original Irb4600-40 and
Robotiq 3f model, original Supervisor clock and `webots_ros2_control` plugin.
Use ROS 2 Jazzy and the exact Webots/model identities in `mapping.request.json`.
The controller claims nine joints. Arm selection, partial goals, coupled fingers
and sensor permissions require separate actual mapping and qualification; no
six-joint alias is assumed. The native four-case reference used a larger step
and looser tolerance and does not qualify the canonical Wasm oracle.

Original provider source: [cyberbotics/webots_ros2](https://github.com/cyberbotics/webots_ros2),
commit `5f1a18219a6b877c25440a12bdf9056cae299e1d`. The controller type is `joint_trajectory_controller/JointTrajectoryController`.
The declared native joint order is `A motor`, `B motor`, `C motor`, `D motor`, `E motor`, `F motor`, `finger_1_joint_1`, `finger_2_joint_1`, `finger_middle_joint_1`.
`provider.source.lock.json` and `provider.dependencies.json` retain original
sources, licences and package requirements. `mapping.request.json` is an unbound
request; its endpoint names, units and source identities grant no authority.

Restoration requires an actual source-compatible guest ROS library/application
build, a pinned runtime and compatible bounded ROS host, authenticated installed
official models/plugins, and separately reviewed adapter, grants and native
provenance. Required public runtime contracts include
`uwvm-sdk-simulation-admission-v1`, `uwvm-sdk-simulation-deployment-v1` and
`uwvm-sdk-simulation-command-binding-v1`. `deployment.template.json` is unbound
and not runnable authority. Separately qualified audit-r1 component events are
not a substitute for the public command-binding event.

Prove causal operation/goal UUID and terminal result, fresh post-result state,
and reverse JointState/sensor bytes consumed by the same executing Wasm through
the permission/audit boundary. The canonical step is 0.001 rad with a stable
independent initial state and 0.00025 rad post-result tolerance. Denied ROS/file
operations must have no corresponding unauthorized native effect. Full callbacks,
concurrency, stale/foreign ownership, lifecycle, rollback and permission
preservation remain mandatory. Native finite references do not qualify these.

`model.source.lock.json` records exact-byte model-description identities; included
macros, meshes, textures, assets and actual provider execution require their own
closure. `matrix.required.json` and `release.applicability.json` retain every
currently inventoried model, language/form/width and all 26 ROS release
obligations. This inventory remains non-exhaustive. Source hashes and package
declarations do not prove installed binary, historical API, full simulation,
performance or dev single-executable support.

Manual qualification runs only on SSH Linux after complete source transfer,
fresh lifecycle proofs and current immutable admission. All VM/ROS/simulator
actors and their ancestor use the shared 64 GiB zero-swap budget, canonical lease
and independent guardian through retirement. Keep space reserves and actual
process/executable/library/cgroup identities. No physical robot is authorized.
