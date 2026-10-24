-- @file xmake.lua
-- @brief Build a genuine Rust typed reactor and three ordinary C++ targets.
-- @details The public native adapter owns Rust object compilation and final links.
local root = os.getenv("UWVM_ROS_SDK_ROOT")
if not root or not path.is_absolute(root) or not os.isfile(path.join(root, "tools/xmake/ros.lua")) then
    target("sdk-installation-required")
        set_kind("phony")
        on_load(function()
            raise("Set UWVM_ROS_SDK_ROOT to the installed SDK")
        end)
    target_end()
    return
end
includes(path.join(root, "tools/xmake/ros.lua"))
set_policy("run.autobuild", false)

-- @brief Preserve the complete original FANUC binding for each actual C++ source.
local function cpp_target(kind)
    set_kind(kind)
    set_language("cpp")
    set_ros_platform("fanuc")
    set_ros2_version("jazzy")
    set_plat("wasm-wasip1")
    set_arch(get_config("arch") or "wasm32")
    set_ros_scenario("follow_joint_trajectory_graph")
    set_ros_config({catalog = "complete", transport = "native-ros"})
end
target("algorithm")
    set_kind("shared")
    set_language("rs")
    set_ros_platform("wasi")
    set_plat("wasm-wasip1")
    set_arch(get_config("arch") or "wasm32")
    add_files("algorithm.rs")
    -- @brief Consume the exact frontend-owned core archives using ordinary links.
    -- @details This only declares paths during configuration. The unchanged
    -- public native adapter restores/verifies the one pinned compiler at build.
    on_load(function(target)
        import("core.base.json")
        import("core.project.config")
        local manifest = json.loadfile(path.join(root, "share/toolchains/host/linux-x86_64/native-rs.json"))
        local home = os.getenv("XDG_CACHE_HOME")
            or path.join(assert(os.getenv("HOME"), "Set HOME or XDG_CACHE_HOME"), ".cache")
        local cache = config.get("ros-tool-cache") or path.join(home, "uwvm-ros/host-tools")
        local selected = {}
        local triple = (get_config("arch") or "wasm32") .. "-wasip1"
        local triple_pattern = triple:gsub("%-", "%%-")
        for _, file in ipairs(manifest.files) do
            if file.path:match("/" .. triple_pattern .. "/lib/libcore%-.*%.rlib$") then
                selected.core = file.path
            elseif file.path:match("/" .. triple_pattern .. "/lib/libcompiler_builtins%-.*%.rlib$") then
                selected.builtins = file.path
            end
        end
        if triple == "wasm32-wasip1" then
            assert(selected.core and selected.builtins, "Install the exact pinned Rust core and compiler-builtins inputs")
        end
        -- The public adapter must admit a real memory64 closure before it builds.
        if selected.core and selected.builtins then
            target:add("links", path.join(cache, manifest.sha256, selected.core))
            target:add("links", path.join(cache, manifest.sha256, selected.builtins))
        end
    end)

    for _, name in ipairs({"reset", "put", "check", "checks", "fields", "denial"}) do
        add_shflags("-Wl,--export=action_record_" .. name, {force = true})
    end
target_end()
target("io")
    cpp_target("shared")
    add_files("io.cpp")
target_end()
target("ros_comm")
    cpp_target("shared")
    add_files("ros_comm.cpp")
    add_deps("algorithm")
    add_shflags("-Wl,--allow-undefined", {force = true})
target_end()
target("main")
    cpp_target("binary")
    add_files("main.cpp")
    add_deps("io", "algorithm", "ros_comm")
    add_ldflags("-Wl,--allow-undefined", {force = true})
target_end()
