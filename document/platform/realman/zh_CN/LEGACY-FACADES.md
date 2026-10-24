# realman：保留的完整辅助工作流

`c/state.h` 保留原五个源码 profile。`uwvm_realman_poll_status` 校验并整体提交完整 ArmState、Armstate；`uwvm_realman_publish_joint` 对已选 JointPos、Jointpos 的全部原始字段仅校验、序列化并发布一次，控制器、模式、边界、单位和权限由调用方提供。`cpp/state.hpp` 提供借用式 `Reader.poll`、`Publisher.publish`，只拥有本地 scratch。

`js/get_arm_state.mjs` 导出 `ArmStateQuery`：`onTime`、`onReady`、`onVersion`、`onArmState`、`onEulerState`、`onForce`、`close`，保留原软件版本、四元数与欧拉状态，以及原始、传感器清零、工作坐标清零、工具坐标清零的力数据流程。明确、非递减、完整宽度的 ROS 时间控制就绪和发布等待，不使用墙上时间替代。完整原始值在格式化前校验，回调保留真实输出和发布状态。`share/platform/realman/query-core` 保留的是原零字节 ROS1 `std_msgs/Empty` 主题请求值，不新增服务；原生注册和交付仍须单独验证。

所有 helper 使用调用方拥有的原生 capability，并要求精确源码 profile 和完整记录、接口头文件。主操作、完整解码、原生应用响应、一次独立 close 分别记录。致命 trap、进程清理与实体控制器完成状态由相应外层处理。本次源码和手册不证明原流程或硬件完全等价；x86 原生 ROS、QEMU ARM 须分别提供真实证据。
