# 原始接口与版本兼容范围

下表列出固定的原始接口目录及对应测试发行版配置。分支名称、接口编译和 SDK 编解码通过，均不能单独证明完整驱动、控制器、固件或真机兼容。

| Domain | ROS | Fixture distribution | Expanded records | Original definitions |
| --- | --- | --- | ---: | ---: |
| universal-robots-ros1-complete | ros1 | noetic | 56 | 36 |
| universal-robots-ros1-trajectory-complete | ros1 | noetic | 64 | 41 |
| universal-robots-polyscopex-complete | ros2 | humble | 50 | 43 |
| universal-robots-ros2-complete | ros2 | humble | 108 | 67 |
| universal-robots-ros2-trajectory-complete | ros2 | humble | 116 | 73 |

## 固定来源

完整提交、目录 SHA-256、包版本与元数据来源见 `share/platform/universal_robots/compatibility.json`。原始定义按字节保留；常量、默认值、字段顺序、数组容量和字符串界限属于接口契约。

- [UniversalRobots/Universal_Robots_ROS_Driver README](https://raw.githubusercontent.com/UniversalRobots/Universal_Robots_ROS_Driver/bd14b5c533135886f4f85ef0cabd097a5e1b8d0f/README.md), commit `bd14b5c533135886f4f85ef0cabd097a5e1b8d0f`, SHA-256 `193e709380d0f2e667d0885dceef5ec14b3e8971161ddbe55a75b413dfd71235`.
- [UniversalRobots/Universal_Robots_ROS2_Driver README](https://raw.githubusercontent.com/UniversalRobots/Universal_Robots_ROS2_Driver/262330ed9b5467a17c8ceae09567991e22d13944/README.md), commit `262330ed9b5467a17c8ceae09567991e22d13944`, SHA-256 `9374f5ebf202e52b472cdbf9f6b5ca25bea9ddfff9dc488026ce075924945151`.
- [ur_dashboard_msgs 2.15.0](https://raw.githubusercontent.com/UniversalRobots/Universal_Robots_ROS2_Driver/262330ed9b5467a17c8ceae09567991e22d13944/ur_dashboard_msgs/package.xml), commit `262330ed9b5467a17c8ceae09567991e22d13944`, SHA-256 `27a8a960088486c28dc9c8518ffc9aaab09730b5d22213605495b88f70e84fab`.
- [ur_msgs 2.6.0](https://raw.githubusercontent.com/ros-industrial/ur_msgs/3c584014d9b228e0b2da819db0ca1d887c373e1d/package.xml), commit `3c584014d9b228e0b2da819db0ca1d887c373e1d`, SHA-256 `e2d839623cf79a8d8248e8e4cb8b192ee072a4011c57a377dab1112c3ed42748`.
- [urinterfaces 9.0.0](https://raw.githubusercontent.com/UniversalRobots/urinterfaces/e88cebb16503bcbe6e7385251e1f83b1fa54e9c8/package.xml), commit `e88cebb16503bcbe6e7385251e1f83b1fa54e9c8`, SHA-256 `e1839fe1f2dbc74635ee858c3c9d985a687aa8dccbd4b4a68686369e786b4bed`.

## 原生测试解释

原生 ROS 对等端测试必须与 Wasm 程序经 uwvm2-ros 的通信分开记录。在 Jazzy 上构建固定 Humble 接口仅验证该接口测试组合；不能扩大为完整 Humble 驱动支持。历史 Kinetic、Melodic、AWS 与补丁分支分别保留，不能按相同服务名称合并。KUKA 当前来源只含 ROS2；此目录没有推导 ROS1 接口。

部署时显式选择模型、控制器、原生类型与类型身份，并由用户配置权限。
