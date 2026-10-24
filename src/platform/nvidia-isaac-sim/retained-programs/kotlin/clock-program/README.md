# Complete Kotlin clock application source

The actual Kotlin2.1.20/JVM-IR to TeaVM0.13.1 WASI route uses the real Java SDK
foundation, matching the shared Kotlin route's existing interop design. This
application owns both original twenty-frame loops and calls its typed Kotlin
platform `ClockSession`; that facade delegates every complete record/QoS/ACK/
business/ownership operation to the genuine Java platform SDK/shared raw12
transport. It recreates no wire record, native identity, transport or timestamp.
It is not direct Kotlin/WasmGC or a host JVM ROS provider.

Prepare the actual shared Java SDK and real Java generated clock records, then
the Java clock library, Kotlin platform library and Kotlin app in that order.
Their normal source POMs target JVM17 and WEBASSEMBLY_WASI. Use the exact admitted
offline JDK/Kotlin/stdlib/Maven/reviewed patched TeaVM closure. The POMs do not
acquire dependencies, manufacture a qualified producer or execute an application.
The existing closed Kotlin builder selects its own telemetry body; selecting this
whole app/POM and exact optional ROS2 service imports requires the shared owner's
formal route extension first. No unqualified xmake target or permissive import
module exception is provided. These Kotlin sources have not been formatted,
compiled, translated, Wasm-validated or Guest/native-executed.

Installed source paths are
`include/platform/nvidia-isaac-sim/kotlin/clock-control` and
`example/platform/nvidia-isaac-sim/kotlin/clock-program`, with the actual Java
platform library kept once at its normal Java path. Each unsigned status and
uint64 value keeps all bits through Kotlin UInt/ULong and Java signed-bit interop.
There is no float conversion, narrowed frame/body or fabricated native sample.

Seven real WASI arguments are:
`call observer availability nonce poll_work_budget request_qos80_hex response_qos80_hex`.
Nonce is a nonzero full uint64 decimal string; work1..65536. Each QoS is exactly
160 lower-hex characters for the complete independently selected expected80-byte
profile. The real native availability wait is1000000ns. Aliases and their exact
native schema/QoS/rights remain preadmitted Host policy; input creates none.

Every body field, same-take metadata, shared operation result and original/raw/
remaining owner cleanup outcome is logged. Diagnostic values may represent
refused ACKs or rejected business data; only the explicit accepted result is
successful completion. The first business error survives CANCEL, independent
cleanup and reporting errors. Poll work exhaustion90 locally abandons the actual
pending ticket, with effect uncertainty; native CANCEL requires its own real
correlated response. No local close acknowledges cancellation or physical stop.
Blocked native/input/SDK calls and fatal traps still need the finite outer owner.
Read the parent `CLOCK-SDK.md` for the complete original operation contract.
