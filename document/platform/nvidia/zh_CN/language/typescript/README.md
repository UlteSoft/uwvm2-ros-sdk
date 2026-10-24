# nvidia TypeScript API

本包含 29 个完整原始记录/组件。共享版本锁
revision 7，需共享唯一 Microsoft TypeScript 5.9.3 严格语义前端及已有 QuickJS。
平台包不带编译器或引擎；宿主 Node 只运行编译器，ESM 应用在 QuickJS Wasm 内执行。

公共导入为 nvidia/typescript/index。总入口导出 groot、isaacRos、isaacSim 命名空间及对应
grootSample、isaacRosSample、isaacSimSample。公共支撑模块为
nvidia/typescript/codec、nvidia/typescript/stdio、nvidia/typescript/transport。
上游定义及哈希保留在 share/platform/<component>/catalog.json。
原始字段、常量、线序身份、默认值完整保留，公共导入不依赖安装深度。

每个 <OriginalSymbol>Codec 提供 defaultValue()（独立完整自有值）、encode(value)
（完整自有 Uint8Array）、decode(bytes)（新完整值）、valid(bytes) 和
validateValue(value)（true 或抛错）。is<OriginalSymbol>(unknown) 是完整值类型守卫。
codecIdentity、minWireBytes、maxWireBytes、cartesianMaxWireBytes、
aggregateWireBytes、constants 保留元数据；interfaces 保留所有消息及独立服务组件。
编解码源码不代表服务通信已经通过。

UInt64 使用 BigInt，覆盖超过 2^53 的值，不能先转 Number。运行时检查原始符号与范围。
Tuple2/3/4/5/36 保留固定长度；序列保留活动元素数和上限。字符串严格检查 Unicode
标量 UTF-8、拒绝 NUL、按字节计长；纳秒小于 10^9。浮点拒绝非有限线序，也拒绝
有限 Number 序列化为 float32 后溢出。四元数不自动归一化。嵌套姿态和每个检测的
36 个协方差完整保留。规范线序是原字段次序的小端编码，并非 ROS CDR；
TypeScript interface 不承诺原生内存布局。

CodecError.code 保留原始正整数状态，originalError 保留原因；本地非法输入为 22。
readSeed、readHex、equalBytes、writeWire、expectInvalid、runGuest 使用实际 guest
argv/output/exitCode。种子接受精确十进制 uint32，默认 73；hex 为单个精确有界参数，
不接受前缀或忽略尾部；输出包含每个线序字节。非法值 22、配额 90、流失败 5 明确。

transport 借用调用方已有共享 JS capability。request 执行一次指定操作，publish
发布一次，poll 轮询一次；结果区分 ok、原始 status、自有 value 及 BigInt required。
空队列 11、容量 90 仍是拒绝；旧 event 容量失败可能已消费事件，不暗中重试。
open/close/revoke、模块身份和手工别名权限属于原 owner。
这里不制造 handle、ABI 副本、原生指针或布局。原生 helper 借用共享 JS owner，
在 TypeScript 5.9 调用边界将请求复制为 ArrayBuffer-backed Uint8Array，
明确满足 ArrayBuffer/SharedArrayBuffer 类型边界，无类型断言。

每组件有独立 roundtrip、decode_argument、malformed_wire、complete_catalog：
前三者分别覆盖输入驱动完整往返、调用方完整线序解码、截断/尾随/非有限/越界拒绝；
第四个遍历全部记录与服务组件。Isaac ROS 样本含两个检测、各四角点、72 个协方差、
UTF-8 相机文本及不归一化四元数。总入口另有 aggregate_roundtrip、
catalog_roundtrip、malformed_catalog，均有独立 main.mts 和 xmake.lua。

设置 UWVM_ROS_SDK_ROOT 后进入例子，用 xmake f -a wasm32 配置，xmake -vD -j1
构建。配置显式采用 binary、typescript、所选平台、ROS2 Jazzy、cpu-value、
wasm-wasip1 及对应场景。run.autobuild=false 将构建与运行分开。
wasm64 必须独立证明真实 memory64，禁止回退；static/shared 需共享 kind 适配器，
单独验证生产者、消费者与真实加载，ESM 源码复用不能替代库资格。

用已安装 uwvm2-ros 部署唯一 Wasm。每个 CPU 例子带有
main-typescript-CPU-clock.deployment.template.json。替换可移植 runtime/gateway
路径，检查确切 main 模块，设置 UWVM_ROS_RUN_CONFIG 后使用 xmake run 对应目标。
模板只向 main 手工授予 QuickJS 初始化需要的 realtime-clock；默认基本标准流仍可用。
CPU 策略不申请 random 或 monotonic-clock，明确禁用 ROS，别名列表为空。
构建/运行钩子不会增加权限。

roundtrip 在 arguments 为空时使用默认种子，也可显式填入十进制 uint32。
decode_argument 的 arguments 应填入一个完整 hex 参数，可从 roundtrip 输出的
wire_hex 复制。malformed 与完整目录程序不带参数。每个模板只选择自己的目标。
原生通信使用另行审核、启用 ROS 且只含通信模块确切别名的独立策略。

三个原 JS 依赖另有明确源码修改：将浏览器 TextEncoder/TextDecoder 构造替换为
已有 ros/js/wire UTF-8 函数，所有记录算法其余字节保持一致。该依赖已随 typed
路由共同检查运行，后续共享 JS 生成器应保留此公共依赖。

wasm32 命令路径已通过真实严格前端检查、Linux 冷 Xmake 构建，以及 x86 和
QEMU AArch64 中的真实参数驱动客体断言。四个平台入口合计 15 个 CPU 应用、
60 个 CPU 用例；全部 29 个完整目录记录/组件已在实际客体中完成默认值往返。
三个主要消息类型另有非默认完整字段 oracle，不据此声称每个服务组件均有非默认覆盖。

独立 Isaac ROS 原始 Array 例子另有三个真实严格构建的应用、12 个原生用例：
接收关闭、完整数组回发、撤销旧句柄；两种架构各有正向及 ROS 拒绝策略。
独立原生 CDR 与规范线序解码器比较所有字段及浮点零符号。GR00T 原生服务、
Isaac Sim 执行、GPU/NITROS、ROS1、memory64、ARM 宿主源码编译，以及
static/shared 库组合仍需独立验收；其他语言的回执不能替 TypeScript 取得资格。

| Original record/component | Maximum canonical bytes |
| --- | ---: |
| uwvm_groot_bridge/msg/RGBFrame | 860 |
| uwvm_groot_bridge/msg/FloatTensor | 1364 |
| uwvm_groot_bridge/msg/TextSequence | 1120 |
| uwvm_groot_bridge/srv/InferAction_Request | 10296 |
| uwvm_groot_bridge/srv/InferAction_Response | 10929 |
| uwvm_groot_bridge/msg/RGBDescriptor | 88 |
| uwvm_groot_bridge/srv/BeginObservation_Request | 276 |
| uwvm_groot_bridge/srv/BeginObservation_Response | 12 |
| uwvm_groot_bridge/srv/WriteRGBChunk_Request | 852 |
| uwvm_groot_bridge/srv/WriteRGBChunk_Response | 16 |
| uwvm_groot_bridge/srv/ReleaseObservation_Request | 8 |
| uwvm_groot_bridge/srv/ReleaseObservation_Response | 12 |
| uwvm_groot_bridge/srv/InferUploadedAction_Request | 7720 |
| uwvm_groot_bridge/srv/InferUploadedAction_Response | 10929 |
| builtin_interfaces/msg/Time | 8 |
| std_msgs/msg/Header | 76 |
| geometry_msgs/msg/Point | 24 |
| geometry_msgs/msg/Quaternion | 32 |
| geometry_msgs/msg/Pose | 56 |
| geometry_msgs/msg/PoseWithCovariance | 344 |
| geometry_msgs/msg/PoseWithCovarianceStamped | 420 |
| isaac_ros_apriltag_interfaces/msg/AprilTagDetection | 612 |
| isaac_ros_apriltag_interfaces/msg/AprilTagDetectionArray | 9872 |
| builtin_interfaces/msg/Time | 8 |
| std_msgs/msg/Header | 76 |
| sensor_msgs/msg/JointState | 5980 |
| uwvm_isaac_sim_bridge/msg/ClockEvent | 14 |
| uwvm_isaac_sim_bridge/srv/ClockControl_Request | 22 |
| uwvm_isaac_sim_bridge/srv/ClockControl_Response | 48 |


总入口显式选 ros.vendor.component=nvidia-isaac-ros 作为 provider 源图；
ESM 公共导入仍覆盖全部三个完整目录。

原生例子位于 example/platform/nvidia-isaac-ros/typescript/ros2/ 下的
original_array_receive、original_array_echo、original_array_revoke；各自 README
说明手工 realtime-clock/monotonic-clock、完整原始 Array、旧句柄 9、撤销重开
125 及未授权 13。原生 ROS 通信资格不代表 GPU 功能。
