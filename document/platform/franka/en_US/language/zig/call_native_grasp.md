# Genuine Zig original Grasp: call_native_grasp

This Noetic example retains every original goal field (width, nested epsilon.inner/outer, speed, force), the original zero-field feedback, and both success/error result fields. The vendor native_grasp.zig API only composes the unchanged public ROS owner and current finite Cursor codec. It contains no compiler, VM, dispatcher or C serialization surrogate.

Send one original goal once, observe original empty feedback, and consume a native SUCCEEDED3 result (SDK kind2), including complete UTF-8 diagnostic. No uncertain effect or failed goal is replayed.

Use UWVM_ROS_SDK_ROOT and build with `xmake f --plat=wasm-wasip1 --arch=wasm32` (or wasm64), then `xmake -vD main`. Manually choose source-paired Noetic runtime/gateway in deployment.json and run `UWVM_ROS_RUN_CONFIG=deployment.json xmake run main`. Only the exact aliases/operations/type/MD5/codec identity and finite quotas in the template are admitted. There is no cancel-any grant. Explicit monotonic-clock authority permits bounded idle waits. Closing acquired owners in reverse preserves cleanup independently.

The supplied Zig0.14.1 frontend uses its own measured LLVM19.1.7. Public LLVM23 compiles only scalar startup and links WASI. Source language records, codecs, operation decisions, logging and state are Zig. wasm64 uses Uwvm memory64 Preview1 suffixed clock imports; this is an explicit extension. A disabled policy returns13 before a gateway starts.

Retain complete native Goal IDs, all field/wire comparisons, original feedback/results/cancels and endpoint/process cleanup. Guest IDs remain opaque; full unique goal bytes join them to native identities. Acceptance is limited to this offline original Noetic interface, wasm32/64 and x86/QEMU AArch64. Exact Humble, hardware, other languages and historical Writer/Reader record API remain unqualified. The accepted original Service and old r79 matrix are not replayed.
