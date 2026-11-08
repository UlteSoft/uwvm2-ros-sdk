-- SPDX-License-Identifier: Apache-2.0
-- A source audit is not a runtime, ABI, or complete-package qualification.
function uwvm_upstream_component(options)
    local sdk, component = options.sdk_root, options.component_root
    before_build(function(target)
        assert(type(sdk) == "string" and type(component) == "string", "Select the actual SDK and upstream source component")
        local python = import("python_runtime", {rootdir = path.join(sdk, "tools/xmake"), anonymous = true}).resolve()
        os.vrunv(python, {path.join(sdk, "tools/shared/python/portability_contract.py"),
            "--component", component, "--output", path.join(target:dependir(), "upstream-source-audit.json")})
    end)
end
