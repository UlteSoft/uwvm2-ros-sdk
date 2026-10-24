# Complete original Flexiv native service server

This finite offline Jazzy v2.2 fixture uses the original complete flexiv_msgs/srv/SetJointImpedance type. Service response includes every nested JointImpedance setting field. Action feedback includes current_width, current_force and moving; terminal kind3 intentionally aborts with the original false/UTF-8 error result. Native ROS2 ABORTED status is6. It never invokes physical hardware.

Build both widths through ordinary Xmake. Manually configure the exact native RIHS identity, independent advertise/respond grants, runtime/gateway paths and monotonic-clock permission in deployment.json. Run with UWVM_ROS_RUN_CONFIG=deployment.json xmake run main. Disabled/no-grant cases must return13; business failure remains distinct from transport success. The finite fixture uses a200-ms transport grace before closing both owners; production servers keep their session owners alive. Cancellation and whole-profile acceptance remain separate.

## 中文

该有限离线 Jazzy v2.2 用例使用完整原始类型。Service 响应保留 JointImpedance setting 的全部嵌套字段；Action 反馈保留宽度、力和 moving，kind3 明确中止，保留 false 与 UTF-8 错误文本；ROS2 原生 ABORTED 状态为6。示例不操作实体硬件。

通过普通 Xmake 构建两个位宽，手工配置精确原生 RIHS、独立 advertise/respond 权限、运行时/gateway 路径和单调时钟权限，再以 UWVM_ROS_RUN_CONFIG=deployment.json xmake run main 执行。关闭 ROS/无授权时须返回13；业务失败与传输成功分开。该有限用例在200毫秒传输宽限后关闭两个 owner，常驻服务应保持会话 owner 生命周期。取消和完整 profile 仍须独立验收。
