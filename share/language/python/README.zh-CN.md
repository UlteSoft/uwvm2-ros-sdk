# 公共 CPython 3.14.8 真实客户解释器

所有平台共用同一份语言引擎。ROS1/ROS2 变体只选择真实 ABI 导入族；平台提供
完整类型与业务模块，不复制解释器。Xmake 只封装原始源码，源码由 Wasm 内的
CPython 真正解析与执行，不能把打包成功当成运行成功。

源码位于 `src/language/python`，上游归档、许可证和逐文件修改身份位于
`share/language/python/upstream.json`，完整维护闭包由 `source-lock.json` 锁定。
第三方原始源码、法律声明和 SDK 编写的适配层分别保留实际审查范围。

维护脚本 `tools/language/python/build.py` 显式接收 `--sdk`、`--llvm-root`、
`--target-sdk`、`--cache`、`--output`、`--target`。构建选择包括
`wasm32-wasip1` 与 `wasm64-wasip1`，脚本检查产物实际 memory32/memory64 标志，
绝不降低指针位宽。目标必须使用公共 LLVM 23.1.4 的 `noeh` 配置。所有编译
仅允许在获得全局 flock 的 Linux Docker cgroup 中运行，真实内核限制必须为
64 GiB、swap=0。每次使用新的缓存和输出目录，保存完整命令、对象身份和失败日志。
个人路径通过编译器前缀映射与 CPython getpath 配置真实重建消除，不修改二进制字符串。

CPython 会从源码编译匹配的本机帮助程序并冻结真实启动编码模块，配置前关闭
宿主不提供的可选 socket 扩展；不声明完整标准库、pip 或动态扩展支持。Lua 使用
上游真正的 C++ throw/catch 与现代 Wasm EH；非加密初始种子为固定公开值，缺少
宿主 shell、临时文件等操作时返回正常的不可用结果。QuickJS 保留完整 ECMAScript
引擎，仅采用已记录的 WASI 分配与无客户线程适配。以上限制按对应语言适用。

平台 provider 调用 `tools/language/python/pack.lua` 的 `configure(target, root)`
和 `build(target, root)`；公共实现只保留一份。设置 `ros.sdk.bundle_manifest` 指向
`uwvm-language-bundle-v1` JSON，含 language、backend 和有序 modules。每个模块
填写公开 name、SDK 相对 file、完整 sha256；Python 包增加 `package: true` 并先注册
父包。JS 最多 63 个库模块；Lua 使用普通 package.preload 并要求 LF 换行。

引擎清单必须匹配固定版本、目标、ROS 导入族、完整 SHA-256 与空源码槽。最终
`build` 目录只产生一个 `.wasm`；收据留在 `.uwvm-ros`。部署只需该 Wasm，运行时
使用已安装的 uwvm2-ros。权限、别名、原生类型身份、transport 与 QoS 均由用户手工
配置；编译和启动不自动授权。精确产物仍须分别完成语言、完整 codec、原生 ROS1/
ROS2、x86_64 和 QEMU 真 AArch64 运行验收。源码构建、历史证明和交叉编译不代替
本次验收。当前实际结果以候选目录外的 coverage/evidence 记录为准。

完整原始操作、精确标量/返回值、错误与所有权规则见 `share/language/js/RAW-ABI.zh-CN.md`。
