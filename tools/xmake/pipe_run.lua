-- SPDX-License-Identifier: Apache-2.0
-- Keep guest output on bounded pipes; only the host supervisor owns log files.
function execute(program, argv, options)
    local tools = os.scriptdir()
    local python = import("python_runtime", {rootdir = tools, anonymous = true}).resolve()
    assert(options.stdout and options.stderr and options.timeout and options.timeout >= 2000,
        "Guest test requires explicit output sinks and a finite deadline")
    local command = {"-B", path.join(tools, "../shared/python/pipe_exec.py"),
        "--stdout", path.absolute(options.stdout), "--stderr", path.absolute(options.stderr),
        "--timeout", tostring((options.timeout - 1000) / 1000), "--", program}
    table.join2(command, argv)
    local host = table.clone(options)
    host.stdout, host.stderr = nil, nil
    return os.execv(python, command, host)
end
