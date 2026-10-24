# franka / C++ / ros1 full state

This genuine C++ example uses `roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsFrankaState>`,
`std::array`, ByteView and the returned vector over actual bounded standard input.
It decodes every original `franka_msgs/FrankaState` field and prints the complete actual
re-encoding. It does not acquire a ROS capability. Use the public `set_` selectors
and exact width; build/execution results remain in the private acceptance matrix.
