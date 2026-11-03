-- SPDX-License-Identifier: Apache-2.0
local sdk = os.getenv("UWVM_ROS_SDK_ROOT")
if not sdk or not os.isfile(path.join(sdk, "tools/xmake/ros.lua")) then
    target("installed-sdk-required")
        set_kind("phony")
        on_load(function() raise("Set UWVM_ROS_SDK_ROOT to the installed SDK") end)
    target_end()
    return
end
includes(path.join(sdk, "tools/xmake/ros.lua"))
set_policy("run.autobuild", false)
set_policy("test.return_zero_on_failure", false)

local function source(name, kind, file, memory, dependencies)
    target(name)
        if kind == "core-preload" then set_kind("shared") else set_wasm_kind(kind) end
        set_language("wat")
        set_ros_platform("wasi")
        set_plat("wasm-wasip1")
        set_arch("wasm32")
        set_wasm_exceptions("noeh")
        add_files(file)
        if memory then set_wasm_memory_import("memory-channel", "memory") end
        if kind == "independent" then
            set_wasm_features({"multi-memory", "bulk-memory"})
        elseif memory then
            -- WABT requires the explicit indexed-memory text feature even
            -- when this module imports only communication memory index zero.
            set_wasm_features({"multi-memory"})
        end
        for _, dependency in ipairs(dependencies or {}) do add_deps(dependency) end
        on_build(function(target)
            import("core.base.option")
            import("core.base.json")
            local evidence = import("example", {rootdir = path.join(sdk, "tools/language/wat"), anonymous = true})
            local inputs = evidence.source_inputs(target, sdk)
            local receipt = path.join(target:dependir(), "library-kind-build.json")
            if option.taskname() == "test" then
                evidence.verify_build(target, inputs)
            else
                import("dispatch", {rootdir = path.join(sdk, "tools/xmake"), anonymous = true}).build(target)
                os.mkdir(path.directory(receipt))
                json.savefile(receipt, {format = "uwvm-sdk-library-kind-build-v1", inputs = inputs,
                    artifact_sha256 = hash.sha256(target:targetfile()):lower(), runtime_qualified = false})
            end
        end)
    target_end()
end

source("wat-static-math", "static", "static_math.wat")
source("wat-static-consumer", "binary", "static_consumer.wat", false, {"wat-static-math"})
source("memory-channel", "core-preload", "channel.wat")
-- Imports bind only in the explicit deployment. These libraries do not require
-- a separate channel instance when the main module owns that channel.
source("offset-dynamic", "dynamic", "dynamic.wat", true)
source("private-copy", "independent", "independent.wat", true)
source("wat-memory-consumer", "binary", "memory_consumer.wat", true,
       {"memory-channel", "offset-dynamic", "private-copy"})
source("wat-dynamic-two", "binary", "dynamic_two.wat", false, {"offset-dynamic"})
source("wat-independent-two", "binary", "independent_two.wat", false, {"private-copy"})
source("wat-independent-three", "binary", "independent_three.wat", false, {"private-copy"})

-- A single test target keeps the five independent VM sessions in a fixed order,
-- even when Xmake schedules test targets concurrently.
target("wat-library-kinds-tests")
    set_kind("phony")
    set_toolchains("ros.wasm.command")
    add_deps("wat-static-math", "wat-static-consumer", "memory-channel", "offset-dynamic", "private-copy",
             "wat-memory-consumer", "wat-dynamic-two", "wat-independent-two", "wat-independent-three")
    add_tests("five-finite-serial-library-graphs")
    uwvm_register_required_test("five-finite-serial-library-graphs", "guest-component")
    on_test(function(target, opt)
        import("lib.detect.find_program")
        import("core.base.json")
        local python = import("python_runtime", {rootdir = path.join(sdk, "tools/xmake"), anonymous = true}).resolve()
        local configuration = os.getenv("UWVM_ROS_LIBRARY_TEST_CONFIG")
        assert(configuration and os.isfile(configuration), "Supply an explicit pinned library-test deployment")
        local evidence = import("example", {rootdir = path.join(sdk, "tools/language/wat"), anonymous = true})
        for _, dependency in ipairs(target:orderdeps()) do
            evidence.verify_build(dependency, evidence.source_inputs(dependency, sdk))
        end
        local prefix = path.join(target:dependir(), "library-tests", path.filename(os.tmpfile({ramdisk = false})))
        os.mkdir(path.directory(prefix))
        local good, stopped, outputs, errors = true, false, {}, {}
        for _, entry in ipairs({{"static", "wat-static-consumer"}, {"shared-channel", "wat-memory-consumer"},
            {"dynamic-two", "wat-dynamic-two"}, {"independent-two", "wat-independent-two"},
            {"independent-three", "wat-independent-three"}}) do
            if not stopped then
                local output = prefix .. "-" .. entry[1]
                local stdout, stderr = output .. ".suite.stdout", output .. ".suite.stderr"
                local code = os.execv(python, {path.join(target:scriptdir(), "test_library_kinds.py"),
                    "--case", entry[1], "--wasm", path.absolute(assert(target:dep(entry[2])):targetfile()),
                    "--config", path.absolute(configuration), "--output", path.absolute(output)},
                    {try = true, timeout = 180000, curdir = target:scriptdir(), stdout = stdout, stderr = stderr})
                table.insert(outputs, os.isfile(stdout) and io.readfile(stdout) or "")
                table.insert(errors, os.isfile(stderr) and io.readfile(stderr) or "")
                good = good and code == 0
                local record = path.join(output, "result.json")
                -- An unresolved previous session must be retired by the outer
                -- guardian before another graph is allowed to start.
                stopped = not os.isfile(record) or not json.loadfile(record).session_retired
            end
        end
        opt.stdout, opt.stderr = table.concat(outputs, "\n"), table.concat(errors, "\n")
        if not good or stopped then opt.errors = "Actual serial Wasm library graphs failed/BLOCKED: " .. prefix end
        return good and not stopped
    end)
target_end()
