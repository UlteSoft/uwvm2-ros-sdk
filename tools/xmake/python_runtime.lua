-- SPDX-License-Identifier: Apache-2.0
-- Reuse a suitable shared interpreter, or restore the pinned SDK host bundle
-- with Xmake alone. Never replace an invalid explicit selection.
function _version(program)
    local version, failure
    try {
        function()
            version = os.iorunv(program, {"-I", "-S", "-B", "-c",
                "import hashlib,sys,traceback; assert sys.version_info >= (3,11) and hasattr(hashlib,'file_digest'); traceback.TracebackException(ValueError,ValueError(),None,max_group_width=1,max_group_depth=1); print(sys.version.split()[0])"})
        end,
        catch {function(errors) failure = errors end}
    }
    return version, failure
end

function _restore()
    local tools = os.scriptdir()
    local root = path.normalize(path.join(tools, "../.."))
    local manifest = path.join(root, "share/toolchains/host", os.host() .. "-" .. os.arch(), "python-supervisor.json")
    assert(os.isfile(manifest), "BLOCKED_SDK_PYTHON_REQUIRED: install this SDK distribution's matching Python supervisor host bundle or select Python >=3.11 with UWVM_SDK_PYTHON")
    local home = os.getenv("XDG_CACHE_HOME")
    if not home then
        home = path.join(assert(os.getenv("HOME"), "Set HOME or XDG_CACHE_HOME for the shared tool cache"), ".cache")
    end
    local _, programs = import("tool_bundle", {rootdir=tools, anonymous=true}).install(
        manifest, path.join(home, "uwvm-ros/host-tools"))
    return assert(programs.python3, "Pinned supervisor bundle must declare python3")
end

function resolve()
    import("lib.detect.find_program")
    local configured = os.getenv("UWVM_SDK_PYTHON")
    local program
    if configured then
        assert(path.is_absolute(configured) and os.isfile(configured),
            "BLOCKED_SDK_PYTHON_PATH: UWVM_SDK_PYTHON must name an existing absolute interpreter")
        program = configured
    else
        program = find_program("python3")
    end
    local version, failure
    if program then version, failure = _version(program) end
    if not version and not configured then
        program = _restore()
        version, failure = _version(program)
    end
    assert(version, "BLOCKED_SDK_PYTHON_VERSION: " .. program
        .. " must provide Python >=3.11, hashlib.file_digest and exception-group tracebacks; " .. tostring(failure))
    return program
end
