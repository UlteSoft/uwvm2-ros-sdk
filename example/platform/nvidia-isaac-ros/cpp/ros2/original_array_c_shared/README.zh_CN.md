# 原始 Array：cpp 消费 c shared

此示例接收完整原始 `isaac_ros_apriltag_interfaces/msg/AprilTagDetectionArray`，保留全部检测、角点、位姿和协方差，重新编码后交给真实 c 库。输出含完整线格式、检测数量、带符号 id 总和与覆盖全部字节的 FNV32，不自动归一化四元数。

设置 `UWVM_ROS_SDK_ROOT` 后执行 `xmake f -a wasm32`、`xmake -vD -j1`。`-a wasm64` 选择真实 memory64/table64，不支持的目标直接报错。两端使用统一锁定的 LLVM 23 和普通 `set_kind`、`add_deps`。构建不需要原生 ROS 或 uwvm2-ros；运行才需要匹配的原生产品。

共享模块自有内存/表，字节、索引、代际令牌通过标量 ABI 传递，不跨模块传指针或 ROS 句柄。封存禁止写、关闭禁止读；陈旧写返回 9。ROS/时钟拒绝探针返回 13/76 且时钟输出不变。默认 WASI 保留基本标准流。部署需要 main 和 array_c 两个 Wasm。

阅读 `DEPLOYMENT.zh_CN.md`。0 模式正常关闭，1 模式重开后旧句柄返回 9，2 模式撤销后重开返回 125。拒绝获取返回 13 且不建立原生订阅。源码可见不等于两个位宽、x86/QEMU、GPU/NITROS 或真实 ARM 编译宿主已验收。
