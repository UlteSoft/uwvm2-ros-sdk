# 公共 Xmake 配置

全部平台使用 `sdk/tools/xmake/ros.lua` 提供的同一套声明入口。每个应用目录保存
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
    -- Preserve an explicit architecture selected by xmake f -a.
    set_arch(get_config("arch") or "wasm32")
    set_ros_scenario("read_speed")
    add_files("main.cpp")
target_end()
```

在应用目录执行 `xmake`，得到 `build/abb_read_speed.wasm`。选择 64 位目标时先执行
`xmake f -a wasm64`，再执行 `xmake`。两者分别对应 `wasm32-wasip1` 和
`wasm64-wasip1`；目标宽度属于 guest ABI，与运行 uwvm2-ros 的 x86_64/AArch64
宿主架构是两个独立选择。

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

这些名称是首次发布的统一接口，不提供旧命名别名。`set_arch`、`set_plat`、
`set_kind`、`add_deps` 等继续采用 Xmake 的标准声明方式。具体语言的静态库、
共享模块和线程/异常组合须具备对应公共实现；声明有效不等于该组合已完成验收。

公共 C/C++ 生产者现已接入这三种类型。`binary` 生成完整 `.wasm` 应用；`shared`
生成独立初始化、显式 Preload 的 Core `.wasm` 模块；`static` 生成供链接器使用的
带索引 Wasm 对象归档，默认放在 `.uwvm-ros/archives`，不进入部署输出目录。
显式 `set_targetdir`、`set_basename` 保留普通 Xmake 语义。`add_deps` 传播公开
include 和定义；`inherit = false` 只保留构建顺序。共享依赖保留独立内存和权限，
不作为静态链接输入。其他语言的库类型必须由其真实公共适配器声明支持后才接受。

原生 ROS Preload 示例包含 `deployment.template.json`。请审查并保存实际部署文件，
再执行 `xmake f --ros-run-config=...` 和 `xmake run main`。main 选择的 ROS 后端
只是部署元数据；部署文件明确只向 `ros_comm` 授予 ROS 权限。

## 平台选项与特性

ABB 的显式选项可以写成：

```lua
set_ros_config({catalog = "complete", transport = "native-ros"})
```

空表表示使用该平台声明的默认值。必选且没有默认值的字段必须提供。`false`
不会被当作“未填写”而替换成默认值；重复指定的专用选择器与通用选项必须一致。
每个平台的合法键和值以 `sdk/share/platform/<platform>/provider.json` 为准。

例如 `set_wasm_features({"memory64"})` 必须搭配 `set_arch("wasm64")`。
选择 `exceptions` 时还需要 `set_wasm_exceptions("eh")` 和实际可用的异常闭包。
SDK 不会通过改变语言、指针宽度或丢弃特性来伪装构建成功。

## 构建与运行

只构建需要 Xmake 和对应平台发行包中的公共编译器/语言运行时闭包；不要求预装
ROS 或 uwvm2-ros。构建缺失的工具闭包必须明确安装，不能以系统中任意版本替代。

`xmake run` 使用已构建的字节，另需安装 uwvm2-ros、匹配的原生网关与接口注册表，
并手动填写部署文件。成功构建、成功加载以及原生机器人调用成功是独立条件。
完整的参数、Preload 和逐模块权限说明见[原生运行指南](native-run.zh_CN.md)。
