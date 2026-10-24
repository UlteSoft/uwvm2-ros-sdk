# Unitree Odin — Six examples

[Complete original schemas](../NATIVE_SCHEMA.md) · [API](API.md) · [Six examples](EXAMPLES.md)

Each directory below is an independent real-language command with its own main and xmake.lua. The six cases observe complete original native records. The public import selects a typed observer; the observer closes before the entry reports all canonical bytes. Read the API before reusing individual fields.

## Build and deploy

From a selected example directory, bare `xmake` performs cold configuration when needed and compiles that own-language source. The complete admitted Linux x86_64 SDK restores its pinned genuine frontend and LLVM/WASI dependencies through Xmake. Compilation needs no native ROS, uwvm2 or preinstalled language compiler. The only final application output is the target's single `.wasm`; intermediate files stay in `.uwvm-ros`.

```sh
cd sdk/example/platform/unitree/odin/ros2/motion_state
xmake

# Run after preparing and sourcing the matching native ROS environment.
export UWVM_UNITREE_RUN_CONFIG=/absolute/path/to/trusted-unitree-deployment.json
xmake run unitree-odin-ros2-motion_state
```

Run is a separate operation. It requires Python 3 for the SDK process launcher, the actual uwvm2-ros runtime, production native gateway and original selected Noetic/Jazzy packages. The deployment declares the actual backend/distribution, runtime/gateway paths, each scenario's exact alias, native type identity, canonical codec identity, topic resource, QoS/transport, queue/rate/byte limits, explicit WASI grants and execution deadline. Its arguments array contains exactly the granted alias. `UWVM_ROS_PYTHON` selects the launcher; `--ros-run-config` is the configuration alternative. The example's disabled `run.autobuild` keeps run from rebuilding a missing or changed application.

The Xmake descriptor discovers the complete SDK through UWVM_ROS_SDK_ROOT or ancestor lookup, includes the public dispatcher, selects this language and Unitree, declares Noetic or Jazzy, requests wasm-wasip1/wasm32 and adds the single real main with ros.wasm.source. The target name is unique per backend/scenario; its directory name supplies the runtime scenario. All six descriptors are reproduced below so these selections remain reviewable.

## ROS1 — `motion_state`

[main.odin](../../../../../../example/platform/unitree/odin/ros1/motion_state/main.odin) · [xmake.lua](../../../../../../example/platform/unitree/odin/ros1/motion_state/xmake.lua)

This command calls `wait_motion_state` for complete `unitree_legged_msgs/HighState` and returns `Ros1Unitree_legged_msgsHighState` through the typed observation. Its original fields are `head`, `levelFlag`, `frameReserve`, `SN`, `version`, `bandWidth`, `imu`, `motorState`, `bms`, `footForce`, `footForceEst`, `mode`, `progress`, `gaitType`, `footRaiseHeight`, `position`, `bodyHeight`, `velocity`, `yawSpeed`, `rangeObstacle`, `footPosition2Body`, `footSpeed2Body`, `wirelessRemote`, `reserve`, `crc`.

All listed fields, nested records and array elements participate in decoding and reencoding. The trusted alias must bind this exact original type. Its canonical full-body extent is 1087..1087 bytes, independently of native object size. The native registry identity and codec identity are checked as separate deployment facts.

The entry's steps are:

1. Select the original backend's public observer namespace, using the import shown in this real source.
2. Require two original WASI arguments including the program name; wrong arity returns 22 before acquisition. Argument 1 is the explicit alias.
3. Observe with a total budget of 250 polls. The typed helper performs one open, one subscribe and only idle-dependent 20 ms waits, then one normal close.
4. Report the whole outcome after close. Primary, cleanup and output errors remain separate until the final precedence/exit decision.

```odin
// @file main.odin
// @brief Observe one complete original ROS 1 motion_state native message.
// @details One explicit alias is required; the real Odin observer closes before stdout.
package main
import core "unitree:odin"
import unitree "unitree:odin/ros1/observation"
// @brief Enter the genuine compiled Odin command with its original numeric status.
// @details Read exactly one strict UTF-8 alias from the original WASI argument vector.
// Invalid argument count returns 22 before acquisition. Normal observations close once before stdout.
// @return Zero after complete decoding, encoding and successful close; otherwise preserve the first
// primary, independent close or stdout error. Fatal traps cannot promise ordinary cleanup.
@(export, link_name="nl_entry")
entry :: proc "c"() -> u32 {
    if core.argument_count() != 2 {
        return 22
    }
    value := unitree.wait_motion_state(core.argument(1), 250)
    return core.report(&value)
}
```

The descriptor below binds this main to the genuine frontend and exact backend. The final output is `build/unitree-odin-ros1-motion_state.wasm`.

```lua
-- @file xmake.lua
-- @brief Build one genuine Unitree source command using the installed SDK.
-- @details Discover a relocated SDK without encoding its directory depth. Invalid SDK or unsupported
-- target selection raises an explicit configuration error before invoking a compiler. Successful builds
-- produce one standalone Wasm command and never open a ROS owner or connect to a physical robot.
-- Explicit architecture and platform requests are validated as requested;
-- unsupported selections cannot silently fall back to the defaults.
local sdk_root = os.getenv("UWVM_ROS_SDK_ROOT")
if not sdk_root then
    local candidate = path.absolute(os.scriptdir())
    while true do
        if os.isfile(path.join(candidate, "tools/xmake/ros.lua")) then
            sdk_root = candidate
            break
        end
        local parent = path.directory(candidate)
        if parent == candidate or parent == "" then
            error("Set UWVM_ROS_SDK_ROOT to the complete installed SDK")
        end
        candidate = parent
    end
end
includes(path.join(sdk_root, "tools/xmake/ros.lua"))
set_policy("run.autobuild", false)

-- @brief Compile only the declared genuine source into one standalone Wasm command.
target("unitree-odin-ros1-motion_state")
    set_language("odin")
    set_ros_platform("unitree")
    set_ros1_version("noetic")
    set_plat(get_config("plat") or "wasm-wasip1")
    set_arch(get_config("arch") or "wasm32")
    add_files("main.odin", {rule = "ros.wasm.source"})
target_end()
```

A successful run emits primary=0, cleanup=0, cleanup_present=true, rpc_status=0, rpc_present=true and response_present=true. The decimal length equals the complete received extent; wire_hex contains every reencoded canonical byte. This example has no fixed expected sensor values: compare against the selected native peer or fixture. A missing authority, wrong native identity, disconnect, finite idle exhaustion or strict codec refusal remains a nonzero original outcome; do not interpret empty/default payload as success.

## ROS1 — `low_state`

[main.odin](../../../../../../example/platform/unitree/odin/ros1/low_state/main.odin) · [xmake.lua](../../../../../../example/platform/unitree/odin/ros1/low_state/xmake.lua)

This command calls `wait_low_state` for complete `unitree_legged_msgs/LowState` and returns `Ros1Unitree_legged_msgsLowState` through the typed observation. Its original fields are `head`, `levelFlag`, `frameReserve`, `SN`, `version`, `bandWidth`, `imu`, `motorState`, `bms`, `footForce`, `footForceEst`, `tick`, `wirelessRemote`, `reserve`, `crc`, `eeForceRaw`, `eeForce`, `position`, `velocity`, `velocity_w`.

All listed fields, nested records and array elements participate in decoding and reencoding. The trusted alias must bind this exact original type. Its canonical full-body extent is 1069..1069 bytes, independently of native object size. The native registry identity and codec identity are checked as separate deployment facts.

The entry's steps are:

1. Select the original backend's public observer namespace, using the import shown in this real source.
2. Require two original WASI arguments including the program name; wrong arity returns 22 before acquisition. Argument 1 is the explicit alias.
3. Observe with a total budget of 250 polls. The typed helper performs one open, one subscribe and only idle-dependent 20 ms waits, then one normal close.
4. Report the whole outcome after close. Primary, cleanup and output errors remain separate until the final precedence/exit decision.

```odin
// @file main.odin
// @brief Observe one complete original ROS 1 low_state native message.
// @details One explicit alias is required; the real Odin observer closes before stdout.
package main
import core "unitree:odin"
import unitree "unitree:odin/ros1/observation"
// @brief Enter the genuine compiled Odin command with its original numeric status.
// @details Read exactly one strict UTF-8 alias from the original WASI argument vector.
// Invalid argument count returns 22 before acquisition. Normal observations close once before stdout.
// @return Zero after complete decoding, encoding and successful close; otherwise preserve the first
// primary, independent close or stdout error. Fatal traps cannot promise ordinary cleanup.
@(export, link_name="nl_entry")
entry :: proc "c"() -> u32 {
    if core.argument_count() != 2 {
        return 22
    }
    value := unitree.wait_low_state(core.argument(1), 250)
    return core.report(&value)
}
```

The descriptor below binds this main to the genuine frontend and exact backend. The final output is `build/unitree-odin-ros1-low_state.wasm`.

```lua
-- @file xmake.lua
-- @brief Build one genuine Unitree source command using the installed SDK.
-- @details Discover a relocated SDK without encoding its directory depth. Invalid SDK or unsupported
-- target selection raises an explicit configuration error before invoking a compiler. Successful builds
-- produce one standalone Wasm command and never open a ROS owner or connect to a physical robot.
-- Explicit architecture and platform requests are validated as requested;
-- unsupported selections cannot silently fall back to the defaults.
local sdk_root = os.getenv("UWVM_ROS_SDK_ROOT")
if not sdk_root then
    local candidate = path.absolute(os.scriptdir())
    while true do
        if os.isfile(path.join(candidate, "tools/xmake/ros.lua")) then
            sdk_root = candidate
            break
        end
        local parent = path.directory(candidate)
        if parent == candidate or parent == "" then
            error("Set UWVM_ROS_SDK_ROOT to the complete installed SDK")
        end
        candidate = parent
    end
end
includes(path.join(sdk_root, "tools/xmake/ros.lua"))
set_policy("run.autobuild", false)

-- @brief Compile only the declared genuine source into one standalone Wasm command.
target("unitree-odin-ros1-low_state")
    set_language("odin")
    set_ros_platform("unitree")
    set_ros1_version("noetic")
    set_plat(get_config("plat") or "wasm-wasip1")
    set_arch(get_config("arch") or "wasm32")
    add_files("main.odin", {rule = "ros.wasm.source"})
target_end()
```

A successful run emits primary=0, cleanup=0, cleanup_present=true, rpc_status=0, rpc_present=true and response_present=true. The decimal length equals the complete received extent; wire_hex contains every reencoded canonical byte. This example has no fixed expected sensor values: compare against the selected native peer or fixture. A missing authority, wrong native identity, disconnect, finite idle exhaustion or strict codec refusal remains a nonzero original outcome; do not interpret empty/default payload as success.

## ROS1 — `motor_state`

[main.odin](../../../../../../example/platform/unitree/odin/ros1/motor_state/main.odin) · [xmake.lua](../../../../../../example/platform/unitree/odin/ros1/motor_state/xmake.lua)

This command calls `wait_motor_state` for complete `unitree_legged_msgs/MotorState` and returns `Ros1Unitree_legged_msgsMotorState` through the typed observation. Its original fields are `mode`, `q`, `dq`, `ddq`, `tauEst`, `q_raw`, `dq_raw`, `ddq_raw`, `temperature`, `reserve`.

All listed fields, nested records and array elements participate in decoding and reencoding. The trusted alias must bind this exact original type. Its canonical full-body extent is 38..38 bytes, independently of native object size. The native registry identity and codec identity are checked as separate deployment facts.

The entry's steps are:

1. Select the original backend's public observer namespace, using the import shown in this real source.
2. Require two original WASI arguments including the program name; wrong arity returns 22 before acquisition. Argument 1 is the explicit alias.
3. Observe with a total budget of 250 polls. The typed helper performs one open, one subscribe and only idle-dependent 20 ms waits, then one normal close.
4. Report the whole outcome after close. Primary, cleanup and output errors remain separate until the final precedence/exit decision.

```odin
// @file main.odin
// @brief Observe one complete original ROS 1 motor_state native message.
// @details One explicit alias is required; the real Odin observer closes before stdout.
package main
import core "unitree:odin"
import unitree "unitree:odin/ros1/observation"
// @brief Enter the genuine compiled Odin command with its original numeric status.
// @details Read exactly one strict UTF-8 alias from the original WASI argument vector.
// Invalid argument count returns 22 before acquisition. Normal observations close once before stdout.
// @return Zero after complete decoding, encoding and successful close; otherwise preserve the first
// primary, independent close or stdout error. Fatal traps cannot promise ordinary cleanup.
@(export, link_name="nl_entry")
entry :: proc "c"() -> u32 {
    if core.argument_count() != 2 {
        return 22
    }
    value := unitree.wait_motor_state(core.argument(1), 250)
    return core.report(&value)
}
```

The descriptor below binds this main to the genuine frontend and exact backend. The final output is `build/unitree-odin-ros1-motor_state.wasm`.

```lua
-- @file xmake.lua
-- @brief Build one genuine Unitree source command using the installed SDK.
-- @details Discover a relocated SDK without encoding its directory depth. Invalid SDK or unsupported
-- target selection raises an explicit configuration error before invoking a compiler. Successful builds
-- produce one standalone Wasm command and never open a ROS owner or connect to a physical robot.
-- Explicit architecture and platform requests are validated as requested;
-- unsupported selections cannot silently fall back to the defaults.
local sdk_root = os.getenv("UWVM_ROS_SDK_ROOT")
if not sdk_root then
    local candidate = path.absolute(os.scriptdir())
    while true do
        if os.isfile(path.join(candidate, "tools/xmake/ros.lua")) then
            sdk_root = candidate
            break
        end
        local parent = path.directory(candidate)
        if parent == candidate or parent == "" then
            error("Set UWVM_ROS_SDK_ROOT to the complete installed SDK")
        end
        candidate = parent
    end
end
includes(path.join(sdk_root, "tools/xmake/ros.lua"))
set_policy("run.autobuild", false)

-- @brief Compile only the declared genuine source into one standalone Wasm command.
target("unitree-odin-ros1-motor_state")
    set_language("odin")
    set_ros_platform("unitree")
    set_ros1_version("noetic")
    set_plat(get_config("plat") or "wasm-wasip1")
    set_arch(get_config("arch") or "wasm32")
    add_files("main.odin", {rule = "ros.wasm.source"})
target_end()
```

A successful run emits primary=0, cleanup=0, cleanup_present=true, rpc_status=0, rpc_present=true and response_present=true. The decimal length equals the complete received extent; wire_hex contains every reencoded canonical byte. This example has no fixed expected sensor values: compare against the selected native peer or fixture. A missing authority, wrong native identity, disconnect, finite idle exhaustion or strict codec refusal remains a nonzero original outcome; do not interpret empty/default payload as success.

## ROS2 — `motion_state`

[main.odin](../../../../../../example/platform/unitree/odin/ros2/motion_state/main.odin) · [xmake.lua](../../../../../../example/platform/unitree/odin/ros2/motion_state/xmake.lua)

This command calls `wait_motion_state` for complete `unitree_go/msg/SportModeState` and returns `Ros2Unitree_goMsgSportModeState` through the typed observation. Its original fields are `stamp`, `error_code`, `imu_state`, `mode`, `progress`, `gait_type`, `foot_raise_height`, `position`, `body_height`, `velocity`, `yaw_speed`, `range_obstacle`, `foot_force`, `foot_position_body`, `foot_speed_body`.

All listed fields, nested records and array elements participate in decoding and reencoding. The trusted alias must bind this exact original type. Its canonical full-body extent is 227..227 bytes, independently of native object size. The native registry identity and codec identity are checked as separate deployment facts.

The entry's steps are:

1. Select the original backend's public observer namespace, using the import shown in this real source.
2. Require two original WASI arguments including the program name; wrong arity returns 22 before acquisition. Argument 1 is the explicit alias.
3. Observe with a total budget of 250 polls. The typed helper performs one open, one subscribe and only idle-dependent 20 ms waits, then one normal close.
4. Report the whole outcome after close. Primary, cleanup and output errors remain separate until the final precedence/exit decision.

```odin
// @file main.odin
// @brief Observe one complete original ROS 2 motion_state native message.
// @details One explicit alias is required; the real Odin observer closes before stdout.
package main
import core "unitree:odin"
import unitree "unitree:odin/ros2/observation"
// @brief Enter the genuine compiled Odin command with its original numeric status.
// @details Read exactly one strict UTF-8 alias from the original WASI argument vector.
// Invalid argument count returns 22 before acquisition. Normal observations close once before stdout.
// @return Zero after complete decoding, encoding and successful close; otherwise preserve the first
// primary, independent close or stdout error. Fatal traps cannot promise ordinary cleanup.
@(export, link_name="nl_entry")
entry :: proc "c"() -> u32 {
    if core.argument_count() != 2 {
        return 22
    }
    value := unitree.wait_motion_state(core.argument(1), 250)
    return core.report(&value)
}
```

The descriptor below binds this main to the genuine frontend and exact backend. The final output is `build/unitree-odin-ros2-motion_state.wasm`.

```lua
-- @file xmake.lua
-- @brief Build one genuine Unitree source command using the installed SDK.
-- @details Discover a relocated SDK without encoding its directory depth. Invalid SDK or unsupported
-- target selection raises an explicit configuration error before invoking a compiler. Successful builds
-- produce one standalone Wasm command and never open a ROS owner or connect to a physical robot.
-- Explicit architecture and platform requests are validated as requested;
-- unsupported selections cannot silently fall back to the defaults.
local sdk_root = os.getenv("UWVM_ROS_SDK_ROOT")
if not sdk_root then
    local candidate = path.absolute(os.scriptdir())
    while true do
        if os.isfile(path.join(candidate, "tools/xmake/ros.lua")) then
            sdk_root = candidate
            break
        end
        local parent = path.directory(candidate)
        if parent == candidate or parent == "" then
            error("Set UWVM_ROS_SDK_ROOT to the complete installed SDK")
        end
        candidate = parent
    end
end
includes(path.join(sdk_root, "tools/xmake/ros.lua"))
set_policy("run.autobuild", false)

-- @brief Compile only the declared genuine source into one standalone Wasm command.
target("unitree-odin-ros2-motion_state")
    set_language("odin")
    set_ros_platform("unitree")
    set_ros2_version("jazzy")
    set_plat(get_config("plat") or "wasm-wasip1")
    set_arch(get_config("arch") or "wasm32")
    add_files("main.odin", {rule = "ros.wasm.source"})
target_end()
```

A successful run emits primary=0, cleanup=0, cleanup_present=true, rpc_status=0, rpc_present=true and response_present=true. The decimal length equals the complete received extent; wire_hex contains every reencoded canonical byte. This example has no fixed expected sensor values: compare against the selected native peer or fixture. A missing authority, wrong native identity, disconnect, finite idle exhaustion or strict codec refusal remains a nonzero original outcome; do not interpret empty/default payload as success.

## ROS2 — `low_state`

[main.odin](../../../../../../example/platform/unitree/odin/ros2/low_state/main.odin) · [xmake.lua](../../../../../../example/platform/unitree/odin/ros2/low_state/xmake.lua)

This command calls `wait_low_state` for complete `unitree_go/msg/LowState` and returns `Ros2Unitree_goMsgLowState` through the typed observation. Its original fields are `head`, `level_flag`, `frame_reserve`, `sn`, `version`, `bandwidth`, `imu_state`, `motor_state`, `bms_state`, `foot_force`, `foot_force_est`, `tick`, `wireless_remote`, `bit_flag`, `adc_reel`, `temperature_ntc1`, `temperature_ntc2`, `power_v`, `power_a`, `fan_frequency`, `reserve`, `crc`.

All listed fields, nested records and array elements participate in decoding and reencoding. The trusted alias must bind this exact original type. Its canonical full-body extent is 1050..1050 bytes, independently of native object size. The native registry identity and codec identity are checked as separate deployment facts.

The entry's steps are:

1. Select the original backend's public observer namespace, using the import shown in this real source.
2. Require two original WASI arguments including the program name; wrong arity returns 22 before acquisition. Argument 1 is the explicit alias.
3. Observe with a total budget of 250 polls. The typed helper performs one open, one subscribe and only idle-dependent 20 ms waits, then one normal close.
4. Report the whole outcome after close. Primary, cleanup and output errors remain separate until the final precedence/exit decision.

```odin
// @file main.odin
// @brief Observe one complete original ROS 2 low_state native message.
// @details One explicit alias is required; the real Odin observer closes before stdout.
package main
import core "unitree:odin"
import unitree "unitree:odin/ros2/observation"
// @brief Enter the genuine compiled Odin command with its original numeric status.
// @details Read exactly one strict UTF-8 alias from the original WASI argument vector.
// Invalid argument count returns 22 before acquisition. Normal observations close once before stdout.
// @return Zero after complete decoding, encoding and successful close; otherwise preserve the first
// primary, independent close or stdout error. Fatal traps cannot promise ordinary cleanup.
@(export, link_name="nl_entry")
entry :: proc "c"() -> u32 {
    if core.argument_count() != 2 {
        return 22
    }
    value := unitree.wait_low_state(core.argument(1), 250)
    return core.report(&value)
}
```

The descriptor below binds this main to the genuine frontend and exact backend. The final output is `build/unitree-odin-ros2-low_state.wasm`.

```lua
-- @file xmake.lua
-- @brief Build one genuine Unitree source command using the installed SDK.
-- @details Discover a relocated SDK without encoding its directory depth. Invalid SDK or unsupported
-- target selection raises an explicit configuration error before invoking a compiler. Successful builds
-- produce one standalone Wasm command and never open a ROS owner or connect to a physical robot.
-- Explicit architecture and platform requests are validated as requested;
-- unsupported selections cannot silently fall back to the defaults.
local sdk_root = os.getenv("UWVM_ROS_SDK_ROOT")
if not sdk_root then
    local candidate = path.absolute(os.scriptdir())
    while true do
        if os.isfile(path.join(candidate, "tools/xmake/ros.lua")) then
            sdk_root = candidate
            break
        end
        local parent = path.directory(candidate)
        if parent == candidate or parent == "" then
            error("Set UWVM_ROS_SDK_ROOT to the complete installed SDK")
        end
        candidate = parent
    end
end
includes(path.join(sdk_root, "tools/xmake/ros.lua"))
set_policy("run.autobuild", false)

-- @brief Compile only the declared genuine source into one standalone Wasm command.
target("unitree-odin-ros2-low_state")
    set_language("odin")
    set_ros_platform("unitree")
    set_ros2_version("jazzy")
    set_plat(get_config("plat") or "wasm-wasip1")
    set_arch(get_config("arch") or "wasm32")
    add_files("main.odin", {rule = "ros.wasm.source"})
target_end()
```

A successful run emits primary=0, cleanup=0, cleanup_present=true, rpc_status=0, rpc_present=true and response_present=true. The decimal length equals the complete received extent; wire_hex contains every reencoded canonical byte. This example has no fixed expected sensor values: compare against the selected native peer or fixture. A missing authority, wrong native identity, disconnect, finite idle exhaustion or strict codec refusal remains a nonzero original outcome; do not interpret empty/default payload as success.

## ROS2 — `wireless_controller`

[main.odin](../../../../../../example/platform/unitree/odin/ros2/wireless_controller/main.odin) · [xmake.lua](../../../../../../example/platform/unitree/odin/ros2/wireless_controller/xmake.lua)

This command calls `wait_wireless_controller` for complete `unitree_go/msg/WirelessController` and returns `Ros2Unitree_goMsgWirelessController` through the typed observation. Its original fields are `lx`, `ly`, `rx`, `ry`, `keys`.

All listed fields, nested records and array elements participate in decoding and reencoding. The trusted alias must bind this exact original type. Its canonical full-body extent is 18..18 bytes, independently of native object size. The native registry identity and codec identity are checked as separate deployment facts.

The entry's steps are:

1. Select the original backend's public observer namespace, using the import shown in this real source.
2. Require two original WASI arguments including the program name; wrong arity returns 22 before acquisition. Argument 1 is the explicit alias.
3. Observe with a total budget of 250 polls. The typed helper performs one open, one subscribe and only idle-dependent 20 ms waits, then one normal close.
4. Report the whole outcome after close. Primary, cleanup and output errors remain separate until the final precedence/exit decision.

```odin
// @file main.odin
// @brief Observe one complete original ROS 2 wireless_controller native message.
// @details One explicit alias is required; the real Odin observer closes before stdout.
package main
import core "unitree:odin"
import unitree "unitree:odin/ros2/observation"
// @brief Enter the genuine compiled Odin command with its original numeric status.
// @details Read exactly one strict UTF-8 alias from the original WASI argument vector.
// Invalid argument count returns 22 before acquisition. Normal observations close once before stdout.
// @return Zero after complete decoding, encoding and successful close; otherwise preserve the first
// primary, independent close or stdout error. Fatal traps cannot promise ordinary cleanup.
@(export, link_name="nl_entry")
entry :: proc "c"() -> u32 {
    if core.argument_count() != 2 {
        return 22
    }
    value := unitree.wait_wireless_controller(core.argument(1), 250)
    return core.report(&value)
}
```

The descriptor below binds this main to the genuine frontend and exact backend. The final output is `build/unitree-odin-ros2-wireless_controller.wasm`.

```lua
-- @file xmake.lua
-- @brief Build one genuine Unitree source command using the installed SDK.
-- @details Discover a relocated SDK without encoding its directory depth. Invalid SDK or unsupported
-- target selection raises an explicit configuration error before invoking a compiler. Successful builds
-- produce one standalone Wasm command and never open a ROS owner or connect to a physical robot.
-- Explicit architecture and platform requests are validated as requested;
-- unsupported selections cannot silently fall back to the defaults.
local sdk_root = os.getenv("UWVM_ROS_SDK_ROOT")
if not sdk_root then
    local candidate = path.absolute(os.scriptdir())
    while true do
        if os.isfile(path.join(candidate, "tools/xmake/ros.lua")) then
            sdk_root = candidate
            break
        end
        local parent = path.directory(candidate)
        if parent == candidate or parent == "" then
            error("Set UWVM_ROS_SDK_ROOT to the complete installed SDK")
        end
        candidate = parent
    end
end
includes(path.join(sdk_root, "tools/xmake/ros.lua"))
set_policy("run.autobuild", false)

-- @brief Compile only the declared genuine source into one standalone Wasm command.
target("unitree-odin-ros2-wireless_controller")
    set_language("odin")
    set_ros_platform("unitree")
    set_ros2_version("jazzy")
    set_plat(get_config("plat") or "wasm-wasip1")
    set_arch(get_config("arch") or "wasm32")
    add_files("main.odin", {rule = "ros.wasm.source"})
target_end()
```

A successful run emits primary=0, cleanup=0, cleanup_present=true, rpc_status=0, rpc_present=true and response_present=true. The decimal length equals the complete received extent; wire_hex contains every reencoded canonical byte. This example has no fixed expected sensor values: compare against the selected native peer or fixture. A missing authority, wrong native identity, disconnect, finite idle exhaustion or strict codec refusal remains a nonzero original outcome; do not interpret empty/default payload as success.

## Result handling and scope

Use response presence before reading a complete record; retain the last original RPC and full uint64 length even when local decoding fails. The final JSON uses booleans for presence, an exact decimal string for length and full hex for accepted bytes. The reporter chooses primary, otherwise cleanup, otherwise stdout failure 5. Only process exit clamps status to at most 125. Poll count measures actual polls, not elapsed milliseconds; the deployment's execution deadline is independent.

The supported command profile is wasm32 WASI Preview 1, noeh and one thread, with Noetic/Jazzy original native interfaces. Bundled source compilation is qualified on Linux x86_64. Same-artifact AArch64 native communication is separately checked through QEMU user mode on an x86_64 Linux kernel; it qualifies neither an ARM compiler host nor physical hardware. The x86 source/codec/build evidence is recorded in [native-source-qualification.json](../../../../../../share/platform/unitree/native-source-qualification.json). Pinned frontend provenance is listed in [original compiler versions and source closures](../../../../../../share/platform/unitree/native-compiler-sources.json). Full 54-record codec coverage is distinct from live transport of the six observation types. Memory64, Preview 2, threads, Wasm EH, other distributions, physical control and robot CRC/safety behavior are outside this route's qualification.
