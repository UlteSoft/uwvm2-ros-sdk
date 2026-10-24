-- @file provider.lua
-- @brief Bind the complete Deep Robotics source descriptor to shared producers.
function configure(target, root, context)
    return import("selection", { rootdir = path.join(root, "tools/platform/deep_robotics"), anonymous = true }).configure(target, root, context)
end
function build(target, root, context)
    return import("selection", { rootdir = path.join(root, "tools/platform/deep_robotics"), anonymous = true }).build(target, root, context)
end
function run(target, root, context)
    return import("selection", { rootdir = path.join(root, "tools/platform/deep_robotics"), anonymous = true }).run(target, root, context)
end
