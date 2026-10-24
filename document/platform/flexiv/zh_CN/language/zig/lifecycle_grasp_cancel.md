# 真实 Zig Flexiv Jazzy v2.2 Grasp 取消

完整保留 force 目标，current_width/current_force/moving 三字段反馈，以及 success/error 结果。两个独立真实原生客户端同时保持两个目标，按原始 UUID 取消 A；A 终态后 B 须继续反馈，再以 B 的独立 UUID 取消。guest ID 不透明，须以完整唯一目标字节关联原生 UUID 日志。

提前 guest kind4 须返回17；收到真实原生取消后 kind4 发出完整 false/UTF-8 结果，对应原生 CANCELED5，不以 abort 替代。own-only 句柄调用 cancel-any、打开未授权别名须返回13。本例是入站服务端生命周期，不验收 Flexiv 出站 own-cancel 客户端。

设置 UWVM_ROS_SDK_ROOT；先 `xmake f --plat=wasm-wasip1 --arch=wasm32`（或 wasm64），再 `xmake -vD main`。手工选择源码配对 Jazzy runtime/gateway 后执行 `UWVM_ROS_RUN_CONFIG=deployment.json xmake run main`。保留模板中五通道全部 QoS、原始 RIHS/codec、有限配额和单调时钟授权。不创建 ROS2 master，不添加隐式权限；禁用策略须返回13且不启动 gateway。

真实 Zig0.14.1 自带 LLVM19.1.7；公共 LLVM23 仅编译标量启动桥并链接 WASI。公共编译器适配层版本1、VM、dispatcher 与有限 Cursor codec 均未修改，记录与类型 API 均为 Zig，无 C codec 替代。两位宽同一 Wasm 在 x86/QEMU AArch64 上验证，保留完整 UUID/目标/反馈/结果/取消及端点和进程回收。

仅验收原始 Jazzy v2.2 离线接口，不验收 Humble、硬件、全部 Flexiv profile/语言、出站客户端或发布完成；不得把 Jazzy 回执改名为 Humble。
