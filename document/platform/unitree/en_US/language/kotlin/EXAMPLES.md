# Six Kotlin observation examples

| Backend | Directory | Complete native message |
| --- | --- | --- |
| ros1 | `motion_state` | `unitree_legged_msgs/HighState` |
| ros1 | `low_state` | `unitree_legged_msgs/LowState` |
| ros1 | `motor_state` | `unitree_legged_msgs/MotorState` |
| ros2 | `motion_state` | `unitree_go/msg/SportModeState` |
| ros2 | `low_state` | `unitree_go/msg/LowState` |
| ros2 | `wireless_controller` | `unitree_go/msg/WirelessController` |

ROS1 `motion_state` reads the full high-level state, including IMU, body motion, gait, position, foot and battery
fields. `low_state` retains every original motor, IMU, battery, force, remote and CRC field. `motor_state` retains
every scalar and fixed array of one motor's original state.

ROS2 `motion_state` preserves the complete sport-mode state and all IMU and foot arrays. `low_state` preserves every
original motor, BMS, sensor, remote and CRC field. `wireless_controller` retains all four axes and the entire key
bitmask. The program never replaces a complete message with only the displayed headline values; its JSON includes
every canonical byte.

Each entry validates exactly one alias argument, calls its concrete observer with 250 poll credits, and reports the
complete value and separate operation/cleanup facts. The alias comes from trusted deployment; topic names are not
hardcoded into application source. Acceptance uses isolated `/unitree_sdk_fixture/*` topics published by
independently typed native ROS fixtures.

## Complete build description

This is the actual ROS2 low-state `xmake.lua`. The discovery loop locates an installed SDK by marker, and
`UWVM_ROS_SDK_ROOT` can select a separate installation. The example never assumes a fixed parent-directory depth.
`set_language` selects the genuine frontend, `set_ros_platform` selects the Unitree API, and `set_ros2_version` selects
explicit deployment intent. `set_plat(get_config("plat") or "wasm-wasip1")` and
`set_arch(get_config("arch") or "wasm32")` default to `wasm32-wasip1` while retaining explicit command-line requests.
The provider rejects unsupported profiles instead of silently replacing the requested architecture or platform.

```lua
-- @file xmake.lua
-- @brief Compile genuine kotlin source to one complete Unitree ROS2 Wasm command.
-- @details Native ROS and uwvm2-ros are explicit run prerequisites. Building
-- restores only the fixed native AOT closure and emits one build/*.wasm file.
local sdk_root = os.getenv("UWVM_ROS_SDK_ROOT")
if not sdk_root then
    local candidate = path.absolute(os.scriptdir())
    while true do
        if os.isfile(path.join(candidate, "tools/xmake/ros.lua")) then
            sdk_root = candidate
            break
        end
        local parent = path.directory(candidate)
        if parent == candidate then
            error("Set UWVM_ROS_SDK_ROOT to the installed SDK")
        end
        candidate = parent
    end
end
includes(path.join(sdk_root, "tools/xmake/ros.lua"))
set_policy("run.autobuild", false)

-- @brief Select the real source language and exact native ROS family.
target("unitree-kotlin-ros2-low_state")
    set_language("kotlin")
    set_ros_platform("unitree")
    set_ros2_version("jazzy")
    -- Respect explicit selections so unsupported targets fail during configuration.
    set_plat(get_config("plat") or "wasm-wasip1")
    set_arch(get_config("arch") or "wasm32")
    set_values("ros.sdk.main_class", "uwvm.unitree.example.Main")
    add_files("Main.kt")
target_end()
```

ROS1 counterparts use `set_ros1_version("noetic")`; the ROS2 examples use `set_ros2_version("jazzy")`. Changing a version
selector is not native metadata qualification. Export and bind the real installed types before running against a
different distribution. For each row, enter `sdk/example/platform/unitree/kotlin/<backend>/<directory>` and run
`xmake`. The target name is `unitree-kotlin-<backend>-<directory>`.

## Read an execution result

A successful normal observation has primary/cleanup/encoding zero and response/cleanup/RPC/required-length presence
set. `required` is the complete received size; `wire_hex` must have twice as many hexadecimal characters. A recorded
response may coexist with a later cleanup error, so check the independent cleanup status before treating the entire
operation as successful.

The launcher writes `execution.json`, `worker.stdout`, `worker.stderr` and `gateway.log` below
`.uwvm-ros/unitree-run`. These are diagnostic run records, not application deployment artifacts. `execution.json`
identifies the exact Wasm, native runtime, gateway and deployment hashes. Native audit records show actual resource
creation and close events. A second `xmake run` reuses the same compiled Wasm; it creates a fresh observation and a
fresh receipt.
