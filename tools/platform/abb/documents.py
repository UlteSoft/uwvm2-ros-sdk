#!/usr/bin/env python3
"""@brief Write bilingual manuals for the delivered ABB observation applications.

@details Documentation describes actual source paths, compiler contracts, complete
payloads, error precedence, and test boundaries. Missing language implementations
remain explicit in the language matrix. This source-only tool grants no compiler,
native ROS, upstream driver, or physical-controller qualification.
"""

import argparse
from pathlib import Path

LANGUAGES = {
    "as": (
        "AssemblyScript",
        "observation.ts",
        "readSpeed / readIO / waitSystemState",
        "asc",
    ),
    "c": (
        "C",
        "observation.h",
        "abb_read_speed / abb_read_io / abb_wait_system_state",
        "WASI Clang",
    ),
    "cpp": (
        "C++",
        "observation.hpp",
        "abb::read_speed / abb::read_io / abb::wait_system_state",
        "WASI Clang++",
    ),
    "go": (
        "Go",
        "observation/observation.go",
        "ReadSpeed / ReadIO / WaitSystemState",
        "official Go",
    ),
    "tinygo": (
        "TinyGo",
        "observation/observation.go",
        "ReadSpeed / ReadIO / WaitSystemState",
        "TinyGo with its matching Go installation",
    ),
    "rs": (
        "Rust",
        "observation.rs",
        "read_speed / read_io / wait_system_state",
        "Cargo + rustc + wasm-ld",
    ),
    "lua": (
        "Lua",
        "observation.lua",
        "read_speed / read_io / wait_system_state",
        "Xmake and the installed Lua Wasm interpreter",
    ),
    "objectc": (
        "Objective-C",
        "observation.h",
        "abb_read_speed / abb_read_io / abb_wait_system_state",
        "WASI Clang Objective-C frontend",
    ),
}
BRIDGES = {
    "c_ffi_bridge": (
        "the C FFI bridge",
        "observation.h",
        "abb_c_ffi_backend + abb_read_speed / abb_read_io / abb_wait_system_state",
        "WASI Clang + the maintained c_ffi_bridge shim",
    ),
}
ENTRIES = {**LANGUAGES, **BRIDGES}

REQUESTED = "as c c_ffi_bridge cpp csharp d objectc fsharp go haskell java js kotlin lua moonbit nim odin php py r rs ruby swift tinygo vbnet zig".split()

NOTES = {
    "tinygo": (
        "The real TinyGo frontend compiles each main.go and the complete typed ABB modules. This is a separate producer from official Go. Its Wasm imports preserve 64-bit capability words and use the TinyGo ros2 bindings. The build creates an absolute .xmake/abb-cache/go.work that maps public module identities to the installed SDK; example manifests contain no filesystem replacement paths. Outcome[T] owns the complete response and its canonical bytes, while primary, RPC, and cleanup facts remain independent. The compiler and matching Go installation are build dependencies; neither is needed to run the completed Wasm.",
        "每个 main.go 及完整类型化 ABB 模块均由真正的 TinyGo 前端编译，与官方 Go 使用独立的编译路径。Wasm 导入保留完整的 64 位能力字，并选择 TinyGo 的 ros2 绑定。构建层生成包含绝对路径的 .xmake/abb-cache/go.work，将公共模块名称映射到已安装 SDK；示例的模块清单不包含文件系统替换路径。Outcome[T] 拥有完整响应和规范字节，primary、RPC 与 cleanup 事实分别保留。TinyGo 编译器和配套 Go 仅用于构建，运行已完成的 Wasm 无需安装它们。",
    ),
    "lua": (
        "Xmake embeds the actual main.lua, the complete ABB records, and observation.lua into the reserved data slot of sdk/lib/language/lua/lua.wasm. Lua 5.4 executes this source inside the guest; no host Lua/Python interpreter or external source mount is used. Public require identities include abb/lua/observation. The shared ROS module keeps an explicit capability ledger, immutable eight-byte handle words, checked wire readers, and separate primary/cleanup facts. Modern Wasm exceptions are required for protected Lua errors. The run adapter selects that runtime feature explicitly. Interpreter rebuilding is a separate maintainer operation; ordinary example packaging needs Xmake and the reviewed .wasm interpreter only.",
        "Xmake 将真正的 main.lua、完整 ABB 记录及 observation.lua 嵌入 sdk/lib/language/lua/lua.wasm 的预留数据区。Lua 5.4 在 guest 内执行这些源码，无需宿主 Lua/Python 解释器或外部源码挂载。公共 require 名称包括 abb/lua/observation。共享 ROS 模块维护显式能力账本、不可变的八字节句柄、检查式字节读取器，以及独立的 primary/cleanup 事实。Lua 受保护错误需要现代 Wasm 异常机制，run 适配器显式启用对应运行时特性。重建解释器属于独立的维护操作；普通示例打包只需要 Xmake 和审查后的 .wasm 解释器。",
    ),
    "objectc": (
        "Compile main.m with the genuine Objective-C frontend. The public header rejects non-Objective-C compilation and ABBObservationLayout uses the compiler's @encode expression. This route exercises the portable C-compatible ABB API and owns no Objective-C objects. It does not supply Foundation, NSObject, ARC, dynamic messaging, or an Objective-C runtime. ABBObservation aliases the complete C observation facts, with the same inline records, checked decoding, separate primary/cleanup statuses, and caller-owned storage. Applications requiring Objective-C objects need a separately supported WASI runtime.",
        "main.m 必须通过真正的 Objective-C 前端编译。公共头文件拒绝非 Objective-C 编译，ABBObservationLayout 使用编译器的 @encode 表达式。此路径使用可移植的 C 兼容 ABB API，不拥有 Objective-C 对象，也不提供 Foundation、NSObject、ARC、动态消息机制或 Objective-C 运行时。ABBObservation 是完整 C 观察事实的别名，具有相同的内联记录、检查式解码、独立的 primary/cleanup 状态及调用者拥有的存储。需要 Objective-C 对象的应用必须另行提供受支持的 WASI 运行时。",
    ),
    "c_ffi_bridge": (
        "c_ffi_bridge is the shared C Foreign Function Interface bridge, not an independent source language. These C applications link the real sdk/src/platform/ros/c_ffi_bridge/shim.c with ROSWASM_C_FFI_BACKEND=2. The immutable ABB dispatch selects only ABI version, open, close, topic subscribe, event poll, and service call; unsupported operations remain NULL. Private bridge indices 0, 9, 8, 46, 11, and 36 must match that maintained shim. They are neither public operation IDs nor authority tokens. All offsets and opaque handles retain their full i64 width. The complete C ABB codecs and observation ownership rules remain in force.",
        "c_ffi_bridge 表示共享的 C 外部函数调用桥接层，不是独立源语言。这里的 C 应用链接真实的 sdk/src/platform/ros/c_ffi_bridge/shim.c，并选择 ROSWASM_C_FFI_BACKEND=2。不可变 ABB 分派表只接入 ABI 版本、打开、关闭、主题订阅、事件轮询及服务调用；不支持的操作保持 NULL。私有桥接索引 0、9、8、46、11、36 必须与维护中的 shim 一致，它们不是公共操作编号，也不是权限令牌。所有偏移与不透明句柄保留完整 i64 宽度，完整 C ABB 编解码器及观察所有权规则继续适用。",
    ),
    "as": (
        "The command uses genuine AssemblyScript classes and checked VendorCodec decoders. The compiler emits an incremental managed runtime with finite memory. `command_io.ts` validates a complete WASI argument vector (at most 16 entries and 4096 bytes), writes complete JSON through fd_write, and exits only after checked capability cleanup. The observation API uses decodeChecked; a malformed reply never becomes a default instance.",
        "命令使用真正的 AssemblyScript 类和 VendorCodec 检查式解码器。编译器生成有限内存的 incremental 托管运行时。command_io.ts 验证完整 WASI 参数向量（最多 16 项、总计 4096 字节），通过 fd_write 写出完整 JSON，并在能力清理完成后退出。观察 API 使用 decodeChecked，格式错误的回复不会变成默认对象。",
    ),
    "c": (
        "Every record uses caller-owned inline storage. abb_observation keeps primary, cleanup, cleanup presence, response presence, and the original roswasmc_result separately. Response storage is committed only by the complete generated decoder. The example then re-encodes the entire value before printing wire_hex. Keep the context, alias, signal, response, and report in live disjoint storage through the synchronous call.",
        "每个记录使用调用者拥有的内联存储。abb_observation 分别保留主错误、清理结果、清理是否发生、响应是否存在以及原始 roswasmc_result。仅完整生成解码器成功后才提交响应存储。示例随后重新编码整个值并输出 wire_hex。同步调用期间，context、alias、signal、response 和 report 必须使用生命周期有效且互不重叠的存储。",
    ),
    "cpp": (
        "abb::Observation<T> owns the entire generated record and its abb_observation facts. Copying a completed result copies values and never duplicates a capability. The convenience API uses C++11 value initialization and noexcept; the delivered commands compile in C++20 with exceptions and RTTI disabled. The separate complete bounded_interfaces.hpp facade provides the original generated typed clients, servers, and Action owners. Select one ROS schema family per translation unit.",
        "abb::Observation<T> 拥有整个生成记录及其 abb_observation 事实。复制已完成的结果只复制值，不会复制能力所有权。便捷 API 使用 C++11 值初始化和 noexcept；交付命令以 C++20 编译并关闭异常及 RTTI。独立的完整 bounded_interfaces.hpp 还提供原始生成的类型化客户端、服务端和 Action 所有者。每个翻译单元应选择一个 ROS 模式族。",
    ),
    "go": (
        "This route uses official Go, not TinyGo. The complete ABB records import uwvm2.local/roswasmgo and the wasip1/wasm/ros2 build tags. Outcome[T] retains Value, complete Wire, the original SDK Result, and independent RPC/cleanup statuses. The build layer creates an absolute .xmake/abb-cache/go.work mapping all public SDK module identities. Example manifests contain no parent-relative replacement paths. Builds use that explicit GOWORK, GOTOOLCHAIN=local, GOPROXY=off, GOSUMDB=off, and one compiler job.",
        "该路径使用官方 Go。完整 ABB 记录导入 uwvm2.local/roswasmgo，并选择 wasip1/wasm/ros2 构建标签。Outcome[T] 保留 Value、完整 Wire、原始 SDK Result 及独立 RPC/清理状态。构建层创建包含绝对路径的 .xmake/abb-cache/go.work，映射所有公共 SDK 模块名称。示例模块清单不含父目录相对替换路径。构建显式选择该 GOWORK，并使用 GOTOOLCHAIN=local、GOPROXY=off、GOSUMDB=off 和单个编译任务。",
    ),
    "rs": (
        "The command uses the real no_std roswasm crate with explicit alloc and ros2 features, plus the genuine wasm32-wasip1 std target for command arguments and stdout. Outcome<T> owns Option<T>, the complete canonical byte vector, the original Error and optional length, and a separate checked-close result. None means no response. Cargo uses a local path-only lockfile, offline/locked resolution, panic=abort, and one compile job; allocation termination or panic cannot promise normal cleanup.",
        "命令使用真正的 no_std roswasm crate，明确启用 alloc 和 ros2，并通过真正的 wasm32-wasip1 std 目标处理命令参数和 stdout。Outcome<T> 拥有 Option<T>、完整规范字节向量、原始 Error 及可选长度，还有独立检查式关闭结果。None 表示没有响应。Cargo 使用仅包含本地路径的锁文件、offline/locked 解析、panic=abort 和单任务编译；分配终止或 panic 无法保证正常清理。",
    ),
}


def write(path, body):
    """@brief Write one complete UTF-8 manual into its local canonical directory."""
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(body, encoding="utf-8")


def bridge_overview(locale):
    """@brief Explain the C FFI bridge and its exact ABB test scope.

    @param locale English or Simplified Chinese documentation locale.
    @return An introductory explanation with source links and the actual call chain.
    @details The nine-language build adapter and five-language C FFI bridge have
    different scopes. Neither scope establishes an implemented ABB language port.
    """
    if locale == "zh_CN":
        return """## C FFI 桥接层与语言构建适配器

`c_ffi_bridge` 表示 **C Foreign Function Interface bridge（C 外部函数调用桥接层）**。
它负责把使用 C FFI 的语言调用转接到 uwvm2 的 Wasm 导入函数。
`native_languages` 则表示多种原生编译语言共用的构建适配器。两个名称分别对应下面的范围：

| 基础设施 | 当前源码中的语言范围 | 作用 |
| --- | --- | --- |
| 共享构建适配器 | Rust、Zig、Go、TinyGo、Swift、Haskell、Nim、D、Odin | 描述这些语言各自的编译器、目标、运行库和构建参数。列入配置不代表该语言的 ABB 示例已经实现或测试。 |
| 数字操作 C 调用桥接层 | Swift、Haskell、Nim、D、Odin | 这些语言通过 C FFI 调用统一的 `roswasm_c_ffi_invoke()`，桥接源码再调用原始 Wasm 导入。Rust、Zig、Go、TinyGo 使用各自的直接导入绑定，不需要这段 C 桥接。 |

上述范围分别定义在 [构建配置](../../../../../../tools/native_languages/profile.py)
和 [桥接生成器](../../../../../../tools/native_languages/numeric.py) 中。
共享基础设施的说明见 [共享语言构建文档](../../../../../../share/platform/ros/native_languages/README.md)。

## 调用过程与产物

使用此桥接的语言源码 → C FFI → `roswasm_c_ffi_invoke(操作索引, 参数…)`
→ 编译进同一个 Wasm 模块的 `shim.c` → `uwvm_ros1_v1` 或 `uwvm_ros2_v1` 导入
→ uwvm2 的 ROS 主机接口。

`shim.c` 是约定明确的 C 转接文件。它根据数字索引选择原始导入函数，并保持
句柄、内存偏移、长度和返回值的 ABI 类型。它不会把其他语言源码转换成 C，
也不替代相应语言的编译器、运行库或 ABB 数据类型实现。
`ROSWASM_C_FFI_BACKEND=1` 选择 ROS1 导入，`=2` 选择 ROS2 导入。
产物仍然是 Wasm；桥接产物不表示原生 ROS 节点或本机 ELF 程序。

## 本目录三个 ABB 示例究竟证明什么

本目录的 `read_speed`、`read_io`、`system_state` **都是 C 源码示例**。
它们使用 ABB C 数据类型与编解码器，经过 `abb_c_ffi_backend()` 转入真实
[shim.c](../../../../../../src/platform/ros/c_ffi_bridge/shim.c)，用于检查桥接调用。
例如读取速度使用私有索引 36，最终调用 ROS2 导入 `service_call`；该索引必须与
当前桥接源码保持配对，不能作为稳定的公共服务编号使用。

三个示例编译或执行通过，只能增加 C 桥接路径的验证证据。它们贡献 **0 种新增
编程语言**，不能代替 Swift、Haskell、Nim、D、Odin 等语言各自的 ABB SDK、
本语言源码、三个示例、双语手册和实际编译运行验收。

"""
    return """## C FFI bridge and native-language build adapters

`c_ffi_bridge` means **C Foreign Function Interface bridge**. It forwards calls
from languages using C FFI to uwvm2's Wasm imports. The separate
`native_languages` name identifies the shared build adapters for native-compiled
languages. These infrastructure components have distinct scopes:

| Infrastructure | Languages selected in the maintained source | Responsibility |
| --- | --- | --- |
| Shared build adapter | Rust, Zig, Go, TinyGo, Swift, Haskell, Nim, D, Odin | Describe each compiler, target, runtime, and build arguments. Registration does not establish an implemented or tested ABB port. |
| Numeric C FFI bridge | Swift, Haskell, Nim, D, Odin | Call `roswasm_c_ffi_invoke()` through C FFI, then dispatch to the original Wasm import. Rust, Zig, Go, and TinyGo use their own direct import bindings. |

These scopes are declared by the [build profile](../../../../../../tools/native_languages/profile.py)
and [bridge generator](../../../../../../tools/native_languages/numeric.py).
See also the [shared maintenance documentation](../../../../../../share/platform/ros/native_languages/README.md).

## Call chain and artifact

Consumer language source → C FFI → `roswasm_c_ffi_invoke(operation_index, arguments…)`
→ `shim.c`, linked into the same Wasm module → `uwvm_ros1_v1` or `uwvm_ros2_v1`
imports → the uwvm2 ROS host interface.

The C shim selects the original imported function by a private numeric index
while preserving handle, offset, length, and result ABI types. It does not
translate another language's application into C or replace that language's
compiler, runtime, or ABB record implementation. `ROSWASM_C_FFI_BACKEND=1` selects
ROS1 imports; `=2` selects ROS2 imports. The output remains Wasm. The bridge produces neither a native ROS node nor a host ELF executable.

## What these three ABB examples establish

The `read_speed`, `read_io`, and `system_state` programs in this directory are
**C source applications**. They use the ABB C records and codecs and select
`abb_c_ffi_backend()` to exercise the actual
[shim.c](../../../../../../src/platform/ros/c_ffi_bridge/shim.c).
For example, reading speed uses private index 36 to call the ROS2 `service_call`
import. That index must remain paired with the exact shim source; it is not a
stable public service identifier.

Successful builds or executions add evidence for the C bridge path only. These
examples contribute **zero additional programming languages**. Each Swift,
Haskell, Nim, D, or Odin ABB port still requires its own language source, SDK,
three examples, bilingual manuals, and actual compiler/runtime acceptance.

"""


def manual(language, locale):
    """@brief Describe the actual language API and each of its three applications.

    @param language Delivered observation language key.
    @param locale Exactly en_US or zh_CN.
    @return Complete professional manual with working relative source links.
    """
    title, source, symbols, producer = ENTRIES[language]
    overview = bridge_overview(locale) if language == "c_ffi_bridge" else ""
    if language == "c_ffi_bridge" and locale == "zh_CN":
        title = "c_ffi_bridge 共享 C 调用桥接层"
        producer = "WASI Clang 与 SDK 内维护的 C 桥接源码"
    prefix = "../../../../../../"
    if locale == "en_US":
        return f"""# ABB SDK development with {title}

{overview}The public entry is [{source}]({prefix}include/platform/abb/{language}/{source}). Its observation functions are `{symbols}`. The three independent applications are [read_speed]({prefix}example/platform/abb/{language}/read_speed), [read_io]({prefix}example/platform/abb/{language}/read_io), and [system_state]({prefix}example/platform/abb/{language}/system_state). Each directory contains its own source and documented `xmake.lua`.

## Build and artifact contract

Install Xmake and the SDK distribution containing its pinned shared compiler or interpreter closure, then run from the selected example directory. C-family programs use LLVM 23; other languages use their declared genuine shared frontend:

```sh
cd sdk/example/platform/abb/{language}/read_speed
xmake
```

The concrete product is `build/abb-{language}-read_speed.wasm`. The other directories emit `build/abb-{language}-read_io.wasm` and `build/abb-{language}-system_state.wasm`. The shared adapter restores its declared compiler closure during build. A missing qualified language route reports its missing dependency; it never substitutes another source language.

Compiling uses the installed SDK paths. No origin tree, repository test, native ABB checkout, or online package resolution is a build dependency. The product is a wasm32-wasip1 command importing `uwvm_ros2_v1`. It requires a ROS-enabled uwvm2 host, an independently configured native gateway/type registry, and the exact per-instance alias grants. It is not a native ELF executable.

## Language ownership and representation

{NOTES[language][0]}

The complete ROS1 and ROS2 C/C++ family directories remain necessary for their respective generated records, codecs, services, and Actions. They preserve separate original schemas and native identity domains. Including a type neither creates a ROS entity nor grants an operation. Do not combine incompatible same-name families in one translation unit.

## Example walkthroughs

| Application | Arguments after the program name | Native interface | Flow and complete output |
| --- | --- | --- | --- |
| `read_speed` | `ALIAS` | `abb_robot_msgs/srv/GetSpeedRatio` | Empty original request; preserve speed_ratio, result_code, and message. RC_SUCCESS is 1; speed_ratio uses integer percent in [0,100]. No override is written. |
| `read_io` | `ALIAS SIGNAL` | `abb_robot_msgs/srv/GetIOSignal` | Validate a nonempty strict UTF-8 name of at most 512 bytes before acquisition; preserve the complete value, result_code, and message. No IO signal is written. |
| `system_state` | `ALIAS` | `abb_robot_msgs/msg/SystemState` | Open once, subscribe, and retain the same owner for at most 250 polls; wait 20 ms after each idle result, decode the first complete sample, then close. Preserve Header, motors_on, auto_mode, rapid_running, every RAPID task, and every mechanical unit. Idle 11 remains an error with no synthetic default state. |

Choose an alias already configured for that exact service or topic. For example, a speed service grant may use `abb-speed`, an IO service grant `abb-io`, and a state subscription grant `abb-state`. These are illustrative names; the SDK does not provision them. An IO name such as `di_ready` must exist in the selected controller configuration. Command arguments are ordinary WASI argv, including in AssemblyScript.

## Status and output handling

Each command writes one JSON line. `primary` is the first operation or application failure. `cleanup` remains independent; `cleanup_present` distinguishes a close attempt from no acquired owner. `rpc_present`, `rpc_status`, `required_present`, and `required` retain the actual transport and length observations. `response_present` permits use of the whole `wire_hex` canonical body. This is the SDK's bounded little-endian format, not ROS CDR or a native C struct dump.

Controller refusal maps to application status 5 while retaining the entire valid response. Transport denial 13, idle 11, invalid input/encoding 22, capacity 90, unsupported 95, disconnect 107, and timeout 110 retain their original numeric meaning. An unwritten capacity-error length slot stays unknown. No timeout or capacity error triggers a retry. The process exit preserves primary before cleanup, then encoding/stdout failure, and clamps codes above 125.

## ROS integration and verification

Start the independently configured ABB ROS driver, native type registry, and gateway before admitting this command. Match the exact ROS2 type, canonical codec identity, resource, operation, complete QoS, quotas, and deadline. The [platform guide](../../README.md) links the selected upstream driver boundaries and current validation record. Read the public API's English Doxygen comments for storage and synchronous execution rules.

Linux acceptance belongs in `~/Documents/uwvm2-ros-test` under the configured 64 GiB, swap-disabled cgroup. Header syntax checks, real Wasm execution with a deterministic ABI fixture, real native ROS transport through a Wasmtime test adapter, production uwvm2 gateway tests, and physical-controller tests are separate evidence categories. Only the categories actually recorded in the current report count as completed. These read-only observations do not implement RWS credentials, EGM control, RAPID orchestration, or the full upstream driver tutorial suite.
"""
    return f"""# 使用 {title} 开发 ABB SDK 应用

{overview}公共入口是 [{source}]({prefix}include/platform/abb/{language}/{source})，观察函数为 `{symbols}`。三个独立应用分别是 [read_speed]({prefix}example/platform/abb/{language}/read_speed)、[read_io]({prefix}example/platform/abb/{language}/read_io) 和 [system_state]({prefix}example/platform/abb/{language}/system_state)。每个目录均包含独立源码和带英文说明的 `xmake.lua`。

## 编译与产物契约

安装 Xmake 及包含锁定共享编译器或解释器的 SDK 分发包，然后进入示例目录执行。C 系列使用 LLVM 23，其余语言使用已声明的真实共享前端：

```sh
cd sdk/example/platform/abb/{language}/read_speed
xmake
```

实际产物是 `build/abb-{language}-read_speed.wasm`。另外两个目录分别生成 `build/abb-{language}-read_io.wasm` 和 `build/abb-{language}-system_state.wasm`。共享适配器在构建时恢复锁定的编译依赖；尚未具备合格实现的语言会报告缺失依赖，不能替换成其他语言。

构建只引用已安装 SDK 的实际路径，不依赖 origin、仓库测试、原生 ABB 源码检出或在线依赖解析。产物是导入 `uwvm_ros2_v1` 的 wasm32-wasip1 命令，需要启用 ROS 的 uwvm2 主机、独立配置的原生 Gateway/类型注册表，以及针对当前实例的准确别名权限。它不是原生 ELF 程序。

## 语言所有权与数据表示

{NOTES[language][1]}

C/C++ 下完整的 ROS1、ROS2 模式族目录仍然必需：它们分别提供原始完整记录、编解码器、服务和 Action，并保留各自的模式及原生身份域。包含类型不会创建 ROS 实体或授予操作权限。一个翻译单元不应混合不兼容的同名模式族。

## 三个示例的逐项解读

| 应用 | 程序名之后的参数 | 原生接口 | 流程及完整输出 |
| --- | --- | --- | --- |
| `read_speed` | `ALIAS` | `abb_robot_msgs/srv/GetSpeedRatio` | 发送原始空请求，完整保留 speed_ratio、result_code、message。RC_SUCCESS 为 1，速度倍率使用 [0,100] 范围内的整数百分比，不设置倍率。 |
| `read_io` | `ALIAS SIGNAL` | `abb_robot_msgs/srv/GetIOSignal` | 获取能力前验证非空严格 UTF-8 信号名，最多 512 字节；完整保留 value、result_code、message，不写 IO。 |
| `system_state` | `ALIAS` | `abb_robot_msgs/msg/SystemState` | 打开并订阅一次，同一个所有者最多轮询 250 次；空闲后等待 20 ms，首个完整样本解码后关闭。保留 Header、三个状态标志及全部 RAPID 任务和机械单元。空队列 11 保留为错误，不伪造默认状态。 |

别名必须已绑定到准确的服务或主题。例如速度服务可使用 abb-speed，IO 服务可使用 abb-io，状态订阅可使用 abb-state；这些只是命名示例，SDK 不会自动创建授权。di_ready 等 IO 名称必须真实存在于所选控制器配置中。所有新命令均使用标准 WASI argv，包括 AssemblyScript。

## 状态与输出处理

每个命令输出一行 JSON。primary 是首个操作或应用错误；cleanup 独立保留，cleanup_present 区分实际关闭与从未获取所有者。rpc_present、rpc_status、required_present、required 保留真正的传输及长度观察。只有 response_present 为真，wire_hex 才是完整有效的规范响应。它使用 SDK 有界小端格式，不是 ROS CDR，也不是原生 C 结构体内存转储。

控制器拒绝映射为应用状态 5，同时保留整个有效响应。权限拒绝 13、空队列 11、输入/编码错误 22、容量错误 90、不支持 95、断连 107、超时 110 保留原始数值含义。容量错误未写长度槽时，不推断所需大小。超时和容量错误都不触发重试。进程退出优先保留 primary，其次 cleanup，再其次编码或 stdout 错误；大于 125 的退出码截为 125。

## ROS 接入与验证

先配置独立的 ABB ROS 驱动、原生类型注册表和 Gateway，再准入此命令。类型、规范编解码身份、资源、操作、完整 QoS、配额和截止时间必须准确匹配。[平台指南](../../README.md) 链接了所选上游驱动边界和当前验证记录。存储生命周期与同步执行规则以公共 API 的英文 Doxygen 注释为准。

Linux 验收目录为 `~/Documents/uwvm2-ros-test`，必须处于配置好的 64 GiB、禁用 swap 的 cgroup。完整头文件语法检查、确定性 ABI 测试环境中的真实 Wasm 执行、通过 Wasmtime 测试适配器的真实原生 ROS 通信、生产 uwvm2 Gateway 测试、实机测试属于不同证据类别。只有当前报告真实记录的类别才能计为完成。这三个只读观察示例尚不等于 RWS 凭据管理、EGM 控制、RAPID 编排或上游驱动完整教程套件。
"""


def configuration(language, locale):
    """@brief Explain source configuration, architecture selection and actual run prerequisites.

    @param language Exact installed source-language or bridge directory key.
    @param locale en_US or zh_CN; both describe the same build/runtime contract.
    @return A complete Markdown section for the selected standalone application.
    @details The deployment remains explicitly supplied by the application owner.
    Compilation neither starts ROS nor infers gateway resource permissions.
    """
    actual = language
    extension = {
        "as": "ts",
        "objectc": "m",
        "c_ffi_bridge": "c",
        "go": "go",
        "tinygo": "go",
        "rs": "rs",
    }.get(actual, actual)
    declaration = f"""```lua
-- Include the SDK entry using the SDK root discovered by the example.
includes(path.join(sdk_root, "tools/xmake/ros.lua"))
-- Keep deployment independent from the source compiler installation.
set_policy("run.autobuild", false)
target("abb-{language}-read_speed")
    set_language("{actual}")
    set_ros_platform("abb")
    set_ros2_version("jazzy")
    set_abb_version("complete")
    set_ros_scenario("read_speed")
    set_plat("wasm-wasip1")
    set_arch(get_config("arch") or "wasm32")
    add_files("main.{extension}")
target_end()
```"""
    command = """```sh
xmake f -c -p wasm-wasip1 -a wasm32 --ros-run-config=/absolute/abb-deployment.json
xmake
xmake run
```"""
    if locale == "zh_CN":
        return f"""## Xmake 配置与运行

独立示例通过 UWVM_ROS_SDK_ROOT 或向上查找已安装 SDK 来定位公共构建入口，源码只使用公共模块名称。`set_language` 选择真正的源语言，`set_ros_platform` 选择 ABB 适配器。平台与架构是不同参数：`wasm-wasip1` 配合 `wasm32` 得到编译器目标 `wasm32-wasip1`，不要把完整 triple 填入 `set_arch`。Linux 或 aarch64 是运行主机的架构，不是 guest 的架构。尚未完成该语言验收的目标组合必须明确报错，不能悄悄改成另一个目标。

{declaration}

构建阶段无需安装或启动 ROS、Gateway 或 uwvm2-ros。只有 `xmake run` 才读取部署文件并启动真正的 uwvm2-ros 和原生 Gateway。部署文件使用 `uwvm-native-ros-run-v2` 格式，提供 `runtime`、`gateway`、`backend`、`distribution` 和原生 `connection`。每个场景必须声明 `arguments`、`main_module`、`preloads` 及完整 `modules` 权限映射。每个模块明确选择 `ros_enabled`、`grants`、`wasi_grants`；每个能力保留别名、操作、资源、原始原生类型身份和配额。IO 参数包含别名与实际信号名，另外两个观察命令只接收别名。完整配置见[统一部署手册](../../../../../native-run.zh_CN.md)及 C/C++ 的 `read_speed/deployment.template.json`；类型身份占位符必须按实际编译的注册表填写。构建选项不会隐式授权。

{command}

构建与运行分离时，在开发主机先执行 `xmake`，部署主机安装 uwvm2-ros、原生 ROS/Gateway 及进程启动器所需 Python 3，并携带已生成的 `.wasm`。根项目中的 `run.autobuild=false` 防止运行阶段重建源码。运行日志和执行记录写入 `.uwvm-ros/native-ros/run`，`build` 只保留 `.wasm`。部署文件、编译器中间文件和记录均不属于 guest 的分发产物。

"""
    return f"""## Xmake configuration and execution

Each example locates the installed SDK through UWVM_ROS_SDK_ROOT or parent-directory discovery; application sources use public module identities. `set_language` selects the real source language and `set_ros_platform` selects the ABB adapter. Platform and architecture are separate: `wasm-wasip1` plus `wasm32` resolves to compiler triple `wasm32-wasip1`. Do not place that complete triple in `set_arch`. Linux or aarch64 identifies the execution host rather than the guest. An unqualified language/target combination must fail explicitly instead of silently selecting another ABI.

{declaration}

Compilation does not require ROS, a gateway, or uwvm2-ros to be installed or running. `xmake run` reads the explicit deployment and launches the actual uwvm2-ros host and native gateway. The `uwvm-native-ros-run-v2` deployment supplies `runtime`, `gateway`, `backend`, `distribution`, and native `connection` fields. Each scenario declares `arguments`, `main_module`, `preloads`, and an exact `modules` policy map. Every module explicitly selects `ros_enabled`, `grants`, and `wasi_grants`; capabilities retain alias, operation, resource, original native type identity, and limits. IO arguments contain the alias and actual signal name; the other observations take the alias. See the [common native deployment guide](../../../../../native-run.en_US.md) and the C/C++ `read_speed/deployment.template.json` examples. Replace native identity placeholders using the matching compiled registry. Configuration does not grant authority implicitly.

{command}

For separate development and deployment hosts, build first, then carry the completed `.wasm` to a host with uwvm2-ros, native ROS/gateway infrastructure, and Python 3 for the process launcher. The root project's `run.autobuild=false` prevents source rebuilding during execution. Logs and execution receipts live in `.uwvm-ros/native-ros/run`; `build` contains only `.wasm` output. Deployment inputs, compiler intermediates, and receipts are separate from the guest distributable.

"""


def main():
    """@brief Write actual bilingual manuals and an explicit language support matrix."""
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--sdk", type=Path, required=True)
    args = parser.parse_args()
    sdk = args.sdk.resolve(strict=True)
    delivered = {
        language
        for language in ENTRIES
        if all(
            (sdk / "example/platform/abb" / language / scenario / "xmake.lua").is_file()
            for scenario in ("read_speed", "read_io", "system_state")
        )
    }
    for locale in ("en_US", "zh_CN"):
        chinese = locale == "zh_CN"
        rows = []
        for language in REQUESTED:
            state = (
                (
                    "已提供三个观察命令；验证范围见报告"
                    if chinese
                    else "Three observation commands delivered; see validation scope"
                )
                if language in delivered
                else (
                    "尚未完成三个独立示例及完整验收"
                    if chinese
                    else "Three standalone examples and complete acceptance are not yet delivered"
                )
            )
            if language == "c_ffi_bridge":
                state = (
                    "三个 C 桥接示例；计入桥接验证，不计入独立语言数量或其余语言的完成度"
                    if chinese
                    else "Three C bridge examples; counted as bridge validation, not another language or completion of its consumers"
                )
            label = (
                f"[{language}](language/{language}/README.md)"
                if language in delivered
                else f"`{language}`"
            )
            rows.append(f"| {label} | {state} |")
        heading = "ABB SDK 开发指南" if chinese else "ABB SDK development guide"
        opening = (
            "公共模块位于 sdk/include/platform/abb，独立应用位于 sdk/example/platform/abb，包元数据位于 sdk/lib/platform/abb，上游定义、来源和验证摘要位于 sdk/share/platform/abb。源码与构建脚本先在本机修改和格式化，再用 scp -r 同步完整目录到 SSH Linux。所有编译与执行测试在 Linux 的 64 GiB、禁用 swap 环境完成。"
            if chinese
            else "Public modules live in sdk/include/platform/abb, standalone applications in sdk/example/platform/abb, package metadata in sdk/lib/platform/abb, and original definitions/provenance/validation summaries in sdk/share/platform/abb. Author and format source locally, then synchronize complete directories to SSH Linux with scp -r. All compiler and runtime acceptance runs use the Linux 64 GiB, swap-disabled environment."
        )
        intro = (
            "下面逐项区分实际交付与待实现范围。当前已交付语言及 c_ffi_bridge 桥接分组的三个观察示例不能证明全部要求的语言或整个 ABB 驱动已完成。"
            if chinese
            else "The matrix distinguishes actual source delivery from remaining implementation work. The delivered three observation commands per source language and the c_ffi_bridge bridge group do not establish completion of all requested languages or the entire ABB driver."
        )
        upstream = (
            "ROS1 参考 [abb_robot_driver](https://github.com/ros-industrial/abb_robot_driver)，准确的所选提交和 ROS2 集成边界见 [CONTROLLERS.md](../../../../share/platform/abb/CONTROLLERS.md)。RWS 状态读取、离散服务、EGM 硬件控制和控制器启动示例是不同能力；本次观察命令只覆盖其中三个明确接口。"
            if chinese
            else "The ROS1 reference is [abb_robot_driver](https://github.com/ros-industrial/abb_robot_driver); exact selected revisions and the distinct ROS2 integration boundary are recorded in [CONTROLLERS.md](../../../../share/platform/abb/CONTROLLERS.md). RWS state publication, discrete services, EGM hardware control, and controller bringup are separate capabilities. These observation commands cover three explicitly selected interfaces."
        )
        write(
            sdk / f"document/platform/abb/{locale}/README.md",
            f"# {heading}\n\n{opening}\n\n{intro}\n\n| {"语言或基础设施" if chinese else "Language or infrastructure"} | {"当前范围" if chinese else "Current scope"} |\n| --- | --- |\n"
            + "\n".join(rows)
            + f"\n\n{upstream}\n",
        )
        for language in sorted(delivered):
            write(
                sdk / f"document/platform/abb/{locale}/language/{language}/README.md",
                manual(language, locale) + configuration(language, locale),
            )


if __name__ == "__main__":
    main()
