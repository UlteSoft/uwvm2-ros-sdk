# Explicit ABB deployment

The `deployment.template.json` file is a manual ROS2 Jazzy read-speed policy.
Replace the runtime/gateway paths, exact resource and independently exported
native RIHS01 identity. Select matching source-built ABB registries in both
executables. The template deliberately does not contain an invented native hash.
Keep its separate canonical codec identity unchanged for this source catalog.

Set `UWVM_ROS_RUN_CONFIG` to the absolute path of your reviewed JSON and invoke
`xmake run` after `xmake`. The runtime needs no native robot SDK inside the guest.
The gateway connects to the independently installed native driver or finite
validation peer. `arguments: ["sample"]` supplies the exact capability alias.
For an explicit denied run retain `ros_enabled: true` and set `grants: []`.

See `sdk/document/native-run.en_US.md` and `sdk/document/native-run.zh_CN.md` for
multiple capabilities, preloads, explicit module export delegation, process
cleanup and the distinction between compiler, native ROS and controller tests.

中文：必须人工填写真实原生类型标识、端点及已配对的运行时/网关路径，再设置
`UWVM_ROS_RUN_CONFIG` 运行。此模板不授予任何额外默认权限，也不启动实体机器人。
