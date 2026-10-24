# franka_msgs/SetJointImpedance native fixture

Build with `xmake f --arch=wasm32` (or `wasm64`), then `xmake`. Set `UWVM_ROS_SDK_ROOT` to the installed SDK. Copy `deployment.template.json` to `deployment.json` and explicitly select the installed source-matched runtime, native gateway and offline fixture endpoints. Run `UWVM_ROS_RUN_CONFIG=deployment.json xmake run main`. The template is a manual policy and the run hook never broadens it.

Send all seven joint stiffness values (N·m/rad) exactly once; print both actual native response fields. A native `success=false` remains response data, separate from transport and cleanup status.

Only controlled offline fixtures are authorized; no physical controller is part of this example validation. See the project acceptance receipt for tested architecture/language dimensions.

## 中文

使用 `xmake f --arch=wasm32` 或 `wasm64` 配置并执行 `xmake`。将 `UWVM_ROS_SDK_ROOT` 指向已安装 SDK，复制部署模板为 `deployment.json`，手动填写源码配对的 runtime、gateway 和离线夹具地址。通过 `UWVM_ROS_RUN_CONFIG=deployment.json xmake run main` 运行；权限配置保持原样。

一次发送原始接口的七个关节刚度值（N·m/rad），保留实际响应的 success 和 error 全部字段。业务失败不等同于通信失败；任何超时均不自动重放调用。

仅连接受控离线夹具。测试不包含物理机器人。具体通过的架构和语言维度以验收回执为准。
