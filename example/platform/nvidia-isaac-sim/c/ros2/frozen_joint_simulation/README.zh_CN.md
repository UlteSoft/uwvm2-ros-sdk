# Isaac Sim 冻结关节程序示例

本源码候选选择 Isaac Sim 6.0.0、Franka/Panda、ROS 2 Jazzy 和 Ubuntu 24.04 x86_64。实现与资格状态以 [英文说明](README.en.md) 为准。九项必需场景目前全部 BLOCKED：仍需真实 rcl/rclcpp Wasm 库、执行中 Wasm 的回调和反馈路径，以及统一 VM 权限/会话/原生操作事件。现有 portable C 算法不能证明这些 legacy 库已迁移。

安装完整 SDK、LLVM 23/WASI 原始依赖、官方场景/模型和 ROS 控制器。在经过 VM 所有者准入的 Linux 仿真环境中配置 `UWVM_ROS_SDK_ROOT`、`UWVM_ROS_SIMULATION_ADMISSION` 和 `UWVM_ROS_SIMULATION_DEPLOYMENT`，再从本目录执行：

```sh
xmake
xmake test
```

必须保留 SDK 根目录的 `xmake.lua` 和标准 repository 分派。`xmake` 保留原始 `portable-joint-step-v0-1-0` 输出名，使用真实 SDK 编译器构建同一 C 程序，校验候选产物后消费 SDK 原始冻结 Wasm。`xmake test` 的构建阶段仅校验已有产物，不重新编译、链接或替换。完整 SHA256 必须始终为 `c0d886e864243938999e4adf4c0f4ce6fb3c2c001723b855cd8b203bfafe2043`。

部署配置须明确绑定官方场景、USD 模型、robot-state-publisher、真实 JTC、已发布的原生 Host 和 VM。控制器映射、单位、边界和人工授权均在 Wasm 外。当前测试入口不导入宿主 ROS 客户端，也不启动原生替代路径。旧原生见证源码只保留在 VM 资格资料中；其中订阅及 ListControllers 查询没有提交业务目标，但也不能代替 guest 回调、状态和传感数据验收。

需要受支持的 RTX 硬件及至少 16 GiB 显存；V100 不满足此 Isaac Sim 配置。缺少依赖、准入、部署、已发布 Host、运行时事件或必需场景时，总体验收必须非成功并明确报告 BLOCKED；零项执行和跳过不得变成通过。执行仅限软件仿真。

反向传感器通路、其余型号/模式/ROS 版本/ABI/语言、原生性能，以及最终真实世界模型、复杂多语言和跨厂商 SDK 示例仍是必需工作。普通聊天、VLM 元数据或视频不能代替世界模型闭环。
