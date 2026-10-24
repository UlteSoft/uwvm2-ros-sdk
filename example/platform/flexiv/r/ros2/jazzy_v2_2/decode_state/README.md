# flexiv / R / decode_state

This genuine R source reads a whole bounded original `flexiv_msgs/msg/RobotStates` at runtime,
decodes every field and prints the actual re-encoding. The ordered public module
graph uses one shared wire implementation. The genuine R Wasip1 port, both widths,
native bridge and QEMU execution remain unqualified; no substitute engine is used.

Use `UWVM_ROS_SDK_ROOT` and `xmake f -c -p wasm-wasip1 -a wasm32`, then the exact
named target `flexiv-r-ros2_jazzy_v2_2-decode_state`. A missing engine or
memory64 closure must produce the shared provider's original refusal.
