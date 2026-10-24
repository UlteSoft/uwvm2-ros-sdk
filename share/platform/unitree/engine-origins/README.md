# Unitree guest-engine construction origins

The adjacent original JSON files retain their exact recorded bytes and hashes.
They describe the construction history of the CPython, QuickJS, CRuby and Zend
PHP engines selected by the Unitree producer. Their historical paths and other
platform's test counts do not define current Unitree dependencies or coverage.
`index.json` maps these records to the exact installed ROS2 VM and its current
selection metadata. ROS1 typed import derivations are recorded separately in
`engine-provenance.json` in the parent directory; Lua records live beside its
backend-specific VM files.

Application construction and VM reconstruction are different operations. The
qualified application build requires only Xmake plus the complete SDK and its
prebuilt VM. It packages the real application and SDK source, validates the
whole empty source slot, and produces one `.wasm`. The installed guest VM runs
that source on uwvm2-ros; no host source interpreter executes the application.

A new clean reconstruction of all four VMs in an independent maintenance
namespace has not been completed. In particular, the historical CPython final
link reused a genuine compiled core; it does not prove a fresh core rebuild.
Current root-language adapters may belong to different interpreter versions or
profiles. Do not substitute them for these pinned Unitree engine bytes. The
present source, codec, bare-Xmake and native-ROS qualification concerns the exact
VM identities recorded here, not a claim of reproducible VM reconstruction.

## 中文说明

相邻 JSON 原样保留引擎来源元数据及其哈希。历史路径与其他平台的测试数量不属于当前宇树构建依赖或验收范围。
`index.json` 将来源记录对应到实际安装的 ROS2 引擎；ROS1 的精确类型导入变换另见上级 `engine-provenance.json`。

应用构建与引擎源码重建分别验收。应用构建只需 Xmake 和完整 SDK 中已固定的真实解释器，最终得到一个 `.wasm`。
SDK 已有的合格解释器不等同于当前独立维护目录已完成全量冷重建；历史 CPython 最终链接复用了真实已编译核心。
根语言目录可能使用其他版本或配置，不能替换本目录记录的引擎。当前源码、codec、构建与原生 ROS 回执绑定的是这些精确产物。
