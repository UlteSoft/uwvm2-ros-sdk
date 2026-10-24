# 真实 Zig 原始 Grasp：cancel_own_grasps

完整保留 width、epsilon.inner/outer、speed、force，原始零字段反馈，以及 success/error 两个结果字段。native_grasp.zig 仅组合未修改的公共 ROS owner 和有限 Cursor codec，不包含编译器、VM、dispatcher 或 C 序列化替代。

同时保持两个真实出站目标；两者反馈后以 own-only 取消 A，消费取消终态，保留 A 结束后仍活动 B 的反馈，再单独取消 B。取消 ACK 与终态分开。own 句柄调用 cancel-any、打开未授权别名须返回13，消费终态后再次取消须返回9。原生 PREEMPTED2/SDK kind4，不用 abort 替代。

设置 UWVM_ROS_SDK_ROOT；执行 `xmake f --plat=wasm-wasip1 --arch=wasm32`（或 wasm64），再执行 `xmake -vD main`。手工选择源码配对的 Noetic runtime/gateway 后，以 `UWVM_ROS_RUN_CONFIG=deployment.json xmake run main` 运行。模板只授权明确别名、原始类型/MD5/codec 与有限配额，没有 cancel-any。单调时钟权限仅用于有界等待；逆序关闭 owner，独立保留 cleanup。

Zig0.14.1 使用实测自带 LLVM19.1.7；公共 LLVM23 仅编译标量启动桥并链接 WASI。记录、codec、操作决定、状态与日志均由 Zig 实现。wasm64 时钟使用 Uwvm 明确扩展的 Preview1 后缀导入，不冒充上游 WASI 标准。禁用策略须返回13且不启动 gateway。

保留完整原生 Goal ID、全部字段/字节对比、反馈/结果/取消及端点和进程回收。guest ID 不透明，只通过完整唯一目标字节与原生身份关联。本例仅验收原始 Noetic 离线接口、两位宽和 x86/QEMU AArch64。精确 Humble、硬件、其他语言及历史 Writer/Reader 接口仍不验收。不会重跑原有 Service 或 r79 的24项矩阵。
