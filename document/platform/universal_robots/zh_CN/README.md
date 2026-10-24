# universal_robots SDK

本候选层恢复旧 SDK 的完整独立源码域。目录定义、常量、字段顺序、固定数组和有限动态容量均保留；原始许可证位于 `share/platform/universal_robots/catalogs/`。本层不安装厂商原生驱动，不推断控制器固件兼容性。

| Domain | Backend | Original definitions | Expanded records |
| --- | --- | ---: | ---: |
| `universal-robots-ros1-complete` | ros1 | 36 | 56 |
| `universal-robots-ros1-trajectory-complete` | ros1 | 41 | 64 |
| `universal-robots-polyscopex-complete` | ros2 | 43 | 50 |
| `universal-robots-ros2-complete` | ros2 | 67 | 108 |
| `universal-robots-ros2-trajectory-complete` | ros2 | 73 | 116 |

## 安装与配置

将候选目录合入相同版本的公共 SDK。只消费中央 LLVM 23、语言编译器、解释器和 Xmake；厂商目录不复制任何语言引擎。构建所需主机依赖由 SDK 的可校验清单提供。当前集成和运行证据见工程交付中的 coverage.json；未执行路线不能视为完成。

`set_language`, `set_ros_platform`, `set_ros1_version`/`set_ros2_version`, `set_arch` and `set_plat` are the public declarations. `ros.sdk.vendor_version` selects an exact domain; `ros.sdk.vendor_binding` points to its language data descriptor. `ros.sdk.model`, `ros.sdk.controller` and `ros.sdk.transport` describe the independently admitted native deployment. These fields do not grant permissions.

`wasm32` 与 `wasm64` 必须明确选择，目标平台为 `wasm-wasip1`。不得在 memory64 编译失败时退回 wasm32。WASI preview、线程和异常处理扩展需要公共目标清单的独立证明。

## 类型、服务与 Action

完整字段、常量、默认值、源身份和每种语言的类型名见 `catalog.md`、每种语言的 `API.md` 和分发的 `domains/*.ir.json`。字节是 SDK 的有限规范格式；它不是 CDR、ROS1 网络字节或原生内存布局。

The retained C/C++/Rust/JavaScript/AssemblyScript/TinyGo `bounded_interfaces` preserve original typed service/action owner semantics. Requests, responses, action goals, results and feedback remain distinct complete types. Server request tickets are not capability handles. Submit admission is not completion; idle 11 is not a delivered event; a cancellation acknowledgement is not a terminal result. Retain the exact owned goal/request ID and keep primary, RPC, length, required-capacity and cleanup outcomes separate. Never replay a request after timeout or uncertain physical outcome. New language record modules require their central transport-owner integration before native service/action acceptance.

## 验证范围

例子是本地完整类型 codec 教程，真实执行源码的编码和解码；不会把默认状态伪装成机器人观测。保留的实际 I/O、服务和 Action 应用流程位于 `src/platform/universal_robots/flows/`。独立原生 ROS 夹具属于工程验证，不属于安装依赖。xmake run 必须使用已安装 uwvm2-ros 和用户手动配置的部署/权限；代码不会自动授予能力。

## 固定上游来源

- [UniversalRobots/Universal_Robots_ROS2_Driver @ 262330ed9b54](https://github.com/UniversalRobots/Universal_Robots_ROS2_Driver/tree/262330ed9b5467a17c8ceae09567991e22d13944)
- [UniversalRobots/Universal_Robots_ROS_Driver @ bd14b5c53313](https://github.com/UniversalRobots/Universal_Robots_ROS_Driver/tree/bd14b5c533135886f4f85ef0cabd097a5e1b8d0f)
- [UniversalRobots/urinterfaces @ e88cebb16503](https://github.com/UniversalRobots/urinterfaces/tree/e88cebb16503bcbe6e7385251e1f83b1fa54e9c8)
- [ros-controls/control_msgs @ 36e2e30551e3](https://github.com/ros-controls/control_msgs/tree/36e2e30551e3f2bfd9e55fca553f1ef019f4e4b1)
- [ros-controls/control_msgs @ 4418bbf3efda](https://github.com/ros-controls/control_msgs/tree/4418bbf3efda12828795e4bb011742133c67a6e2)
- [ros-industrial/ur_msgs @ 3c584014d9b2](https://github.com/ros-industrial/ur_msgs/tree/3c584014d9b228e0b2da819db0ca1d887c373e1d)
- [ros-industrial/ur_msgs @ 6c6dc66c63bd](https://github.com/ros-industrial/ur_msgs/tree/6c6dc66c63bd551e3985281739add762bfaa3aa9)
- [ros/common_msgs @ 092bc230c815](https://github.com/ros/common_msgs/tree/092bc230c8153dd4cfee0c84c9796cc7e6b09fdb)
- [ros/std_msgs @ 34198520757d](https://github.com/ros/std_msgs/tree/34198520757d1aab358118a0ef294fe2609fde33)
- [ros2/common_interfaces @ 08434490d3e4](https://github.com/ros2/common_interfaces/tree/08434490d3e4abd37ccc5462cdde69b88853b5b8)
- [ros2/rcl_interfaces @ 82776fc9068d](https://github.com/ros2/rcl_interfaces/tree/82776fc9068d1e0cd4af11c2e2700195994b2eb1)
