-- SPDX-License-Identifier: Apache-2.0
-- Serialize an approved exact WASIp1 contract. Never derive rights from imports.
local json = import("core.base.json")

-- Explicit quota values are strings: Lua/JSON numeric conversions must never
-- round a uint64 contract. Missing and unlimited limits emit no CLI switches.
function limit_arguments(module, limits)
    assert(type(module) == "string" and #module <= 255
        and module:match("^[A-Za-z0-9_][A-Za-z0-9_.%-]*$"), "Use an exact host module binding")
    assert(type(limits) == "table" and not json.is_marked_as_array(limits), "WASIp1 limits must be an explicit map")
    local budgets, fields, waits = {}, {}, {['window-bytes'] = true, ['window-calls'] = true, concurrent = true}
    for _, value in ipairs({"random", "stdin", "stdout", "stderr", "realtime", "monotonic", "process", "thread", "poll", "signal", "yield", "filesystem"}) do budgets[value] = true end
    for _, value in ipairs({"request-bytes", "window-bytes", "window-calls", "total-bytes", "total-calls", "concurrent"}) do fields[value] = true end
    local keys, count, argv = {}, 0, {}
    for key in pairs(limits) do
        assert(type(key) == "string", "Use an exact WASIp1 budget.field limit")
        count = count + 1
        assert(count <= 72, "Too many WASIp1 limit fields")
        table.insert(keys, key)
    end
    table.sort(keys)
    for _, key in ipairs(keys) do
        local budget, field = key:match("^([a-z]+)%.([a-z%-]+)$")
        assert(budgets[budget] and fields[field], "Unknown WASIp1 budget or limit field")
        local entry = limits[key]
        assert(type(entry) == "table" and not json.is_marked_as_array(entry), "Each WASIp1 limit requires value and on_exhausted")
        for name in pairs(entry) do assert(name == "value" or name == "on_exhausted" or name == "on_proc_exit", "Unknown WASIp1 limit field") end
        local value, action = entry.value, entry.on_exhausted
        assert(type(value) == "string" and (value == "unlimited" or ((value == "0" or value:match("^[1-9][0-9]*$"))
            and #value <= 20 and (#value < 20 or value <= "18446744073709551615"))), "Use canonical uint64 strings or unlimited")
        assert((action == "reject" or action == "wait") and (action ~= "wait" or waits[field]), "Wait requires a window or concurrency limit")
        local exit_action = entry.on_proc_exit == nil and "cancel" or entry.on_proc_exit
        assert((exit_action == "cancel" or exit_action == "wait") and (exit_action ~= "wait" or waits[field]), "proc_exit wait requires a window or concurrency limit")
        if value ~= "unlimited" and value ~= "18446744073709551615" then
            table.join2(argv, {"--wasip1-single-limit", module, key, value,
                "--wasip1-single-limit-action", module, key, action})
            if entry.on_proc_exit ~= nil then
                table.join2(argv, {"--wasip1-single-limit-exit-action", module, key, exit_action})
            end
        end
    end
    return argv
end


function wait_exit_arguments(module, actions)
    limit_arguments(module, {})
    assert(type(actions) == "table" and not json.is_marked_as_array(actions), "WASIp1 wait_exit_actions must be an explicit native-wait map")
    local budgets, keys, argv = {}, {}, {}
    for _, value in ipairs({"random", "stdin", "stdout", "stderr", "realtime", "monotonic", "process", "thread", "poll", "signal", "yield", "filesystem"}) do budgets[value] = true end
    for key in pairs(actions) do
        assert(type(key) == "string", "Use an exact WASIp1 budget.native-wait key")
        table.insert(keys, key)
        assert(#keys <= 12, "Too many native-wait exit actions")
    end
    table.sort(keys)
    for _, key in ipairs(keys) do
        local budget = key:match("^([a-z]+)%.native%-wait$")
        assert(budgets[budget], "Use an exact WASIp1 budget.native-wait key")
        local action = actions[key]
        assert(action == "cancel" or action == "wait", "Native-wait proc_exit action must be cancel or wait")
        table.join2(argv, {"--wasip1-single-limit-exit-action", module, key, action})
    end
    return argv
end


function filesystem_arguments(module, preopens, rights)
    limit_arguments(module, {})
    assert(type(preopens) == "table" and type(rights) == "table"
        and not json.is_marked_as_array(rights), "Use explicit preopens and filesystem rights")
    local argv, guests = {}, {}
    for key in pairs(preopens) do
        assert(type(key) == "number" and key >= 1 and key <= #preopens and key % 1 == 0,
            "Preopens must be a dense array")
    end
    for _, entry in ipairs(preopens) do
        assert(type(entry) == "table" and not json.is_marked_as_array(entry),
            "Each preopen needs guest and host paths")
        for key in pairs(entry) do assert(key == "guest" or key == "host" or key == "rights", "Unknown preopen field") end
        for _, key in ipairs({"guest", "host"}) do
            assert(type(entry[key]) == "string" and entry[key]:sub(1, 1) == "/" and not entry[key]:find("%z"),
                "Preopen paths must be absolute NUL-free strings")
        end
        assert(not guests[entry.guest], "Duplicate guest preopen")
        guests[entry.guest] = true
        table.join2(argv, {"--wasip1-single-mount-dir", module, entry.guest, entry.host})
        if entry.rights ~= nil then
            assert(type(entry.rights) == "table" and not json.is_marked_as_array(entry.rights),
                "Preopen rights must be an explicit base/inheriting map")
            for key in pairs(entry.rights) do
                assert(key == "base" or key == "inheriting", "Unknown preopen right")
            end
            local masks = {}
            for _, key in ipairs({"base", "inheriting"}) do
                local value = entry.rights[key] == nil and "0" or entry.rights[key]
                assert(type(value) == "string" and (value == "0" or value:match("^[1-9][0-9]*$"))
                    and #value <= 20 and (#value < 20 or value <= "18446744073709551615"),
                    "Preopen rights require canonical uint64 decimal strings")
                table.insert(masks, value)
            end
            table.join2(argv, {"--wasip1-single-mount-dir-rights", module, entry.guest, masks[1], masks[2]})
        end
    end
    for key in pairs(rights) do assert(key == "base" or key == "inheriting", "Unknown filesystem right") end
    for _, key in ipairs({"base", "inheriting"}) do
        local value = rights[key]
        if value ~= nil then
            assert(type(value) == "string" and (value == "0" or value:match("^[1-9][0-9]*$"))
                and #value <= 20 and (#value < 20 or value <= "18446744073709551615"),
                "Filesystem rights require canonical uint64 decimal strings")
            table.join2(argv, {"--wasip1-single-limit", module, "filesystem." .. key .. "-rights", value})
        end
    end
    return argv
end

function environment_arguments(module, environment)
    limit_arguments(module, {})
    assert(type(environment) == "table" and not json.is_marked_as_array(environment),
        "Explicit environment must be a string map")
    local keys, argv = {}, {}
    for key, value in pairs(environment) do
        assert(type(key) == "string" and #key > 0 and not key:find("=", 1, true) and not key:find("%z")
            and type(value) == "string" and not value:find("%z"), "Use NUL-free environment names and values")
        table.insert(keys, key)
    end
    table.sort(keys)
    for _, key in ipairs(keys) do
        table.join2(argv, {"--wasip1-single-add-or-replace-environment", module, key, environment[key]})
    end
    return argv
end

function arguments(policy)
    if policy == nil or policy == json.null or policy == json.purenull then return {} end
    assert(type(policy) == "table" and not json.is_marked_as_array(policy) and policy.format == "uwvm-sdk-wasip1-policy-v3"
        and type(policy.modules) == "table" and not json.is_marked_as_array(policy.modules), "Expected uwvm-sdk-wasip1-policy-v3")
    for key in pairs(policy) do assert(key == "format" or key == "modules", "Unknown WASIp1 policy field") end
    local rights = {}
    for _, right in ipairs({"stdin.read", "stdout.write", "stderr.write", "stdio.metadata", "stdio.readiness",
        "args", "environ", "proc-exit", "realtime-clock", "monotonic-clock", "process-clock", "thread-clock",
        "random", "proc-raise", "sched-yield", "thread-spawn",
        "realtime-resolution", "monotonic-resolution", "process-resolution", "thread-resolution",
        "realtime-timer", "monotonic-timer", "process-timer", "thread-timer"}) do rights[right] = true end
    local argv = {}
    local count, names = 0, {}
    for name in pairs(policy.modules) do
        assert(type(name) == "string", "Use an exact host module binding")
        table.insert(names, name)
    end
    table.sort(names)
    for _, name in ipairs(names) do
        local module = policy.modules[name]
        count = count + 1
        assert(count <= 256 and type(name) == "string" and #name <= 255
            and name:match("^[A-Za-z0-9_][A-Za-z0-9_.%-]*$"), "Use an exact host module binding")
        assert(type(module) == "table" and not json.is_marked_as_array(module) and type(module.enabled) == "boolean"
            and type(module.grants) == "table" and type(module.interfaces) == "table",
            "WASIp1 v3 requires enabled, exact interfaces, and operation grants")
        for key in pairs(module) do assert(key == "enabled" or key == "grants" or key == "interfaces" or key == "limits" or key == "wait_exit_actions" or key == "preopens" or key == "filesystem_rights" or key == "environment", "Unknown WASIp1 module field") end
        assert(module.enabled or #module.grants == 0, "Disabled WASIp1 has no grants")
        for _, field in ipairs({"preopens", "filesystem_rights", "environment"}) do
            assert(module.enabled or module[field] == nil or (type(module[field]) == "table" and next(module[field]) == nil),
                "Disabled WASIp1 has no host objects")
        end
        table.join2(argv, {"--wasip1-single-create", name,
            "--wasip1-single-" .. (module.enabled and "enable" or "disable"), name,
            "--wasip1-single-noinherit-system-environment", name})
        table.join2(argv, interface_arguments("wasip1", "single", name, module.interfaces))
        local seen, values = {}, module.grants
        assert(#values <= 64, "WASIp1 policy array exceeds limit")
        for key, value in pairs(values) do
            assert(type(key) == "number" and key >= 1 and key <= #values and key % 1 == 0
                and type(value) == "string" and not seen[value], "Use distinct dense WASIp1 arrays")
            seen[value] = true
            assert(rights[value], "Unknown WASIp1 operation grant")
        end
        for _, value in ipairs(values) do
            table.join2(argv, {"--wasip1-single-grant", name, value})
        end
        table.join2(argv, limit_arguments(name, module.limits == nil and {} or module.limits))
        table.join2(argv, wait_exit_arguments(name, module.wait_exit_actions == nil and {} or module.wait_exit_actions))
        if module.preopens ~= nil then
            assert(type(module.preopens) == "table" and (json.is_marked_as_array(module.preopens) or #module.preopens > 0),
                "Preopens must be an explicit array")
        end
        table.join2(argv, filesystem_arguments(name, module.preopens == nil and {} or module.preopens,
            module.filesystem_rights == nil and {} or module.filesystem_rights))
        table.join2(argv, environment_arguments(name, module.environment == nil and {} or module.environment))
    end
    return argv
end


-- SDK tests always link the base namespace, independently of operation grants.
-- Production arguments() continues to serialize the exact reviewed policy.
function test_arguments(values, policy, artifacts)
    if policy == json.null or policy == json.purenull then policy = nil end
    assert(type(values) == "table", "Test runtime arguments must be a dense string array")
    for key, value in pairs(values) do
        assert(type(key) == "number" and key >= 1 and key <= #values and key % 1 == 0
            and type(value) == "string" and not value:find("%z"), "Test runtime arguments must be a dense NUL-free string array")
    end
    local result, main, preloads = table.clone(values), nil, {}
    local index = 1
    while index <= #values do
        local value = values[index]
        assert(value ~= "--run" and value ~= "-r" and not value:match("^%-%-run=") and not value:match("^%-r="),
            "The test launcher appends the sole --run operand")
        assert(not value:match("^%-%-wasip1%-") and not value:match("^%-WASIp1"),
            "Test WASIp1 permissions belong in wasi_policy, not raw runtime arguments")
        if value == "--wasm-set-main-module-name" or value == "-Wname" then
            assert(main == nil and index + 1 <= #values, "A test has exactly one explicit main module name")
            main = values[index + 1]
            index = index + 2
        elseif value == "--wasm-preload-library" or value == "-Wpre" then
            assert(index + 2 <= #values and #values[index + 1] > 0 and not values[index + 1]:match("^%-"),
                "Every test preload requires its path and exact module name")
            table.insert(preloads, values[index + 2])
            index = index + 3
        else
            index = index + 1
        end
    end
    if main == nil then
        main = "main"
        table.join2(result, {"--wasm-set-main-module-name", main})
    end
    local names, seen = {main}, {}
    table.join2(names, preloads)
    for _, name in ipairs(names) do
        assert(not seen[name], "Test module names must be distinct")
        seen[name] = true
    end
    arguments(policy)
    local configured = policy and policy.modules or {}
    for name in pairs(configured) do
        assert(seen[name], "Test WASIp1 policy names a module outside the loaded graph")
    end
    local modules = {}
    for _, name in ipairs(names) do
        local value = configured[name] or {enabled = true, interfaces = {}, grants = {}}
        assert(value.enabled, "Every SDK guest test module requires enabled WASIp1; deny operations through grants")
        modules[name] = value
    end
    assert(type(artifacts) == "table", "SDK test must identify every built Wasm artifact for exact interface configuration")
    for _, name in ipairs(names) do
        assert(artifacts[name] and os.isfile(artifacts[name]), "Missing built artifact for test module " .. name)
    end
    table.join2(result, arguments({format = "uwvm-sdk-wasip1-policy-v3", modules = modules}))
    -- Share the strict import-only reader and scope resolver with Python tests.
    -- Full Wasm validation remains the VM's responsibility, including GC types.
    local helper = path.join(os.scriptdir(), "../shared/python/host_interfaces.py")
    local python = import("python_runtime", {rootdir=os.scriptdir(), anonymous=true}).resolve()
    local filename = os.tmpfile({ramdisk=false})
    local command = {"uwvm-sdk-test"}
    table.join2(command, result)
    table.join2(command, {"--run", artifacts[main]})
    json.savefile(filename, command)
    local output
    try {function()
        output = os.iorunv(python, {helper, "--test-command-json"}, {stdin=filename})
    end, finally {function() os.tryrm(filename) end}}
    local complete = json.decode(output)
    assert(type(complete) == "table" and complete[1] == "uwvm-sdk-test"
        and complete[#complete - 1] == "--run" and complete[#complete] == artifacts[main],
        "Exact test command serialization failed")
    result = {}
    for index=2,#complete-2 do table.insert(result,complete[index]) end
    return result
end


-- Exact API state serialization; no namespace wildcard or implicit grants.
function interface_arguments(family, scope, target, interfaces)
    assert(type(interfaces) == "table" and not json.is_marked_as_array(interfaces),
        "Interfaces must be an exact API-to-hidden/deny/allow map")
    local registry = json.loadfile(path.join(os.scriptdir(), "../shared/host-interfaces.json"))
    local known = {}
    for _, entry in ipairs(registry.interfaces) do
        if entry.family == family then known[entry.key] = true end
    end
    local keys, argv = {}, {}
    for key, state in pairs(interfaces) do
        assert(type(key) == "string" and known[key] and (state == "hidden" or state == "deny" or state == "allow"),
            "Unknown interface or invalid hidden/deny/allow state")
        table.insert(keys, key)
    end
    table.sort(keys)
    for _, key in ipairs(keys) do
        table.insert(argv, "--" .. family .. "-" .. scope .. "-interface")
        if scope ~= "global" then table.insert(argv, target) end
        table.join2(argv, {key, interfaces[key]})
    end
    return argv
end
