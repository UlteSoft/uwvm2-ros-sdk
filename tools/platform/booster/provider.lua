-- @file provider.lua
-- @brief Bind full Booster official and separately authored bridge schemas.
function configure(target, root, context)
    return import("selection", { rootdir = path.join(root, "tools/platform/deep_robotics"), anonymous = true }).configure(target, root, context)
end
function build(target, root, context)
    return import("selection", { rootdir = path.join(root, "tools/platform/deep_robotics"), anonymous = true }).build(target, root, context)
end
function run(target, root, context)
    return import("selection", { rootdir = path.join(root, "tools/platform/deep_robotics"), anonymous = true }).run(target, root, context)
end
