-- This is a failure-only quarantine notice, not an implemented ROS client port.
-- No helper, historical receipt or private path is executed from this entry.
set_xmakever("2.9.8")
target("trossen-xs-px100-full-wasm-migration-required")
    set_kind("binary")
    on_load(function()
        raise("BLOCKED_LEGACY_ROS_TRANSPLATE_NOT_IMPLEMENTED: the SDK native candidate was quarantined; genuine guest ROS clients, audited VM transport, callbacks and official simulation must be implemented and qualified")
    end)
target_end()
