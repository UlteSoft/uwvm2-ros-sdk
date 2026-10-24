-- @file xmake.lua
-- @brief Build the real cpp producer and c consumer.
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

-- Run existing artifacts; compilation remains an explicit action.
set_policy("run.autobuild", false)

-- @brief Preserve ordinary dependency kinds and exact target width.
local requested_arch = get_config("arch") or "wasm32"
-- @brief Build the complete codec as an ordinary static dependency.
-- @details The public provider selects one target width and the pinned Humble
-- catalog. Library construction grants no native ROS permissions.
target("record_codec")
set_kind("static")
set_language("cpp")
set_ros_platform("kinova")
set_ros2_version("humble")
set_values("ros.vendor.profile", "ros2_humble")
set_arch(requested_arch)
set_plat("wasm-wasip1")
add_files("record_codec.cpp")
add_includedirs("include", { public = true })
-- Static archives use the common private .uwvm-ros/archives directory.
target_end()

-- @brief Consume the dependency through its module-owned scalar interface.
-- @details add_deps preserves build order and the common archive or preload
-- contract. The caller supplies a separate manual policy for xmake run.
target("main")
set_kind("binary")
set_language("c")
set_ros_platform("kinova")
set_ros2_version("humble")
set_values("ros.vendor.profile", "ros2_humble")
set_arch(requested_arch)
set_plat("wasm-wasip1")
add_files("main.c")
add_includedirs("include", { public = true })
set_targetdir("build/main")
add_deps("record_codec")
set_ros_scenario("codec_cpp_static")
target_end()
