# Complete original FJT cross-language library

This graph builds an actual c `record_codec` shared library and an actual cpp main application through ordinary Xmake target kinds and `add_deps`. Each source is compiled by its declared real frontend. A C main linked with a C++ archive uses the shared SDK's existing C++ link-driver selection; no C source is compiled as C++, and no private compiler or linker is supplied.

Use `UWVM_ROS_SDK_ROOT` to select the installed SDK. Run `xmake f --plat=wasm-wasip1 --arch=wasm32` (or `wasm64`), then `xmake -vD main`. Copy `deployment.template.json` to `deployment.json`, manually select the runtime/gateway paths and complete component/hex arguments, then run `UWVM_ROS_RUN_CONFIG=deployment.json xmake run main`. Select `goal`, `feedback` or `result`. The compact complete Result `feffffff0400000041e4b8ad` preserves error code -2 and UTF-8 text `A中`.

The original complete Goal, Feedback and Result retain every field, with a16-record/59-field dependency closure inside the unchanged17-record/64-field catalog. Six `uint32_t` exports transfer readiness, component selection, input bytes, validation, output extent and output bytes. Each module owns its buffers and typed objects; no pointer or C++ object crosses the boundary. Readiness101 must come from the actual eager initializer. A successful round trip returns0; invalid arguments, nonfinite/malformed input and overflow return22.

Static deployment contains only `build/main/main.wasm`; the indexed `.a` remains a private build input. Shared deployment additionally needs `build/record_codec/record_codec.wasm` and the template's exact `record_codec` preload identity. Both modules explicitly disable ROS and have no additional WASI grants; ordinary basic standard streams remain available. Exact Humble native ROS, robot goals, cancellation, unrelated language pairs and general module graphs are outside this codec example.

## 中文

本图通过普通 Xmake target kind 和 `add_deps` 构建真实 c 的 `record_codec` shared 库与真实 cpp 主程序。每个源文件使用其声明语言的实际前端；C 主程序链接 C++ archive 时，公共 SDK 负责选择现有 C++ 链接驱动，不把 C 源伪装成 C++，不提供私有编译器或链接器。

通过 `UWVM_ROS_SDK_ROOT` 选择安装的 SDK，先运行 `xmake f --plat=wasm-wasip1 --arch=wasm32`（或 `wasm64`），再 `xmake -vD main`。复制手工部署模板并填写运行时/gateway 路径与分量/十六进制参数，再执行 `UWVM_ROS_RUN_CONFIG=deployment.json xmake run main`。分量选择为 `goal`、`feedback`、`result`；小型完整 Result `feffffff0400000041e4b8ad` 保留错误码 -2 和 UTF-8 文本 `A中`。

完整原始 Goal/Feedback/Result 的依赖闭包为16个记录、59个字段，完整目录仍为17个记录、64个字段。六个 `uint32_t` 导出传递就绪状态、分量选择、输入字节、验证状态、输出长度和输出字节；模块独占缓存与类型对象，不跨模块传指针或 C++ 对象。就绪101来自真实提前初始化；成功返回0，非法参数、畸形/非有限输入与溢出返回22。

静态部署只需主 `.wasm`，带索引的 `.a` 是私有构建输入；共享部署还需库 `.wasm` 和模板中精确的 `record_codec` preload 标识。模块均关闭 ROS，未追加 WASI 权限，基本标准流仍可用。本例不验收 Humble 原生 ROS、机器人目标、取消、其他语言组合或一般模块图。
