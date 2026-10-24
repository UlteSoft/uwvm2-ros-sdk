# AssemblyScript native ROS 2 applications

This maintained package builds real `ts` application source into a core
WebAssembly WASI Preview 1 command. The qualified example profile is `the installed AssemblyScript compiler`,
`set_plat("wasm-wasip1")`, `set_arch("wasm32")`, compiler triple
`wasm32-wasip1`, no guest threads, and no C++ exceptions. A native ROS 2
gateway is separate deployment infrastructure. Guest code links no native ROS
library. A compiler result is separate from a genuine native transport result.

## Public API and ownership

Import `NativeApi`, `Capability`, `Publisher`, `Subscription`, `Client`,
`StringCodec` and `Status` from `"ros2/as/index"`. `new NativeApi()` fixes the actual
`uwvm_ros2_v1` import namespace. Constructing this adapter performs no native
operation. `new Capability(api)` creates an empty owner, and
`owner.open("sample")` acquires the explicit alias. Inspect its returned numeric
status before constructing dependent resources.

`new Publisher<string>(owner, new StringCodec())` validates/encodes complete
managed String values. `new Subscription<string>(owner, codec, handler, 256)`
activates the separately granted receive queue; `spinOnce()` polls and validates
one complete copied message before calling the guest-local handler. Its handler
is never a native callback pointer. `new Client(owner, 256).trigger()` sends the
zero-byte Trigger request exactly once, and `client.response(reply)` decodes
all response fields after a successful status. Inspect `valid`, `success`, and
`message` separately. Managed array references remain rooted during synchronous
imports; native ROS receives copied canonical bytes, not managed object addresses.

The selected backend also exports local Node/Session/Executor bookkeeping,
service/action resources, parameters, graph, TF, clocks and the supported
lifecycle facade. They retain the same explicit alias rules and do not create
native authority. These examples use the real incremental AssemblyScript runtime,
linked into the sole Wasm module. Node.js is a build tool only and is unnecessary
when deploying the already compiled .wasm command.

## Build one independent example

Every example directory contains its own commented `xmake.lua` and actual
`main.ts`. Its public declarations are:

```lua
set_language("as")
set_ros_platform("ros2")
set_plat("wasm-wasip1")
set_arch("wasm32")
add_files("main.ts")
```

Set `UWVM_ROS_SDK_ROOT` to an installed SDK root or let the example walk its parents.
No source/configuration manifest encodes an example-directory depth. Compiler
selection is explicit: `UWVM_ROS_CC`, `UWVM_ROS_CXX`, or `UWVM_ROS_ASC` names the
genuine installed compiler. `UWVM_ROS_PYTHON` may select the host build/deployment
orchestrator. The compiler runs offline; this package downloads no toolchain.
`xmake` builds the sole distributable under `build/` with a `.wasm` suffix. Build
receipts and runtime evidence belong under `.xmake/`, outside that distributable.

The root public DSL loads `tools/platform/ros/provider.lua` using
`configure(target)`, `build(target)`, and `run(target)`. The provider validates
`ros.sdk.language`, `ros.sdk.platform`, `ros.sdk.root`, and `ros.sdk.triple`.
Its present implemented routes are genuine C, C++, and AssemblyScript on
wasm32-wasip1. It refuses an unavailable language or wasm64 closure explicitly.
A compiler flag or wider scalar ABI does not establish memory64 support.

## The three examples

| Directory | Native operation | Full checked result |
| --- | --- | --- |
| `publish_string` | `std_msgs/msg/String` publication | Two explicitly scheduled samples, each `hello native ROS`; independent native subscriber observes complete text |
| `subscribe_string` | `std_msgs/msg/String` subscription | At most 500 finite polls, with 20 ms WASI waits only after idle 11; exact decoded text checked |
| `call_trigger` | `std_srvs/srv/Trigger` client | Exactly one empty request; complete Bool/String response must be `true`, `native ready` |

All examples explicitly open alias `sample`. The two publication samples
illustrate asynchronous middleware discovery. A failed first publication aborts;
there is no business-operation retry. The subscription has a finite ten-second
wait budget plus native/host call overhead. A successful empty String would be
valid generally, but this example requires its fixed nonempty tutorial sample.
The Trigger example retains its primary operation/validation failure before a
later cleanup failure. Successful stdout is a final textual receipt emitted
only after checked owner cleanup.

## Native deployment

Source the chosen native ROS installation. Supply a trusted JSON deployment in
`UWVM_ROS_RUN_CONFIG`, then run the already built example with `xmake run`.
The deployment format is `uwvm-native-ros-run-v2`. Declare matching
`backend` and `distribution`, actual `runtime` and `gateway` executable paths,
and native `connection` data. Each scenario supplies `arguments`, `main_module`,
ordered `preloads` and a `modules` map matching every loaded module name. Each
module explicitly supplies Boolean `ros_enabled`, `grants` and `wasi_grants`.
Each grant contains alias, operation, resource, type, identity and complete
limits. Empty grants deny all ROS operations; basic WASI standard streams remain
available by default. Every enabled ROS module receives an independent gateway
and Single binding. The launcher emits no global ROS grant and infers no
capability from a scenario, vendor or application argument. These tutorial
commands use empty application arguments. Obtain exact native type identities
from the selected original ROS installation and review paths, resources, QoS
and quotas before running another graph. `call_boundary` defaults to
`same-module`; a ROS library deliberately called through its exports requires
explicit `module-exports` and a runtime implementing the corresponding
`--ros1/2-single-call-boundary` option. That choice grants no extra operation.

The launcher stops a real runtime worker, binds the gateway policy to its exact
UID/PID, starts that production gateway, then resumes the same worker which
execs uwvm2. Every normal/abnormal run reaps its owned processes and preserves
runtime/gateway hashes, argv, artifact hash, exit status and native logs. It
contains no Wasm implementation or source-language substitute. A deployment
host needs the already compiled Wasm, uwvm2, the gateway and native ROS; it does
not need the guest compiler or guest source tree.

ROS 2 fixes domain-id, RMW implementation, node/namespace, all QoS fields, and security settings in trusted deployment. The acceptance graph uses a dedicated domain and disabled-test security only inside that test environment. Native type identity is captured from the selected installed generated type-description artifacts; it is not reconstructed from a guessed schema.

When the runtime binary and an older native ROS userspace require different
ELF libraries, the optional `runtime_loader` and `runtime_library_path` select a
complete matching native loader/library closure for the runtime process only.
The actual runtime binary remains explicitly named and hashed. The native
Gateway continues using its original ROS userspace. This is infrastructure
compatibility, not a different Wasm engine, ROS wire codec, or guest interpreter.

## Wire and failure contracts

Every ROS import uses i32 memory index and i64 offsets/lengths/handles, even when
the guest's C pointer is 32-bit. Handles and output length slots are eight-byte
little-endian values. Canonical String is `u32 little-endian UTF-8 byte count`
followed by that exact content; Trigger response is one canonical Bool byte
followed by canonical String. Padding, native object memory, DDS encapsulation
and TCPROS framing never become guest canonical bytes.

| Status | Meaning and application action |
| --- | --- |
| 0 | The selected operation succeeded; only its documented initialized outputs are valid |
| 2 | Missing resource/import namespace; inspect the selected installation |
| 9 | Bad, stale, retired, foreign or wrong-backend handle; do not forge/reuse it |
| 11 | Idle queue or quota refusal; only an explicitly documented idle poll may wait and repeat |
| 13 | Missing/incorrect grant; a build option cannot add runtime authority |
| 17 | Contract or reentrancy conflict; serialize the same owner |
| 22 | Invalid bytes, argument, range, type-specific value or example expectation |
| 90 | Insufficient capacity/quota; length is usable only when its sentinel was overwritten |
| 95 | Unimplemented operation/toolchain closure; no alternate backend is selected |
| 107 | Native/IPC disconnect; effects may already have happened |
| 110 | Finite deadline expired; an admitted external effect can persist |
| 125 | Revoked alias; copies cannot recover it |
| 5 | Example IO or complete native Trigger refusal after a successful RPC |

Never replay an uncertain service call, publication, cancellation or response.
The legacy event poll may consume an event before reporting capacity 90. Use
the separately documented versioned event observer API when a pinned receive
with explicit required-length behavior is needed. Cleanup retires ownership
before the native notification is observed; an error does not revive the owner.
ROS simulated time can be zero and is separate from WASI monotonic scheduling.

## Qualification and limits

Build evidence counts source/compiler success. Native evidence requires the
whole path: this actual `AssemblyScript` Wasm application → uwvm2 → production native
ROS 2 gateway → original ROS message/service transport → independent native
peer. `build_matrix.py` performs one compiler job at a time;
`native_matrix.py` requires the complete output and actual native side effects.
The fixture contains no Wasm engine and cannot implement guest imports.

Read `share/platform/ros/native_sdk/acceptance.json` for the current measured
results and source/tool/runtime hashes. Missing evidence is pending, never a
successful fallback. A ROS distribution, architecture, hosted C++ library,
custom message/action, memory64 profile, threaded/EH profile or physical robot
has not been qualified merely because these three examples passed.
