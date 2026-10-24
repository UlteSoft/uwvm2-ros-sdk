# franka_gripper/Grasp native fixture

Build with `xmake f --arch=wasm32` (or `wasm64`), then `xmake`. Set `UWVM_ROS_SDK_ROOT` to the installed SDK. Copy `deployment.template.json` to `deployment.json` and explicitly select the installed source-matched runtime, native gateway and offline fixture endpoints. Run `UWVM_ROS_RUN_CONFIG=deployment.json xmake run main`. The template is a manual policy and the run hook never broadens it.

Send width in metres, speed in metres/second, force in newtons and both epsilon tolerances in metres. Track one native goal through the original empty feedback and complete result. The four role aliases are explicit; no any-goal cancellation is granted. Only idle11 permits finite polling with the explicit monotonic-clock grant.

Only controlled offline fixtures are authorized; no physical controller is part of this example validation. See the project acceptance receipt for tested architecture/language dimensions.

## 中文

使用 `xmake f --arch=wasm32` 或 `wasm64` 配置并执行 `xmake`。将 `UWVM_ROS_SDK_ROOT` 指向已安装 SDK，复制部署模板为 `deployment.json`，手动填写源码配对的 runtime、gateway 和离线夹具地址。通过 `UWVM_ROS_RUN_CONFIG=deployment.json xmake run main` 运行；权限配置保持原样。

完整保留宽度（m）、速度（m/s）、力（N）和两个 epsilon 容差（m），跟踪真实 goal ID、空反馈和完整结果。各操作使用独立别名；未授权任意目标取消。只在返回 idle11 时有限轮询，并显式授予单调时钟权限。

仅连接受控离线夹具。测试不包含物理机器人。具体通过的架构和语言维度以验收回执为准。
