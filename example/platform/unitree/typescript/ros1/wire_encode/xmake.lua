-- SPDX-License-Identifier: Apache-2.0
-- @file xmake.lua
-- @brief Build the Unitree ros1 wire_encode TypeScript example.
-- @details The shared TypeScript 5.9.3 frontend checks the complete source graph.
-- Its ECMAScript output is embedded in the SDK's existing QuickJS Wasm engine.
-- The only deployment artifact is build/main.wasm. Compilation starts no ROS
-- processes and grants no runtime permissions; deployment.json is caller-owned.

-- @brief Locate an installed SDK without relative parent-directory imports.
local root = os.getenv("UWVM_ROS_SDK_ROOT")
if not root or not os.isfile(path.join(root, "tools/xmake/ros.lua")) then
    target("sdk-installation-required")
        set_kind("phony")
        on_load(function ()
            raise("Set UWVM_ROS_SDK_ROOT to the installed SDK")
        end)
    target_end()
    return
end

includes(path.join(root, "tools/xmake/ros.lua"))

-- @brief Require an explicit build before running an already reviewed artifact.
set_policy("run.autobuild", false)

target("main")
    set_kind("binary")

    -- @brief Select the shared frontend and the Unitree backend contract.
    set_language("typescript")
    set_ros_platform("unitree")
    set_ros1_version("noetic")
    set_ros_scenario("wire_encode")

    -- @brief Preserve the caller's wasm32/wasm64 selection and explicit WASI ABI.
    -- @details Configure with xmake f -p wasm-wasip1 -a wasm64 to use memory64.
    -- This command engine uses the noeh profile for both address widths.
    set_plat("wasm-wasip1")
    set_arch(get_config("arch") or "wasm32")
    set_wasm_exceptions("noeh")

    -- @brief Resolve public Unitree imports through the installed SDK provider.
    add_files("main.ts")
    set_targetdir("build")
target_end()
