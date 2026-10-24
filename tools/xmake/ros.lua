-- SPDX-License-Identifier: Apache-2.0
-- @file ros.lua
-- @brief Declare one real source-language WebAssembly command.
-- @details Values belong to the current target. Providers describe native
-- schemas and deployment; shared language adapters own compiler and VM work.
-- Configuration and compilation never obtain runtime permissions.

-- Validation is deferred to script-domain callbacks: the description sandbox
-- intentionally does not expose Lua error()/assert(). Values remain target local.
local function check(condition, key, message)
    if not condition then set_values("ros.sdk.invalid." .. key, message) end
    return condition
end

local sdk_root = path.directory(path.directory(path.absolute(os.scriptdir())))
includes(path.join(sdk_root, "tools/xmake/targets.lua"))
set_policy("run.autobuild", false)

rule("ros.wasm.source")
    set_extensions(".c", ".cc", ".cpp", ".cxx", ".m", ".go", ".rs", ".ts", ".mts",
                   ".lua", ".zig", ".d", ".nim", ".odin", ".swift", ".hs",
                   ".cs", ".fs", ".vb", ".java", ".kt", ".js", ".mjs",
                   ".mbt", ".php", ".py", ".r", ".R", ".rb", ".wat",
                   ".f", ".F", ".for", ".FOR", ".ftn", ".f90", ".F90",
                   ".f95", ".F95", ".f03", ".F03", ".f08", ".F08", ".f18", ".F18")
rule_end()

rule("ros.wasm.provider")
    on_load(function(target)
        import("dispatch", {rootdir = path.join(sdk_root, "tools/xmake"), anonymous = true}).configure(target)
    end)
    after_load(function(target)
        import("dispatch", {rootdir = path.join(sdk_root, "tools/xmake"), anonymous = true}).dependencies(target)
    end)
    on_build(function(target)
        import("dispatch", {rootdir = path.join(sdk_root, "tools/xmake"), anonymous = true}).build(target)
    end)
    on_run(function(target)
        import("dispatch", {rootdir = path.join(sdk_root, "tools/xmake"), anonymous = true}).run(target)
    end)
rule_end()

-- @brief Select the genuine frontend or explicit C FFI route.
-- @param language Stable lowercase route identifier; providers validate support.
function set_language(language)
    if not check(type(language) == "string" and language:match("^[a-z][a-z0-9_]*$"),
                 "language", "set_language expects one lowercase SDK route identifier") then
        language = "invalid"
    end
    set_values("ros.sdk.language", language)
    add_rules("ros.wasm.source", {override = true})
end

-- @brief Select an installed provider through the same lifecycle for every vendor.
-- @param platform Exact provider directory identifier; no compiler runs here.
function set_ros_platform(platform)
    if not check(type(platform) == "string" and platform:match("^[a-z][a-z0-9_%-]*$"),
                 "platform", "set_ros_platform expects an installed platform identifier") then
        platform = "invalid"
    end
    set_values("ros.sdk.platform", platform)
    set_values("ros.sdk.root", sdk_root)
    add_includedirs(path.join(sdk_root, "include/platform"), path.join(sdk_root, "include"))
    set_toolchains("ros.wasm.command")
    add_rules("ros.wasm.provider")
end

-- @brief Select an exact provider-owned scenario; this grants no permissions.
-- @param scenario Nonempty provider-owned scenario identifier.
function set_ros_scenario(scenario)
    if not check(type(scenario) == "string" and scenario:match("^[a-z][a-z0-9_%-]*$"),
                 "scenario", "Select one provider scenario identifier") then
        scenario = "invalid"
    end
    set_values("ros.sdk.scenario", scenario)
end

-- @brief Select the ROS1 import family and an explicit native distribution.
-- @param distribution Native ROS distribution, validated by the provider schema.
function set_ros1_version(distribution)
    if not check(type(distribution) == "string" and distribution:match("^[a-z][a-z0-9_]*$"),
                 "distribution", "set_ros1_version expects one native distribution identifier") then
        distribution = "invalid"
    end
    set_values("ros.sdk.backend", "ros1")
    set_values("ros.sdk.distribution", distribution)
end

-- @brief Select the ROS2 import family and an explicit native distribution.
-- @param distribution Native ROS distribution, validated by the provider schema.
function set_ros2_version(distribution)
    if not check(type(distribution) == "string" and distribution:match("^[a-z][a-z0-9_]*$"),
                 "distribution", "set_ros2_version expects one native distribution identifier") then
        distribution = "invalid"
    end
    set_values("ros.sdk.backend", "ros2")
    set_values("ros.sdk.distribution", distribution)
end

-- @brief Supply vendor configuration checked against its installed schema.
-- @param values Map of version, model, transport, ABI and provider feature choices.
-- @details Unknown fields and undeclared choices are errors; data never adds a grant.
function set_ros_config(values)
    if not check(type(values) == "table", "options", "set_ros_config expects a configuration table") then values = {} end
    -- Xmake collects list elements for values() and unwraps a singleton list.
    -- Preserve the complete map as one element so named keys, including unknown
    -- keys that the provider must reject, survive description evaluation.
    set_values("ros.sdk.options", {values})
end

-- @brief Select an explicit target exception profile.
-- @param profile noeh or eh; the frontend must implement the requested profile.
function set_wasm_exceptions(profile)
    if not check(profile == "noeh" or profile == "eh", "exceptions", "Select noeh or eh explicitly") then profile = "invalid" end
    set_values("ros.sdk.exception_profile", profile)
end

-- @brief Select the application startup contract independently of language.
-- @param entry command for a normal main, or freestanding for an owned _start.
-- @details This declaration changes compiler startup flags only. Shared compiler
-- selection and explicit runtime permissions retain their existing ownership.
function set_wasm_entry(entry)
    if not check(entry == "command" or entry == "freestanding", "entry",
                 "Select command or freestanding startup") then
        entry = "invalid"
    end
    set_values("ros.sdk.entry", entry)
end

-- @brief Request named Wasm Core features without silently enabling host grants.
-- @param features Array of unique feature identifiers, validated by the adapter.
function set_wasm_features(features)
    if not check(type(features) == "table", "features", "set_wasm_features expects an array") then features = {} end
    -- Preserve empty, single-element and multi-element arrays as one value.
    -- The schema validator checks density, duplicates and feature availability.
    set_values("ros.sdk.features", {features})
end

-- @brief Select a manually prepared deployment file for the separate run action.
-- @param filename Trusted JSON path; contents are read only during xmake run.
function set_ros_run_config(filename)
    if not check(type(filename) == "string" and filename ~= "", "run_config", "Select a trusted deployment filename") then filename = "invalid" end
    set_values("ros.sdk.run_config", filename)
end

-- @brief Select the exact ABB source catalog through the provider schema.
-- @param version Exact catalog version, validated by the ABB provider.
function set_abb_version(version)
    if not check(type(version) == "string" and version ~= "", "version", "Select a nonempty catalog version") then version = "invalid" end
    set_values("ros.sdk.option.catalog", version)
end

-- @brief Select an Agibot source release independently of its native ROS distro.
-- @param version Exact upstream SDK release, checked against the chosen profile.
function set_agibot_version(version)
    if not check(type(version) == "string" and version:match("^%d+%.%d+%.%d+$"),
                 "version", "Select an explicit Agibot major.minor.patch version") then
        version = "invalid"
    end
    set_values("ros.sdk.agibot.version", version)
end

-- @brief Select the Agibot source variant within the declared release.
-- @param variant Exact upstream variant identifier, checked by the provider.
function set_agibot_variant(variant)
    if not check(type(variant) == "string" and variant:match("^[a-z][a-z0-9_]*$"),
                 "variant", "Select an explicit Agibot source variant") then
        variant = "invalid"
    end
    set_values("ros.sdk.agibot.variant", variant)
end
