# ABB implementation review

The original ROS1 catalog contains 53 definitions (30 messages, 22 services and
one action); ROS2 contains 63 (39 messages, 23 services and one action). All 116
source files match their retained SHA-256, Git blob identity and byte length.
This establishes source provenance, not native adapter execution.

The reviewed read-speed service preserves the empty request, complete response,
`result_code == 1` controller success rule and the original 0..100 speed ratio.
C/C++ examples preserve transport, controller result and cleanup independently.
Neither a refused request nor a timeout is implicitly retried.

This integration corrects ABB catalog validation, preserves an explicit wasm64
selection and replaces private build/run wrappers with the common SDK lifecycle.
All public configuration setters use `set_` names. Native deployment now accepts
vendor scenarios and application arguments, and keeps each module's explicit
ROS/WASI policy separate. See `sdk/document/native-run.en_US.md`.

The SDK02 handoff was partial: historical ABB evidence contains four actual
Wasm builds and five guest error-path executions. It does not establish positive
native ABB communication, all 116 interface codecs, QEMU AArch64, all language
routes or shared/static library acceptance. Those older receipts do not certify
the newly renamed and formatted sources. Current integration tests are recorded
separately; no complete ABB release is claimed.

The new integration regression passed 24 ABB Wasm builds: three scenarios for
each of C, C++, Objective-C and the C FFI bridge, at both wasm32 and wasm64. All
24 applications also passed argument-error checks in the actual uwvm2-ros VM.
The common v2 launcher separately passed four argument-preserving permission
denials for ABB C/C++ at both widths. These results qualify the shared build and
startup wiring; positive responses from original ABB services remain a separate
acceptance requirement.

A source-selected matching registry and native adapter must be built into the
runtime and gateway using actual exported MD5/RIHS identities. Header installation
alone cannot register ABB services. Upstream RWS/EGM driver processes remain
native components; these Wasm clients do not replace the robot hardware driver.
