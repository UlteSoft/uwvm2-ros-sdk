-- SPDX-License-Identifier: Apache-2.0
-- Failure-only registration; validation and refusal execute in the test callback.
-- The Xmake description sandbox deliberately has no assert()/error().
set_policy("test.return_zero_on_failure", false)
set_policy("test.stop_on_first_failure", false)

function uwvm_pal_required_guest_tests(cfg)
    local invalid = type(cfg) ~= "table"
    cfg = type(cfg) == "table" and cfg or {}
    local scenario = type(cfg.scenario) == "string" and cfg.scenario or "invalid"
    if scenario == "invalid" or #scenario == 0 then invalid = true end
    set_values("sdk09.required_guest_tests.scenario", scenario)
    local names, count = {}, 0
    local cases = type(cfg.cases) == "table" and cfg.cases or {}
    for _, name in ipairs(cases) do
        if type(name) ~= "string" or #name == 0 or names[name] then
            invalid = true
        else
            names[name] = true
            count = count + 1
            add_tests(name, {group = "required-wasm-guest"})
        end
    end
    if count == 0 then
        invalid = true
        add_tests("required-contract-invalid", {group = "required-wasm-guest"})
    end
    on_test(function(target, opt)
        opt.errors = (invalid and "BLOCKED_INVALID_REQUIRED_GUEST_TEST_CONTRACT: "
            or "BLOCKED_REQUIRED_WASM_GUEST_TEST_IMPLEMENTATION: ") .. target:name()
            .. "; scenario=" .. scenario
            .. "; actual guest/runtime/provider/permission evidence is required; no native fallback"
        return false
    end)
end
