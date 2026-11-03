# SCOUT closed-loop control in WebAssembly

[中文说明](README.zh_CN.md)

This example runs a newly developed **C11 control application inside uwvm2-ros**
against the original AgileX SCOUT v2 model in Gazebo 11. The application receives
real odometry, drives forward, stops, turns using feedback, and stops again. It
is a working Wasm application test, not just simulator startup or a replay of
recorded messages.

**Validated scope:** one C/Wasm32 application, ROS 2 Humble, CycloneDDS, the
uwvm2-ros LLVM-AOT backend, and the original native Gazebo differential-drive
plugin. The real `xmake test` invocation passed. The exact source and binary
identities and measured results are recorded in [evidence-index.json](evidence-index.json).

## Architecture and execution boundary

```text
Wasm control application (one module, memory index 0)
  publish Twist /cmd_vel  ──> uwvm2-ros capability checks
                              ──> native gateway / DDS
                                   ──> native differential drive / Gazebo physics
  receive full Odometry  <── uwvm2-ros checked guest-memory copy
                              <── native gateway / DDS <── /odom

Independent native recorder: subscribes to /cmd_vel and /odom; never publishes.
```

| Component | Execution location | Responsibility |
| --- | --- | --- |
| `main.c`, message codecs, C runtime and math routines | One Wasm32 executable module | Task state machine, feedback decoding, control decisions, position/velocity correction, timeouts and stopping |
| Gazebo 11 and the original SCOUT v2 model | Native | Physics, collisions, wheel joints and simulated state |
| Original `gazebo_ros_diff_drive` plugin | Native | Applies requested wheel motion and publishes odometry |
| uwvm ROS 2 gateway, Humble and CycloneDDS | Native | Identity checks, typed serialization and transport; no task or velocity controller |
| `run_simulation.py` and `exec_gate.py` | Native test infrastructure | Bounded startup, exact peer/PID selection, launching the VM, verification and process retirement |
| `observe.py` | Native read-only test infrastructure | Receives actual RMW CDR, records publisher identities and supplies independent verification data |

The application is **newly written C code**, not a claim that an upstream Python
or native ROS control application was ported. All movement decisions and
feedback-based corrections execute in Wasm. Native Python is used only for test
orchestration, simulator initialization and independent observation.

The tested artifact is one **statically linked Wasm executable**, not a standalone
`.a` library. It has no dynamic Wasm preloads or `dylink` section. It defines one
non-shared Wasm32 memory at index 0: 17 initial 64 KiB pages and a maximum of
1,024 pages (64 MiB). No independent-memory library, multi-memory composition or
cross-module call is exercised by this example.

## Task and acceptance conditions

The guest checks real odometry timestamps and frame names (`odom`, `base_link`),
and rejects non-finite state values. It performs these stages:

1. Read the initial pose and drive toward a point 0.5 m along the initial heading.
   Forward speed is reduced near the target, with heading correction.
2. Command zero velocity and observe the first stop for at least 1.5 seconds and
   20 fresh samples. Measured linear speed must be below 0.01 m/s; stop drift
   must not exceed 0.04 m.
3. Turn toward an additional 0.8 rad. The guest integrates velocity error and
   uses position feedback to compensate for translation during the skid-steer
   turn. This correction is computed inside Wasm.
4. Command zero velocity and observe the final stop for at least 2 seconds and
   30 fresh samples. Linear speed must be below 0.01 m/s and angular speed below
   0.015 rad/s. Final stop drift is limited to 0.02 m and 0.04 rad.

Final displacement projected onto the initial heading must be 0.49–0.57 m;
heading change must be within 0.06 rad of 0.8 rad. Lateral displacement is bounded
by 0.10 m throughout the task, and distance from the starting point by 1 m. At
least 100 unique feedback samples are required.

The guest fails on feedback loss longer than 1 second after startup, missing
initial feedback after 10 seconds, a stage exceeding 20 seconds, or a whole task
exceeding 60 seconds. The common exit path attempts the final zero command and
closes the capabilities; a failed stop or close makes the process fail. This is
not a claim that motion can always be stopped after the driver or transport has
already failed.

Commands are paced at approximately 20 Hz using the granted WASI monotonic clock;
the original driver publishes odometry at approximately 30 Hz. These are task
settings, not a real-time or comparative-performance qualification.

## Permissions and negative tests

[deployment.template.json](deployment.template.json) grants exactly two ROS
capabilities to `scout_control`, with `call_boundary` set to `same-module`:

| Alias | Allowed operation | Resource and exact message type | Important bounds |
| --- | --- | --- | --- |
| `command` | `topic.publish` | `/cmd_vel`, `geometry_msgs/msg/Twist` | 48 bytes; one publisher; one inflight operation; burst 1; QoS depth 1 |
| `odometry` | `topic.subscribe` | `/odom`, `nav_msgs/msg/Odometry` | Up to 952 canonical bytes; one subscriber; one inflight operation; burst 10; QoS depth 10 |

Both use reliable, volatile, keep-last QoS. The template pins RIHS type identities,
the Odometry codec identity, rate limits, queue limits, byte limits and audit
settings. The 1,000 Hz permission ceiling is separate from the application's
approximately 20 Hz command cadence. Odometry includes the timestamp, both frame
identifiers, full pose and twist, and both covariance arrays.

The only explicitly granted WASI capability is `monotonic-clock`. Standard output
is used for evidence. The tested artifact has no socket, process-execution or
path-opening imports. There are no service, Action, other-topic or cross-module
ROS grants.

The guest actually executes and checks these rejection cases:

| Attempt | Expected errno |
| --- | --- |
| Open an ungranted alias | 13 |
| Publish using memory index 1 | 22 |
| Publish an out-of-bounds buffer | 22 |
| Publish using a forged handle | 9 |
| Publish using the subscription handle | 13 |
| Publish after closing the command handle | 9 |

## How the test detects native application bypass

The VM journal records actual guest-memory input/output bytes, module identity,
process identity and checked IPC responses. The independent recorder retains
actual RMW-received CDR and reconstructs the complete canonical Odometry value.
The verifier requires:

- Every successfully published guest Twist to match the independently received
  native command stream byte-for-byte and in order, including the final zero.
- Every successfully delivered Odometry value to match a real independently
  received sample, including all fields, not just its position.
- The observed command publisher GID to resolve exclusively to the selected
  gateway. DDS discovery may temporarily expose an unknown node name for that
  same GID; it must subsequently resolve to the gateway.
- The checked peer PID/UID, Wasm hash and run identity to match the selected
  actors, and the VM journal to have a complete footer with zero dropped or
  suppressed records.
- Complete local and outer-queue process retirement.

These checks support the conclusion that **this tested run did not use a native
ROS application to generate the movement commands**. Native ROS/DDS remains the
intentional driver and transport environment. The test uses an isolated domain
and `disabled-test` DDS security; it is not a public production deployment or a
DDS security-domain certification.

## Prerequisites and environment preparation

The validated host is Linux x86_64. Application compilation uses the SDK's pinned
LLVM **23.1.4**, `wasm32-wasip1`, the `noeh` target runtime, and ROS 2 **Humble**.
The selected simulation is headless CPU Gazebo 11; no physical robot, Docker
daemon or GPU is used.

The example consumes a prepared native installation. It does **not** currently
bootstrap the complete simulator and gateway from a machine containing only
Xmake. Prepare the following outside the control application, under the same
bounded execution policy:

1. Install the exact Humble/CycloneDDS and Gazebo runtime closures and retain
   their file hashes and symlink inventories.
2. Acquire the original AgileX source at the commit listed below and retain the
   complete source manifest. The native scene expands the original SCOUT xacro
   and initializes that model in Gazebo's empty world.
3. Use [interfaces/catalog.preparation.json](interfaces/catalog.preparation.json)
   and its message files to obtain a real installed-source proof and native
   type identity from the selected Humble installation. Bind the catalog and
   generate matching native provider/registry headers using the SDK's binding
   tooling. The preparation catalog alone is not identity evidence; never fill
   missing identity fields with invented hashes.
4. Build the native gateway with that provider and registry, and build uwvm2-ros
   with the same generated registry. The relevant build selections are
   `UWVM_ROS_CUSTOM_REGISTRY_HEADER`, `UWVM_ROS_CUSTOM_ROS2_HEADER` and
   `UWVM_ROS_CUSTOM_ROS2_PACKAGES` for the ROS 2 gateway, and
   `--ros-custom-registry-header` for the VM. The native package closure includes
   `nav_msgs`, `geometry_msgs`, `std_msgs` and `builtin_interfaces`. A VM/gateway
   pair containing only unrelated built-in types cannot replace these inputs.

The existing SDK scene implementation is
`example/platform/agilex/simulation/ugv_gazebo_scout_v2/native_scene.py`, relative
to the SDK root. The runner verifies the supplied native runtime and original
source inventories before starting their processes.

Copy [simulation-config.example.json](simulation-config.example.json) to a local
configuration file and replace all six placeholders with absolute paths:

| Configuration key | Required input |
| --- | --- |
| `vm` | The actual uwvm2-ros executable built with the matching registry |
| `gateway` | The actual typed Humble gateway executable |
| `native-base-report` | Gateway/recorder runtime report containing `rootfs` and the `rootfs_files` inventory |
| `native-closure` | Simulator runtime closure containing regular-file hashes and alias targets |
| `native-environment` | Simulator process environment containing the runtime root, loader, ROS distribution and environment |
| `native-sources` | Original source inventory containing the `agilex-ugv-humble` repository/commit and complete file list |

These files must describe real installed environments; the example does not
synthesize them or silently substitute another ROS version. Published entry
points contain no campaign directory or developer-machine absolute paths.

## Build and run

Run **all** commands inside an admitted CPU scheduler job. The build, compiler,
VM, gateway, simulator, recorder and every descendant must be born under the
same actual `/sys/fs/cgroup/uwvmros.slice` ancestor with `memory.max=68719476736`
and `memory.swap.max=0`. Each child cgroup must also be bounded. Merely setting
environment variables or moving an already running workload later is not enough.

The scheduler supplies a fresh absolute `UWVM_SDK_OUTPUT`, an isolated
`ROS_DOMAIN_ID`, ports, temporary/cache directories and process ownership. The
runner checks the actual kernel cgroup. An ordinary unrestricted shell is not
the supported test entry.

Inside that job, with paths adjusted to the installed SDK and prepared inputs:

```sh
export UWVM_ROS_SDK_ROOT=/absolute/installed/uwvm2-ros-sdk
export UWVM_SCOUT_SIMULATION_CONFIG=/absolute/scout-environment.json
example="$UWVM_ROS_SDK_ROOT/example/platform/agilex/c/ros2/humble/scout_closed_loop"
cd "$example"
xmake f -P "$example" -y -p wasm-wasip1 -a wasm32 -m release
xmake -P "$example" -j1 agilex-scout-closed-loop
xmake test -P "$example" -j1
```

The explicit `-P` selects this project even when another `xmake.lua` exists in an
ancestor directory. The SDK resolves its pinned compiler and Python helper
runtime. A prepared compiler cache can be selected with the existing
`--ros-tool-cache` configuration option; using that cache is not cold-install
qualification.

The build produces `agilex-scout-closed-loop.wasm`. The mandatory test is named
`agilex-scout-closed-loop/real-scout`. It launches the real simulation callback;
an empty or unsupported selection cannot count as a passing simulation.

## Outputs and measured result

Each invocation creates a fresh `scout-test-<pid>` directory beneath
`UWVM_SDK_OUTPUT`. Existing evidence is not overwritten. Important files are:

| File | Contents |
| --- | --- |
| `simulation-result.json` | Task result, exact inputs, permission denials, byte matches and process-retirement evidence |
| `vm.stdout` / `vm.stderr` | Guest feedback, task completion, final stop/close statuses and VM diagnostics |
| `vm-buffer.jsonl` | Actual VM buffer/IPC journal with its limits and complete footer |
| `runtime/native-received.jsonl` | Independently received raw RMW CDR, complete decoded-state reconstruction and publisher identities |
| `simulator/native-readiness.json` | Native environment lifecycle; by itself this never means the Wasm task passed |
| Xmake artifact metadata and required-test `dispatch.json` | Actual module shape and evidence that the selected test callback executed |

The recorded passing run produced:

| Measurement | Result |
| --- | --- |
| Final displacement along initial heading | 0.545405293 m |
| Heading change | 0.791522325 rad |
| Guest task elapsed time | 10.647137728 s |
| Complete Odometry samples matched to guest memory | 313 |
| Twist commands matched byte-for-byte and in order | 204 |
| Permission/memory/lifecycle rejection cases | 6 |
| VM operation records | 1,227; zero dropped and zero suppressed |
| Local actors retired | 16; outer queue also confirmed retirement |
| Common memory/swap limit | 64 GiB / zero swap |
| Job leaf limit and measured peak | 6 GiB / 334,389,248 bytes |

Configuration, application build and the real Xmake test all returned zero. These
are results from the recorded run, not guarantees of identical timing or
coordinates on every host. [evidence-index.json](evidence-index.json) binds the
results to the tested public sources, Wasm/VM/gateway hashes, queue receipt and
raw-evidence bundle. Large raw logs and binaries remain separate from the Git
source tree and are identified by their SHA-256 digests. Prior failed runs remain
preserved; a later pass does not rewrite those results.

## Failure handling and troubleshooting

- Missing configuration, native files, type identities or a mismatched source
  inventory must be corrected at their source. Do not relax identity checks or
  manufacture readiness receipts.
- A wrong cgroup or swap setting is an execution-boundary failure. Submit a fresh
  job through the admitted scheduler instead of disabling the check.
- Guest nonzero exit, stale feedback, motion outside tolerance, a final stop
  failure, command/feedback mismatch, or incomplete journaling fails the test.
  Inspect `simulation-result.json` and the original VM/native logs.
- Startup or runtime failure still enters owned-process cleanup. Preserve the
  output directory and use a fresh invocation rather than reusing process IDs,
  sockets or evidence directories.

This example does not establish full navigation, hardware behavior, dynamic or
multi-memory libraries, cross-module isolation, a native-ROS performance
comparison, the separate public production-enrollment interface, or other
platform/language combinations.

## Native source and license provenance

The model comes from [AgileX ugv_gazebo_sim](https://github.com/agilexrobotics/ugv_gazebo_sim)
at commit `9d7888affce35321c657c1c8528307f3115b9d41` on the Humble source line.
The original `scout/scout_description/urdf/scout_v2.xacro`, model assets and
Gazebo differential-drive parameters are retained unchanged. The source archive
SHA-256 is `8f7e46120a544002ef40d3da9367132c9a253c1cf5b53d199bc761eb1377751c`.

The upstream `scout_description/package.xml` still contains
`TODO: License declaration`; this example does not represent the model's license
as confirmed and does not redistribute its model/mesh archive. Runtime and type
source inventories retain the original package identities and notices.

## Files in this example

- `main.c`: the entire application control algorithm and guest-side assertions.
- `xmake.lua`: pinned SDK selections, real Wasm build and mandatory simulation test.
- `deployment.template.json`: exact per-module ROS/WASI permissions.
- `run_simulation.py`: bounded actor launch, actual peer checks, verification and retirement.
- `exec_gate.py`: preserves the selected VM PID while waiting for the gateway to be ready.
- `observe.py`: independent native receive-only recorder.
- `interfaces/`: complete message-definition preparation inputs for typed bindings.
- `simulation-config.example.json`: explicit installed-environment path template.
- `evidence-index.json`: measured acceptance scope and immutable evidence identities.
