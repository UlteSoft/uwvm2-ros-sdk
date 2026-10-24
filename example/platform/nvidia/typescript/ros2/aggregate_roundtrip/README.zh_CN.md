# nvidia：TypeScript aggregate_roundtrip

从一个 uint32 种子构造三个完整组件值，输出全部原始线序字节。

本独立 .mts 应用通过真正 Microsoft TypeScript 5.9.3 严格检查，发射 ESM 后
在唯一共享 QuickJS Wasm 引擎中运行，部署产物为单一 Wasm。公共导入保留完整
原始字段、BigInt uint64、固定元组、有界 UTF-8 和有限浮点。成功输出完整线序；
非法输入 22、配额 90、流失败 5 分别保留。完整目录见平台 TypeScript 手册。

设置 UWVM_ROS_SDK_ROOT 为安装后的 SDK，用 xmake f -a wasm32 配置、
xmake -vD -j1 构建。目标显式选择 binary、typescript、ROS2 Jazzy、cpu-value
和 wasm-wasip1，run.autobuild=false 分开构建与运行。
编辑 main-typescript-CPU-clock.deployment.template.json，将 UWVM_ROS_RUN_CONFIG
指向它，再用 xmake run aggregate_roundtrip。模板只给确切 main 模块手工增加
QuickJS 初始化所需 realtime-clock；默认基本标准流仍可用，ROS 禁用且无别名。
decode_argument 的 arguments 需填一个完整 hex 参数，可复制 roundtrip 输出的
wire_hex；roundtrip 种子可选，其余 CPU 程序无参数。构建/运行钩子不增权限。

本应用已通过真实冷构建与 x86/QEMU AArch64 wasm32 客体验证。原生 ROS 通信
另用 Isaac ROS Array 例子。ROS1、memory64、ARM 宿主编译、GPU/NITROS/模拟器
执行及真正 static/shared 库组合仍需分别验收。
