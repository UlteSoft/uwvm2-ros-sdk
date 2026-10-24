# franka 原生 C Service 与 Action 服务端


## serve_native_joint_impedance

源码：`sdk/example/platform/franka/c/ros1/serve_native_joint_impedance`。

配置 `UWVM_ROS_SDK_ROOT`，使用 `xmake f --arch=wasm32` 或 `wasm64` 后执行 `xmake`。复制部署模板为 `deployment.json`，手工填写源码配对的 runtime、Gateway 与离线端点，再执行 `UWVM_ROS_RUN_CONFIG=deployment.json xmake run main`。

发布与响应使用独立权限别名。只在返回 idle11 时，通过显式单调时钟权限有限轮询；完整保留原始请求或目标字段，并针对真实关联 ticket/goal 只响应一次。离线结果明确返回业务失败和 UTF-8 文本，Action 使用终态4中止；业务结果与传输、编解码和清理状态独立。响应后等待明确的200ms有限传输窗口，再逆序关闭两个所有者。常规服务应按应用会话维持所有者生命周期；不自动重放响应，也不驱动物理设备。

Original units: joint stiffness N·m/rad; grasp width and epsilon m, speed m/s and force N. 原始单位：关节刚度 N·m/rad，抓取宽度与 epsilon 为 m，速度 m/s，力 N。

## serve_native_grasp

源码：`sdk/example/platform/franka/c/ros1/serve_native_grasp`。

配置 `UWVM_ROS_SDK_ROOT`，使用 `xmake f --arch=wasm32` 或 `wasm64` 后执行 `xmake`。复制部署模板为 `deployment.json`，手工填写源码配对的 runtime、Gateway 与离线端点，再执行 `UWVM_ROS_RUN_CONFIG=deployment.json xmake run main`。

发布与响应使用独立权限别名。只在返回 idle11 时，通过显式单调时钟权限有限轮询；完整保留原始请求或目标字段，并针对真实关联 ticket/goal 只响应一次。离线结果明确返回业务失败和 UTF-8 文本，Action 使用终态3中止；业务结果与传输、编解码和清理状态独立。响应后等待明确的200ms有限传输窗口，再逆序关闭两个所有者。常规服务应按应用会话维持所有者生命周期；不自动重放响应，也不驱动物理设备。

Original units: joint stiffness N·m/rad; grasp width and epsilon m, speed m/s and force N. 原始单位：关节刚度 N·m/rad，抓取宽度与 epsilon 为 m，速度 m/s，力 N。

## 验收范围

十六项原始 Service/Action 授权与拒绝用例覆盖双 Wasm 位宽及 x86/QEMU AArch64。离线中止是明确的业务结果；完整目录、取消处理、物理控制器及精确原生 Humble 仍未验收。修改应用时须保留手工别名授权和仅执行一次的清理契约。
