# Agibot SDK / 智元 SDK

当前审查包包含 26 种语言、每种语言 3 个独立示例，共 78 个项目，以及 7 个原始接口目录。源码覆盖、真实语言编译、VM 执行、原生 ROS 通信和 QEMU AArch64 验收分别记录；完整状态以 `sdk/share/platform/agibot/review-status.json` 为准。当前包仍未完成全部验收。

The current review package contains 78 independent examples: three scenarios in each of 26 languages, together with seven original interface catalogs. Source coverage, genuine language compilation, VM execution, native ROS exchange and QEMU AArch64 execution are separate acceptance dimensions. `sdk/share/platform/agibot/review-status.json` records the current scope; complete qualification remains pending.

## 配置与目录 / Configuration and layout

从每个示例目录执行 `xmake`。公共入口 `sdk/tools/xmake/ros.lua` 提供配置；`sdk/tools/platform/agibot/provider.lua` 选择源接口和共享语言生产者。工具链、解释器与其他平台共用，C/C++ 使用统一 LLVM 23 配置。所有语言均须以自己的真实编译器或 Wasm 解释器执行，缺失的生产者不能由其他语言代替。

Run `xmake` from an example directory. `sdk/tools/xmake/ros.lua` supplies the public configuration API, and `sdk/tools/platform/agibot/provider.lua` selects source interfaces and shared language producers. Toolchains and interpreters are shared with other platforms; C/C++ use the common LLVM 23 configuration. Each language requires its genuine compiler or Wasm interpreter.

```lua
target("example")
    set_kind("binary")
    set_language("c")
    set_arch("wasm32")
    set_plat("wasm-wasip1")
    set_ros_platform("agibot")
    set_ros2_version("humble")
    set_agibot_version("1.1.0")
    set_agibot_variant("main")
    set_ros_scenario("query_mode")
    add_files("main.c")
target_end()
```

此片段放在已加载公共 SDK 入口的示例中。版本和 variant 共同选择一个已安装目录；它们不推断固件或控制器能力。`wasm64` 必须显式选择，并要求相应语言具有完整的 memory64 生产者；不能通过降低指针宽度满足请求。构建输出目录只包含可部署的 `.wasm`，中间文件及回执放在私有构建目录。

Use this fragment after the example loads the common SDK entry. Version and variant select one installed catalog; they do not infer controller firmware or capabilities. A `wasm64` request requires an actual memory64 language producer and must not be narrowed. The deployment output directory contains only `.wasm` files; intermediates and receipts belong to private build directories.

`UWVM_ROS_SDK_ROOT` 选择 SDK 安装根。公开导入从 `agibot/<language>/...` 开始，例如 C 的 `<agibot/c/client.h>`、C++ 的 `<agibot/cpp/client.hpp>` 和 AssemblyScript 的 `"agibot/as/client"`。源码位于 `sdk/src/platform/agibot`，库产物位于 `sdk/lib`，接口来源与边界位于 `sdk/share/platform/agibot`。

`UWVM_ROS_SDK_ROOT` selects the installation root. Public imports begin with `agibot/<language>/...`, such as `<agibot/c/client.h>`, `<agibot/cpp/client.hpp>` and the AssemblyScript module `"agibot/as/client"`. Maintained implementation sources live under `sdk/src/platform/agibot`, library artifacts under `sdk/lib`, and interface provenance and bounds under `sdk/share/platform/agibot`.

## 示例与运行 / Examples and execution

| 场景 / Scenario | 行为 / Behavior |
| --- | --- |
| `query_mode` | 调用原始 `GetMcAction`，保留完整响应，单独检查控制器状态。 / Call the original `GetMcAction`, preserve the full response and inspect controller status separately. |
| `next_motion_state` | 有界等待一个原始 `McCommonState`，检查时间戳，并关闭订阅。 / Wait within the stated bound for an original `McCommonState`, inspect timestamps and close the subscription. |
| `list_resources` | 调用原始 `GetRobotResources`，保留资源、版本和文件元数据；不启动播放。 / Call the original `GetRobotResources` and preserve resource, version and file metadata without initiating playback. |

`xmake run` 使用已经构建的模块和已安装的 uwvm2-ros。操作者通过 `set_ros_run_config`、`--ros-run-config` 或 `UWVM_ROS_RUN_CONFIG` 提供公共 `uwvm-native-ros-run-v2` 部署文件。该文件明确声明 runtime、gateway、原生接口身份、资源 alias、限额、参数以及每个模块的 WASI/ROS 权限。编译不创建授权，运行器也不补授缺失权限。

`xmake run` uses the already built module and an installed uwvm2-ros. The operator supplies a common `uwvm-native-ros-run-v2` deployment through `set_ros_run_config`, `--ros-run-config` or `UWVM_ROS_RUN_CONFIG`. It explicitly declares runtime and gateway paths, original native interface identities, resource aliases, limits, arguments and each module's WASI/ROS permissions. Compilation grants no authority, and the launcher does not add missing grants.

Preload 的 I/O、算法和 ROS 通信模块分别配置权限。ROS 通信模块若接受其他 Wasm 模块调用，必须明确选择 `module-exports` 调用边界；默认 `same-module` 拒绝跨模块调用。原生接口身份须来自所选发行版实际安装的定义和 typesupport，源码文件摘要不能代替它。旧工具链、旧协议的历史回执不构成当前合入源码的测试结果。

Configure Preload I/O, algorithm and ROS communication modules separately. A ROS module receiving calls from other Wasm modules must explicitly select the `module-exports` call boundary; the default `same-module` policy denies such calls. Native interface identity must derive from the selected distribution's actual installed declarations and typesupport, rather than a source-file digest. Historical results from other toolchains or deployment protocols do not qualify the current integrated sources.

## 开发手册 / Development manuals

- [公共配置（中文）](../../configuration.zh_CN.md) / [Shared configuration (English)](../../configuration.en_US.md)
- [原生运行与 Preload（中文）](../../native-run.zh_CN.md) / [Native run and Preload (English)](../../native-run.en_US.md)
- [中文语言手册](zh_CN/language) / [English language manuals](en_US/language)
- [中文原始接口目录](zh_CN/catalog) / [English original interface catalogs](en_US/catalog)

语言手册位于 `<locale>/language/<language>/README.md`，逐项说明 API、编码、错误处理和三个示例。目录手册保留原始字段、常量、依赖与边界。源目录的存在不意味着全部语言、目标宽度或控制器组合已通过运行验收。

Each `<locale>/language/<language>/README.md` explains the API, encoding, errors and three examples. Catalog manuals retain original fields, constants, dependencies and bounds. Catalog presence alone does not establish runtime qualification for every language, target width or controller combination.
