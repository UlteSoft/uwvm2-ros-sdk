-- @file native_languages.lua
-- @brief Compile complete genuine native-source Unitree applications with Xmake.
-- @details Language frontends own their application records, codecs and errors.
-- LLVM 23 compiles scalar ABI infrastructure, generated C and final commands.
-- Frontend and native-loader closures are selected from audited SDK bundles.

-- @brief Identify a maintained genuine source-language producer.
-- @param language Exact public set_language value.
-- @return True only for an implemented actual frontend.
function supports(language)
    local maintained = {
        zig = true,
        d = true,
        nim = true,
        odin = true,
        swift = true,
        haskell = true,
    }
    return maintained[language] == true
end

-- @brief Validate exact source, middleware schema and Wasm target selection.
-- @param target Current ordinary Xmake application target.
-- @param root Absolute installed SDK root.
-- @details Unsupported target widths, WASI profiles and middleware schemas fail
-- before invoking a compiler. No other language or target is substituted.
function configure(target, root)
    local language = target:values("ros.sdk.language")
    assert(supports(language), "No genuine native-source compiler for " .. tostring(language))
    import("core.project.config")
    local profile = target:values("ros.sdk.exception_profile") or config.get("ros-exceptions") or "noeh"
    assert(profile == "noeh", language .. " requires the qualified noeh command profile; Wasm EH is not qualified")
    local requested_platform = config.get("plat") or target:plat()
    local requested_triple = config.get("ros-target") or "detect"
    assert(target:arch() == "wasm32", language .. " has no qualified memory64 producer")
    assert(
        target:plat() == "wasm-wasip1" and requested_platform == "wasm-wasip1",
        language .. " requires the exact single-threaded WASI Preview 1 profile"
    )
    assert(
        requested_triple == "detect" or requested_triple == "wasm32-wasip1",
        "The explicit Unitree compiler triple must match wasm32-wasip1"
    )
    local backend = target:values("ros.sdk.backend")
    assert(backend == "ros1" or backend == "ros2", "Select the actual original ROS import family")
    local distribution = target:values("ros.sdk.distribution")
    assert(
        (backend == "ros1" and distribution == "noetic") or (backend == "ros2" and distribution == "jazzy"),
        "This native-source Unitree producer admits the exact Noetic/Jazzy families"
    )
    local extensions = {
        zig = ".zig",
        d = ".d",
        nim = ".nim",
        odin = ".odin",
        swift = ".swift",
        haskell = ".hs",
    }
    local sources = target:sourcefiles()
    assert(
        #sources == 1 and path.extension(sources[1]) == extensions[language],
        "Declare exactly one actual " .. language .. " command entry"
    )
    target:set("values", "ros.sdk.root", root)
    target:set("values", "ros.sdk.triple", "wasm32-wasip1")
    target:set("values", "ros.sdk.producer", "genuine-native-source")
    target:set("kind", "binary")
    target:set("extension", ".wasm")
    target:set("filename", target:name() .. ".wasm")
    target:set("targetdir", path.join(path.absolute(target:scriptdir()), "build"))
    target:set("toolchains", "ros.wasm.command")
    local native_rules = {
        "dlang",
        "dlang.build",
        "dlang.build.optimization",
        "swift",
        "swift.build",
    }
    for _, name in ipairs(native_rules) do
        if target:rule(name) then
            local replacement = target:rule("ros.wasm.source"):clone()
            replacement:name_set(name)
            target:rule_add(replacement)
        end
    end
end

-- @brief Restore one exact compiler closure or honor an explicit development path.
-- @param root Installed SDK containing pinned host manifests.
-- @param language Genuine native source-language identifier.
-- @param cache Private build cache used only for intermediate artifacts.
-- @return Actual compiler executable and complete extracted bundle directory.
-- @details Distribution builds require an audited native language bundle. An
-- absolute UWVM_NATIVE_<LANGUAGE> path is an explicit development override; it
-- does not qualify a clean host or imply that its dependencies are bundled.
function _compiler(root, language, cache)
    local selected = os.getenv("UWVM_NATIVE_" .. language:upper())
    if selected then
        assert(path.is_absolute(selected) and os.isfile(selected), "Use an existing absolute native compiler path")
        return selected, nil
    end
    local manifest =
        path.join(root, "share/toolchains/host", os.host() .. "-" .. os.arch(), "native-" .. language .. ".json")
    assert(os.isfile(manifest), "Install the pinned native-" .. language .. " SDK host-tool manifest")
    local installer = import("tool_bundle", {
        rootdir = path.join(root, "tools/xmake"),
        anonymous = true,
    })
    import("core.project.config")
    local home = os.getenv("XDG_CACHE_HOME")
    if not home then
        home = path.join(assert(os.getenv("HOME"), "Set HOME for the native compiler cache"), ".cache")
    end
    local tool_cache = config.get("ros-tool-cache") or path.join(home, "uwvm-ros/host-tools")
    local directory, programs = installer.install(manifest, tool_cache)
    return assert(programs.compiler, "Native host bundle omitted its actual compiler"), directory
end

-- @brief Select the shared LLVM 23 native tool closure.
-- @param root Installed SDK containing the shared C-family bundle manifest.
-- @return Actual compiler and linker programs.
-- @details Paired absolute overrides support isolated development qualification.
-- Normal SDK builds use the same Xmake-only installer as C-family applications.
function _llvm(root)
    local cc = os.getenv("UWVM_NATIVE_LLVM23")
    local linker = os.getenv("UWVM_NATIVE_LINKER23")
    if cc or linker then
        assert(cc and linker, "Select both explicit LLVM 23 compiler and linker")
        assert(path.is_absolute(cc) and os.isfile(cc), "Use an existing absolute LLVM 23 compiler")
        assert(path.is_absolute(linker) and os.isfile(linker), "Use an existing absolute LLVM 23 linker")
        return cc, linker
    end
    local provider = import("cfamily", {
        rootdir = path.join(root, "tools/xmake"),
        anonymous = true,
    })
    local programs = provider.tools(root)
    return assert(programs.cc), assert(programs.ld)
end

-- @brief Resolve a complete Nim standard-library source closure.
-- @param compiler Actual selected compiler executable.
-- @param bundle Complete extracted native bundle, when present.
-- @return Existing absolute Nim library directory containing system and C headers.
function _nim_library(compiler, bundle)
    local library = os.getenv("UWVM_NATIVE_NIM_LIB")
    local candidates = {
        path.join(path.directory(compiler), "../lib/nim/lib"),
        path.join(path.directory(compiler), "../lib"),
    }
    if bundle then
        table.insert(candidates, 1, path.join(bundle, "original/lib/nim/lib"))
    end
    for _, candidate in ipairs(candidates) do
        if not library and os.isfile(path.join(candidate, "system.nim")) then
            library = path.normalize(candidate)
        end
    end
    assert(
        library and os.isfile(path.join(library, "nimbase.h")),
        "Install the complete pinned Nim standard-library closure"
    )
    return library
end

-- @brief Compile one real source application into its final Wasm command.
-- @param target Validated ordinary Xmake application.
-- @param root Complete installed SDK.
-- @details Private intermediates remain outside the output directory. At most
-- two frontend jobs are used. Compilation never creates middleware owners,
-- starts ROS, installs uwvm2, or changes deployment grants.
function build(target, root)
    configure(target, root)
    local language = target:values("ros.sdk.language")
    local directory = path.absolute(target:scriptdir())
    local cache = path.join(directory, ".uwvm-ros/native-" .. language .. "-" .. target:values("ros.sdk.backend"))
    local output = path.absolute(target:targetfile())
    local source = path.absolute(target:sourcefiles()[1])
    local include = path.join(root, "include/platform")
    local sysroot_sdk = os.getenv("UWVM_NATIVE_SYSROOT_SDK") or root
    local sysroot = path.join(sysroot_sdk, "lib/wasm/llvm23/noeh/wasm32-wasip1")
    local headers = path.join(sysroot_sdk, "include/wasm/llvm23/noeh/wasm32-wasip1")
    local resources = path.join(sysroot_sdk, "lib/language/cfamily/clang/23")
    assert(os.isdir(sysroot) and os.isdir(headers), "Install the complete LLVM 23 wasm32-wasip1 SDK closure")
    os.mkdir(cache)
    os.mkdir(path.directory(output))
    local cc, linker = _llvm(root)
    local version = os.iorunv(cc, { "--version" })
    assert(version:find("clang version 23%.") ~= nil, "ABI infrastructure and generated C require LLVM 23")
    local common = {
        "--target=wasm32-wasip1",
        "--sysroot=" .. sysroot,
        "-resource-dir=" .. resources,
        "-isystem",
        headers,
        "-O2",
        "-Wall",
        "-Wextra",
        "-Werror",
        "-I",
        path.join(root, "include"),
    }
    local adapter = path.join(cache, "abi.o")
    local adapter_args = table.join(common, {
        "-std=c11",
        "-D_POSIX_C_SOURCE=200809L",
        "-c",
        path.join(root, "src/language/unitree-native/abi.c"),
        "-o",
        adapter,
    })
    if language == "nim" then
        table.insert(adapter_args, "-DUWVM_UNITREE_NATIVE_NIM")
    elseif language == "haskell" then
        table.insert(adapter_args, "-DUWVM_UNITREE_NATIVE_HASKELL")
    end
    if target:values("ros.sdk.backend") == "ros1" then
        table.insert(adapter_args, "-DUWVM_UNITREE_NATIVE_ROS1")
    end
    os.vrunv(cc, adapter_args)
    local object = path.join(cache, "application.o")
    local compiler, bundle = _compiler(root, language, cache)
    local linking = table.join(common, {
        "-fuse-ld=" .. linker,
        "-Wl,--stack-first",
        "-Wl,-z,stack-size=1048576",
        "-Wl,--max-memory=67108864",
        "-Wl,--threads=1",
    })
    if language == "zig" then
        os.vrunv(compiler, {
            "build-obj",
            "-O",
            "ReleaseSafe",
            "-target",
            "wasm32-freestanding",
            "-fno-stack-check",
            "--dep",
            "unitree",
            "--dep",
            "unitree_records",
            "--dep",
            "unitree_wire",
            "-Mroot=" .. source,
            "-target",
            "wasm32-freestanding",
            "--dep",
            "unitree_core",
            "--dep",
            "unitree_records",
            "-Munitree=" .. path.join(include, "unitree/zig", target:values("ros.sdk.backend"), "observation.zig"),
            "-target",
            "wasm32-freestanding",
            "--dep",
            "unitree_wire",
            "-Munitree_core=" .. path.join(include, "unitree/zig/observation.zig"),
            "-target",
            "wasm32-freestanding",
            "--dep",
            "unitree_wire",
            "-Munitree_records=" .. path.join(include, "unitree/zig", target:values("ros.sdk.backend"), "records.zig"),
            "-target",
            "wasm32-freestanding",
            "-Munitree_wire=" .. path.join(include, "unitree/zig/wire.zig"),
            "-femit-bin=" .. object,
            "--cache-dir",
            path.join(cache, "zig"),
            "--global-cache-dir",
            path.join(cache, "zig-global"),
        })
    elseif language == "d" then
        local arguments = {
            "-mtriple=wasm32-unknown-wasi",
            "-betterC",
            "-O2",
            "-release",
            "-boundscheck=off",
            "-I=" .. include,
            "-i=unitree.d.observation",
            "-i=unitree.d." .. target:values("ros.sdk.backend") .. ".observation",
            "-i=unitree.d." .. target:values("ros.sdk.backend") .. ".records",
            "-i=unitree.d.wire",
            "-c",
            source,
            "-of=" .. object,
        }
        if bundle then
            table.insert(arguments, 1, "-I=" .. path.join(bundle, "original/lib/ldc/include/d"))
            table.insert(arguments, 1, "-conf=" .. path.join(bundle, "original/etc/ldc2.conf"))
        end
        os.vrunv(compiler, arguments)
    elseif language == "nim" then
        local library = _nim_library(compiler, bundle)
        local generated = path.join(cache, "nim")
        os.tryrm(generated)
        os.mkdir(generated)
        os.vrunv(compiler, {
            "c",
            "--os:any",
            "--cpu:wasm32",
            "--compileOnly:on",
            "--noMain:on",
            "--mm:none",
            "--threads:off",
            "--exceptions:goto",
            "--stackTrace:off",
            "--lineTrace:off",
            "--panics:on",
            "-d:release",
            "-d:useMalloc",
            "-d:noSignalHandler",
            "--warning:GcMem:off",
            "--skipCfg:on",
            "--skipUserCfg:on",
            "--skipParentCfg:on",
            "--skipProjCfg:on",
            "--lib:" .. library,
            "--nimcache:" .. generated,
            "--path:" .. include,
            source,
        })
        local objects = { adapter }
        local generated_sources = os.files(path.join(generated, "*.c"))
        assert(#generated_sources > 0, "The genuine Nim frontend emitted no generated C")
        for index, generated_source in ipairs(generated_sources) do
            local generated_object = path.join(cache, "nim-" .. index .. ".o")
            os.vrunv(
                cc,
                table.join(common, {
                    "-w",
                    "-I",
                    library,
                    "-I",
                    directory,
                    "-c",
                    generated_source,
                    "-o",
                    generated_object,
                })
            )
            table.insert(objects, generated_object)
        end
        os.vrunv(cc, table.join(linking, objects, { "-o", output }))
        return
    elseif language == "odin" then
        os.vrunv(compiler, {
            "build",
            directory,
            "-target:wasi_wasm32",
            "-build-mode:obj",
            "-no-entry-point",
            "-collection:unitree=" .. path.join(include, "unitree"),
            "-collection:native=" .. cache,
            "-out:" .. object,
            "-o:speed",
            "-thread-count:2",
        })
    elseif language == "swift" then
        local arguments = {
            "-target",
            "wasm32-unknown-none-wasm",
            "-Xcc",
            "-fdeclspec",
            "-import-bridging-header",
            path.join(root, "include/language/unitree-native/abi.h"),
            "-enable-experimental-feature",
            "Embedded",
            "-wmo",
            "-O",
            "-parse-as-library",
            "-module-name",
            "UnitreeCommand",
            "-c",
            path.join(include, "unitree/swift/Wire.swift"),
            path.join(include, "unitree/swift/CoreObservation.swift"),
            path.join(include, "unitree/swift", target:values("ros.sdk.backend"), "Records.swift"),
            path.join(include, "unitree/swift", target:values("ros.sdk.backend"), "Observation.swift"),
            source,
            "-o",
            object,
        }
        if bundle then
            table.join2(arguments, {
                "-resource-dir",
                path.join(bundle, "original/lib/swift"),
                "-Xcc",
                "-resource-dir=" .. path.join(bundle, "original/lib/clang/21"),
            })
        end
        os.vrunv(compiler, arguments)
    elseif language == "haskell" then
        local ffi = os.getenv("UWVM_NATIVE_HASKELL_FFI")
        if not ffi then
            ffi = bundle and path.join(bundle, "original/libffi") or path.join(path.directory(compiler), "../libffi")
        end
        assert(os.isfile(path.join(ffi, "lib/libffi.a")), "Install the matching pinned libffi-wasm closure")
        os.vrunv(compiler, {
            "--make",
            "-O1",
            "-i" .. path.join(include, "unitree/haskell"),
            "-odir",
            cache,
            "-hidir",
            cache,
            source,
            adapter,
            "-o",
            output,
            "-pgmc",
            cc,
            "-pgml",
            cc,
            "-pgma",
            cc,
            "-pgmlm",
            linker,
            "-pgmP",
            cc,
            "-L" .. path.join(ffi, "lib"),
            "-I" .. path.join(ffi, "include"),
            "-optc--target=wasm32-wasip1",
            "-optc--sysroot=" .. sysroot,
            "-optc-resource-dir=" .. resources,
            "-optc-isystem",
            "-optc" .. headers,
            "-optc-mcpu=generic",
            "-optl--target=wasm32-wasip1",
            "-optl--sysroot=" .. sysroot,
            "-optl-resource-dir=" .. resources,
            "-optl-fuse-ld=" .. linker,
            "-optl-Wl,--stack-first",
            "-optl-Wl,-z,stack-size=1048576",
            "-optl-Wl,--max-memory=67108864",
            "-opta--target=wasm32-wasip1",
            "-opta-mcpu=generic",
            "-opta-resource-dir=" .. resources,
            "-j2",
        })
        return
    end
    os.vrunv(cc, table.join(linking, { object, adapter, "-o", output }))
end
