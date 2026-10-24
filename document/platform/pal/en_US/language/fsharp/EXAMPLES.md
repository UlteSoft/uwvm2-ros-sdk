# pal / fsharp examples

Each directory is a standalone Xmake project:

- `example/platform/pal/fsharp/ros1/ros1_noetic_devel/battery_state` — `subscribe/pal_device_msgs/BatteryState`; noetic.
- `example/platform/pal/fsharp/ros1/ros1_noetic_devel/bumper` — `subscribe/pal_device_msgs/Bumper`; noetic.
- `example/platform/pal/fsharp/ros1/ros1_noetic_devel/led_group` — `subscribe/pal_device_msgs/LedGroup`; noetic.
- `example/platform/pal/fsharp/ros2/ros2_humble_devel/battery_state` — `subscribe/pal_device_msgs/msg/BatteryState`; humble.
- `example/platform/pal/fsharp/ros2/ros2_humble_devel/bumper` — `subscribe/pal_device_msgs/msg/Bumper`; humble.
- `example/platform/pal/fsharp/ros2/ros2_humble_devel/led_group` — `subscribe/pal_device_msgs/msg/LedGroup`; humble.

Grant one explicit topic-subscribe alias and let a native simulated peer publish the whole selected type. The application polls at most 250 times with twenty-millisecond idle pauses, decodes and reencodes every field, closes once, and prints canonical bytes plus independent primary/cleanup/RPC/length facts. Denied permissions and malformed wire remain real failures; a failed receive is never resized and replayed.

Check that the build emits exactly one `.wasm`, then use `xmake run` with manually supplied permissions. Acceptance records real x86_64 and QEMU AArch64 runtime/ELF identities, ROS1/ROS2 message/service/action contents, denied permissions, malformed wire, actual cgroup limits and cleanup results.

## Shared module example

- `example/platform/pal/fsharp/ros2/ros2_humble_devel/shared_math` — [shared-library build, preload and exact policy](LIBRARIES.md).
