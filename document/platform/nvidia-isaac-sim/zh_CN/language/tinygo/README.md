# nvidia-isaac-sim：TinyGo ROS2

组件模块提供完整有界原始记录，保留严格 UTF-8、有限浮点、序列/元组长度、时间戳
及独立默认值。组件公共入口为 nvidia-isaac-sim/tinygo/ros2/complete；NVIDIA 总入口需
显式选择 ros.vendor.component，原始 Array 原生组件为 nvidia-isaac-ros。
按原字段次序的小端规范线序与 ROS CDR 不同。

每组件有独立 roundtrip、decode_argument、malformed_wire。roundtrip 接受可选 uint32
种子并输出完整线序，decode_argument 接受一个完整精确 hex 参数，malformed_wire
验证正常往返及截断/尾随拒绝。本地非法值 22、流失败 5 分别保留。Isaac ROS 样本含
两检测、各四角点、全部协方差及不归一化的原四元数。

设置 UWVM_ROS_SDK_ROOT，用 xmake f -a wasm32 配置、xmake -vD -j1 构建。
TinyGo 0.38.0 自带 LLVM 19.1.2 代码生成，Go 1.24.2 提供源码支持，公共 LLVM 23.1.4
负责支持汇编和最终链接。Xmake 从锁定公共包离线恢复工具，输出单一 Wasm；
原生 ROS 是另行安装的运行依赖。

CPU 运行使用各例子的 main-random-opt-in.deployment.template.json。填写 runtime/gateway
路径及参数，设置 UWVM_ROS_RUN_CONFIG 后 xmake run。只向 main 手工授予
monotonic-clock/random，ROS 禁用且 grants 为空；默认基本标准流仍可用。

Isaac ROS 的 original_array_receive、original_array_echo、original_array_revoke 另用
main-random-realtime-opt-in 模板，仅 main 有 realtime-clock/random 和确切原始 ROS
别名、原生/codec 身份、QoS 与资源上限。独立 ROS-denied 模板无 ROS grants。
构建和运行钩子不会自动增加权限。

receive 关闭一次并观察真正旧句柄 9；echo 按 100 ms 间隔有意发布 20 个完整 Array；
revoke 检查旧句柄 9 和重开拒绝 125。仅空队列 11 允许有限轮询。主操作、退休及
清理状态分开；超时不撤销已被接纳的外部影响。

未改变的源码/Wasm 队列已有有限冷构建与 x86/QEMU AArch64 CPU/原生资格，简洁范围
见 share/platform/nvidia/development-capabilities.json。ROS1、memory64、static/shared、
其他原生类型、GPU/NITROS/模拟器和 ARM 宿主编译仍需单独验收。
