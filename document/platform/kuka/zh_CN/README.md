# kuka SDK

本候选层恢复旧 SDK 的完整独立源码域。目录定义、常量、字段顺序、固定数组和有限动态容量均保留；原始许可证位于 `share/platform/kuka/catalogs/`。本层不安装厂商原生驱动，不推断控制器固件兼容性。

| Domain | Backend | Original definitions | Expanded records |
| --- | --- | ---: | ---: |
| `kuka-ros2-complete` | ros2 | 26 | 31 |

## 安装与配置

将候选目录合入相同版本的公共 SDK。只消费中央 LLVM 23、语言编译器、解释器和 Xmake；厂商目录不复制任何语言引擎。构建所需主机依赖由 SDK 的可校验清单提供。当前集成和运行证据见工程交付中的 coverage.json；未执行路线不能视为完成。

`set_language`, `set_ros_platform`, `set_ros1_version`/`set_ros2_version`, `set_arch` and `set_plat` are the public declarations. `ros.sdk.vendor_version` selects an exact domain; `ros.sdk.vendor_binding` points to its language data descriptor. `ros.sdk.model`, `ros.sdk.controller` and `ros.sdk.transport` describe the independently admitted native deployment. These fields do not grant permissions.

`wasm32` 与 `wasm64` 必须明确选择，目标平台为 `wasm-wasip1`。不得在 memory64 编译失败时退回 wasm32。WASI preview、线程和异常处理扩展需要公共目标清单的独立证明。

## 类型、服务与 Action

完整字段、常量、默认值、源身份和每种语言的类型名见 `catalog.md`、每种语言的 `API.md` 和分发的 `domains/*.ir.json`。字节是 SDK 的有限规范格式；它不是 CDR、ROS1 网络字节或原生内存布局。

The retained C/C++/Rust/JavaScript/AssemblyScript/TinyGo `bounded_interfaces` preserve original typed service/action owner semantics. Requests, responses, action goals, results and feedback remain distinct complete types. Server request tickets are not capability handles. Submit admission is not completion; idle 11 is not a delivered event; a cancellation acknowledgement is not a terminal result. Retain the exact owned goal/request ID and keep primary, RPC, length, required-capacity and cleanup outcomes separate. Never replay a request after timeout or uncertain physical outcome. New language record modules require their central transport-owner integration before native service/action acceptance.

## 验证范围

例子是本地完整类型 codec 教程，真实执行源码的编码和解码；不会把默认状态伪装成机器人观测。保留的实际 I/O、服务和 Action 应用流程位于 `src/platform/kuka/flows/`。独立原生 ROS 夹具属于工程验证，不属于安装依赖。xmake run 必须使用已安装 uwvm2-ros 和用户手动配置的部署/权限；代码不会自动授予能力。

## 固定上游来源

- [kuka-ros/kuka_drivers @ 15fbb6941356](https://github.com/kuka-ros/kuka_drivers/tree/15fbb6941356390c38bbd135a0676dfd96a050c0)
- [ros-controls/control_msgs @ 2eaaa5440d6d](https://github.com/ros-controls/control_msgs/tree/2eaaa5440d6dc2291601ea445b83015a663f5f88)
- [ros2/common_interfaces @ a941f14bb318](https://github.com/ros2/common_interfaces/tree/a941f14bb318d8d904505ed935ccbb97f24a70a4)
- [ros2/rcl_interfaces @ 7aa3caf43377](https://github.com/ros2/rcl_interfaces/tree/7aa3caf43377ea6ad615bc1040832e2c7566bfbe)
