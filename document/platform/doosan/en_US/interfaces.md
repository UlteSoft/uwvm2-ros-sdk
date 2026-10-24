# Doosan complete original-source Wasm SDK

This kit supplies complete bounded values and controlled ROS operations for
the original `dsr_msgs` and `dsr_msgs2` interfaces. C, C++, Rust, JavaScript,
AssemblyScript and TinyGo use the same selected canonical source graph. All
fields, service request/response components and action goal/result/feedback
components remain present. Native ROS serialization and type identities belong
to the separately admitted Gateway. A prepared source bundle grants no rights.

## Choose an exact source domain

`profiles.json` pins twelve independent domains from every public branch
observed on 2026-10-20 in the official
[ROS1 repository](https://github.com/DoosanRobotics/doosan-robot) and
[ROS2 repository](https://github.com/DoosanRobotics/doosan-robot2).
`branch-discovery.json` retains the original branch names and interface paths.
The misspelling in the historical Kinetic branch name is preserved in that
provenance; its SDK selection uses the safe identifier below.

| C profile number | Source selection | Original interfaces |
| --- | --- | ---: |
| 1 | `ros1_aws_robot` | 64 |
| 2 | `ros1_aws_simulation` | 64 |
| 3 | `ros1_doosan_robotics_patch_1` | 147 |
| 4 | `ros1_kinetic_devel_descrepted` | 115 |
| 5 | `ros1_main` | 147 |
| 6 | `ros1_master` | 146 |
| 7 | `ros1_melodic_devel` | 147 |
| 8 | `ros1_noetic_devel` | 147 |
| 9 | `ros1_patch_1` | 147 |
| 10 | `ros1_song_ms_patch_1` | 147 |
| 11 | `ros2_humble` | 161 |
| 12 | `ros2_jazzy` | 161 |

The AWS robot and simulation workspaces are separate source domains even
when some declarations match. Development and patch branches are preserved
for source migration; their names do not establish maintained releases. The
vendor marks ROS1 support as ended in May 2025. Historical definitions remain
useful for explicit legacy deployments. New ROS distributions require actual
native metadata and acceptance; a matching package name is insufficient.

Each `catalogs/SELECTION/source-lock.json` associates the immutable Git commit,
tree, original path, ordinary Git blob, SHA256 and unchanged declaration body.
Nested original service directories are retained in `upstream/`; the catalog
uses the real ROS package/kind/base-name identity. No service is omitted merely
because its original file lives under `srv/motion` or `srv/aux_control`.

The original ROS2 `RobotDisconnection.msg` is comment-only. Its complete empty
DTO is retained in both ROS2 families, with a zero-byte canonical value. The
current industrial native-topic profile refuses empty registered topics, so
this declaration is explicitly listed as `source_only_empty_topics` and is not
registered by the prepared catalog. Native delivery of that event remains an
open Runtime/Gateway adaptation; no placeholder field or fabricated native
identity is substituted. This limitation does not affect nonempty state/stop
values or the complete service/action component DTOs.

## Imports, complete values and owned operations

The lowest layer is `sdk/origin/abi/abi-v1.json` and its explicitly
selected `uwvm_ros1` or `uwvm_ros2` imports. C declarations are in
`sdk/origin/include/roswasm`; other language bindings remain inside Wasm. The generated
family `sdk/origin/custom-types/doosan-SELECTION-complete/` adds complete canonical
records, then complete typed service/action owners. Replace underscores in a
selection with hyphens to obtain the family directory name.

`include/state.h` adds complete `RobotState` and explicit `RobotStop` operations;
`include/state.hpp` adds borrowed C++ `Reader` and `Publisher` facades. The
publisher accepts a caller-supplied complete `RobotStop`; it constructs no
motion or stop value. The other complete message types and every service/action
are available in the generated `bounded_records` and `bounded_interfaces` files.
Those interfaces provide synchronous calls, separately owned asynchronous
observers, service servers, action clients/servers, feedback, results and
explicit cleanup according to the selected source graph.

The retained Noetic driver publishes relative `state`, subscribes to relative
`stop`, and exposes `system/get_robot_state` and `motion/move_joint` services.
The retained Humble controller exposes `system/get_robot_state`,
`motion/move_joint` and `motion/move_stop` services. A `RobotStop` declaration
does not establish a ROS2 stop-topic subscription. Use the complete generated
`MoveStop` service client for that controller's stop operation. The message
publication example is a source/transport lesson; it installs no automatic
topic-to-service bridge. Resolve relative names against the actual independently
selected launch namespace and native driver.

Source compatibility is a migration layer, not native binary compatibility
with rcl/rclcpp. Native libraries, vendor controller pointers, sockets and
credentials never become Guest objects. `RobotState` includes all original
joint, task, I/O, force, world/user-frame and controller fields present in the
selected revision. Complete records retain degrees and other original units;
the SDK does not silently convert them to radians or change joint order.

## Explicit canonical storage capacities

Original fixed arrays retain their original size. Unbounded strings have a
256-byte canonical capacity and unbounded sequences have a 16-element capacity,
with these explicit nested-array exceptions:

* `std_msgs/MultiArrayDimension.label`: 64 UTF-8 bytes.
* `std_msgs/MultiArrayLayout.dim`: three dimension records.
* Unbounded `Float64MultiArray` sequences: six complete array records.

Every exception is recorded in each catalog. These are finite Wasm storage
capacities, not native bounds or physical limits. Full original nested values
are represented; larger values fail with a capacity error and are never
truncated. The overall canonical record limit is 32 KiB. To change a capacity,
regenerate the entire coherent family and independently rebind its actual
native identities and capacities. A wire shape alone is not native identity.

## Start with zero ROS authority

A fresh Runtime permits no ROS operation. Basic stdin/stdout/stderr are the
only I/O assumed by these examples. Build-time vendor selection adds no Guest
rights, filesystem access, socket access, environment inheritance or native
controller connection. Guest code cannot change policy, module updates or
debugger configuration.

Run the first example with no grants. Opening an otherwise well-formed alias
returns permission error 13; no actuator payload is read after that refusal.
For positive delivery, an operator must separately bind the exact native
interface SDK and grant the specific resource, backend and operation. State
observation, stop publication, motion, I/O, DRL execution, access control,
safety-mode changes and recovery require separate reviewed authority.

Doosan services can execute DRL programs or change controller access/safety
state. Their complete source DTOs are included for migration, but source
availability never authorizes execution. Do not grant an entire vendor graph
merely to observe one state topic. Physical model/controller validation belongs
in the independently qualified native bridge.

## Build C and C++

All compiler and execution commands belong in the configured Linux cgroup.
Use fresh absolute output directories. Associate a newly prepared bundle once:

```sh
python3 -I -S -B sdk/origin/robots/arms/doosan/tools/select_profile.py \
  --kit /absolute/src/sdk/origin/robots/arms/doosan \
  --bundle /absolute/src/sdk/origin/custom-types/doosan-ros2-humble-complete \
  --profile ros2_humble
```

An existing selection receipt is refused. CMake checks the source lock,
catalog, every original body and every generated product. A foreign domain
is refused even when it has byte-identical message declarations.

```sh
cmake -S /absolute/src/sdk/origin/robots/arms/doosan \
  -B /absolute/test-root/doosan-wasi \
  -DCMAKE_BUILD_TYPE=MinSizeRel \
  -DCMAKE_TOOLCHAIN_FILE=/absolute/wasi-sdk/share/cmake/wasi-sdk.cmake \
  -DCMAKE_EXE_LINKER_FLAGS=-Wl,--threads=1 \
  -DUWVM_DOOSAN_BUILD_WASI_EXAMPLES=ON \
  -DUWVM_DOOSAN_PROFILE=ros2_humble \
  -DUWVM_DOOSAN_SOURCE_ROOT=/absolute/src \
  -DUWVM_DOOSAN_GENERATED=/absolute/src/sdk/origin/custom-types/doosan-ros2-humble-complete
cmake --build /absolute/test-root/doosan-wasi --parallel 1
uwvm2-ros -Rint --wasip1-global-noinherit-system-environment \
  --run /absolute/test-root/doosan-wasi/doosan_guest_cpp.wasm \
  state doosan.observation
```

With no grants, the final invocation returns 13 and writes no output. All
CMake targets default OFF. `UWVM_DOOSAN_BUILD_CONTRACTS=ON` separately enables
authored complete-value/truncation contracts. A Wasm example has a 1 MiB stack,
16 MiB initial linear memory and a 64 MiB nonshared maximum. This SDK CMake
build does not enable the Runtime's vendor option.

For a full native-bound catalog above 128 declared endpoints, explicitly choose
`--ros-registry-max-interfaces=256` or `512` in the Runtime build. All separately
compiled Runtime/Worker/Gateway components must use the same
`UWVM_ROS_MAX_CUSTOM_INTERFACES` definition. The default is 128; the accepted
range is 1..512. This declaration capacity changes no Guest grant, record-byte
ceiling or expanded-cell budget. See the build guide for an explicit larger
Unitree + Doosan configuration. The frozen Runtime used for source/data tests
does not qualify that larger native-bound deployment.

C/C++ entries accept `raw|state|command ALIAS`. `raw` tests only capability
opening. `state` subscribes and polls once, writing a full canonical state to
stdout. `command` reads a u32 little-endian byte count and a complete canonical
`RobotStop` from stdin only after admission, validates it and publishes once.
Idle, denial, malformed data and capacity errors remain distinct. Every owned
capability is closed once; primary and cleanup errors remain separate.

## Build Rust, AssemblyScript, TinyGo and JavaScript

| Language | Complete generated sources | Actual finite Wasm entry |
| --- | --- | --- |
| Rust | `bounded_records.rs`, `bounded_interfaces.rs` | `examples/rust/main.rs` |
| AssemblyScript | `bounded_records.ts`, `bounded_interfaces.ts` | `examples/main_SELECTION.ts` |
| TinyGo | `bounded_records.go`, `bounded_interfaces.go` | `examples/go/main.go` |
| JavaScript | `bounded_records.mjs`, `bounded_interfaces.mjs` | `examples/guest_SELECTION.mjs` inside QuickJS Wasm |

Select exactly one source feature/tag and the matching ROS backend. Rust:

```sh
cargo build --offline --release -j1 --target wasm32-wasip1 \
  --no-default-features --features ros2_humble \
  --manifest-path /absolute/src/sdk/origin/robots/arms/doosan/examples/rust/Cargo.toml \
  --target-dir /absolute/test-root/doosan-rust
```

Supply the admitted compiler/linker and finite memory flags as shown in
`test/0073.ros-tests/support/source/ros_platform_sdk/managed_doosan.py`. AssemblyScript:

```sh
asc sdk/origin/robots/arms/doosan/examples/main_ros2_humble.ts \
  --runtime incremental --use abort=sdk/origin/assemblyscript/api/abortGuest \
  --optimizeLevel 1 --initialMemory 256 --maximumMemory 1024 \
  --outFile /absolute/test-root/doosan-as.wasm
```

TinyGo, from `examples/go`:

```sh
tinygo build -target=./wasmros-wasi.json -scheduler=none -gc=leaking \
  -panic=trap -p=1 -tags='ros2 doosan_ros2_humble' \
  -o /absolute/test-root/doosan-tinygo.wasm .
```

JavaScript uses `examples/javascript-ros2_humble.json` with the existing
`sdk/origin/javascript/guest/prepare.py` operator. Its explicit source recipe compiles
QuickJS to WASI and admits the listed modules; JavaScript executes inside that
Wasm module. It is not a host Node process with native ROS authority. The
managed harness records every compiler job, actual imports and final artifact.

Rust and TinyGo accept `state|command ALIAS` as argv. AssemblyScript and
JavaScript consume a mode byte (`0` state, `1` command), a u8 alias byte count
and strict UTF-8 alias bytes from stdin. Command mode then reads a u32 size and
complete canonical stop bytes after admission. JavaScript writes two u32LE
status values (primary and cleanup); other entries return their effective
numeric status. No entry invents a command or retries an actuator operation.

## Controllers, models, stopping and multiple vendors

Match DRCF generation, controller revision, real/virtual mode, model, joint
order, limits and native namespace independently. The original launch sources
describe those choices. Their existence does not validate every combination.
Doosan's ROS1 documentation distinguishes DRCF 2/3 build selection; the Guest
profile neither chooses nor installs a controller implementation.

The original `RobotStop` is an int32 `stop_mode`. Its documented modes include
quick STO, quick, slow and hold/emergency names. These are vendor semantics;
publishing a value, closing a capability or revoking permission does not certify
a physical emergency-stop function. A narrow stop bridge must independently
validate the permitted mode and controller behavior. Unknown outcomes and
timeouts must not trigger automatic replay. Recovery, release-protective-stop
and safety/access changes remain independently privileged.

One Wasm application can hold separate Doosan and Unitree aliases. Build one
coherent, deduplicated native registry with matching shared definitions and
actual native identities. Never concatenate independent generated registries.
If a later alias fails to open, close prior owned roles and preserve rollback
errors. See the [vendor build guide](../../../../../documents/ros/vendor-build-options.md)
for explicit A+B options with every unused vendor disabled.

## Reproduction and acceptance boundaries

`tools/capture_sources.py` admits immutable trees and original blobs.
`industrial/prepare.py` emits all complete records and protocol owners without
a native registry. `emit_examples.py` and `emit_contracts.py` reproduce authored
source into fresh directories. `tests/validate_sources.py` independently checks
original bodies and complete six-language member/constant maps.
`tests/generate_golden_vectors.py` independently parses original declarations
and packs nonzero full-field reference bytes without importing the codec IR.

The Linux harnesses retain actual argv, output, product hashes and failed
attempts. Native/Wasm data contracts, zero-authority refusals, original native
interface-package builds, full original driver suites, positive robot delivery,
simulation, architecture-specific Runtime acceptance and VTune hardware
Hotspots/Microarchitecture each require their own evidence. A source SDK or
user-QEMU data program does not establish those later acceptance levels.

The authoritative SDK is sdk/include/platform/doosan/; applications and actual xmake entries are sdk/example/platform/doosan/. Catalog/schema inputs are sdk/share/platform/doosan/catalogs/. Old one-shot source-copy emitters and optional CMake wrappers are retired. Formatting, compilation, relocated installation and Guest/native acceptance are independent checks. Upstream native reference captures are optional external maintainer-cache inputs, never a normal SDK dependency or fallback.
