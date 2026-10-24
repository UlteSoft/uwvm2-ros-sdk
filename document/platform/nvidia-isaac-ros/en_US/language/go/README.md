# nvidia-isaac-ros Go ROS2 codec examples

Install the SDK and Xmake, select its root with `UWVM_ROS_SDK_ROOT`, and enter
one example directory under `example/platform/nvidia-isaac-ros/go/ros2/`.
Run `xmake f -a wasm32`, then `xmake -vD -j1`. Each directory produces one
application Wasm with genuine Go 1.24.2. No native ROS installation is needed
to build. The shared frontend action rejects wasm64; it never changes width.

`roundtrip` accepts an optional uint32 seed (default 17), constructs every
active typed field, and checks encode/decode equality. `decode_argument`
accepts exactly one bounded hexadecimal wire argument and checks typed decode
and byte-preserving re-encode. `malformed_wire` uses the seed fixture and
requires both truncation and trailing bytes to be rejected. All successful
operations print the full wire length and hexadecimal bytes. Input/codec
failure returns 22; stdout failure returns 5. Values own their memory; the
complete generated catalog documents each field's units and fixed bounds.

Use the public `nvidia-isaac-ros/go/ros2/complete` module. The project module file
declares SDK dependencies; Xmake resolves them through the shared action.
The examples request no ROS or GPU capability. Runtime execution uses a
separately supplied manual deployment configuration and `xmake run`; keep
runtime WASI rights explicit. The build receipt does not certify that runtime
closure. Static archives, shared libraries, wasm64, native original-Array
exchange and QEMU execution remain separate acceptance rows.

Three component graphs were restored from a fresh pinned frontend cache in
the Xmake-only image. All nine applications built; runtime/native execution
is now independently recorded in go-native-review41.json:30 CPU cases passed on x86 and QEMU, with explicit monotonic-clock and ROS disabled. Portable artifact/source identities are
in `share/platform/nvidia/go-native-review41.json`. Historical native C/C++
receipts and already sealed source revisions are unchanged.

The Isaac ROS component additionally qualifies three native original-Array flows (receive/close, echo, revoke):12 actual cases and40 independently received complete echo messages across the two architectures. Other component native types and library routes remain open.

The final documented records were genuinely rebuilt after parent review41. All12 output hashes changed, and the same30 CPU plus12 native cases passed again with identical permissions. This is revalidation and adds zero coverage cases.
