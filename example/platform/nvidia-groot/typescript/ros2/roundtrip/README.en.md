# nvidia-groot: TypeScript roundtrip

Derive one complete original value from a decimal uint32 seed and print every canonical byte.

This independent .mts application passes genuine Microsoft TypeScript 5.9.3
strict checks. Emitted ESM runs in the single shared QuickJS Wasm engine. The
deployment output is one Wasm application. Public imports preserve complete
original fields, BigInt uint64, fixed tuples, bounded UTF-8 and finite numbers.
Success prints every requested wire byte; malformed input returns 22, quota 90
and stream failure 5. See the platform TypeScript manual for the full catalog.

Set UWVM_ROS_SDK_ROOT to the installed SDK. Configure with xmake f -a wasm32
and build with xmake -vD -j1. This target selects binary, typescript, ROS2 Jazzy,
cpu-value and wasm-wasip1. run.autobuild=false keeps execution separate.
Edit main-typescript-CPU-clock.deployment.template.json, set UWVM_ROS_RUN_CONFIG
to its path, then use xmake run roundtrip. Its exact main module has
only an explicit realtime-clock opt-in for QuickJS initialization; default basic
standard streams remain available. ROS is disabled and no alias is granted.
For decode_argument, insert the full wire_hex from a roundtrip output as its
single arguments entry. A roundtrip seed is optional; other CPU programs take
no arguments. No build/run hook adds permissions.

This application has a genuine cold build and x86/QEMU AArch64 wasm32 guest
validation. Native ROS communication uses the separate Isaac ROS Array examples.
ROS1, memory64, ARM-host compilation, GPU/NITROS/simulator execution and actual
static/shared library combinations require their own acceptance.
