# TinyGo roundtrip

Set UWVM_ROS_SDK_ROOT to the installed SDK. Use xmake f -a wasm32, then xmake -vD -j1.
TinyGo 0.38.0 uses LLVM 19.1.2 code generation, Go 1.24.2 source support, and the shared
LLVM 23.1.4 support assembler/final linker. The output is one genuine Wasm application.

Copy main-random-opt-in.deployment.template.json to an operator file, replace the installed runtime/gateway paths and review
its arguments and exact main-module permissions. Set UWVM_ROS_RUN_CONFIG to that file,
then use xmake run roundtrip. Build and run are separate, and neither adds grants.

Only main receives monotonic-clock/random; ROS is disabled and its grants are empty.
roundtrip accepts an optional uint32 seed; decode_argument takes one complete hex body;
malformed_wire checks valid data and truncation/trailing refusal. Success prints every
wire byte, invalid input returns 22 and stream failure returns 5.

Finite scope: wasm32 binary on x86/QEMU AArch64. Other widths, library kinds, native types, GPU/NITROS/simulation and ARM-host compilation need separate acceptance.
