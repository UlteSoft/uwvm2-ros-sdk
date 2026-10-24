#!/usr/bin/env python3
"""@file native_manuals.py
@brief Maintain accurate bilingual manuals for six genuine Unitree native frontends.
@details Read the installed complete record catalog, public language modules and
all thirty-six real examples. Only the six explicitly owned language manual
directories are writable. This documentation authoring pass runs no compiler,
guest, native ROS process or physical robot operation. --check also validates
every local Markdown link; --manifest prints exact output identities.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import os
from pathlib import Path
import re

SDK = Path(__file__).resolve().parents[3]
LANGUAGES = ("zig", "d", "nim", "odin", "swift", "haskell")
LOCALES = ("en_US", "zh_CN")
SCENARIOS = {
    1: (("motion_state", "HighState"), ("low_state", "LowState"), ("motor_state", "MotorState")),
    2: (
        ("motion_state", "SportModeState"),
        ("low_state", "LowState"),
        ("wireless_controller", "WirelessController"),
    ),
}
INFO = {
    "zig": {
        "title": "Zig",
        "extension": "zig",
        "fence": "zig",
        "records": "zig/ros{version}/records.zig",
        "facade": "zig/ros{version}/observation.zig",
        "core": "zig/observation.zig",
        "wire": "zig/wire.zig",
        "imports": 'const unitree = @import("unitree");\nconst records = @import("unitree_records");',
        "namespace_en": (
            "Xmake maps `unitree` to the selected ROS facade and `unitree_records` to its "
            "complete record module. `unitree_core` and `unitree_wire` are the "
            "corresponding installed support modules. The same public import selects ROS1 "
            "or ROS2 through the target's declared backend."
        ),
        "namespace_zh": (
            "Xmake 将 `unitree` 映射到所选 ROS 门面，将 `unitree_records` "
            "映射到该后端的完整记录模块；`unitree_core`、`unitree_wire` 是对应的 SDK 支持模块。相同公共导入通过目标声明的后端选择 "
            "ROS1 或 ROS2。"
        ),
        "codec": (
            "`encode{symbol}(value: *{symbol}, output: []u8) wire.Error!usize`; "
            "`decode{symbol}(bytes: []const u8) wire.Error!{symbol}`"
        ),
        "errors_en": (
            "The error set is `error{Invalid}`. Use `try` or `catch`; the returned "
            "extent/value exists only on success. Malformed input, field-domain failure and "
            "insufficient output all use `error.Invalid`. Observation helpers translate a "
            "local codec refusal to numeric 22."
        ),
        "errors_zh": (
            "错误集合为 `error{Invalid}`，通过 `try` 或 `catch` "
            "处理；成功时才获得有效长度或完整值。畸形输入、字段域错误、输出容量不足均返回 `error.Invalid`，观察门面将本地 codec 拒绝转换为数值状态 "
            "22。"
        ),
        "storage_en": (
            "`wire.Text(N, false)` owns `data: [N]u8` and active `size: u32`; "
            "`wire.Sequence(Element, N)` owns `items` and active `size`. Fixed arrays use "
            "`[N]Element`. Ordinary record initialization is `.{};` no heap allocation or "
            "native owner is involved."
        ),
        "storage_zh": (
            "`wire.Text(N, false)` 拥有 `data: [N]u8` 与有效长度 `size: "
            "u32`；`wire.Sequence(Element, N)` 拥有 `items` 与有效项数 `size`。固定数组使用 "
            "`[N]Element`。记录可用 `.{};` 初始化，不涉及堆分配或原生 owner。"
        ),
        "outcome": "`Observation(Record)`",
        "presence": "response_present",
        "rpc": "rpc",
        "rpc_presence": "rpc_present",
        "cleanup_presence": "cleanup_present",
        "length": "length",
        "payload": "`value`, `bytes[0..size]`",
        "report": "`unitree.report(&value) -> u32`",
        "entry": "`export fn nl_entry() u32`",
    },
    "d": {
        "title": "D",
        "extension": "d",
        "fence": "d",
        "records": "d/ros{version}/records.d",
        "facade": "d/ros{version}/observation.d",
        "core": "d/observation.d",
        "wire": "d/wire.d",
        "imports": "import api = unitree.d.ros1.observation;\nimport records = unitree.d.ros1.records;",
        "namespace_en": (
            "Use `unitree.d.ros1.observation` or `unitree.d.ros2.observation`; each facade "
            "publicly imports its common observation module and selected records. Explicit "
            "record imports make pure codec use clear. Modules execute in the admitted LDC "
            "betterC profile with `@nogc nothrow` operations."
        ),
        "namespace_zh": (
            "使用 `unitree.d.ros1.observation` 或 `unitree.d.ros2.observation`；门面公开导入公共观察模块与所选"
            "记录模块。单独导入 records 可明确表达纯 codec 调用。模块在已准入的 LDC betterC 配置下运行，操作使用 `@nogc "
            "nothrow`。"
        ),
        "codec": (
            "`uint encode{symbol}(ref {symbol} value, ubyte[] output, out size_t written) "
            "@nogc nothrow`; `uint decode{symbol}(const(ubyte)[] bytes, out {symbol} value) "
            "@nogc nothrow`"
        ),
        "errors_en": (
            "Zero means success; canonical refusals return 22. Read `written` and encoded "
            "bytes only on success. Decoding builds a private candidate and publishes it "
            "only after the entire input is consumed. Do not use an out value as a "
            "successful record when status is nonzero."
        ),
        "errors_zh": "0 表示成功，规范编码拒绝返回 22。仅成功后读取 `written` 和编码字节。解码先构造私有候选值，完整消耗输入后才发布；非零状态的 out 值不能当作成功记录使用。",
        "storage_en": (
            "`Text!(N, false)` owns `data` and `size`; `Sequence!(Element, N)` owns `items` "
            "and `size`. Fixed arrays use `Element[N]`. Record values and finite arrays "
            "belong to the D guest; the betterC profile requires no Druntime or GC "
            "allocation for these operations. Initialize floating fields explicitly to "
            "admitted finite values: ordinary D floating defaults may be NaN and are "
            "refused by the strict codec."
        ),
        "storage_zh": (
            "`Text!(N, false)` 拥有 `data` 与 `size`，`Sequence!(Element, N)` 拥有 `items` 与 "
            "`size`；固定数组使用 `Element[N]`。记录与有限数组属于 D guest，这些操作在 betterC 配置下不需要 Druntime 或 "
            "GC 分配。应显式将浮点字段初始化为准入的有限值：普通 D 浮点默认值可能为 NaN，严格 codec 会拒绝。"
        ),
        "outcome": "`Observation!Record`",
        "presence": "responsePresent",
        "rpc": "rpc",
        "rpc_presence": "rpcPresent",
        "cleanup_presence": "cleanupPresent",
        "length": "length",
        "payload": "`value`, `bytes[0 .. size]`",
        "report": "`api.report(value) -> uint`",
        "entry": "`extern(C) uint nl_entry() @nogc nothrow`",
    },
    "nim": {
        "title": "Nim",
        "extension": "nim",
        "fence": "nim",
        "records": "nim/ros{version}/records.nim",
        "facade": "nim/ros{version}/observation.nim",
        "core": "nim/observation.nim",
        "wire": "nim/wire.nim",
        "imports": "import unitree/nim/ros1/observation\nimport unitree/nim/ros1/records as records",
        "namespace_en": (
            "Select `unitree/nim/ros1/observation` or `unitree/nim/ros2/observation`. The "
            "facade exports its common observer helpers; import the selected `records` "
            "module explicitly for pure codecs and record names. Xmake invokes the genuine "
            "Nim frontend and its ordinary C backend, then LLVM compiles and links that "
            "generated C."
        ),
        "namespace_zh": (
            "选择 `unitree/nim/ros1/observation` 或 "
            "`unitree/nim/ros2/observation`；门面导出公共观察辅助函数。纯 codec 和记录类型应显式导入相应 `records` "
            "模块。Xmake 调用真实 Nim 前端及其正常 C 后端，再由 LLVM 编译、链接生成的 C。"
        ),
        "codec": (
            "`encode(value: var {symbol}; output: var openArray[byte]; written: var int): "
            "uint32`; `decode{symbol}(bytes: openArray[byte]; value: var {symbol}): uint32`"
        ),
        "errors_en": (
            "Zero means success and 22 rejects a malformed record, capacity failure, "
            "truncation or trailing bytes. `written` starts at zero and is valid after "
            "successful encoding. Decoding uses a private candidate, leaving the caller's "
            "output unchanged on canonical refusal."
        ),
        "errors_zh": "0 表示成功；畸形记录、容量不足、截断或尾随字节返回 22。`written` 初始为 0，成功编码后才有效。解码使用私有候选值，规范拒绝时保持调用者的输出值不变。",
        "storage_en": (
            "`NativeText[N, false]` owns `textBytes` and `textSize`; `NativeSequence[T, N]` "
            "owns `sequenceItems` and `sequenceSize`. Fixed arrays use `array[N, T]`. The "
            "admitted profile uses `mm:none`, `exceptions:goto` and disabled threads. Keep "
            "input/output spans disjoint and live for the synchronous call."
        ),
        "storage_zh": (
            "`NativeText[N, false]` 拥有 `textBytes`、`textSize`，`NativeSequence[T, N]` 拥有 "
            "`sequenceItems`、`sequenceSize`；固定数组使用 `array[N, T]`。已准入配置为 "
            "`mm:none`、`exceptions:goto`、禁用线程。同步调用期间，输入输出存储须有效且互不重叠。"
        ),
        "outcome": "`Observation[Record]`",
        "presence": "responsePresent",
        "rpc": "rpc",
        "rpc_presence": "rpcPresent",
        "cleanup_presence": "cleanupPresent",
        "length": "length",
        "payload": "`value`, initialized `bytes` prefix of `size` bytes",
        "report": "`report(value) -> uint32`",
        "entry": '`proc nlEntry(): uint32 {.exportc: "nl_entry", cdecl.}`',
    },
    "odin": {
        "title": "Odin",
        "extension": "odin",
        "fence": "odin",
        "records": "odin/ros{version}/records.odin",
        "facade": "odin/ros{version}/observation/observation.odin",
        "core": "odin/observation.odin",
        "wire": "odin/wire/wire.odin",
        "imports": (
            'import core "unitree:odin"\nimport unitree '
            '"unitree:odin/ros1/observation"\nimport records "unitree:odin/ros1"'
        ),
        "namespace_en": (
            "Xmake installs the `unitree` collection. Import `unitree:odin` for common "
            "helpers, `unitree:odin/ros1/observation` or `unitree:odin/ros2/observation` "
            "for the observer, and `unitree:odin/ros1` or `unitree:odin/ros2` for complete "
            "records/codecs. The public operations are contextless; the command entry uses "
            "the C calling convention."
        ),
        "namespace_zh": (
            "Xmake 配置 `unitree` collection：`unitree:odin` "
            "提供公共函数，`unitree:odin/ros1/observation` 或 `unitree:odin/ros2/observation` "
            "提供观察门面，`unitree:odin/ros1` 或 `unitree:odin/ros2` 提供完整记录与 codec。公共操作为 "
            "contextless，命令入口采用 C 调用约定。"
        ),
        "codec": (
            "`encode_{symbol}(value: ^{symbol}, output: []u8) -> (int, u32)`; "
            "`decode_{symbol}(bytes: []u8) -> (value: {symbol}, code: u32)`"
        ),
        "errors_en": (
            "The second result is status: zero succeeds, 22 refuses canonical input/output. "
            "The first encoder result is the initialized extent only on success. A failed "
            "decoder's returned value is unusable; inspect status before accessing fields. "
            "Borrowed byte slices must remain stable throughout the call."
        ),
        "errors_zh": (
            "第二个返回值是状态：0 成功，22 表示规范输入/输出被拒绝。编码的第一个返回值仅在成功时表示有效长度；解码失败返回的值不可使用，须先检查状态再读取字段。借"
            "用的字节切片在整个调用期间必须保持有效、稳定。"
        ),
        "storage_en": (
            "`wire.Text(N, false)` owns `data` and `size`; `wire.Sequence(Element, N)` owns "
            "`items` and `size`. Fixed arrays use `[N]Element`. Complete records and "
            "bounded observation buffers are ordinary owned Odin values; no allocator or "
            "native owner is hidden in a record."
        ),
        "storage_zh": (
            "`wire.Text(N, false)` 拥有 `data`、`size`，`wire.Sequence(Element, N)` 拥有 "
            "`items`、`size`；固定数组使用 `[N]Element`。完整记录与有界观察缓冲区是普通 Odin 自有值，记录不隐藏分配器或原生 owner。"
        ),
        "outcome": "`core.Observation(Record)`",
        "presence": "response_present",
        "rpc": "rpc",
        "rpc_presence": "rpc_present",
        "cleanup_presence": "cleanup_present",
        "length": "length",
        "payload": "`value`, `bytes[:size]`",
        "report": "`core.report(&value) -> u32`",
        "entry": '`@(export, link_name="nl_entry") entry :: proc "c"() -> u32`',
    },
    "swift": {
        "title": "Swift",
        "extension": "swift",
        "fence": "swift",
        "records": "swift/ros{version}/Records.swift",
        "facade": "swift/ros{version}/Observation.swift",
        "core": "swift/CoreObservation.swift",
        "wire": "swift/Wire.swift",
        "imports": (
            "// Xmake compiles the SDK files and this entry in module UnitreeCommand.\n// "
            "UnitreeRos1 and UnitreeRos2 are public enum namespaces.\nlet value = "
            "UnitreeRos1.waitMotionState(unitreeArgument(1), 250)"
        ),
        "namespace_en": (
            "The provider compiles Wire.swift, CoreObservation.swift, the selected "
            "Records.swift/Observation.swift and the application's main.swift together in "
            "module `UnitreeCommand`. `UnitreeRos1` and `UnitreeRos2` are enum namespaces, "
            "so the shipped entry uses them directly. There is no `import UnitreeRos1` or "
            "separately installed Swift package in this command layout."
        ),
        "namespace_zh": (
            "provider 将 Wire.swift、CoreObservation.swift、所选 Records.swift/Observation.swift "
            "和应用 main.swift 一起编译到 `UnitreeCommand` 模块。`UnitreeRos1`、`UnitreeRos2` 是 enum "
            "命名空间，示例直接访问；本命令布局不使用 `import UnitreeRos1`，也不要求单独安装 Swift package。"
        ),
        "codec": (
            "`var value = {symbol}()`; `value.encode() -> (bytes: [UInt8], status: "
            "UInt32)`; `{symbol}.decode(_ bytes: [UInt8]) -> (value: Self?, status: "
            "UInt32)`"
        ),
        "errors_en": (
            "These APIs return explicit tuples, without throwing. Success has status zero. "
            "Canonical refusal has status 22, an empty encoded byte array or a nil decoded "
            "value. Encoding is mutating, so use an exclusive `var`; require both a zero "
            "status and a non-nil value before reading decoded fields."
        ),
        "errors_zh": (
            "API 通过显式元组返回，不抛出异常。成功状态为 0；规范拒绝状态为 22，同时编码字节为空或解码值为 nil。编码方法为 mutating，须使用独占的 "
            "`var`；读取解码字段前，应同时确认状态为 0 且值非 nil。"
        ),
        "storage_en": (
            "Original strings are strict UTF-8 `[UInt8]`; fixed and variable arrays are "
            "ordinary `[Element]` values whose exact counts/bounds are checked by the "
            "generated codec. Standard-library arrays retain Swift value/copy-on-write "
            "semantics. The Embedded Swift route uses no Foundation and retains no borrowed "
            "native pointer in a returned value."
        ),
        "storage_zh": (
            "原始字符串表示为严格 UTF-8 `[UInt8]`；固定和可变数组均为普通 `[Element]`，生成的 codec 检查准确项数或上界。标准库数组遵循 "
            "Swift 值语义及写时复制规则。Embedded Swift 路线不使用 Foundation，返回值不保留借用的原生指针。"
        ),
        "outcome": "`UnitreeObservation<Value>`",
        "presence": "responsePresent",
        "rpc": "rpc",
        "rpc_presence": "rpcPresent",
        "cleanup_presence": "cleanupPresent",
        "length": "length",
        "payload": "`value: Value?`, `wire: [UInt8]`",
        "report": "`unitreeReport(value) -> UInt32`",
        "entry": '`@_cdecl("nl_entry") public func unitreeEntry() -> UInt32`',
    },
    "haskell": {
        "title": "Haskell",
        "extension": "hs",
        "fence": "haskell",
        "records": "haskell/Unitree/Ros{version}/Records.hs",
        "facade": "haskell/Unitree/Ros{version}/Observation.hs",
        "core": "haskell/Unitree/Observation.hs",
        "wire": "haskell/Unitree/Wire.hs",
        "imports": (
            "import Unitree.Observation (command)\nimport qualified Unitree.Ros1.Observation "
            "as Unitree\nimport qualified Unitree.Ros1.Records as Records"
        ),
        "namespace_en": (
            "Import `Unitree.Ros1.Observation` or `Unitree.Ros2.Observation` for typed IO "
            "observers; their complete record types/codecs are in `Unitree.Ros1.Records` or "
            "`Unitree.Ros2.Records`. `Unitree.Observation` supplies `Observation`, "
            "`command`, `report` and `argumentBytes`. Xmake supplies the public module "
            "search path to genuine WASI GHC."
        ),
        "namespace_zh": (
            "`Unitree.Ros1.Observation`、`Unitree.Ros2.Observation` 提供带完整类型的 IO 观察函数；完整记录及 "
            "codec 位于 `Unitree.Ros1.Records`、`Unitree.Ros2.Records`。`Unitree.Observation` "
            "提供 `Observation`、`command`、`report`、`argumentBytes`，Xmake 为真实 WASI GHC "
            "配置公共模块搜索路径。"
        ),
        "codec": (
            "`encode{symbol} :: {symbol} -> Either Word32 [Word8]`; `decode{symbol} :: "
            "[Word8] -> Either Word32 {symbol}`"
        ),
        "errors_en": (
            "Pure encoding/decoding returns `Right` only for a complete value; `Left 22` "
            "refuses malformed fields, extent violations or trailing bytes. Pattern-match "
            "the Either before using a result. Raw `readType` parsers are compositional "
            "internal-style helpers; the public `decodeType` is the whole-input operation."
        ),
        "errors_zh": (
            "纯编解码仅在完整成功时返回 `Right`；字段畸形、长度违规或尾随字节返回 `Left 22`。使用结果前须模式匹配 Either。`readType` "
            "是可组合的解析辅助函数，面向完整输入的公开调用应使用 `decodeType`。"
        ),
        "storage_en": (
            "Strings are UTF-8 `[Word8]`; fixed/variable arrays are typed lists with "
            "generated exact-count or finite-bound validation. Original widths use "
            "`Word8/16/32/64`, `Int8/16/32/64`, `Float`, `Double` and `Bool`. Immutable "
            "values may share ordinary pure structure; no borrowed foreign pointer or "
            "native ROS owner escapes a decoder."
        ),
        "storage_zh": (
            "字符串使用 UTF-8 `[Word8]`；固定/可变数组使用有类型列表，并由生成代码检查准确长度或有限上界。原始标量宽度使用 "
            "`Word8/16/32/64`、`Int8/16/32/64`、`Float`、`Double`、`Bool`。不可变值可以共享普通纯数据结构，解码器不会"
            "泄漏借用的外部指针或原生 ROS owner。"
        ),
        "outcome": "`Observation value`",
        "presence": "response = Just value",
        "rpc": "rpcStatus",
        "rpc_presence": "rpcPresent",
        "cleanup_presence": "cleanupPresent",
        "length": "lengthSlot",
        "payload": "`response :: Maybe value`, `wire :: [Word8]`",
        "report": "`report value :: IO Word32`",
        "entry": "`main :: IO (); main = command Unitree.waitMotionState`",
    },
}

CODEC_SAMPLES = {
    "zig": """fn bmsCommandRoundTrip() !records.Ros1Unitree_legged_msgsBmsCmd {
    var value: records.Ros1Unitree_legged_msgsBmsCmd = .{};
    var output: [4]u8 = undefined;
    const written = try records.encodeRos1Unitree_legged_msgsBmsCmd(&value, &output);
    return records.decodeRos1Unitree_legged_msgsBmsCmd(output[0..written]);
}""",
    "d": """uint bmsCommandRoundTrip(out records.Ros1Unitree_legged_msgsBmsCmd decoded)
    @nogc nothrow
{
    auto value = records.Ros1Unitree_legged_msgsBmsCmd.init;
    ubyte[4] output;
    size_t written;
    auto code = records.encodeRos1Unitree_legged_msgsBmsCmd(value, output[], written);
    if (code != 0)
    {
        return code;
    }
    return records.decodeRos1Unitree_legged_msgsBmsCmd(output[0 .. written], decoded);
}""",
    "nim": """proc bmsCommandRoundTrip(decoded: var records.Ros1Unitree_legged_msgsBmsCmd): uint32 =
    var value: records.Ros1Unitree_legged_msgsBmsCmd
    var output: array[4, byte]
    var written: int
    let code = records.encode(value, output, written)
    if code != 0:
        return code
    records.decodeRos1Unitree_legged_msgsBmsCmd(
        output.toOpenArray(0, written - 1), decoded)
""",
    "odin": """bms_command_round_trip :: proc "contextless"() -> (records.Ros1Unitree_legged_msgsBmsCmd, u32) {
    value: records.Ros1Unitree_legged_msgsBmsCmd
    output: [4]u8
    written, code := records.encode_Ros1Unitree_legged_msgsBmsCmd(&value, output[:])
    if code != 0 {
        return value, code
    }
    return records.decode_Ros1Unitree_legged_msgsBmsCmd(output[:written])
}""",
    "swift": """func bmsCommandRoundTrip()
    -> (value: Ros1Unitree_legged_msgsBmsCmd?, status: UInt32)
{
    var value = Ros1Unitree_legged_msgsBmsCmd()
    let encoded = value.encode()
    if encoded.status != 0 {
        return (nil, encoded.status)
    }
    return Ros1Unitree_legged_msgsBmsCmd.decode(encoded.bytes)
}""",
    "haskell": """import Data.Word (Word32)

bmsCommandRoundTrip :: Either Word32 Records.Ros1Unitree_legged_msgsBmsCmd
bmsCommandRoundTrip = do
    bytes <- Records.encodeRos1Unitree_legged_msgsBmsCmd
        (Records.Ros1Unitree_legged_msgsBmsCmd 0 [0, 0, 0])
    Records.decodeRos1Unitree_legged_msgsBmsCmd bytes
""",
}


def tr(locale: str, english: str, chinese: str) -> str:
    """@brief Select complete authored prose without machine translation at runtime."""
    return chinese if locale == "zh_CN" else english


def digest(path: Path) -> str:
    """@brief Identify reviewed source/document bytes without running their code."""
    return hashlib.sha256(path.read_bytes()).hexdigest()


def link(folder: Path, target: Path, label: str) -> str:
    """@brief Link to an actual SDK file from the manual's installed location."""
    assert target.is_file(), target
    return f"[{label}]({os.path.relpath(target, folder)})"


def field_name(language: str, symbol: str, original: str) -> str:
    """@brief Preserve the actual generated field identifier including original case."""
    if language == "haskell":
        return symbol[0].lower() + symbol[1:] + "_" + original
    return "field_" + original


def public_type(language: str, field: dict, records: dict[str, str]) -> str:
    """@brief Spell each actual scalar, complete nested type and owned array shape."""
    scalars = {
        "zig": ["bool", "u8", "u16", "u32", "u64", "i8", "i16", "i32", "i64", "f32", "f64"],
        "d": ["bool", "ubyte", "ushort", "uint", "ulong", "byte", "short", "int", "long", "float", "double"],
        "nim": [
            "bool",
            "uint8",
            "uint16",
            "uint32",
            "uint64",
            "int8",
            "int16",
            "int32",
            "int64",
            "float32",
            "float64",
        ],
        "odin": ["bool", "u8", "u16", "u32", "u64", "i8", "i16", "i32", "i64", "f32", "f64"],
        "swift": [
            "Bool",
            "UInt8",
            "UInt16",
            "UInt32",
            "UInt64",
            "Int8",
            "Int16",
            "Int32",
            "Int64",
            "Float",
            "Double",
        ],
        "haskell": [
            "Bool",
            "Word8",
            "Word16",
            "Word32",
            "Word64",
            "Int8",
            "Int16",
            "Int32",
            "Int64",
            "Float",
            "Double",
        ],
    }
    kinds = [
        "bool",
        "uint8",
        "uint16",
        "uint32",
        "uint64",
        "int8",
        "int16",
        "int32",
        "int64",
        "float32",
        "float64",
    ]
    native = field["type"]
    if native == "string":
        bound = field["string_bound"]
        base = {
            "zig": f"wire.Text({bound}, false)",
            "d": f"Text!({bound}, false)",
            "nim": f"NativeText[{bound}, false]",
            "odin": f"wire.Text({bound}, false)",
            "swift": "[UInt8]",
            "haskell": "[Word8]",
        }[language]
    elif native in kinds:
        base = scalars[language][kinds.index(native)]
    else:
        base = records[native]
    if not field["array"]:
        return base
    count = field["count"]
    if field["array"] == "array":
        return {
            "zig": f"[{count}]{base}",
            "d": f"{base}[{count}]",
            "nim": f"array[{count}, {base}]",
            "odin": f"[{count}]{base}",
            "swift": f"[{base}]",
            "haskell": f"[{base}]",
        }[language]
    return {
        "zig": f"wire.Sequence({base}, {count})",
        "d": f"Sequence!({base}, {count})",
        "nim": f"NativeSequence[{base}, {count}]",
        "odin": f"wire.Sequence({base}, {count})",
        "swift": f"[{base}]",
        "haskell": f"[{base}]",
    }[language]


def method(language: str, scenario: str) -> str:
    """@brief Return the exact observer spelling used by the real language facade."""
    if language == "odin":
        return "wait_" + scenario
    return "wait" + "".join(piece.title() for piece in scenario.split("_"))


def sources(language: str, version: int) -> dict[str, Path]:
    """@brief Locate only the reviewed installed public language modules."""
    info = INFO[language]
    include = SDK / "include/platform/unitree"
    return {
        name: include / info[name].format(version=version) for name in ("records", "facade", "core", "wire")
    }


def schema_links(folder: Path, locale: str) -> str:
    """@brief Keep the schema's actual parent-directory link explicit and auditable."""
    return tr(
        locale,
        ("[Complete original schemas](../NATIVE_SCHEMA.md) · [API](API.md) · [Six " "examples](EXAMPLES.md)"),
        "[完整原始 schema](../NATIVE_SCHEMA.md) · [API 手册](API.md) · [六个例子详解](EXAMPLES.md)",
    )


def api_manual(language: str, locale: str, families: list[dict], folder: Path) -> str:
    """@brief Explain actual imports, every field mapping, codecs and owner semantics."""
    info = INFO[language]
    lines = [
        f"# Unitree {info['title']} — " + tr(locale, "API", "API 手册"),
        "",
        schema_links(folder, locale),
        "",
        "## " + tr(locale, "Public modules and backend selection", "公共模块与后端选择"),
        "",
        info["namespace_zh" if locale == "zh_CN" else "namespace_en"],
        "",
        f"```{info['fence']}",
        info["imports"],
        "```",
        "",
        tr(
            locale,
            (
                "The fragment selects ROS1. For ROS2, select the ROS2 target and its matching "
                "facade/record namespace. The Xmake mapping, record family and trusted runtime "
                "deployment must agree; the observer never falls back to another family."
            ),
            (
                "上例选择 ROS1；使用 ROS2 时，应选择 ROS2 目标及其对应门面、记录命名空间。Xmake "
                "映射、记录家族与可信运行部署必须一致，观察函数不会回退到另一 ROS 家族。"
            ),
        ),
        "",
    ]
    for version in (1, 2):
        paths = sources(language, version)
        lines += [
            f"- ROS{version}: "
            + " · ".join(link(folder, paths[name], name) for name in ("facade", "records")),
        ]
    lines += [
        "- " + " · ".join(link(folder, sources(language, 1)[name], name) for name in ("core", "wire")),
        "",
        "## " + tr(locale, "Complete records and scalar representation", "完整记录与标量表示"),
        "",
        tr(
            locale,
            (
                "The catalog has 11 ROS1 records/115 original fields and 43 ROS2 records/257 "
                "fields. The tables below include every type and every public field identifier. "
                "Nested records preserve the same mapping recursively. Native MD5/RIHS "
                "registration identity, canonical codec identity and wire byte bounds are "
                "separate catalog facts; neither a type nor a codec grants ROS authority."
            ),
            (
                "目录包含 ROS1 的 11 种记录、115 个原始字段，以及 ROS2 的 43 种记录、257 "
                "个字段。下表列出全部类型和每一个公开字段标识符，嵌套记录递归采用相同映射。原生 MD5/RIHS 注册身份、规范 codec "
                "身份、线格式字节界限是独立的目录事实；类型或 codec 本身不授予 ROS 权限。"
            ),
        ),
        "",
        info["storage_zh" if locale == "zh_CN" else "storage_en"],
        "",
        tr(
            locale,
            (
                "Unsigned/signed integer widths remain exact. Float32/float64 retain their "
                "original widths; selected finite-value rules reject NaN/infinities. Fields "
                "preserve original spelling and case, field order, fixed-array counts, "
                "counted-sequence bounds and units. Strings use the declared UTF-8 domain, "
                "reject NUL/malformed encodings and preserve a leading BOM. Finite SDK quotas "
                "for originally unbounded declarations are recorded separately in the schema. "
                "CRC fields are carried as supplied; codecs do not establish physical CRC or "
                "robot safety validity."
            ),
            (
                "无符号、有符号整数保留准确位宽；float32/float64 保留原始宽度，所选有限值规则拒绝 "
                "NaN/无穷。字段保留原始拼写、大小写、声明顺序、固定数组项数、计数序列上界及单位。字符串遵循声明的 UTF-8 域，拒绝 NUL 和畸形编码，保留前导 "
                "BOM。原声明无界时，SDK 的有限准入配额在 schema 中单独记载。CRC 字段按输入值传递，codec 不建立物理 CRC 或机器人安全有效性。"
            ),
        ),
        "",
        (
            tr(
                locale,
                (
                    "For example, original `SOC` becomes `field_SOC`; `imu_state` becomes "
                    "`field_imu_state`. Preserve "
                    "these explicit names when moving between ROS1 camel-case fields and ROS2 "
                    "snake-case fields."
                ),
                (
                    "例如，原字段 `SOC` 映射为 `field_SOC`，`imu_state` 映射为 `field_imu_state`。"
                    "ROS1 驼峰字段与 ROS2 下划线字段之间迁移时，应保留表中准确的名称。"
                ),
            )
            if language != "haskell"
            else tr(
                locale,
                (
                    "Each Haskell selector is the complete record symbol with a lowercase first "
                    "letter, followed by `_` and the unchanged original field. For example, "
                    "BmsState's `SOC` is `ros1Unitree_legged_msgsBmsState_SOC`. This disambiguates "
                    "fields of different complete records without changing their canonical order."
                ),
                (
                    "Haskell 选择器由首字母小写的完整记录符号、`_` 和保持原样的原字段组成。例如 BmsState 的 `SOC` 对应 "
                    "`ros1Unitree_legged_msgsBmsState_SOC`。该规则区分不同完整记录的同名字段，并保留规范字段顺序。"
                ),
            )
        ),
        "",
    ]
    for family in families:
        lines += [
            f"### ROS{family['backend']}",
            "",
            "| "
            + tr(
                locale,
                "Original native type | Public complete type | Fields | Canonical bytes",
                "原生完整类型 | 公开完整类型 | 字段数 | 规范字节数",
            )
            + " |",
            "| --- | --- | --- | --- |",
        ]
        for record in family["records"]:
            lines.append(
                f"| `{record['type']}` | `{record['symbol']}` | {len(record['fields'])} "
                f"| {record['minimum_wire_bytes']}..{record['maximum_wire_bytes']} |"
            )
        lines.append("")
        record_types = {record["type"]: record["symbol"] for record in family["records"]}
        for record in family["records"]:
            lines += [
                f"#### `{record['symbol']}`",
                "",
                f"`{record['type']}`",
                "",
                "| "
                + tr(
                    locale,
                    "Original field/declaration | Public field | Public language type | Bound",
                    "原字段/声明 | 公开字段 | 公开语言类型 | 界限",
                )
                + " |",
                "| --- | --- | --- | --- |",
            ]
            for member in record["fields"]:
                declaration = member["type"]
                bound = "—"
                if member["array"] == "array":
                    declaration += f"[{member['count']}]"
                    bound = tr(locale, f"Exactly {member['count']} elements", f"恰为 {member['count']} 项")
                elif member["array"] == "sequence":
                    declaration += "[]"
                    bound = tr(
                        locale, f"SDK ≤{member['count']} active elements", f"SDK 有效项数 ≤{member['count']}"
                    )
                elif member["type"] == "string":
                    bound = tr(
                        locale,
                        f"SDK ≤{member['string_bound']} UTF-8 bytes",
                        f"SDK UTF-8 字节数 ≤{member['string_bound']}",
                    )
                mapped = field_name(language, record["symbol"], member["name"])
                typ = public_type(language, member, record_types)
                lines.append(f"| `{member['name']}: {declaration}` | `{mapped}` | `{typ}` | {bound} |")
            lines.append("")
    lines += [
        "## " + tr(locale, "Pure complete codecs", "纯完整 codec"),
        "",
        tr(
            locale,
            (
                "For each full type symbol `T`, substitute its exact name into the following "
                "real API pattern. The ROS1 `Ros1Unitree_legged_msgsBmsCmd` example has exactly "
                "four canonical bytes."
            ),
            "对每个完整类型符号 `T`，将准确名称代入以下真实 API 模式。ROS1 的 `Ros1Unitree_legged_msgsBmsCmd` 示例恰有 4 个规范字节。",
        ),
        "",
        info["codec"].replace("{symbol}", "T"),
        "",
        info["errors_zh" if locale == "zh_CN" else "errors_en"],
        "",
        tr(
            locale,
            (
                "The following pure ROS1 helper uses the imports above and propagates the "
                "actual codec result. It encodes the complete BmsCmd, then decodes only its "
                "initialized four-byte extent. This documentation fragment is separate from the "
                "six native communication entries."
            ),
            "以下纯 ROS1 辅助函数使用上文导入，并传递实际 codec 结果：先编码完整 BmsCmd，再仅解码其有效的 4 字节区间。此文档调用片段与六个原生通信入口分别说明。",
        ),
        "",
        f"```{info['fence']}",
        CODEC_SAMPLES[language].rstrip(),
        "```",
        "",
        tr(
            locale,
            (
                "Encoding requires exclusive record access and independent writable output "
                "where an output span is supplied. Ignore any partially written output after "
                "failure. Successful decoding consumes the entire bounded input, rejects "
                "trailing bytes and returns ordinary complete language values. Codecs perform "
                "no capability open, subscription or native serialization call. Original field "
                "domains, nested records, text/count limits and exact original scalar bits are "
                "checked before a whole success is exposed."
            ),
            (
                "提供输出区间的编码调用要求记录独占访问，并使用独立、可写的输出存储；失败后应忽略已写入的局部前缀。成功解码完整消耗有界输入、拒绝尾随字节，并返回普通的完整语"
                "言值。codec 不执行 capability open、订阅或原生序列化调用，只有原字段域、嵌套记录、文本/计数限制及原始标量位均通过后，才公开完整成功结"
                "果。"
            ),
        ),
        "",
        "## " + tr(locale, "Typed observations", "带完整类型的观察函数"),
        "",
        "| "
        + tr(
            locale,
            "Backend/scenario | Public function | Complete returned record",
            "后端/场景 | 公开函数 | 返回的完整记录",
        )
        + " |",
        "| --- | --- | --- |",
    ]
    for version, scenarios in SCENARIOS.items():
        family = next(item for item in families if item["backend"] == version)
        for scenario, short in scenarios:
            record = next(
                item
                for item in family["records"]
                if item["type"] == (("unitree_legged_msgs/" if version == 1 else "unitree_go/msg/") + short)
            )
            lines.append(
                f"| ROS{version} `{scenario}` | `{method(language, scenario)}(alias, attempts)` "
                f"| `{record['symbol']}` |"
            )
    lines += [
        "",
        tr(
            locale,
            (
                "Haskell observers return `IO (Observation T)`; the other frontends return the "
                "corresponding owned observation directly. Alias bytes must be strict UTF-8, "
                "1..255 bytes, without NUL, and remain stable for the synchronous call. "
                "Attempts must be 1..250 and include the immediate first poll. One owner opens "
                "and subscribes once. Only idle 11 permits another poll, after an internal WASI "
                "monotonic 20 ms pause. A capacity, authority, protocol, close or decoding "
                "refusal triggers no automatic retry or backend switch."
            ),
            (
                "Haskell 观察函数返回 `IO (Observation T)`，其他前端直接返回对应自有观察值。alias 必须为 1..255 字节的严格 "
                "UTF-8，不含 NUL，同步调用期间保持有效。attempts 须为 1..250，包含立即执行的第一次 poll。一次打开 owner、一次订阅；仅 "
                "idle 11 允许在内部 WASI 单调时钟等待 20ms 后继续 poll。容量、权限、协议、关闭或解码拒绝均不触发自动重试或后端切换。"
            ),
        ),
        "",
        tr(locale, "The result type is ", "结果类型为 ") + info["outcome"] + ".",
        "",
        "| " + tr(locale, "Actual field | Meaning and validity", "实际字段 | 含义及有效性") + " |",
        "| --- | --- |",
        "| `primary` | "
        + tr(
            locale,
            "First validation/open/subscribe/poll/wait/codec status; zero means no primary failure.",
            "首个校验/打开/订阅/poll/等待/codec 状态；0 表示无主操作错误。",
        )
        + " |",
        f"| `cleanup`, `{info['cleanup_presence']}` | "
        + tr(
            locale,
            "Independent close status and whether one close was attempted after acquisition.",
            "独立关闭状态，以及获取成功后是否尝试了一次关闭。",
        )
        + " |",
        f"| `{info['rpc']}`, `{info['rpc_presence']}`, `polls` | "
        + tr(
            locale,
            (
                "Original last poll status, explicit poll presence and actual count; a local "
                "decode failure does not rewrite the original RPC fact."
            ),
            "最后一次原始 poll 状态、是否执行过 poll、实际次数；本地解码失败不改写原始 RPC 事实。",
        )
        + " |",
        f"| `{info['length']}` | "
        + tr(
            locale,
            (
                "Full uint64 native output slot. UINT64_MAX preserves the unwritten sentinel; "
                "retain it even on failure."
            ),
            "完整 uint64 原生输出槽；UINT64_MAX 保留未写入哨兵，即使失败也保留原值。",
        )
        + " |",
        f"| `{info['presence']}` | "
        + tr(
            locale,
            "Whole response presence; require it before reading payload/default record storage.",
            "完整响应存在标记；读取负载或默认记录存储前必须检查。",
        )
        + " |",
        f"| {info['payload']} | "
        + tr(
            locale,
            (
                "Complete owned record and reencoded canonical bytes, usable only with whole "
                "response presence."
            ),
            "完整自有记录及重编码规范字节，仅完整响应存在时可用。",
        )
        + " |",
        "",
        tr(
            locale,
            (
                "Every ordinary successful acquisition closes once before return. Returned "
                "records/bytes remain valid after that close; copying them creates no native "
                "owner. Keep shared mutable values serialized. Fatal traps, unrecoverable "
                "allocation failures and process termination can bypass ordinary cleanup and "
                "require outer instance retirement."
            ),
            (
                "每条正常获取成功的路径都在返回前关闭一次。返回的记录、字节在关闭后仍有效，复制它们不创建原生 "
                "owner；共享可变值须串行访问。致命陷阱、不可恢复分配失败及进程终止可能绕过正常清理，须由外层回收实例。"
            ),
        ),
        "",
        "## " + tr(locale, "Reporting and process status", "输出与进程状态"),
        "",
        info["report"],
        "",
        tr(
            locale,
            (
                "Reporting emits one JSON object containing `primary`, `cleanup`, boolean "
                "`cleanup_present`, original `rpc_status`, boolean `rpc_present`, boolean "
                "`length_present`, exact decimal-string `length`, boolean `response_present`, "
                "`polls`, and full lowercase `wire_hex`. `length_present` means the original "
                "slot differs from the UINT64_MAX sentinel; it is not itself proof of a "
                "successful complete response. `wire_hex` is empty when response presence is "
                "false."
            ),
            (
                "输出是一条 JSON 对象，包含 `primary`、`cleanup`、布尔 `cleanup_present`、原始 `rpc_status`、布尔 "
                "`rpc_present`、布尔 `length_present`、准确十进制字符串 `length`、布尔 "
                "`response_present`、`polls` 和完整小写 `wire_hex`。`length_present` 仅表示原始槽不同于 "
                "UINT64_MAX 哨兵，本身不证明完整响应成功；无响应时 `wire_hex` 为空。"
            ),
        ),
        "",
        tr(
            locale,
            (
                "The report return preserves primary first, otherwise close, otherwise stdout "
                "error 5, otherwise zero. Only the command/process boundary clamps a nonzero "
                "status above 125. The C scalar adapter supplies arguments, raw transport, "
                "clock wait and stdout; the real language owns complete records, codec "
                "traversal and lifecycle choices. Haskell `command` handles one argument from "
                "getArgs, UTF-8 conversion, reporting and final exit; other entries use the "
                "original WASI argument count including the executable."
            ),
            (
                "report 返回值依次选择主操作错误、独立关闭错误、stdout 错误 5，均无错误时为 0。仅命令/进程边界将大于 125 的非零状态钳制到 125。C "
                "标量适配器提供参数、原始传输、时钟等待及 stdout，完整记录、codec 遍历与生命周期决策由真实语言完成。Haskell 的 `command` 负责 "
                "getArgs 中的一个参数、UTF-8 转换、输出和最终退出；其他入口使用包含程序名的原始 WASI 参数计数。"
            ),
        ),
        "",
        tr(
            locale,
            (
                "Status 11 is idle; local validation/codec refusal is 22, ABI-version "
                "incompatibility is 95, and native capacity refusal 90 remains a transport "
                "fact. Other original native owner/authority/connection/timeout/revoke statuses "
                "are preserved. Always inspect independent cleanup and presence instead of "
                "treating a default-filled record as a response."
            ),
            (
                "状态 11 表示 idle；本地校验/codec 拒绝为 22，ABI 版本不兼容为 95，原生容量拒绝 90 保留为传输事实。其他 "
                "owner/权限/连接/超时/撤销状态均按原值保留。应检查独立清理和响应存在标记，不能把默认填充的记录当作响应。"
            ),
        ),
        "",
        "## " + tr(locale, "Qualification scope", "验收范围"),
        "",
        scope(folder, locale),
    ]
    return "\n".join(lines).rstrip() + "\n"


def scope(folder: Path, locale: str) -> str:
    """@brief State bounded source-production and native-execution qualification."""
    evidence = link(
        folder,
        SDK / "share/platform/unitree/native-source-qualification.json",
        "native-source-qualification.json",
    )
    compilers = link(
        folder,
        SDK / "share/platform/unitree/native-compiler-sources.json",
        tr(locale, "original compiler versions and source closures", "原始编译器版本及源码闭包"),
    )
    return tr(
        locale,
        (
            "The supported command profile is wasm32 WASI Preview 1, noeh and one thread, "
            "with Noetic/Jazzy original native interfaces. Bundled source compilation is "
            "qualified on Linux x86_64. Same-artifact AArch64 native communication is "
            "separately checked through QEMU user mode on an x86_64 Linux kernel; it "
            "qualifies neither an ARM compiler host nor physical hardware. The x86 "
            "source/codec/build evidence is recorded in "
        )
        + evidence
        + ". Pinned frontend provenance is listed in "
        + compilers
        + (
            ". Full 54-record codec coverage is distinct from live transport of the six "
            "observation types. Memory64, Preview 2, threads, Wasm EH, other distributions, "
            "physical control and robot CRC/safety behavior are outside this route's "
            "qualification."
        ),
        (
            "支持的命令配置为 wasm32 WASI Preview 1、noeh、单线程，使用 Noetic/Jazzy 原始原生接口。随 SDK "
            "的源码编译工具链已在 Linux x86_64 验收；同 SHA 产物的 AArch64 原生通信通过 x86_64 内核上的 QEMU user mode "
            "单独验收，不代表 ARM 编译宿主或物理硬件。x86 源码、codec、构建证据记载于 "
        )
        + evidence
        + "，固定前端出处见 "
        + compilers
        + (
            "。54 种完整记录的 codec 覆盖与六种观察类型的实时传输分别计数。Memory64、Preview 2、线程、Wasm "
            "EH、其他发行版、物理控制及机器人 CRC/安全行为不在本路线验收范围内。"
        ),
    )


def example_manual(language: str, locale: str, families: list[dict], folder: Path) -> str:
    """@brief Explain each real entry and Xmake target with its exact complete source."""
    info = INFO[language]
    lines = [
        f"# Unitree {info['title']} — " + tr(locale, "Six examples", "六个例子详解"),
        "",
        schema_links(folder, locale),
        "",
        tr(
            locale,
            (
                "Each directory below is an independent real-language command with its own main "
                "and xmake.lua. The six cases observe complete original native records. The "
                "public import selects a typed observer; the observer closes before the entry "
                "reports all canonical bytes. Read the API before reusing individual fields."
            ),
            (
                "下列每个目录都是独立的真实语言命令，拥有自己的 main 和 xmake.lua。六个例子观察完整原始原生记录：公共导入选择带完整类型的观察函数，观察函数先"
                "关闭，再由入口输出全部规范字节。复用单个字段前请阅读 API 手册。"
            ),
        ),
        "",
        "## " + tr(locale, "Build and deploy", "构建与部署"),
        "",
        tr(
            locale,
            (
                "From a selected example directory, bare `xmake` performs cold configuration "
                "when needed and compiles that own-language source. The complete admitted Linux "
                "x86_64 SDK restores its pinned genuine frontend and LLVM/WASI dependencies "
                "through Xmake. Compilation needs no native ROS, uwvm2 or preinstalled language "
                "compiler. The only final application output is the target's single `.wasm`; "
                "intermediate files stay in `.uwvm-ros`."
            ),
            (
                "进入选定例子目录后，裸 `xmake` 在需要时完成冷配置，并编译该例自己的语言源码。完整的 Linux x86_64 SDK 通过 Xmake "
                "恢复固定的真实语言前端及 LLVM/WASI 依赖；编译不需要原生 ROS、uwvm2 或预装语言编译器。最终应用输出仅为目标对应的一份 "
                "`.wasm`，中间文件放在 `.uwvm-ros`。"
            ),
        ),
        "",
        "```sh",
        f"cd sdk/example/platform/unitree/{language}/ros2/motion_state",
        "xmake",
        "",
        "# Run after preparing and sourcing the matching native ROS environment.",
        "export UWVM_UNITREE_RUN_CONFIG=/absolute/path/to/trusted-unitree-deployment.json",
        f"xmake run unitree-{language}-ros2-motion_state",
        "```",
        "",
        tr(
            locale,
            (
                "Run is a separate operation. It requires Python 3 for the SDK process "
                "launcher, the actual uwvm2-ros runtime, production native gateway and original "
                "selected Noetic/Jazzy packages. The deployment declares the actual "
                "backend/distribution, runtime/gateway paths, each scenario's exact alias, "
                "native type identity, canonical codec identity, topic resource, QoS/transport, "
                "queue/rate/byte limits, explicit WASI grants and execution deadline. Its "
                "arguments array contains exactly the granted alias. `UWVM_ROS_PYTHON` selects "
                "the launcher; `--ros-run-config` is the configuration alternative. The "
                "example's disabled `run.autobuild` keeps run from rebuilding a missing or "
                "changed application."
            ),
            (
                "运行是独立操作，需要供 SDK 进程启动器使用的 Python 3、真实 uwvm2-ros runtime、生产原生 gateway，以及所选 "
                "Noetic/Jazzy 原始包。部署声明实际后端/发行版、runtime/gateway 路径、各场景准确 alias、原生类型身份、规范 codec "
                "身份、topic 资源、QoS/传输、队列/速率/字节配额、显式 WASI 权限和执行期限；arguments 数组恰含获准 "
                "alias。`UWVM_ROS_PYTHON` 可选择启动器，`--ros-run-config` 是配置选项替代入口。例子禁用 "
                "`run.autobuild`，运行时不会自动重建缺失或已变更的应用。"
            ),
        ),
        "",
        tr(
            locale,
            (
                "The Xmake descriptor discovers the complete SDK through UWVM_ROS_SDK_ROOT or "
                "ancestor lookup, includes the public dispatcher, selects this language and "
                "Unitree, declares Noetic or Jazzy, requests wasm-wasip1/wasm32 and adds the "
                "single real main with ros.wasm.source. The target name is unique per "
                "backend/scenario; its directory name supplies the runtime scenario. All six "
                "descriptors are reproduced below so these selections remain reviewable."
            ),
            (
                "Xmake 描述通过 UWVM_ROS_SDK_ROOT 或向上查找发现完整 SDK，包含公共 dispatcher，选择当前语言与 Unitree，声明 "
                "Noetic 或 Jazzy，选择 wasm-wasip1/wasm32，并通过 ros.wasm.source 加入唯一真实 "
                "main。目标名在后端/场景间唯一，目录名提供运行场景。下面保留六份实际描述，便于逐例核对这些选择。"
            ),
        ),
        "",
    ]
    for version, scenarios in SCENARIOS.items():
        family = next(item for item in families if item["backend"] == version)
        for scenario, short in scenarios:
            native = ("unitree_legged_msgs/" if version == 1 else "unitree_go/msg/") + short
            record = next(item for item in family["records"] if item["type"] == native)
            project = SDK / f"example/platform/unitree/{language}/ros{version}/{scenario}"
            main = project / ("main." + info["extension"])
            descriptor = project / "xmake.lua"
            source = main.read_text().rstrip()
            xmake = descriptor.read_text().rstrip()
            target = f"unitree-{language}-ros{version}-{scenario}"
            assert method(language, scenario) in source and target in xmake
            assert f'ros{version}_version("' + ("noetic" if version == 1 else "jazzy") + '")' in xmake
            lines += [
                f"## ROS{version} — `{scenario}`",
                "",
                link(folder, main, main.name) + " · " + link(folder, descriptor, "xmake.lua"),
                "",
                tr(
                    locale,
                    f"This command calls `{method(language, scenario)}` for complete `{native}` "
                    f"and returns `{record['symbol']}` through the typed observation. "
                    "Its original fields are ",
                    f"本命令调用 `{method(language, scenario)}`，观察完整 `{native}`，通过带类型的结果返回 `{record['symbol']}`。原始字段为 ",
                )
                + ", ".join("`" + field["name"] + "`" for field in record["fields"])
                + ".",
                "",
                tr(
                    locale,
                    (
                        "All listed fields, nested records and array elements participate in decoding "
                        "and reencoding. The trusted alias must bind this exact original type. Its "
                        "canonical full-body extent is "
                    ),
                    "上述全部字段、嵌套记录和数组元素均参与解码及重编码，可信 alias 必须绑定这个准确原始类型。完整规范负载长度为 ",
                )
                + f"{record['minimum_wire_bytes']}..{record['maximum_wire_bytes']} "
                + tr(
                    locale,
                    (
                        "bytes, independently of native object size. The native registry identity and "
                        "codec identity are checked as separate deployment facts."
                    ),
                    "字节，与原生对象 sizeof 无关；原生注册身份与 codec 身份是独立部署事实。",
                ),
                "",
                tr(locale, "The entry's steps are:", "入口按以下步骤执行："),
                "",
                "1. "
                + tr(
                    locale,
                    (
                        "Select the original backend's public observer namespace, using the import "
                        "shown in this real source."
                    ),
                    "通过下方真实源码中的公共导入选择原始后端观察命名空间。",
                ),
                "2. "
                + (
                    tr(
                        locale,
                        (
                            "`command` requires exactly one getArgs alias, encodes UTF-8 and exits 22 "
                            "before opening an owner on wrong arity."
                        ),
                        "`command` 要求 getArgs 中恰有一个 alias，将其编码为 UTF-8，参数数量错误时在打开 owner 前退出 22。",
                    )
                    if language == "haskell"
                    else tr(
                        locale,
                        (
                            "Require two original WASI arguments including the program name; wrong arity "
                            "returns 22 before acquisition. Argument 1 is the explicit alias."
                        ),
                        "要求包含程序名的原始 WASI 参数恰为两个；数量错误时在获取前返回 22，第 1 个参数为显式 alias。",
                    )
                ),
                "3. "
                + tr(
                    locale,
                    (
                        "Observe with a total budget of 250 polls. The typed helper performs one open, "
                        "one subscribe and only idle-dependent 20 ms waits, then one normal close."
                    ),
                    "以 250 次总预算观察。带类型的函数执行一次打开、一次订阅，仅在 idle 后等待 20ms，最终正常关闭一次。",
                ),
                "4. "
                + tr(
                    locale,
                    (
                        "Report the whole outcome after close. Primary, cleanup and output errors "
                        "remain separate until the final precedence/exit decision."
                    ),
                    "关闭后输出整个结果，主操作、清理、输出错误保持独立，直到最终优先级和退出决策。",
                ),
                "",
                f"```{info['fence']}",
                source,
                "```",
                "",
                tr(
                    locale,
                    (
                        "The descriptor below binds this main to the genuine frontend and exact "
                        "backend. The final output is "
                    ),
                    "下列描述将该 main 绑定到真实前端及准确后端，最终输出为 ",
                )
                + f"`build/{target}.wasm`.",
                "",
                "```lua",
                xmake,
                "```",
                "",
                tr(
                    locale,
                    (
                        "A successful run emits primary=0, cleanup=0, cleanup_present=true, "
                        "rpc_status=0, rpc_present=true and response_present=true. The decimal length "
                        "equals the complete received extent; wire_hex contains every reencoded "
                        "canonical byte. This example has no fixed expected sensor values: compare "
                        "against the selected native peer or fixture. A missing authority, wrong native "
                        "identity, disconnect, finite idle exhaustion or strict codec refusal remains a "
                        "nonzero original outcome; do not interpret empty/default payload as success."
                    ),
                    (
                        "成功运行输出 primary=0、cleanup=0、cleanup_present=true、rpc_status=0、rpc_present=true、"
                        "response_present=true；十进制 length 等于完整接收长度，wire_hex "
                        "包含全部重编码规范字节。例子不预设传感器数值，应与选定原生 peer 或 fixture 比较。权限缺失、原生身份错误、断连、有限 idle 预算耗尽或严格 "
                        "codec 拒绝均保留非零原始结果，不能把空负载或默认值当作成功。"
                    ),
                ),
                "",
            ]
    lines += [
        "## " + tr(locale, "Result handling and scope", "结果处理与范围"),
        "",
        tr(
            locale,
            (
                "Use response presence before reading a complete record; retain the last "
                "original RPC and full uint64 length even when local decoding fails. The final "
                "JSON uses booleans for presence, an exact decimal string for length and full "
                "hex for accepted bytes. The reporter chooses primary, otherwise cleanup, "
                "otherwise stdout failure 5. Only process exit clamps status to at most 125. "
                "Poll count measures actual polls, not elapsed milliseconds; the deployment's "
                "execution deadline is independent."
            ),
            (
                "读取完整记录前应检查响应存在标记；即使本地解码失败，也应保留最后的原始 RPC 和完整 uint64 长度。最终 JSON 的存在标记为布尔值，length "
                "为准确十进制字符串，成功字节为完整 hex。输出器依次选择主操作、独立清理、stdout 失败 5；仅进程退出将状态钳制到最多 125。polls 表示真实 "
                "poll 次数而非经过毫秒数，部署执行期限是独立限制。"
            ),
        ),
        "",
        scope(folder, locale),
    ]
    return "\n".join(lines).rstrip() + "\n"


def readme(language: str, locale: str, folder: Path) -> str:
    """@brief Provide a concise language-specific entry to the detailed manuals."""
    title = INFO[language]["title"]
    return "\n".join(
        [
            f"# Unitree {title}",
            "",
            tr(
                locale,
                f"The genuine {title} route provides complete original ROS1 Noetic and ROS2 "
                "Jazzy records, strict whole-record codecs and six independent read-only "
                "observations. All 11 ROS1 records/115 fields and 43 ROS2 records/257 fields "
                "retain their original type, order, width and shape.",
                f"真实 {title} 路线提供 ROS1 Noetic、ROS2 Jazzy 的完整原始记录、严格完整 codec 和六个独立只读观察。"
                "全部 11 种 ROS1 记录/115 字段、43 种 ROS2 记录/257 字段保留原类型、顺序、位宽及形状。",
            ),
            "",
            "- "
            + tr(
                locale,
                (
                    "[API.md](API.md): actual imports, every complete type/field mapping, codec "
                    "calls/errors and ownership."
                ),
                "[API.md](API.md)：真实导入、全部完整类型/字段映射、codec 调用/错误与所有权。",
            ),
            "- "
            + tr(
                locale,
                (
                    "[EXAMPLES.md](EXAMPLES.md): all six real mains and Xmake descriptors, "
                    "step-by-step behavior, results, build and trusted native deployment."
                ),
                "[EXAMPLES.md](EXAMPLES.md)：六个真实 main 与 Xmake 描述，逐步行为、结果、构建和可信原生部署。",
            ),
            "- "
            + tr(
                locale,
                (
                    "[Original complete schemas](../NATIVE_SCHEMA.md): every original field, "
                    "native/codec identity and canonical bound."
                ),
                "[完整原始 schema](../NATIVE_SCHEMA.md)：每个原字段、原生/codec 身份及规范长度界限。",
            ),
            "",
            scope(folder, locale),
            "",
        ]
    )


def validate_links(path: Path, content: str) -> int:
    """@brief Refuse broken installed local Markdown targets before saving manuals."""
    count = 0
    for match in re.finditer(r"\[[^\]]+\]\(([^)]+)\)", content):
        target = match[1].split("#", 1)[0]
        if target and not re.match(r"[a-z]+://", target):
            assert (path.parent / target).is_file(), (str(path), target)
            count += 1
    return count


def main() -> None:
    """@brief Generate/check only the authorized six-language bilingual manual tree.
    @details Input hashes are checked after generation to prove that no source,
    helper, original schema, shared document or frozen worker stage was changed.
    """
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--check", action="store_true", help="Check deterministic output and every link without writing"
    )
    parser.add_argument(
        "--manifest", action="store_true", help="Print exact paths/SHA-256 of all 37 authored files"
    )
    args = parser.parse_args()
    catalog = SDK / "share/platform/unitree/native-source-records.json"
    families = json.loads(catalog.read_text())["families"]
    assert [family["record_count"] for family in families] == [11, 43]
    assert sum(family["field_count"] for family in families) == 372
    protected = {catalog}
    outputs = {}
    for language in LANGUAGES:
        for version in (1, 2):
            paths = sources(language, version)
            protected.update(paths.values())
            text = paths["records"].read_text()
            family = next(item for item in families if item["backend"] == version)
            for record in family["records"]:
                assert record["symbol"] in text
                for member in record["fields"]:
                    assert field_name(language, record["symbol"], member["name"]) in text
            for scenario, _ in SCENARIOS[version]:
                project = SDK / f"example/platform/unitree/{language}/ros{version}/{scenario}"
                protected.update((project / "xmake.lua", project / ("main." + INFO[language]["extension"])))
        for locale in LOCALES:
            folder = SDK / f"document/platform/unitree/{locale}/language/{language}"
            assert folder.is_dir() and not folder.is_symlink()
            assert folder.resolve() == folder.absolute(), "Manual ancestors must be real owned directories"
            protected.add(folder.parent / "NATIVE_SCHEMA.md")
            outputs[folder / "README.md"] = readme(language, locale, folder)
            outputs[folder / "API.md"] = api_manual(language, locale, families, folder)
            outputs[folder / "EXAMPLES.md"] = example_manual(language, locale, families, folder)
    before = {path: digest(path) for path in protected}
    for path, content in outputs.items():
        assert not path.is_symlink(), path
        if args.check:
            assert path.read_text() == content, "Regenerate stale manual: " + str(path)
        else:
            path.write_text(content)
    links = sum(validate_links(path, content) for path, content in outputs.items())
    assert before == {
        path: digest(path) for path in protected
    }, "A read-only input changed during documentation generation"
    manifest = [
        dict(path=str(path.relative_to(SDK)), sha256=digest(path), bytes=path.stat().st_size)
        for path in sorted(outputs)
    ]
    manifest.append(
        dict(
            path=str(Path(__file__).relative_to(SDK)),
            sha256=digest(Path(__file__)),
            bytes=Path(__file__).stat().st_size,
        )
    )
    print(
        json.dumps(
            dict(
                status="PASS",
                manual_files=36,
                authored_files=37,
                languages=list(LANGUAGES),
                locales=list(LOCALES),
                checked_local_links=links,
                protected_inputs_unchanged=len(protected),
                files=manifest if args.manifest else None,
            ),
            indent=2,
        )
    )


if __name__ == "__main__":
    main()
