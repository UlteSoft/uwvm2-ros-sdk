-- Installed per-language helper; uses only the shared SDK profile/compiler API.
local json = import("core.base.json")

--- @brief Describe the complete original clock program, with explicit native rights.
-- @details The language application owns both20-frame loops. Catalog inspection
-- does not open ROS owners, start Kit, compile code or grant simulation authority.
-- @return One real application entry with finite address-space declaration.
-- @see build
function catalog()
    return {format="uwvm-sdk-examples-v1",examples={{id="clock-program",
        description="Complete original simulator-clock phases through the typed platform SDK",
        execution="requires-trusted-host-policy",virtual_address_mib=49152,
        required_permissions={"Exact loopback ClockControl call/observer/availability aliases, genuine native-bound full schema/QoS, finite quotas/deadlines, admitted real Kit owner and simulation-command opt-in"}}}}
end

local function profile(context, resolved)
    return {contract=resolved.profile,language=resolved.language_options,
        toolchain_id=resolved.toolchain_id,manifest=resolved.manifest}
end

local function source(context, relative)
    local file=path.join(context.sdk_root,"include/platform",relative)
    assert(os.isfile(file),"Real prepared installed SDK source missing: " .. file)
    return file
end

local function native_request(context, language)
    local file=os.getenv("UWVM_NVIDIA_EXAMPLE_CONFIG")
    assert(type(file)=="string" and path.is_absolute(file) and os.isfile(file),"Explicit absolute NVIDIA compiler configuration required")
    local settings=json.loadfile(file)
    assert(settings.format=="uwvm-nvidia-example-config-v1" and type(settings.version)=="string",
        "Explicit actual compiler version required")
    local options={version=settings.version,backend="ros2",compiler_argv={},linker_argv={},runtime={}}
    if language=="rust" then
        options.edition="2021";options.library_mode="std";options.panic="abort"
    else
        assert(type(settings.goroot)=="string" and path.is_absolute(settings.goroot),"Matching pinned Go root required")
        options.goroot=settings.goroot
    end
    local resolved=context.common.resolve(context.common.request(language,options),context.fresh("resolved.json"))
    return resolved,settings
end

local function rust(context)
    local resolved=native_request(context,"rust")
    local objects=context.fresh("rust-objects");os.mkdir(objects)
    local function compile(name,entry,dependencies,binary)
        local output=path.join(objects,binary and "clock-program.wasm" or ("lib" .. name .. ".rlib"))
        local argv={"--edition=2021","--target=wasm32-wasip1","-C","panic=abort","-C","opt-level=s",
            "--crate-name",name,"--crate-type",binary and "bin" or "rlib","-L","dependency=" .. objects}
        if name=="roswasm" then
            table.insert(argv,"--cfg");table.insert(argv,'feature="alloc"')
            table.insert(argv,"--cfg");table.insert(argv,'feature="ros2"')
        end
        for _,dependency in ipairs(dependencies) do
            table.insert(argv,"--extern");table.insert(argv,dependency)
        end
        table.insert(argv,entry);table.insert(argv,"-o");table.insert(argv,output)
        context.common.invoke(resolved,binary and "link" or "compile",argv)
        assert(os.isfile(output),"Actual Rust artifact missing")
        return name .. "=" .. output,output
    end
    local core=compile("roswasm",source(context,"ros2/rs/src/lib.rs"),{},false)
    local retained=compile("roswasm_owned_service",source(context,"ros2/rs/owned_service/src/lib.rs"),{core},false)
    local clock=compile("roswasm_isaac_sim_clock",source(context,"nvidia-isaac-sim/rs/clock-control/lib.rs"),{core,retained},false)
    local _,output=compile("clock_program",context.source("clock-program/main.rs"),{core,clock},true)
    return {artifacts={{name="main",path=output,kind="wasm",startup="command"}},profile=profile(context,resolved)}
end

local function tinygo(context)
    local resolved,settings=native_request(context,"tinygo")
    source(context,"nvidia-isaac-sim/tinygo/clock-control/generated/bounded_records.go")
    local selected=false
    for _,pin in ipairs(resolved.tool_pins) do
        if path.normalize(path.join(resolved.toolchain_root,pin.path))==path.normalize(path.join(settings.goroot,"bin/go")) then selected=true end
    end
    assert(selected,"Actual matching Go binary must belong to the shared provider's tool pins")
    local output=context.fresh("clock-program.wasm")
    local environment={GOMAXPROCS="1",GOTOOLCHAIN="local",GOPROXY="off",GOSUMDB="off",GOWORK="off",GOFLAGS="",
        GOROOT=settings.goroot,GOCACHE=context.fresh("go-cache"),GOMODCACHE=context.fresh("go-module-cache"),
        TINYGO_CACHE_DIR=context.fresh("tinygo-cache"),PATH=path.join(settings.goroot,"bin") .. ":/usr/bin:/bin"}
    local previous,old=os.curdir(),{}
    for key,value in pairs(environment) do old[key]=os.getenv(key);os.setenv(key,value) end
    os.cd(path.directory(context.source("clock-program/main.go")))
    local ok,message=pcall(function()
        context.common.invoke(resolved,"compile",{"build","-p=1","-target=wasi","-scheduler=none","-panic=trap",
            "-tags=ros2,rmw_service_v1","-o",output,"."})
    end)
    os.cd(previous)
    for key,_ in pairs(environment) do os.setenv(key,old[key]) end
    assert(ok,message)
    assert(os.isfile(output),"Actual TinyGo artifact missing")
    return {artifacts={{name="main",path=output,kind="wasm",startup="command"}},profile=profile(context,resolved)}
end

local function assemblyscript(context)
    local managed=import("tools.xmake.managed",{rootdir=context.sdk_root,anonymous=true})
    local inputs=context.config.get("ros-sdk-managed-inputs")
    local sha=context.config.get("ros-sdk-managed-inputs-sha256")
    assert(type(inputs)=="string" and path.is_absolute(inputs) and os.isfile(inputs)
        and type(sha)=="string" and #sha==64 and not sha:find("[^0-9a-f]"),"Exact real offline managed input closure required")
    local resolved_path=context.fresh("resolved.json")
    local resolved=managed.resolve(context.common,"as",{runtime_mode="assemblyscript",
        consumer={format="uwvm-managed-example-selection-v1",builder="as",sdk_root=context.sdk_root,
            platform="nvidia-isaac-sim",example="clock-program",backend=2,inputs=inputs,inputs_sha256=sha,
            entry="clock-program/main.ts",pure=false,ros2_rmw_service=true}},resolved_path)
    local out=context.fresh("managed-product")
    local driver=path.join(context.sdk_root,"tools/xmake/examples/managed_backend.py")
    managed.invoke(context.common,resolved,"link",{"-I","-S","-B",driver,"--sdk-root",context.sdk_root,
        "--resolved",resolved_path,"--inputs",inputs,"--inputs-sha256",sha,"--builder","as","--language","as",
        "--platform","nvidia-isaac-sim","--backend","2","--entry","clock-program/main.ts",
        "--ros2-rmw-service","--out",out})
    local receipt=json.loadfile(path.join(out,"build.json"))
    assert(receipt.status=="BUILT_AND_VALIDATED_NOT_GUEST_EXECUTED" and type(receipt.artifact)=="table"
        and type(receipt.artifact.path)=="string" and os.isfile(receipt.artifact.path),"Actual AS compiler/validator did not finish")
    return {artifacts={{name="main",path=receipt.artifact.path,bytes=receipt.artifact.bytes,sha256=receipt.artifact.sha256,
        kind="wasm",startup="command"}},profile=profile(context,resolved)}
end

--- @brief Compile actual application/SDK/shared transport through the real provider.
-- @details wasm32 WASIp1 command, one thread and no EH are required; unsupported
-- profiles fail without fallback. No Guest, Kit, native service or policy runs.
-- Rust compiles actual core/retained/platform crates; TinyGo uses installed Go
-- modules; AS invokes the shared closed managed compiler/validator backend.
-- @param[in] context Shared installed SDK example context, retained through return.
-- @param[in] entry Exact clock-program catalog entry.
-- @return Actual Wasm artifact/profile receipt; ordinary build failure propagates.
-- @see catalog
function build(context,entry)
    assert(entry.id=="clock-program" and context.selection.platform=="nvidia-isaac-sim","Exact clock selection required")
    assert((context.config.get("sdk-target") or "wasm32-wasip1")=="wasm32-wasip1"
        and (context.config.get("sdk-startup") or "command")=="command"
        and context.config.get("sdk-exceptions")~=true and context.config.get("sdk-threads")~=true,
        "This real clock SDK requires wasm32 WASIp1 command, no EH and one thread")
    local language=context.selection.language
    if language=="rs" then return rust(context) end
    if language=="tinygo" then return tinygo(context) end
    assert(language=="as","Unsupported language; no cross-language relabeling")
    return assemblyscript(context)
end
