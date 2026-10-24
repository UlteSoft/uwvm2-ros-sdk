-- @file provider.lua
-- @brief Reuse the NVIDIA umbrella provider without a second compiler dispatch.
local root = assert(os.getenv("UWVM_ROS_SDK_ROOT"), "Set UWVM_ROS_SDK_ROOT to the installed SDK")
local shared = import("provider", {rootdir = path.join(root, "tools/platform/nvidia"), anonymous = true})
configure = shared.configure
build = shared.build
run = shared.run
