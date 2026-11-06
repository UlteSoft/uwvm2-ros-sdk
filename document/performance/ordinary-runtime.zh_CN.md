# 普通执行的性能与调试隔离

普通运行的性能数据及五平台回归结果见
[运行时性能说明](https://github.com/UlteSoft/uwvm2-ros/blob/main/documents/runtime/ordinary-execution-performance.md)。

本轮测试实际执行了 SDK 的
[WAT static_math](../../example/language/wat/library_kinds/static_math.wat)
和 [C static_pointer_library](../../example/language/c/static_pointer_library/algorithm.c)。
算法编译为 Wasm 后通过 uwvm2-ros 执行；原生 ROS 程序仅用于独立性能对照。

WASI 测试必须先为目标模块显式创建、启用基础命名空间，再单独授予
stdio、时钟、随机数等实际需要的权限。ROS1、ROS2 的命名空间和每项
能力同样单独配置。普通运行、开发调试、发行诊断之间切换不会授予额外权限。
未配置的限额保持无限额；不要为基准测试隐式加上人为速率限制。

SDK 原生网关引用配套运行时的同步等待实现。更新运行时头文件后，应使用
现有 ROS 环境重新编译配套网关，才能获得 eventfd/timerfd 复用的收益。
复用的是空闲内核描述符，每次操作仍重新登记退出处理并执行权限、
配额、身份和报文验证；没有复用授权结果。取消和同步等待的语义保持不变。

原生 ROS、认证 IPC 和完整 Wasm 调用应分别测量。相同请求、响应字节、
服务端回调数量、预热和 QoS 必须一致，各路径的审计配置及 CPU 绑定必须明确记录。先完成构建
与正确性测试，再单独采样。可复用运行时仓库中的
test/0073.ros-tests/support/source/runtime_repair/run_ros_service_benchmark.py；
它使用当前的模块级权限参数，并校验实际的 64 GiB、零 swap cgroup。

仅在原生 x86_64 上采集 VTune 硬件 Hotspots 和 Microarchitecture Exploration。
QEMU 验证 i686、AArch64、ARM soft-float、ARM hard-float 的行为，不提供这些平台
的性能结论。开启调试、开启数据记录和普通运行应分别报告；关闭记录避免采集、
复制和格式化工作，但仍有状态检查，不能据此承诺每个工作负载零成本。

性能提升不代表消除了原生 ROS 与进程隔离调用之间的成本，也不代表所有 Wasm
特性已经追平 Wasmtime。具体的实测差距及适用范围以运行时说明为准。


调试器的 [数据监视、临时断点、回调和状态修改命令](https://github.com/UlteSoft/uwvm2-ros/blob/main/documents/runtime/debug-data-controls.md)
已用上述 SDK 示例在五种 Linux ABI 上验证。源码调试测试直接把 C 算法
编译成带 DWARF 的 Wasm；Wasm 与汇编测试使用实际 VM/JIT 停止点。
这些宿主管理能力不会成为 SDK 客体可以导入的接口。被调试模块仍需显式
启用其所需的 WASI/ROS 基础命名空间，并逐项取得业务权限。
