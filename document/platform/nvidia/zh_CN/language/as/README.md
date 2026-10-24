# NVIDIA 组件选择：as

选择 GR00T、Isaac ROS 或 Isaac Sim 原始组件。总入口不会创建新的线协议。

必须使用统一的真实 as 编译器/解释器或正式 AOT。平台仅提供完整类型和配置；C 替身、预计算结果或平台私有 VM 不能代替该语言。原生 Python GPU 组件也不能当作 CPython-in-Wasm guest 验收。

完整源码提交、组件/版本/传输配置、原生 identity、边界、错误与权限要求见本平台 README。公开导入根为安装目录 `include/platform` 及统一语言 module map，不得依赖例子所在目录深度。声明使用 `set_language("as")`、`set_ros_platform("nvidia")`、`set_ros2_version("jazzy")`、`set_arch` 和 `set_plat`。编译不得依赖本机 ROS 或 runtime。

当前 API 源文件：

- `include/platform/nvidia/as/console.ts`

独立应用目录：

- `example/platform/nvidia/as/ros2/groot_malformed_wire`
- `example/platform/nvidia/as/ros2/isaac_ros_roundtrip`
- `example/platform/nvidia/as/ros2/isaac_sim_decode_argument`

C 使用 `*_valid`、`*_wire_size`、`*_encode`、`*_decode`，遵守声明的 MAX_WIRE_BYTES、已初始化且不重叠的调用方存储和精确返回长度。C++ 使用 `roswasmcpp::Codec<T>`、自有字节容器与精确 span。其他已生成模块完整保留 `share/platform/nvidia/catalog.json` 中每个成员，并依赖统一语言 wire 基础。服务/动作 envelope 的所有权不等同于纯组件编解码；完整失败字段、应用 nonce 和独立清理结果均须保留。

复制独立示例到任意目录，设置 `UWVM_ROS_SDK_ROOT` 后执行 `xmake` 并检查唯一 Wasm；`xmake run` 还需要已安装 runtime 和手工策略。roundtrip 要改变 uint32 输入并比较全部实际字节；malformed_wire 要验证拒绝且目标未改变；stdin_record 要提供完整标准化消息体并逐字节核对。缺少源码、三个独立例子、真实 memory64 编译器结果或原生 peer 见证的路线仍未完成。实际 implemented/built/executed/documented 状态以 SDK 外的覆盖矩阵为准。

AS 的第三个应用名为 `decode_argument`，以一个十六进制参数传入完整标准化消息体。统一真实 AS 编译器当前仅有 wasm32 证据；memory64 仍未通过验收。

统一 Xmake 目标接口要求使用 `set_kind("binary")`、`set_kind("shared")` 和 `set_kind("static")`，配合标准 `add_deps`、`add_links`、`add_linkdirs` 与 public include 传播。当前平台应用示例尚未证明 shared/static 的生产者或消费者支持。动态部署需要各个真实 Wasm 库及明确的 preload 名称；静态 `.a` 必须包含可重定位 Wasm 对象，并实际验证归档符号提取。每种语言、内存宽度及生产者/消费者组合均须单独执行验收。

要求的模块示例包含 `main`、`io`、`algorithm`、`ros_comm`，仅 `ros_comm` 获得绑定实际加载模块身份的手工 ROS Single 权限。默认 WASI 保留基本标准流权限；algorithm 不增加资源或 ROS 授权。统一加载器、目标类型及跨模块调用方契约通过验证后才可声明此流程可用；必须具备原生正向见证及未授权模块的拒绝结果。`xmake run` 保持提交的原始配置。
