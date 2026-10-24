# Java 接口与完整消息记录

## 命名空间与字段访问

ROS2 观察接口命名空间为 `uwvm.unitree.ros2.Observations`；ROS1 将其中的 `Ros2`/`ros2` 替换为 `Ros1`/`ros1`。具体 Java 记录位于 `uwvm.unitree.ros1 /
uwvm.unitree.ros2`。应用使用已安装的命名空间导入，源码搜索根由 Xmake 统一配置，示例不使用父目录相对源码导入。

每种记录都公开 `field_<原始字段名>`，保留原始名字、嵌套结构和固定数组长度。构造函数分配自有的嵌套数组元素并恢复原始默认值，有界序列初始为空。`CONST_<原始常量名>`
保留源码常量且不占实例编码字节。`SOURCE_TYPE`、`CODEC_IDENTITY`、`NATIVE_IDENTITY`、`MIN_WIRE_BYTES`、`MAX_WIRE_BYTES`
分别标识原始模式和有限编码契约；原生标识为空时仍需独立导出的原生元数据完成绑定。

`encode(value)` 分配完整规范字节；`decode(bytes)` 校验精确范围并返回自有完整记录。非法容量、布尔编码、文本、数值范围或尾随字节会产生参数异常，失败不提交部分调用方记录。Java
以更宽的有符号类型表示 uint8/uint16/uint32 并检查原始范围，以 `long` 位模式保留 uint64。值类型在声明的有限浮点策略内保留浮点位模式。

## 有限观察与长期持有接口

便捷观察接口只打开一个别名、激活一次订阅，再按调用方预算轮询。仅空闲状态 11 允许等待真实 WASI 单调时钟 20 ms 后继续，250 次预算最多产生 249 次等待。正常完成或普通失败都对已取得的所有者关闭一次；陷阱或致命分配失败由宿主回收实例。

返回值 `result.exchange / result.response / result.canonical` 将原始交换结果、完整解码记录及从该记录重新编码的字节分别保留。只有记录存在时才能读取它。完整校验通过后，记录和规范字节一起提交；后续本地编解码失败将主状态设为 22，同时保留原始导入 errno 和长度槽写入事实。

目录中的每种消息还有对应的具体 `RosNApi...` 类型。其发布、订阅、读取方法作用于应用显式持有的 `Owner`：读取只执行一次实际轮询，发布只执行一次实际发布。调用方负责串行访问并恰好关闭一次；这些底层方法不包含便捷观察器的有限等待循环。主题发布需要独立授权，不属于本批观察示例的通信验证范围。

## 返回事实与错误处理

| 输出字段 | 含义 |
| --- | --- |
| `primary` | 首个操作失败或完整记录本地校验状态 |
| `cleanup`、`cleanup_present` | 独立的关闭状态以及是否尝试过关闭 |
| `response_present` | 完整类型化记录是否已提交 |
| `rpc_present`、`rpc_status` | 是否发生过实际数据导入及其原始 errno |
| `required_present`、`required` | 原始长度槽是否被写入及其精确值 |
| `encoding`、`wire_hex` | 完整重新编码状态与全部规范字节 |

表中为 JSON 字段名，托管属性采用 camelCase。最终状态先取 `primary`，再取 `cleanup`；仅在此前没有错误时，标准输出失败才返回 5，进程退出码上限为 125。11 只能在显式预算内等待，13
表示缺少权限，22 表示输入或完整编码非法，90 表示容量不足。其他原始错误（含 9、95、107、110、125）原样保留。不能把未写入长度槽中的零值当作有效响应。

## 完整记录索引

下表覆盖全部 11 种 ROS1 和 43 种 ROS2 原始记录，包括 Unitree Go、HG、API 包。它列出模式和源码 API；六个观察示例具体使用的类型见 EXAMPLES.md。

| ROS | Native type / 原始类型 | Value class / 值类型 |
| --- | --- | --- |
| ros1 | `unitree_legged_msgs/BmsCmd` | `Ros1Unitree_legged_msgsBmsCmd` |
| ros1 | `unitree_legged_msgs/BmsState` | `Ros1Unitree_legged_msgsBmsState` |
| ros1 | `unitree_legged_msgs/Cartesian` | `Ros1Unitree_legged_msgsCartesian` |
| ros1 | `unitree_legged_msgs/HighCmd` | `Ros1Unitree_legged_msgsHighCmd` |
| ros1 | `unitree_legged_msgs/HighState` | `Ros1Unitree_legged_msgsHighState` |
| ros1 | `unitree_legged_msgs/IMU` | `Ros1Unitree_legged_msgsIMU` |
| ros1 | `unitree_legged_msgs/LED` | `Ros1Unitree_legged_msgsLED` |
| ros1 | `unitree_legged_msgs/LowCmd` | `Ros1Unitree_legged_msgsLowCmd` |
| ros1 | `unitree_legged_msgs/LowState` | `Ros1Unitree_legged_msgsLowState` |
| ros1 | `unitree_legged_msgs/MotorCmd` | `Ros1Unitree_legged_msgsMotorCmd` |
| ros1 | `unitree_legged_msgs/MotorState` | `Ros1Unitree_legged_msgsMotorState` |
| ros2 | `unitree_api/msg/Request` | `Ros2Unitree_apiMsgRequest` |
| ros2 | `unitree_api/msg/RequestHeader` | `Ros2Unitree_apiMsgRequestHeader` |
| ros2 | `unitree_api/msg/RequestIdentity` | `Ros2Unitree_apiMsgRequestIdentity` |
| ros2 | `unitree_api/msg/RequestLease` | `Ros2Unitree_apiMsgRequestLease` |
| ros2 | `unitree_api/msg/RequestPolicy` | `Ros2Unitree_apiMsgRequestPolicy` |
| ros2 | `unitree_api/msg/Response` | `Ros2Unitree_apiMsgResponse` |
| ros2 | `unitree_api/msg/ResponseHeader` | `Ros2Unitree_apiMsgResponseHeader` |
| ros2 | `unitree_api/msg/ResponseStatus` | `Ros2Unitree_apiMsgResponseStatus` |
| ros2 | `unitree_go/msg/AudioData` | `Ros2Unitree_goMsgAudioData` |
| ros2 | `unitree_go/msg/BmsCmd` | `Ros2Unitree_goMsgBmsCmd` |
| ros2 | `unitree_go/msg/BmsState` | `Ros2Unitree_goMsgBmsState` |
| ros2 | `unitree_go/msg/Error` | `Ros2Unitree_goMsgError` |
| ros2 | `unitree_go/msg/Go2FrontVideoData` | `Ros2Unitree_goMsgGo2FrontVideoData` |
| ros2 | `unitree_go/msg/HeightMap` | `Ros2Unitree_goMsgHeightMap` |
| ros2 | `unitree_go/msg/IMUState` | `Ros2Unitree_goMsgIMUState` |
| ros2 | `unitree_go/msg/InterfaceConfig` | `Ros2Unitree_goMsgInterfaceConfig` |
| ros2 | `unitree_go/msg/LidarState` | `Ros2Unitree_goMsgLidarState` |
| ros2 | `unitree_go/msg/LowCmd` | `Ros2Unitree_goMsgLowCmd` |
| ros2 | `unitree_go/msg/LowState` | `Ros2Unitree_goMsgLowState` |
| ros2 | `unitree_go/msg/MotorCmd` | `Ros2Unitree_goMsgMotorCmd` |
| ros2 | `unitree_go/msg/MotorCmds` | `Ros2Unitree_goMsgMotorCmds` |
| ros2 | `unitree_go/msg/MotorState` | `Ros2Unitree_goMsgMotorState` |
| ros2 | `unitree_go/msg/MotorStates` | `Ros2Unitree_goMsgMotorStates` |
| ros2 | `unitree_go/msg/PathPoint` | `Ros2Unitree_goMsgPathPoint` |
| ros2 | `unitree_go/msg/Req` | `Ros2Unitree_goMsgReq` |
| ros2 | `unitree_go/msg/Res` | `Ros2Unitree_goMsgRes` |
| ros2 | `unitree_go/msg/SportModeCmd` | `Ros2Unitree_goMsgSportModeCmd` |
| ros2 | `unitree_go/msg/SportModeState` | `Ros2Unitree_goMsgSportModeState` |
| ros2 | `unitree_go/msg/TimeSpec` | `Ros2Unitree_goMsgTimeSpec` |
| ros2 | `unitree_go/msg/UwbState` | `Ros2Unitree_goMsgUwbState` |
| ros2 | `unitree_go/msg/UwbSwitch` | `Ros2Unitree_goMsgUwbSwitch` |
| ros2 | `unitree_go/msg/WirelessController` | `Ros2Unitree_goMsgWirelessController` |
| ros2 | `unitree_hg/msg/BmsCmd` | `Ros2Unitree_hgMsgBmsCmd` |
| ros2 | `unitree_hg/msg/BmsState` | `Ros2Unitree_hgMsgBmsState` |
| ros2 | `unitree_hg/msg/HandCmd` | `Ros2Unitree_hgMsgHandCmd` |
| ros2 | `unitree_hg/msg/HandState` | `Ros2Unitree_hgMsgHandState` |
| ros2 | `unitree_hg/msg/IMUState` | `Ros2Unitree_hgMsgIMUState` |
| ros2 | `unitree_hg/msg/LowCmd` | `Ros2Unitree_hgMsgLowCmd` |
| ros2 | `unitree_hg/msg/LowState` | `Ros2Unitree_hgMsgLowState` |
| ros2 | `unitree_hg/msg/MainBoardState` | `Ros2Unitree_hgMsgMainBoardState` |
| ros2 | `unitree_hg/msg/MotorCmd` | `Ros2Unitree_hgMsgMotorCmd` |
| ros2 | `unitree_hg/msg/MotorState` | `Ros2Unitree_hgMsgMotorState` |
| ros2 | `unitree_hg/msg/PressSensorState` | `Ros2Unitree_hgMsgPressSensorState` |
