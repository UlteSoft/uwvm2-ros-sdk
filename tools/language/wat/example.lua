-- SPDX-License-Identifier: Apache-2.0
-- Evidence helpers execute in Xmake's callback domain rather than the DSL.
function source_inputs(target, sdk)
    local inputs = {}
    local function pin(filename)
        assert(os.isfile(filename), "Required public source missing: " .. filename)
        inputs[path.relative(filename, sdk)] = hash.sha256(filename):lower()
    end
    for _, pattern in ipairs({"*.wat", "*.lua", "*.py", "*.json"}) do
        for _, filename in ipairs(os.files(path.join(target:scriptdir(), pattern))) do pin(filename) end
    end
    for _, filename in ipairs(os.files(path.join(sdk, "tools/xmake/**.lua"))) do pin(filename) end
    for _, relative in ipairs({"tools/language/wat/provider.lua", "tools/language/wat/example.lua",
        "tools/platform/wasi/provider.lua", "share/platform/wasi/provider.json", "share/wasm/toolchains.json"}) do
        pin(path.join(sdk, relative))
    end
    return inputs
end
function verify_build(target, inputs)
    import("core.base.json")
    local receipt = path.join(target:dependir(), "library-kind-build.json")
    assert(os.isfile(receipt) and os.isfile(target:targetfile()), "Run xmake before xmake test")
    local built = json.loadfile(receipt)
    for key, value in pairs(inputs) do assert(built.inputs[key] == value, "Frozen source changed: " .. key) end
    for key in pairs(built.inputs) do assert(inputs[key], "Frozen source set changed: " .. key) end
    assert(built.artifact_sha256 == hash.sha256(target:targetfile()):lower(), "Frozen artifact changed")
end
