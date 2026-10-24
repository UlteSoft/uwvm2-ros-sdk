-- @file pack.lua
-- @brief Expose the common genuine-source packer through the Python namespace.
-- @details One shared implementation validates ordered public modules and embeds
-- them in real CPython; application builds require Xmake only.
function configure(target, root)
    return import("pack", { rootdir = path.join(root, "tools/language/js"), anonymous = true }).configure(target, root)
end
function build(target, root)
    return import("pack", { rootdir = path.join(root, "tools/language/js"), anonymous = true }).build(target, root)
end
