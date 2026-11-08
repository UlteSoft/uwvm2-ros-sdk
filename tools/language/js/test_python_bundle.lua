-- SPDX-License-Identifier: Apache-2.0
-- Run with xmake lua tools/language/js/test_python_bundle.lua <installed-sdk>.
-- Exercise source-package rejection before compilation or guest execution.
function main(root)
    assert(root and os.isdir(root), "Supply the installed SDK root")
    import("core.base.json")
    local pack = import("pack", {rootdir = path.join(root, "tools/language/js"), anonymous = true})
    local manifest_path = path.join(root, "src/platform/ros2/angles/python-tests.bundle.json")
    local entry = path.join(root, "example/platform/ros2/py/angles_upstream/main.py")
    local passed = 0
    local function rejects(name, mutate, expected)
        local manifest = assert(json.loadfile(manifest_path))
        mutate(manifest)
        local ok, message = false, nil
        try {function()
            pack.bundle(root, "py", entry, manifest)
            ok = true
        end, catch {function(failure) message = failure end}}
        assert(not ok and tostring(message):find(expected, 1, true),
            "Wrong rejection for " .. name .. ": " .. tostring(message))
        passed = passed + 1
    end
    rejects("changed package source", function(m) m.modules[1].sha256 = string.rep("0", 64) end,
        "A declared module changed")
    rejects("host path escape", function(m) m.modules[1].file = "../outside.py" end,
        "Parent or current-directory segments")
    rejects("duplicate public identity", function(m) m.modules[2].name = m.modules[1].name end,
        "Public module names must be unique")
    rejects("missing parent package", function(m) m.modules[1].name = "unregistered_parent.angles" end,
        "Declare and initialize the parent Python package first")
    rejects("standard library replacement", function(m) m.modules[1].name = "warnings" end,
        "A platform must use the original shared CPython module")
    rejects("wrong language identity", function(m) m.language = "lua" end,
        "versioned genuine-language module manifest")
    local manifest = assert(json.loadfile(manifest_path))
    local source, inputs = pack.bundle(root, "py", entry, manifest)
    assert(type(source) == "string" and #source > 0 and #inputs > #manifest.modules)
    for _, module in ipairs(manifest.modules) do
        local found = false
        for _, item in ipairs(inputs) do
            if item.path == module.file then
                assert(item.sha256 == module.sha256)
                found = true
            end
        end
        assert(found, "The package is missing from the actual source closure")
    end
    passed = passed + 1
    print("PASS: " .. passed .. " genuine Python source-package boundary checks")
end
