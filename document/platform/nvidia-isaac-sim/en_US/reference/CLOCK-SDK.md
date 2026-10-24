# Complete simulator clock program SDK

The Rust, TinyGo, AssemblyScript, JavaScript, Java and Kotlin applications in `clock_examples/` own the
original two twenty-frame loops. Their platform SDKs use each language's shared
retained ROS2 service transport. The native `native_clock_bridge.py` owns genuine
Kit updates and Clock subscribers. The interface is an authored, allowlisted
application protocol; it is not an official NVIDIA service or a general Kit API.

## Public paths and preparation

| Language | SDK library in a prepared installed tree | Complete application |
| --- | --- | --- |
| Rust | `include/platform/nvidia-isaac-sim/rs/clock-control` | `example/platform/nvidia-isaac-sim/rs/clock-program` |
| TinyGo | `include/platform/nvidia-isaac-sim/tinygo/clock-control` | `example/platform/nvidia-isaac-sim/tinygo/clock-program` |
| AssemblyScript | `include/platform/nvidia-isaac-sim/as/clock-control` | `example/platform/nvidia-isaac-sim/as/clock-program` |
| JavaScript | `include/platform/nvidia-isaac-sim/js/clock-control` | `example/platform/nvidia-isaac-sim/js/clock-program` |
| Java | `include/platform/nvidia-isaac-sim/java/clock-control` | `example/platform/nvidia-isaac-sim/java/clock-program` |
| Kotlin, explicitly selected source extension | `include/platform/nvidia-isaac-sim/kotlin/clock-control` | `example/platform/nvidia-isaac-sim/kotlin/clock-program` |

Maintenance source lives in `language/{rs,tinygo,as,js,java,kotlin}`. Under the admitted finite
Linux owner, invoke `clock_control/prepare_sdk.py` with a captured physical
`--source-root`, fresh `--out` under that owner's work directory, and independently
reviewed `--parent-sha256`, `--bounded-sha256`, `--adapter-sha256` and
`--managed-sha256` pins for the real shared industrial operator/Java emitter.
It runs genuine preparation, preserves all generated
record bytes, reads the service-root codec identity from the actual manifest and
stages only these canonical sources. It supplies no shared-language package or
compiler/runtime. Global SDK publication remains the distribution owner's work.
Missing generated files fail; there is no hand-written record substitute.
Java uses the genuine shared managed emitter and exactly one package relocation
to `org.uwvm.roswasm.nvidia.isaacsim.generated`, with unchanged codec bodies.
The generic emitter omits non-CONTROL constants; the owned adapter exports every
original declared constant from its actual resolved IR using the shared literal
emitter. Root facts also come from that IR, not a new hash/schema implementation.
Default preparation retains the exact five-language receipt shape supported by
the actual shared publication hook. Explicit `--with-kotlin` additionally stages
the real Kotlin library/app with its canonical Java platform dependency, producing
a separate six-language source module. That extension needs separate shared
publication review and execution; it does not change the formal managed raw12
selector or claim an installed Kotlin route. Kotlin2.1.20 JVM-IR targets Java17
and the real TeaVM0.13.1 WASI profile, with the existing genuine Java code/records
kept once. Its complete app owns all forty frames; no host JVM ROS executes.

## Full operation and data contract

Each session has one positive uint64 nonce, one monotonically increasing request
sequence, one pending transaction, at most64 retained transaction slots and
at most64 native request-history entries. Nonce is correlation data, not a right
or authentication credential. The native owner fixes physical SDK root, native
domain, service and both clock topics before starting. The service cannot change
them or select a plugin, path, asset, device or model.

| Operation | Required input | Successful native response |
| --- | --- | --- |
| START1 | Sequence0, phase/frame0, impulse/extra false, pacing1000ms | Actual graph/context creation, two setup updates, discovery delay,1/60s CPU setup/play/update; state1, steps0, actual explicit updates4 |
| STEP2 | Sequences1..40; phase=`completed/20`, frame=`completed%20`; impulse on frames0/10; extra onlyphase0 impulse; pacing100ms | Actual requested impulse, optional extra update, normal update, exactly one actual Clock callback poll,100ms pacing; steps advance only after success |
| FINISH3 | Sequence41,40 completed steps, all scheduling fields zero | Stop simulation and close real Clock readers; state2 and independent cleanup status |
| CANCEL4 | Next sequence, no pending/uncertain request, all scheduling fields zero | Actual partial-session simulation/reader retirement; only its successful real reply acknowledges cancellation |

Every response retains status, nonce, request sequence, state, actual explicit
app-update count, completed steps, has_event, all event fields and cleanup status.
For n completed steps after START, explicit updates are
`4+n+(n>0?1:0)+(n>10?1:0)`, including the two original phase0 extra updates.
The complete successful program has46 explicit app updates. These counts are
operation observations and do not synthesize Clock values or prove ROS delivery.

An event retains kind1 automatic/2 manual, dispatch phase/frame, signed int32
seconds and uint32 nanoseconds below1000000000. No event requires every event
field to be zero and never becomes a sample Clock(0). The shared SDK validates
the whole actual canonical body and same-take transport metadata, then performs
the exact commit ACK before exposing a value. Platform clients additionally
validate ticket/nonce/sequence, every state/counter/cleanup/event field. They
require both genuine callback kinds in each phase before FINISH. Missing
observations give110, preserving the chance to send an explicit native CANCEL.
One callback poll per frame intentionally retains the original source's queue
behavior; it does not promise every publication or impulse will be observed.

## Ownership, errors and limits

Use one original Session on the admitted single Guest thread. Rust's Group is
thread-local; TinyGo rejects copied Session values; AS/JS/Java use a single mutable
owner. Call connect once with distinct pregranted call, observer and independent
availability aliases. Rust/TinyGo compare all actual QoS fields with the caller's
two expectations. AS compares the160 exact expected QoS bytes against the shared
SDK's fully validated UMRE snapshot. No guessed RMW layout or additional receipt
parser is introduced. QoS data cannot alter native policy or enlarge a grant.
Java uses the genuine shared Group's complete receipt/QoS validation and
diagnostics. JS copies both expected profiles before opening and its genuine
shared SDK validates the full actual receipt; those receipt buffers stay private.
The JS wrapper exposes the shared facts API, never expected bytes relabeled as
an actual receipt. Java long, Kotlin ULong/UInt and JS BigInt preserve all uint64/status bits.

Status11 is actual idle/unavailable,13 denial,17 busy/pending,22 malformed or
misassociated data,90 finite capacity/work exhaustion,95 unsupported,110 actual
native deadline/missing required callbacks,125 retired/uncertain and5 ordinary
native failure. Preserve other original unsigned transport statuses. A failed
submit/ACK/native effect makes business work terminal; never replay it. Record
local abandon, native retirement and each raw-owner close independently.

Polling is caller-driven work, not an elapsed-time claim. Examples accept1..65536
poll iterations per operation. Exhaustion locally abandons the actual pending
ticket and reports90; it does not claim DDS cancellation, rollback or a physical
timeout. A separate native lifetime1..120000ms bounds real monotonic time,
including startup and pacing. Actual synchronous SDK/Kit work also needs the
external whole-process finite owner. Traps/OOM can prevent ordinary cleanup.

Explicit close independently attempts pending abandonment and every retained
native/raw owner cleanup; AS also closes its separate availability owner. The
first business error remains primary and full cleanup diagnostics remain
available afterward. Rust/TinyGo/AS/Java/Kotlin platform close is inert after retirement.
JS follows its actual shared SDK: later explicit close may retry only a retained
local preflight refusal, at most64 caller-directed calls; attempted native/raw
effects are not replayed. Java retains the genuine preallocated shared failure
envelope, shutdown results and every original/remaining owner handle. Actual simulation CANCEL
requires a successful correlated service reply; local close/abandon never proves
native cancellation or physical robot stop. No physical interface is exposed.

## Actual applications and xmake

Rust/TinyGo argv is:
`call observer availability nonce poll_work_budget request_qos response_qos`.
Each QoS string has12 comma-separated unsigned decimal fields:
history,reliability,durability,liveliness,depth,deadline.seconds,
deadline.nanoseconds,lifespan.seconds,lifespan.nanoseconds,lease.seconds,
lease.nanoseconds,avoid_namespace. Enums1/2 use the shared UMRE vocabulary;
nanoseconds are below1e9, avoid is0/1, keep-last requires nonzero depth.

AS argv is:
`call observer availability nonce poll_work_budget qos160bytes_lower_hex`.
The final320-character lower-hex argument is the independently supplied pair of
complete80-byte UMRE QoS profiles. AS reads at most4096 strict-UTF8 argument bytes
through genuine WASI args APIs. Output uses actual checked partial fd writes.
All applications output every successful response field and complete actual
same-take metadata, then retain full shared transport/cleanup diagnostics.
The SDK also retains the complete last decoded/ACKed body and same-take metadata
after a native status or business-validation failure. This diagnostic record may
have failed correlation checks and never becomes successful completion. Rust
borrows it until the next mutable operation; TinyGo returns an independent copy;
AS returns module-owned mutable diagnostic references. Idle/control/decode
failure leaves the previous body snapshot. Local validation refusals are returned
to the caller; the application preserves its first failure across explicit CANCEL
and independent endpoint cleanup.

Rust, TinyGo and AS have a real `xmake.lua` plus `clock_build.lua` backend, using the
shared compiler/provider resolver, actual canonical library source and original
language compiler. Rust directly builds real core/retained/platform rlibs and
the full application. TinyGo builds real installed modules with matching pinned
Go, offline caches under owned output and exact ROS2/raw12 tags; it is not Go.
AS invokes the shared closed managed compiler/validator backend with explicit
`platform=nvidia-isaac-sim`. Profiles require wasm32 WASIp1 command, no EH and one
thread; unsupported choices fail without fallback. These xmake backends are
currently source modules, not executed xmake receipts.

The published shared checker now accepts the explicit default-off
`ros2_rmw_service` / `--ros2-rmw-service` selector for ROS2 with the fixed canonical
catalog and exact twelve signatures. The published closed managed grammar/backend
wires it for non-pure AS only. This owned AS backend consumes that actual
interface. At the latest source inspection, installed
`share/abi/rmw-service-v1.json` and the installed clock libraries remain absent;
no current installed build or private overlay is accepted. The selector grants
no Runtime/native authority and generic module allowances cannot replace it.
Task09 did not edit the shared checker/backend/grammar.

Java's ordinary source library/application POMs target Java17 and actual
TeaVM0.13.1 WEBASSEMBLY_WASI. Use the reviewed patched compiler, full offline
dependencies and genuine shared Java SDK artifact. The current closed Java
builder selects fixed lesson bodies rather than this app/POM. JS needs the actual
closed ESM map, same-Wasm `roswasm:rmw_service_native` builtin and real QuickJS/WASI
producer; the current generic JS builder rejects that external builtin. Both
normal managed routes also need their explicit exact raw12 selection published
by the shared owner. Neither has a fake xmake target or passing compilation.

Java argv is `call observer availability nonce poll_work_budget request_qos80_hex
response_qos80_hex`; each QoS argument is160 exact lower-hex characters.
JavaScript uses one actual basic-stdin uint32LE-length-prefixed strict-UTF8 JSON
frame,2..2048 bytes with exactly eight fields described in `clock-program/README.md`.
Every JSON output record is <=1MiB, emitted in <=512-byte actual basic writes;
an error does not retry a chunk. Its engine print bound must be >=512 and its
finite whole-run output quota must admit the complete log. Neither app reads
implicit domain/service/model/path or environment configuration.

Rust/TinyGo builds require `UWVM_NVIDIA_EXAMPLE_CONFIG` to select an absolute JSON
object with format`uwvm-nvidia-example-config-v1`, exact version and, for TinyGo,
matching goroot. A real shared SDK-local profile and pinned compiler/runtime
closure are also required. AS uses the shared managed input JSON/SHA and actual
AssemblyScript provider. No positive run is attached to an empty-authority
xmake action; an operator must separately admit the exact finite loopback native
owner/policy and invoke the compiled application with its explicit arguments.

