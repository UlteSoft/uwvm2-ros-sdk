# 公共 Xmake 配置

全部平台使用 `tools/xmake/ros.lua` 提供的同一套声明入口。每个应用目录保存
自己的 `xmake.lua` 和源码；通过 `UWVM_ROS_SDK_ROOT` 指定已安装的 SDK。
配置只选择源码、编译目标和平台接口，运行权限必须另行手动声明。

## 一个 ABB C++ 应用

下面的构建描述用于已提供的 `read_speed/main.cpp`。`complete` 选择锁定的 ABB
接口 catalog，不表示控制器固件或 RobotWare 版本。

```lua
-- @brief Use the installed SDK's common configuration and include paths.
local sdk = os.getenv("UWVM_ROS_SDK_ROOT")
includes(path.join(sdk, "tools/xmake/ros.lua"))

target("abb_read_speed")
    set_kind("binary")
    set_language("cpp")
    set_ros_platform("abb")
    set_ros2_version("jazzy")
    set_abb_version("complete")
    set_plat("wasm-wasip1")
    set_wasm_exceptions("noeh")
    -- Preserve an explicit architecture selected by xmake f -a.
    set_arch(get_config("arch") or "wasm32")
    set_ros_scenario("read_speed")
    add_files("main.cpp")
target_end()
```

这是声明示例，不是此 ABB 应用构建已通过的记录。按当前默认产物布局，target 请求
在 Xmake 选定 build 目录下生成 `artifacts/abb_read_speed.wasm`；显式 target 目录或
依赖图可能改变位置，应读取 target 对象目录内的实际产物记录。

只有项目保留架构选择、provider、真实语言 adapter 和 target 闭包支持时，
`xmake f -a wasm64` 才是在请求对应 64 位目标。硬编码 `set_arch("wasm32")` 的
描述若与显式 wasm64 配置冲突，当前共享 dispatch 会在编译前拒绝；平台冲突也
拒绝。源码描述应保留配置选择。审阅快照中的精确 C/C++ static-pointer 图已生成
匹配32/64位的产物内存，但不能泛化为全部语言支持。必须核对记录的 triple 和
实际生成的 memory，不能只看配置或
构建退出成功。请求的 triple 为 `wasm32-wasip1` 或 `wasm64-wasip1`；guest 指针
宽度与运行 uwvm2-ros 的 x86_64/AArch64 宿主架构分别选择。

应用通过公共根导入，例如
`#include <abb/cpp/ros2/abb-ros2-complete/bounded_interfaces.hpp>`。
构建描述不需要按目录深度拼接 SDK 路径。

## 声明入口

| 入口 | 含义与检查 |
| --- | --- |
| `set_language(name)` | 选择真实编译前端或明确的语言桥接路线；语言必须有平台 binding 和公共 adapter。 |
| `set_ros_platform(name)` | 选择已安装平台及其完整 provider schema，同时加入公共 include 根。 |
| `set_ros1_version(distribution)` | 选择 ROS1 后端及该平台声明支持的原生发行版。 |
| `set_ros2_version(distribution)` | 选择 ROS2 后端及该平台声明支持的原生发行版。 |
| `set_abb_version(catalog)` | 选择 ABB 接口 catalog；不允许与通用配置中的 catalog 冲突。 |
| `set_agibot_version(version)` | 选择 Agibot 的明确来源版本，必须与 variant 共同匹配已安装 profile。 |
| `set_agibot_variant(variant)` | 选择 Agibot 的来源变体。 |
| `set_ros_config(options)` | 按当前平台 schema 校验完整选项表；拒绝未知键、错误类型和不支持的值。 |
| `set_ros_scenario(name)` | 选择应用场景名称，用于平台检查及显式运行部署。 |
| `set_wasm_exceptions(profile)` | 明确选择 `noeh` 或 `eh` 目标闭包。 |
| `set_wasm_features(features)` | 选择平台和语言路线支持的 Wasm 特性；列表必须连续且无重复。 |
| `set_wasm_entry(entry)` | `command` 使用语言的常规入口；`freestanding` 要求应用自行实现入口及所需支持。 |
| `set_ros_run_config(filename)` | 指定由操作员准备的运行部署 JSON；不会由构建过程授予权限。 |

`set_ros1_version` 和 `set_ros2_version` 要求非空发行版标识，如 provider 声明的
`noetic` 或 `jazzy`；`""` 会被拒绝。发行版与厂商 source/catalog 版本、控制器固件、
原生 type-support ABI、编译器/解释器版本分别选择。项目及部署必须明确保留各身份；
`complete` 不是版本或兼容性证书。

这些名称是首次发布的统一接口，不提供旧命名别名。`set_arch`、`set_plat`、
`set_kind`、`add_deps` 等继续采用 Xmake 的标准声明方式。具体语言的静态库、
共享模块和线程/异常组合须具备对应公共实现；声明有效不等于该组合已完成验收。

声明区分输出类别和内存语义：

- `set_wasm_kind("binary")` 请求完整 `.wasm` 命令。
- `set_wasm_kind("static")` 请求含真实 relocatable Wasm object 的带索引归档，
  默认位于选定 build 目录下的 `.archives/<target-identity>`。它是链接输入，
  与已链接 consumer 共享内存和权限，不作为另一个实例部署。
- 既有 `set_kind("shared")` 请求自有内存的 Core preload，标识为 `core-preload`，
  不选择显式 dynamic-memory 模式，也不是 native DSO。
- `set_wasm_kind("dynamic")` 请求显式 import 通信内存；
  `set_wasm_kind("independent")` 还请求未导出的私有内存。两者都需要
  `set_wasm_memory_import(module, export)` 和实现精确模式的 adapter。当前 dispatcher
  拒绝 C、C++、`c_ffi_bridge` 的这两种模式及显式 memory import。C 系列库图当前
  还要求 Preview 1、`noeh` 和单 guest 线程。

其他语言由共享 adapter 检查精确 producer/consumer 语言、triple、异常 profile 和
内存模式。声明或源码候选不能证明所有组合都能构建和运行。显式 `set_targetdir`、
`set_basename` 保留 Xmake 语义。`add_deps` 传播公开 include 和定义；
`inherit = false` 只保留构建顺序。preload 是独立部署输入，不是静态链接输入。
真实私有 backing、初始化、调用者身份、逐实例授权及清理必须由 runtime 证据证明；
构建声明、模块名或多个 memory index 均不能证明这些事实。

原生 ROS Preload 示例包含 `deployment.template.json`。请审查并保存实际部署文件，
再执行 `xmake f --ros-run-config=...` 和 `xmake run main`。main 选择的 ROS 后端
只是部署元数据。该特定模板只为 `ros_comm` 请求 ROS 权限；选定 runtime 和
网关必须执行精确逐调用者授权。模板本身既不授予权限，也不使部署取得资格。

## 平台选项与特性

SDK 的 Python 测试监督器要求 Python 3.11 或更新版本，包括
`hashlib.file_digest` 和异常组 traceback 支持。`UWVM_SDK_PYTHON` 可指定解释器的
绝对路径；未设置时检查 PATH 中的 `python3`。显式指定的路径不存在、是相对路径，
或解释器版本不满足要求时，Xmake 在启动监督器前给出 `BLOCKED_SDK_PYTHON_*`
诊断，不会悄悄换用另一个解释器。该解释器用于宿主测试基础设施，与在 Wasm 内运行
Python 应用的解释器是不同依赖。

Linux 上的测试监督器在创建 actor 前启用子进程收养机制，并通过内核 pidfd
回收自己的后代，包括组长提前退出、双重 fork、`setsid` 和暂停的进程。清理结果
保留原始失败和未退出进程；它不取代公共资源预算、执行准入或独立生命周期守护。

ABB 的显式选项可以写成：

```lua
set_ros_config({catalog = "complete", transport = "native-ros"})
```

空表表示使用该平台声明的默认值。必选且没有默认值的字段必须提供。`false`
不会被当作“未填写”而替换成默认值；重复指定的专用选择器与通用选项必须一致。
每个平台的合法键和值以 `share/platform/<platform>/provider.json` 为准。

例如 `set_wasm_features({"memory64"})` 必须搭配 `set_arch("wasm64")`。
选择 `exceptions` 时还需要 `set_wasm_exceptions("eh")` 和实际可用的异常闭包。
契约要求语言、指针宽度和特性保持请求值，但必须验证实际输出；先前显式请求 wasm64
的静态库诊断实际仍生成 wasm32。因此，契约存在不能当作每个当前示例均已验证的事实。

## 构建与运行

只构建需要 Xmake 和对应平台发行包中的公共编译器/语言运行时闭包；不要求预装
ROS 或 uwvm2-ros。当前 bundle installer 消费 SDK 中已存在且固定哈希的归档，归档
缺失时失败，不下载缺失归档；Python 监督器选择器也不获取宿主 Python。补齐这些输入
是当前前提或缺少 bootstrap 的阻塞，不能算作仅装 Xmake 冷启动已完成。每个最终示例
仍必须从仅有 Xmake 的安装自动取得所支持的固定依赖，完整 SDK 尚未完成此验收。
不得改用任意系统工具，也不得把限制 PATH 加外部 Python 当作干净安装。

`xmake run` 使用已构建的字节，另需安装 uwvm2-ros、匹配的原生网关与接口注册表，
并手动填写部署文件。成功构建、成功加载以及原生机器人调用成功是独立条件。
完整的参数、Preload 和逐模块权限说明见[原生运行指南](native-run.zh_CN.md)。
