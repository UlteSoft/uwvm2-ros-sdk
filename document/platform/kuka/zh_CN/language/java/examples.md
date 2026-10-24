# kuka / java 例子指导

每个源码域都有以下三个独立目录和 xmake.lua。教程使用真实源码构造原始完整类型、编码、解码并检查全部字节，没有预计算结果。状态默认值是本地测试数据。

| Example | Purpose |
| --- | --- |
| `state_codec` | Complete original state fields, widths and arrays. |
| `service_response_codec` | Original response payload, including vendor result/success fields. |
| `feedback_codec` | Complete action feedback where declared; original telemetry message in ROS1 catalogs without that action. |

```sh
export UWVM_ROS_SDK_ROOT=/opt/uwvm2-ros/sdk
cd "$UWVM_ROS_SDK_ROOT/example/platform/kuka/java/ros2/kuka-ros2-complete/state_codec"
xmake
xmake run
```

更改目标位宽时将 xmake.lua 中 set_arch 明确改成 wasm64；保持 wasm-wasip1 并使用同一套公共依赖。memory64 未通过的编译器/引擎仍须由公共所有者完成，不能回退或冒充支持。运行权限由用户手动配置，教程不会修改策略。

类型教程之后，实际 ROS 验收必须验证原生 topic、service 和 action 对端、完整内容、拒绝权限、错误与清理，并分别在 x86_64 和 QEMU AArch64 运行真实 uwvm2-ros。保留的原有通信流程在 src/platform/kuka/flows/ 中，需使用安装的公共导入和运行配置。
