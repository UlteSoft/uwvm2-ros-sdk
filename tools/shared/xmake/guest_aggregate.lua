option("ros-tool-cache")
    set_showmenu(true)
    set_default("")
    set_description("Reuse the installed SDK compiler cache for child projects")
option_end()
-- Run each original child project with its own source/artifact directory.
-- Building the aggregate configures/builds children; testing only executes tests.
function uwvm_guest_aggregate(cfg)
    local parent=cfg.project_root
    for _, relative in ipairs(cfg.children) do
        local child=path.join(parent,relative)
        target("guest-"..relative:gsub("[^A-Za-z0-9_]","-"))
            set_kind("phony")
            set_toolchains("ros.wasm.command")
            add_options("ros-tool-cache")
            uwvm_register_required_test("required-child-tests","guest-component")
            add_tests("required-child-tests",{group="guest-component"})
            on_load(function(target)
                assert(cfg.api_version==1 and type(cfg.sdk_root)=="string" and #cfg.children>0,
                    "Declare explicit child test projects")
                assert(type(relative)=="string" and not path.is_absolute(relative),"Use relative child projects")
                for part in relative:gmatch("[^/\\]+") do
                    assert(part~="." and part~="..","Child projects must remain under the aggregate")
                end
                assert(os.isfile(path.join(child,"xmake.lua")),"Missing original child project: "..child)
            end)
            on_build(function(target)
                import("core.project.config")
                local configure={"f","-y","-P",".","-p",config.get("plat") or "wasm-wasip1",
                    "-a",config.get("arch") or "wasm32","-m",config.get("mode") or "release"}
                local cache=config.get("ros-tool-cache")
                if type(cache)=="string" and #cache>0 then table.insert(configure,"--ros-tool-cache="..cache) end
                local envs={PWD=child,UWVM_ROS_SDK_ROOT=cfg.sdk_root}
                os.vrunv(os.programfile(),configure,{curdir=child,envs=envs})
                os.vrunv(os.programfile(),{"build","-P",".","-j1"},{curdir=child,envs=envs})
            end)
            on_test(function(target,opt)
                local code=os.execv(os.programfile(),{"test","-P",".","-j1"},
                    {try=true,curdir=child,envs={PWD=child,UWVM_ROS_SDK_ROOT=cfg.sdk_root}})
                if code~=0 then opt.errors="Required child tests failed: "..relative;return false end
                return true
            end)
        target_end()
    end
end

