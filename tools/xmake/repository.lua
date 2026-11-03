-- SPDX-License-Identifier: Apache-2.0
-- Select an installed child through the PWD available to Xmake's project DSL.
-- Native cwd/error APIs belong to the rule callback domain, never this DSL.
local script_sdk_root = path.directory(path.directory(path.absolute(os.scriptdir())))
local configured_sdk = os.getenv("UWVM_ROS_SDK_ROOT")
local sdk_root = script_sdk_root
local installation_error
if configured_sdk then
    if not path.is_absolute(configured_sdk)
        or not os.isfile(path.join(configured_sdk, "tools/xmake/ros.lua")) then
        installation_error = "Set UWVM_ROS_SDK_ROOT to an absolute installed SDK containing tools/xmake/ros.lua"
    else
        -- Xmake can discover an outer authoring checkout before an installed
        -- SDK nested under it. The explicit installed root owns child lookup.
        sdk_root = path.normalize(configured_sdk)
    end
end
local examples = path.normalize(path.join(sdk_root, "example"))
local selected_pwd = os.getenv("PWD")

rule("uwvm.public-example-cwd.v1")
    on_load(function(target)
        local original = os.workingdir and os.workingdir()
        assert(type(original) == "string" and path.is_absolute(original),
            "BLOCKED_SUPPORTED_XMAKE_ORIGINAL_WORKINGDIR_REQUIRED")
        local working = path.normalize(path.absolute(original))
        local inside = working:sub(1, #examples + 1) == examples .. "/"
        local selected_inside = type(selected_pwd) == "string" and path.is_absolute(selected_pwd)
            and path.normalize(selected_pwd):sub(1, #examples + 1) == examples .. "/"
        if inside or selected_inside then
            assert(inside and type(selected_pwd) == "string" and path.is_absolute(selected_pwd)
                and path.normalize(selected_pwd) == working,
                "BLOCKED_EXAMPLE_CWD_PWD_MISMATCH: original=" .. working
                    .. "; PWD=" .. tostring(selected_pwd))
            assert(os.isfile(path.join(working, "xmake.lua")),
                "BLOCKED_PUBLIC_EXAMPLE_DESCRIPTION_REQUIRED: " .. working)
            target:data_set("uwvm.repository-selection.v1", {
                original_workingdir = working, pwd = selected_pwd,
                sdk_root = sdk_root, selected_description = path.join(working, "xmake.lua")})
        end
    end)
rule_end()

function uwvm_ros_repository_entry()
    -- Project-wide inheritance covers the fallback header target as well:
    -- an absent/spoofed PWD inside a child may not silently build headers.
    add_rules("uwvm.public-example-cwd.v1")
    if installation_error then
        target("invalid-installed-sdk-root")
            set_kind("phony")
            on_load(function() raise(installation_error) end)
        target_end()
        return true
    end
    if type(selected_pwd) ~= "string" or not path.is_absolute(selected_pwd) then
        return false
    end
    local working = path.normalize(selected_pwd)
    if working:sub(1, #examples + 1) ~= examples .. "/" then
        return false
    end
    local description = path.join(working, "xmake.lua")
    if not os.isfile(description) then
        return false -- the native callback diagnoses the real missing description
    end
    set_project("uwvm-ros-sdk-command")
    set_policy("run.autobuild", false)
    includes(description)
    return true
end
