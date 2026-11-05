# Explicit Wasm library kinds

Set `UWVM_ROS_SDK_ROOT` to the installed SDK and run `xmake`, then `xmake test`.
The pinned WABT assembles actual WAT programs; LLVM links the static consumer.
One Xmake test target runs five finite Wasm library graphs in the table's order,
waiting for each VM session to retire before starting the next. Compilation alone does
not qualify runtime behavior, memory isolation, or ROS authority.

| Target | Public selection | Memory contract |
| --- | --- | --- |
| `wat-static-math` | `set_wasm_kind("static")` | Real relocatable archive, linked into its consumer's trust domain |
| `wat-static-consumer` | `set_wasm_kind("binary")` | Calls the statically linked function |
| `memory-channel` | Existing `set_kind("shared")` | Compatibility preload owning an exported communication memory |
| `offset-dynamic` | `set_wasm_kind("dynamic")` | Imports the communication memory; peers can observe pointer/offset writes |
| `private-copy` | `set_wasm_kind("independent")` | Imports channel at memory 0 and defines unexported private memory at index 1 |
| `wat-memory-consumer` | `set_wasm_kind("binary")` | Loads channel, dynamic and independent libraries: four configured instances |
| `wat-dynamic-two` | `set_wasm_kind("binary")` | Owns/exports the channel and loads one dynamic library |
| `wat-independent-two` | `set_wasm_kind("binary")` | Owns/exports the channel and loads one independent library |
| `wat-independent-three` | `set_wasm_kind("binary")` | Owns/exports the channel and loads identical independent bytes under two aliases |

`dynamic` and `independent` retain distinct `artifact_model` values despite
using Xmake's native `shared` output category. Existing `set_kind("shared")`
continues to mean an initialized Core preload with its own memory. Unsupported
language/model combinations fail configuration. C/C++ shared stack/allocator
and independent multi-memory lowering remain unimplemented; their static
pointer-library examples are separate producers.

For the public finite tests, set `UWVM_ROS_LIBRARY_TEST_CONFIG` to an explicit
JSON deployment with format `uwvm-sdk-four-kind-command-v1`. It contains the
absolute `runtime`, full `runtime_sha256`, recorded `runtime_source_identity`,
the public installer's `installation_manifest` and `producer_receipt` paths
with their full `installation_manifest_sha256` and `producer_receipt_sha256`,
explicit `runtime_arguments`, and all five entries in `cases`. The supervisor
checks that both installation records bind the actual runtime and source identity.
Each case pins
`main`, `main_sha256`, `main_module`, and an ordered `preloads` array whose rows
contain `path`, complete `sha256`, and `module`. Use actual artifact paths and
hashes from Xmake's build records. The required graph is:

| Case | Main module alias | Ordered preload aliases |
| --- | --- | --- |
| `static` | `main` | none |
| `shared-channel` | `main` | `memory-channel`, `offset-dynamic`, `private-copy` |
| `dynamic-two` | `memory-channel` | `offset-dynamic` |
| `independent-two` | `memory-channel` | `private-copy` |
| `independent-three` | `memory-channel` | `left`, `right`, both with identical `private-copy` SHA |

Select native AOT, `-WFE-multi-memory`, in runtime
arguments. The supervisor constructs only the explicitly pinned graph using
`--wasm-preload-library`; it adds no ROS grants. Run under the independently
qualified Linux cgroup, canonical lease and guardian lifecycle. Each real guest
waits at a WASI startup barrier so the supervisor can record its actual VM
PID/birth, executable SHA and resource limits before releasing its assertions.
Missing deployment, missing guest markers, source drift, failed checked unwind,
interpreter body fallback or incomplete process retirement fails the test.

The independent library exports only bounded snapshot/copy operations. Business
values and lengths are copied back through communication memory; function
returns report transport status. Its checksum helper and private memory are
unexported. Guest assertions cover copy in/out, mutation at equal numeric
offsets, overflow and bounds refusal, zero-length boundaries, growth, and
separate retained state for two peers with identical module bytes.

These new routes are source candidates until their own public build and runtime
records pass. They require serial execution and unshared memories. Full backing
identity receipts, real per-caller ROS grants, revocation, callbacks, hot updates,
concurrent malicious-peer snapshots, official ROS Stage A and full simulator
Stage B remain separate required qualifications.

The deployment selects an explicit nonempty cpu_affinity list; the supervisor
applies it and verifies the real VM process, together with the 64 GiB/zero-swap
cgroup. The startup fd_read uses a blocking pipe until that observation completes.

Relocatable WAT object linking currently requires code to initialize its literal
memory bytes explicitly. WABT's object output does not provide the LLVM data
relocations required to preserve ordinary active or passive data segments.
The SDK rejects such relocatable inputs before publishing an artifact; complete
standalone WAT modules retain normal data-segment support. The static consumer
in this example initializes its protocol strings with guest memory stores.
All five graphs check the current LLVM-only compilation and per-module native
materialization records; no host interpreter supplies their results.
