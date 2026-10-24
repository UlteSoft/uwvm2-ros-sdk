# NVIDIA public API contracts and publication scope

The public C borrowed-value contract, native C++ Buffer adapter and selected
native Python modules contain API-specific English comments or
docstrings. Required fields include `@brief`, `@details` and `@see`; applicable
parameters/directions, units/ranges, ownership/lifetime, results/failures,
permissions, thread rules and version constraints are described at each API.
The exact source inventory is recorded in Task09's current source manifest.

## Borrowed C and genuine native Buffer values

`isaac_ros/include/cpu_sensor_contract.h` is a C99+/C++98+ local view contract.
It is neither a native ROS layout cast nor a wire ABI. The caller proves and
retains every referenced memory extent before validation. Timestamps retain
signed seconds and normalized nanoseconds. Strings retain counted UTF-8 bytes;
image/cloud data retains every row/point padding byte and original endian flags.
The five admitted AprilTag encodings and explicit eight/eleven-type PointField
profiles are documented; invalid/oversized/unsupported data returns22/90/95.
The functions allocate nothing, grant no authority and require immutable inputs
for concurrent reads. The complete padded-image example is the useful CPU
application; it does not claim native image/GPU transport or detector parity.

`isaac_ros/native_cpu/cpu_snapshot.hpp` uses the actual modern generated
Image/PointCloud2 and pinned `rosidl::Buffer`, not substitutes. C++20 and genuine
rosidl_buffer5.3.1 are required. It validates metadata/quotas before conversion,
preserves all fields, copies complete payloads and revalidates independent CPU
storage. CUDA is separately opted in; the pinned backend's actual ReadHandle,
D2H and synchronization semantics apply. Original messages/producers/streams
outlive conversion. Equality now requires CPU operands and cannot implicitly
trigger a CUDA conversion. Errors preserve status; backend/allocation faults
propagate. An outer finite owner remains necessary for blocked native/GPU work.
Genuine native ROS/CUDA compilation and exchange remain unqualified.

## Complete GR00T domains and service documentation metadata

The following contracts document the authored `uwvm_groot_bridge` package and
provide vendor-specific content for shared language/doc generators. They are not
new NVIDIA protocol/type identities. Original IDL declarations and upstream
snapshots were not cosmetically rewritten; generator owners must emit comments
without silently changing ABI, wire order, type identity or frozen source pins.

| Public type/service | Fields and complete behavior | Lifetime, failure and permission rules |
| --- | --- | --- |
| `RGBFrame` | Exact model key; rank-5 B/T/H/W/RGB shape; complete row-major uint8 pixels. Inline tensors have at most768 bytes and require B=1, actual T and RGB=3. | Generated records own their decoded values. This small inline lane is not normal model camera input. Oversized/invalid whole values fail90/22, without truncation or GPU-pointer exposure. |
| `RGBDescriptor` | Exact UTF-8 model key and complete positive rank-5 shape for an uploaded camera tensor. | Native owner reserves every camera before publication; total staged bytes default8MiB, hard16MiB. Key/horizon set comes from actual policy configuration. No model/path/actuator authority is encoded. |
| `FloatTensor` | Exact model key, positive rank-3 B/T/D shape and all finite float32 elements; at most320 elements per selected tensor. | State max4 keys, actions max8, each key max64 UTF-8 bytes. Units are checkpoint-defined; values are never interpreted as robot commands. Overflow/nonfinite/missing/extra data fails rather than producing narrowed success. |
| `TextSequence` | Exact language key, rank-2 B/T shape and complete strings; selected actual lane uses B=T=1. | Text max256 UTF-8 bytes, strict Unicode/no NUL, at most2 selected keys. Strings select neither executable code nor model paths. |
| `BeginObservation` | Positive exact uint64 observation nonce and all selected RGBDescriptor records; response retains status/nonce. | Nonce is local to one peer-bound service owner, not authentication. One active observation; IDs never reused. Lease <=60s and owner deadline both apply. History1..64, operation budget1..65536, no allocation-failure replay. |
| `WriteRGBChunk` | Observation nonce, exact camera key, uint32 next byte offset and every uint8 pixel in a nonempty <=768-byte chunk; complete status/nonce/accepted_bytes response. | Only next contiguous offset accepted. No overlap/retransmission or lease renewal. A delivery-uncertain call must not be blindly replayed. Unknown/retired IDs125; bad values22; quota90; expiry110. |
| `ReleaseObservation` | Exact active observation nonce and complete status/nonce response. | Releases staging references while permanently retaining nonce history. Does not cancel an inference, erase memory securely or grant a native resource. |
| `InferAction` | Exact positive uint64 application nonce plus all inline video/state/language; complete status/nonce/action/info_is_empty response. | All inputs copied privately before one actual get_action call. Full actual model keys/horizons required. No reset/kill/options/model-path/device management exposed. It is not a full official PolicyServer port. |
| `InferUploadedAction` | Separate application nonce and active observation nonce, all state/language; full action/info response. | Consumes every complete camera into independent NumPy storage before inference. No restoration/replay after conversion/inference uncertainty. Exactly-once local attempt history is not a distributed execution guarantee. |

All service callbacks belong to one private SingleThreadedExecutor. The owner
admits actual ROS/type binding, peer-bound loopback aliases, source/model/device
rights, deadlines, model license and environment separately. Application nonces
are not native writer GUID/sequence or Gateway tickets. Busy17, quota90,
invalid22, unsupported95, expired110 and retired125 remain distinct. The fixed
policy's info domain is empty; nonempty info is unsupported95, not discarded.
An exception/timeout after inference starts preserves effect uncertainty and
retires the owner. Local timeout is not preemptive model/GPU cancellation.

## Sim and Jetson

The complete clock-program platform SDKs now have authored Rust, TinyGo,
AssemblyScript, JavaScript, Java and Kotlin operations and whole applications. Each
application owns its two twenty-frame phases. The native bridge shares the
original graph, actual full Clock callbacks, update counts and pacing with the
original native entry. `isaac_sim/CLOCK-SDK.md` defines every complete operation,
field, unit/domain, typed status, ownership/cleanup and absence rule.

SDK comments describe one pending request,64 lifetime transaction/history slots,
exact ticket/nonce/sequence/full-body correlation after the shared decode/ACK,
complete actual same-take metadata, terminal native-effect uncertainty and
independent owner cleanup. Diagnostic bodies may have failed business checks;
controls and failed ACKs never establish accepted completion. CANCEL needs its
real correlated successful response, while local abandon/close establishes no
native cancellation or physical-stop result. QoS expectations and IDs grant no
rights. Java retains its genuine shared preallocated failure envelope; JS follows
the actual shared retention/close facts and preserves falsy exceptions separately.
Java long/JS BigInt retain every uint64 bit. The actual generated Java codec body
is unchanged beyond one package relocation; all six original constants and root
facts are exported from the real shared IR. No alternate wire model is introduced.

Sim sensor planning documents full exact configuration fields/node/port
selection and distinguishes plans from actual observations. NativeObserver uses
genuine complete CDR and retains complete type fields/bytes/hashes, fair finite
topic quotas and independent cleanup. Its best-effort volatile reader is not a
substitute for Gateway's exact selected QoS/identity proof. CubeSubscriber
documents the actual Empty callback, full XYZ pose, simulation-thread mutation,
playback reset, finite event history and private native resource lifetime.

Jetson's public readers preserve full model/release bytes and exact ELF/member
hashes, interpreter path, program-table/segment extents and metadata. Native read
permission is explicit. They never execute/install a payload or infer board,
BSP, GPU, model, QEMU or loader-closure compatibility from labels or ELF headers.

## Remaining documentation and formatting acceptance

Generated C/C++/Rust/JS/AS/TinyGo and further requested language APIs need their
shared generators to emit the above vendor-specific contracts plus the real
language ownership/async/error rules. Handwritten documentation is not proof of
those generated APIs. Task01/02/03/04/10 own their respective foundations,
templates, pinned formatter manifest, global format/check entry and publication.
Task09 has not edited their generators or formatted their source trees.

Genuine clang-format21.1.8, Ruff0.14.14 and gofmt1.24.2 have scoped Linux receipts.
Immutable upstream/source definitions/licenses/provider headers, raw captures,
binaries and previous evidence were excluded. Source-bound adapter hashes were
refreshed after formatting; the independent70-file original SDK inventory stayed
unchanged. Seven Lua modules were manually made readable, but genuine StyLua
qualification remains open after its real release download timed out. Native
CPP semantics, installed examples and generated docs require their own actual
post-publication builds; no global documentation-complete claim is made.

