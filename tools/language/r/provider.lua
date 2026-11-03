-- @file provider.lua
-- @brief Package genuine GNU R source only when its shared standalone VM exists.
-- @details The original R parser, static .Call adapter and explicit port gaps are
-- recorded under src/language/r and share/language/r. No alternate VM is selected.

-- @brief Describe the exact public adapter interface independently of execution.
-- @return Version-one binary source-slot route; the real R runtime is required.
function describe()
    return {
        api_version = 1,
        languages = {"r"},
        targets = {"wasm32-wasip1"},
        exception_profiles = {"noeh"},
        features = {},
        artifact_kinds = {}
    }
end

-- @brief Configure one complete GNU R source with its exact target/backend.
-- @param target Xmake target with language r and the public ordered module graph.
-- @param root Installed SDK root. @param context Validated version-one request.
function configure(target, root, context)
    assert(target:values("ros.sdk.language") == "r", "GNU R source is required")
    return import("provider", {rootdir = path.join(root, "tools/language/ruby"), anonymous = true})
        .configure(target, root, context)
end

-- @brief Build through the checked source-slot packer and genuine GNU R metadata.
-- @param target Configured ordinary source target. @param root SDK installation.
-- @param context Validated exact target; a missing memory64 port is never narrowed.
-- @details A missing R VM is diagnosed with the concrete port-status path. This
-- route installs no parser and does not claim source preparation as execution.
function build(target, root, context)
    assert(target:values("ros.sdk.language") == "r", "GNU R source is required")
    return import("provider", {rootdir = path.join(root, "tools/language/ruby"), anonymous = true})
        .build(target, root, context)
end
