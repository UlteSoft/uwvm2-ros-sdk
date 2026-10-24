# Cross-language FJT static and shared libraries

- `sdk/example/platform/kinova/cpp/ros2_humble/codec_c_static`
- `sdk/example/platform/kinova/cpp/ros2_humble/codec_c_shared`

This graph builds an actual c `record_codec` shared library and an actual cpp main application through ordinary Xmake target kinds and `add_deps`. Each source is compiled by its declared real frontend. A C main linked with a C++ archive uses the shared SDK's existing C++ link-driver selection; no C source is compiled as C++, and no private compiler or linker is supplied.

Use `UWVM_ROS_SDK_ROOT` to select the installed SDK. Run `xmake f --plat=wasm-wasip1 --arch=wasm32` (or `wasm64`), then `xmake -vD main`. Copy `deployment.template.json` to `deployment.json`, manually select the runtime/gateway paths and complete component/hex arguments, then run `UWVM_ROS_RUN_CONFIG=deployment.json xmake run main`. Select `goal`, `feedback` or `result`. The compact complete Result `feffffff0400000041e4b8ad` preserves error code -2 and UTF-8 text `A中`.

The original complete Goal, Feedback and Result retain every field, with a16-record/59-field dependency closure inside the unchanged17-record/64-field catalog. Six `uint32_t` exports transfer readiness, component selection, input bytes, validation, output extent and output bytes. Each module owns its buffers and typed objects; no pointer or C++ object crosses the boundary. Readiness101 must come from the actual eager initializer. A successful round trip returns0; invalid arguments, nonfinite/malformed input and overflow return22.

Static deployment contains only `build/main/main.wasm`; the indexed `.a` remains a private build input. Shared deployment additionally needs `build/record_codec/record_codec.wasm` and the template's exact `record_codec` preload identity. Both modules explicitly disable ROS and have no additional WASI grants; ordinary basic standard streams remain available. Exact Humble native ROS, robot goals, cancellation, unrelated language pairs and general module graphs are outside this codec example.

## Verified scope

Eight builds and 144 original consumer executions cover both language directions, library kinds, Wasm widths and x86/QEMU AArch64: 48 complete round trips and 96 invalid-input rejections. These are ROS-disabled codec executions; they do not establish native Humble or Action cancellation.
