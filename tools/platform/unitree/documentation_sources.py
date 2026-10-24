#!/usr/bin/env python3
"""@brief Generate detailed bilingual manuals from exact Unitree source/API inventories.

@details Documentation does not establish compilation, native ROS behavior,
physical hardware support, or a missing language producer. Current routes and
tool versions come from the pinned publication metadata. Original native fixture
qualification remains in the separately retained historical acceptance report.
"""

import argparse
import json
from pathlib import Path
from binding_sources import write

IMPLEMENTED = ("c", "cpp", "objectc", "c_ffi_bridge", "as", "go", "tinygo", "rs")
TOOL_PROFILES = {
    "c": "WASI libc and compiler-rt; C17",
    "cpp": "WASI libc and compiler-rt; C++23 without exceptions/RTTI",
    "objectc": "genuine Objective-C frontend; freestanding C17 with @encode, no Foundation/ARC/messaging runtime",
    "c_ffi_bridge": "C17 and the maintained numeric C FFI shim for the selected ROS backend",
    "as": "incremental runtime, wasm32 WASI command",
    "go": "GOOS=wasip1 GOARCH=wasm CGO_ENABLED=0",
    "rs": "wasm32-wasip1 standard library, Rust 2021, panic=abort",
    "tinygo": "bundled LLVM frontend; wasi target, panic=trap, scheduler=none",
}


def load_publication(sdk):
    """@brief Read the admitted languages and exact qualified tool descriptions.

    @param sdk Installed SDK root containing this publication's pinned metadata.
    @return Current publication with its complete admitted language inventory.
    @details Historical acceptance receipts never supply current tool versions.
    Unknown or incomplete admission metadata is refused before writing a manual.
    """
    publication = json.loads((sdk / "share/platform/unitree/publication.json").read_text())
    languages = publication.get("languages", [])
    versions = publication.get("build_versions", {})
    if (
        publication.get("format") != "uwvm-unitree-publication-v1"
        or not isinstance(languages, list)
        or len(languages) != len(set(languages))
        or not set(IMPLEMENTED).issubset(languages)
        or not isinstance(versions, dict)
    ):
        raise ValueError("Unitree documentation requires a complete admitted publication")
    for language in languages:
        if not isinstance(versions.get(language), str) or not versions[language].strip():
            raise ValueError("Missing published tool pin for Unitree " + language)
    return publication


def api_reference(language, chinese):
    """@brief Render each backend's exact observer names and module selection.

    @param language One admitted source route with its actual public SDK module.
    @param chinese Select Chinese prose while preserving every public API spelling.
    @return Markdown lines for the ROS 1 and ROS 2 APIs and shared helpers.
    @details Backend-specific record types retain their distinct native schemas.
    """
    if language in ("c", "objectc", "c_ffi_bridge"):
        first = [
            "unitree_wait_motion_state",
            "unitree_wait_low_state",
            "unitree_wait_motor_state",
        ]
        second = [
            "unitree_wait_motion_state",
            "unitree_wait_low_state",
            "unitree_wait_wireless_controller",
        ]
        selection = (
            "Xmake 根据 ROS selector 将 `UWVM_UNITREE_ROS_VERSION` 设为 1 或 2；context 与完整 record 必须来自同一后端。"
            if chinese
            else (
                "Xmake sets `UWVM_UNITREE_ROS_VERSION` to 1 or 2 from the ROS selector; "
                "the context and complete record must belong to that same backend."
            )
        )
    elif language == "cpp":
        first = [
            "unitree::observe<" + name + ">"
            for name in ("unitree_motion_state", "unitree_low_state", "unitree_motor_state")
        ]
        second = [
            "unitree::observe<" + name + ">"
            for name in ("unitree_motion_state", "unitree_low_state", "unitree_wireless_controller")
        ]
        selection = (
            "Xmake 根据 ROS selector 将 `UWVM_UNITREE_ROS_VERSION` 设为 1 或 2；typed observer、context 与完整 record 使用同一后端。"
            if chinese
            else (
                "Xmake sets `UWVM_UNITREE_ROS_VERSION` to 1 or 2 from the ROS selector; "
                "the typed observer, context, and complete record use that same backend."
            )
        )
    elif language == "as":
        first = ["waitMotionState", "waitLowState", "waitMotorState"]
        second = ["waitMotionState", "waitLowState", "waitWirelessController"]
        selection = (
            (
                "分别从 `unitree/as/ros1/observation` 或 `unitree/as/ros2/observation` 导入 observer，"
                "并从对应的 `ros/as/ros1/roswasm` 或 `ros/as/ros2/roswasm` 导入 `NativeApi`。"
            )
            if chinese
            else (
                "Import observers from `unitree/as/ros1/observation` or `unitree/as/ros2/observation` "
                "and the matching `NativeApi` from `ros/as/ros1/roswasm` or `ros/as/ros2/roswasm`."
            )
        )
    elif language in ("go", "tinygo"):
        first = ["WaitMotionState", "WaitLowState", "WaitMotorState"]
        second = ["WaitMotionState", "WaitLowState", "WaitWirelessController"]
        module = "uwvm2.local/unitree-" + language
        selection = (
            "Xmake 为 `" + module + "` 模块选择唯一的 `ros1` 或 `ros2` build tag；record 与 transport 使用对应后端。"
            if chinese
            else (
                "Xmake selects exactly one `ros1` or `ros2` build tag for the `"
                + module
                + "` module; its records and transport use the matching backend."
            )
        )
    else:
        first = ["wait_motion_state", "wait_low_state", "wait_motor_state"]
        second = ["wait_motion_state", "wait_low_state", "wait_wireless_controller"]
        selection = (
            "Xmake 为 Unitree crate 启用唯一的 `ros1` 或 `ros2` feature，并选择对应的完整 record 模块。"
            if chinese
            else (
                "Xmake enables exactly one `ros1` or `ros2` feature for the Unitree crate "
                "and selects its corresponding complete record module."
            )
        )
    lines = ["### ROS 1", ""]
    lines.extend("- `" + method + "`" for method in first)
    lines.extend(["", "### ROS 2", ""])
    lines.extend("- `" + method + "`" for method in second)
    lines.extend(["", selection, ""])
    helpers = {
        "objectc": "`UWUnitreeObservationEncoding`",
        "c_ffi_bridge": "`unitree_ffi_backend`",
        "tinygo": "`Arguments`, `Pause`, `Output`, `Exit`",
    }
    if language in helpers:
        lines.extend(
            [
                ("两后端共用辅助接口：" if chinese else "Helpers shared by both backends: ") + helpers[language] + ".",
                "",
            ]
        )
    return lines


def inventory(sdk, chinese):
    """@brief Render every complete type and original field as readable narrow tables.

    @param sdk Reviewed SDK root containing the exact complete binding inventory.
    @param chinese Select Chinese explanatory prose while preserving API spellings.
    @return Complete Markdown reference; no native or compiler status is inferred.
    """
    report = json.loads((sdk / "share/platform/unitree/bindings.json").read_text())
    lines = [
        "# " + ("完整原生接口、值类型与字段" if chinese else "Complete original interfaces, values, and fields"),
        "",
        (
            "以下内容来自固定官方定义与完整 IR。ROS 1 与 ROS 2 保持独立 schema，不执行跨版本转换。"
            if chinese
            else (
                "These references come from pinned official declarations and complete IR. ROS 1 and ROS 2 retain "
                "distinct schemas without cross-version conversion."
            )
        ),
        "",
        (
            "所有字段严格按原始顺序列出。固定数组必须完整存在；动态上限是 canonical 接受配额，不修改原始 ROS 声明。"
            if chinese
            else (
                "All fields remain in original order. Fixed arrays must be complete; dynamic ceilings are "
                "canonical admission quotas that never modify original ROS declarations."
            )
        ),
        "",
    ]
    for family in report["families"]:
        lines += ["## ROS " + str(family["ros_version"]), ""]
        for record in family["records"]:
            lines += [
                "### `" + record["type"] + "`",
                "",
                ("完整 canonical 字节范围：" if chinese else "Complete canonical byte range: ")
                + str(record["minimum_wire_bytes"])
                + ".."
                + str(record["maximum_wire_bytes"])
                + ".",
                "",
                ("公开值符号：`" if chinese else "Public value symbol: `")
                + record["symbol"]
                + "`; "
                + ("C 完整类型：`" if chinese else "complete C type: `")
                + record["c_symbol"]
                + "`.",
                "",
                ("完整 codec identity：`" if chinese else "Complete codec identity: `")
                + record["codec_identity"]
                + "`.",
                "",
                "| "
                + (
                    "原始字段 | 完整原生类型 | 数组与有限容量 |"
                    if chinese
                    else "Original field | Complete native type | Shape and finite capacity |"
                ),
                "| --- | --- | --- |",
            ]
            for member in record["fields"]:
                if member["array"] == "array":
                    shape = ("固定数组 " if chinese else "Fixed array ") + str(member["count"])
                elif member["array"] == "sequence":
                    shape = ("序列 0.." if chinese else "Sequence 0..") + str(member["count"])
                else:
                    shape = "标量或完整嵌套值" if chinese else "Scalar or complete nested value"
                if member["type"] == "string":
                    shape += "; UTF-8 ≤ " + str(member["string_bound"]) + (" 字节" if chinese else " bytes")
                lines.append("| `" + member["name"] + "` | `" + member["type"] + "` | " + shape + " |")
            lines += [
                "",
                (
                    "C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。"
                    if chinese
                    else (
                        "C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` "
                        "perform complete transactional conversion; their prefix is the C type name above."
                    )
                ),
                "",
            ]
    lines += [
        (
            (
                "编码先验证全部字段并测量总长。完整解码拒绝截断、额外尾字节、超限及非有限浮点。C 输出与输入/长度槽分离，失败保留目标值；Go、Rust、AS 返回独立拥有的完整值。原始单位、坐标系及 "
                "CRC 字段完整保留，不执行缩放、转换或设备 CRC 认证。"
            )
            if chinese
            else (
                "Encoding validates all fields and measures before output. Complete decoding refuses truncation, "
                "trailing bytes, exceeded bounds, and nonfinite floats. C output stays disjoint from "
                "input/length storage and remains unchanged on refusal; Go, Rust, and AS return independently "
                "owned complete values. Original units, frames, and CRC fields remain intact without scaling, "
                "conversion, or device CRC certification."
            )
        ),
        "",
    ]
    return "\n".join(lines)


def target_scope(language, chinese, publication):
    """@brief Describe only the pointer ABIs admitted for this exact source route.

    @param language Current language or explicitly named ABI bridge route.
    @param chinese Select Chinese prose while preserving literal target names.
    @param publication Current admission data, including supplementary profiles.
    @return Target scope followed by the common native qualification explanation.
    @details An additional target requires its own evidence. Its existence does
    not extend the other routes or rewrite the original wasm32 build receipts.
    """
    wide = publication.get("additional_target_profiles", {}).get("wasm64-wasip1", {})
    if language in wide.get("languages", []):
        if chinese:
            return (
                "本语言支持默认 wasm32-wasip1，以及经过独立验收的 wasm64-wasip1；"
                "两者均为单线程、无 Wasm EH。后者使用 Uwvm 的 Preview 1 memory64 扩展。"
                "运行 `xmake f -a wasm64` 后执行 `xmake` 即可构建；"
                "完整配置与证据见 [memory64 指南](../../MEMORY64.md)。"
            )
        return (
            "This language supports the default wasm32-wasip1 target and separately qualified "
            "wasm64-wasip1. Both use one thread without Wasm EH. The wide target uses Uwvm's "
            "Preview 1 memory64 extension. Run `xmake f -a wasm64` followed by `xmake`; "
            "see the [memory64 guide](../../MEMORY64.md) for configuration and evidence. "
        )
    if chinese:
        return "本语言验收目标是 wasm32-wasip1、单线程、无 Wasm EH；memory64 明确拒绝。"
    return (
        "This language targets wasm32-wasip1, single-threaded, without Wasm EH. "
        "Unqualified memory64 is explicitly refused. "
    )


def manual(language, chinese, publication):
    """@brief Describe one admitted route using the current publication's pins.

    @param language Exact admitted source-language identifier.
    @param chinese Select Chinese explanatory prose with unchanged API spellings.
    @param publication Validated current language admission and build-version data.
    @return Complete Markdown manual for both genuine ROS backend families.
    @details The generator writes no placeholder manual for an excluded route.
    """
    if language not in IMPLEMENTED:
        raise ValueError("No published Unitree manual for excluded route " + language)
    c = chinese
    lines = [
        f"# Unitree {language}",
        "",
        "## " + ("真实源语言与工具" if c else "Genuine source language and tools"),
        "",
        publication["build_versions"][language] + "; " + TOOL_PROFILES[language] + ".",
        "",
        (
            (
                "configure/build 不依赖 uwvm2-ros、gateway、ROS 安装或机器人。在已验收的 Linux x86_64 构建主机上，只需安装 Xmake；"
                "SDK 自带经过 SHA-256 固定的离线工具包，由 Xmake 解包和验证，无需预装语言编译器或解释器。产物只有一个 .wasm。"
            )
            if c
            else (
                "Configure/build require no uwvm2-ros, gateway, ROS installation, or robot. On the qualified "
                "Linux x86_64 host, Xmake restores the exact compiler and native library closure from the "
                "SDK's checksum-pinned offline bundles. No language tool needs to be installed beforehand. "
                "The application is never interpreted on the host; its sole output artifact is one .wasm command."
            )
        ),
        "",
        "## " + ("三个真实 ROS 2 例子" if c else "Three genuine ROS 2 examples"),
        "",
        "| "
        + (
            "例子 | 真实原生类型与主题 | 保留内容 |"
            if c
            else "Example | Actual native type and topic | Preserved data |"
        ),
        "| --- | --- | --- |",
        "| motion_state | unitree_go/msg/SportModeState; /sportmodestate or /lf/sportmodestate | "
        + (
            "全部 stamp、error、IMU、模式、步态、里程计、足端状态"
            if c
            else "All stamp, error, IMU, mode, gait, odometry, and foot-state fields"
        )
        + " |",
        "| low_state | unitree_go/msg/LowState; /lowstate or /lf/lowstate | "
        + (
            "全部 20 个 motor、BMS、力、遥控、温度、电源、保留与 CRC 字段"
            if c
            else "All 20 motors, BMS, forces, remote, temperature, power, reserve, and CRC fields"
        )
        + " |",
        "| wireless_controller | unitree_go/msg/WirelessController; /wirelesscontroller | "
        + ("四个完整浮点轴与完整 keys 位掩码" if c else "All four original float axes and the complete keys bitmask")
        + " |",
        "",
        (
            "部署选择实际主题，例子只接收显式 alias 参数。测试主题是隔离的 /unitree_sdk_fixture/*，没有连接机器人。"
            if c
            else (
                "Deployment chooses the actual topic. Each example receives only an explicit alias argument. "
                "Tests use isolated /unitree_sdk_fixture/* topics with no robot connection."
            )
        ),
        "",
        "## " + ("原生 ROS 1 独立源程序" if c else "Independent genuine ROS 1 source programs"),
        "",
        (
            (
                "ros1/motion_state 使用 unitree_legged_msgs/HighState；ros1/low_state 使用 "
                "unitree_legged_msgs/LowState；ros1/motor_state 使用 unitree_legged_msgs/MotorState。真实主题依实际驱动或 "
                "Gazebo controller 命名空间选择，例如 /high_state、/low_state 及关节 controller 的 state。不得把 ROS 2 或 DDS "
                "channel 改名当成 ROS 1。当前 ROS 1 例子全部通过实际 Noetic、生产 Gateway 与 uwvm2-ros 的完整原生消息验收。"
            )
            if c
            else (
                "ros1/motion_state uses unitree_legged_msgs/HighState; ros1/low_state uses "
                "unitree_legged_msgs/LowState; ros1/motor_state uses unitree_legged_msgs/MotorState. Actual "
                "topics follow the real driver or Gazebo controller namespace, including /high_state, "
                "/low_state, and a joint controller state topic. ROS 2 or vendor DDS channels are never renamed "
                "into ROS 1. All ROS 1 examples passed real Noetic, the production Gateway, and uwvm2-ros "
                "with an independent complete native message oracle."
            )
        ),
        "",
        "## " + ("公开 API 与完整值" if c else "Public API and complete values"),
        "",
        *api_reference(language, c),
        (
            (
                "C/C++/Objective-C/C FFI 的 context、alias、输出对象为同步借用，全部 storage 必须互不重叠并保持有效。C 输出只有 "
                "response_present 为真才可读取。C++ Outcome<T> 拥有完整 inline record 与 facts。Go/TinyGo Outcome[T]、Rust "
                "Outcome<T>、AS Observation<T> 拥有完整值和 wire；必须检查 ResponsePresent、Some 或非 null。"
            )
            if c
            else (
                "C/C++/Objective-C/C FFI borrow context, alias, and output synchronously; all storage must "
                "remain valid and disjoint. Read C output only when response_present is true. C++ Outcome<T> "
                "owns the complete inline record and facts. Go/TinyGo Outcome[T], Rust Outcome<T>, and AS "
                "Observation<T> own complete values and wire bytes; check ResponsePresent, Some, or nonnull "
                "before reading them."
            )
        ),
        "",
        (
            (
                "每次打开一个已有 exact-type alias，订阅一次，最多 250 次实际 poll；仅 11 idle 允许下次 poll。例子在 idle 后通过真实 WASI 单调时钟等待 "
                "20 ms，最多 249 次。正常获得的 owner 无论成功失败均只 close 一次；primary 与 cleanup 独立保留，优先返回 "
                "primary。trap/panic/内存分配失败不承诺正常清理，宿主仍须回收 Instance。"
            )
            if c
            else (
                "Each operation opens one existing exact-type alias, subscribes once, and performs at most 250 "
                "actual polls; only idle 11 permits another poll. Examples wait 20 ms through the actual WASI "
                "monotonic clock after idle, at most 249 times. Every normally acquired owner is closed once on "
                "success or failure. Primary and cleanup remain independent, with primary taking precedence. "
                "Traps, panics, and allocation failure do not promise ordinary cleanup; the host still retires "
                "the instance."
            )
        ),
        "",
        "| " + ("状态 | 含义与处理 |" if c else "Status | Meaning and handling |"),
        "| --- | --- |",
        "| 0 | "
        + (
            "完整操作及正常清理成功；仍检查存在标记"
            if c
            else "Complete operation and ordinary cleanup succeeded; still inspect presence flags"
        )
        + " |",
        "| 11 | "
        + (
            "无消息或配额暂不可用；仅在有限预算内等待下一次 poll"
            if c
            else "Idle or temporary quota refusal; wait only within the finite poll budget"
        )
        + " |",
        "| 13 | "
        + ("没有精确授权，不自动创建权限" if c else "Missing exact authority; never create an implicit grant")
        + " |",
        "| 22 / 90 | "
        + (
            "无效完整数据或超出容量；不截断、不自动 resize/replay"
            if c
            else "Invalid complete data or capacity failure; never truncate or automatically resize/replay"
        )
        + " |",
        "| 9 / 95 / 107 / 110 / 125 | "
        + (
            "保留失效 owner、不支持、断连、未知超时或撤销的原始数值"
            if c
            else "Preserve the original stale-owner, unsupported, disconnect, uncertain-timeout, or revoke value"
        )
        + " |",
        "",
        "## Xmake",
        "",
        "```lua",
        'target("unitree-observer")',
        f'    set_language("{language}")',
        '    set_ros_platform("unitree")',
        '    set_ros2_version("jazzy")',
        '    set_plat(get_config("plat") or "wasm-wasip1")',
        '    set_arch(get_config("arch") or "wasm32")',
        '    add_files("'
        + (
            "main.ts"
            if language == "as"
            else (
                "main.cpp"
                if language == "cpp"
                else (
                    "main.m"
                    if language == "objectc"
                    else ("main.rs" if language == "rs" else "main.go" if language in ("go", "tinygo") else "main.c")
                )
            )
        )
        + '")',
        "target_end()",
        "```",
        "",
        (
            (
                "在对应例子目录执行 xmake；run 使用 UWVM_UNITREE_RUN_CONFIG 或 --ros-run-config 指向可信部署 JSON。部署提供实际 uwvm2-ros "
                "与生产 gateway、精确 native identity 与 canonical codec identity、主题、QoS、队列/速率配额及 WASI clock/random "
                "权限。运行还需要 Python 3 进程启动器，可通过 `UWVM_ROS_PYTHON` 指定其可执行文件。"
                "该启动器管理 uwvm2-ros 与 gateway 进程；应用由 uwvm2-ros 执行 Wasm。run 不安装语言编译器，不解释源程序。"
            )
            if c
            else (
                "Run xmake in the example directory. For run, UWVM_UNITREE_RUN_CONFIG or --ros-run-config "
                "selects trusted deployment JSON containing the actual uwvm2-ros and production gateway, exact "
                "native and canonical codec identities, real topic, QoS, queue/rate limits, and explicit WASI "
                "clock/random grants. Running also requires Python 3 as a process launcher; "
                "`UWVM_ROS_PYTHON` may select its executable. The launcher manages uwvm2-ros and gateway "
                "processes; uwvm2-ros executes the compiled Wasm application. Run installs no language "
                "compiler and never interprets source."
            )
        ),
        "",
        "## " + ("资格与边界" if c else "Qualification and boundaries"),
        "",
        (
            (
                target_scope(language, True, publication) + "真实原生 transport 证据来自 Noetic 与 Jazzy "
                "fixture，本语言每个后端的 3 个示例均有逐产物记录；这不证明 Humble/Foxy/Melodic 或真实硬件。version selector 是明确的源/部署选择，必须为具体目标重新导出 native "
                "metadata 并绑定生产 runtime/gateway。CRC 字段完整保留，但这里不验证物理设备 CRC、移动安全或机器人控制完成。"
            )
            if c
            else (
                target_scope(language, False, publication)
                + "Noetic and Jazzy fixture receipts cover all three examples "
                "per backend with exact artifact identities. This does "
                "not automatically qualify Humble/Foxy/Melodic or physical hardware. A version selector "
                "chooses explicit source/deployment intent; independently export native metadata and bind the "
                "runtime/gateway for the concrete target. CRC fields are retained completely, but this API "
                "certifies neither device CRC correctness, motion safety, nor physical controller completion."
            )
        ),
        "",
        (
            (
                "完整 11 个 ROS 1 与 43 个 ROS 2 record 的字段和 byte bounds 见同语言目录层的 SCHEMA.md；当前发布信息见 "
                "share/platform/unitree/publication.json，当前逐产物验收见 share/platform/unitree/qualification.json；"
                "可移植历史基线摘要见 share/platform/unitree/historical-baseline.json。"
                "基线记录保留历史工具与原生 fixture 证据；本批发布的语言与工具版本以 publication.json 为准。"
            )
            if c
            else (
                "SCHEMA.md at the language-manual root lists all fields and byte bounds for 11 ROS 1 and 43 ROS "
                "2 records. Current publication details live in share/platform/unitree/publication.json; "
                "share/platform/unitree/qualification.json identifies every accepted current artifact. "
                "the portable historical baseline is summarized in share/platform/unitree/historical-baseline.json. The baseline "
                "preserves historical tools and native fixture evidence; publication.json defines the "
                "languages and tool versions admitted by this publication."
            )
        ),
        "",
    ]
    return "\n".join(lines)


def overview(publication, chinese):
    """@brief Describe the exact admitted inventory and separate build/run needs.

    @param publication Validated current admission and build-version metadata.
    @param chinese Select the Chinese overview and preserve API/path spellings.
    @return Complete overview linking only the existing admitted language manuals.
    @details The overview establishes no compiler or native transport result.
    """
    languages = publication["languages"]
    count = publication["example_count"]
    if chinese:
        lines = [
            "# Unitree SDK：已发布的语言与示例",
            "",
            f"本批发布 {len(languages)} 个源码入口（含 C FFI 桥接），每个入口提供 ROS 1 和 ROS 2 各 3 个独立示例，"
            f"共 {count} 个。其他语言路线不在本批发布范围内。",
            "",
            "进入任意示例目录直接运行 `xmake`。构建主机只需 Xmake 和完整 SDK 发行目录；当前工具包验收主机为 "
            "Linux x86_64。唯一应用产物位于 `build/*.wasm`。`xmake run` 另需 uwvm2-ros、原生 ROS、"
            "对应 Gateway、可信部署 JSON 和 Python 3 进程启动器。可通过 `UWVM_ROS_PYTHON` 指定启动器的可执行文件；"
            "应用由 uwvm2-ros 执行 Wasm。",
            "",
            "ROS 1：`motion_state`、`low_state`、`motor_state`。ROS 2：`motion_state`、`low_state`、"
            "`wireless_controller`。这些例子观察完整原生消息；尚未进行真实机器人控制验收。",
            "",
        ]
    else:
        lines = [
            "# Unitree SDK: admitted languages and examples",
            "",
            f"This publication admits {len(languages)} source routes, including the C FFI bridge. Each has three "
            f"independent ROS 1 and three ROS 2 examples: {count} commands. Other language routes remain "
            "outside this publication.",
            "",
            "Run `xmake` directly inside any example directory. Building needs only Xmake and the complete "
            "SDK distribution; the qualified compiler-tool host is Linux x86_64. The sole application output "
            "is `build/*.wasm`. `xmake run` separately requires uwvm2-ros, native ROS, its matching gateway, "
            "trusted deployment JSON, and a Python 3 process launcher. `UWVM_ROS_PYTHON` may select the "
            "launcher executable; uwvm2-ros executes the compiled Wasm application.",
            "",
            "ROS 1 examples are `motion_state`, `low_state`, and `motor_state`. ROS 2 examples are "
            "`motion_state`, `low_state`, and `wireless_controller`. They observe complete original native "
            "messages; physical robot control has not been qualified.",
            "",
        ]
    lines.extend(f"- [{language}](language/{language}/README.md)" for language in languages)
    lines.append("")
    lines.append(
        "[本批验收结果与范围](VALIDATION.md)" if chinese else "[Publication validation and scope](VALIDATION.md)"
    )
    if publication.get("additional_target_profiles", {}).get("wasm64-wasip1"):
        lines.extend(
            [
                "",
                (
                    "[C/C++ memory64 构建、运行与验收](MEMORY64.md)"
                    if chinese
                    else "[C/C++ memory64 build, run and qualification](MEMORY64.md)"
                ),
            ]
        )
    lines.append("")
    return "\n".join(lines)


def prepare(sdk):
    """@brief Generate only the current publication's existing bilingual manuals.

    @param sdk Installed SDK root with current admission metadata and bindings.
    @details Generation preserves all native fixture/source evidence and writes
    only the overviews, core language manuals per locale, schema guides, and
    this platform's shared README. No guest source or qualification is changed.
    """
    publication = load_publication(sdk)
    for locale in ("en_US", "zh_CN"):
        locale_root = sdk / f"document/platform/unitree/{locale}"
        write(locale_root / "README.md", overview(publication, locale == "zh_CN"))
        root = locale_root / "language"
        write(root / "SCHEMA.md", inventory(sdk, locale == "zh_CN"))
        for language in publication["languages"]:
            if language not in IMPLEMENTED:
                if not (root / language / "README.md").is_file():
                    raise ValueError("Missing reviewed language manual: " + language)
                continue
            write(
                root / language / "README.md",
                manual(language, locale == "zh_CN", publication),
            )
    write(
        sdk / "share/platform/unitree/README.md",
        f"""# Unitree native ROS SDK

This source revision preserves all 11 original ROS 1 `unitree_legged_msgs` messages and all 43 original ROS 2
`unitree_go`, `unitree_hg`, and `unitree_api` messages. No `.srv` or `.action` is invented. Unitree API
Request/Response is topic RPC; it is distinct from a ROS service and from the separate vendor DDS SDK.

This publication admits {len(publication["languages"])} genuine producer routes, with six own-language observation
examples each. The exact admitted languages are listed in `publication.json` and the bilingual manual index.

Read `document/platform/unitree/en_US/language` or `document/platform/unitree/zh_CN/language` for complete API,
ownership, error, build/run, and field contracts. Current admitted languages and exact build-tool pins are
defined by `share/platform/unitree/publication.json`. Current per-artifact qualification is retained in
`share/platform/unitree/qualification.json`. Original baseline qualification remains in
`share/platform/unitree/historical-baseline.json`; physical Unitree hardware remains untested.

The official source audit records every original path, commit, byte count, and SHA256. Original declarations
and licenses retain their exact upstream bytes. Maintained bindings, language facades and examples are
reviewed and formatted, with source inventories and independent build and runtime evidence.

The admitted examples have individual cold-build and native Noetic/Jazzy execution receipts.
Separate complete-type profiles retain independent native metadata for all 11 ROS 1 and 43 ROS 2 records.
Their cold native adapter checks are recorded separately from topic transport and physical hardware.
Every run requires an explicit native distribution matching the sourced ROS environment.
For ROS 1 the trusted deployment declares `backend: ros1` and `native_ros_distribution: noetic`.
Running also requires Python 3 as a process launcher; `UWVM_ROS_PYTHON` may select its executable.
The launcher manages uwvm2-ros and the gateway; uwvm2-ros executes the compiled Wasm application.

Official sources: [Unitree ROS 2][unitree-ros2] and [Unitree ROS 1 bridge/messages][unitree-ros1].

[unitree-ros2]: https://github.com/unitreerobotics/unitree_ros2/tree/668d1ec5a05d1c38d3306bdca7d59f2ba3581a88
[unitree-ros1]: https://github.com/unitreerobotics/unitree_ros_to_real/tree/b989870124913091fbe75e0dcfb047eb4ca00a09
""",
    )


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--sdk", type=Path, required=True)
    prepare(parser.parse_args().sdk.resolve(strict=True))
