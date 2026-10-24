# ABB / cpp API

安装完整 SDK 后设置 `UWVM_ROS_SDK_ROOT` 为安装根目录，在独立例子目录运行 `xmake`。构建仅要求预装 Xmake；中央适配器应核验并取得锁定依赖，禁止自动换用另一个语言、解释器版本或 wasm32。此路线使用 **LLVM 23.1.4**。JVM/CLR 路线通过真实 AOT 生成 Wasm；解释语言将真实实现与源码一并打包进单个 Wasm。

## 配置与部署

`set_language("cpp")` 选择真实源码；`set_ros_platform("abb")` 选择此厂商。`set_ros1_version("noetic")` 或 `set_ros2_version("jazzy")` 必须和目录族、实际 native 安装及导出标识一致。`set_ros_config({catalog = "complete", transport = "native-ros"})` 选择不可变上游接口集合，与控制器固件版本无关。

`set_arch("wasm32")` / `set_arch("wasm64")` 和 `set_plat("wasm-wasip1")` 分别请求 32/64 位内存与 WASI Preview 1。编译器、stdlib、解释器、导入 ABI 和实际 uwvm2-ros 必须全部支持所选宽度。WASI Preview 2、线程、异常及 Wasm Core 3.0 特征需要独立配对；例子不会降级。控制器型号、关节顺序、组、传输、ROS 发行版、QoS 和容量由 `share/platform/abb/provider.json` 与实际部署配置提供。

产物仅部署一个 `.wasm`，源码和中间文件留在缓存。`xmake run` 使用已经安装的 uwvm2-ros；运行不应探测编译器或自动赋权。操作员手动配置能力别名、类型、方向、字节预算、期限、QoS 和时钟权限。源码目录本身不产生 ROS 注册或权限。

## 值、错误与所有权

完整原始定义见本平台的 `CATALOG.md` 和 `share/platform/abb/catalogs`。整数字段保持原始位宽；64 位数值使用本语言的精确整数/word 类型，R/PHP32 不能经 double 中转。字符串上限为 UTF-8 字节；严格文本拒绝 NUL、坏编码和截断。固定数组长度必须完全一致，sequence 不截短。普通时间的纳秒范围为 0..999999999；JointState 所有非空数组长度相等。

显式默认构造与全零存储不同，四元数 w 等非零默认值必须保留。成功解码后才可读整值；失败不能发布部分响应。22 表示本地参数/线值非法，90 表示容量不足，11 表示暂时空闲，13 表示权限拒绝。原始 RPC 错误、已观测长度、控制器结果和一次关闭的错误分别保存；完整控制器拒绝仍保留全部诊断。服务在超时、容量错误或结果未知时不自动重发。

消息的 publish/subscribe、服务的 call/advertise/respond 和 action 的 send-goal/cancel-own/feedback/result 使用中央共享所有者。每个 action role 需要独立别名；取消确认不同于终态和物理停止。调用者保持 context、能力、goal table 和借用存储稳定，关闭已经取得的所有者一次并检查结果。

## 完整公开记录

| ROS | 原始记录 | 本语言公开路径/类型 |
| --- | --- | --- |
| 1 | `abb_egm_msgs/EGMChannelState` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `time` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `std_msgs/Header` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_egm_msgs/EGMState` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_msgs/ConfData` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_msgs/ExtJoint` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_msgs/RobJoint` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_msgs/JointTarget` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_msgs/Pos` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_msgs/Orient` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_msgs/LoadData` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_msgs/Pose` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_msgs/RobTarget` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_msgs/ToolData` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_msgs/WObjData` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_sm_addin_msgs/EGMActivateSettings` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_sm_addin_msgs/EGMRunSettings` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_sm_addin_msgs/EGMSetupSettings` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_sm_addin_msgs/EGMStopSettings` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_sm_addin_msgs/EGMSettings` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_sm_addin_msgs/GetEGMSettingsRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_sm_addin_msgs/GetEGMSettingsResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_sm_addin_msgs/StateMachineState` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_sm_addin_msgs/RuntimeState` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_sm_addin_msgs/SetEGMSettingsRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_sm_addin_msgs/SetEGMSettingsResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_sm_addin_msgs/SetSGCommandRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_sm_addin_msgs/SetSGCommandResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/GetFileContentsRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/GetFileContentsResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/GetIOSignalRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/GetIOSignalResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/RAPIDSymbolPath` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/GetRAPIDBoolRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/GetRAPIDBoolResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/GetRAPIDDnumRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/GetRAPIDDnumResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/GetRAPIDNumRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/GetRAPIDNumResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/GetRAPIDStringRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/GetRAPIDStringResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/GetRAPIDSymbolRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/GetRAPIDSymbolResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/GetRobotControllerDescriptionRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/GetRobotControllerDescriptionResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/GetSpeedRatioRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/GetSpeedRatioResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/MechanicalUnitState` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/RAPIDTaskState` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/ServiceResponses` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/SetFileContentsRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/SetFileContentsResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/SetIOSignalRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/SetIOSignalResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/SetRAPIDBoolRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/SetRAPIDBoolResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/SetRAPIDDnumRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/SetRAPIDDnumResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/SetRAPIDNumRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/SetRAPIDNumResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/SetRAPIDStringRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/SetRAPIDStringResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/SetRAPIDSymbolRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/SetRAPIDSymbolResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/SetSpeedRatioRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/SetSpeedRatioResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/SystemState` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/TriggerWithResultCodeRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/TriggerWithResultCodeResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `duration` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `trajectory_msgs/JointTrajectoryPoint` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `trajectory_msgs/JointTrajectory` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `control_msgs/JointTolerance` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `control_msgs/FollowJointTrajectoryGoal` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `control_msgs/FollowJointTrajectoryResult` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `control_msgs/FollowJointTrajectoryFeedback` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `sensor_msgs/JointState` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 2 | `abb_egm_msgs/msg/EGMChannelState` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `builtin_interfaces/msg/Time` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `std_msgs/msg/Header` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_egm_msgs/msg/EGMState` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_msgs/msg/ConfData` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_msgs/msg/ExtJoint` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_msgs/msg/RobJoint` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_msgs/msg/JointTarget` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_msgs/msg/Pos` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_msgs/msg/Orient` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_msgs/msg/LoadData` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_msgs/msg/Pose` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_msgs/msg/RobTarget` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_msgs/msg/ToolData` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_msgs/msg/WObjData` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMActivateSettings` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMRunSettings` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMSetupSettings` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMStopSettings` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMSettings` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_sm_addin_msgs/msg/StateMachineState` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_sm_addin_msgs/msg/RuntimeState` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/msg/MechanicalUnitState` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/msg/RAPIDSymbolPath` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/msg/RAPIDTaskState` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/msg/ServiceResponses` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/msg/SystemState` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/GetFileContents_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/GetFileContents_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/GetIOSignal_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/GetIOSignal_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/GetRAPIDBool_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/GetRAPIDBool_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/GetRAPIDDnum_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/GetRAPIDDnum_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/GetRAPIDNum_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/GetRAPIDNum_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/GetRAPIDString_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/GetRAPIDString_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/GetRAPIDSymbol_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/GetRAPIDSymbol_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/GetRobotControllerDescription_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/GetRobotControllerDescription_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/GetSpeedRatio_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/GetSpeedRatio_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/SetFileContents_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/SetFileContents_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/SetIOSignal_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/SetIOSignal_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/SetRAPIDBool_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/SetRAPIDBool_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/SetRAPIDDnum_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/SetRAPIDDnum_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/SetRAPIDNum_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/SetRAPIDNum_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/SetRAPIDString_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/SetRAPIDString_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/SetRAPIDSymbol_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/SetRAPIDSymbol_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/SetSpeedRatio_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/SetSpeedRatio_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/TriggerWithResultCode_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/TriggerWithResultCode_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `builtin_interfaces/msg/Duration` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `trajectory_msgs/msg/JointTrajectoryPoint` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `trajectory_msgs/msg/JointTrajectory` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `geometry_msgs/msg/Vector3` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `geometry_msgs/msg/Quaternion` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `geometry_msgs/msg/Transform` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `geometry_msgs/msg/Twist` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `trajectory_msgs/msg/MultiDOFJointTrajectory` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `control_msgs/msg/JointTolerance` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `control_msgs/msg/JointComponentTolerance` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `control_msgs/action/FollowJointTrajectory_Goal` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `control_msgs/action/FollowJointTrajectory_Result` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `control_msgs/action/FollowJointTrajectory_Feedback` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `sensor_msgs/msg/JointState` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `std_srvs/srv/Trigger_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `std_srvs/srv/Trigger_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |

ABB 的 ROS1 驱动和 ROS2 消息 fork 分别锁定；存在两个目录并不证明两个 native 驱动或控制器版本可互换。
