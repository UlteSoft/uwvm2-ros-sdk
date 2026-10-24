# Unitree C/C++ memory64 profile

This qualified profile compiles the existing complete Unitree observation
examples from genuine C17 or C++23 source to one `wasm64-wasip1` command. It uses
LLVM 23.1.4, the SDK's LLVM23-produced **noeh** sysroot, and Uwvm's explicit
Preview 1 memory64 extension. The suffixed WASI functions, such as
`args_get_wasm64` and `fd_write_wasm64`, are imported from
`wasi_snapshot_preview1`. This extension is not an upstream WASI memory64
standard.

From an installed C or C++ Unitree example directory, select the profile and
build the real source:

```sh
export UWVM_ROS_SDK_ROOT=/absolute/path/to/sdk
xmake f -c -y -p wasm-wasip1 -a wasm64 --ros-target=wasm64-wasip1 --ros-exceptions=noeh
xmake
```

The target's `build/` directory contains its sole application `.wasm`. Deployment
JSON, runtime logs and native ROS infrastructure remain external. Source the
selected original ROS environment, provide the same trusted exact-type
observation deployment described in [the Unitree guide](README.md), then run:

```sh
export UWVM_UNITREE_RUN_CONFIG=/absolute/path/to/deployment.json
xmake run
```

The launcher checks the actual module's memory width before starting a worker
or gateway. For this explicit wide target it enables both Uwvm `memory64` and
`table64` features. `xmake run` preserves the existing artifact; after changing
architecture, build that architecture before running. A stale artifact of the
other width is rejected. To select the existing default profile explicitly:

```sh
xmake f -c -y -p wasm-wasip1 -a wasm32 --ros-target=wasm32-wasip1 --ros-exceptions=noeh
xmake
```

Only C and C++, WASI P1, an unshared defined application memory, and the noeh
profile are qualified here. Other Unitree languages, P2, threads, conflicting
triples and the memory64 EH profile are refused explicitly. The producer host
qualified in this cohort is Linux x86_64 with Xmake alone and the pinned SDK
compiler bundle. Qualified runtime paths are native Linux x86_64 and genuine
AArch64 runtime, gateway and original ROS peers under QEMU user emulation on an
x86_64 Linux kernel. This evidence does not establish a native AArch64 compiler
host or physical ARM hardware qualification.

The twelve newly compiled commands cover C and C++, original ROS1 Noetic and
ROS2 Jazzy, and every field of six native communication types: HighState,
ROS1 LowState, MotorState, SportModeState, ROS2 LowState and WirelessController.
Each command completed two ordinary `xmake run` executions on each runtime
architecture: **48 complete-record communication runs**. Four separate genuine
C/C++ ABI modules completed **16 further runs**; each required eight-byte
pointers and `size_t`, refused nine high-bit offset/count/output-address cases
with original errno 22 and unchanged output slots, then delivered a complete
LowState message and closed its sole owner. Two additional ARM runs retained
live machine183 runtime/gateway ELF mappings. These counts are separate from
the prior 132-example wasm32 qualification and from this cohort's sixteen
wasm32 regression runs. The new memory-width preflight also reopened all 132
exact original modules across 22 languages and accepted their actual memory32
types, without recompiling or executing those original guests.

The original twelve application builds reused a fully verified, read-only SDK
compiler cache. Two separate additional builds, **C ROS1 LowState and C++ ROS2
LowState**, each started in an Xmake-only container with a genuinely empty,
independent exec-enabled tmpfs tool cache. Xmake installed the pinned SDK bundle,
the complete 348-file tool closure was verified, and both wasm64 outputs were
byte-identical to the corresponding qualified modules. These **two cold-tool
builds** establish first-installation behavior and add no guest-run count.

The tested modules declare 64-bit memory/table addresses while retaining a
64 MiB memory limit. High-bit refusal checks establish preservation and bounds
validation of unsigned i64 arguments; they do not demonstrate successful
allocation or access above 4 GiB. Timing receipts include process startup,
native discovery, polling and QEMU overhead and are not hardware benchmarks.
This cohort qualifies the existing read-only observation path; it adds no
robot command, service authority or physical robot test. Exact module, source,
LLVM input and native execution identities accompany the qualification record.

Exact supplemental evidence is recorded in [memory64-qualification.json](../../../../share/platform/unitree/memory64-qualification.json).
