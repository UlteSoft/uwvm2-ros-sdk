# Unitree 本批验收

本批收录 22 个源码入口、132 个独立示例。每个入口有 ROS1、ROS2 各 3 个示例。
`c_ffi_bridge` 是单独编译的 C ABI 桥接层，因此这里包括 21 种源码语言及该桥接入口。
语言索引列出了全部已发布入口和对应的真实语言源码。

| 检查 | 独立示例数 | 验收范围 |
| --- | ---: | --- |
| Xmake 冷构建 | 132/132 | Linux x86_64，仅预装 Xmake，使用 SDK 内固定哈希的离线工具包 |
| x86_64 原生 ROS 运行 | 132/132 | 原版 Noetic、Jazzy，生产 uwvm2-ros 与原生 Gateway |
| QEMU AArch64 原生 ROS 运行 | 132/132 | 相同 Wasm SHA-256，真实 AArch64 runtime、Gateway 和原版 ROS 库 |
| 完整原生适配器探针 | 54/54 种记录 | ROS1 全部 11 种、ROS2 全部 43 种，完整默认值往返与非法长度拒绝 |

上表统计独立示例，不表示所有测试在同一批次重跑。每个最终 Wasm 都关联实际冷构建和原生运行记录。
完全相同的产物继承此前执行证据；有变化的 Lua、MoonBit、Ruby、PHP、Rust、Java、Kotlin 产物均已重新执行。
独立 dispatcher 审阅验证新增语言分支保持既有核心分支的行为。
[当前验收清单](../../../../share/platform/unitree/qualification.json) 提供每个示例的产物和证据哈希。

示例的目标选择保留显式 Xmake 架构和平台请求。独立的真实 Xmake 配置审计逐项比较修正前后的
完整默认 target，并检查原 wasm32 发布中 `wasm64`、`wasm-wasip2`、`wasm-wasip1-threads` 的拒绝行为。后续独立验收的 C/C++ memory64 配置见 [MEMORY64.md](MEMORY64.md)。
默认编译设置和语言输入保持一致；这些配置检查单独记录，不算作新增 Wasm 构建或运行次数。

所有编译和运行均在 SSH Linux 的 64 GiB、禁用 swap 的 cgroup 中完成。
维护代码先在本机写入，再通过 SCP 同步完整文件夹。本机只进行文本、哈希、文档和证据审阅，
没有编译或运行 SDK 示例。

唯一应用交付产物为 `build/*.wasm`。Xmake 在缓存内解包工具链，编译中间文件保留为内部构建输入。
构建只需完整 SDK 发行目录和 Xmake，无需预装语言编译器、ROS 或 uwvm2-ros。
`xmake run` 另需已安装的 runtime、对应原生 Gateway 和 ROS 发行版、可信部署 JSON、Python 3 进程启动器。
Lua 的部署需显式启用 Wasm exceptions。Java、Kotlin 经过 AOT 编译，应用运行不需要 JVM。

原生运行逐字节比较完整原始消息的 canonical 编码，核对状态及正常路径的一次 owner 清理，
并确认构建产物未改变。额外的真实 Wasm 回归覆盖未写入的 required-length sentinel、完整无符号
32/64 位诊断值，以及 Rust 标准输出拒写和设备空间不足时保留先前 primary/cleanup 错误的行为。
全部 54 种记录的 codec 检查与真实主题通信分别记录。

解释器路线使用固定哈希的真实 CPython、QuickJS、Lua、CRuby 和 Zend PHP Wasm 引擎，
本批验证了应用打包和执行。所有解释器引擎从完整源码重新冷构建仍是独立未完成项；
原始引擎身份与已有来源记录保留在
[engine origins](../../../../share/platform/unitree/engine-origins/README.md)。

本批覆盖 Noetic、Jazzy 上的 `wasm32-wasip1` 观测应用。已通信的 6 种原生类型不等于全部
54 种 codec 类型都完成真实通信，也不代表机器人运动控制或实机行为验收。
QEMU 验证真实 AArch64 可执行程序，不等同于 ARM 实机或 ARM 原生编译主机。
C/C++ 另有独立记录的 memory64 配置；其他 ROS 发行版、C#/F#/VB.NET 和 R 不在本批 Unitree 发布范围内；
这些未完成入口没有写入正式 Unitree 示例目录。

当前工具版本见 [publication.json](../../../../share/platform/unitree/publication.json)。
原始 8 个入口的验收记录保留于
[原始 qualification](../../../../share/platform/unitree/qualification/wasm32-eight-route-baseline.json)，未改写历史结果。
包含机器环境信息的源码清单和原始执行日志保存在 SDK 发行目录之外。
