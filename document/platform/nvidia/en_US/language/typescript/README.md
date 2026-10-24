# nvidia TypeScript API

This package exposes 29 complete original records/components.
Install beside the shared
Microsoft TypeScript 5.9.3 strict semantic frontend and existing shared QuickJS,
under shared lock revision 7. This platform package contains neither compiler nor
engine. Host Node only runs the compiler; emitted ESM executes in QuickJS Wasm.

Import nvidia/typescript/index. The umbrella exports groot, isaacRos and isaacSim namespaces,
plus grootSample, isaacRosSample and isaacSimSample factories. Shared support is
nvidia/typescript/codec, nvidia/typescript/stdio and nvidia/typescript/transport.
Every import uses the public module root. Exact upstream definition and catalog
hashes remain in share/platform/<component>/catalog.json. Typed records preserve
all original fields, constants, canonical identities and defaults.

Each <OriginalSymbol>Codec provides defaultValue() (independent complete owned
value), encode(value) (owned complete Uint8Array), decode(bytes) (new complete
value), valid(bytes) (boolean), and validateValue(value) (true or exception).
is<OriginalSymbol>(unknown) validates a complete original value as a type guard.
Metadata includes codecIdentity, minWireBytes, maxWireBytes,
cartesianMaxWireBytes, aggregateWireBytes and constants. The interfaces map
retains every message and every distinct service request/response component.
Codec support alone does not establish service transport success.

UInt64 uses BigInt, including values above 2^53; never first convert to Number.
The runtime checks numeric signedness and original ranges. Tuple2/3/4/5/36 retain
exact fixed counts. Sequences preserve active lengths and original bounds.
Strings reject NUL and malformed Unicode, and strict UTF-8 counts bytes.
Nanoseconds remain below 10^9. Both IEEE widths reject nonfinite wire values,
including finite Number inputs that overflow binary32. Quaternions are never
silently normalized. All nested poses and 36 covariance entries per detection
remain present. Canonical wire is little endian in original field order, not
native ROS CDR. No native memory layout is implied by a TypeScript interface.

CodecError.code preserves the original positive numeric status; originalError
retains its cause. Local malformed input is 22. Shared stdio helpers readSeed,
readHex, equalBytes, writeWire, expectInvalid and runGuest use the actual guest
argv/output/exitCode contract. Seeds accept exact decimal uint32 and default to
73 when omitted. Hex is one exact bounded argument, without prefix or ignored
suffix. Full output contains every wire byte. Invalid input is 22, quota is 90,
and stream failure is 5.

transport borrows an existing shared JS capability. request(capability,
operation, requestCodec, responseCodec, value) invokes once; publish(capability,
codec, value) publishes once; poll(capability, codec) polls once. Typed results
distinguish ok, original status, owned value and exact BigInt required.
Empty 11 and capacity 90 remain refusals; legacy capacity failure may already
consume an event. There is no hidden retry. Open/close/revoke, module identity
and manual alias grants remain the original caller's responsibility.
No handle factory, ABI copy, native pointer or layout is created here.
The native helper borrows the shared JS owner and copies each request into an
ArrayBuffer-backed Uint8Array at the TypeScript 5.9 invocation boundary. The
ArrayBuffer/SharedArrayBuffer distinction is checked without a type assertion.

Each component has four independently built source programs: roundtrip derives
full active values from uint32 input; decode_argument accepts a complete
caller-provided wire; malformed_wire checks truncation, tails, nonfinite fields
and container bounds; complete_catalog traverses every original record and
service component. The first three are the required distinct operations.
Isaac ROS samples include two detections, four corners each, all 72 covariance
entries, UTF-8 camera text and a nonnormalized quaternion. The umbrella adds
aggregate_roundtrip, catalog_roundtrip and malformed_catalog with independent
main.mts and xmake.lua files.

Set UWVM_ROS_SDK_ROOT to the integrated SDK, then enter an example directory.
Configure with xmake f -a wasm32 and build using xmake -vD -j1. Every target uses
binary kind, canonical typescript language, the selected platform, ROS2 Jazzy,
cpu-value transport, wasm-wasip1 and its named scenario. run.autobuild=false
separates build from run. Architecture wasm64 requires actual memory64 proof;
unsupported requests must fail without coercion. Static/shared producers,
consumers and actual Wasm loading require separate common-kind qualification.
ESM source sharing is not archive or dynamic-library acceptance.

Deploy the sole application Wasm with the installed uwvm2-ros. Each CPU
example includes main-typescript-CPU-clock.deployment.template.json. Replace
its portable runtime/gateway paths, review the exact main module, then set
UWVM_ROS_RUN_CONFIG to that file and use xmake run with the example target.
The manually declared main-only realtime-clock permission is needed by QuickJS
initialization. Basic default standard streams remain available. No random or
monotonic clock permission is requested by these CPU policies; ROS is explicitly
disabled and the alias list is empty. Build/run hooks add no permissions.

The roundtrip program uses its default seed when arguments is empty; operators
may set a decimal uint32 seed explicitly. For decode_argument, copy the full
wire_hex body printed by roundtrip into its single arguments element. The
malformed and complete-catalog programs take no arguments. Each template selects
only its own target. Native communication uses separately reviewed ROS-enabled
policies and only the literal aliases of its communicating module.

Three original JS dependencies use an explicit source patch: replace
browser TextEncoder/TextDecoder construction with existing ros/js/wire UTF-8
functions. All record algorithms are otherwise byte-identical. These dependencies were
checked and executed together with the typed route. The common JS emitter owner
must retain this shared dependency in future generated outputs.

The wasm32 command route has passed genuine strict frontend checks, cold Linux
Xmake builds and argument-driven guest assertions on x86 and QEMU AArch64.
The four platform entries collectively provide 15 CPU applications and 60 CPU
cases. All 29 complete catalog records/components have default roundtrips in the
actual guest. Nondefault field oracles exercise the three primary message types;
this does not establish nondefault coverage for every service component.

The separate Isaac ROS original-Array examples add three genuine strict-built
applications and 12 native cases: receive/close, complete-array republish and
revoke/old-handle, each positive and ROS-denied on both architectures. Independent
native CDR and canonical-wire decoders compare all fields and floating zero signs.
GR00T native services, Isaac Sim execution, GPU/NITROS, ROS1, memory64, ARM-host
source compilation and static/shared library combinations remain separate open
acceptance rows. Another language's receipts do not qualify TypeScript.

| Original record/component | Maximum canonical bytes |
| --- | ---: |
| uwvm_groot_bridge/msg/RGBFrame | 860 |
| uwvm_groot_bridge/msg/FloatTensor | 1364 |
| uwvm_groot_bridge/msg/TextSequence | 1120 |
| uwvm_groot_bridge/srv/InferAction_Request | 10296 |
| uwvm_groot_bridge/srv/InferAction_Response | 10929 |
| uwvm_groot_bridge/msg/RGBDescriptor | 88 |
| uwvm_groot_bridge/srv/BeginObservation_Request | 276 |
| uwvm_groot_bridge/srv/BeginObservation_Response | 12 |
| uwvm_groot_bridge/srv/WriteRGBChunk_Request | 852 |
| uwvm_groot_bridge/srv/WriteRGBChunk_Response | 16 |
| uwvm_groot_bridge/srv/ReleaseObservation_Request | 8 |
| uwvm_groot_bridge/srv/ReleaseObservation_Response | 12 |
| uwvm_groot_bridge/srv/InferUploadedAction_Request | 7720 |
| uwvm_groot_bridge/srv/InferUploadedAction_Response | 10929 |
| builtin_interfaces/msg/Time | 8 |
| std_msgs/msg/Header | 76 |
| geometry_msgs/msg/Point | 24 |
| geometry_msgs/msg/Quaternion | 32 |
| geometry_msgs/msg/Pose | 56 |
| geometry_msgs/msg/PoseWithCovariance | 344 |
| geometry_msgs/msg/PoseWithCovarianceStamped | 420 |
| isaac_ros_apriltag_interfaces/msg/AprilTagDetection | 612 |
| isaac_ros_apriltag_interfaces/msg/AprilTagDetectionArray | 9872 |
| builtin_interfaces/msg/Time | 8 |
| std_msgs/msg/Header | 76 |
| sensor_msgs/msg/JointState | 5980 |
| uwvm_isaac_sim_bridge/msg/ClockEvent | 14 |
| uwvm_isaac_sim_bridge/srv/ClockControl_Request | 22 |
| uwvm_isaac_sim_bridge/srv/ClockControl_Response | 48 |


The umbrella explicitly selects ros.vendor.component=nvidia-isaac-ros for the
provider source graph; its ESM imports still include all three complete catalogs.

Native programs are example/platform/nvidia-isaac-ros/typescript/ros2/
original_array_receive, original_array_echo and original_array_revoke. Their
README files explain the explicit realtime-clock/monotonic-clock policies,
whole original Array checks, exact status 9/125 retirement behavior and denied
status 13. Native ROS communication does not establish GPU functionality.
