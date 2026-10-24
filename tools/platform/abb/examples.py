#!/usr/bin/env python3
"""@brief Materialize the reviewed standalone ABB observation applications.

@details Templates use the canonical public observation API and complete schema
encoders. Generation performs no compilation, network access, or ROS operation.
Each generated application owns one xmake entry point. Generate and format in
the local maintainer workspace, then synchronize complete folders to the Linux
compiler/runtime acceptance environment.
"""

import argparse
from pathlib import Path

SCENARIOS = {
    "read_speed": {
        "type": "srv_GetSpeedRatio_Response",
        "cpp": "SpeedRatio",
        "brief": "Read the complete RAPID motion speed ratio once.",
        "arguments": "ALIAS",
        "argc": 2,
        "call": "read_speed",
        "extra": "",
        "details": "The empty request changes no speed override. Controller refusal retains the full reply.",
    },
    "read_io": {
        "type": "srv_GetIOSignal_Response",
        "cpp": "IOSignal",
        "brief": "Read the complete value of one configured ABB IO signal.",
        "arguments": "ALIAS SIGNAL",
        "argc": 3,
        "call": "read_io",
        "extra": ", argv[2]",
        "details": "The strict UTF-8 signal name is validated before opening. No IO write is performed.",
    },
    "system_state": {
        "type": "msg_SystemState",
        "cpp": "SystemState",
        "brief": "Retain one subscription while awaiting a complete ABB SystemState sample.",
        "arguments": "ALIAS",
        "argc": 2,
        "call": "wait_system_state",
        "extra": ", 250, abb_example_wait",
        "details": "At most 250 polls share one owner, with 20 ms monotonic waits after idle. All original state fields survive.",
    },
}


SDK_BOOTSTRAP = """-- @brief Locate the installed SDK without parent-depth imports.
-- @details UWVM_ROS_SDK_ROOT selects the installed SDK. An explicit invalid
-- path is diagnosed rather than replaced by another installation.
local root = os.getenv("UWVM_ROS_SDK_ROOT")
local installation_error
if root then
    if not os.isfile(path.join(root, "tools/xmake/ros.lua")) then
        installation_error = "The configured SDK root does not contain tools/xmake/ros.lua"
    end
else
    local current = path.absolute(os.scriptdir())
    local visited = {}
    while current and not visited[current] do
        visited[current] = true
        if os.isfile(path.join(current, "tools/xmake/ros.lua")) then
            root = current
            break
        end
        local parent = path.directory(current)
        if parent == current or parent == "." or parent == "" then
            break
        end
        current = path.absolute(parent)
    end
    if not root then
        installation_error = "Set UWVM_ROS_SDK_ROOT to the installed SDK"
    end
end
if installation_error then
    -- Diagnostics run in Xmake's script domain, where raise is available.
    -- Returning here prevents declarations from using an unavailable SDK API.
    target("sdk-installation-required")
        set_kind("phony")
        on_load(function()
            raise(installation_error)
        end)
    target_end()
    return
end
includes(path.join(root, "tools/xmake/ros.lua"))

-- @brief Run existing Wasm without invoking the compiler.
set_policy("run.autobuild", false)"""


def write(path, body):
    """@brief Write one UTF-8 source template into its canonical destination.

    @param path Exact generated source path in the selected SDK.
    @param body Complete source text, including its terminating newline.
    @details Existing template outputs are replaced. Run only on an owned work
    copy; formatting and execution evidence remain separate from generation.
    """
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(body, encoding="utf-8")


def source(language, name, item):
    """@brief Render one complete C or C++ command without a hidden fixture.

    @param language Public source language, c or cpp.
    @param name Stable scenario directory name.
    @param item Reviewed exact service/message and argument contract.
    @return Complete independently compilable application source.
    @details The output serializes all response bytes as hexadecimal JSON data;
    transport, required-length, primary, and cleanup facts remain independent.
    """
    bridge_note = (
        " * These C examples validate the shared C FFI bridge only. They add\n"
        " * no Swift, Haskell, Nim, D, or Odin language qualification.\n"
        if language == "c_ffi_bridge"
        else ""
    )
    prefix = "roswasmc_bounded_2_abb_robot_msgs_" + item["type"]
    macro = prefix.upper() + "_MAX_WIRE_BYTES"
    include = {
        "cpp": "cpp/observation.hpp",
        "objectc": "objectc/observation.h",
        "c_ffi_bridge": "c_ffi_bridge/observation.h",
    }.get(language, "c/observation.h")
    suffix = {"objectc": "m", "c_ffi_bridge": "c"}.get(language, language)
    backend = (
        "abb_c_ffi_backend" if language == "c_ffi_bridge" else "roswasmc_ros2_backend"
    )
    layout = (
        "    if(!*ABBObservationLayout()) return 22;\n" if language == "objectc" else ""
    )
    operation = (
        f"    auto result = abb::{item['call']}(context, argv[1]{item['extra']});\n"
        "    abb_observation const& facts = result.facts;\n"
        "    auto const& response = result.value;\n"
        if language == "cpp"
        else f"    {prefix} response = {{0}};\n"
        f"    abb_observation facts = abb_{item['call']}(&context, argv[1]{item['extra']}, &response);\n"
    )
    return f"""/**
 * @file main.{suffix}
 * @brief {item['brief']}
 * @details {item['details']}
 * Build here with xmake. The selected WASI target produces one command
 * importing the real ROS 2 capability ABI. Run through a configured uwvm2 ROS
 * host with the exact selected native schema and an externally granted alias.
{bridge_note} * @see abb_observation, abb_example_output
 */
#include <abb/{include}>
#include <abb/support/observation_cli.h>

/**
 * @brief Execute the {name} observation and emit its complete result as JSON.
 * @param[in] argc Argument count; exactly {item['argc']} entries are required.
 * @param[in] argv Borrowed WASI arguments: application {item['arguments']}.
 * @return Original operation/cleanup/encoding/IO status, clamped to 125.
 * @details Invalid argument count returns 22 before acquisition. A complete
 * controller refusal keeps its response. Every normally acquired capability
 * is closed before stdout output. No retry or background executor is started.
 * @see abb_example_output
 */
int main(int argc, char** argv)
{{
    if(argc != {item['argc']})
    {{
        abb_observation refused = {'{}' if language == 'cpp' else '{0}'};
        refused.primary = 22;
        return abb_example_output(&refused, 0, 0, 0);
    }}
{layout}    roswasmc_context context = {{{backend}()}};
{operation}    unsigned char wire[{macro}];
    size_t size = 0;
    uint32_t encoded = 0;
    if(facts.response_present)
    {{
        encoded = {prefix}_encode(&response, wire, sizeof wire, &size);
    }}
    return abb_example_output(&facts, wire, size, encoded);
}}
"""


def write_xmake(folder, language, scenario):
    """@brief Declare one ordinary Xmake target using the public ROS SDK DSL.

    @param folder Application directory containing its real entry source.
    @param language Actual source language, or the explicitly named C FFI check.
    @param scenario Stable observation/deployment key used in the target name.
    @details Language and platform selection never compile or execute on the
    maintainer host. The selected provider resolves the actual Linux toolchain.
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
    write(
        folder / "xmake.lua",
        f"""-- @file xmake.lua
-- @brief Build the genuine {actual} ABB {scenario} application as one Wasm command.
-- @details Language and platform declarations select the real compiler adapter.
-- add_files names the actual application source; generated code is never used
-- as a substitute for this language. Configure --ros-run-config before xmake run.
{SDK_BOOTSTRAP}

target("abb-{language}-{scenario}")
    set_language("{actual}")
    set_ros_platform("abb")
    set_ros2_version("jazzy")
    set_abb_version("complete")
    set_ros_scenario("{scenario}")
    -- @brief Select a WASI Preview 1 command with 32-bit linear-memory pointers.
    -- @details These Uwvm2-style settings resolve to compiler target wasm32-wasip1.
    set_plat("wasm-wasip1")
    set_arch(get_config("arch") or "wasm32")
    add_files("main.{extension}")
target_end()
""",
    )


def materialize(sdk):
    """@brief Generate each selected application's source and standalone xmake file.

    @param sdk Existing canonical SDK directory containing include/platform/abb.
    @details Directory order is stable. No origin source or repository test is a
    build dependency. The common xmake helper selects the genuine compiler.
    """
    for language in ("c", "cpp", "objectc", "c_ffi_bridge"):
        for name, item in SCENARIOS.items():
            folder = sdk / "example/platform/abb" / language / name
            filename = "main." + {"objectc": "m", "c_ffi_bridge": "c"}.get(
                language, language
            )
            write(folder / filename, source(language, name, item))
            write_xmake(folder, language, name)
    native_sources(sdk)
    assemblyscript_sources(sdk)


def assemblyscript_sources(sdk):
    """@brief Materialize three genuine AssemblyScript WASI command projects.

    @param sdk Local canonical SDK work copy, modified before Linux synchronization.
    @details Each command reads WASI arguments and invokes the typed public ABB
    observation module. All result fields and canonical response bytes survive.
    """
    functions = {
        "read_speed": "readSpeed",
        "read_io": "readIO",
        "system_state": "waitSystemState",
    }
    for name, item in SCENARIOS.items():
        folder = sdk / "example/platform/abb/as" / name
        function = functions[name]
        call = (
            function
            + "(new NativeApi(), input.values[1]"
            + (
                ", input.values[2]"
                if name == "read_io"
                else ", 250, pauseForSample" if name == "system_state" else ""
            )
            + ")"
        )
        write(
            folder / "main.ts",
            f"""/**
 * @file main.ts
 * @brief {item['brief']}
 * @details {item['details']}
 * Build here with xmake and execute the emitted WASI command through a ROS 2
 * host granting the exact existing alias. No host JavaScript emulation is used.
 * @see {function}
 */
import {{ NativeApi }} from 'ros/as/ros2/roswasm';
import {{ {function} }} from 'abb/as/observation';
import {{ readArguments, outputObservation, proc_exit, pauseForSample }} from 'abb/as/command_io';

/**
 * @brief Execute one {name} observation with complete result reporting.
 * @details Usage: application {item['arguments']}. Exactly {item['argc']} arguments
 * are required including the program name. Input refusal returns 22 before any
 * ROS operation; otherwise checked cleanup precedes stdout and process exit.
 * The state command waits only between idle polls. Service requests are never replayed.
 * @see readArguments, outputObservation
 */
export function _start(): void {{
    const input = readArguments();
    if(input.status || input.values.length != {item['argc']}) {{
        proc_exit(22);
        return;
    }}
    const result = {call};
    proc_exit(outputObservation(result));
}}
""",
        )
        write_xmake(folder, "as", name)


def native_sources(sdk):
    """@brief Write complete official-Go and Rust commands with offline manifests.

    @param sdk Existing canonical SDK work copy.
    @details Each command uses its genuine public typed observation module.
    The build layer maps public package identities to absolute installed paths.
    No generated source is claimed compiled until the acceptance suite runs.
    """
    go_functions = {
        "read_speed": "ReadSpeed",
        "read_io": "ReadIO",
        "system_state": "WaitSystemState",
    }
    for language in ("go", "rs"):
        for name, item in SCENARIOS.items():
            folder = sdk / "example/platform/abb" / language / name
            write_xmake(folder, language, name)
            if language == "go":
                call = (
                    f"abb.{go_functions[name]}(os.Args[1]"
                    + (
                        ", os.Args[2]"
                        if name == "read_io"
                        else (
                            ", 250, func() uint32 { time.Sleep(20 * time.Millisecond); return 0 }"
                            if name == "system_state"
                            else ""
                        )
                    )
                    + ")"
                )
                write(
                    folder / "main.go",
                    f"""// Package main implements the standalone ABB {name} command.
// @brief {item['brief']}
// @details {item['details']}
// Uses real wasip1/wasm imports through the official-Go SDK. The complete
// canonical reply is emitted as wire_hex beside independent error observations.
// @see uwvm2.local/abb-observation
package main

import (
    "encoding/hex"
    "encoding/json"
    "os"
{'    "time"' if name == "system_state" else ""}

    abb "uwvm2.local/abb-observation"
)

// main performs exactly one requested observation and emits its complete facts.
// @brief Read command arguments, call the real SDK, and write one JSON line.
// @details Usage: application {item['arguments']}. Invalid argument count exits
// 22 before any ROS call. The original operation status precedes close and
// stdout failure; process status is clamped to 125. No retry or goroutine starts.
// @see abb.Outcome.Status
func main() {{
    if len(os.Args) != {item['argc']} {{
        os.Exit(22)
    }}
    result := {call}
    requiredPresent := result.RPC.HasRequired || (result.RPCPresent && result.RPCStatus == 0)
    required := result.RPC.Required
    if result.RPCPresent && result.RPCStatus == 0 {{
        required = uint64(len(result.RPC.Data))
    }}
    report := map[string]any{{
        "primary": result.Primary,
        "cleanup": result.Cleanup,
        "cleanup_present": result.CleanupPresent,
        "response_present": result.ResponsePresent,
        "rpc_present": result.RPCPresent,
        "rpc_status": result.RPCStatus,
        "required_present": requiredPresent,
        "required": required,
        "encoding": 0,
        "wire_hex": hex.EncodeToString(result.Wire),
    }}
    status := result.Status()
    if err := json.NewEncoder(os.Stdout).Encode(report); err != nil && status == 0 {{
        status = 5
    }}
    if status > 125 {{
        status = 125
    }}
    os.Exit(int(status))
}}
""",
                )
                write(
                    folder / "go.mod",
                    f"""module uwvm2.local/abb-go-{name}

go 1.24

require (
    uwvm2.local/abb-observation v0.0.0
    uwvm2.local/abb-records-go v0.0.0
    uwvm2.local/roswasmgo v0.0.0
)

// The Xmake provider maps all public modules through an absolute go.work.
// This source manifest remains independent from the installed SDK location.
""",
                )
            else:
                call = (
                    f"observation::{item['call']}(&arguments[1]"
                    + (
                        ", &arguments[2]"
                        if name == "read_io"
                        else (
                            ", 250, || { std::thread::sleep(std::time::Duration::from_millis(20)); 0 }"
                            if name == "system_state"
                            else ""
                        )
                    )
                    + ")"
                )
                write(
                    folder / "main.rs",
                    f"""//! @brief {item['brief']}
//! @details {item['details']}
//! This real wasm32-wasip1 command uses the complete typed ABB observation SDK.
//! The response remains whole, and normal cleanup precedes JSON stdout output.
//! @see observation::Outcome
#![allow(non_camel_case_types, non_snake_case, dead_code)]

use abb_observation as observation;
use std::fmt::Write as _;
use std::io::Write as _;

/// @brief Perform one command-selected observation and emit all original facts.
/// @details Usage: application {item['arguments']}. Invalid argument count exits
/// 22 before acquisition. The primary status precedes independent cleanup and
/// stdout failure. Process status is clamped to 125; no thread or retry starts.
/// @see observation::Outcome::status
fn main() {{
    let arguments: Vec<String> = std::env::args().collect();
    if arguments.len() != {item['argc']} {{ std::process::exit(22); }}
    let result = {call};
    let mut wire = String::with_capacity(result.wire.len() * 2);
    for byte in &result.wire {{ write!(&mut wire, "{{byte:02x}}").expect("String writer"); }}
    let report = format!(concat!("{{{{\\\"primary\\\":{{}},\\\"cleanup\\\":{{}},\\\"cleanup_present\\\":{{}},",
        "\\\"response_present\\\":{{}},\\\"rpc_present\\\":{{}},\\\"rpc_status\\\":{{}},",
        "\\\"required_present\\\":{{}},\\\"required\\\":{{}},\\\"encoding\\\":0,\\\"wire_hex\\\":\\\"{{}}\\\"}}}}\\n"),
        result.primary, result.cleanup.unwrap_or(0), u8::from(result.cleanup.is_some()),
        u8::from(result.value.is_some()), u8::from(result.rpc_present),
        result.rpc_error.as_ref().map_or(0, |error| error.code), u8::from(result.length.is_some()),
        result.length.unwrap_or(0), wire);
    let mut status = result.status();
    if std::io::stdout().lock().write_all(report.as_bytes()).is_err() && status == 0 {{ status = 5; }}
    std::process::exit(status.min(125) as i32);
}}
""",
                )
                write(
                    folder / "Cargo.toml",
                    f"""[package]
name = "abb-rs-{name}"
version = "0.1.0"
edition = "2021"
publish = false

[[bin]]
name = "abb-rs-{name}"
path = "main.rs"

[dependencies]
# The real SDK imports only the explicitly selected ROS 2 namespace.
abb_observation = "0.1.0"

[profile.release]
panic = "abort"
""",
                )
                write(
                    folder / "Cargo.lock",
                    f"""# Local path-only lockfile. Offline builds never fetch a registry dependency.
version = 4

[[package]]
name = "abb-rs-{name}"
version = "0.1.0"
dependencies = ["abb_observation"]

[[package]]
name = "abb_observation"
version = "0.1.0"
dependencies = ["roswasm"]

[[package]]
name = "roswasm"
version = "0.1.0"
""",
                )


def main():
    """@brief Select the local SDK work copy and materialize reviewed source templates.

    @return Zero after source generation; this is never a test-pass result.
    @details This source-only entry requires an existing canonical ABB SDK root.
    """
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--sdk", type=Path, required=True)
    arguments = parser.parse_args()
    sdk = arguments.sdk.resolve(strict=True)
    if not (sdk / "include/platform/abb").is_dir():
        parser.error("Use the canonical ABB SDK work copy")
    materialize(sdk)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
