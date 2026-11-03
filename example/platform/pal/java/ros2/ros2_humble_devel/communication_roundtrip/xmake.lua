-- SPDX-License-Identifier: Apache-2.0
-- Genuine Java source is compiled by the existing pinned TeaVM provider.
local sdk = os.getenv("UWVM_ROS_SDK_ROOT")
if not sdk then
    local cursor = path.absolute(os.scriptdir())
    while true do
        if os.isfile(path.join(cursor, "tools/xmake/ros.lua")) then
            sdk = cursor
            break
        end
        local parent = path.directory(cursor)
        if parent == cursor then break end
        cursor = parent
    end
end
if not sdk or not os.isfile(path.join(sdk, "tools/xmake/ros.lua")) then
    target("pal-java-service-roundtrip")
        set_kind("binary")
        on_load(function() raise("BLOCKED_SDK_INSTALLATION_REQUIRED") end)
    target_end()
    return
end
includes(path.join(sdk, "tools/xmake/ros.lua"))
includes(path.join(sdk, "tools/shared/xmake/simulation_example.lua"))
set_policy("run.autobuild", false)
target("pal-java-service-roundtrip")
    set_kind("binary")
    set_targetdir(path.join(os.scriptdir(), "build/artifacts"))
    set_language("java")
    set_ros_platform("pal")
    set_ros2_version("humble")
    set_ros_config({vendor_profile = "ros2_humble_devel"})
    set_ros_scenario("official_ros_communication_stage_a")
    set_plat("wasm-wasip1")
    set_arch("wasm32")
    set_wasm_exceptions("noeh")
    set_values("ros.sdk.main_class", "uwvm.pal.communication.ServiceRoundTrip")
    add_files("ServiceRoundTrip.java")
    uwvm_simulation_example({api_version = 1, sdk_root = sdk,
        manifest = "simulation.json", timeout_seconds = 180})
target_end()
