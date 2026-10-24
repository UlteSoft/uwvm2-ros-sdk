-- @file xmake.lua
-- @brief Build the genuine managed shared producer and scalar C# consumer.
-- @details UWVM_ROS_SDK_ROOT may select an installed SDK. Otherwise search
-- structured parent directories; imports contain no encoded parent traversal.
local root = os.getenv("UWVM_ROS_SDK_ROOT")
if not root then
	local cursor = os.scriptdir()
	while true do
		if os.isfile(path.join(cursor, "tools/xmake/ros.lua")) then
			root = cursor
			break
		end
		local parent = path.directory(cursor)
		if parent == cursor then
			error("Set UWVM_ROS_SDK_ROOT to the installed SDK")
		end
		cursor = parent
	end
end
includes(path.join(root, "tools/xmake/ros.lua"))
set_policy("run.autobuild", false)
set_plat(get_config("plat") or "wasm-wasip1")
set_arch(get_config("arch") or "wasm32")
target("math")
set_kind("shared")
set_language("vbnet")
set_ros_platform("pal")
set_ros_scenario("shared_math")
set_ros1_version("noetic")
set_ros_config({ vendor_profile = "ros1_noetic_devel" })
set_wasm_exceptions("eh")
set_wasm_features({ "exceptions" })
add_files("Exports.vb")
after_load(function(current)
	assert(current:kind() == "shared", "The common dispatcher must preserve set_kind(shared)")
end)
target_end()
target("main")
set_kind("binary")
set_language("csharp")
set_wasm_exceptions("eh")
set_wasm_features({ "exceptions" })
set_ros_platform("pal")
set_ros_scenario("shared_math")
set_ros1_version("noetic")
set_ros_config({ vendor_profile = "ros1_noetic_devel" })
add_files("Main.cs")
add_deps("math")
after_load(function(current)
	assert(current:kind() == "binary", "The common dispatcher must preserve set_kind(binary)")
end)
target_end()
