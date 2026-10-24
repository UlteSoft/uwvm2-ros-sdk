# nvidia-isaac-sim Rust ROS2

Set UWVM_ROS_SDK_ROOT to the installed SDK. Each standalone directory under
example/platform/nvidia-isaac-sim/rs/ros2 has its own xmake.lua. Use
`xmake f -a wasm32` and `xmake -vD -j1`; genuine Rust1.87.0 produces one
application Wasm. Cold builds need only Xmake and verified SDK dependencies,
with no native ROS installation. Rust's compiler-owned backend is LLVM20.1.1;
the selected shared final linker is LLVM23.1.4. wasm64 is explicitly refused.
Import the public `nvidia_isaac_sim` crate and `roswasm::typed::Canonical`; the declared
shared action resolves the exact modules. No network package resolution is used.

roundtrip accepts a uint32 seed and validates the complete generated record.
decode_argument accepts one bounded exact hexadecimal body and checks full
typed decode/re-encode. malformed_wire additionally requires truncation and
trailing data to fail. Successful output includes every wire byte. Three
component graphs, nine applications and30 x86/QEMU CPU cases passed; those
cases disable ROS and explicitly grant only monotonic-clock. Bad input returns22,
stdout failure5. Canonical values own all strings/sequences and validate nested
bounds, finite numbers and UTF-8 before exposing a complete value.

Isaac ROS additionally provides original_array_receive, original_array_echo
and original_array_revoke. They use the complete original native Array, retaining
both detections, four corners each and all72 covariance values. Copy and review
the manual deployment template, select the actual native runtime/gateway, and
use UWVM_ROS_RUN_CONFIG with `xmake run` and the target name. Only nvidia_rs
receives the exact sample subscription and, for echo, outgoing publication.
No ROS permission is global. Monotonic-clock supports finite polling/pacing;
no random or realtime-clock grant is added. Twelve real x86/QEMU native cases
passed, including denied13, raw stale9, revoked reopen125, cleanup and40 complete
messages observed by independent ROSIDL/CDR subscribers. Primary and cleanup
statuses remain separate. Poll11 is idle;1000 attempts with20ms waits bound idle
waiting, and each of20 deliberate echo publications is spaced100ms. Effectful
refusals stop without replay. Keep data owned through synchronous calls.

Portable exact source/product identities are in
share/platform/nvidia/rust-native-review41.json. A64 native-host execution
does not prove guest memory64. Other native catalog types, static/shared
interoperation, GPU/NITROS and an ARM compiler host remain separate open rows.
