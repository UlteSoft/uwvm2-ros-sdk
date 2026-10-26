# Portable robot capability 源码预览 0.1.0

算法已实际编译并通过结构检查。冻结产物为
`lib/platform/ros/portable/v0.1.0/joint-step.wasm`，共 4,449 字节，完整 SHA256 为
`c0d886e864243938999e4adf4c0f4ce6fb3c2c001723b855cd8b203bfafe2043`。
编译器、源码及执行凭据身份见
`share/platform/ros/portable/artifacts/joint-step-v0.1.0.json`。

拟议的 `uwvm_portable_robot_v1` 仍需 VM 负责人接入；SDK 头文件不会注册
host 模块、资源或权限。native21/native22 的有限结果不涵盖此接口。
VM 执行、原生 ROS、官方仿真及跨平台同字节复用均尚未验收。

首个能力 `joint.position.bounded.v1` 只覆盖软件仿真中 1–16 个有限旋转
关节的一次位置小步，要求新鲜状态、明确授权、真实控制器完成与后续状态确认。
不支持笛卡尔、力矩/力、导航、无限连续/直线关节，也不授权实体机器人操作。
发布 topic 或 action 目标被接受都不能直接记为动作完成。

版本化的 `contract.json`、`abi.json`、`wire.json`、`adapter.schema.json`
定义接口。平台、ROS release/ABI/传输、资源与关节名字、顺序/符号/零位、
弧度与微弧度换算、限位、新鲜度以及权限都位于 Wasm 外。关节空间明确声明，
不隐含笛卡尔 frame 转换。映射元数据不授予权限；VM 每次调用仍须验证模块、
owner、策略、adapter、epoch 与真实资源来源。

C 示例位于 `example/platform/ros/portable/v0_1_0/joint_step`。它只打开
逻辑角色 `robot`，读取描述与状态，按外部限位每轴最多走 10,000 微弧度，
提交一次、等待一次、验证新鲜反馈并关闭一次。错误或不确定结果不自动重放。
一秒目标时长属于算法决定，adapter 必须再按原生限速等约束明确接纳。

开发者复现构建须通过 Linux 作业准入，沿已有公共 Xmake C/LLVM23 路径执行。
所有平台直接消费已冻结的这一份产物，运行前后核对相同 SHA。相同源码重编译
不能替代复用证据；字节或 import 的任何变化都需要新的产物版本。

正式验收必须启动官方 ROS/vendor 仿真节点，保留 topic 状态、控制器 service、
action 结果和独立观测。官方 [mock components](https://control.ros.org/jazzy/doc/ros2_control/hardware_interface/doc/mock_components_userdoc.html)
主要验证软件命令/状态链路，不能当作物理动力学或硬件安全证明。
[RRBot](https://control.ros.org/jazzy/doc/ros2_control_demos/example_1/doc/userdoc.html)
有官方 trajectory controller 配置；[R6Bot](https://control.ros.org/jazzy/doc/ros2_control_demos/example_7/doc/userdoc.html)
默认教程控制器不同，必须明确兼容性与缺口。测试驱动、配置和结果均留在 VM
仓库，不放入 SDK。不得以手写 echo 或假响应冒充正式仿真。

每个真实 VM 进程仍强制 checked 生成链自检、崩溃栈恢复、配对 unwind、来源
与权限检查，不提供公开 unwind 控制参数。CPU 架构、native/QEMU 正确性和
原生硬件性能分别验收；源码准备不能算其中任何一层通过。
