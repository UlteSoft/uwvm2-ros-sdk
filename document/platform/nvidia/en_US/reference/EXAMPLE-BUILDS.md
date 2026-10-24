# NVIDIA examples through xmake

Use the installed SDK root or its standalone `example/` project. Select one
platform, public language ID and example; nothing builds all examples by default.
The installed files use only `include/`, `share/`, `tools/` and local example
sources. No maintenance checkout or repository test directory is needed.

The commands below are build recipes. Their presence is not a passing build,
Guest, native ROS, simulator or model result. Keep failed attempts and use a fresh
output path for each replacement. Repository acceptance runs only on SSH Linux
under the shared finite owner. Installed consumers can use their own bounded
build environment; the private harness is not an SDK dependency.

## Select platform, language, example and profile

From the installed SDK's `example/` directory:

```sh
xmake f --sdk-example-platform=nvidia-isaac-ros --sdk-example-language=cpp \
  --sdk-example=raw-default-denial --ros-sdk-cpp-standard=20 \
  --sdk-target=wasm32-wasip1 --sdk-startup=command \
  --sdk-exceptions=n --sdk-threads=n --sdk-offline=y \
  --sdk-toolchain=/ABS/PINNED/TOOLCHAIN \
  --sdk-profile-manifest=/ABS/INSTALLED/SDK/share/wasm-profiles.json
xmake sdk-example-list
```

The shared resolver checks actual tool/library pins and profile compatibility.
Use an actually provisioned manifest. Missing libraries, compilers or unsupported
profiles are errors. These retained C++ applications select wasm32 WASIp1 command
startup and C++20/23/26; 26 needs a genuine draft compiler/library profile. The CPU
C application selects C99/11/17/23/29 with a matching provider; 29 needs an actual
post-C23 mode. The C rule can select a genuinely provisioned wasm64 profile; it
does not create one. TinyGo selects wasm32, no EH and no threads.

The retained GR00T Go source has TinyGo-only constraints; use `tinygo`. It is not
a standard-Go application. Native CPython packages are not Python Wasm Guests.
Read `NATIVE-PROGRAMS.md` in the native component directories for complete source
behavior, finite CLI parameters and exact additional build configurations. These
catalog additions are unbuilt candidates; all five remaining module acceptances
and final current-source checks remain independent work.

The clock SDK also provides whole JavaScript/Java application sources under
`clock-program`, with actual shared raw12 transports. Java has normal source
library/application POMs; JavaScript uses a real QuickJS closed module map and
same-Wasm builtin. Their current shared managed recipes do not yet select these
service applications. They have no fake xmake target or compiler/Guest receipt.
Read `CLOCK-SDK.md` and each app's README for exact explicit inputs, full output,
native/cleanup rules and the narrowly required shared publication changes.

## Build and run empty-authority Guests

CMake-backed C++ examples read an operator-owned backend JSON file from the
absolute path `UWVM_NVIDIA_EXAMPLE_CONFIG`. Replace the path/hash with the real
program and its independently recorded SHA-256:

```json
{
  "format": "uwvm-nvidia-example-config-v1",
  "cmake": {"path": "/ABS/CMAKE", "sha256": "ACTUAL_64_HEX_SHA256"}
}
```

```sh
export UWVM_NVIDIA_EXAMPLE_CONFIG=/ABS/OWNED/cmake-backend.json
xmake sdk-example-build --output=/ABS/FRESH/OUTPUT
xmake sdk-example-run --receipt=/ABS/FRESH/OUTPUT/build-receipt.json \
  --runtime=/ABS/ACTUAL/UWVM
```

The backend uses the shared resolver's actual Clang compile/link configuration
exports and real `cmake --build --parallel 1`. It preserves the requested profile.
`backend/cmake/<selected-target>.wasm`, original logs, resolved configuration and
`build-receipt.json` stay in the output directory. The C example invokes the real
shared C compiler directly and writes `cpu-image-values.wasm`; it needs no backend
JSON. No build writes tests into the SDK.

The run action requires an actual Runtime. It gives the main module ordinary
WASIp1 stdio only and hides the Host API. ROS, network, device, clocks, randomness,
process signaling, scheduling and full stdio rights are not granted. A denial
pass is not a native exchange. The run action refuses positive/native entries.
Build, import and preload never grant anything.

Positive C++ builds require a genuinely native-bound whole-family receipt under
`share/platform/<platform>/ros2/<family>/generation.vendor.json`. Source-only
preparation is insufficient. With an EH-off library, allocation failure may
terminate/trap; the source does not promise exception-derived errno12 there.

For TinyGo, select a real provider in the common manifest and use:

```json
{
  "format": "uwvm-nvidia-example-config-v1",
  "version": "0.38.0",
  "goroot": "/ABS/MATCHING/PINNED/GO"
}
```

The real TinyGo and matching Go program must occur in the shared tool pins. The
rule stages only the selected application and actual generated records in a fresh
module, writes a local SDK module replacement, disables module-network acquisition
and invokes the shared compiler launcher. A preparation receipt is not compilation.
Only a real nonempty version1 Wasm product produces the final build receipt.

## Native complete CPU Buffer exchange

This lane needs actual generated `sensor_msgs` with `rosidl::Buffer<uint8_t>`,
`rclcpp`, eleven-type PointField and the selected installed Buffer headers. It
does not reinterpret a legacy vector message as a modern Buffer message. The API
gate pins rosidl commit
[`4537874f320ef8b350c3df7f5b6b487b409fa22f`](https://github.com/ros2/rosidl/tree/4537874f320ef8b350c3df7f5b6b487b409fa22f/rosidl_buffer)
and CUDA backend commit
[`4f3b257db3a5cc4c8e62d526f11f344c1e5801dc`](https://github.com/ros2/rosidl_buffer_backends/tree/4f3b257db3a5cc4c8e62d526f11f344c1e5801dc/cuda_buffer_backend).
It checks installed header Git blobs and records SHA-256 read-back. This is not
proof of compiled libraries, the RMW plugin or the complete loader graph.

Select `nvidia-isaac-ros/cpp/native-cpu-exchange` with:

```json
{
  "format": "uwvm-nvidia-example-config-v1",
  "cmake": {"path": "/ABS/CMAKE", "sha256": "ACTUAL_64_HEX_SHA256"},
  "python": {"path": "/ABS/PYTHON3", "sha256": "ACTUAL_64_HEX_SHA256"},
  "prefixes": ["/ABS/ACTUAL/ROS/INSTALL"],
  "rosidl_buffer_include": "/ABS/ACTUAL/ROS/INSTALL/include/rosidl_buffer",
  "enable_native_exchange": false,
  "enable_cuda": false
}
```

CMake links actual exported native targets. With native enable off, the executable
returns13 before ROS initialization or CUDA work. An authorized loopback build
requires `enable_native_exchange:true`. CUDA additionally requires
`enable_cuda:true`, `cuda_buffer_include` selecting the real exported include
root, the actual `cuda_buffer::cuda_buffer` target and compatible CUDA support.
Execution is separate, explicitly authorized, finite, isolated and loopback-only:

```sh
/ABS/OUTPUT/backend/cmake/uwvm-nvidia-cpu-exchange \
  --enable-loopback ACTUAL_DOMAIN 5000 2 UNIQUE_POSITIVE_UINT32
```

Arguments are domain0..232, lifetime1..10000ms, samples1..16 and a fresh positive
nonce. Endpoints are private image/cloud topics under `/uwvm_cpu_buffer/n<nonce>`;
no hardware topic is configurable. Global arguments and the intra-process
shortcut are disabled. Retain external network restrictions and actual RMW
configuration; discovery environment settings alone are not a network sandbox.

The subscriber retains its immutable original until `to_vector()` completes,
validates every field/byte and owns a separate CPU value. The pinned CUDA
`to_cpu()` uses a real read handle, D2H copy and stream synchronization. Optional
direct-API checks exercise exclusive/finalized writes, read-only handles,
two-stream ordering and input/output promotion. Streams outlive handles, messages,
endpoints and context. After retirement, the program checks received owners have
expired and complete snapshots remain valid. CPU fallback is recorded as CPU;
it is never called CUDA zero-copy. No Buffer object address enters a Guest.
CPU snapshots reject CUDA-backed input by default; a trusted caller must pass
the separate explicit CUDA admission. The exchange derives that choice only
from its independent CUDA build enable, before any payload conversion.

## Native Sim and GR00T packages

The `py` owner builds require real CPython3.12:

```json
{
  "format": "uwvm-nvidia-example-config-v1",
  "python": {"path": "/ABS/ACTUAL/CPYTHON312", "sha256": "ACTUAL_64_HEX_SHA256"}
}
```

The backend compiles captured sources to checked-hash bytecode using that real
interpreter. `backend/package/` keeps source, bytecode, licenses, hashes and
`python-build.json`. Compilation imports no Kit/ROS/model/device package and is
not native execution evidence. GR00T still executes through `run_captured.py`,
which admits exact source bytes without stale PYC or an ambient owner import.

For `bridge-interfaces`, JSON instead contains `format`, pinned `cmake`, pinned
`python` and explicit `prefixes`. Actual CMake/ROSIDL builds and installs into
`backend/install/`; the native package config is its artifact. Real compatible
C/C++/Python producers and middleware remain dependencies.

For simulation, invoke packaged `native_graph.py` only after separate admission.
Supply actual physical `--sdk-root`, local `--usd`, `--articulation`, domain,
literal state/command topics, full actual QoS JSON, `--frames` and `--lifetime-ms`.
Add `--enable-native-simulation`. Sensors also need `--enable-native-sensors`,
local `--sensor-config` and its exact `--sensor-config-sha256`. Pair
`--observe-native-loop` with a fresh `--native-evidence` directory. See the
platform's installed `sensors.md` for full schemas/configuration. Missing real
topics, incomplete frames and expired deadlines fail. Commands require the
independent `--enable-sim-commands` flag and an authorized complete-value client.
No physical robot is part of this recipe.

GR00T requires its real fixed SDK, compatible Python/Torch/CUDA/ROS packages,
and frozen local licensed weights plus processor/backbone assets:

```sh
/ABS/CPYTHON312 /ABS/OUTPUT/backend/package/run_captured.py \
  --enable-native-inference --sdk-root /ABS/FROZEN/ISAAC-GROOT \
  --sdk-source-inventory /ABS/OUTPUT/backend/package/sdk-source-inventory.json \
  --model-root /ABS/FROZEN/LICENSED/MODEL --embodiment ACTUAL_TAG --device cuda:0 \
  --service /uwvm_groot/infer --domain ACTUAL_DOMAIN \
  --lifetime-ms 10000 --call-ms 1000 --maximum-requests 2 \
  --enable-staged-video --staging-prefix /uwvm_groot/observations
```

The staged protocol uploads complete normal RGB frames; see installed
`staged-protocol.md`. The TinyGo `inline-inference-client` speaks the separate
small InferAction service. Do not point it at InferUploadedAction or call its
768-byte image domain normal model input. Both routes require actual service
identities and complete request/response semantics. The owner calls real
`Gr00tPolicy.get_action` once per admitted application nonce, without application
retry after uncertain effect. It returns every action tensor and rejects
unsupported nonempty info. It issues no robot command.

The pinned GR00T source recommends16GiB+ VRAM. The observed8188MiB RTX4060 Laptop
device is not qualified. CUDA alone does not establish model suitability. SDK
source licenses, NVIDIA model-license terms, gated backbone access and local
model/processor assets are separate requirements. No gate acceptance, credential
acquisition, model download, alternate model or mock inference is in this build.

## Canonical headers, documentation and official programs

Current NVIDIA C/C++ applications include shared ROS headers through
`platform/ros2/c/roswasm/...`. The CPU application includes
`platform/nvidia-isaac-ros/c/cpu_sensor_contract.h`. Native CPU CMake selects the
actual canonical `include/platform/nvidia-isaac-ros/cpp` directory explicitly.
Language namespaces and standard WASI/libc/libc++ provider headers are preserved.
No NVIDIA application requires the root `include/roswasm` forwarding tree.
Task10 owns removal/regeneration of shared public aliases.

Public borrowed-value, Buffer snapshot and native Python APIs now carry detailed
English `@brief`, `@details`, `@see`, parameter, lifetime, quota, error, authority,
thread and version contracts. The installed guide is `API-DOCUMENTATION.md`. This does not
establish generated-API documentation coverage or a native SDK build. The
pinned program inventory and 27-language ledger are `OFFICIAL-PROGRAMS.md`
and `the platform configuration guide`, delivered beside this guide;
file/catalog counts confer no program credit.

## Native cube subscriber

The additional `nvidia-isaac-sim/py` selection `native-cube-subscriber` has an
actual application body in `native_cube_subscriber.py`. It reproduces the pinned
ROS2 `subscriber.py` scene and Empty callback: ground, intensity-3000 distant
light, a red 0.2 m cube, x/y in [0,0.40) m, z=0.10 m, 1/60 s CPU physics,
playback-reset handling and per-frame complete pose application. The callback
and simulation loop cooperate; a static JointState/Empty codec is not equivalent.

Both native Python selections compile the complete listed source closure with
real pinned CPython 3.12. Their actual entry is selected explicitly: the cube
selection compiles/returns its own entry PYC, while `native-sensor-owner` selects
`native_graph.py`. Packaging does not import Kit, start ROS, run a callback or
prove Python Wasm support. Configure source header-target selections explicitly;
native-only packaging can use empty `ros-sdk-platforms`/`ros-sdk-languages`
selections rather than inventing missing language include folders.

Run the source entry only in a finite native owner with the genuine admitted
Kit/Sim, matching bundled rclpy/NumPy, actual SDK root and loopback domain. It
requires both `--enable-native-simulation` and `--enable-sim-commands`; without
both it returns13 before reading SDK paths or importing native dependencies.
Supply `--sdk-root`, `--domain` (0..232), private absolute `--topic`, `--frames`
(1..10000), `--lifetime-ms` (1..10000), `--maximum-events` (1..1024) and a fresh
absolute `--evidence` file. It rejects ambient external DDS discovery overrides
and selects localhost discovery. Retain the external whole-process watchdog:
cooperative deadlines do not preempt blocked Kit/GPU work.

The receipt retains all accepted positions, frame count, primary status and
independent ROS/Kit cleanup. `positive_callback_observed` requires actual native
callback events; an idle successful frame loop does not prove callback behavior,
Guest transport, Gateway binding or physical robot functionality. Positive
qualification must send real loopback Empty messages and independently inspect
native cube poses. No such Sim run has been accepted yet.

