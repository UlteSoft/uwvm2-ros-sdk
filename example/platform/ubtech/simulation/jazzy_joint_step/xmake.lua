-- SPDX-License-Identifier: Apache-2.0
-- This preserved application target is blocked pending genuine Wasm migration.
-- No native ROS query/observer fallback is dispatched by this public entry.
set_project("ubtech_jazzy_joint_step")
set_xmakever("2.9.8")
set_version("0.1.0")
set_policy("run.autobuild", false)
set_policy("test.return_zero_on_failure", false)
set_policy("test.stop_on_first_failure", false)
local blocked = "BLOCKED_REQUIRED_WASM_ROS_QUERY_FEEDBACK: SDK-native witness removed; qualified guest callback/feedback implementation and unified VM audit are required"
target("ubtech-jazzy-joint-step")
    set_kind("binary")
    set_default(true)
    add_files("application/main.c")
    set_filename("joint-step.wasm")
    set_targetdir("build")
    add_tests("official-scenarios")
    on_load(function() raise(blocked) end)
    on_build(function() raise(blocked) end)
    on_test(function(target, opt)
        opt.errors = blocked
        return false
    end)
target_end()
