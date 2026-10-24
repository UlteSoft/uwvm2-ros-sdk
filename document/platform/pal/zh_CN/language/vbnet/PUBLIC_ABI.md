# vbnet 公共 RosWasm 集成

规范公共绑定为 `Uwvm.RosWasm`。普通公共项目仅编译 `RosWasm/**/*.cs`，明确选择
`UWVM_ROS1` 或 `UWVM_ROS2`。独立 owned-service 扩展另有明确的运行时/profile，
不混入普通 SDK 程序集；不恢复已移除的 `Uwvm.Ros` 辅助树。

PAL 记录保留原始字段、常量、界限、身份和默认值描述。`CatalogWire` 字段适配层
只调用公共 `Codecs` 原语，不另建 ROS 导入或 capability owner。完整类型工厂复用
公共 `Node`、`Publisher<T>`、`Subscription<T>`、`ServiceClient<Q,S>`、
`ServiceServer<Q,S>` 以及 `ActionClient`/`ActionServer`。调用者明确提供各角色的
独立 alias 并拥有返回端点；公共层保留原始 setup 回滚、同 session 检查、请求 ID
和清理规则。

调用者创建 `Session(new NativeTransport())`、检查 ABI，再构造 `Node(session)`。
生成的 `Ros2Api…CreatePublisher(node, alias)` 接收明确授权的 publisher alias，
随后用完整记录调用 `Publish`。服务分别选择 call 或 advertise/respond 角色；
Action 客户端需要四个独立角色，服务器需要两个独立角色。不得推断或自动授予权限。
已取得的端点/session 均须使用公共 checked 清理 API 关闭。

共享标量工程位于
`example/platform/pal/vbnet/ros2/ros2_humble_devel/shared_math`：

```sh
xmake f -c -p wasm-wasip1 -a wasm32
xmake
export UWVM_ROS_RUN_CONFIG=/absolute/run-native-clr.json
xmake run main
```

通过 `UWVM_ROS_SDK_ROOT` 选择安装版 SDK，并复制手工运行配置、填写 runtime/gateway
路径。工程在运行时关闭自动构建，明确声明 `shared_math` 场景。C# 消费者调用两个
独立实例中的真实 producer，检查公共有符号数/UTF-8 编解码、完整 BatteryState
字段和准确规范字节，拒绝截断/尾随/非有限值坏包，并要求未授权公共 native open
真实返回 errno13。ROS 和额外 WASI 权限均为空；默认基本标准流权限仍存在。
正向 PAL 原生通信、硬件、memory64、静态归档及更多语言组合仍为独立待验收项，
源码存在不代表这些项目已通过。

独立 ROS1 工程位于 `example/platform/pal/vbnet/ros1/ros1_noetic_devel/shared_math`，保留原始 `chargeState` 和 `batteryPercentage` 字段名。三个 ROS1 producer/C# consumer 组合也通过相同的公共 x86/ARM 检查。完整 PAL ROS1/ROS2 C# 源码均已实际编译；正向厂商原生通信和全目录运行覆盖仍须独立验收。
