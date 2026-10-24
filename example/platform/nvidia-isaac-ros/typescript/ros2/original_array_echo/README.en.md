# TypeScript original_array_echo

This independent program uses actual TypeScript source, strict Microsoft
TypeScript 5.9.3 compilation, emitted ESM and the single shared QuickJS Wasm
engine. The application is one deployable Wasm. This native program has passed genuine strict compilation and original
ROS2 communication checks on x86 and QEMU AArch64, including its explicit
ROS-denied policy. Scope remains wasm32 binary and the complete original Array.

receive subscribes once, decodes a complete AprilTagDetectionArray, closes its
owner once and observes the Host's retired-handle refusal 9. echo closes the
subscription, opens the separately named publisher, then deliberately publishes
20 complete values at 100 ms intervals. revoke explicitly revokes the original
alias, observes old-handle status 9 and checks the actual reopen refusal 125.

Every active original field is decoded and re-encoded. Guest assertions compare
each original numeric value with Object.is, including signed zero, all four
corners, nested pose/quaternion values and all 36 covariance entries per
detection. Strings and array extents are compared too. For two detections,
numeric_fields_checked is computed as 124; the general formula is 2 + 61*N.
The quaternion is preserved without normalization. The complete canonical body
is printed in wire_hex, alongside independent primary, cleanup, retirement,
stale, reopen and publication observations. All handles remain exact BigInt.
The retired probe borrows only the genuine prior handle through the existing
common JS invocation method and creates no second capability owner.

Open and publish happen once per explicit operation. Only empty poll status 11
permits bounded waiting, up to 1000 attempts of 20 ms. Any pause refusal is kept.
A failed revoke still gets one explicit close attempt with a separate cleanup
status. Invalid local data is 22. Explicit alias denial is 13. No owner relies
on a finalizer or a hidden effect replay.

Set UWVM_ROS_SDK_ROOT to the installed SDK root. Configure with
xmake f -a wasm32, then build using xmake -vD -j1. This target selects binary,
typescript, nvidia-isaac-ros, ROS2 Jazzy, dds and wasm-wasip1; run.autobuild=false
keeps execution separate. The shipped shared frontend restores its pinned
build dependencies. This example's documented execution scope is wasm32 binary;
memory64 and static/shared producer/consumer combinations require separate proof.

For native execution, install the matching original ROS2 runtime, gateway and
AprilTag native type support separately. Edit the portable deployment template's
runtime/gateway executable paths and exact aliases. Set UWVM_ROS_RUN_CONFIG to
that manually reviewed file, then use xmake run original_array_echo. The positive
template grants ROS only to main and only for its literal original aliases,
type identity, canonical codec identity, QoS and bounded resource limits.
The ROS-denied template retains an enabled module with no ROS aliases so that
the ordinary open refusal can be observed.

Both templates grant only realtime-clock and monotonic-clock to main: QuickJS
initialization uses gettimeofday, and the existing pause service uses a monotonic
WASI timer. Basic default standard streams remain available. These templates
change no default/global policy and no build/run hook adds permissions.

The original type is isaac_ros_apriltag_interfaces/msg/AprilTagDetectionArray
from revision 7bec6ae5dbb2faa11617f40226e8932a4a94e6e4. Its canonical maximum
is 9872 bytes, with at most 16 detections, strict bounded UTF-8, four corners and
36 covariance values per detection. RIHS/native and canonical identities remain
literal in the policy. Canonical little endian wire is distinct from native
ROS CDR. Use controlled native peers for acceptance and compare every field
on x86 and QEMU AArch64 under the serial 64 GiB/zero-swap gate. Native ROS
transport qualification and GPU/NITROS/simulator qualification remain separate.
