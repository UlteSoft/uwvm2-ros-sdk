# Legacy ROS migration boundary 0.1.0

The scalar transport header and two C sources expose the existing ROS guest
imports with versioned C names. Compile the application and the selected
transport source to Wasm. The source rejects a host-native build. It adds no
native client, socket tunnel, implicit capability or retry. Python and Java
implementations consume this boundary through their Wasm runtime/FFI; the shared
Python and Java legacy subtrees remain owned by their language maintainers.

This boundary is not a source-compatible port of rcl, rclcpp or ROS1 roscpp.
No replacement upstream headers are installed. Actual upstream client source,
generated message/typesupport, dependencies, licenses, patches and compiler
identities must be pinned and compiled to Wasm before any legacy API profile is
supported. ROS1 XMLRPC/TCPROS/connection management must be mediated or replaced
at the explicit VM operation boundary, never tunneled around permission/audit.

The normative scalar declarations and their exact source SHA are in
share/platform/ros/transplate/v0.1.0/contract.json. Declaration counts are not
runtime support. The historical authority SHA in the existing ABI descriptor
does not match the currently inspected VM header; integration must reconcile
that provenance before qualification. The two namespaces keep backend-owned
handles separate. Offsets, lengths and handles retain all 64 bits; memory index
is i32. Message and event layouts remain the existing canonical ABI. Callbacks
must consume actual event records on the guest execution thread. Error 11 is
idle, 90 reports required capacity, and timed-out admitted effects are not replayed.

Open migration work covers initialization/shutdown, codecs, pub/sub and QoS,
services/actions and cancellation, timers/clock domains, executor ordering,
concurrent callbacks, node/handle lifetime, lifecycle/parameters/discovery,
exceptions/allocator/thread constraints, stale/foreign references, pause/resume,
reconnect/restart, permission-preserving update/rollback and reverse sensor
bytes. The contract marks every unimplemented profile explicitly BLOCKED.

The RRBot public target continues to build its unchanged Wasm. Its test remains
BLOCKED because the former SDK native observer and caller have been physically
removed and the real Wasm query/callback/feedback implementation is pending.
Historical native observations do not qualify it. Restore execution only after
public Linux xmake and xmake test, permission refusal without native effect,
module/grant/import/result correlation, guest feedback provenance and the exact
official simulation all have original evidence.


Current base ABI provenance is reviewed in
share/platform/ros/runtime-evidence/v1.0.0/manifest.json. The exact 38 ROS1 and 43
ROS2 declarations match the preserved original SDK descriptor. The current
host.h source is 438497194ce9fd2f1bf6a59e7a9f97452cb6a51cd6da7986bf75e03dd8ca5f8e.
Original VM-owner R11 raw evidence independently establishes 87 finite
unprivileged assertions and four wrong-signature refusals. Five actual ABI VM
image/cgroup and self-namespace receipts are retained in the SDK01 review.
This replaces the unresolved current-base provenance gap with explicit finite
evidence; it does not assert equivalence to every unavailable prior 9c behavior.
The original input descriptors are preserved beside the evidence. These records
never grant execution rights, and all authorized ROS operation paths, complete
upstream clients, public reverse feedback and official simulations remain open.

The genuine RCL 9.2.11 clock component is a separate guest C source port. Its
upstream source lock, local WASI clock backend and four required guest cases do
not establish a ROS node/RMW port, rclcpp/roscpp compatibility or a simulator pass.
