-- @file provider.lua
-- @brief Package genuine GNU R source only when its shared standalone VM exists.
-- @details The original R parser, static .Call adapter and explicit port gaps are
-- recorded under src/language/r and share/language/r. No alternate VM is selected.

-- @brief Configure one complete GNU R source with its exact target/backend.
-- @param target Xmake target with language r and the public ordered module graph.
-- @param root Installed SDK root. @param triple Exact requested target.
function configure(target, root, triple)
    assert(target:values("ros.sdk.language") == "r", "GNU R source is required")
    return import("provider", {rootdir = path.join(root, "tools/language/ruby"), anonymous = true})
        .configure(target, root, triple)
end

-- @brief Build through the checked source-slot packer and genuine GNU R metadata.
-- @param target Configured ordinary source target. @param root SDK installation.
-- @param triple Exact target; an unavailable memory64 port is never narrowed.
-- @details A missing R VM is diagnosed with the concrete port-status path. This
-- route installs no parser and does not claim source preparation as execution.
function build(target, root, triple)
    configure(target, root, triple)
    return import("provider", {rootdir = path.join(root, "tools/language/ruby"), anonymous = true})
        .build(target, root, triple)
end
