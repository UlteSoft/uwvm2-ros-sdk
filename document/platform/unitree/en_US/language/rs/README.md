# Unitree rs

## Genuine source language and tools

Rust 1.87.0 / LLVM 23 linker; wasm32-wasip1 standard library, Rust 2021, panic=abort.

Configure/build require no uwvm2-ros, gateway, ROS installation, or robot. On the qualified Linux x86_64 host, Xmake restores the exact compiler and native library closure from the SDK's checksum-pinned offline bundles. No language tool needs to be installed beforehand. The application is never interpreted on the host; its sole output artifact is one .wasm command.

## Three genuine ROS 2 examples

| Example | Actual native type and topic | Preserved data |
| --- | --- | --- |
| motion_state | unitree_go/msg/SportModeState; /sportmodestate or /lf/sportmodestate | All stamp, error, IMU, mode, gait, odometry, and foot-state fields |
| low_state | unitree_go/msg/LowState; /lowstate or /lf/lowstate | All 20 motors, BMS, forces, remote, temperature, power, reserve, and CRC fields |
| wireless_controller | unitree_go/msg/WirelessController; /wirelesscontroller | All four original float axes and the complete keys bitmask |

Deployment chooses the actual topic. Each example receives only an explicit alias argument. Tests use isolated /unitree_sdk_fixture/* topics with no robot connection.

## Independent genuine ROS 1 source programs

ros1/motion_state uses unitree_legged_msgs/HighState; ros1/low_state uses unitree_legged_msgs/LowState; ros1/motor_state uses unitree_legged_msgs/MotorState. Actual topics follow the real driver or Gazebo controller namespace, including /high_state, /low_state, and a joint controller state topic. ROS 2 or vendor DDS channels are never renamed into ROS 1. All ROS 1 examples passed real Noetic, the production Gateway, and uwvm2-ros with an independent complete native message oracle.

## Public API and complete values

### ROS 1

- `wait_motion_state`
- `wait_low_state`
- `wait_motor_state`

### ROS 2

- `wait_motion_state`
- `wait_low_state`
- `wait_wireless_controller`

Xmake enables exactly one `ros1` or `ros2` feature for the Unitree crate and selects its corresponding complete record module.

C/C++/Objective-C/C FFI borrow context, alias, and output synchronously; all storage must remain valid and disjoint. Read C output only when response_present is true. C++ Outcome<T> owns the complete inline record and facts. Go/TinyGo Outcome[T], Rust Outcome<T>, and AS Observation<T> own complete values and wire bytes; check ResponsePresent, Some, or nonnull before reading them.

Each operation opens one existing exact-type alias, subscribes once, and performs at most 250 actual polls; only idle 11 permits another poll. Examples wait 20 ms through the actual WASI monotonic clock after idle, at most 249 times. Every normally acquired owner is closed once on success or failure. Primary and cleanup remain independent, with primary taking precedence. Traps, panics, and allocation failure do not promise ordinary cleanup; the host still retires the instance.

| Status | Meaning and handling |
| --- | --- |
| 0 | Complete operation and ordinary cleanup succeeded; still inspect presence flags |
| 11 | Idle or temporary quota refusal; wait only within the finite poll budget |
| 13 | Missing exact authority; never create an implicit grant |
| 22 / 90 | Invalid complete data or capacity failure; never truncate or automatically resize/replay |
| 9 / 95 / 107 / 110 / 125 | Preserve the original stale-owner, unsupported, disconnect, uncertain-timeout, or revoke value |

## Xmake

```lua
target("unitree-observer")
    set_language("rs")
    set_ros_platform("unitree")
    set_ros2_version("jazzy")
    set_plat(get_config("plat") or "wasm-wasip1")
    set_arch(get_config("arch") or "wasm32")
    add_files("main.rs")
target_end()
```

Run xmake in the example directory. For run, UWVM_UNITREE_RUN_CONFIG or --ros-run-config selects trusted deployment JSON containing the actual uwvm2-ros and production gateway, exact native and canonical codec identities, real topic, QoS, queue/rate limits, and explicit WASI clock/random grants. Running also requires Python 3 as a process launcher; `UWVM_ROS_PYTHON` may select its executable. The launcher manages uwvm2-ros and gateway processes; uwvm2-ros executes the compiled Wasm application. Run installs no language compiler and never interprets source.

## Qualification and boundaries

This language targets wasm32-wasip1, single-threaded, without Wasm EH. Unqualified memory64 is explicitly refused. Noetic and Jazzy fixture receipts cover all three examples per backend with exact artifact identities. This does not automatically qualify Humble/Foxy/Melodic or physical hardware. A version selector chooses explicit source/deployment intent; independently export native metadata and bind the runtime/gateway for the concrete target. CRC fields are retained completely, but this API certifies neither device CRC correctness, motion safety, nor physical controller completion.

SCHEMA.md at the language-manual root lists all fields and byte bounds for 11 ROS 1 and 43 ROS 2 records. Current publication details live in share/platform/unitree/publication.json; share/platform/unitree/qualification.json identifies every accepted current artifact. the portable historical baseline is summarized in share/platform/unitree/historical-baseline.json. The baseline preserves historical tools and native fixture evidence; publication.json defines the languages and tool versions admitted by this publication.

Current accepted configuration choices: [shared provider configuration](../../CONFIGURATION.md).
