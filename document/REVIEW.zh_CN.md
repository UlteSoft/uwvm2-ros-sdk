# 全部平台 SDK 人工审查入口

第 44 轮接入唯一 TypeScript 5.9.3 公共前端及四个普通 Xmake 库示例。
最终 18 个构建图覆盖两种 Wasm 位宽，4 个严格语义错误均被拒绝；同一批产物
通过 x86_64/QEMU 共 36 次 guest 执行，其中 16 次为库生命周期验证。Unitree
用例以独立预期字节核对 WirelessController 全部字段。本组测试未打开原生
ROS 资源，各平台类型目录与原生通信仍须分别验收。
详见 [TypeScript 指南](language/typescript/zh_CN/README.md)。

同时接入最终公共 CLR 增量：1,380 个冻结源文件及 12 次对应最终 wasm32
binary/shared 产物的 x86_64/QEMU 执行，限于 PAL codec 和 ROS 拒绝范围。
它不代表 Unitree CLR 已验收。Unitree C#/F#/VB.NET/R 绑定已经编写，仍须
各自测试；R 还需要真正的 Wasm 引擎。

Franka/Flexiv 最终 Zig 增量包含 48 个源文件和逐项核验的 2,975 份原始回执。
48 次选定原生执行中含 24 次最终 Flexiv 重验，不重复增加功能覆盖数。
精确 Humble 验收及更广的平台、语言组合仍待完成。

本入口对应 36 个平台的当前公共源码。要求的语言集合共有 29 种，包含 Fortran、WAT
和 TypeScript。目录或示例存在只表示源码可审查，不代表平台、语言、ROS 发行版、
动静态库及运行宿主的完整矩阵已经通过验收。

第 43 轮已接入以下增量：

- **WAT：**唯一共享 WABT 1.0.42 安装及 LLVM23 对象链接实现。三个独立 WASI
  Xmake 项目分别展示内存计算、真实静态归档和共享 Core Preload。最终源码在
  wasm32、wasm64 下完成六个构建图，十份产物与保留的成功执行产物逐字节一致。
  仅安装 Xmake 的冷启动证据包含六次应用执行及两种位宽的单次初始化验证。
  WAT 原生 ROS 和 QEMU 验收仍未完成。
- **MoonBit：**接入 KUKA、Universal Robots 和 Doosan 的最终注释源码。
  十二个 wasm32 项目已重建，相同产物保留 x86_64、QEMU AArch64 共二十四次
  值编解码执行。这些执行关闭 ROS；非默认值逐字段独立 oracle、原生 ROS、
  memory64 及库 producer/consumer 资格仍需继续验证。
- **Dobot、Elephant、UFactory、RealMan JavaScript：**四个当前公共源码图通过
  同一个共享 QuickJS 引擎重新封装，全部 447 份公共源码依赖保留。x86_64 和
  QEMU AArch64 下完成八次原始类型正向原生通信、八次禁用授权检查。实际执行
  使用 Jazzy；名称含 Humble 的源码 profile 不计作 Humble 原生验收。
  正向用例核对完整原生值及资源清理。

四厂商现有 AssemblyScript、Java、JavaScript 累计共有二十四个选定正向原生
覆盖点，每个厂商、语言、宿主组合各一个。JS 新产物重验不重复增加覆盖点。
该范围限于 wasm32/noeh 的 binary，不表示所有消息或动静态库组合均已完成。

此前已验收内容继续保留：部分原生 ROS1/ROS2 和 ABB C/C++ 路线、FANUC 独立
Action 取消、Franka/Flexiv 原生客户端与服务端及完整记录库用例、Kinova 跨语言
编解码、公共 Python/JavaScript/Lua 与 Ruby/PHP 引擎、Java/Kotlin 和原生语言
库示例，以及已审查的 Go/Rust 平台增量。各平台 review-status.json 分别记录
验收范围和仍未完成的内容。

普通跨语言 Preload 示例保留四个最终构建和八次原生 ROS1/ROS2 运行，其中
四次使用 QEMU，覆盖两种 Wasm 位宽。D 静态归档、Zig 算法与主程序、D I/O、
无 Objective-C runtime 的 ROS 模块采用普通 Xmake 依赖及 binary/static/shared
声明。应用的显式部署配置只向通信模块授予 ROS，按模块声明所需 WASI 权限。

Fortran 仍需成功构建公共 LLVM Flang 23 前端、目标内建模块及真实运行库，并
验证两种位宽的 ISO C ABI；已经编写的平台源码不计作编译支持。Unitree CLR/R、全平台 TypeScript 原生验收仍待完成。维护层 RMW 注释、
modern-EH 库图、TinyGo 启动及完整厂商矩阵也仍未完成，原始失败记录均保留。

编译和应用执行证据均来自 SSH Linux，实际 cgroup 限制为
memory.max=68719476736、memory.swap.max=0。QEMU 证据同时标识 AArch64 runtime
与原生依赖闭包。本轮没有在本机编译或执行 SDK 应用。

下表统计独立语言示例，不包含平台级聚合 Xmake 文件。它是人工审查清单，
不是完整发布合格证明。

| 平台 | 独立 Xmake 示例 | 示例语言种类 | 中文手册 | 英文手册 |
|---|---:|---:|---:|---:|
| [abb](platform/abb) | 164 | 26 | 64 | 64 |
| [agibot](platform/agibot) | 78 | 26 | 33 | 33 |
| [agilex](platform/agilex) | 78 | 13 | 52 | 52 |
| [booster](platform/booster) | 21 | 7 | 8 | 8 |
| [boston_dynamics](platform/boston_dynamics) | 39 | 13 | 52 | 52 |
| [clearpath](platform/clearpath) | 156 | 13 | 52 | 52 |
| [deep_robotics](platform/deep_robotics) | 21 | 7 | 8 | 8 |
| [dobot](platform/dobot) | 226 | 15 | 28 | 28 |
| [doosan](platform/doosan) | 937 | 26 | 57 | 60 |
| [elephant](platform/elephant) | 270 | 15 | 28 | 28 |
| [fanuc](platform/fanuc) | 82 | 26 | 58 | 58 |
| [flexiv](platform/flexiv) | 753 | 26 | 34 | 34 |
| [fourier](platform/fourier) | 24 | 8 | 28 | 28 |
| [franka](platform/franka) | 172 | 26 | 36 | 36 |
| [hello_robot](platform/hello_robot) | 18 | 6 | 79 | 79 |
| [kinova](platform/kinova) | 88 | 26 | 31 | 31 |
| [kuka](platform/kuka) | 79 | 26 | 56 | 58 |
| [leju](platform/leju) | 29 | 8 | 39 | 39 |
| [limx](platform/limx) | 21 | 7 | 8 | 8 |
| [nvidia](platform/nvidia) | 24 | 8 | 27 | 33 |
| [nvidia-groot](platform/nvidia-groot) | 24 | 8 | 27 | 29 |
| [nvidia-isaac-ros](platform/nvidia-isaac-ros) | 39 | 8 | 32 | 34 |
| [nvidia-isaac-sim](platform/nvidia-isaac-sim) | 26 | 8 | 27 | 30 |
| [pal](platform/pal) | 45 | 6 | 85 | 85 |
| [realman](platform/realman) | 225 | 15 | 28 | 28 |
| [robotis](platform/robotis) | 36 | 6 | 79 | 79 |
| [ros](platform/ros) | 174 | 26 | 26 | 26 |
| [ros1](platform/ros1) | 91 | 26 | 29 | 29 |
| [ros2](platform/ros2) | 91 | 26 | 29 | 29 |
| [trossen](platform/trossen) | 36 | 6 | 79 | 79 |
| [ubtech](platform/ubtech) | 24 | 8 | 27 | 27 |
| [ufactory](platform/ufactory) | 450 | 15 | 28 | 28 |
| [unitree](platform/unitree) | 132 | 22 | 44 | 44 |
| [universal_robots](platform/universal_robots) | 391 | 26 | 57 | 59 |
| [wasi](platform/wasi) | 57 | 10 | 26 | 26 |
| [yaskawa](platform/yaskawa) | 79 | 26 | 55 | 55 |

## 审查与构建方式

1. 阅读对应平台的双语语言手册以及 review-status.json 中的验收范围。
2. 进入一个示例目录，使用该目录的独立 xmake.lua。公开导入路径由共享 SDK
   include 注册统一解析。
3. 使用 set_language、set_ros_platform 选择语言和平台；版本使用
   set_ros1_version、set_ros2_version 和对应 set_<vendor>_version 声明。
   通过公共架构配置选择文档支持的 wasm32-wasip1 或 wasm64-wasip1 路线。
4. 使用普通 binary、static、shared target 及依赖关系。应用与共享交付模块
   为 .wasm；有索引的真实静态归档作为构建中间输入。解释性语言统一使用
   固定版本的共享 Wasm 引擎，不以宿主解释器代替。
5. 执行 xmake run 前配置已安装的 uwvm2-ros 和各模块显式权限。示例模板默认
   关闭原生 ROS；构建成功不会自动授予能力，也不表示已经对接真实机器人。

WAT 构建、对象链接与初始化契约见
[共享 WAT 指导](../share/language/wat/README.zh-CN.md)。
其他路线必须完成精确源码、产物、原生发行版和执行宿主的对应验收后再升级状态。

TypeScript 库示例另已通过16次实际 Xmake run 调用，运行时没有重新编译。已验收 CLR 批次使用显式选择并核验哈希的工具及 native-EH 配对；公共默认冷安装仍需补齐打包接线，这些结果不代表 Unitree CLR 绑定已通过验收。
