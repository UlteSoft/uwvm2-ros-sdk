# TypeScript original_array_revoke

本独立程序使用真正 TypeScript 源码，由唯一 Microsoft TypeScript 5.9.3 严格检查，
发射 ESM 后由已有共享 QuickJS Wasm 执行。部署产物为单一 Wasm。本原生程序已通过真实严格编译和 x86/QEMU AArch64 原始 ROS2 通信验证，
包括显式 ROS 拒绝策略；范围为 wasm32 binary 和完整原始 Array。

receive 订阅一次，解码完整 AprilTagDetectionArray，显式关闭并观察 Host 旧句柄拒绝 9。
echo 先关闭订阅，再打开另一明确发布别名，按 100 ms 间隔有意发布 20 个完整值。
revoke 显式撤销原别名，观察原句柄 9 和实际再次打开拒绝 125。

客体逐个比较所有活动原始数值，使用 Object.is 保留负零，包含四角点、完整嵌套姿态、
四元数和每个检测的 36 个协方差，也检查字符串及数组长度。两个检测时运行计算出的
numeric_fields_checked 为 124，一般公式为 2+61*N；四元数不归一化。wire_hex 输出
每个规范字节，primary、cleanup、retirement、stale、reopen、published 分别保留事实。
句柄始终为精确 BigInt。旧句柄探针仅通过已有公共 JS 调用方法同步借用真实原 ID，
不制造第二个 capability owner。

打开和每次发布均只执行一次，仅真实空队列 11 允许最多 1000 次、每次 20 ms 的等待。
等待失败明确返回；撤销失败仍尝试一次显式 close，并保留独立清理状态。本地非法值
22，别名拒绝 13；不依赖终结器或隐藏的效应重放。

设置 UWVM_ROS_SDK_ROOT 为安装后的 SDK 根，用 xmake f -a wasm32 配置、
xmake -vD -j1 构建。选择 binary、typescript、nvidia-isaac-ros、ROS2 Jazzy、dds、
wasm-wasip1；run.autobuild=false 分开构建和运行。共享前端自动恢复已锁定构建依赖。
本文执行范围为 wasm32 binary；memory64 和 static/shared 组合需独立证明。

原生运行需另装匹配的真实 ROS2 运行时、网关与原始 AprilTag 类型支持。编辑可移植
部署模板中的 runtime/gateway 路径及确切别名，设置 UWVM_ROS_RUN_CONFIG 后运行
xmake run original_array_revoke。正例仅给 main 的原始别名、类型身份、规范 codec 身份、
QoS 及有界资源权限；ROS-denied 模板保留模块启用但无别名，观察普通 open 拒绝。

两模板只给 main realtime-clock 和 monotonic-clock：QuickJS 初始化使用 gettimeofday，
公共暂停服务使用单调 WASI 定时器；默认标准流仍保留。不会改变默认/全局策略，
构建与运行钩子不会自动增加权限。

原始类型 isaac_ros_apriltag_interfaces/msg/AprilTagDetectionArray 来自
7bec6ae5dbb2faa11617f40226e8932a4a94e6e4。最大规范体 9872 字节，最多 16 检测，
严格有界 UTF-8、每个检测四角点和 36 个协方差。策略保留原生 RIHS 与规范 codec 身份。
小端规范线序与原生 ROS CDR 分开。验收用受控原生 peer，在串行 64 GiB/零 swap
cgroup 内逐字段核对 x86 与 QEMU AArch64。原生 ROS 传输与 GPU/NITROS/模拟器资格分开。
