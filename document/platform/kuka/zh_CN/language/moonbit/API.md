# kuka / MoonBit API 指导

共享发射器保留本平台 1 个原始源码域的全部 31 个完整记录，包括所有原始成员、常量、默认值、边界和 codec identity。准确域名见 `share/platform/kuka/provider.json`，完整原始 IR 位于 `share/platform/kuka/domains/`。

选中的记录包使用 `@records` 导入。类型名称直接取 IR 的 `symbol`：`Symbol::new()` 构造完整值，`SymbolCodec::new()` 构造 codec。`encode(value)` 返回 `Result[Bytes, Int]`，`decode(bytes)` 返回 `Result[Symbol, Int]`；必须先处理 `Err`。空 service/action 组件保留真实零字节 payload。

MoonBit 存储字段统一使用可逆的 `field_` 前缀，例如原始 `type` 对应 `field_type`。schema 与 wire identity 保留官方原名，`schema_bytes()` 返回完整记录元数据。每次构造都分配独立的可变数组，字符串和定长数组默认值来自原始权威 IR。

公共工具清单锁定真实 MoonBit `0.10.16+b1a0e846e` 编译器。SDK 明确选择完整、有序的包图，包括 `wire`、`float` 和记录包直接使用的 `utf8`。独立例子使用新发布入口 `set_language("moonbit")`、`set_ros_platform("kuka")`、`set_ros2_version("jazzy")`、`set_ros_scenario(...)`、`set_arch("wasm32")`、`set_plat("wasm-wasip1")`。

当前 `kuka-ros2-complete` 编译图包含 31 个完整记录。该域三个完整值例子已在清空的项目目录构建真实 Wasm32，并以相同 Wasm 字节在 x86_64 与 QEMU AArch64 执行。例子实际构造选中的完整值并进行编码、解码；全记录独立字节 oracle 和畸形／语义输入矩阵仍未完成。

这些值模块显式关闭 ROS，ROS grants 为空。MoonBit 的原生 topic/service/action 通信、准确 native 发行版、memory64，以及 shared/static 生产者和消费者矩阵仍未完成。UR 原始 Humble 声明保留，值运行不构成 Humble 驱动资格。每个源码域和部署都需独立证据。参见[例子](examples.md)与[库集成状态](../../libraries.md)。
