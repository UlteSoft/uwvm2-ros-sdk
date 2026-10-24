# TinyGo original_array_echo

设置 UWVM_ROS_SDK_ROOT，用 xmake f -a wasm32 配置、xmake -vD -j1 构建。
TinyGo 0.38.0 使用 LLVM 19.1.2 代码生成，Go 1.24.2 源码支持，公共 LLVM 23.1.4
支持汇编与最终链接，部署产物为单一真正 Wasm。

复制 main-random-realtime-opt-in.deployment.template.json 为操作员文件，替换 runtime/gateway 路径并审查参数和确切 main 模块
权限。设置 UWVM_ROS_RUN_CONFIG 后 xmake run original_array_echo。构建与运行分开，均不增权。

仅 main 有 realtime-clock/random 和模板中的原始 Array 别名、RIHS/codec、QoS 及边界。
独立 ROS-denied 模板无 ROS 别名，观察 13。receive 关闭并查旧句柄 9，echo 发布 20 个
完整 Array，revoke 查旧句柄 9 和重开 125。完整嵌套、四角点和全部协方差保留；
仅空 11 允许有限等待，主操作、退休和清理分别记录。

有限范围为 x86/QEMU AArch64 的 wasm32 binary；其他宽度、库种类、原生类型、GPU/NITROS/模拟器及 ARM 宿主编译需独立验收。
