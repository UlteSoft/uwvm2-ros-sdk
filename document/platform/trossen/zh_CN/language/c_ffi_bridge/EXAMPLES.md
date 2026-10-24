# trossen C FFI 独立示例

每个项目都有真实 `Main.c` 和自己的 `xmake.lua`，把调用方与恰好一个完整 profile 的 ABI 实现编为单一应用 Wasm。设置已安装 SDK 的 `UWVM_ROS_SDK_ROOT` 后，在所选项目目录运行 `xmake`。需要公共 `tools/platform/ros/provider.lua` 和锁定的 LLVM23 工具闭包；当前候选仍缺少该公共提供器，下列示例尚未通过实际构建或原生运行验收。

`encode_value` 显式把所选完整记录的全部字段初始化为零，通过外部函数 ABI 编码，并向 stdout 写入实际 canonical 字节。这只是选定的测试值，不代表声明的 native 默认值，也不会发布机器人命令。

`decode_value` 从 stdin 有界读取到 EOF，解码成完整记录，再编码并逐字节比较；全部相等后才输出实际字节数。超限、非法、截断与尾随输入均须返回错误。

`reject_frame` 先编码一个完整值，再真实调用截断输入和多一个尾随字节的解码，分别验证错误发生且目标记录每个字节不变。两项均完成后才报告结果。这些 codec 工具不打开 ROS 端点、不请求原生 peer，也不产生物理效果。

每个项目通过 `ros.sdk.vendor_profile` 和 ROS 发行版 API 显式选择源码。公共编译器必须遵守调用方的架构与 WASI 配置；不能据此声称已完成 memory64 或 QEMU 验证。生产环境 ROS 资源和权限属于另一条显式流程。

- `example/platform/trossen/c_ffi_bridge/ros1/ros1_noetic/encode_value` — `interbotix_xs_msgs/JointGroupCommand`
- `example/platform/trossen/c_ffi_bridge/ros1/ros1_noetic/decode_value` — `interbotix_xs_msgs/JointGroupCommand`
- `example/platform/trossen/c_ffi_bridge/ros1/ros1_noetic/reject_frame` — `interbotix_xs_msgs/JointGroupCommand`
- `example/platform/trossen/c_ffi_bridge/ros2/ros2_jazzy/encode_value` — `interbotix_xs_msgs/msg/JointGroupCommand`
- `example/platform/trossen/c_ffi_bridge/ros2/ros2_jazzy/decode_value` — `interbotix_xs_msgs/msg/JointGroupCommand`
- `example/platform/trossen/c_ffi_bridge/ros2/ros2_jazzy/reject_frame` — `interbotix_xs_msgs/msg/JointGroupCommand`
