# YASKAWA / cpp API

安装完整 SDK 后设置 `UWVM_ROS_SDK_ROOT` 为安装根目录，在独立例子目录运行 `xmake`。构建仅要求预装 Xmake；中央适配器应核验并取得锁定依赖，禁止自动换用另一个语言、解释器版本或 wasm32。此路线使用 **LLVM 23.1.4**。JVM/CLR 路线通过真实 AOT 生成 Wasm；解释语言将真实实现与源码一并打包进单个 Wasm。

## 配置与部署

`set_language("cpp")` 选择真实源码；`set_ros_platform("yaskawa")` 选择此厂商。`set_ros1_version("noetic")` 或 `set_ros2_version("jazzy")` 必须和目录族、实际 native 安装及导出标识一致。`set_ros_config({catalog = "complete", transport = "native-ros"})` 选择不可变上游接口集合，与控制器固件版本无关。

`set_arch("wasm32")` / `set_arch("wasm64")` 和 `set_plat("wasm-wasip1")` 分别请求 32/64 位内存与 WASI Preview 1。编译器、stdlib、解释器、导入 ABI 和实际 uwvm2-ros 必须全部支持所选宽度。WASI Preview 2、线程、异常及 Wasm Core 3.0 特征需要独立配对；例子不会降级。控制器型号、关节顺序、组、传输、ROS 发行版、QoS 和容量由 `share/platform/yaskawa/provider.json` 与实际部署配置提供。

产物仅部署一个 `.wasm`，源码和中间文件留在缓存。`xmake run` 使用已经安装的 uwvm2-ros；运行不应探测编译器或自动赋权。操作员手动配置能力别名、类型、方向、字节预算、期限、QoS 和时钟权限。源码目录本身不产生 ROS 注册或权限。

## 值、错误与所有权

完整原始定义见本平台的 `CATALOG.md` 和 `share/platform/yaskawa/catalogs`。整数字段保持原始位宽；64 位数值使用本语言的精确整数/word 类型，R/PHP32 不能经 double 中转。字符串上限为 UTF-8 字节；严格文本拒绝 NUL、坏编码和截断。固定数组长度必须完全一致，sequence 不截短。普通时间的纳秒范围为 0..999999999；JointState 所有非空数组长度相等。

显式默认构造与全零存储不同，四元数 w 等非零默认值必须保留。成功解码后才可读整值；失败不能发布部分响应。22 表示本地参数/线值非法，90 表示容量不足，11 表示暂时空闲，13 表示权限拒绝。原始 RPC 错误、已观测长度、控制器结果和一次关闭的错误分别保存；完整控制器拒绝仍保留全部诊断。服务在超时、容量错误或结果未知时不自动重发。

消息的 publish/subscribe、服务的 call/advertise/respond 和 action 的 send-goal/cancel-own/feedback/result 使用中央共享所有者。每个 action role 需要独立别名；取消确认不同于终态和物理停止。调用者保持 context、能力、goal table 和借用存储稳定，关闭已经取得的所有者一次并检查结果。

## 完整公开记录

| ROS | 原始记录 | 本语言公开路径/类型 |
| --- | --- | --- |
| 2 | `builtin_interfaces/msg/Duration` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `builtin_interfaces/msg/Time` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `std_msgs/msg/Header` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `trajectory_msgs/msg/JointTrajectoryPoint` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `trajectory_msgs/msg/JointTrajectory` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `geometry_msgs/msg/Vector3` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `geometry_msgs/msg/Quaternion` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `geometry_msgs/msg/Transform` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `geometry_msgs/msg/Twist` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `trajectory_msgs/msg/MultiDOFJointTrajectory` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `control_msgs/msg/JointTolerance` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `control_msgs/msg/JointComponentTolerance` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `control_msgs/action/FollowJointTrajectory_Goal` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `control_msgs/action/FollowJointTrajectory_Result` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `control_msgs/action/FollowJointTrajectory_Feedback` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `geometry_msgs/msg/TransformStamped` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `industrial_msgs/msg/DebugLevel` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `industrial_msgs/msg/DeviceInfo` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `industrial_msgs/msg/RobotMode` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `industrial_msgs/msg/TriState` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `industrial_msgs/msg/RobotStatus` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `industrial_msgs/msg/ServiceReturnCode` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `industrial_msgs/srv/CmdJointTrajectory_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `industrial_msgs/srv/CmdJointTrajectory_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `industrial_msgs/srv/GetRobotInfo_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `industrial_msgs/srv/GetRobotInfo_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `industrial_msgs/srv/SetDrivePower_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `industrial_msgs/srv/SetDrivePower_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `industrial_msgs/srv/SetRemoteLoggerLevel_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `industrial_msgs/srv/SetRemoteLoggerLevel_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `industrial_msgs/srv/StartMotion_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `industrial_msgs/srv/StartMotion_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `industrial_msgs/srv/StopMotion_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `industrial_msgs/srv/StopMotion_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/msg/AlarmCauseRemedy` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/msg/AlarmInfo` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/msg/ErrorInfo` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/msg/InformJobCrudResultCodes` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/msg/InitTrajEnum` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/msg/IoResultCodes` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/msg/MotionReadyEnum` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/msg/QueueResultEnum` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/msg/SelectionResultCodes` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/GetActiveAlarmInfo_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/GetActiveAlarmInfo_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/ListInformJobs_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/ListInformJobs_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/QueueTrajPoint_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/QueueTrajPoint_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/ReadGroupIO_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/ReadGroupIO_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/ReadMRegister_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/ReadMRegister_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/ReadSingleIO_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/ReadSingleIO_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/ResetError_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/ResetError_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/SelectMotionTool_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/SelectMotionTool_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/StartPointQueueMode_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/StartPointQueueMode_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/StartTrajMode_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/StartTrajMode_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/WriteGroupIO_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/WriteGroupIO_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/WriteMRegister_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/WriteMRegister_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/WriteSingleIO_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/WriteSingleIO_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `sensor_msgs/msg/JointState` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `std_srvs/srv/Trigger_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `std_srvs/srv/Trigger_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `tf2_msgs/msg/TFMessage` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |

本平台使用 ROS2 目录；源文档列出 Foxy/Galactic/Humble/Jazzy，实际 native 兼容仍须逐安装导出核验。没有对应 ROS1 目录。
