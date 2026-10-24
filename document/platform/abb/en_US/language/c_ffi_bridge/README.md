# ABB SDK development with the C FFI bridge

## C FFI bridge and native-language build adapters

`c_ffi_bridge` means **C Foreign Function Interface bridge**. It forwards calls
from languages using C FFI to uwvm2's Wasm imports. The separate
`native_languages` name identifies the shared build adapters for native-compiled
languages. These infrastructure components have distinct scopes:

| Infrastructure | Languages selected in the maintained source | Responsibility |
| --- | --- | --- |
| Shared build adapter | Rust, Zig, Go, TinyGo, Swift, Haskell, Nim, D, Odin | Describe each compiler, target, runtime, and build arguments. Registration does not establish an implemented or tested ABB port. |
| Numeric C FFI bridge | Swift, Haskell, Nim, D, Odin | Call `roswasm_c_ffi_invoke()` through C FFI, then dispatch to the original Wasm import. Rust, Zig, Go, and TinyGo use their own direct import bindings. |

These scopes are declared by the [build profile](../../../../../../tools/native_languages/profile.py)
and [bridge generator](../../../../../../tools/native_languages/numeric.py).
See also the [shared maintenance documentation](../../../../../../share/platform/ros/native_languages/README.md).

## Call chain and artifact

Consumer language source → C FFI → `roswasm_c_ffi_invoke(operation_index, arguments…)`
→ `shim.c`, linked into the same Wasm module → `uwvm_ros1_v1` or `uwvm_ros2_v1`
imports → the uwvm2 ROS host interface.

The C shim selects the original imported function by a private numeric index
while preserving handle, offset, length, and result ABI types. It does not
translate another language's application into C or replace that language's
compiler, runtime, or ABB record implementation. `ROSWASM_C_FFI_BACKEND=1` selects
ROS1 imports; `=2` selects ROS2 imports. The output remains Wasm. The bridge produces neither a native ROS node nor a host ELF executable.

## What these three ABB examples establish

The `read_speed`, `read_io`, and `system_state` programs in this directory are
**C source applications**. They use the ABB C records and codecs and select
`abb_c_ffi_backend()` to exercise the actual
[shim.c](../../../../../../src/platform/ros/c_ffi_bridge/shim.c).
For example, reading speed uses private index 36 to call the ROS2 `service_call`
import. That index must remain paired with the exact shim source; it is not a
stable public service identifier.

Successful builds or executions add evidence for the C bridge path only. These
examples contribute **zero additional programming languages**. Each Swift,
Haskell, Nim, D, or Odin ABB port still requires its own language source, SDK,
three examples, bilingual manuals, and actual compiler/runtime acceptance.

The public entry is [observation.h](../../../../../../include/platform/abb/c_ffi_bridge/observation.h). Its observation functions are `abb_c_ffi_backend + abb_read_speed / abb_read_io / abb_wait_system_state`. The three independent applications are [read_speed](../../../../../../example/platform/abb/c_ffi_bridge/read_speed), [read_io](../../../../../../example/platform/abb/c_ffi_bridge/read_io), and [system_state](../../../../../../example/platform/abb/c_ffi_bridge/system_state). Each directory contains its own source and documented `xmake.lua`.

## Build and artifact contract

Install Xmake and the SDK distribution containing its pinned shared compiler or interpreter closure, then run from the selected example directory. C-family programs use LLVM 23; other languages use their declared genuine shared frontend:

```sh
cd sdk/example/platform/abb/c_ffi_bridge/read_speed
xmake
```

The concrete product is `build/abb-c_ffi_bridge-read_speed.wasm`. The other directories emit `build/abb-c_ffi_bridge-read_io.wasm` and `build/abb-c_ffi_bridge-system_state.wasm`. The shared adapter restores its declared compiler closure during build. A missing qualified language route reports its missing dependency; it never substitutes another source language.

Compiling uses the installed SDK paths. No origin tree, repository test, native ABB checkout, or online package resolution is a build dependency. The product is a wasm32-wasip1 command importing `uwvm_ros2_v1`. It requires a ROS-enabled uwvm2 host, an independently configured native gateway/type registry, and the exact per-instance alias grants. It is not a native ELF executable.

## Language ownership and representation

c_ffi_bridge is the shared C Foreign Function Interface bridge, not an independent source language. These C applications link the real sdk/src/platform/ros/c_ffi_bridge/shim.c with ROSWASM_C_FFI_BACKEND=2. The immutable ABB dispatch selects only ABI version, open, close, topic subscribe, event poll, and service call; unsupported operations remain NULL. Private bridge indices 0, 9, 8, 46, 11, and 36 must match that maintained shim. They are neither public operation IDs nor authority tokens. All offsets and opaque handles retain their full i64 width. The complete C ABB codecs and observation ownership rules remain in force.

The complete ROS1 and ROS2 C/C++ family directories remain necessary for their respective generated records, codecs, services, and Actions. They preserve separate original schemas and native identity domains. Including a type neither creates a ROS entity nor grants an operation. Do not combine incompatible same-name families in one translation unit.

## Example walkthroughs

| Application | Arguments after the program name | Native interface | Flow and complete output |
| --- | --- | --- | --- |
| `read_speed` | `ALIAS` | `abb_robot_msgs/srv/GetSpeedRatio` | Empty original request; preserve speed_ratio, result_code, and message. RC_SUCCESS is 1; speed_ratio uses integer percent in [0,100]. No override is written. |
| `read_io` | `ALIAS SIGNAL` | `abb_robot_msgs/srv/GetIOSignal` | Validate a nonempty strict UTF-8 name of at most 512 bytes before acquisition; preserve the complete value, result_code, and message. No IO signal is written. |
| `system_state` | `ALIAS` | `abb_robot_msgs/msg/SystemState` | Open once, subscribe, and retain the same owner for at most 250 polls; wait 20 ms after each idle result, decode the first complete sample, then close. Preserve Header, motors_on, auto_mode, rapid_running, every RAPID task, and every mechanical unit. Idle 11 remains an error with no synthetic default state. |

Choose an alias already configured for that exact service or topic. For example, a speed service grant may use `abb-speed`, an IO service grant `abb-io`, and a state subscription grant `abb-state`. These are illustrative names; the SDK does not provision them. An IO name such as `di_ready` must exist in the selected controller configuration. Command arguments are ordinary WASI argv, including in AssemblyScript.

## Status and output handling

Each command writes one JSON line. `primary` is the first operation or application failure. `cleanup` remains independent; `cleanup_present` distinguishes a close attempt from no acquired owner. `rpc_present`, `rpc_status`, `required_present`, and `required` retain the actual transport and length observations. `response_present` permits use of the whole `wire_hex` canonical body. This is the SDK's bounded little-endian format, not ROS CDR or a native C struct dump.

Controller refusal maps to application status 5 while retaining the entire valid response. Transport denial 13, idle 11, invalid input/encoding 22, capacity 90, unsupported 95, disconnect 107, and timeout 110 retain their original numeric meaning. An unwritten capacity-error length slot stays unknown. No timeout or capacity error triggers a retry. The process exit preserves primary before cleanup, then encoding/stdout failure, and clamps codes above 125.

## ROS integration and verification

Start the independently configured ABB ROS driver, native type registry, and gateway before admitting this command. Match the exact ROS2 type, canonical codec identity, resource, operation, complete QoS, quotas, and deadline. The [platform guide](../../README.md) links the selected upstream driver boundaries and current validation record. Read the public API's English Doxygen comments for storage and synchronous execution rules.

Linux acceptance belongs in `~/Documents/uwvm2-ros-test` under the configured 64 GiB, swap-disabled cgroup. Header syntax checks, real Wasm execution with a deterministic ABI fixture, real native ROS transport through a Wasmtime test adapter, production uwvm2 gateway tests, and physical-controller tests are separate evidence categories. Only the categories actually recorded in the current report count as completed. These read-only observations do not implement RWS credentials, EGM control, RAPID orchestration, or the full upstream driver tutorial suite.
## Xmake configuration and execution

Each example locates the installed SDK through UWVM_ROS_SDK_ROOT or parent-directory discovery; application sources use public module identities. `set_language` selects the real source language and `set_ros_platform` selects the ABB adapter. Platform and architecture are separate: `wasm-wasip1` plus `wasm32` resolves to compiler triple `wasm32-wasip1`. Do not place that complete triple in `set_arch`. Linux or aarch64 identifies the execution host rather than the guest. An unqualified language/target combination must fail explicitly instead of silently selecting another ABI.

```lua
-- Include the SDK entry using the SDK root discovered by the example.
includes(path.join(sdk_root, "tools/xmake/ros.lua"))
-- Keep deployment independent from the source compiler installation.
set_policy("run.autobuild", false)
target("abb-c_ffi_bridge-read_speed")
    set_language("c_ffi_bridge")
    set_ros_platform("abb")
    set_ros2_version("jazzy")
    set_abb_version("complete")
    set_ros_scenario("read_speed")
    set_plat("wasm-wasip1")
    set_arch("wasm32")
    add_files("main.c")
target_end()
```

Compilation does not require ROS, a gateway, or uwvm2-ros to be installed or running. `xmake run` reads the explicit deployment and launches the actual uwvm2-ros host and native gateway. The `uwvm-native-ros-run-v2` deployment supplies `runtime`, `gateway`, `backend`, `distribution`, and native `connection` fields. Each scenario declares `arguments`, `main_module`, `preloads`, and an exact `modules` policy map. Every module explicitly selects `ros_enabled`, `grants`, and `wasi_grants`; capabilities retain alias, operation, resource, original native type identity, and limits. IO arguments contain the alias and actual signal name; the other observations take the alias. See the [common native deployment guide](../../../../../native-run.en_US.md) and the C/C++ `read_speed/deployment.template.json` examples. Replace native identity placeholders using the matching compiled registry. Configuration does not grant authority implicitly.

```sh
xmake f -c -p wasm-wasip1 -a wasm32 --ros-run-config=/absolute/abb-deployment.json
xmake
xmake run
```

For separate development and deployment hosts, build first, then carry the completed `.wasm` to a host with uwvm2-ros, native ROS/gateway infrastructure, and Python 3 for the process launcher. The root project's `run.autobuild=false` prevents source rebuilding during execution. Logs and execution receipts live in `.uwvm-ros/native-ros/run`; `build` contains only `.wasm` output. Deployment inputs, compiler intermediates, and receipts are separate from the guest distributable.

