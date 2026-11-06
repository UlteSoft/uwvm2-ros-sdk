# Yaskawa original-controller Wasm example

This example compiles the complete shared joint client from
`tools/shared/ros_joint_fixture` into Wasm and runs every operation through
`uwvm2-ros`. The native side uses the original GP8 description and
`mock_components/GenericSystem`, with the original
`joint_trajectory_controller/JointTrajectoryController` implementation.

The selected upstream starter source at commit
`b5a1e15a3a068f46e68d6b5ee90752c778c411b8` has three incomplete simulation settings.
`prepare_scene.py` checks the original source hashes, then creates a separate
composition: instantiate its disabled `moto_ros2_control` macro, align the YAML
controller name with its `moto_controller` spawner, and select the position
command and position/velocity state interfaces already declared by that macro.
It records these repairs and rendered output hashes. Original source files and
controller implementations are preserved.

```sh
xmake f -P . --ros-tool-cache=/absolute/existing/tool-cache
xmake -P .
UWVM_ROS_YASKAWA_TEST_CONFIG=/absolute/host/deployment.json xmake test -P .
```

Fill `deployment.template.json` with explicit installed executable hashes,
matching native type/codec identities, WASI permissions, ROS resource aliases,
QoS and a private 0700 socket directory. It grants no authority until selected
by the host. The matching runtime/gateway catalog and native model packages must
already be deployed. No toolchain or native environment is installed by the test.
An optional pinned host `launcher` receives the Python test script and its
arguments and executes them in the prepared software environment. The fixture
requires an unprivileged UID, empty capabilities, no_new_privs, a syscall filter,
an isolated ROS network and a 64 GiB, zero-swap cgroup.

The eight scenarios run with the same Wasm in the JIT and interpreter: successful
motion and fresh feedback, denied send with unchanged state, bounds/stale/cancel
scope checks, cancellation, missing-server timeout, gateway disconnect, and two
simultaneous VMs proving foreign-handle rejection and continued owner access.
`xmake test` verifies the source/build record and exact image, writes all 16 case
results and raw logs, and fails for missing tests or unretired actors.
WASI namespace, exact interfaces and operation grants remain distinct. Explicit
hidden/deny interface settings take precedence over test-only imported-interface
exposure; no operation grant or rate quota is inferred. The original unknown
JointState effort stays NaN under the explicit codec field policy.

This fixture selects the installed Jazzy ABI and original software-only model.
It does not establish Humble execution, other models/ABIs, physics, production
guardian admission, ROS production updates or physical robot authority.
Those dimensions remain separate in the source/model inventories.
`run_scene.py` uses `UWVM_ROS_YASKAWA_SCENE_OUTPUT` for an explicit writable
rendered-scene directory and starts the same checked software composition.

The explicit deployment motion contract selects the challenge and position tolerance.
The same tolerance is encoded in all six native action goal tolerances and checked
by Wasm; the commanded step must exceed four times that tolerance.
