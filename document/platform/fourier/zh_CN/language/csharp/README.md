# fourier / csharp

本源码包保留完整厂商目录、依赖、服务请求与响应，以及动作 goal/result/feedback 组件。每个配置的 API 手册逐项列出所有字段。源码存在、编译成功、Wasm 执行通过和原生 ROS 验收是独立状态；应以交付 coverage 和实际收据判断当前文件是否通过。

安装 Xmake 与校验过的 SDK，使用 `UWVM_ROS_SDK_ROOT` 选择根目录。每个例子声明 `set_language("csharp")`、`set_ros_platform("fourier")`、`set_values("ros.sdk.profile", "PROFILE")`，以及精确的 `set_ros1_version("noetic")` 或 `set_ros2_version("jazzy")`、`set_plat("wasm-wasip1")`、`set_arch("wasm32")`。ROS2 Humble 源配置也可显式选择；Jazzy 夹具须重新构建原始类型，不能推断上游发布了其他版本。控制器固件、型号、连接方式及权限均须部署方明确配置。

配置名称：`ros1_aurora_bridge_v1`, `ros2_aurora_bridge_v1`。不同发布版本不能混用生成类。公共导入从 `fourier/csharp/` 开始；例子使用全局模块根，不含父目录遍历。`c_ffi_bridge` 是明确的 C FFI 边界。Kotlin 可使用真实 JVM 公共类型，F#/VB.NET 可使用真实 CLR 公共类型，但仍须使用相应真实 AOT 编译器。Objective-C 须有实际编译器及运行时。缺失路线必须继续实现，不能用 C 或玩具解释器替代。

所有平台共用 CRuby 3.4.7 和 PHP/Zend 8.4.13。打包器只嵌入完整源模块和入口，实际语言 VM 执行所有语义与编解码；部署产物仅一个 `.wasm`，无需源文件或数据旁文件。当前解释器为 memory32、非共享 WASI Preview1 与 Asyncify。memory64 必须真实构建并执行新引擎后才能验收；不能将请求降为 wasm32。C/C++ 单独选择 LLVM 23 目标库，Preview2、线程与 EH 也须明确验证。

记录保留原始字段名、宽度、数组、字符串界限、常量和默认值。编码与解码覆盖完整记录；截断、尾随数据、非法 UTF-8/NUL、非规范布尔值、非有限浮点数及配额越界均须失败。32 位 PHP 使用 `Word` 保存 uint32/int64/uint64，宽常量使用精确十进制字符串；Ruby 使用完整 Integer；R 使用带类型的原始八字节数值，真实独立 R 引擎仍在实现中。

观察结果分别保存主操作错误、清理错误及其存在标志、响应存在标志、所需长度和完整规范十六进制。能力只获取一次、关闭一次；异常也必须触发关闭。服务不自动重试。只有订阅的 idle 才会再次轮询，最多 250 次，每次真实暂停 20 ms；这是轮询预算，不是硬实时截止时间。返回值由调用方持有。厂商业务结果字段仍保留，调用方须独立检查。

`xmake` 负责构建；`xmake run` 使用已安装的 uwvm2-ros 及人工配置的原生部署（`UWVM_ROS_RUN_CONFIG` 或 `--ros-run-config`）。启动器不得修改策略或自动授权。编译与夹具测试不授权物理机器人动作。多次启动须保持相同 Wasm。Fourier 的 Aurora ROS 封装是本项目定义的桥接协议，不是厂商 DDS；宿主客户端的创建、型号配置及关闭由运维方管理。Fourier 服务例子的 argv[2] 必须是调用方维护的单调递增序号。

交付的源入口：

- `include/platform/fourier/csharp/ros1/fourier-ros1-aurora-bridge-v1-complete/BoundedRecords.cs`
- `include/platform/fourier/csharp/ros2/fourier-ros2-aurora-bridge-v1-complete/BoundedRecords.cs`

独立例子：

该路线仍需完成至少三个独立构建并执行的例子。

## 显式原生部署

用 `set_ros_run_config("deployment.json")` 选择操作员配置。唯一公共入口
`tools/platform/ros/run.py` 使用 `uwvm-native-ros-run-v2`，后端及发行版须与目标
完全一致。`examples.<scenario>` 必须显式提供 `arguments`、`main_module`、
`preloads`、`modules`。`arguments` 是原始 UTF-8 参数数组，含别名，以及示例要求时
由调用方维护的序号；启动器不会根据平台或场景名字合成这些参数。

每个加载模块分别配置 `ros_enabled`、`grants`、`wasi_grants`。授权保留操作员
选择的精确别名、操作、资源、原生类型、原生身份及限额。禁用 ROS 时授权列表须
为空。公共入口只建立声明的网关绑定；真实对端、匹配的厂商原生注册表和实体控制器
准备均由部署方提供。编解码身份不能替代已注册的原生类型身份。空闲等待还须显式
授予 WASI 单调时钟权限。

预加载库按精确模块名独立配置。算法保留默认 WASI（含基本标准流权限），不追加
资源或 ROS 授权；只有 `ros_comm` 获得 ROS 权限，并以显式
`call_boundary: "module-exports"` 选择导出接口委托。全局授权不能证明此隔离。
公共共享库、静态库 Xmake 生产器仍为独立依赖；源码和私有 Core 实验不等于普通库
目标已经验收。运行入口保持所提交策略，不执行构建，也不启动实体控制器。
