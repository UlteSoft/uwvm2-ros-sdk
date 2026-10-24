#!/usr/bin/env python3
"""@brief Author bilingual, language-specific Unitree Java and Kotlin SDK manuals.

@details Examples are quoted from the actual maintained entry source. Complete
type tables are derived from the concrete public records, including their
original ROS type names. This documentation step makes no test claim.
"""

from pathlib import Path
import re

SDK = Path(__file__).resolve().parents[3]
LANGUAGES = {
    "java": (
        "Java",
        "Main.java",
        "java",
        "uwvm.unitree.ros2.Observations",
        "readLowState",
        "javac 21.0.10 → Java 17 bytecode → TeaVM 0.13.1 WEBASSEMBLY_WASI",
    ),
    "kotlin": (
        "Kotlin",
        "Main.kt",
        "kotlin",
        "uwvm.unitree.kotlin.ros2.Observers",
        "readLowState",
        "Kotlin 2.1.20 → JVM 17 bytecode → TeaVM 0.13.1 WEBASSEMBLY_WASI",
    ),
}
SCENARIOS = (
    ("ros1", "motion_state", "unitree_legged_msgs/HighState"),
    ("ros1", "low_state", "unitree_legged_msgs/LowState"),
    ("ros1", "motor_state", "unitree_legged_msgs/MotorState"),
    ("ros2", "motion_state", "unitree_go/msg/SportModeState"),
    ("ros2", "low_state", "unitree_go/msg/LowState"),
    ("ros2", "wireless_controller", "unitree_go/msg/WirelessController"),
)


def type_table(language):
    """@brief Map every concrete language value class to its original native type."""
    family = "java"
    extension = "java"
    rows = ["| ROS | Native type / 原始类型 | Value class / 值类型 |", "| --- | --- | --- |"]
    for backend in ("ros1", "ros2"):
        for path in sorted((SDK / "include/platform/unitree" / family / backend).rglob("*." + extension)):
            source = path.read_text()
            identity = re.search(r'SOURCE_TYPE\s*=\s*"([^"]+)"', source)
            if identity:
                rows.append(f"| {backend} | `{identity[1]}` | `{path.stem}` |")
    assert len(rows) == 56
    return "\n".join(rows)


def write(language, locale, name, content):
    """@brief Save one complete UTF-8 manual in the maintained local candidate."""
    output = SDK / "document/platform/unitree" / locale / "language" / language / name
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(content.rstrip() + "\n")


def author(language, settings):
    """@brief Explain the real source pipeline, value API and all six examples."""
    title, source_name, fence, namespace, method, pipeline = settings
    result = "result.exchange / result.response / result.canonical"
    encode, decode = "encode", "decode"
    classes = "Java"
    entry = SDK / "example/platform/unitree" / language / "ros2/low_state"
    code = (entry / source_name).read_text().rstrip()
    config = (entry / "xmake.lua").read_text().rstrip()
    rows = "\n".join(f"| {backend} | `{scenario}` | `{native}` |" for backend, scenario, native in SCENARIOS)
    table = type_table(language)
    build = f"""```sh
cd sdk/example/platform/unitree/{language}/ros2/low_state
xmake
```
"""
    run = f"""```sh
export UWVM_ROS_RUN_CONFIG=/absolute/path/unitree-native-deployment.json
xmake run unitree-{language}-ros2-low_state
```
"""
    write(
        language,
        "en_US",
        "README.md",
        f"""# Unitree {title} SDK

Use this SDK to build a genuine {title} observation command for the original Unitree ROS messages. Each language has
three ROS1 and three ROS2 examples, with a standalone `xmake.lua` in every directory. The application output is one
`build/*.wasm` command.

## Build and deployment requirements

The pinned pipeline is **{pipeline}**. The compiler-tool host is Linux x86_64; the guest target is `wasm32-wasip1`.
A complete SDK installation includes the checksum-indexed offline compiler bundle. Xmake restores that bundle
itself, so building requires no separately installed language compiler, ROS installation, uwvm2-ros or network
access.

{build}
The final file is `build/unitree-{language}-ros2-low_state.wasm`. Compiler scratch files live under
`.uwvm-ros/managed-aot/<target-name>` and are not deployment outputs. Java/Kotlin rebuilds clear that target's old
class directory before compilation; distinct targets have distinct scratch directories.

`xmake run` requires the installed uwvm2-ros executable, the matching native gateway, native ROS and original
Unitree type packages, a trusted deployment JSON, and Python 3 to launch the processes. Python does not execute the
guest application. Configure the native ROS environment, then run:

{run}
The deployment must select the same backend and ROS distribution as the target, and provide the concrete native
identity, topic, granted alias, queue/rate limits and WASI permissions. It passes exactly one alias argument to the
guest. The examples disable `run.autobuild`; deploying an existing Wasm file requires no compiler bundle.

## Use the language API

The {title} observation entry is `{namespace}.{method}`. It receives an exact granted alias and an explicit poll
budget from 1 through 250. The result contains the entire original message, its reencoded canonical bytes, and
independent operation and cleanup facts. The actual maintained ROS2 low-state entry is:

```{fence}
{code}
```

Kotlin uses ordinary Java value classes through JVM interoperability. Their facade and entry source are compiled by
their own genuine language compiler; the message is not substituted with an opaque byte array or a host-language
process.

Read [API.md](API.md) for the complete value model, all 54 record classes, typed interfaces, ownership and error
behavior. Read [EXAMPLES.md](EXAMPLES.md) for every observation, its source flow and full build script.
[SCHEMA.md](../SCHEMA.md) lists the original fields and byte bounds. Current admitted routes and exact verification
scope are recorded in [VALIDATION.md](../../VALIDATION.md).

## Target boundaries

This route produces a core WASI Preview1 module with one wasm32 memory. Memory64, threads and a component-model ABI
are not qualified by these examples. Java/Kotlin use the fixed TeaVM linear-memory backend and its supported class
library. The JDK, Kotlin and TeaVM tool inputs are pinned in `share/language/jvm` and
`share/toolchains/host/linux-x86_64/jvm-aot.json`. Guest execution uses the generated Wasm and requires no host JVM.

Native observations and complete-type codec probes are separate from physical robot qualification. Topic observation
retains all fields, including CRC fields, without certifying device CRC computation or motion behavior. Unitree API
Request/Response messages remain topic RPC messages; this SDK does not invent ROS services or actions for them.
""",
    )
    write(
        language,
        "zh_CN",
        "README.md",
        f"""# 宇树 {title} SDK

本 SDK 将真正的 {title} 观察程序编译为使用宇树原始 ROS 消息的 Wasm 命令。每种语言分别提供三个 ROS1 和三个 ROS2 示例，每个目录都有独立的 `xmake.lua`。应用发布产物只有一个 `build/*.wasm` 文件。

## 构建与部署条件

固定构建链为 **{pipeline}**。编译工具运行于 Linux x86_64，客体目标为 `wasm32-wasip1`。完整 SDK 随附逐文件校验的离线编译工具包，由 Xmake 自行恢复；构建时无需另行安装该语言编译器、ROS、uwvm2-ros，也无需联网。

{build}
最终文件为 `build/unitree-{language}-ros2-low_state.wasm`。编译中间文件位于
`.uwvm-ros/managed-aot/<target-name>`，不属于部署产物。Java/Kotlin 每次编译先清理当前 target 的旧类文件，不同 target 使用独立的中间目录。

`xmake run` 需要已安装的 uwvm2-ros、匹配的原生网关、原生 ROS 与宇树类型包、可信部署 JSON，以及用于启动进程的 Python 3。应用本身由 uwvm2-ros 执行。先加载对应的原生 ROS 环境，再运行：

{run}
部署配置必须与 target 的后端和 ROS 发行版一致，并明确指定原生类型标识、主题、授权别名、队列和速率配额及 WASI 权限。启动器只向应用传入一个授权别名参数。示例关闭 `run.autobuild`，因此运行已有 Wasm 不需要编译工具包。

## 使用本语言接口

{title} 的观察入口是 `{namespace}.{method}`，参数为精确授权别名和 1 至 250 次的显式轮询预算。返回值保留原始消息的所有字段、重新编码的完整规范字节，以及分别记录的操作和清理结果。下面直接引用维护中的 ROS2 低层状态示例：

```{fence}
{code}
```

Kotlin 通过普通 JVM 互操作使用 Java 值类型。各语言的入口与门面由真实的对应语言编译器编译，消息值保留完整的具名字段。

[API.md](API.md) 说明完整值模型、全部 54 种记录、类型化接口、所有权及错误行为；[EXAMPLES.md](EXAMPLES.md)
逐一解释六个示例及完整构建脚本；[SCHEMA.md](../SCHEMA.md) 列出原始字段与字节上限。已准入的语言和实际验证范围以 [VALIDATION.md](../../VALIDATION.md) 为准。

## 目标与验证边界

这一路线产出单个 wasm32 内存的核心 WASI Preview1 模块。示例尚未验证 memory64、线程或组件模型 ABI。Java/Kotlin 使用固定版本 TeaVM
的线性内存后端及其支持的类库。JDK、Kotlin 和 TeaVM 的精确工具输入固定记录在 `share/language/jvm` 与
`share/toolchains/host/linux-x86_64/jvm-aot.json`。执行的是生成的 Wasm，运行阶段无需宿主 JVM。

原生主题观察和完整类型编解码验收分别记录，不等同于实体机器人验收。代码完整保留 CRC 等字段，不据此宣称已验证设备 CRC 算法或运动行为。宇树 API 的 Request/Response 保持主题 RPC 消息语义，不被改造成不存在的 ROS 服务或动作。
""",
    )
    write(
        language,
        "en_US",
        "API.md",
        f"""# {title} API and complete records

## Namespace and value access

The observation namespace is `{namespace}` for ROS2; replace `Ros2`/`ros2` with `Ros1`/`ros1` for ROS1. The concrete
{classes} records live in `uwvm.unitree.ros1 / uwvm.unitree.ros2`. Imports use installed namespaces. Xmake supplies
their complete source roots centrally; examples contain no parent-relative source imports.

Every record has public `field_<original_name>` members, preserving the original names, nesting and fixed-array
extents. Constructors allocate their own nested fixed-array elements and restore the original defaults; bounded
sequences begin empty. `CONST_<original_name>` preserves source constants without consuming instance wire bytes.
`SOURCE_TYPE`, `CODEC_IDENTITY`, `NATIVE_IDENTITY`, `MIN_WIRE_BYTES` and `MAX_WIRE_BYTES` identify the original
schema and its finite wire contract. An empty native identity remains unqualified until independent native metadata
is bound.

`{encode}(value)` allocates a complete canonical byte sequence; `{decode}(bytes)` validates the exact extent and
returns a new owned whole record. Invalid bounds, boolean encodings, text, numeric domains or trailing bytes raise
the language's argument exception. Decode commits no partial caller value. Java represents unsigned 8/16/32-bit
fields with wider signed types and validates the original range; unsigned 64-bit fields retain their bits in `long`.
The value classes preserve floating-point bit patterns within the declared finite-value policy.

## Finite observation and retained interfaces

The convenience observer opens one alias, activates one subscription, and polls within the caller's budget. Only
idle status 11 permits another poll, separated by a real 20 ms WASI monotonic wait. At most 249 waits occur with
budget 250. Normal completion or ordinary failure closes the acquired owner once. A trap or fatal allocation failure
requires host instance reclamation.

The returned `{result}` separates the original exchange, the complete decoded record and bytes reencoded from that
record. Read the record only when it is present. The observer commits the record and canonical bytes together after
complete validation. A later local codec failure preserves the original import errno and written-length facts while
setting primary status 22.

Every catalog message also has a concrete `RosNApi...` class. Its publish, subscribe and read methods operate on an
explicitly retained `Owner`; read performs one actual poll and publish performs one actual publish. The caller
serializes that owner and closes it exactly once. These low-level methods do not apply the convenience observer's
finite waiting loop. Topic publication requires its own explicit grant and is not exercised by the observation
examples.

## Result facts and error handling

| Report field | Meaning |
| --- | --- |
| `primary` | First operation or local complete-record validation status |
| `cleanup`, `cleanup_present` | Independent close status and whether a close was attempted |
| `response_present` | Complete typed record has committed |
| `rpc_present`, `rpc_status` | An actual data import ran and its original errno |
| `required_present`, `required` | Whether the original length slot was written and its exact value |
| `encoding`, `wire_hex` | Complete reencoding status and every canonical byte |

The managed properties use the language's ordinary camelCase spelling; the table names are the emitted JSON names.
Status selection prefers `primary`, then `cleanup`. Reporting may return 5 for stdout failure only if no earlier
error occurred; process exits are bounded to 125. Handle 11 within the explicit poll budget, 13 as missing
authority, 22 as invalid input or complete wire data, and 90 as a capacity failure. Preserve other original errors,
including 9, 95, 107, 110 and 125. Never infer a response from a zero-valued unwritten length slot.

## Complete record index

The index covers all 11 ROS1 and 43 ROS2 records, including original Unitree Go, HG and API packages. It is a
schema/API index; the six observation examples verify the types listed in EXAMPLES.md.

{table}
""",
    )
    write(
        language,
        "zh_CN",
        "API.md",
        f"""# {title} 接口与完整消息记录

## 命名空间与字段访问

ROS2 观察接口命名空间为 `{namespace}`；ROS1 将其中的 `Ros2`/`ros2` 替换为 `Ros1`/`ros1`。具体 {classes} 记录位于 `uwvm.unitree.ros1 /
uwvm.unitree.ros2`。应用使用已安装的命名空间导入，源码搜索根由 Xmake 统一配置，示例不使用父目录相对源码导入。

每种记录都公开 `field_<原始字段名>`，保留原始名字、嵌套结构和固定数组长度。构造函数分配自有的嵌套数组元素并恢复原始默认值，有界序列初始为空。`CONST_<原始常量名>`
保留源码常量且不占实例编码字节。`SOURCE_TYPE`、`CODEC_IDENTITY`、`NATIVE_IDENTITY`、`MIN_WIRE_BYTES`、`MAX_WIRE_BYTES`
分别标识原始模式和有限编码契约；原生标识为空时仍需独立导出的原生元数据完成绑定。

`{encode}(value)` 分配完整规范字节；`{decode}(bytes)` 校验精确范围并返回自有完整记录。非法容量、布尔编码、文本、数值范围或尾随字节会产生参数异常，失败不提交部分调用方记录。Java
以更宽的有符号类型表示 uint8/uint16/uint32 并检查原始范围，以 `long` 位模式保留 uint64。值类型在声明的有限浮点策略内保留浮点位模式。

## 有限观察与长期持有接口

便捷观察接口只打开一个别名、激活一次订阅，再按调用方预算轮询。仅空闲状态 11 允许等待真实 WASI 单调时钟 20 ms 后继续，250 次预算最多产生 249 次等待。正常完成或普通失败都对已取得的所有者关闭一次；陷阱或致命分配失败由宿主回收实例。

返回值 `{result}` 将原始交换结果、完整解码记录及从该记录重新编码的字节分别保留。只有记录存在时才能读取它。完整校验通过后，记录和规范字节一起提交；后续本地编解码失败将主状态设为 22，同时保留原始导入 errno 和长度槽写入事实。

目录中的每种消息还有对应的具体 `RosNApi...` 类型。其发布、订阅、读取方法作用于应用显式持有的 `Owner`：读取只执行一次实际轮询，发布只执行一次实际发布。调用方负责串行访问并恰好关闭一次；这些底层方法不包含便捷观察器的有限等待循环。主题发布需要独立授权，不属于本批观察示例的通信验证范围。

## 返回事实与错误处理

| 输出字段 | 含义 |
| --- | --- |
| `primary` | 首个操作失败或完整记录本地校验状态 |
| `cleanup`、`cleanup_present` | 独立的关闭状态以及是否尝试过关闭 |
| `response_present` | 完整类型化记录是否已提交 |
| `rpc_present`、`rpc_status` | 是否发生过实际数据导入及其原始 errno |
| `required_present`、`required` | 原始长度槽是否被写入及其精确值 |
| `encoding`、`wire_hex` | 完整重新编码状态与全部规范字节 |

表中为 JSON 字段名，托管属性采用 camelCase。最终状态先取 `primary`，再取 `cleanup`；仅在此前没有错误时，标准输出失败才返回 5，进程退出码上限为 125。11 只能在显式预算内等待，13
表示缺少权限，22 表示输入或完整编码非法，90 表示容量不足。其他原始错误（含 9、95、107、110、125）原样保留。不能把未写入长度槽中的零值当作有效响应。

## 完整记录索引

下表覆盖全部 11 种 ROS1 和 43 种 ROS2 原始记录，包括 Unitree Go、HG、API 包。它列出模式和源码 API；六个观察示例具体使用的类型见 EXAMPLES.md。

{table}
""",
    )
    write(
        language,
        "en_US",
        "EXAMPLES.md",
        f"""# Six {title} observation examples

| Backend | Directory | Complete native message |
| --- | --- | --- |
{rows}

ROS1 `motion_state` reads the full high-level state, including IMU, body motion, gait, position, foot and battery
fields. `low_state` retains every original motor, IMU, battery, force, remote and CRC field. `motor_state` retains
every scalar and fixed array of one motor's original state.

ROS2 `motion_state` preserves the complete sport-mode state and all IMU and foot arrays. `low_state` preserves every
original motor, BMS, sensor, remote and CRC field. `wireless_controller` retains all four axes and the entire key
bitmask. The program never replaces a complete message with only the displayed headline values; its JSON includes
every canonical byte.

Each entry validates exactly one alias argument, calls its concrete observer with 250 poll credits, and reports the
complete value and separate operation/cleanup facts. The alias comes from trusted deployment; topic names are not
hardcoded into application source. Acceptance uses isolated `/unitree_sdk_fixture/*` topics published by
independently typed native ROS fixtures.

## Complete build description

This is the actual ROS2 low-state `xmake.lua`. The discovery loop locates an installed SDK by marker, and
`UWVM_ROS_SDK_ROOT` can select a separate installation. The example never assumes a fixed parent-directory depth.
`set_language` selects the genuine frontend, `set_ros_platform` selects the Unitree API, and `set_ros2_version` selects
explicit deployment intent. `set_plat(get_config("plat") or "wasm-wasip1")` and
`set_arch(get_config("arch") or "wasm32")` default to `wasm32-wasip1` while retaining explicit command-line requests.
The provider rejects unsupported profiles instead of silently replacing the requested architecture or platform.

```lua
{config}
```

ROS1 counterparts use `set_ros1_version("noetic")`; the ROS2 examples use `set_ros2_version("jazzy")`. Changing a version
selector is not native metadata qualification. Export and bind the real installed types before running against a
different distribution. For each row, enter `sdk/example/platform/unitree/{language}/<backend>/<directory>` and run
`xmake`. The target name is `unitree-{language}-<backend>-<directory>`.

## Read an execution result

A successful normal observation has primary/cleanup/encoding zero and response/cleanup/RPC/required-length presence
set. `required` is the complete received size; `wire_hex` must have twice as many hexadecimal characters. A recorded
response may coexist with a later cleanup error, so check the independent cleanup status before treating the entire
operation as successful.

The launcher writes `execution.json`, `worker.stdout`, `worker.stderr` and `gateway.log` below
`.uwvm-ros/unitree-run`. These are diagnostic run records, not application deployment artifacts. `execution.json`
identifies the exact Wasm, native runtime, gateway and deployment hashes. Native audit records show actual resource
creation and close events. A second `xmake run` reuses the same compiled Wasm; it creates a fresh observation and a
fresh receipt.
""",
    )
    write(
        language,
        "zh_CN",
        "EXAMPLES.md",
        f"""# 六个 {title} 观察示例

| 后端 | 示例目录 | 完整原生消息 |
| --- | --- | --- |
{rows}

ROS1 的 `motion_state` 读取完整高层状态，包括 IMU、机体运动、步态、位置、足端与电池字段；`low_state` 保留每个原始电机、IMU、电池、力传感器、遥控与 CRC 字段；`motor_state` 保留单个电机原始状态中的所有标量与固定数组。

ROS2 的 `motion_state` 保留完整运动模式状态及 IMU、足端数组；`low_state` 保留所有原始电机、BMS、传感器、遥控与 CRC 字段；`wireless_controller` 保留四个轴和完整按键位掩码。程序输出中的规范字节覆盖整条消息，并非只取几个可见指标。

每个入口先校验恰好一个别名参数，再以 250 次轮询预算调用具体观察器，最后报告完整消息及独立操作/清理事实。主题由可信部署配置指定，不写死在应用源码中。验收使用由独立原生 ROS 类型发布的 `/unitree_sdk_fixture/*` 隔离主题。

## 完整构建脚本解读

下面是 ROS2 低层状态示例实际维护的 `xmake.lua`。发现循环按标记查找 SDK，也可由 `UWVM_ROS_SDK_ROOT` 指向单独安装目录；它不假设固定父目录层数。`set_language`
选择真实语言前端，`set_ros_platform` 选择宇树接口，`set_ros2_version` 明确部署发行版意图。
`set_plat(get_config("plat") or "wasm-wasip1")` 与 `set_arch(get_config("arch") or "wasm32")`
默认选择 `wasm32-wasip1`，并保留命令行指定的架构和平台。不支持的目标由 provider 明确拒绝，不会被静默替换为默认值。

```lua
{config}
```

对应 ROS1 示例使用 `set_ros1_version("noetic")`，ROS2 示例使用
`set_ros2_version("jazzy")`。更改发行版选项不代表已经完成新发行版的原生元数据验证；运行前仍须从真实安装环境导出并绑定类型。对表中任一示例，进入
`sdk/example/platform/unitree/{language}/<backend>/<directory>` 执行 `xmake`，target 名为
`unitree-{language}-<backend>-<directory>`。

## 解释运行结果

正常成功观察的 primary、cleanup、encoding 为零，response、cleanup、RPC、required-length 的存在标志均为真。`required` 是完整接收长度，`wire_hex` 的十六进制字符数应为该长度的两倍。记录存在时仍可能发生后续关闭失败，因此必须分别检查清理状态。

启动器在 `.uwvm-ros/unitree-run` 中保存
`execution.json`、`worker.stdout`、`worker.stderr`、`gateway.log`；它们是运行诊断记录，不是应用部署产物。`execution.json` 记录实际
Wasm、原生运行时、网关和部署配置的哈希，原生审计记录包含实际资源创建和关闭事件。第二次 `xmake run` 复用同一个已编译 Wasm，并创建新的观察过程和独立回执。
""",
    )


def main():
    """@brief Write all twelve bilingual JVM guides from the installed source tree."""
    for language, settings in LANGUAGES.items():
        author(language, settings)
    print("Authored 12 bilingual JVM manuals from the maintained entries and complete records")


if __name__ == "__main__":
    main()
