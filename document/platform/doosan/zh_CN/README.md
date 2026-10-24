# doosan SDK

本候选层恢复旧 SDK 的完整独立源码域。目录定义、常量、字段顺序、固定数组和有限动态容量均保留；原始许可证位于 `share/platform/doosan/catalogs/`。本层不安装厂商原生驱动，不推断控制器固件兼容性。

| Domain | Backend | Original definitions | Expanded records |
| --- | --- | ---: | ---: |
| `doosan-ros1-aws-robot-complete` | ros1 | 67 | 125 |
| `doosan-ros1-aws-simulation-complete` | ros1 | 67 | 125 |
| `doosan-ros1-doosan-robotics-patch-1-complete` | ros1 | 150 | 280 |
| `doosan-ros1-kinetic-devel-descrepted-complete` | ros1 | 118 | 227 |
| `doosan-ros1-main-complete` | ros1 | 150 | 280 |
| `doosan-ros1-master-complete` | ros1 | 149 | 278 |
| `doosan-ros1-melodic-devel-complete` | ros1 | 150 | 280 |
| `doosan-ros1-noetic-devel-complete` | ros1 | 150 | 280 |
| `doosan-ros1-patch-1-complete` | ros1 | 150 | 280 |
| `doosan-ros1-song-ms-patch-1-complete` | ros1 | 150 | 280 |
| `doosan-ros2-humble-complete` | ros2 | 164 | 310 |
| `doosan-ros2-jazzy-complete` | ros2 | 164 | 310 |

## 安装与配置

将候选目录合入相同版本的公共 SDK。只消费中央 LLVM 23、语言编译器、解释器和 Xmake；厂商目录不复制任何语言引擎。构建所需主机依赖由 SDK 的可校验清单提供。当前集成和运行证据见工程交付中的 coverage.json；未执行路线不能视为完成。

`set_language`, `set_ros_platform`, `set_ros1_version`/`set_ros2_version`, `set_arch` and `set_plat` are the public declarations. `ros.sdk.vendor_version` selects an exact domain; `ros.sdk.vendor_binding` points to its language data descriptor. `ros.sdk.model`, `ros.sdk.controller` and `ros.sdk.transport` describe the independently admitted native deployment. These fields do not grant permissions.

`wasm32` 与 `wasm64` 必须明确选择，目标平台为 `wasm-wasip1`。不得在 memory64 编译失败时退回 wasm32。WASI preview、线程和异常处理扩展需要公共目标清单的独立证明。

## 类型、服务与 Action

完整字段、常量、默认值、源身份和每种语言的类型名见 `catalog.md`、每种语言的 `API.md` 和分发的 `domains/*.ir.json`。字节是 SDK 的有限规范格式；它不是 CDR、ROS1 网络字节或原生内存布局。

The retained C/C++/Rust/JavaScript/AssemblyScript/TinyGo `bounded_interfaces` preserve original typed service/action owner semantics. Requests, responses, action goals, results and feedback remain distinct complete types. Server request tickets are not capability handles. Submit admission is not completion; idle 11 is not a delivered event; a cancellation acknowledgement is not a terminal result. Retain the exact owned goal/request ID and keep primary, RPC, length, required-capacity and cleanup outcomes separate. Never replay a request after timeout or uncertain physical outcome. New language record modules require their central transport-owner integration before native service/action acceptance.

## 验证范围

例子是本地完整类型 codec 教程，真实执行源码的编码和解码；不会把默认状态伪装成机器人观测。保留的实际 I/O、服务和 Action 应用流程位于 `src/platform/doosan/flows/`。独立原生 ROS 夹具属于工程验证，不属于安装依赖。xmake run 必须使用已安装 uwvm2-ros 和用户手动配置的部署/权限；代码不会自动授予能力。

## 固定上游来源

- [DoosanRobotics/doosan-robot @ 19d520d7df59](https://github.com/DoosanRobotics/doosan-robot/tree/19d520d7df599dc9751f3e8a41337c399c418a47)
- [DoosanRobotics/doosan-robot @ 1d14369e6bd5](https://github.com/DoosanRobotics/doosan-robot/tree/1d14369e6bd52617b5d75e5aa9382a392833053c)
- [DoosanRobotics/doosan-robot @ 28b6a17692ee](https://github.com/DoosanRobotics/doosan-robot/tree/28b6a17692eec60c27ad89f6fba82239276b750b)
- [DoosanRobotics/doosan-robot @ 2c12e859aed3](https://github.com/DoosanRobotics/doosan-robot/tree/2c12e859aed34c492706fa053af5b3304ce33c86)
- [DoosanRobotics/doosan-robot @ 5a21f1c52b4d](https://github.com/DoosanRobotics/doosan-robot/tree/5a21f1c52b4d6e48ba3f95c6bc1dd774932ec922)
- [DoosanRobotics/doosan-robot @ 5f87fe520f96](https://github.com/DoosanRobotics/doosan-robot/tree/5f87fe520f966ef22a50d456627e802fd2d0b7ce)
- [DoosanRobotics/doosan-robot @ 60f17b306013](https://github.com/DoosanRobotics/doosan-robot/tree/60f17b3060136f96b8c6260e1b2dda6ab238e570)
- [DoosanRobotics/doosan-robot @ 9c4ecd726d07](https://github.com/DoosanRobotics/doosan-robot/tree/9c4ecd726d075bc1a8de3fdf639cc4d557d4b9cb)
- [DoosanRobotics/doosan-robot @ cd0226d777d9](https://github.com/DoosanRobotics/doosan-robot/tree/cd0226d777d92422cd8250fe35c18946bc7d24cc)
- [DoosanRobotics/doosan-robot2 @ 6c5f3ba622bf](https://github.com/DoosanRobotics/doosan-robot2/tree/6c5f3ba622bfa9d6f9cffebf21fa44f57db55b48)
- [DoosanRobotics/doosan-robot2 @ e5e2d7f4fe11](https://github.com/DoosanRobotics/doosan-robot2/tree/e5e2d7f4fe11865b9ddf4ad658362bc8e73296e0)
- [ros/std_msgs @ 34198520757d](https://github.com/ros/std_msgs/tree/34198520757d1aab358118a0ef294fe2609fde33)
- [ros2/common_interfaces @ 08434490d3e4](https://github.com/ros2/common_interfaces/tree/08434490d3e4abd37ccc5462cdde69b88853b5b8)
- [ros2/common_interfaces @ a941f14bb318](https://github.com/ros2/common_interfaces/tree/a941f14bb318d8d904505ed935ccbb97f24a70a4)
