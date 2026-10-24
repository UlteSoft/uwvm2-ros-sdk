-- SPDX-License-Identifier: Apache-2.0
-- @file run.lua
-- @brief Execute a manually configured installed runtime without policy changes.
-- @details This generic launcher reads an explicit runtime argument array and
-- appends the already compiled Wasm command. It adds no enable, grant, feature,
-- environment or native ROS switches. The deployment owner supplies them all.

-- @brief Validate one NUL-free argument array, retaining every original string.
-- @param values Dense JSON array of runtime arguments.
-- @return Validated original array.
function arguments(values)
    assert(type(values) == "table", "Runtime arguments must be an explicit JSON array")
    for key, value in pairs(values) do
        assert(type(key) == "number" and key >= 1 and key % 1 == 0 and key <= #values,
               "Runtime arguments must form a dense array")
        assert(type(value) == "string" and not value:find("%z"), "Runtime arguments must be NUL-free strings")
    end
    return values
end

-- @brief Run one installed runtime with the user's exact explicit options.
-- @param target Already built application.
-- @param root Installed SDK; retained for a uniform lifecycle signature.
-- @param context Validated provider and target selection.
function run(target, root, context)
    import("core.project.config")
    import("core.base.json")
    import("lib.detect.find_program")
    local filename = target:values("ros.sdk.run_config") or config.get("ros-run-config")
                     or os.getenv("UWVM_ROS_RUN_CONFIG")
    assert(filename and os.isfile(filename), "Prepare an explicit run configuration before xmake run")
    local deployment = json.loadfile(filename)
    assert(deployment.format == "uwvm-ros-command-run-v1", "Expected uwvm-ros-command-run-v1 deployment")
    assert(deployment.target == context.triple and deployment.backend == context.backend
           and deployment.distribution == context.distribution, "Deployment does not match the selected target/backend/distribution")
    local runtime = deployment.runtime or "uwvm2-ros"
    assert(type(runtime) == "string" and runtime ~= "", "Select the installed uwvm2-ros runtime")
    if runtime:find("/", 1, true) then
        runtime = path.absolute(runtime, path.directory(path.absolute(filename)))
    end
    runtime = assert(find_program(runtime), "Install uwvm2-ros separately for execution")
    local argv = {}
    table.join2(argv, arguments(deployment.runtime_arguments))
    for _, argument in ipairs(argv) do
        assert(argument ~= "--run" and argument ~= "-r", "The launcher appends the sole application --run argument")
    end
    table.join2(argv, {"--run", path.absolute(target:targetfile())})
    table.join2(argv, arguments(deployment.application_arguments))
    os.execv(runtime, argv)
end
