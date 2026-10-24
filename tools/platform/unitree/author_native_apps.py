#!/usr/bin/env python3
"""@brief Author typed Unitree APIs and independent genuine-language commands.

@details This maintenance action writes source and manuals only. Ordinary Xmake
builds use the already-authored files and never invoke this Python generator.
No guest, compiler, native ROS peer or qualification test is executed here.
"""

import argparse
import json
from pathlib import Path


LANGUAGES = {"zig": "zig", "d": "d", "nim": "nim", "odin": "odin", "swift": "swift", "haskell": "hs"}
SCENARIOS = {
    1: [
        ("motion_state", "unitree_legged_msgs/HighState", "MotionState"),
        ("low_state", "unitree_legged_msgs/LowState", "LowState"),
        ("motor_state", "unitree_legged_msgs/MotorState", "MotorState"),
    ],
    2: [
        ("motion_state", "unitree_go/msg/SportModeState", "MotionState"),
        ("low_state", "unitree_go/msg/LowState", "LowState"),
        ("wireless_controller", "unitree_go/msg/WirelessController", "WirelessController"),
    ],
}
BOOTSTRAP = """-- @file xmake.lua
-- @brief Build one genuine Unitree source command using the installed SDK.
-- @details Discover a relocated SDK without encoding its directory depth. Invalid SDK or unsupported
-- target selection raises an explicit configuration error before invoking a compiler. Successful builds
-- produce one standalone Wasm command and never open a ROS owner or connect to a physical robot.
-- Explicit architecture and platform requests are validated as requested;
-- unsupported selections cannot silently fall back to the defaults.
local sdk_root = os.getenv("UWVM_ROS_SDK_ROOT")
if not sdk_root then
    local candidate = path.absolute(os.scriptdir())
    while true do
        if os.isfile(path.join(candidate, "tools/xmake/ros.lua")) then
            sdk_root = candidate
            break
        end
        local parent = path.directory(candidate)
        if parent == candidate or parent == "" then
            error("Set UWVM_ROS_SDK_ROOT to the complete installed SDK")
        end
        candidate = parent
    end
end
includes(path.join(sdk_root, "tools/xmake/ros.lua"))
set_policy("run.autobuild", false)
"""


def write(sdk, relative, text):
    """@brief Write one owned UTF-8 maintenance product below this private SDK.

    @param sdk Private source SDK root.
    @param relative Exact public include, example, tools or manual path.
    @param text Complete authored source with its real language extension.
    """
    path = sdk / relative
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text.rstrip() + "\n")


def observer(language, backend, scenario, suffix, record):
    """@brief Render one exact original typed observation wrapper.

    @param language Actual admitted source language.
    @param backend Original ROS import/schema family, one or two.
    @param scenario Original named observation demonstration.
    @param suffix Public typed observer name suffix.
    @param record Complete source-pinned original record metadata.
    @return Real source-language function preserving every field and owner fact.
    """
    symbol = record["symbol"]
    maximum = record["maximum_wire_bytes"]
    minimum = record["minimum_wire_bytes"]
    brief = f"Observe every original {record['type']} field through one retained owner."
    if language == "zig":
        return f"""/// @brief {brief}
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn wait{suffix}(alias_bytes: []const u8, attempts: u32) core.Observation(records.{symbol}) {{
    return core.receive(records.{symbol}, alias_bytes, attempts);
}}
"""
    if language == "d":
        return f"""/// @brief {brief}
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation!{symbol} wait{suffix}(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{{
    return receive!{symbol}(aliasBytes, attempts);
}}
"""
    if language == "nim":
        return f"""proc wait{suffix}*(aliasBytes: openArray[byte]; attempts: uint32): Observation[{symbol}] =
    ## @brief {brief}
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[{symbol}](aliasBytes, {minimum}, {maximum}, attempts)
"""
    if language == "odin":
        return f"""// @brief {brief}
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_{scenario} :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.{symbol}) {{
    return core.receive(
        records.{symbol},
        alias_bytes,
        {maximum},
        records.decode_{symbol},
        records.encode_{symbol},
        attempts,
    )
}}
"""
    if language == "swift":
        return f"""    /// @brief {brief}
    /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    /// @param attempts Total finite poll budget in 1..250.
    /// @return Complete owned original record and independent operation/close facts.
    /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    public static func wait{suffix}(_ aliasBytes: [UInt8], _ attempts: UInt32)
        -> UnitreeObservation<{symbol}> {{
        return unitreeReceive(aliasBytes, {maximum}, attempts, {symbol}.decode, {{ $0.encode() }})
    }}
"""
    return f"""-- | @brief {brief}
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
wait{suffix} :: [Word8] -> Word32 -> IO (Observation R.{symbol})
wait{suffix} =
    receive
        R.decode{symbol}
        R.encode{symbol}
        {maximum}
"""


def api(sdk, language, backend, records):
    """@brief Author the three exact original typed observers for one ROS family.

    @param sdk Private source SDK root.
    @param language Genuine source language and namespace.
    @param backend Original ROS import/schema family, one or two.
    @param records Original complete source-pinned record map.
    """
    if language == "zig":
        prefix = f"""//! @brief Observe complete original Unitree ROS {backend} messages in genuine Zig.
//! @details All values own their bytes; successful acquisitions close exactly once.
const core = @import("unitree_core");
const records = @import("unitree_records");
pub const argumentCount = core.argumentCount;
pub const argument = core.argument;
pub const report = core.report;
"""
    elif language == "d":
        prefix = f"""/// @brief Observe complete original Unitree ROS {backend} messages in genuine D.
/// @details All values own their bytes; successful acquisitions close exactly once.
module unitree.d.ros{backend}.observation;
public import unitree.d.observation;
public import unitree.d.ros{backend}.records;
"""
    elif language == "nim":
        prefix = f"""## @brief Observe complete original Unitree ROS {backend} messages in genuine Nim.
## @details All values own their bytes; successful acquisitions close exactly once.
import unitree/nim/observation as core
import unitree/nim/ros{backend}/records
export core
"""
    elif language == "odin":
        prefix = f"""// @brief Observe complete original Unitree ROS {backend} messages in genuine Odin.
// @details All values own their bytes; successful acquisitions close exactly once.
package unitree
import core "unitree:odin"
import records "unitree:odin/ros{backend}"
"""
    elif language == "swift":
        prefix = f"""/// @brief Select only complete original Unitree ROS {backend} message observers.
/// @details This namespace creates no owner; each actual observation owns its lifecycle.
public enum UnitreeRos{backend} {{
"""
    else:
        prefix = f"""-- | @brief Observe complete original Unitree ROS {backend} messages in genuine Haskell.
-- @details All values own their bytes; successful acquisitions close exactly once.
module Unitree.Ros{backend}.Observation where
import Data.Word
import Unitree.Observation
import qualified Unitree.Ros{backend}.Records as R
"""
    body = prefix + "\n"
    for scenario, identity, suffix in SCENARIOS[backend]:
        body += observer(language, backend, scenario, suffix, records[identity]) + "\n"
    if language == "swift":
        body += "}\n"
    relative = f"include/platform/unitree/{language}/ros{backend}/observation.{LANGUAGES[language]}"
    if language == "swift":
        relative = f"include/platform/unitree/swift/ros{backend}/Observation.swift"
    elif language == "haskell":
        relative = f"include/platform/unitree/haskell/Unitree/Ros{backend}/Observation.hs"
    elif language == "odin":
        relative = f"include/platform/unitree/odin/ros{backend}/observation/observation.odin"
    write(sdk, relative, body)


def entry(language, backend, suffix, scenario):
    """@brief Render the actual source-language command entry and typed call.

    @param language Actual compiler input language.
    @param backend Exact original ROS import/schema family.
    @param suffix Exact public typed observer suffix.
    @param scenario Independent original observation scenario.
    @return Complete genuine entry source; no constant record or host substitute.
    """
    brief = f"Observe one complete original ROS {backend} {scenario} native message."
    if language == "zig":
        return f"""//! @file main.zig
//! @brief {brief}
//! @details One explicit alias is required; the real Zig observer closes before stdout.
const unitree = @import("unitree");
/// @brief Enter the genuine compiled Zig command and preserve its full numeric status.
/// @details Read exactly one strict UTF-8 alias from the original WASI argument vector.
/// Invalid argument count returns 22 before acquisition. Normal observations close once before stdout.
/// @return Zero after complete decoding, encoding and successful close; otherwise preserve the first
/// primary, independent close or stdout error. Fatal traps cannot promise ordinary cleanup.
export fn nl_entry() u32 {{
    if (unitree.argumentCount() != 2) {{
        return 22;
    }}
    const value = unitree.wait{suffix}(unitree.argument(1), 250);
    return unitree.report(&value);
}}
"""
    if language == "d":
        return f"""/// @file main.d
/// @brief {brief}
/// @details One explicit alias is required; the real D observer closes before stdout.
module unitree_example;
import api = unitree.d.ros{backend}.observation;
/// @brief Enter the genuine compiled D command and preserve its full numeric status.
/// @details Read exactly one strict UTF-8 alias from the original WASI argument vector.
/// Invalid argument count returns 22 before acquisition. Normal observations close once before stdout.
/// @return Zero after complete decoding, encoding and successful close; otherwise preserve the first
/// primary, independent close or stdout error. Fatal traps cannot promise ordinary cleanup.
extern(C) uint nl_entry() @nogc nothrow
{{
    if (api.argumentCount() != 2)
    {{
        return 22;
    }}
    auto value = api.wait{suffix}(api.argument(1), 250);
    return api.report(value);
}}
"""
    if language == "nim":
        return f"""## @file main.nim
## @brief {brief}
## @details One explicit alias is required; the real Nim observer closes before stdout.
import unitree/nim/ros{backend}/observation
proc nlEntry(): uint32 {{.exportc: "nl_entry", cdecl.}} =
    ## @brief Enter the genuine compiled Nim command with its original numeric status.
    ## @details Read exactly one strict UTF-8 alias from the original WASI argument vector.
    ## Invalid argument count returns 22 before acquisition. Normal observations close once before stdout.
    ## @return Zero after complete decoding, encoding and successful close; otherwise preserve the first
    ## primary, independent close or stdout error. Fatal traps cannot promise ordinary cleanup.
    if argumentCount() != 2:
        return 22
    var value = wait{suffix}(argument(1), 250)
    report(value)
"""
    if language == "odin":
        return f"""// @file main.odin
// @brief {brief}
// @details One explicit alias is required; the real Odin observer closes before stdout.
package main
import core "unitree:odin"
import unitree "unitree:odin/ros{backend}/observation"
// @brief Enter the genuine compiled Odin command with its original numeric status.
// @details Read exactly one strict UTF-8 alias from the original WASI argument vector.
// Invalid argument count returns 22 before acquisition. Normal observations close once before stdout.
// @return Zero after complete decoding, encoding and successful close; otherwise preserve the first
// primary, independent close or stdout error. Fatal traps cannot promise ordinary cleanup.
@(export, link_name="nl_entry")
entry :: proc "c"() -> u32 {{
    if core.argument_count() != 2 {{
        return 22
    }}
    value := unitree.wait_{scenario}(core.argument(1), 250)
    return core.report(&value)
}}
"""
    if language == "swift":
        return f"""/// @file main.swift
/// @brief {brief}
/// @details One explicit alias is required; the real Swift observer closes before stdout.

/// @brief Enter the genuine compiled Swift command with its original numeric status.
/// @details Read exactly one strict UTF-8 alias from the original WASI argument vector.
/// Invalid argument count returns 22 before acquisition. Normal observations close once before stdout.
/// @return Zero after complete decoding, encoding and successful close; otherwise preserve the first
/// primary, independent close or stdout error. Fatal traps cannot promise ordinary cleanup.
@_cdecl("nl_entry")
public func unitreeEntry() -> UInt32 {{
    if unitreeArgumentCount() != 2 {{
        return 22
    }}
    let value = UnitreeRos{backend}.wait{suffix}(unitreeArgument(1), 250)
    return unitreeReport(value)
}}
"""
    return f"""-- | @file main.hs
-- @brief {brief}
-- @details One explicit alias is required; the real Haskell observer closes before stdout.
module Main where
import Unitree.Observation (command)
import qualified Unitree.Ros{backend}.Observation as Unitree
-- | @brief Enter the genuine Haskell Wasm command with the complete typed observer.
-- @details Read exactly one strict UTF-8 alias from the original WASI argument vector.
-- The observer closes once before stdout; invalid argument count exits 22 before acquisition.
-- @return Normal unit completion exits zero; primary, close or stdout errors exit with their original
-- status clamped to 125 only at the process boundary. Fatal runtime failures cannot promise cleanup.
main :: IO ()
main = command Unitree.wait{suffix}
"""


def main():
    """@brief Write typed APIs and all thirty-six independent original source commands."""
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--sdk", type=Path, required=True)
    args = parser.parse_args()
    sdk = args.sdk.resolve(strict=True)
    report = json.loads((sdk / "share/platform/unitree/native-source-records.json").read_text())
    for family in report["families"]:
        backend = family["backend"]
        records = {record["type"]: record for record in family["records"]}
        for language, extension in LANGUAGES.items():
            api(sdk, language, backend, records)
            for scenario, identity, suffix in SCENARIOS[backend]:
                relative = f"example/platform/unitree/{language}/ros{backend}/{scenario}"
                write(sdk, relative + "/main." + extension, entry(language, backend, suffix, scenario))
                distro = "noetic" if backend == 1 else "jazzy"
                target = f"unitree-{language}-ros{backend}-{scenario}"
                description = (
                    BOOTSTRAP
                    + f"""
-- @brief Compile only the declared genuine source into one standalone Wasm command.
target("{target}")
    set_language("{language}")
    set_ros_platform("unitree")
    ros{backend}_version("{distro}")
    set_plat(get_config("plat") or "wasm-wasip1")
    set_arch(get_config("arch") or "wasm32")
    add_files("main.{extension}", {{rule = "ros.wasm.source"}})
target_end()
"""
                )
                write(sdk, relative + "/xmake.lua", description)
    print("Authored six genuine native-language APIs and thirty-six independent Unitree commands")


if __name__ == "__main__":
    main()
