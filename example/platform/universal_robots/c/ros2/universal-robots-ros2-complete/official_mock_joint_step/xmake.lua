-- SPDX-License-Identifier: Apache-2.0
-- Configuration fails in Xmake's script-domain callback; no fallback executes.
set_project("universal_robots_official_mock_joint_step")
set_xmakever("2.9.8")
target("universal_robots_official_mock_joint_step-migration-required")
    set_kind("binary")
    on_load(function()
        raise("BLOCKED: the native ROS candidate was removed; a real Wasm ROS transplate application and audited callbacks/feedback must be implemented and qualified before this example can build or test")
    end)
target_end()
