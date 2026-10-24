# MoonBit runtime link inputs

Use the common source-language producer in `tools/language/native/provider.lua` through ordinary `set_language("moonbit")`, `set_ros_platform(...)` and exact target configuration. Compiler, core IR and runtime inputs must have the matching pinned identities recorded by that producer. The C backend emits genuine generated C for the selected Wasm compiler; its `native` backend label does not mean the application is a host executable.

The retained source and notices describe their own upstream revision. They do not qualify an untested compiler/runtime combination, memory64, native ROS or AArch64. Build and execution acceptance is recorded for the exact delivered pair. Runtime deployment needs manually configured uwvm2-ros permissions.

MoonBit 通过统一 native 语言生产者与公共 Xmake 配置构建。必须使用匹配的编译器、core IR 和运行库摘要；C 后端生成的代码最终编译为 Wasm。原始源码与许可只说明其对应版本，不代表所有目标、原生 ROS 或 AArch64 已完成验收。旧的 Agibot 私有构建入口已经移出分发目录。
