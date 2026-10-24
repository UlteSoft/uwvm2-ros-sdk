# YASKAWA 控制器与上游审计

[Yaskawa-Global/motoros2](https://github.com/Yaskawa-Global/motoros2/tree/41ac074a879bb9f75fd1f96618ce54b4899cfd1a), `41ac074a879bb9f75fd1f96618ce54b4899cfd1a`.

锁定 MotoROS2 支持 DX200/YRC1000/YRC1000micro；对应最低固件为 DN2.44.00-00、YAS2.80.00-00、YBS2.45.00-00。源文档列出 Foxy/Galactic/Humble/Jazzy 与 Fast DDS。目录固定 motoros2_interfaces 0.2.0 的提交，不以较新 HEAD 替换。

轨迹最多 200 点，包含所有配置组/关节；第一点来自完整当前状态，不允许独立异步组或 partial goals，终端速度和加速度为零。start_traj_mode 会改变模式/驱动/作业，stop_traj_mode 不是活动目标的停止协议且可保留电机上电。industrial_core 锁定版本原始 ROS2 CMake 未导出六个历史服务；这些完整声明的保留不能算作 native server 或 typesupport。

完整原始资源、逐文件哈希和选择条件见 `share/platform/yaskawa/driver-audit.json`。本次不执行驱动、固件更新或实体控制器命令。
