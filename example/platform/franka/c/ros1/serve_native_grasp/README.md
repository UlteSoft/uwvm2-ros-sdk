# Complete native action server fixture

Build using `xmake f --arch=wasm32` or `wasm64`, then `xmake`, with `UWVM_ROS_SDK_ROOT` selecting the installed SDK. Copy the deployment template to `deployment.json` and manually select the source-paired runtime, native Gateway and offline endpoint. Execute `UWVM_ROS_RUN_CONFIG=deployment.json xmake run main`.

Open the independently granted advertise and respond roles, activate one endpoint, poll only on idle11 with the explicit monotonic-clock grant, and respond exactly once using the native-correlated ticket/goal. Preserve every original request/goal field. The offline result has `success=false` and UTF-8 error text; Action terminal kind3 intentionally aborts. Transport/codec errors and cleanup remain separate from business data.

The example keeps the endpoint active for an explicit bounded 200 ms transport grace after replying, then closes both owners in reverse order. An ordinary server retains owners for its application session. No response is automatically retried. The fixture never drives hardware.

## 中文

配置 `UWVM_ROS_SDK_ROOT`，使用 `xmake f --arch=wasm32` 或 `wasm64` 后执行 `xmake`。复制部署模板为 `deployment.json`，手工填写源码配对的 runtime、Gateway 与离线端点，再执行 `UWVM_ROS_RUN_CONFIG=deployment.json xmake run main`。

发布与响应使用独立权限别名。只在返回 idle11 时，通过显式单调时钟权限有限轮询；完整保留原始请求或目标字段，并针对真实关联 ticket/goal 只响应一次。离线结果明确返回业务失败和 UTF-8 文本，Action 使用终态3中止；业务结果与传输、编解码和清理状态独立。响应后等待明确的200ms有限传输窗口，再逆序关闭两个所有者。常规服务应按应用会话维持所有者生命周期；不自动重放响应，也不驱动物理设备。

Original units: joint stiffness N·m/rad; grasp width and epsilon m, speed m/s and force N. 原始单位：关节刚度 N·m/rad，抓取宽度与 epsilon 为 m，速度 m/s，力 N。
