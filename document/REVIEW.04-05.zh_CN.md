# SDK 04、05 人工审查

2026-10-23：本轮交付的接口、实现、独立示例、配置和双语手册已接入公共
`sdk/`。这里记录可以审查的源码和已经存在的测试证据；两组均未达到完整发布验收。

| 组别 | 平台 | 独立 Xmake 项目 | 示例语言种类 | 中文／英文手册 |
|---|---|---:|---:|---:|
| 04 | [Franka](platform/franka) | 158 | 26 | 27／27 |
| 04 | [Kinova](platform/kinova) | 80 | 26 | 27／27 |
| 04 | [Flexiv](platform/flexiv) | 742 | 26 | 27／27 |
| 05 | [Dobot](platform/dobot) | 226 | 15 | 28／28 |
| 05 | [Elephant](platform/elephant) | 270 | 15 | 28／28 |
| 05 | [UFactory](platform/ufactory) | 450 | 15 | 28／28 |
| 05 | [RealMan](platform/realman) | 225 | 15 | 28／28 |

项目数量包含独立库组合和原生观察示例，不能直接当作已经运行的应用数量。
语言目录存在不代表该语言的编译器、解释器、原生通信或全部接口已经通过验收。
05 目前只有 15 种语言的示例，距离要求的全部语言仍有缺口。

## 审查位置

- 应用及独立构建入口：`sdk/example/platform/<平台>/<语言>/`。
- 公共导入与类型：`sdk/include/platform/<平台>/`。
- 实现、配置、工具：对应的 `sdk/src/platform/`、`sdk/share/platform/`、`sdk/tools/platform/`。
- 语言与示例指导：`sdk/document/platform/<平台>/{zh_CN,en_US}/language/<语言>/`。
- 每个平台当前状态：`sdk/share/platform/<平台>/review-status.json`。

04 保留 14 个来源 profile，包含 454 个完整记录／组件和 1,424 个字段。
Franka 的 Noetic/Jazzy、Kinova 的 Humble 和 Kortex 原生接口、Flexiv 的各发行版
分别保留身份。Flexiv v1 的三个接触力限制字段允许正无穷；其他字段的有限值规则
保持独立，不能统一放宽。

05 保留 26 个来源 profile、1,846 个原始定义、2,982 个记录／组件和 8,047 个字段。
每例通过 `set_ros_config` 声明 profile、来源锁哈希、ABI 和 transport；模型选择
必须属于该 profile。来源 profile 与实际运行的 ROS 发行版分别校验。

## 证据范围

04 的交付清单包含 4,062 个文件，逐文件 SHA-256 核对无差异。保留证据包括
210 个 Wasm 构建、204 个实际 guest 应用和 1,550 项检查，其中有 14 个 profile
的 C/C++ 双位宽 codec 组合以及 12 个正无穷专项。它们绑定各自当时的公共组件快照；
不能把这些结果自动转记到本轮更新后的公共框架。117 个接口身份仍属于来源图候选，
不等于正式原生类型导出和 guest/native bridge 已通过。

05 的交付清单包含 5,500 个文件，逐文件 SHA-256 核对无差异。最新 18 项实际冷构建、
配置值／语义 profile 检查和真实 VM 默认禁用 ROS 的拒绝路径通过，拒绝结果为 13，
没有创建 owner 或输出响应字节。48／66 项历史批次分别保留，不能累计为当前源码全量通过。
四个历史 C++98 构建失败仍未关闭。

上述执行来自 SSH Linux 中实际检查过的 64 GiB、零 swap cgroup。本机只进行源码编写、
格式整理和哈希审查。本轮合入后的有限回归结果将记录在下方；完整原生 ROS 正向通信、
QEMU AArch64、全部语言和厂商动静态库矩阵继续分别验收。

## 构建与运行

在一个独立示例目录执行 `xmake`。需要外部安装时设置 `UWVM_ROS_SDK_ROOT`。
选择位宽使用 `xmake f --arch=wasm64 --plat=wasm-wasip1`，再执行 `xmake`；
默认仍为 wasm32。实际支持范围由所选语言的公共生产者校验，不能静默降为另一位宽。

运行使用 `xmake run`，需要另行安装 uwvm2-ros，并提供手动配置的部署和权限。
`set_ros1_version`、`set_ros2_version` 和 profile 选择不会授予 ROS 权限。
部署目录只包含 `.wasm`；静态 `.a` 是私有链接输入。库使用标准
`set_kind("binary"/"static"/"shared")`，其证据须与普通应用构建分开核验。

本轮同步保留公共 Xmake 的结构化选项校验、库类型处理、Preload 权限模板及
Agibot 版本冲突校验。未接入的解释器适配器和已退役的厂商独立 DSL 没有覆盖当前入口。

## 合入后的有限回归

最终批次通过 17/17 项公共配置检查、28/28 个真实 LLVM 23 构建和 28/28 次真实 Wasm 执行。七个平台各覆盖 C、C++ 与 wasm32、wasm64 的四个组合，直接检查产物中的实际内存位宽，且每个项目只有一个 `.wasm` 产物。

04 的 12 次执行验证空输入被完整值 codec 拒绝（22）；05 的 16 次执行验证未授权 ROS 被拒绝（13），没有 owner 或响应字节。28 个取回产物的 SHA-256 均与实际构建记录相符，测试使用的公共源码也与当前本机版本逐文件一致。该批次仍不代表原生 ROS 正向通信、QEMU AArch64 或厂商库组合通过。
