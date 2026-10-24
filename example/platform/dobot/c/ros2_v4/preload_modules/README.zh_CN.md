# 独立 Wasm 模块与真实静态归档

本源码候选依赖公共、已验证的 `set_kind` 实现。在本目录运行 `xmake`：main、main_cpp 是 binary Wasm 消费端；io、algorithm、ros_comm 是独立 shared Wasm 模块；algorithm_core 是包含真实可重定位 Wasm 对象的 `.a`，通过原生 `add_deps` 链接。目标 kind 被静默改写时，构建前会明确拒绝。动态部署须同时提供 main、io、algorithm、ros_comm 四个 Wasm 文件；归档仅为构建输入。应用构建不能证明库能力。

io 用自身内存执行真实 WASI 标准输出。algorithm 经静态归档成员计算无符号整数，并显式检查未获授权的 ROS open；它保留默认 WASI 的基本标准流权限，没有额外资源或 ROS 授权。ros_comm 独占原始 RobotStatus 的两个完整布尔字段、原生 ROS capability、有限轮询、时钟等待及一次清理。模块间只传固定 u32 标量，不传 capability 或线性内存指针；主程序及库内可变状态须串行访问。

完整 Preload 命令和手动 Single 权限配置见 `manual-run.sh`。操作者先审核脚本，设置 `UWVM_EXECUTABLE`、`SDK_GATEWAY_SOCKET`、`SDK_GATEWAY_UID`、`DOBOT_NATIVE_IDENTITY`、`DOBOT_CODEC_IDENTITY`，再在本示例目录显式调用。脚本使用公共 Xmake 规则生成的 `build/targets/<编码后的目标名>` 独立输出路径。Preload rename 与 Single create 的模块身份精确一致；仅 ros_comm 获 ROS 授权，没有全局 ROS grant。原生类型身份来自独立安装环境；adapter codec 身份须取自同一编译配对的 manifest。须事先启动匹配的自定义 registry、运行时、gateway 与受控原始 ROS peer；启用的目标在 guest 执行前会真实预检 gateway。该脚本不接入自动 `xmake run`，不发送实体机器人命令。

正向验收逐项核对原始两个布尔字段、全部两字节规范内容、实际算法结果、主错误、清理状态及 algorithm_denied=13。使用相同 C 生产端运行 main_cpp，单独记录跨语言证据。wrong_signature 以 i64/i64 请求实际 i32/i32 的 score；只 Preload algorithm、不启用 ROS 目标时，加载须在 main 执行前拒绝。重复模块 rename 也须拒绝。用固定公共 llvm-ar、llvm-nm 检查真实 `.a` 成员、符号及链接提取，再覆盖传递依赖、签名和宽度错配、导出冲突、模块独立内存与拒绝路径，并分别运行 wasm32、wasm64、x86 与 QEMU ARM。普通 Core Preload 不能推定为 LLVM PIC、dylink 支持。

受控 Linux x86 验收覆盖 wasm32、wasm64 的 Preview1、无线程及 noeh 配置：16 个冷构建目标、两个真实归档、六个 shared 模块、C/C++ 消费端及计算和拒绝路径。同源码配对的 Jazzy runtime/gateway 还通过双宽度原生 RobotStatus 观察、逐模块权限和清理。公共 Xmake 声明保留 Humble，其原生安装及 QEMU ARM 仍须单独验收。错误签名初始化沿用运行时的 SIGILL 致命诊断。Core Preload 验收不能推定为 PIC、dylink 支持。
