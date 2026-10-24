# doosan / MoonBit example guide

Each source domain provides three independent projects with its own `xmake.lua` and genuine `main.mbt`:

| Project | Runtime operation |
| --- | --- |
| `state_codec` | Construct, encode and decode the original complete state record. |
| `service_response_codec` | Exercise the original complete response component. |
| `feedback_codec` | Exercise the catalog's complete action feedback or retained telemetry record. |

The tested domain is `doosan-ros2-jazzy-complete`, declared as ROS2 `jazzy`. Build with the installed SDK and its verified common tool bundle:

```sh
export UWVM_ROS_SDK_ROOT=/opt/uwvm2-ros/sdk
cd "$UWVM_ROS_SDK_ROOT/example/platform/doosan/moonbit/ros2/doosan-ros2-jazzy-complete/state_codec"
xmake f -c -p wasm-wasip1 -a wasm32
xmake
```

The sole application artifact is `.wasm`. Repeat in `service_response_codec` and `feedback_codec`. The real source for the state lesson is:

```moonbit
/// @file main.mbt
/// @brief Exercise the complete original dsr_msgs2/msg/RobotState through genuine MoonBit compilation.
fn main {
    let codec = @records.Ros2Dsr_msgs2MsgRobotStateCodec::new()
    let value = @records.Ros2Dsr_msgs2MsgRobotState::new()
    let bytes = match codec.encode(value) {
        Ok(bytes) => bytes
        Err(code) => abort("whole record encode error \{code}")
    }
    match codec.decode(bytes) {
        Ok(_) => println("{\"type\":\"dsr_msgs2/msg/RobotState\",\"bytes\":\{bytes.length()}}")
        Err(code) => abort("whole record decode error \{code}")
    }
}
```

For execution, configure the installed native runtime and gateway in a trusted v2 deployment file. Select the exact `state_codec` scenario, declare `ros_enabled: false`, `grants: []`, and explicitly authorize WASI `stdio-full-rights`. In a shell without a sourced ROS environment, run:

```sh
xmake f --ros-run-config=/absolute/path/value-deployment.json
xmake run
```

The scenario changes to the matching project name for the other two lessons. `run.autobuild=false` keeps compilation explicit. These projects never create permissions or source middleware. The public runner preserves the example's exact backend/distribution and rejects a conflicting sourced ROS environment.

All three projects passed on x86_64 and QEMU AArch64 with identical Wasm SHA per project. This is value-codec execution evidence. Other domains' three-project executions, native peers and permissions/error/cleanup matrices, memory64, and library combinations remain unfinished. Keep original Humble/ROS1 source declarations when selecting other domains; each exact native distribution still needs independent qualification.
