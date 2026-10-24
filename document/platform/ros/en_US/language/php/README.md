# ros: php API and examples

The source route is **PHP 8.4.13**. This guide describes candidate source and its explicit contracts. Source presence, historical receipts and metadata declarations do not establish a current successful build or native ROS execution.

## Installation and real compilation

Install Xmake 2.9.8 or later and the matching complete SDK distribution. Set the primary `UWVM_ROS_SDK_ROOT` only when the examples cannot discover their installed ancestor. Public C-family include roots are `include` and `include/platform`; language adapters receive equivalent global module roots. Application compilation requires no native ROS installation or uwvm2-ros. The common adapter restores only checksum-verified SDK host closures; no unpinned system compiler or per-vendor VM is selected. Build caches are shared outside the sole application output directory.

A standalone project owns this declarative interface:

```lua
includes(path.join(os.getenv("UWVM_ROS_SDK_ROOT"), "tools/xmake/ros.lua"))
set_policy("run.autobuild", false)
target("application")
    set_language("php")
    set_ros_platform("ros")
    set_ros2_version("jazzy")
    set_arch("wasm32")
    set_plat("wasm-wasip1")
    set_wasm_exceptions("noeh")
    add_files("ACTUAL_LANGUAGE_ENTRY")
target_end()
```

Use the actual entry filename from an example. `xmake` produces one `build/*.wasm`; source, data, bytecode and the genuine engine must be embedded when the language requires them. Compiler products, source packs and receipts belong in `.uwvm-ros` or the verified host cache. A companion source file, native executable or data sidecar is not a deployment output.

## Selection and schemas

`set_wasm_entry("command")` is the default startup profile. Ordinary C/C++ `main` applications link the selected real standard-library and command-startup closure. A C-family application supplying its own complete `_start` declares `set_wasm_entry("freestanding")`; the native examples declare this explicitly. The common compiler owns this choice for all providers. A different genuine language engine must advertise an explicitly requested nondefault startup mode before compiling it; no startup request is silently discarded.

`set_language` selects the real frontend or explicit `c_ffi_bridge` route. `set_ros_platform` selects an installed provider; `ros` requires an explicit `set_ros1_version` or `set_ros2_version`. `ros1` must match `set_ros1_version("noetic")`. ROS2 distribution declarations currently admit `humble` and `jazzy`; a declaration does not prove a native installation or qualification. `wasi` has no ROS distribution. `set_ros_scenario` names the exact provider-owned scenario. `set_ros_config` supplies only schema-declared version, model, transport, ABI and feature choices; unknown fields/values fail. ROS's own provider has no vendor options.

`set_arch("wasm32")` plus `set_plat("wasm-wasip1")` selects `wasm32-wasip1`; explicit `wasm64` selects `wasm64-wasip1`. Memory64 uses Uwvm's Preview 1 extension and its suffixed WASI import names. It is not an upstream WASI standard. Requested Preview 2, threads, EH and Core features are separately validated; there is no silent target narrowing. `set_wasm_exceptions("eh")` requires matching real target libraries and parser features supplied manually at execution. A language adapter must reject unimplemented widths/profiles before invoking a substitute producer.

## Public API and ownership

Representative public import:

```text
require_once 'ros/php/RosWasm/NativeCommand.php';
```

The complete preserved interface families include capability sessions, nodes, publishers/subscriptions, synchronous and observed asynchronous services, action goal/feedback/result ownership, explicit cancellation roles, caller-driven executors, parameter values/events, graph, clocks, transforms, lifecycle, logging and bounded canonical codecs where the selected original backend exposes them. A native type name never grants an operation. `share/platform/ros/abi-v1.json` retains exact numeric imports; C FFI operation indices come from `share/platform/ros/c_ffi_bridge/numeric-inventory.json`, not from runtime import IDs.

Offsets and counts in the ROS ABI remain u64 on both pointer widths. Handles are instance/backend-local opaque values, not pointers or transferable rights. Caller buffers remain live and stable across a synchronous import; decoded views borrow their backing storage unless the language facade explicitly copies into owned values. Serialize access to the same mutable owner. Closing retires local ownership before its one native attempt; cleanup failure does not authorize a second close or operation retry.

String encodes u32 UTF-8 byte length followed by the entire text, without a terminator. The standalone native examples admit at most 252 UTF-8 data bytes; Trigger's Bool plus counted diagnostic admits 251 message bytes in a 256-byte frame. These are explicit example admission quotas, not edits to unbounded upstream ROS schemas. Reject malformed scalar UTF-8, embedded NUL, invalid Bool, trailing bytes and impossible lengths. Preserve an admitted empty string and a literal leading BOM. Original field order, units, signed bits, fixed-array defaults and per-instance mutable array isolation must survive every generator/emitter.


API source index:

- `include/platform/ros/php/RosWasm/NativeCommand.php`
- `include/platform/ros/php/RosWasm/Transport.php`
- `include/platform/ros/php/RosWasm/Wire.php`
- `include/platform/ros/php/RosWasm/Word.php`

## Standalone flows

`publish_string` publishes two complete `std_msgs/String` samples, one discovery second apart. A failed publication is never replayed. `subscribe_string` activates one retained subscription and only repeats idle status 11 within a finite poll budget. `call_trigger` issues the complete empty `std_srvs/Trigger` request once, preserves the native Bool and whole diagnostic, and reports a false response as an application refusal. Every normally acquired owner receives one explicit close attempt. Transport status, original length-slot observation, decoded-value presence and cleanup remain independent.

- `call_trigger`: `example/platform/ros/php/call_trigger`.
- `publish_string`: `example/platform/ros/php/publish_string`.
- `ros1_call_trigger`: `example/platform/ros/php/ros1/call_trigger`.
- `ros1_publish_string`: `example/platform/ros/php/ros1/publish_string`.
- `ros1_subscribe_string`: `example/platform/ros/php/ros1/subscribe_string`.
- `subscribe_string`: `example/platform/ros/php/subscribe_string`.

Run `xmake` inside the selected directory. Memory64 variants have separate explicit declarations and retain their original operation scenario. Each directory is independently relocatable within the SDK and uses public imports without parent traversal.

## Errors, permissions and deployment

`0` success; `2` missing; `9` stale/foreign/closed owner; `11` idle or quota; `13` denied; `17` conflict; `22` malformed value; `90` capacity/quota; `95` unavailable operation; `107` disconnected; `110` timeout with possibly admitted effects; `125` revoked.

Observe an eight-byte output length only after its sentinel was overwritten; errno 90 alone does not establish a required size. A timeout or disconnect can follow a real external effect. Do not replay service calls, publications or consumed legacy events. A trap, process termination or unrecoverable runtime allocation failure can prevent ordinary language cleanup.

`xmake run` uses a separately installed `uwvm2-ros` and an explicit trusted deployment selected through `set_ros_run_config`, `--ros-run-config` or `UWVM_ROS_RUN_CONFIG`. Generic `uwvm-ros-command-run-v1` passes the supplied runtime argument array unchanged and appends only the exact application `--run` path and explicit application arguments. It adds no feature or permission flags.

The native gateway deployment `uwvm-native-ros-run-v2` requires matching `backend`/`distribution`, explicit runtime/gateway paths and native connection data. Each scenario declares exact `arguments`, `main_module`, ordered `preloads`, and a `modules` policy for every loaded identity. Each module explicitly selects Boolean `ros_enabled`, a `grants` array and `wasi_grants`; an empty ROS grant array denies every ROS operation. Each grant retains its exact alias, operation, resource, type, identity and complete limits. Capabilities are never inferred from vendor names, scenario names or application arguments. The same public runner supports custom provider scenarios and arguments, including empty strings. Every enabled ROS module receives an independent gateway and Single binding; no global ROS grant is generated. Default `call_boundary` is `same-module`. A deliberately exported ROS library interface requires explicit `module-exports` and a matching runtime that implements `--ros1/2-single-call-boundary`; that opt-in adds no capability. Default WASI still has basic standard-stream rights. Source the selected native ROS distribution and retain controlled peer observations, complete payloads and independent cleanup evidence.

## Verification and remaining work

Release acceptance must bind the final Wasm SHA-256 to cold Xmake-only build evidence, sole-output checks, actual 64 GiB/zero-swap cgroup files, native ROS1/ROS2 observations, malformed-wire and explicit-denial cases, once-only cleanup, x86_64 runtime identity and a real AArch64 runtime under QEMU. An architecture inspection or cross compilation does not prove ARM runtime execution. Consult the release's private handoff/coverage evidence for those separate states. Full type/service/action regression is required in addition to these three operation examples. No partial language or backend is called complete by this guide.
