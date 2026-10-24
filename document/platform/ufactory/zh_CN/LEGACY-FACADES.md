# ufactory：保留的完整辅助工作流

`c/state.h` 保留全部 55 个 xArm、Lite6、UF850 型号与 profile 组合及精确自由度。描述表把显式型号映射到原始 `UWVM_XARM_SELECTION`。`uwvm_xarm_accept_observation` 校验完整 RobotMsg 和已选关节数后才整体提交；`uwvm_xarm_poll_state` 仅轮询一次，`uwvm_xarm_query_once` 仅调用一次原始只读服务，保留全部原生结果和错误字段。`cpp/state.hpp` 提供借用式 `Reader.poll`、`QueryClient.call`。关节角保留弧度，姿态和偏移继续使用原始定义的单位。

`js/robot_states.mjs` 导出 `RobotStateObserver`：`onJointStates`、`onRobotStates`、`onCgpioStates`、`close`。它保留 Humble-Gazebo 原始 JointState、RobotMsg、CIOState 回调及日志文本；即使回调只输出通知，仍校验所有字段。`js/core/humble/bounded_records.mjs` 保留该流程使用的完整标准支持记录，包括 JointState、Header、时间、轨迹和多维数组值。确定性文本格式保留原有限 binary64 的六位小数语义及负零。调用方提供真实字节输出函数；输出失败保持为错误，本地关闭不自动退订原生资源或发送运动命令。

所有 helper 使用调用方拥有的原生 capability，并要求精确源码 profile 和完整记录、接口头文件。主操作、完整解码、原生应用响应、一次独立 close 分别记录。致命 trap、进程清理与实体控制器完成状态由相应外层处理。本次源码和手册不证明原流程或硬件完全等价；x86 原生 ROS、QEMU ARM 须分别提供真实证据。
