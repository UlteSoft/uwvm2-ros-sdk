#!/usr/bin/env python3
"""@brief Maintain standalone Unitree interpreter and MoonBit Xmake declarations.

@details This source-maintenance template writes only the 36 existing Xmake
configuration files. It never changes guest-language source, packages an engine,
starts a compiler or creates a qualification. Ordinary application builds do not
invoke Python. Explicit architecture/platform requests remain visible to the
production provider, which must reject unsupported targets without substitution.
"""

import argparse
from pathlib import Path


LANGUAGES = {
    "py": "py",
    "js": "mjs",
    "lua": "lua",
    "ruby": "rb",
    "php": "php",
    "moonbit": "mbt",
}
SCENARIOS = {
    "ros1": ("low_state", "motion_state", "motor_state"),
    "ros2": ("low_state", "motion_state", "wireless_controller"),
}
BOOTSTRAP = """-- @file xmake.lua
-- @brief Build one genuine-language complete Unitree observation as a sole Wasm.
-- @details The public SDK dispatcher selects a real pinned compiler or guest VM.
-- Explicit architecture and platform requests are validated as requested;
-- unsupported selections cannot silently fall back to the defaults.
local sdk = os.getenv("UWVM_ROS_SDK_ROOT")
if not sdk then
    local candidate = path.absolute(os.scriptdir())
    while true do
        if os.isfile(path.join(candidate, "tools/xmake/ros.lua")) then
            sdk = candidate
            break
        end
        local parent = path.directory(candidate)
        if parent == candidate then
            error("Set UWVM_ROS_SDK_ROOT to the installed SDK root")
        end
        candidate = parent
    end
end
includes(path.join(sdk, "tools/xmake/ros.lua"))
set_policy("run.autobuild", false)
"""


def declaration(language, backend, scenario):
    """@brief Render the exact maintained configuration for one existing command.

    @param language Genuine admitted interpreter or MoonBit source identifier.
    @param backend Exact original ROS import family, ros1 or ros2.
    @param scenario Existing backend-specific typed observation entry.
    @return Complete standalone Xmake source with its final newline.
    @details The fallback applies only when no explicit selection exists.
    Keeping a requested unsupported target permits normal provider refusal.
    """
    extension = LANGUAGES[language]
    if scenario not in SCENARIOS[backend]:
        raise ValueError("Unknown original Unitree scenario")
    distribution = "noetic" if backend == "ros1" else "jazzy"
    return BOOTSTRAP + f"""target("unitree-{language}-{backend}-{scenario}")
set_language("{language}")
set_ros_platform("unitree")
{backend}_version("{distribution}")
set_plat(get_config("plat") or "wasm-wasip1")
set_arch(get_config("arch") or "wasm32")
set_ros_scenario("{scenario}")
add_files("main.{extension}")
target_end()
"""


def main():
    """@brief Update existing configuration files, or check their exact bytes.

    @details --check is read-only and fails on the first stale declaration.
    Missing examples are refused; no application or placeholder is generated.
    """
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--sdk", type=Path, required=True)
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()
    sdk = args.sdk.resolve(strict=True)
    for language, extension in LANGUAGES.items():
        for backend, scenarios in SCENARIOS.items():
            for scenario in scenarios:
                directory = sdk / "example/platform/unitree" / language / backend / scenario
                configuration = directory / "xmake.lua"
                if not configuration.is_file() or not (directory / ("main." + extension)).is_file():
                    raise ValueError("Install the complete existing source example: " + str(directory))
                expected = declaration(language, backend, scenario)
                if args.check:
                    if configuration.read_text() != expected:
                        raise ValueError("Stale maintained Xmake declaration: " + str(configuration))
                else:
                    configuration.write_text(expected)


if __name__ == "__main__":
    main()
