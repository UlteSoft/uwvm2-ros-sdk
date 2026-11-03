# Python Wasm JointState feedback component

Status: **SOURCE_ONLY / NOT_BUILT / NOT_RUN**. This is a bounded guest component,
not completed ABB simulation or legacy-library compatibility. The existing
`example/platform/abb/c/official_webots` mandatory framework scenarios remain
BLOCKED and required. A passing component result cannot satisfy them.

The real application source is
`include/platform/abb/transplate/ros2/rclpy/v0_1_0/joint_feedback.py`. Its complete
Header, Time, name, position, velocity and effort fields use the existing
controlled ABI's canonical encoding. This is not DDS CDR or a native rosidl
extension. The application rejects host CPython and runs only inside genuine
CPython/WASI. It consumes the shared SDK06 rclpy source candidate and existing
CPython 3.14.8 core without copying an engine or changing the shared port.

From this directory, use:

```sh
xmake
xmake test
```

The normal build compiles the real Python application, bridge and pinned core to
Wasm. Tests reuse the exact output and refuse a missing/changed build. Outputs,
objects and dependency metadata have distinct target directories. Root scheduler
configuration/cache isolation is owned by SDK01 and remains separately required.

Set `UWVM_ROS_RUN_CONFIG` to a separately reviewed public
`uwvm-ros-command-run-v1` configuration: target `wasm32-wasip1`, backend `ros2`,
distribution `jazzy`, an absolute installed runtime path and its complete
`runtime_sha256`, `runtime_arguments` exactly
`["--runtime-aot", "--runtime-llvm-jit-cache-path", "disable"]`, and
`application_arguments: []`. The fixture selects `--codec-selftest`; it never
adds grants, changes unwind policy or substitutes a native implementation.
Missing actual runtime/configuration is a non-success prerequisite failure.
The codec component explicitly disables persistent native object caching while
retaining actual AOT compilation and default mandatory checked unwind. Cache
performance and full legacy/simulation semantics remain separately required.

`component.resources.json` records separate cold LLVM, Python linking and VM
runtime budgets. The44,156,460-byte Python core is a pinned read-only build input.
The703,457,036-byte compiler decompression stream needs the768MiB build per-file
limit. The complete Python build plan reserves4GiB writable work output plus
separate input/control and512MiB `/tmp` +16MiB `/run` capacities, keeping12GiB
ordinary and13GiB common reserves. These are admission limits, not measured
peaks or execution permission. The runtime phase caps its input Wasm at64MiB,
individual output files at128MiB, each log at8MiB and duration at300seconds.
Only the live outer manual job proves64GiB/zero-swap/lease/retirement; hosted CI
must report its actual resources. Missing capacity is BLOCKED. Re-read installed tool/core/runtime availability and
live admission for the current boot; historical receipts grant no new execution.

`build.inputs.json` lists the exact selected compiler/sysroot/provider and
Python dependency bytes. It excludes external vendor bindings, which remain
outside the application. The build receipt pins every listed dependency, the
application, test fixture, resource limits and selected build-provider sources.
Tests refuse changed inputs and do not rebuild or relink the application.

One native Xmake test executes nine named assertions in the actual Wasm:
fixed-vector encoding, complete decoding, optional vectors, every truncated
prefix, trailing bytes, nanosecond range, nonfinite data, oversized sequence
counts, and exact named projection/freshness. It requires the actual guest result,
runtime identity, checked-unwind evidence, nonzero case counts, unchanged Wasm,
original logs, sampled process/cgroup identity and owned-session retirement.
No host Python parses a ROS message or performs the guest assertions.
The guest emits one start and finish event for each case and a final count.
The fixture cross-checks that stream. A prerequisite failure leaves nine blocked,
not-run cases; an unfinished guest case is reported separately. It never turns a
process failure into nine executed failures. A caught assertion failure is
reported by its actual guest case, and other independent codec cases run once.

The additional `--feedback` guest command accepts one bounded external execution
JSON. It calls migrated `rclpy.Node.create_subscription` and nonblocking
`spin_once`, validates original joint names/units and records strictly increasing
ROS stamps and guest monotonic receipts. An explicit denial run returns 13 only
when subscription creation raises 13; actual VM permission/no-effect audit still
has to corroborate it. With a separately reviewed command-run configuration, `xmake run` delegates
directly to the existing VM command runner and rechecks the built artifact and
pinned source identities. It accepts the VM command-run format and actual AOT
selection; no native ROS run format is accepted. The guest never submits a goal.
Its supplementary FNV
checksum is not a cryptographic provenance or audit substitute. ROS time and
guest monotonic time are kept separate. Position payloads are not printed.

The first external request profile is next to the application source. It remains
UNBOUND and creates no authority. Incoming extra joints require an explicit
source-backed field disclosure and runtime grant; name filtering grants nothing.
The fixed guest API profile is Jazzy. Native provider distribution/ABI selection
belongs to the external VM deployment and needs its own qualification; it is
not compiled into this application. A Jazzy guest on a qualified Humble host
would not establish Humble-source API compatibility. Humble source compatibility,
concurrent callbacks, actions and all unported legacy semantics remain required.

Full acceptance still requires the same frozen complete Wasm through uwvm2-ros
permission/audit, its bounded host, the original Webots model/controller, causal
control/result correlation, denied operations without unauthorized effects and
fresh reverse state/sensor bytes entering that Wasm. The current component has
not established any of that execution. Full official simulation, historical
releases/models, native performance and the final world-model scenario remain
mandatory; native references and these component tests cannot replace them.

Current source milestone: the new boot qualified six exact Python source parses,
14 native fixture result-protocol vectors, and three native log byte-bound
checks. The guest application was never evaluated on the host. These checks
execute zero guest assertions and zero official simulation scenarios. A fresh
complete build input/mount packet and its own two interruption proofs remain
required for public `xmake`; the runtime ELF/library closure and nine real guest
assertions through `xmake test` remain required afterward.
