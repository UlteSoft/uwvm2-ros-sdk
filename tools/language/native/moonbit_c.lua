-- Compile the genuine MoonBit C backend and its pinned runtime for WASI.
-- The source action owns package/FFI selection; it grants no host authority.
function build(target, root, action)
    import("core.base.json")
    local core = import("core", {rootdir=path.join(root,"tools/language/native"),anonymous=true})
    local closure, programs = core.frontend(root,"moonbit")
    local cache=path.join(path.absolute(target:scriptdir()),".uwvm-ros/native",target:name(),"moonbit-c")
    os.mkdir(cache)
    local function invoke(arguments)
        if core.debug_info(root).enabled() then table.insert(arguments, "-g") end
        os.vrunv(programs.loader,table.join({"--library-path",path.join(closure,"runtime"),programs.moonc},arguments),{envs={MOON_HOME=closure}})
    end
    local standard=json.loadfile(path.join(root,"tools/language/native/moonbit_c_core.json"))
    -- Bootstrap abort and builtin without importing a previous builtin interface.
    for _, name in ipairs({"abort", "builtin"}) do
        for _, extension in ipairs({".mi", ".core"}) do
            os.tryrm(path.join(cache, name, name..extension))
        end
    end
    local cores, interfaces={},{}
    for _, package in ipairs(standard.packages) do
        local directory=path.join(cache,package.name)
        os.mkdir(directory)
        local arguments={"build-package"}
        for _, file in ipairs(package.sources) do
            local source=path.join(closure,file.path)
            assert(hash.sha256(source):lower()==file.sha256,"Changed MoonBit native core source: "..file.path)
            table.insert(arguments,source)
        end
        local output=path.join(directory,package.name..".core")
        table.join2(arguments,{"-target","native","-pkg","moonbitlang/core/"..package.name,"-std-path",cache,"-o",output})
        if package.name=="builtin" then table.join2(arguments,{"-i",interfaces.abort..":abort"}) end
        invoke(arguments)
        interfaces[package.name]=path.join(directory,package.name..".mi")
        table.insert(cores,output)
    end
    local names={}
    local function compile(name,sources,dependencies,main)
        assert(type(name)=="string" and name:match("^[A-Za-z_][A-Za-z0-9_/-]*$") and not names[name],"Invalid or repeated MoonBit package")
        names[name]=true
        assert(#sources>0,"Declare actual MoonBit sources")
        local output=path.join(cache,name:gsub("/","_")..".core")
        local arguments=table.join({"build-package"},sources,{"-target","native","-pkg",name,"-std-path",cache,"-o",output})
        for _, dependency in ipairs(dependencies or {}) do
            local source=type(dependency)=="table" and dependency.source or dependency
            local alias=type(dependency)=="table" and dependency.alias or dependency
            assert(type(alias)=="string" and alias:match("^[A-Za-z_][A-Za-z0-9_]*$"),"Invalid MoonBit import alias")
            table.join2(arguments,{"-i",assert(interfaces[source],"Missing ordered MoonBit dependency")..":"..alias})
        end
        if main then table.insert(arguments,"-is-main") end
        invoke(arguments);table.insert(cores,output)
        return path.join(cache,name:gsub("/","_")..".mi")
    end
    for _,package in ipairs(action.packages or {}) do
        assert(type(package.alias)=="string" and package.alias:match("^[A-Za-z_][A-Za-z0-9_]*$") and not interfaces[package.alias],"Invalid or repeated package alias")
        local sources={}
        for _,relative in ipairs(package.sources or {}) do table.insert(sources,core.installed(root,relative)) end
        interfaces[package.alias]=compile(package.name,sources,package.dependencies,false)
    end
    local sources={}
    for _,source in ipairs(target:sourcefiles()) do
        assert(path.extension(source)==".mbt","Declare a real MoonBit entry source")
        table.insert(sources,path.absolute(source))
    end
    local main=action.main_package or "uwvm/command"
    compile(main,sources,action.entry_dependencies,true)
    local generated=path.join(cache,"command.c")
    invoke(table.join({"link-core"},cores,{"-target","native","-main",main,"-o",generated}))
    local runtime=core.installed(root,"lib/language/moonbit/source")
    for _,file in ipairs(json.loadfile(path.join(runtime,"source.json")).files) do
        assert(hash.sha256(path.join(runtime,file.path)):lower()==file.sha256,"Changed MoonBit runtime source")
    end
    local selected, llvm=core.llvm(root,"wasm32-wasip1","noeh")
    local context={root=root,cache=cache,action=action,selected=selected,programs=llvm,output=path.absolute(target:targetfile())}
    context.cflags=core.cflags(root,selected,action)
    table.join2(context.cflags,{"-I"..path.join(runtime,"include"),"-ffunction-sections","-fdata-sections"})
    local objects=core.infrastructure(context)
    for index,source in ipairs({generated,path.join(runtime,"runtime.c"),path.join(runtime,"wasip1.c")}) do
        local object=path.join(cache,"moonbit-"..index..".o")
        os.vrunv(llvm.cc,table.join(context.cflags,{"-std=c11","-Wno-missing-braces","-Wno-unused-function","-Wno-unused-parameter","-Wno-unused-variable","-c",source,"-o",object}))
        table.insert(objects,object)
    end
    os.mkdir(path.directory(context.output))
    core.link(context,objects)
end

