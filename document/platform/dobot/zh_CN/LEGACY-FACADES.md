# dobot：保留的完整辅助工作流

`c/state.h` 显式选择 ROS1 V3、ROS1 V4 或 ROS2 V4。`uwvm_dobot_poll_status` 保留原始两个布尔状态字段；`uwvm_dobot_query_once` 对已选 GetAngle 服务仅调用一次。ROS1 V3 返回 `res`，V4 同时保留 `robot_return`；响应文本原样保留，不新增角度解析或“应用成功”解释。`cpp/state.hpp` 提供借用式 `Reader.poll`、`QueryClient.call`，调用期间保持 capability、context、backend 有效，并串行使用 façade 的 scratch。

`js/demo_cycle.mjs` 导出 `DemoCycle`。构造时复制原始两个六轴目标点、完整双语报警表以及明确的反馈配置。`takeMove` 预留对应版本的一次完整运动请求；`onMoveResponse` 消费其完整响应。`onFeedback` 接收完整、有界的 JSON 反馈，`onTime` 按显式时间推进报警与 Continue 流程；`onErrorResponse`、`onContinueResponse` 分别接收完整原始响应。`progress` 返回本地进度，`cancel` 标记本地取消，`close` 关闭本地状态。原 ROS1 rosdemo-v3/v4 的记录模块继续保留。调用方把完整报警内容嵌入应用并提供实际 I/O；预留请求、原生接纳和物理到达分别判断。

所有 helper 使用调用方拥有的原生 capability，并要求精确源码 profile 和完整记录、接口头文件。主操作、完整解码、原生应用响应、一次独立 close 分别记录。致命 trap、进程清理与实体控制器完成状态由相应外层处理。本次源码和手册不证明原流程或硬件完全等价；x86 原生 ROS、QEMU ARM 须分别提供真实证据。
