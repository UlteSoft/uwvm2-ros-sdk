# franka / kotlin

此手册对应可审查源码候选。源码存在、编译通过、Wasm 执行和原生 ROS 观察分别验收；不能据此推断已全部完成。

安装完整 SDK 后设置 `UWVM_ROS_SDK_ROOT`。构建机只需预装 Xmake，编译器或解释器由公共的、SHA-256 锁定的 SDK 依赖恢复。厂商目录不携带另一份语言引擎。

独立示例通过 `set_language`、`set_ros_platform`、`set_ros1_version` 或 `set_ros2_version`、`set_arch` 和 `set_plat` 声明构建。`ros.vendor.profile` 必须选择下面的精确接口版本；不同发行版不能自动替换。

```lua
set_language("kotlin")
set_ros_platform("franka")
set_ros1_version("noetic")
set_values("ros.vendor.profile", "ros1")
set_arch("wasm32")
set_plat("wasm-wasip1")
```

- `ros1`: `ros1` / `noetic`, `franka-ros1-complete`.
- `ros2`: `ros2` / `jazzy`, `franka-ros2-complete`.

`wasm64` 必须生成并执行实际 memory64 模块；编译器拒绝或运行缺口保持开放，不回退到 wasm32。WASI 线程、异常及预览版本必须由公共目标配置显式支持。

## API 与所有权

完整字段、常量、服务请求/响应和动作目标/反馈/结果见对应语言目录旁的 API.md 及 share 中的 records.json。

调用者拥有值和缓冲区。编码前验证整个值；解码必须消耗完整输入。容量以字节计，字符串约束是 UTF-8 字节数，序列约束是元素数。不能将 codec identity 当作原生 ROS 类型身份。

服务提交不代表完成；动作取消确认不删除目标，必须收到匹配的终态结果。每个角色的别名由用户独立授权。错误 11 是空闲，22 是数据/参数无效，90 是容量不足；保留原始错误与清理错误。禁止隐式重发或扩大权限。

Franka ROS 关节角为弧度，夹爪宽度/容差为米、速度为米每秒、力为牛顿。ROS1 的 impedance 与 ROS2 的 stiffness、EE/K 与 TCP/stiffness frame 保持各自原名，不互换字段。PTPMotion 保留完整七关节输入和 TargetStatus。

## 源码与示例

- `include/platform/franka/kotlin/ros1/franka-ros1-complete/Records.kt`.
- `include/platform/franka/kotlin/ros2/franka-ros2-complete/Records.kt`.

- `example/platform/franka/kotlin/ros1/decode_state/main.kt`: `decode_state`, `franka_msgs/FrankaState`.
- `example/platform/franka/kotlin/ros1/validate_goal/main.kt`: `validate_goal`, `franka_gripper/GraspGoal`.
- `example/platform/franka/kotlin/ros1/inspect_response/main.kt`: `inspect_response`, `franka_msgs/SetCartesianImpedanceResponse`.
- `example/platform/franka/kotlin/ros2/decode_state/main.kt`: `decode_state`, `franka_msgs/msg/FrankaRobotState`.
- `example/platform/franka/kotlin/ros2/validate_goal/main.kt`: `validate_goal`, `franka_msgs/action/Grasp_Goal`.
- `example/platform/franka/kotlin/ros2/inspect_response/main.kt`: `inspect_response`, `franka_msgs/srv/SetCartesianStiffness_Response`.

C/C++/Objective-C/C FFI/Python/JS 的 observe 示例接收用户明确授予的主题别名并完整解码；其他语言的 decode_state 从运行时输入验证完整状态；validate_goal 从标准输入验证完整目标；inspect_response 检查完整响应/结果负载。后两个是 codec 应用，不能当作已完成原生服务/动作操作。每个目录有独立 xmake.lua，最终只部署一个 .wasm。

## 运行与验收

`xmake run` 使用已安装的 uwvm2-ros 及公共部署分派器。主题、服务、动作角色、时钟与文件权限必须由用户明确提供；构建不得自动授予或修改策略。需要分别核对 ROS1/ROS2 原生内容、拒绝权限、错误路径、清理、x86_64 和 QEMU AArch64 运行。硬件与真实控制回路尚未验收。
