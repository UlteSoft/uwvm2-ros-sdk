# kinova / r

此手册对应可审查源码候选。源码存在、编译通过、Wasm 执行和原生 ROS 观察分别验收；不能据此推断已全部完成。

安装完整 SDK 后设置 `UWVM_ROS_SDK_ROOT`。构建机只需预装 Xmake，编译器或解释器由公共的、SHA-256 锁定的 SDK 依赖恢复。厂商目录不携带另一份语言引擎。

独立示例通过 `set_language`、`set_ros_platform`、`set_ros1_version` 或 `set_ros2_version`、`set_arch` 和 `set_plat` 声明构建。`ros.vendor.profile` 必须选择下面的精确接口版本；不同发行版不能自动替换。

```lua
set_language("r")
set_ros_platform("kinova")
set_ros2_version("humble")
set_values("ros.vendor.profile", "ros2_humble")
set_arch("wasm32")
set_plat("wasm-wasip1")
```

- `ros2_humble`: `ros2` / `humble`, `mobile-fjt-humble-complete`.

`wasm64` 必须生成并执行实际 memory64 模块；编译器拒绝或运行缺口保持开放，不回退到 wasm32。WASI 线程、异常及预览版本必须由公共目标配置显式支持。

## API 与所有权

完整字段、常量、服务请求/响应和动作目标/反馈/结果见对应语言目录旁的 API.md 及 share 中的 records.json。

调用者拥有值和缓冲区。编码前验证整个值；解码必须消耗完整输入。容量以字节计，字符串约束是 UTF-8 字节数，序列约束是元素数。不能将 codec identity 当作原生 ROS 类型身份。

服务提交不代表完成；动作取消确认不删除目标，必须收到匹配的终态结果。每个角色的别名由用户独立授权。错误 11 是空闲，22 是数据/参数无效，90 是容量不足；保留原始错误与清理错误。禁止隐式重发或扩大权限。

ROS FollowJointTrajectory 使用弧度及 SI 导数；原生 Kortex 2.8.0 protobuf 使用自身单位（包括度），二者不重解释或隐式换算。保留 Gen3 6/7 自由度验证和完整原生 RPC 包装；原生路由不链接进 Wasm。

## 源码与示例

- `include/platform/kinova/r/ros2/mobile-fjt-humble-complete/records.R`.

- `example/platform/kinova/r/ros2/humble/decode_state/main.R`: `decode_state`, `sensor_msgs/msg/JointState`.
- `example/platform/kinova/r/ros2/humble/validate_goal/main.R`: `validate_goal`, `control_msgs/action/FollowJointTrajectory_Goal`.
- `example/platform/kinova/r/ros2/humble/inspect_response/main.R`: `inspect_response`, `control_msgs/action/FollowJointTrajectory_Result`.

C/C++/Objective-C/C FFI/Python/JS 的 observe 示例接收用户明确授予的主题别名并完整解码；其他语言的 decode_state 从运行时输入验证完整状态；validate_goal 从标准输入验证完整目标；inspect_response 检查完整响应/结果负载。后两个是 codec 应用，不能当作已完成原生服务/动作操作。每个目录有独立 xmake.lua，最终只部署一个 .wasm。

## 运行与验收

`xmake run` 使用已安装的 uwvm2-ros 及公共部署分派器。主题、服务、动作角色、时钟与文件权限必须由用户明确提供；构建不得自动授予或修改策略。需要分别核对 ROS1/ROS2 原生内容、拒绝权限、错误路径、清理、x86_64 和 QEMU AArch64 运行。硬件与真实控制回路尚未验收。

共享 R wire 只接受有限浮点；三个 Flexiv v1 正无穷分支不生成错误绑定。完整 GNU R Wasip1 端口仍需公共 Fortran/base 启动及执行验收。

[R binary connection semantics](https://www.stat.ethz.ch/R-manual/R-devel/library/base/html/connections.html).

每个命名空间的 `$records[[symbol]]` 提供 `$new(values=list())`、`$decode(bytes)`、`$encode(value)`。new 返回带原始类型 class 的完整字段列表；默认值独立分配，但必须通过 encode 验证后才能使用。decode 只接受完整 raw 向量，返回完整原始值，拒绝截断及尾随字节。encode 借用稳定值，返回新分配的完整 raw 向量；失败以 R condition 停止，没有部分输出。`$constants`、`$native_type`、`$codec_identity` 与最小/最大字节数可直接查询；native_identity 为 NULL 表示尚未绑定。

32 位整数使用可精确表示的 integral numeric，避免 R 的 NA 整数哨兵；64 位整数始终使用共享 `$from_decimal(text,signed)` / `$to_decimal(word)` 的八字节 typed raw，不经过浮点近似。调用期间不得修改列表或环境；这些纯转换不创建线程、回调、原生句柄或 ROS 授权，不需要 close。示例只关闭其 binary stdin connection，一次报告 primary 与 cleanup，保留前者优先。
