-- @details This graph binds the exact Flexiv v2.2 Jazzy server and client
-- modules to the shared ROS ABI and wire codec. Invalid profiles are refused;
-- this descriptor neither selects a private compiler nor grants ROS access.
-- @file actions.lua
-- @brief Vendor module graph for the unchanged public Zig compiler adapter v1.
function zig(selected)
	assert(
		selected.id == "ros2_jazzy_v2_2",
		"This native Zig Action requires exact Flexiv Jazzy v2.2"
	)
	return {
		format = "uwvm-native-action-v1",
		language = "zig",
		c_sources = { { source = "src/language/native/startup.c", object = "startup.o" } },
		zig = {
			imports = { "flexiv_grasp", "flexiv_client", "rosclient", "roswire" },
			modules = {
				{
					name = "flexiv_grasp",
					source = "include/platform/flexiv/zig/ros2/flexiv-ros2-jazzy-v2-2-complete/native_grasp.zig",
					imports = { "rosclient", "roswire" },
				},
				{
					name = "flexiv_client",
					source = "include/platform/flexiv/zig/ros2/flexiv-ros2-jazzy-v2-2-complete/native_grasp_client.zig",
					imports = { "flexiv_grasp", "rosclient", "roswire" },
				},
				{
					name = "rosclient",
					source = "include/platform/ros/zig/client.zig",
					imports = { "ros" },
				},
				{ name = "roswire", source = "include/platform/ros/zig/wire.zig", imports = {} },
				{ name = "ros", source = "include/platform/ros/zig/ros2.zig", imports = {} },
			},
		},
	}
end
