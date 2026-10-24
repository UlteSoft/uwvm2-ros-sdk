#!/usr/bin/env python3
"""@brief Author bilingual development/API manuals for genuine Unitree producers.

@details Tool versions come from the actual immutable offline bundle manifests.
The manuals describe source and ownership contracts; qualification is reported
separately from actual compiler/runtime receipts and is never invented here.
"""

import argparse
import json
from pathlib import Path

from author_native_apps import LANGUAGES, SCENARIOS, write

PROFILES = {
    "zig": (
        "Zig ReleaseSafe emits a genuine wasm32-freestanding object; LLVM 23 supplies the scalar adapter, WASI libc and final link.",
        "真实 Zig ReleaseSafe 前端生成 wasm32-freestanding 对象；LLVM 23 提供标量适配器、WASI libc 与最终链接。",
    ),
    "d": (
        (
            "LDC uses the genuine D frontend in betterC mode without Druntime/GC. Its pinned original backend is "
            "LLVM 19.1.7; LLVM 23 compiles the scalar adapter and performs the final WASI link."
        ),
        "LDC 使用真实 D 前端与 betterC 模式，不依赖 Druntime/GC。固定原生后端为 LLVM 19.1.7；LLVM 23 编译标量适配器并进行最终 WASI 链接。",
    ),
    "nim": (
        (
            "The genuine Nim compiler emits its normal generated C, which LLVM 23 compiles and links. The exact "
            "profile uses mm:none, exceptions:goto, disabled threads and finite owned record arrays."
        ),
        "真实 Nim 编译器输出其正常生成的 C，再由 LLVM 23 编译与链接。精确配置为 mm:none、exceptions:goto、关闭线程及有限自有 record 数组。",
    ),
    "odin": (
        "The genuine Odin compiler and its original base/core trees emit a wasi_wasm32 object; LLVM 23 supplies the scalar adapter and final WASI link.",
        "真实 Odin 编译器及其原始 base/core 库生成 wasi_wasm32 对象；LLVM 23 提供标量适配器与最终 WASI 链接。",
    ),
    "swift": (
        (
            "Genuine Embedded Swift emits a wasm32-unknown-none-wasm object with owned standard-library arrays "
            "and no Foundation. LLVM 23 compiles the scalar adapter and links the standalone WASI command."
        ),
        "真实 Embedded Swift 前端生成 wasm32-unknown-none-wasm 对象，使用标准库自有数组，不依赖 Foundation；LLVM 23 编译标量适配器并链接为独立 WASI 命令。",
    ),
    "haskell": (
        (
            "The genuine WASI GHC frontend and target RTS compile the original Haskell modules. Its matching "
            "libffi-wasm and LLVM 23 C/assembly/final link produce a standalone WASI command without a host GHC "
            "runtime or JavaScript engine."
        ),
        "真实 WASI GHC 前端及目标 RTS 编译原始 Haskell 模块；配套 libffi-wasm 与 LLVM 23 的 C、汇编及最终链接生成独立 WASI 命令，不使用宿主 GHC 运行时或 JavaScript 引擎。",
    ),
}


def schema(sdk, chinese):
    """@brief List every original record, scalar, array and finite owned field.

    @param sdk Private complete source SDK with pinned original metadata.
    @param chinese Select Chinese prose while retaining exact source spellings.
    @return Full native-language schema reference without claims about C outputs.
    """
    metadata = json.loads((sdk / "share/platform/unitree/native-source-records.json").read_text())
    lines = [
        "# " + ("完整原版原生语言记录" if chinese else "Complete original native-language records"),
        "",
        (
            "所有字段按原始声明顺序保留，固定数组必须完整；动态上限为 canonical admission quota，不修改原版 ROS 定义。"
            "Zig、D、Nim、Odin、Swift 字段使用 `field_<原字段名>`；Haskell 使用 `<首字母小写的记录符号>_<原字段名>`。"
            if chinese
            else "Every field retains original declaration order. Fixed arrays must be complete; dynamic ceilings are "
            "canonical admission quotas and do not change original ROS declarations. Zig, D, Nim, Odin and Swift "
            "use `field_<original-name>`; Haskell uses `<record-symbol-with-lowercase-initial>_<original-name>`."
        ),
        "",
        (
            "完整 decoder 拒绝截断、尾随字节、超过上限、非法 UTF-8 和非有限浮点数，只在整个值成功后发布结果。"
            "Zig、D、Nim、Odin 的 encoder 借用不重叠输出；失败时必须丢弃整个部分输出和 written 值。"
            "Swift、Haskell 仅在成功时返回完整自有字节。原始单位、坐标系、符号与 CRC 字段保持原样。"
            if chinese
            else "Complete decoders refuse truncation, trailing bytes, exceeded bounds, invalid UTF-8 and nonfinite floats "
            "before publishing a whole value. Zig, D, Nim and Odin encoders borrow disjoint output; discard its entire "
            "partial prefix and written extent on refusal. Swift and Haskell publish owned complete bytes only on "
            "success. Original units, frames, signedness and CRC fields remain unchanged."
        ),
        "",
    ]
    for family in metadata["families"]:
        lines += ["## ROS " + str(family["backend"]), ""]
        for record in family["records"]:
            lines += [
                "### `" + record["type"] + "`",
                "",
                "`" + record["symbol"] + "`",
                "",
                ("完整 canonical 字节范围：" if chinese else "Complete canonical byte range: ")
                + str(record["minimum_wire_bytes"])
                + ".."
                + str(record["maximum_wire_bytes"])
                + ".",
                "",
                "Codec identity: `" + record["codec_identity"] + "`.",
                "",
                "Native identity: `" + str(record["native_identity"]) + "`.",
                "",
                "| "
                + (
                    "原字段 | 原始类型 | 完整形状与有限上限 |"
                    if chinese
                    else "Original field | Original type | Complete shape and finite ceiling |"
                ),
                "| --- | --- | --- |",
            ]
            for field in record["fields"]:
                if field["array"] == "array":
                    shape = ("固定数组 " if chinese else "Fixed array ") + str(field["count"])
                elif field["array"] == "sequence":
                    shape = ("有限序列 " if chinese else "Finite sequence ") + str(field["count"])
                else:
                    shape = "标量或完整嵌套值" if chinese else "Scalar or complete nested value"
                if field["type"] == "string":
                    shape += "; " + str(field["string_bound"]) + " bytes, " + field["string_encoding"]
                lines.append("| `" + field["name"] + "` | `" + field["type"] + "` | " + shape + " |")
            lines.append("")
    return "\n".join(lines)


def module(language, backend):
    """@brief Return the exact public typed observation namespace.

    @param language Genuine source-language identifier.
    @param backend Exact original ROS family, one or two.
    @return Actual public module/import spelling used by the independent examples.
    """
    return {
        "zig": "unitree (Xmake maps this module to unitree/zig/ros" + str(backend) + "/observation.zig)",
        "d": f"unitree.d.ros{backend}.observation",
        "nim": f"unitree/nim/ros{backend}/observation",
        "odin": f"unitree:odin/ros{backend}/observation",
        "swift": f"UnitreeRos{backend}",
        "haskell": f"Unitree.Ros{backend}.Observation",
    }[language]


def manual(sdk, language, chinese):
    """@brief Describe exact tools, typed APIs, all examples and failure semantics.

    @param sdk Private complete source SDK root.
    @param language Actual native source language, never a substituted C application.
    @param chinese Select Chinese prose while preserving exact API/path spellings.
    @return Complete bilingual-manual Markdown source for one language.
    """
    manifest = json.loads((sdk / f"share/toolchains/host/linux-x86_64/native-{language}.json").read_text())
    compiler = {"d": "LDC", "haskell": "WASI GHC"}.get(language, language.title())
    title = "真实前端与离线编译" if chinese else "Genuine frontend and offline compilation"
    lines = [
        f"# Unitree {language}",
        "",
        "## " + title,
        "",
        f"{compiler} {manifest['version']}. " + PROFILES[language][1 if chinese else 0],
        "",
    ]
    lines += [
        (
            "完整发行 SDK 的主机工具清单与对应 XMZ 归档位于 `share/toolchains/host/linux-x86_64`。"
            "Xmake 校验归档及每个解包文件；已验收配置的 Linux x86_64 主机只需预装 Xmake。普通离线构建不调用 shell、"
            "Python、宿主预装编译器、ROS 或 uwvm2。应用源码始终由所声明语言的真实前端编译。"
            if chinese
            else "The complete SDK includes each exact host manifest and XMZ archive under `share/toolchains/host/linux-x86_64`. "
            "Xmake verifies the archive and every extracted file. The admitted Linux x86_64 build host needs only Xmake; "
            "ordinary offline builds invoke no shell, Python, preinstalled compiler, ROS or uwvm2. The declared genuine "
            "language frontend compiles every application source."
        ),
        "",
        "## " + ("原版记录与公开 API" if chinese else "Original records and public API"),
        "",
        (
            "完整编解码器保留 ROS 1 的 11 类、115 个字段及 ROS 2 的 43 类、257 个字段。"
            "字段顺序、宽度、符号、固定数组、有限序列、原始单位与 CRC 均按固定原版定义保留；"
            "不进行跨 ROS 版本转换。完整字段、codec identity 与字节上限见 `NATIVE_SCHEMA.md`。"
            if chinese
            else "Complete codecs retain all 11 ROS 1 records/115 fields and 43 ROS 2 records/257 fields. Original field order, "
            "width, signedness, fixed arrays, finite sequences, units and CRC fields remain intact. The two ROS families "
            "keep their distinct schemas. `NATIVE_SCHEMA.md` lists every field, codec identity and byte bound."
        ),
        "",
    ]
    for backend in (1, 2):
        lines += [f"### ROS {backend}", "", "`" + module(language, backend) + "`", ""]
        for scenario, identity, suffix in SCENARIOS[backend]:
            function = "wait_" + scenario if language == "odin" else "wait" + suffix
            lines += [f"- `{function}`: `{identity}`."]
        lines.append("")
    lines += [
        (
            "Zig、D、Nim、Odin 的观察值包含完整自有记录、有限字节数组及独立状态；Swift 的 `UnitreeObservation<Value>` "
            "使用自有标准库数组及可选完整记录；Haskell 的 `Observation value` 使用不可变自有值与 `Maybe`。"
            "只有 responsePresent/response_present 为真或 response 为 Just 时才能读取结果。借用参数必须在同步调用期间保持有效，"
            "共享可变状态由调用者串行化。复制普通值不会复制或创建 ROS 能力。"
            if chinese
            else "Zig, D, Nim and Odin outcomes own complete records, finite byte arrays and independent facts. Swift's "
            "`UnitreeObservation<Value>` owns standard-library arrays and an optional entire record; Haskell's "
            "`Observation value` owns immutable values and `Maybe`. Read the record/bytes only with responsePresent, "
            "response_present or Just. Keep borrowed inputs stable synchronously and serialize shared mutation. "
            "Copying an ordinary value creates no native ROS owner."
        ),
        "",
        "## " + ("有限轮询、状态与所有权" if chinese else "Finite polling, status and ownership"),
        "",
        (
            "每次操作打开一个已有 exact-type alias、订阅一次，实际 poll 总预算为 1..250。只有 idle 11 允许重试；"
            "下一次 poll 前使用真实 WASI 单调时钟等待 20 ms。容量、断连、撤销和其他错误不会 resize 或自动重放。"
            "所有正常获取的 owner 在返回前只 close 一次；primary 与 cleanup 独立保留，primary 优先。"
            "原始最后 poll 状态、poll 次数、完整 uint64 length 槽与未写 sentinel 均保留。"
            "trap、内存分配失败与语言运行时终止不承诺正常清理，宿主仍需回收 Instance。"
            if chinese
            else "Each operation opens one existing exact-type alias, subscribes once and performs 1..250 actual polls. "
            "Only idle 11 permits another poll, after a real WASI monotonic 20 ms wait. Capacity, disconnect, revoke "
            "and other errors are never automatically resized or replayed. Every normal successful acquisition "
            "closes once before return. Primary and cleanup remain independent; primary takes precedence. The last "
            "original poll status, poll count, full uint64 length slot and unwritten sentinel are retained. Traps, "
            "allocation failure and runtime termination cannot promise ordinary cleanup; the host retires the instance."
        ),
        "",
        "| " + ("状态 | 处理 |" if chinese else "Status | Handling |"),
        "| --- | --- |",
        "| 0 | "
        + (
            "完整操作与正常清理成功；仍检查结果存在标记。"
            if chinese
            else "Complete operation and ordinary cleanup succeeded; inspect presence."
        )
        + " |",
        "| 11 | "
        + (
            "只有有限预算内的 idle 可以继续轮询。"
            if chinese
            else "Only idle within the finite budget permits another poll."
        )
        + " |",
        "| 22 / 90 | "
        + (
            "无效完整记录或容量不足；不暴露部分值。"
            if chinese
            else "Invalid entire record or capacity refusal; expose no partial value."
        )
        + " |",
        "| 9 / 13 / 95 / 107 / 110 / 125 | "
        + (
            "保留原始能力、权限、ABI、连接、超时或撤销数值。"
            if chinese
            else "Preserve original owner, authority, ABI, connection, timeout or revoke status."
        )
        + " |",
        "",
        "## " + ("六个独立源码示例" if chinese else "Six independent source examples"),
        "",
        (
            "每个示例有独立 `xmake.lua`，从 `UWVM_ROS_SDK_ROOT` 或祖先目录发现 SDK，使用公开模块名。"
            "只接收一个显式订阅 alias 参数；不会自动连接物理机器人、创建授权或发布控制命令。"
            if chinese
            else "Every example has its own `xmake.lua`, discovers the SDK through `UWVM_ROS_SDK_ROOT` or ancestor lookup, "
            "and uses public module names. Exactly one explicit subscription alias is required. Examples create "
            "no implicit authority, physical robot connection or control publication."
        ),
        "",
    ]
    for backend in (1, 2):
        for scenario, _, _ in SCENARIOS[backend]:
            lines.append(f"- `example/platform/unitree/{language}/ros{backend}/{scenario}`")
    lines += [
        "",
        "```sh",
        f"cd sdk/example/platform/unitree/{language}/ros2/motion_state",
        "xmake",
        "```",
        "",
        (
            "唯一应用产物为 `build/unitree-"
            + language
            + "-ros2-motion_state.wasm`；其他目录生成对应名称的唯一 `.wasm`。"
            "中间对象与缓存保存在产物目录外的 `.uwvm-ros`。`xmake run` 不自动构建；它另需 Python 3 进程启动器、"
            "真实 uwvm2-ros、生产原生 Gateway、准确安装的 Noetic/Jazzy 接口与可信部署 JSON。"
            "`UWVM_UNITREE_RUN_CONFIG` 或 `--ros-run-config` 选择部署，`UWVM_ROS_PYTHON` 选择 Python 3。"
            "JSON 显式绑定主题、native/codec identity、QoS、队列配额与 WASI 权限；启动器不解释应用源码。"
            if chinese
            else "The sole application output is `build/unitree-" + language + "-ros2-motion_state.wasm`; each other "
            "directory emits its corresponding single `.wasm`. Intermediate objects/caches stay outside build in "
            "`.uwvm-ros`. `xmake run` disables automatic building and separately needs a Python 3 process launcher, "
            "actual uwvm2-ros, production native gateway, the exact installed Noetic/Jazzy interfaces and trusted "
            "deployment JSON. `UWVM_UNITREE_RUN_CONFIG` or `--ros-run-config` selects the deployment; "
            "`UWVM_ROS_PYTHON` selects Python 3. JSON binds the real topic, native/codec identities, QoS, queue "
            "limits and explicit WASI permissions. The launcher never interprets application source."
        ),
        "",
        "## " + ("资格边界与可核验来源" if chinese else "Qualification boundary and verifiable inputs"),
        "",
        (
            "精确配置为 Linux x86_64 主机、wasm32-wasip1、noeh、单线程；memory64、WASI Preview 2、线程及 Wasm EH "
            "在调用前端前明确拒绝。完整前端来源、原始归档 SHA 与许可证位于 `native-compiler-sources.json` 及固定工具包中。"
            "完整记录源码清单见 `native-source-records.json`；实际构建和原生通信结果另见 `native-source-qualification.json`。"
            "仅有源码不代表 PASS。Noetic/Jazzy 原生 fixture 证据不等于物理设备、任意端点、DDS SDK 或设备 CRC 安全认证。"
            if chinese
            else "The exact profile is Linux x86_64 host, wasm32-wasip1, noeh and one thread. Memory64, WASI Preview 2, "
            "threads and Wasm EH are explicitly refused before a frontend runs. `native-compiler-sources.json` "
            "and the pinned bundles retain original frontend archive hashes and licenses. `native-source-records.json` "
            "inventories the complete source; actual build/native results belong in `native-source-qualification.json`. "
            "Source presence alone is not PASS. Noetic/Jazzy fixture results do not qualify physical hardware, arbitrary "
            "endpoints, the separate DDS SDK or physical CRC/safety behavior."
        ),
        "",
    ]
    return "\n".join(lines)


def main():
    """@brief Generate only the six actual native-language bilingual manuals."""
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--sdk", type=Path, required=True)
    args = parser.parse_args()
    sdk = args.sdk.resolve(strict=True)
    for language in LANGUAGES:
        for locale in ("en_US", "zh_CN"):
            write(
                sdk,
                f"document/platform/unitree/{locale}/language/{language}/README.md",
                manual(sdk, language, locale == "zh_CN"),
            )
    for locale in ("en_US", "zh_CN"):
        write(sdk, f"document/platform/unitree/{locale}/language/NATIVE_SCHEMA.md", schema(sdk, locale == "zh_CN"))


if __name__ == "__main__":
    main()
