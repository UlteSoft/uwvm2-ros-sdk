# FANUC original-controller Wasm example

`main.c` compiles the shared joint client in Wasm through `uwvm2-ros`. The native side uses
the original FANUC CRX10iA model with `mock_components/GenericSystem` and
`fanuc_controllers/ScaledJointTrajectoryController`. Goal construction, complete
typed message decoding, result checks and joint-position comparisons execute
inside Wasm. No native application implements this business logic.

Build and test from this directory using an existing SDK tool cache:

```sh
xmake f -P . --ros-tool-cache=/absolute/existing/tool-cache
xmake -P .
UWVM_ROS_FANUC_TEST_CONFIG=/absolute/host/deployment.json xmake test -P .
```

`deployment.template.json` is an unbound, explicit host configuration. Fill the
installed runtime/gateway/native executable paths and SHA256 values, choose an
owned mode-0700 socket directory, and review each case's WASI grants, ROS aliases,
resource names, complete native type identities, codec identities and QoS.
The runtime and gateway must be built with the matching bound custom catalog.
`tools/shared/ros_joint_fixture/prepare_bindings.py` only produces guest records from the complete original
message/action declarations; it cannot establish a native ABI identity.

Every VM starts with the configured basic WASIp1 authorization. The test helper
exposes only the artifact's imported interfaces; explicit hidden/deny settings
still take precedence. Interface exposure does not grant resources. WASI
operations and ROS resource grants remain separate, explicit host settings.
No frequency quota is added automatically. The timeout scenario explicitly
selects a 100 ms missing-server deadline. The message profile admits NaN in the
original JointState float fields: absent mock effort remains NaN, while position
checks require finite values. Infinity is refused by the codec.

The suite executes all eight scenarios in both the LLVM JIT and interpreter:
successful joint motion, denied send with unchanged state, bounds/stale/cancel
scope errors, cancel-own-goal, missing-server timeout, actual gateway disconnect,
and a simultaneous owner/foreign-VM handle-isolation pair. The same immutable
Wasm bytes execute in all 16 cases. `xmake test` verifies the build inputs and
artifact instead of rebuilding. Missing configuration, fewer cases, failed
assertions or unretired actors cause failure. It writes `suite.json`, raw logs,
process lifetime/executable identities and the exact guest image under
`UWVM_ROS_TEST_OUTPUT_ROOT` (or the target's test evidence directory).

The host fixture must already provide an isolated software ROS network, an
unprivileged UID, empty capability sets, no_new_privs, a syscall filter and a
64 GiB, zero-swap cgroup. An optional trusted host `launcher` object contains
`executable`, `sha256`, and `arguments`; Xmake appends the Python test script and
its arguments. The launcher must execute that script in the prepared environment.
No launcher is installed, privileged policy changed, or dependency downloaded by
this example. `run_scene.py` accepts an explicit output directory and starts only
the checked original software scene.

The original source is FANUC's `fanuc_driver` commit
`da5db3f611cdc9dffe687e056c4e79bea584bf5c` and `fanuc_description` commit
`fb40c9803a826ba68c7c8e28ba904a25efa7fcd2`. The native joint order is J1 through J6.
`provider.source.lock.json` pins the original files, including the actual included
model macro. Three explicit GPIO initial conditions in
`software-initial-state.json` make the ideal software controller connected and
motion-enabled; source files and controller implementation stay unchanged.
The rendered model and these conditions are recorded separately in each run.

This is local software functional evidence. Production guardian admission,
other models/ABIs/RMW/security profiles, debugger pause/restart, ROS production
hot update and native performance remain separately unqualified. In particular,
the current production updater refuses ROS-importing worlds; this suite does not
claim ROS update support or rollback. Physical robots are outside this fixture.
The remaining model inventory is recorded in `matrix.required.json`.

The explicit deployment motion contract selects the challenge and position tolerance.
The same tolerance is encoded in all six native action goal tolerances and checked
by Wasm; the commanded step must exceed four times that tolerance.
