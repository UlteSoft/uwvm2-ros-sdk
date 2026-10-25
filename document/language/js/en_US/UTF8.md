# Portable UTF-8 in generated records

The shared JavaScript record generator uses `ros/js/wire` for UTF-8 conversion.
QuickJS does not provide the browser `TextEncoder` or `TextDecoder` globals.
Generated bounded and original-control records therefore use the same SDK
implementation as handwritten guest modules and TypeScript applications.

Include the public module `ros/js/wire`, backed by
`include/platform/ros/js/wire.mjs`, in the application's complete bundle
manifest. Preserve its full SHA-256 just like every other declared source
module. The generator emits the public import; it does not create a second
engine, copy a private encoder or grant ROS/WASI permissions.

String bounds count encoded UTF-8 bytes. Encoding rejects embedded NUL,
unpaired surrogates and values beyond the declared byte limit. Decoding rejects
invalid, overlong, truncated or out-of-range scalar sequences and embedded
NUL. A leading byte-order mark is preserved as a character. Empty strings and
valid supplementary-plane characters remain supported. Both guest widths use
the same canonical wire bytes.

The bounded profile reports `TypeError` for invalid values. The original-control
profile reports `ControlCodecError` with code 22. A complete generated reader
still checks the record length and trailing bytes; UTF-8 conversion does not
replace those checks.

Regenerate existing catalogs using the shared emitter and update their bundle
hashes together. A repaired generator does not modify previously generated
files automatically. Keep the separate platform tests for full records and
native service identities. The maintained synthetic UTF-8 regression belongs
to the VM repository under `test/0073.ros-tests/sdk/tests/js/generated_utf8`;
its scope is string-codec execution, not native ROS acceptance.
