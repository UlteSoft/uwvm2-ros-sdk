# flexiv 原生 C Service 与 Action 服务端


## serve_native_joint_impedance

源码：`sdk/example/platform/flexiv/c/ros2_jazzy_v2_2/serve_native_joint_impedance`。

该有限离线 Jazzy v2.2 用例使用完整原始类型。Service 响应保留 JointImpedance setting 的全部嵌套字段；Action 反馈保留宽度、力和 moving，kind3 明确中止，保留 false 与 UTF-8 错误文本；ROS2 原生 ABORTED 状态为6。示例不操作实体硬件。

通过普通 Xmake 构建两个位宽，手工配置精确原生 RIHS、独立 advertise/respond 权限、运行时/gateway 路径和单调时钟权限，再以 UWVM_ROS_RUN_CONFIG=deployment.json xmake run main 执行。关闭 ROS/无授权时须返回13；业务失败与传输成功分开。该有限用例在200毫秒传输宽限后关闭两个 owner，常驻服务应保持会话 owner 生命周期。取消和完整 profile 仍须独立验收。

## serve_native_grasp

源码：`sdk/example/platform/flexiv/c/ros2_jazzy_v2_2/serve_native_grasp`。

该有限离线 Jazzy v2.2 用例使用完整原始类型。Service 响应保留 JointImpedance setting 的全部嵌套字段；Action 反馈保留宽度、力和 moving，kind3 明确中止，保留 false 与 UTF-8 错误文本；ROS2 原生 ABORTED 状态为6。示例不操作实体硬件。

通过普通 Xmake 构建两个位宽，手工配置精确原生 RIHS、独立 advertise/respond 权限、运行时/gateway 路径和单调时钟权限，再以 UWVM_ROS_RUN_CONFIG=deployment.json xmake run main 执行。关闭 ROS/无授权时须返回13；业务失败与传输成功分开。该有限用例在200毫秒传输宽限后关闭两个 owner，常驻服务应保持会话 owner 生命周期。取消和完整 profile 仍须独立验收。

## 验收范围

十六项原始 Service/Action 授权与拒绝用例覆盖双 Wasm 位宽及 x86/QEMU AArch64。离线中止是明确的业务结果；完整目录、取消处理、物理控制器及精确原生 Humble 仍未验收。修改应用时须保留手工别名授权和仅执行一次的清理契约。
