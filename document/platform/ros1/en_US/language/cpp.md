# C++ native ROS 1 applications

This maintained package builds real `cpp` application source into a core
WebAssembly WASI Preview 1 command. The qualified example profile is `C++20`,
`set_plat("wasm-wasip1")`, `set_arch("wasm32")`, compiler triple
`wasm32-wasip1`, no guest threads, and no C++ exceptions. A native ROS 1
gateway is separate deployment infrastructure. Guest code links no native ROS
library. A compiler result is separate from a genuine native transport result.

## Public API and ownership

Use `<ros1/cpp/roswasm.hpp>` for `uwvm_ros1::freestanding_capability`.
This allocation-free owner is deliberately separate from the host's native
`roscpp` / `rclcpp` object ABI. Construction opens nothing. `open("sample", 6)`
acquires the host-granted alias, `publish(bytes, count)` sends canonical bytes,
`subscribe()` activates its receive queue, and `poll(storage, capacity, length)`
performs one bounded copy. `service_call(input, count, output, capacity, length)`
performs one synchronous request with a finite host deadline. A zero-byte
Trigger request uses a null pointer plus count zero.

The owner is unique: copying is disabled. In modern source profiles, moving
transfers ownership and empties the source. Close explicitly to inspect the
cleanup status. `close()` clears the owner before the native cleanup response,
including when the host returns a transport error. Destruction closes a still
live owner once, discards that status, and never retries. The command examples
close explicitly before calling the non-unwinding WASI `proc_exit` import.

The shared checked C codecs validate canonical String and Trigger values without
requiring a guest C++ standard library. The complete typed C++ library remains
available through `<ros/cpp/roswasm/roswasmcpp.hpp>` with the explicit selected
backend header; its owning containers and callbacks require the matching guest
C++ standard-library profile. The freestanding compiler route documented here
is the one qualified by these examples; it does not prove that larger hosted
library closure or another C++ standard has passed native execution.

## Build one independent example

Every example directory contains its own commented `xmake.lua` and actual
`main.cpp`. Its public declarations are:

```lua
set_language("cpp")
set_ros_platform("ros1")
set_plat("wasm-wasip1")
set_arch("wasm32")
add_files("main.cpp")
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
| `publish_string` | `std_msgs/String` publication | Two explicitly scheduled samples, each `hello native ROS`; independent native subscriber observes complete text |
| `subscribe_string` | `std_msgs/String` subscription | At most 500 finite polls, with 20 ms WASI waits only after idle 11; exact decoded text checked |
| `call_trigger` | `std_srvs/Trigger` client | Exactly one empty request; complete Bool/String response must be `true`, `native ready` |

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

ROS 1 selects a numeric ROS_MASTER_URI, explicit advertise-host and TCPROS. Build the maintained native gateway from sdk/src/platform/ros1/native_gateway with its matching original catkin SDK. Its C++17 native feature/link probes are source admission, while a real native execution is a separate requirement. ROS 1 service calls own a nonblocking TCPROS socket and finite deadline rather than an unbounded synchronous ServiceClient call.

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
whole path: this actual `C++` Wasm application → uwvm2 → production native
ROS 1 gateway → original ROS message/service transport → independent native
peer. `build_matrix.py` performs one compiler job at a time;
`native_matrix.py` requires the complete output and actual native side effects.
The fixture contains no Wasm engine and cannot implement guest imports.

Read `share/platform/ros/native_sdk/acceptance.json` for the current measured
results and source/tool/runtime hashes. Missing evidence is pending, never a
successful fallback. A ROS distribution, architecture, hosted C++ library,
custom message/action, memory64 profile, threaded/EH profile or physical robot
has not been qualified merely because these three examples passed.
