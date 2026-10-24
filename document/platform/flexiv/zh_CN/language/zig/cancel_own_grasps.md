# 真实 Zig 原始 Flexiv Grasp：cancel_own_grasps

仅选择 Jazzy v2.2 原始 Action，完整保留 force、current_width/current_force/moving 反馈及 success/error 结果。出站客户端模块复用已封存原始记录与未修改的公共 ROS owner/Cursor，不改写旧输入，不新增编译器。

同时保持两个真实出站目标，own-only 精确取消 A，消费原生 CANCELED5/SDK kind4；A 结束后 B 继续反馈，再独立取消 B。own 句柄调用 cancel-any 和打开未授权别名须返回13，消费终态后再取消须返回9。取消 ACK 不等于终态。

使用 UWVM_ROS_SDK_ROOT，执行 `xmake f --plat=wasm-wasip1 --arch=wasm32`（或 wasm64）、`xmake -vD main`、`UWVM_ROS_RUN_CONFIG=deployment.json xmake run main`。手工选择源码配对 runtime/gateway，保留原始 RIHS/codec、五通道 QoS、各操作别名、有限配额和单调时钟授权，没有 cancel-any。原始状态与 cleanup 分开；仅 idle11 可有界重试观察，不重放效果。

真实 Zig0.14.1 自带 LLVM19.1.7；公共 LLVM23 仅启动和链接 WASI。在 x86/QEMU AArch64 上使用同一 Wasm，通过真实原生反馈及按原始 UUID 独立 GetResult 对比全部字段，保留 UUID/目标/完整字节关联和端点/进程回收。禁用策略须返回13且不创建 gateway。不用 C codec 或 abort 替代。

出站路线独立于已封存入站服务端，必须取得自己的真实回执后才验收。精确 Humble、其他 profile/语言、硬件和发布完成仍开放，不能改名 Jazzy 证据。
