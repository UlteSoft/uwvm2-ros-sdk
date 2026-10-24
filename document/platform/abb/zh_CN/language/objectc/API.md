# ABB / objectc API

安装完整 SDK 后设置 `UWVM_ROS_SDK_ROOT` 为安装根目录，在独立例子目录运行 `xmake`。构建仅要求预装 Xmake；中央适配器应核验并取得锁定依赖，禁止自动换用另一个语言、解释器版本或 wasm32。此路线使用 **LLVM 23.1.4 Objective-C C-interoperability route**。JVM/CLR 路线通过真实 AOT 生成 Wasm；解释语言将真实实现与源码一并打包进单个 Wasm。

## 配置与部署

`set_language("objectc")` 选择真实源码；`set_ros_platform("abb")` 选择此厂商。`set_ros1_version("noetic")` 或 `set_ros2_version("jazzy")` 必须和目录族、实际 native 安装及导出标识一致。`set_ros_config({catalog = "complete", transport = "native-ros"})` 选择不可变上游接口集合，与控制器固件版本无关。

`set_arch("wasm32")` / `set_arch("wasm64")` 和 `set_plat("wasm-wasip1")` 分别请求 32/64 位内存与 WASI Preview 1。编译器、stdlib、解释器、导入 ABI 和实际 uwvm2-ros 必须全部支持所选宽度。WASI Preview 2、线程、异常及 Wasm Core 3.0 特征需要独立配对；例子不会降级。控制器型号、关节顺序、组、传输、ROS 发行版、QoS 和容量由 `share/platform/abb/provider.json` 与实际部署配置提供。

产物仅部署一个 `.wasm`，源码和中间文件留在缓存。`xmake run` 使用已经安装的 uwvm2-ros；运行不应探测编译器或自动赋权。操作员手动配置能力别名、类型、方向、字节预算、期限、QoS 和时钟权限。源码目录本身不产生 ROS 注册或权限。

## 值、错误与所有权

完整原始定义见本平台的 `CATALOG.md` 和 `share/platform/abb/catalogs`。整数字段保持原始位宽；64 位数值使用本语言的精确整数/word 类型，R/PHP32 不能经 double 中转。字符串上限为 UTF-8 字节；严格文本拒绝 NUL、坏编码和截断。固定数组长度必须完全一致，sequence 不截短。普通时间的纳秒范围为 0..999999999；JointState 所有非空数组长度相等。

显式默认构造与全零存储不同，四元数 w 等非零默认值必须保留。成功解码后才可读整值；失败不能发布部分响应。22 表示本地参数/线值非法，90 表示容量不足，11 表示暂时空闲，13 表示权限拒绝。原始 RPC 错误、已观测长度、控制器结果和一次关闭的错误分别保存；完整控制器拒绝仍保留全部诊断。服务在超时、容量错误或结果未知时不自动重发。

消息的 publish/subscribe、服务的 call/advertise/respond 和 action 的 send-goal/cancel-own/feedback/result 使用中央共享所有者。每个 action role 需要独立别名；取消确认不同于终态和物理停止。调用者保持 context、能力、goal table 和借用存储稳定，关闭已经取得的所有者一次并检查结果。

## 完整公开记录

| ROS | 原始记录 | 本语言公开路径/类型 |
| --- | --- | --- |
| 1 | `abb_egm_msgs/EGMChannelState` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `time` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `std_msgs/Header` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_egm_msgs/EGMState` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_msgs/ConfData` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_msgs/ExtJoint` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_msgs/RobJoint` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_msgs/JointTarget` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_msgs/Pos` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_msgs/Orient` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_msgs/LoadData` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_msgs/Pose` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_msgs/RobTarget` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_msgs/ToolData` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_msgs/WObjData` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_sm_addin_msgs/EGMActivateSettings` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_sm_addin_msgs/EGMRunSettings` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_sm_addin_msgs/EGMSetupSettings` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_sm_addin_msgs/EGMStopSettings` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_sm_addin_msgs/EGMSettings` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_sm_addin_msgs/GetEGMSettingsRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_sm_addin_msgs/GetEGMSettingsResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_sm_addin_msgs/StateMachineState` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_sm_addin_msgs/RuntimeState` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_sm_addin_msgs/SetEGMSettingsRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_sm_addin_msgs/SetEGMSettingsResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_sm_addin_msgs/SetSGCommandRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_sm_addin_msgs/SetSGCommandResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/GetFileContentsRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/GetFileContentsResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/GetIOSignalRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/GetIOSignalResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/RAPIDSymbolPath` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/GetRAPIDBoolRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/GetRAPIDBoolResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/GetRAPIDDnumRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/GetRAPIDDnumResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/GetRAPIDNumRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/GetRAPIDNumResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/GetRAPIDStringRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/GetRAPIDStringResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/GetRAPIDSymbolRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/GetRAPIDSymbolResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/GetRobotControllerDescriptionRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/GetRobotControllerDescriptionResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/GetSpeedRatioRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/GetSpeedRatioResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/MechanicalUnitState` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/RAPIDTaskState` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/ServiceResponses` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/SetFileContentsRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/SetFileContentsResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/SetIOSignalRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/SetIOSignalResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/SetRAPIDBoolRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/SetRAPIDBoolResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/SetRAPIDDnumRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/SetRAPIDDnumResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/SetRAPIDNumRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/SetRAPIDNumResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/SetRAPIDStringRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/SetRAPIDStringResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/SetRAPIDSymbolRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/SetRAPIDSymbolResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/SetSpeedRatioRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/SetSpeedRatioResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/SystemState` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/TriggerWithResultCodeRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/TriggerWithResultCodeResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `duration` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `trajectory_msgs/JointTrajectoryPoint` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `trajectory_msgs/JointTrajectory` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `control_msgs/JointTolerance` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `control_msgs/FollowJointTrajectoryGoal` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `control_msgs/FollowJointTrajectoryResult` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `control_msgs/FollowJointTrajectoryFeedback` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `sensor_msgs/JointState` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 2 | `abb_egm_msgs/msg/EGMChannelState` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `builtin_interfaces/msg/Time` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `std_msgs/msg/Header` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_egm_msgs/msg/EGMState` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_msgs/msg/ConfData` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_msgs/msg/ExtJoint` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_msgs/msg/RobJoint` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_msgs/msg/JointTarget` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_msgs/msg/Pos` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_msgs/msg/Orient` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_msgs/msg/LoadData` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_msgs/msg/Pose` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_msgs/msg/RobTarget` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_msgs/msg/ToolData` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_msgs/msg/WObjData` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMActivateSettings` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMRunSettings` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMSetupSettings` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMStopSettings` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMSettings` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_sm_addin_msgs/msg/StateMachineState` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_sm_addin_msgs/msg/RuntimeState` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/msg/MechanicalUnitState` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/msg/RAPIDSymbolPath` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/msg/RAPIDTaskState` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/msg/ServiceResponses` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/msg/SystemState` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/GetFileContents_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/GetFileContents_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/GetIOSignal_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/GetIOSignal_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/GetRAPIDBool_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/GetRAPIDBool_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/GetRAPIDDnum_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/GetRAPIDDnum_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/GetRAPIDNum_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/GetRAPIDNum_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/GetRAPIDString_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/GetRAPIDString_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/GetRAPIDSymbol_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/GetRAPIDSymbol_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/GetRobotControllerDescription_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/GetRobotControllerDescription_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/GetSpeedRatio_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/GetSpeedRatio_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/SetFileContents_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/SetFileContents_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/SetIOSignal_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/SetIOSignal_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/SetRAPIDBool_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/SetRAPIDBool_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/SetRAPIDDnum_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/SetRAPIDDnum_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/SetRAPIDNum_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/SetRAPIDNum_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/SetRAPIDString_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/SetRAPIDString_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/SetRAPIDSymbol_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/SetRAPIDSymbol_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/SetSpeedRatio_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/SetSpeedRatio_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/TriggerWithResultCode_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/TriggerWithResultCode_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `builtin_interfaces/msg/Duration` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `trajectory_msgs/msg/JointTrajectoryPoint` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `trajectory_msgs/msg/JointTrajectory` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `geometry_msgs/msg/Vector3` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `geometry_msgs/msg/Quaternion` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `geometry_msgs/msg/Transform` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `geometry_msgs/msg/Twist` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `trajectory_msgs/msg/MultiDOFJointTrajectory` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `control_msgs/msg/JointTolerance` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `control_msgs/msg/JointComponentTolerance` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `control_msgs/action/FollowJointTrajectory_Goal` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `control_msgs/action/FollowJointTrajectory_Result` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `control_msgs/action/FollowJointTrajectory_Feedback` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `sensor_msgs/msg/JointState` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `std_srvs/srv/Trigger_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `std_srvs/srv/Trigger_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |

ABB 的 ROS1 驱动和 ROS2 消息 fork 分别锁定；存在两个目录并不证明两个 native 驱动或控制器版本可互换。
