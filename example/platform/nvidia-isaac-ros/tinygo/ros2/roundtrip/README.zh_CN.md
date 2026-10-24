# TinyGo roundtrip

设置 UWVM_ROS_SDK_ROOT，用 xmake f -a wasm32 配置、xmake -vD -j1 构建。
TinyGo 0.38.0 使用 LLVM 19.1.2 代码生成，Go 1.24.2 源码支持，公共 LLVM 23.1.4
支持汇编与最终链接，部署产物为单一真正 Wasm。

复制 main-random-opt-in.deployment.template.json 为操作员文件，替换 runtime/gateway 路径并审查参数和确切 main 模块
权限。设置 UWVM_ROS_RUN_CONFIG 后 xmake run roundtrip。构建与运行分开，均不增权。

仅 main 有 monotonic-clock/random，ROS 禁用且 grants 为空。roundtrip 可选 uint32 种子，
decode_argument 接受一个完整 hex，malformed_wire 检查正常值及截断/尾随拒绝。
成功输出每个线序字节，非法值 22、流失败 5 分别保留。

有限范围为 x86/QEMU AArch64 的 wasm32 binary；其他宽度、库种类、原生类型、GPU/NITROS/模拟器及 ARM 宿主编译需独立验收。
