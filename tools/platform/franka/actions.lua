-- @file actions.lua
-- @brief Declare original Zig modules for the one shared compiler adapter.
-- @details No compiler, policy, codec or runtime implementation lives here.
-- @param selected Validated exact Franka release profile.
-- @return Explicit source graph consumed by the public native adapter version 1.
function zig(selected)
	assert(selected.id == "ros1", "This finite Zig native graph requires exact Franka Noetic")
	local records = "include/platform/franka/zig/"
		.. selected.backend
		.. "/"
		.. selected.bundle
		.. "/native_service.zig"
	return {
		format = "uwvm-native-action-v1",
		language = "zig",
		c_sources = { { source = "src/language/native/startup.c", object = "startup.o" } },
		zig = {
			imports = { "franka_records", "franka_grasp", "rosclient", "roswire" },
			modules = {
				{ name = "franka_records", source = records, imports = { "roswire" } },
				{
					name = "franka_grasp",
					source = "include/platform/franka/zig/ros1/franka-ros1-complete/native_grasp.zig",
					imports = { "rosclient", "roswire" },
				},
				{ name = "roswire", source = "include/platform/ros/zig/wire.zig", imports = {} },
				{
					name = "rosclient",
					source = "include/platform/ros/zig/client.zig",
					imports = { "ros" },
				},
				{
					name = "ros",
					source = "include/platform/ros/zig/" .. selected.backend .. ".zig",
					imports = {},
				},
			},
		},
	}
end
