# 原始 Array：c 消费 cpp static

此示例接收完整原始 `isaac_ros_apriltag_interfaces/msg/AprilTagDetectionArray`，保留全部检测、角点、位姿和协方差，重新编码后交给真实 cpp 库。输出含完整线格式、检测数量、带符号 id 总和与覆盖全部字节的 FNV32，不自动归一化四元数。

设置 `UWVM_ROS_SDK_ROOT` 后执行 `xmake f -a wasm32`、`xmake -vD -j1`。`-a wasm64` 选择真实 memory64/table64，不支持的目标直接报错。两端使用统一锁定的 LLVM 23 和普通 `set_kind`、`add_deps`。构建不需要原生 ROS 或 uwvm2-ros；运行才需要匹配的原生产品。

归档含两个真实可重定位对象。链接只提取摘要实现，排除带未定义哨兵的独立成员。库同步借用同一内存中的输入，不保留指针；畸形输入不得修改输出摘要。部署只需要 main.wasm。

阅读 `DEPLOYMENT.zh_CN.md`。0 模式正常关闭，1 模式重开后旧句柄返回 9，2 模式撤销后重开返回 125。拒绝获取返回 13 且不建立原生订阅。源码可见不等于两个位宽、x86/QEMU、GPU/NITROS 或真实 ARM 编译宿主已验收。
