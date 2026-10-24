-- @file provider.lua
-- @brief Delegate source-language work to the single common SDK implementation.
-- @details The platform contributes complete catalogs and public typed modules.
-- Compilation never grants ROS permissions or starts native peers.

-- @brief Resolve the single common compiler/interpreter for this source language.
-- @param target Ordinary target populated by the shared public DSL.
-- @param root Absolute installed SDK root.
-- @return Common source-language provider; missing shared dependencies fail explicitly.
local function implementation(target, root)
    local language = target:values("ros.sdk.language")
    local family = ({java="jvm", kotlin="jvm", csharp="dotnet", fsharp="dotnet", vbnet="dotnet",
        py="python", js="js", lua="lua", ruby="ruby", php="php", r="r"})[language]
    local directory = family and path.join(root, "tools/language", family)
        or path.join(root, "tools/language/native")
    if language == "c" or language == "cpp" or language == "c_ffi_bridge" then
        directory = path.join(root, "tools/platform/ros")
    end
    assert(os.isfile(path.join(directory, "provider.lua")), "Install the shared language provider for " .. language)
    return import("provider", {rootdir=directory, anonymous=true})
end

-- @brief Validate actual sources with the common provider before any compiler runs.
-- @param target Current caller-owned target.
-- @param root Installed SDK root borrowed for this operation.
-- @param context Validated version-one ABI, distribution, profile options and source request.
function configure(target, root, context)
    import("core.base.json")
    local platform = target:values("ros.sdk.platform")
    local descriptor = json.loadfile(path.join(root, "share/platform", platform, "provider.json"))
    local selection = context and context.options and context.options.vendor_profile
        or target:values("ros.sdk.option.vendor_profile") or target:values("ros.sdk.vendor_profile")
    assert(selection, "Select ros.sdk.vendor_profile from the installed platform descriptor")
    local chosen = nil
    for _, profile in ipairs(descriptor.profiles) do
        if profile.id == selection then chosen = profile; break end
    end
    assert(chosen and chosen.backend == target:values("ros.sdk.backend"), "Profile/backend selection disagrees")
    implementation(target, root).configure(target, root, context)
end

-- @brief Build actual source using the one shared compiler/runtime version set.
-- @param target Current caller-owned genuine source target.
-- @param root Installed SDK root borrowed for this operation.
-- @param context Validated version-one ABI, distribution, profile options and source request.
function build(target, root, context)
    local language = target:values("ros.sdk.language")
    if language == "c" or language == "cpp" or language == "c_ffi_bridge" then
        assert(context and context.api_version == 1, "Use the validated shared provider context")
        -- Vendor applications are ordinary WASI commands with their own real
        -- source main. The common CFamily action supplies the genuine target
        -- CRT/libc; the ROS sample provider's freestanding entry is not selected.
        import("cfamily", {rootdir=path.join(root, "tools/xmake"), anonymous=true}).build(
            target, root, context.triple)
    else
        implementation(target, root).build(target, root, context)
    end
end

-- @brief Run the sole application through the shared permission-preserving dispatcher.
-- @param target Existing Wasm and explicitly selected native ROS deployment.
-- @param root Installed SDK root borrowed for this operation.
-- @param context Validated version-one ABI, distribution, profile options and source request.
-- @details The common runner owns installed runtime selection and native lifecycle.
function run(target, root, context)
    local directory = path.join(root, "tools/platform/ros")
    assert(os.isfile(path.join(directory, "provider.lua")), "Install the shared native ROS run dispatcher")
    import("provider", {rootdir=directory, anonymous=true}).run(target, root, context)
end
