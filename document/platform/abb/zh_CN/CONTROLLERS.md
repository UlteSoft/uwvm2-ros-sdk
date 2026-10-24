# ABB 控制器与上游审计

[ros-industrial/abb_robot_driver](https://github.com/ros-industrial/abb_robot_driver/tree/d1678957d3792e6aa54582ff894db62b6a51dac0), `d1678957d3792e6aa54582ff894db62b6a51dac0`.

ROS1 驱动中的 RWS 只读状态、RAPID/文件/IO 服务、EGM 硬件接口与控制器生命周期属于不同功能。StateMachine Add-In 1.0/1.1、EGM 和智能夹爪指示决定附加服务是否存在。实际名称为 `joint_states`、`system_states`、`sm_addin/runtime_states`；能力别名需要操作员显式绑定。ROS2 消息目录来自单独锁定的 gbartyzel/abb_ros2_msgs，不能据此认定 PickNik 驱动具有同一接口或版本兼容。

文档声明 RobotWare [6.07.01,7.0)，但原始拒绝条件仅为 `major == 6 && minor < 7 && patch < 1`。该条件并没有完整执行文档区间；本 SDK 不以该检查通过证明控制器兼容。

完整原始资源、逐文件哈希和选择条件见 `share/platform/abb/driver-audit.json`。本次不执行驱动、固件更新或实体控制器命令。
