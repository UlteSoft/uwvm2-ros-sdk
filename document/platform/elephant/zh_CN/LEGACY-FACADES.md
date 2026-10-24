# elephant：保留的完整辅助工作流

`c/state.h` 保留全部 30 个原始型号与发行版组合。须显式选择 `ros.sdk.provider.model`，描述表将其映射到原始 `UWVM_ELEPHANT_SELECTION`。`uwvm_elephant_component` 按原始声明顺序读取分量；`uwvm_elephant_make_observation` 要求精确分量数及原单位下明确、有限的上下界，复查 float32 舍入后才整体提交。`uwvm_elephant_poll_state` 仅接收一次完整观测，`cpp/state.hpp` 通过借用式 `Reader` 暴露同一操作。

`js/teleop.mjs` 导出 `TopicKeyboardController`，包含 `onCoordinates`、`onAngles`、`onTime`、`onKey`、`close`。它保留原键盘步进、回原点、初始化、夹爪与泵的本地状态转换，以及完整原始消息。时间由调用方以完整纳秒值显式提供；本地状态机不自行创建定时器或原生执行器。发布回调接收完整校验后的快照，必须返回真实状态。重入、有限边界、回原点延迟和本地关闭都显式处理；即使只修改一个分量，记录校验仍覆盖全部原始字段。

所有 helper 使用调用方拥有的原生 capability，并要求精确源码 profile 和完整记录、接口头文件。主操作、完整解码、原生应用响应、一次独立 close 分别记录。致命 trap、进程清理与实体控制器完成状态由相应外层处理。本次源码和手册不证明原流程或硬件完全等价；x86 原生 ROS、QEMU ARM 须分别提供真实证据。
