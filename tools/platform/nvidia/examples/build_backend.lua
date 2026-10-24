-- Internal local example helper; every invocation remains an argv array.
--- @brief Resolve the explicitly selected NVIDIA backend configuration file.
-- @details Requires an absolute existing path from UWVM_NVIDIA_EXAMPLE_CONFIG;
-- it does not select a model, toolchain, SDK version, network or native right.
-- Synchronous discovery requires the caller's native file-read permission.
-- @return Configuration path; assertions reject absent or relative paths.
-- @see backend
function configuration()
    local value = os.getenv("UWVM_NVIDIA_EXAMPLE_CONFIG")
    assert(value and path.is_absolute(value) and os.isfile(value),
        "Set UWVM_NVIDIA_EXAMPLE_CONFIG to the explicit pinned backend JSON file")
    return value
end

--- @brief Invoke the installed real backend with one exact JSON request.
-- @details Keeps all process arguments as argv elements, binds the installed SDK
-- and fresh output directory, then requires a real completed artifact receipt.
-- TinyGo staging alone is explicitly source preparation, never build credit.
-- No owner, model, simulator or Wasm Guest is executed by this helper.
-- @param[in] context Retained shared xmake context and selected Python dispatcher.
-- @param[in,out] request Owned operation record augmented with explicit paths;
-- do not reuse concurrently or submit untrusted remote operation selectors.
-- @return Actual backend receipt. Native tool/source/version failures propagate;
-- caller provides finite whole-process bounds and native file/build access.
-- @see configuration
-- @see guest
function backend(context, request)
    local json = import("core.base.json")
    request.configuration = configuration()
    request.sdk_root = context.sdk_root
    request.output_dir = context.fresh("backend")
    local file = context.fresh("backend-request.json")
    json.savefile(file, request)
    os.execv(context.config.get("sdk-python") or "python3",
        {"-I", "-S", "-B", path.join(context.sdk_root,"tools/platform/nvidia/examples/build_backend.py"), file})
    local receipt = json.loadfile(path.join(request.output_dir, "backend-receipt.json"))
    assert(receipt.status == "BUILT_NOT_EXECUTED" or
        (request.operation == "tinygo-stage" and receipt.status == "SOURCE_PREPARED_NOT_COMPILED"),
        "Actual selected backend did not finish")
    return receipt
end

--- @brief Compile one actual C++ Guest target through the shared profile and CMake.
-- @details Selects genuine C++20/23/26 wasm32 command startup without downgrades.
-- Exports distinct compile/link configurations from the shared resolved provider.
-- Positive artifacts also require the actual native-bound family receipt.
-- This build does not grant Runtime/Gateway authority or start a Guest.
-- @param[in] context Bound shared context retained until synchronous completion.
-- @param[in] entry Exact catalog entry, including its independent positive flag.
-- @param[in] source Installed application CMake source directory.
-- @param[in] target Exact retained CMake executable target.
-- @param[in] family Actual installed full generated record-family directory.
-- @return Real Wasm artifact and selected profile; all tool/binding errors fail.
-- @see backend
-- @see run_empty
function guest(context, entry, source, target, family)
    local cpp = import("tools.xmake.cpp", {rootdir=context.sdk_root})
    local standard = context.config.get("ros-sdk-cpp-standard") or "20"
    assert(standard == "20" or standard == "23" or standard == "26",
        "These retained complete C++ applications require C++20, C++23 or the real C++26 draft mode")
    assert((context.config.get("sdk-target") or "wasm32-wasip1") == "wasm32-wasip1",
        "This source's checked I/O requires the explicit wasm32 WASIp1 profile")
    assert((context.config.get("sdk-startup") or "command") == "command", "Actual command startup required")
    local resolved_path = context.fresh("resolved.json")
    local resolved = cpp.resolve(context.sdk_root, standard, resolved_path, {common=context.common})
    local export_path = context.fresh("clang-export.json")
    local exported = context.common.export_clang(resolved, context.fresh("clang-config"), export_path)
    local receipt = backend(context, {operation="cmake-guest", source_dir=source,
        target=target, standard=standard, positive=entry.positive == true,
        resolved=resolved_path, clang_commands=export_path, bundle=family,
        family_receipt=path.join(context.sdk_root,"share/platform",context.selection.platform,
            "ros2",path.filename(family),"generation.vendor.json")})
    return {artifacts={{name="main",path=receipt.artifact,kind="wasm",startup="command"}},
        profile={contract=resolved.profile,language=resolved.language_options,
            toolchain_id=resolved.toolchain_id,manifest=resolved.manifest}}
end

--- @brief Run the actual built command Guest with no additional authority.
-- @details Requires the exact empty-authority catalog entry and one real Wasm
-- artifact. Uses the selected Runtime, hides host APIs/environment and denies
-- extra clocks/random/signals/scheduler/stdio-full rights. Ordinary stdio is
-- retained. This does not admit ROS, model, network or device operations.
-- @param[in] context Bound run context with explicit actual Runtime executable.
-- @param[in] entry Exact default-denial or CPU catalog entry, retained unchanged.
-- @param[in] receipt Dispatcher-validated successful artifact receipt.
-- @return No value; actual nonzero Runtime exit propagates. Caller supplies an
-- outer finite process owner and the declared virtual-address allowance.
-- @see guest
function run_empty(context, entry, receipt)
    assert(entry.execution == "guest-empty-authority" and #entry.required_permissions == 0,
        "No implicit ROS, network, model or device grant")
    assert(#receipt.artifacts == 1 and receipt.artifacts[1].name == "main" and receipt.artifacts[1].kind == "wasm",
        "One actual command Guest required")
    local argv={"--runtime-int","-Rct","0","--wasm-set-main-module-name","main",
        "--wasip1-global-disable","--wasip1-global-noinherit-system-environment",
        "--wasip1-single-create","main","--wasip1-single-enable","main",
        "--wasip1-single-hide-host-api","main","--wasip1-single-noinherit-system-environment","main"}
    for _, right in ipairs({"realtime-clock","monotonic-clock","process-clock","thread-clock",
        "random","proc-raise","sched-yield","stdio-full-rights"}) do
        table.insert(argv,"--wasip1-single-deny"); table.insert(argv,"main"); table.insert(argv,right)
    end
    table.insert(argv,"--run"); table.insert(argv,receipt.artifacts[1].path)
    os.execv(context.runtime,argv)
end
