-- @file objectc.lua
-- @brief Compile Objective-C and link its genuine per-module Wasm runtime.
-- @details The host compiler never executes application code. No native
-- Objective-C runtime, Foundation, host plugin, or alternate VM is loaded.

function compiler(root)
    local core = import("core", {rootdir = path.join(root, "tools/language/native"), anonymous = true})
    local _, programs = core.frontend(root, "native-objectc")
    return programs.compiler
end

-- @brief Verify the exact no-exceptions archive and all public ABI headers.
function selection(root, triple, profile)
    import("core.base.json")
    assert(profile == "noeh", "This Objective-C runtime is the explicit noeh profile")
    local filename = path.join(root, "lib/language/objectc/runtime.json")
    assert(hash.sha256(filename):lower() == "cfe9d3bf20d0a81d8985f5bfc9b01eda095331a0c0beb08ac29ae87d1358c56d", "Changed Objective-C runtime manifest")
    local manifest = json.loadfile(filename)
    assert(manifest.format == "uwvm-objectc-runtime-v1" and manifest.profile == profile,
           "Wrong Objective-C runtime profile")
    local selected = assert(manifest.targets[triple], "No Objective-C runtime for " .. triple)
    local core = import("core", {rootdir = path.join(root, "tools/language/native"), anonymous = true})
    for relative, digest in pairs(manifest.headers) do
        assert(hash.sha256(core.installed(root, relative)):lower() == digest,
               "Changed Objective-C ABI header: " .. relative)
    end
    assert(hash.sha256(core.installed(root, selected.archive)):lower() == selected.sha256,
           "Changed Objective-C target runtime")
    return manifest, selected
end

function flags(root, triple, profile)
    local manifest = selection(root, triple, profile)
    return {"-fobjc-runtime=gnustep-2.0", "-fno-objc-arc", "-fno-objc-exceptions",
            "-I" .. path.join(root, manifest.include_dir)}
end

function libraries(root, triple, profile)
    local _, selected = selection(root, triple, profile)
    return {path.join(root, selected.archive), "-lc++", "-lc++abi", "-lwasi-emulated-mman"}
end
