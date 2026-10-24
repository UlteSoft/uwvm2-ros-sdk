-- SPDX-License-Identifier: Apache-2.0
-- @file provider.lua
-- @brief Expose the single common genuine-engine adapter in Lua's namespace.
function describe()
    return import("provider", { rootdir = path.join(os.scriptdir(), "..", "js"), anonymous = true }).describe()
end
function configure(target, root, request)
    return import("provider", { rootdir = path.join(root, "tools/language/js"), anonymous = true }).configure(
        target,
        root,
        request
    )
end
function build(target, root, request)
    return import("provider", { rootdir = path.join(root, "tools/language/js"), anonymous = true }).build(
        target,
        root,
        request
    )
end
