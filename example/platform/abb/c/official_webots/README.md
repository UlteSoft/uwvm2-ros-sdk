# ABB Webots arm fixture

This example compiles the joint algorithm and complete typed ROS message handling
into one Wasm command. Both uwvm2-ros engines execute the same artifact against
the original Webots R2025a IRB4600-40 physics, original webots_ros2_control driver
and native JointTrajectoryController on ROS 2 Jazzy.

Run `xmake -P .` to build, then `xmake test -P .`. Set
`UWVM_ROS_ABB_WEBOTS_TEST_CONFIG` to an explicit deployment based on
`deployment.template.json`. The template contains placeholders and grants no
authority. The test checks current source, generated records and the complete
Wasm hash; it refuses missing deployment and changed artifacts.

The deployment pins the VM, bounded-type gateway, native files, ROS namespace,
each capability and WASIp1 grant. Run inside an unprivileged isolated software
environment with the 64 GiB zero-swap cgroup, no capabilities, no_new_privs and
a syscall filter. Set WEBOTS_HOME to the pinned installation and provide the
original webots_ros2 packages, Xvfb and all assets in `model-assets.json`.
Reuse existing installations. The model assets retain upstream licences and
must only be used within their permitted Webots context.

The owned composition selects exactly A through F motor joints from the original
ros2_control description. The gripper remains passive; no partial nine-joint
trajectory or implicit gripper authority is used. The world and model bytes are
unchanged. The scene uses realtime simulation so feedback and cancellation are
observable. The deployment selects a 0.0037 rad step and 0.0005 rad tolerance:
the tolerance is both a real six-joint ROS action goal constraint and the Wasm
position oracle. The step must exceed four times the tolerance.

Eight cases run through both JIT and interpreter: fresh feedback/result and
joint positions, denied action without movement, malformed/boundary/stale
references with unchanged output canaries, owned cancellation, monotonic timeout,
real gateway disconnect, and two simultaneous VMs testing foreign handles.
Python starts and observes native processes; it does not execute the joint
algorithm or manufacture feedback. Each run saves raw VM/gateway/native logs,
actual process and loaded-plugin identities, motion contract and retirement.

This fixture establishes local functional evidence for this arm composition.
It does not establish production guardian admission, physical robot authority,
all 37 inventoried models, historical ROS releases, other native ABIs, gripper
or additional sensors. Debugger-driven pause/restart, simulator restart, native
performance and ROS production update with outstanding native goals remain
unqualified dimensions in the manifest. Production updates must be forward-only;
the former rollback scenario is not a supported update contract.

`provider.source.lock.json`, `model.source.lock.json`, `matrix.required.json`
and `release.applicability.json` retain the source identities and wider unresolved
qualification obligations. A successful local run does not mark those rows passed.
