-- @file xmake.lua
-- @brief Build the complete original Franka RPC client as one Wasm application.
-- @details Compilation uses the common LLVM 23 toolchain and selected WASI ABI.
-- Native execution separately requires an installed runtime and a manual policy.

-- @brief Locate the installed SDK without parent-depth imports.
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

-- Keep native deployment independent of compiler installation and cache state.
set_policy("run.autobuild", false)

target("main")
set_kind("binary")
set_language("zig")
set_ros_platform("flexiv")
set_ros2_version("jazzy")
set_values("ros.vendor.profile", "ros2_jazzy_v2_2")
-- Respect Xmake -a wasm32 or -a wasm64; the default is a real wasm32 build.
set_arch(get_config("arch") or "wasm32")
set_plat("wasm-wasip1")
-- Select the corresponding entry in the manually supplied deployment JSON.
set_ros_scenario("call_native_grasp")
add_files("main.zig")
set_targetdir("build")
target_end()
