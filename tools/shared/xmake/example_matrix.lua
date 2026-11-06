-- SPDX-License-Identifier: Apache-2.0
-- @file example_matrix.lua
-- @brief Main-Xmake bounded scheduling of public child-project build/test pairs.
-- @details async.runjobs owns concurrency. The Python helper supervises one
-- project only; it contains no queue, pool, parallel scheduler or ROS client.

local function generated(relative)
    for part in relative:gmatch("[^/\\]+") do
        if part == ".git" or part == ".xmake" or part == ".uwvm-ros" or part == ".tmp"
            or part == "build" or part == "__pycache__" then return true end
    end
    return false
end

function catalog(root)
    import("core.base.json")
    local files = os.files(path.join(root, "example/**/xmake.lua"))
    table.sort(files)
    local rows, aggregators = {}, {}
    local registry_path = path.join(root, "share/platform/examples/required-simulations-v1.json")
    local registry = json.loadfile(registry_path)
    assert(registry.format == "uwvm-sdk-required-simulations-v1" and #registry.entries > 0,
        "BLOCKED_REQUIRED_SIMULATION_INVENTORY")
    local required_projects = {}
    for _, row in ipairs(registry.entries) do
        required_projects[row.project] = required_projects[row.project] or {}
        table.insert(required_projects[row.project], row.id)
    end
    for _, file in ipairs(files) do
        local relative = path.relative(path.directory(file), root):gsub("\\", "/")
        if not generated(relative) then
            local source = assert(io.readfile(file))
            local body = source:gsub("%-%-[^\n]*", ""):gsub("includes%s*%b()", ""):gsub("%s+", "")
            if body == "" then
                table.insert(aggregators, {path = relative, xmake_sha256 = hash.sha256(file):lower(),
                    classification = "INCLUDE_ONLY_AGGREGATOR_CHILDREN_ENUMERATED_SEPARATELY"})
            else
                local inputs = {}
                for _, input in ipairs(os.files(path.join(path.directory(file), "**"))) do
                    local name = path.relative(input, path.directory(file)):gsub("\\", "/")
                    if not generated(name) then
                        assert(not os.islink(input), "BLOCKED_EXAMPLE_SOURCE_SYMLINK: " .. input)
                        table.insert(inputs, {path = name, bytes = os.filesize(input), sha256 = hash.sha256(input):lower()})
                    end
                end
                table.sort(inputs, function(a, b) return a.path < b.path end)
                local language = source:match('set_language%s*%(%s*"([^"]+)"') or relative:match("^example/language/([^/]+)/")
                local heavy = required_projects[relative] ~= nil
                local component = os.isfile(path.join(path.directory(file), "component.json"))
                table.insert(rows, {path = relative, language = language or "UNRESOLVED_DECLARATION",
                    mode = relative:match("/([^/]+)$"), source_files = inputs,
                    required_simulation_ids = required_projects[relative] or json.mark_as_array({}),
                    structured_guest_cases_required = component or heavy,
                    scheduling_lane = heavy and "SERIAL_OFFICIAL_ENVIRONMENT" or "BOUNDED_BUILD_AND_TEST",
                    configure = {argv = {"xmake", "f", "-y", "-P", "<public-project>", "-o", "<isolated-build>"}, status = "NOT_RUN"},
                    output_contract = "PRIVATE_BUILD_ROOT_WITH_DISJOINT_ARTIFACT_OBJECT_DEPENDENCY_DIRECTORIES",
                    build = {argv = {"xmake", "-P", "<public-project>", "-j1"}, status = "NOT_RUN"},
                    test = {argv = {"xmake", "test", "-P", "<public-project>", "-j1"}, status = "NOT_RUN", required_cases = "NONZERO_ACTUAL_NATIVE_TEST_REPORT"}})
            end
        end
    end
    assert(#rows > 0, "BLOCKED_ZERO_PUBLIC_EXAMPLE_PROJECTS")
    -- Freeze shared dispatch/build/ABI/dependency declarations too. A child-only
    -- source list cannot detect a changed common compiler or lifecycle helper.
    local shared, seen = {}, {}
    local candidates = table.join({path.join(root, "xmake.lua")},
        os.files(path.join(root, "tools/**")), os.files(path.join(root, "share/**/*.json")),
        os.files(path.join(root, ".github/workflows/*.yml")))
    for _, input in ipairs(candidates) do
        local relative = path.relative(input, root):gsub("\\", "/")
        if not seen[relative] and relative ~= "share/platform/examples/linux-ci-v1.json" and not generated(relative) then
            assert(not os.islink(input), "BLOCKED_SHARED_BUILD_INPUT_SYMLINK: " .. input)
            seen[relative] = true
            table.insert(shared, {path = relative, bytes = os.filesize(input), sha256 = hash.sha256(input):lower()})
        end
    end
    table.sort(shared, function(a, b) return a.path < b.path end)
    return {format = "uwvm-sdk-linux-example-catalog-v1", entries = rows, aggregators = aggregators,
        shared_build_inputs = shared,
        required_simulations = {path = "share/platform/examples/required-simulations-v1.json",
            sha256 = hash.sha256(registry_path):lower(), inventory_discovery_complete = registry.inventory_discovery_complete},
        scope = "Every public example xmake.lua accounted as a project or exact include-only aggregator; source presence is not qualification."}
end

local function equivalent(a, b)
    if type(a) ~= type(b) then return false end
    if type(a) ~= "table" then return a == b end
    for k, value in pairs(a) do if not equivalent(value, b[k]) then return false end end
    for k in pairs(b) do if a[k] == nil then return false end end
    return true
end

local function write_atomic(file, value)
    import("core.base.json")
    json.savefile(file .. ".new", value)
    os.mv(file .. ".new", file)
end

function main(root)
    import("core.base.option")
    import("core.base.json")
    import("async.runjobs")
    import("lib.detect.find_program")
    assert(os.host() == "linux", "BLOCKED_LINUX_ONLY_EXAMPLE_MATRIX")
    assert(path.absolute(os.workingdir()) == path.absolute(root) and os.getenv("PWD") == path.absolute(root),
        "BLOCKED_MAIN_XMAKE_REQUIRES_REAL_SDK_ROOT_CWD")
    local pinned = path.join(root, "share/platform/examples/linux-ci-v1.json")
    if option.get("merge") then
        local python = import("python_runtime", {rootdir = path.join(root, "tools/xmake"), anonymous = true}).resolve()
        local output = path.absolute(option.get("output") or path.join(root, ".uwvm-ros/linux-ci-aggregate"))
        local code = os.execv(python, {path.join(root, "tools/shared/python/example_aggregate.py"),
            "--catalog", pinned, "--required-simulations", path.join(root, "share/platform/examples/required-simulations-v1.json"),
            "--input", path.absolute(option.get("merge")), "--output", output}, {try = true})
        assert(code == 0, "BLOCKED_OR_FAILED_INCOMPLETE_PUBLIC_EXAMPLE_AGGREGATE")
        return
    end
    local current = catalog(root)
    if option.get("refresh-catalog") then
        write_atomic(pinned, current)
        print("Indexed " .. #current.entries .. " public projects; no build/test qualification implied")
        return
    end
    assert(os.isfile(pinned), "BLOCKED_MISSING_PUBLIC_EXAMPLE_CATALOG")
    local expected = json.loadfile(pinned)
    assert(equivalent(expected, current), "BLOCKED_PUBLIC_EXAMPLE_CATALOG_DRIFT: refresh and review the complete catalog")
    local group, selected_paths
    if option.get("group") then
        local name = option.get("group")
        assert(name:match("^[a-z0-9][a-z0-9%-]*$"), "BLOCKED_PUBLIC_GROUP_NAME")
        group = json.loadfile(path.join(root, "share/platform/examples/groups", name .. ".json"))
        assert(group.format == "uwvm-sdk-example-group-v1" and group.id == name and #group.projects > 0,
            "BLOCKED_PUBLIC_GROUP_CONTRACT")
        selected_paths = {}
        local available = {}
        for _, entry in ipairs(current.entries) do available[entry.path] = true end
        for _, project in ipairs(group.projects) do
            assert(available[project] and not selected_paths[project], "BLOCKED_MISSING_OR_DUPLICATE_REQUIRED_GROUP_PROJECT: " .. project)
            selected_paths[project] = true
        end
    end
    local jobs = tonumber(option.get("jobs") or 2)
    local shard, count = tonumber(option.get("shard-index") or 1), tonumber(option.get("shard-count") or 1)
    assert(jobs and jobs % 1 == 0 and jobs >= 1 and jobs <= 4, "Use bounded main jobs 1..4")
    assert(shard and count and count % 1 == 0 and count >= 1 and count <= 128
        and shard % 1 == 0 and shard >= 1 and shard <= count, "Invalid deterministic shard")
    local base = path.absolute(option.get("output") or path.join(root, ".uwvm-ros/linux-ci"))
    os.mkdir(base)
    local output = path.join(base, path.filename(os.tmpfile({ramdisk = false})))
    assert(not os.exists(output), "Refusing to overwrite matrix results")
    os.mkdir(output)
    local report = {format = "uwvm-sdk-linux-example-shard-v1", status = "BLOCKED", shard_index = shard,
        shard_count = count, catalog_sha256 = hash.sha256(pinned):lower(), total_catalog_projects = #current.entries,
        aggregators = current.aggregators, scheduler = "Xmake async.runjobs", main_jobs = jobs, child_jobs = 1,
        coverage_scope = group and group.coverage_scope or "FULL_FROZEN_PUBLIC_CATALOG",
        group = group and group.id or nil, full_sdk_or_simulation_acceptance = false,
        xmake = {path = os.programfile(), sha256 = hash.sha256(os.programfile()):lower()}, entries = {}}
    local positions = {}
    for index, entry in ipairs(current.entries) do
        if (index - 1) % count + 1 == shard and (not selected_paths or selected_paths[entry.path]) then
            table.insert(report.entries, {catalog_index = index, path = entry.path,
                result = {status = "NOT_RUN", configure = {status = "NOT_RUN", executed = false},
                    build = {status = "NOT_RUN", executed = false},
                    test = {status = "NOT_RUN", executed = false, executed_tests = 0}}})
            positions[index] = #report.entries
        end
    end
    report.selected, report.passed = #report.entries, 0
    local function stop(message)
        report.status, report.diagnostic = "BLOCKED", message
        write_atomic(path.join(output, "shard.json"), report)
        write_atomic(path.join(base, "latest.json"), {output = output, status = report.status})
        raise(message .. ": " .. path.join(output, "shard.json"))
    end
    if report.selected == 0 then stop("BLOCKED_EMPTY_SHARD") end
    write_atomic(path.join(output, "progress.json"), report)
    local python = import("python_runtime", {rootdir = path.join(root, "tools/xmake"), anonymous = true}).resolve()
    local timeout = tonumber(option.get("timeout") or 300)
    assert(timeout and timeout >= 10 and timeout <= 1800, "Use per-command timeout 10..1800 seconds")
    local preflight_out, preflight_err = path.join(output, "admission.stdout"), path.join(output, "admission.stderr")
    local admitted = os.execv(python, {path.join(root, "tools/shared/python/example_process.py"), "--preflight"},
        {try = true, curdir = root, timeout = 30000, stdout = preflight_out, stderr = preflight_err})
    if admitted ~= 0 then
        report.diagnostic = "BLOCKED_PUBLIC_LINUX_EXECUTION_ADMISSION"
        report.admission_stdout = preflight_out
        report.admission_stderr = preflight_err
        for _, row in ipairs(report.entries) do
            row.result.diagnostic = report.diagnostic
        end
        stop(report.diagnostic)
    end
    report.admission = json.loadfile(preflight_out)
    local cache = path.join(output, "prepared-cache")
    os.mkdir(cache)
    -- Dependency preparation finishes before concurrent child configuration.
    -- An unavailable archive remains an explicit row, never a download or skip.
    report.preparation = {}
    local manifests = {}
    if group then
        for _, relative in ipairs(group.toolchain_manifests) do
            assert(not path.is_absolute(relative) and not relative:find("..", 1, true), "BLOCKED_GROUP_TOOLCHAIN_PATH")
            table.insert(manifests, path.join(root, relative))
        end
    else
        manifests = os.files(path.join(root, "share/toolchains/host/linux-x86_64/*.json"))
    end
    table.sort(manifests)
    for _, filename in ipairs(manifests) do
        local pin = json.loadfile(filename)
        if pin.format == "uwvm-host-tool-bundle-v1" then
            local row = {path = path.relative(filename, root), sha256 = hash.sha256(filename):lower(), status = "BLOCKED"}
            try {function()
                import("tool_bundle", {rootdir = path.join(root, "tools/xmake"), anonymous = true}).install(
                    filename, path.join(cache, "uwvm-ros/host-tools"))
                row.status = "PREPARED_VERIFIED_BYTES_ONLY"
            end, catch {function(error) row.diagnostic = tostring(error) end}}
            local diagnostic = path.join(cache, "uwvm-ros/host-tools", pin.sha256:lower() .. ".partial.decode.json")
            if os.isfile(diagnostic) then
                local destination = path.join(output, "preparation", path.basename(filename) .. ".decode.json")
                os.mkdir(path.directory(destination))
                os.cp(diagnostic, destination)
                row.decoder_diagnostic = {path = path.relative(destination, output), bytes = os.filesize(destination),
                    sha256 = hash.sha256(destination):lower()}
            end
            table.insert(report.preparation, row)
        end
    end
    -- Re-measure after sequential toolchain preparation before choosing pool size.
    local capacity_out, capacity_err = path.join(output, "capacity.stdout"), path.join(output, "capacity.stderr")
    local capacity_code = os.execv(python, {path.join(root, "tools/shared/python/example_process.py"), "--preflight"},
        {try = true, curdir = root, timeout = 30000, stdout = capacity_out, stderr = capacity_err})
    if capacity_code ~= 0 then stop("BLOCKED_LIVE_POOL_CAPACITY_ADMISSION") end
    local capacity = json.loadfile(capacity_out).measurement
    local memory = capacity.shared_values or capacity.cgroup_values or {}
    local available
    if memory["memory.max"] and memory["memory.max"] ~= "max" then
        available = tonumber(memory["memory.max"]) - tonumber(memory["memory.current"] or 0)
    end
    local physical_available = tonumber(capacity.meminfo:match("MemAvailable:%s+(%d+)"))
    if not physical_available then stop("BLOCKED_ACTUAL_POOL_MEMORY_MEASUREMENT") end
    physical_available = physical_available * 1024
    available = available and math.min(available, physical_available) or physical_available
    local demand = group and group.per_child_memory_budget_bytes or 4294967296
    local memory_jobs = math.floor((available - 1073741824) / demand)
    local cpu_jobs = #capacity.cpu_affinity
    local effective = math.min(jobs, memory_jobs, cpu_jobs)
    report.pool_capacity = {actual = capacity, per_child_memory_budget_bytes = demand,
        reserve_bytes = 1073741824, requested_jobs = jobs, effective_jobs = effective}
    if effective < 1 then stop("BLOCKED_ACTUAL_POOL_MEMORY_HEADROOM") end
    jobs = effective
    report.main_jobs = jobs
    local parallel, serial = {}, {}
    for index, entry in ipairs(current.entries) do
        if (index - 1) % count + 1 == shard and (not selected_paths or selected_paths[entry.path]) then
            local task = {entry = entry, catalog_index = index}
            table.insert(entry.scheduling_lane == "SERIAL_OFFICIAL_ENVIRONMENT" and serial or parallel, task)
        end
    end
    assert(#parallel + #serial > 0, "BLOCKED_EMPTY_SHARD")
    local function run_one(task)
        local request = {sdk_root = path.absolute(root), entry = task.entry, xmake = os.programfile(),
            xmake_sha256 = report.xmake.sha256, timeout_seconds = timeout, prepared_cache = cache,
            output = path.join(output, string.format("project-%06d", task.catalog_index))}
        local filename = path.join(output, string.format("request-%06d.json", task.catalog_index))
        json.savefile(filename, request)
        local stdout, stderr = filename .. ".stdout", filename .. ".stderr"
        try {function()
            local code = os.execv(python, {path.join(root, "tools/shared/python/example_process.py"), "--request", filename},
                {try = true, curdir = root, timeout = 3 * timeout * 1000 + 30000, stdout = stdout, stderr = stderr})
            local resultfile = path.join(request.output, "result.json")
            local result = os.isfile(resultfile) and json.loadfile(resultfile) or {status = "BLOCKED", diagnostic = "Missing fresh child lifecycle result"}
            report.entries[positions[task.catalog_index]] = {catalog_index = task.catalog_index, path = task.entry.path,
                supervisor_exit_code = code, result = result, result_path = resultfile,
                result_sha256 = os.isfile(resultfile) and hash.sha256(resultfile):lower() or nil,
                supervisor_stdout_sha256 = os.isfile(stdout) and hash.sha256(stdout):lower() or nil,
                supervisor_stderr_sha256 = os.isfile(stderr) and hash.sha256(stderr):lower() or nil}
        end, catch {function(error)
            report.entries[positions[task.catalog_index]] = {catalog_index = task.catalog_index, path = task.entry.path,
                result = {status = "BLOCKED_OR_FAILED", diagnostic = tostring(error),
                    configure = {status = "INTERRUPTED_OR_UNVERIFIED", verified_execution = false},
                    build = {status = "INTERRUPTED_OR_UNVERIFIED", verified_execution = false},
                    test = {status = "INTERRUPTED_OR_UNVERIFIED", verified_execution = false}},
                supervisor_stdout_sha256 = os.isfile(stdout) and hash.sha256(stdout):lower() or nil,
                supervisor_stderr_sha256 = os.isfile(stderr) and hash.sha256(stderr):lower() or nil}
        end}}
        write_atomic(path.join(output, "progress.json"), report)
    end
    if #parallel > 0 then
        runjobs("sdk-public-examples", function(index) run_one(parallel[index]) end,
            {total = #parallel, comax = jobs, isolate = true})
    end
    -- Official environments never run concurrently with ordinary children or
    -- one another. Their public VM admission/provider/lease remains mandatory.
    if #serial > 0 then
        runjobs("sdk-official-examples", function(index) run_one(serial[index]) end,
            {total = #serial, comax = 1, isolate = true})
    end
    table.sort(report.entries, function(a, b) return a.catalog_index < b.catalog_index end)
    report.selected = #parallel + #serial
    report.passed = 0
    for _, row in ipairs(report.entries) do
        if row.supervisor_exit_code == 0 and row.result.status == "PASS" then report.passed = report.passed + 1 end
    end
    assert(#report.entries == report.selected, "BLOCKED_MISSING_CHILD_RESULTS")
    report.status = report.passed == report.selected and "PASS" or "BLOCKED_OR_FAILED"
    write_atomic(path.join(output, "shard.json"), report)
    write_atomic(path.join(base, "latest.json"), {output = output, status = report.status})
    assert(report.status == "PASS", "BLOCKED_OR_FAILED_PUBLIC_EXAMPLES: " .. path.join(output, "shard.json"))
end
