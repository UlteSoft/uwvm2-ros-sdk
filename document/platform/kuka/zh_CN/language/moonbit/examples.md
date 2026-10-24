# kuka / MoonBit 例子指导

每个源码域都有三个独立项目，各自提供 `xmake.lua` 与真实 `main.mbt`：

| 项目 | 实际运行内容 |
| --- | --- |
| `state_codec` | 构造、编码、解码原始完整状态记录。 |
| `service_response_codec` | 处理原始完整响应组件。 |
| `feedback_codec` | 处理目录声明的完整 action feedback 或保留遥测记录。 |

当前实测域为 `kuka-ros2-complete`，声明 ROS2 `jazzy`。使用已安装 SDK 与其经过校验的公共工具包：

```sh
export UWVM_ROS_SDK_ROOT=/opt/uwvm2-ros/sdk
cd "$UWVM_ROS_SDK_ROOT/example/platform/kuka/moonbit/ros2/kuka-ros2-complete/state_codec"
xmake f -c -p wasm-wasip1 -a wasm32
xmake
```

唯一应用产物为 `.wasm`，另外两个目录分别执行相同构建流程。状态例子的真实源码为：

```moonbit
/// @file main.mbt
/// @brief Exercise the complete original kuka_driver_interfaces/msg/KssStatus through genuine MoonBit compilation.
fn main {
    let codec = @records.Ros2Kuka_driver_interfacesMsgKssStatusCodec::new()
    let value = @records.Ros2Kuka_driver_interfacesMsgKssStatus::new()
    let bytes = match codec.encode(value) {
        Ok(bytes) => bytes
        Err(code) => abort("whole record encode error \{code}")
    }
    match codec.decode(bytes) {
        Ok(_) => println("{\"type\":\"kuka_driver_interfaces/msg/KssStatus\",\"bytes\":\{bytes.length()}}")
        Err(code) => abort("whole record decode error \{code}")
    }
}
```

运行前在可信 v2 部署文件中明确配置已安装的 native runtime 与 gateway。选择准确 `state_codec` 场景，模块声明 `ros_enabled: false`、`grants: []`，并显式授予 WASI `stdio-full-rights`。在没有 source ROS 环境的 shell 中执行：

```sh
xmake f --ros-run-config=/absolute/path/value-deployment.json
xmake run
```

另外两个例子的场景名称与项目匹配。`run.autobuild=false` 保持编译为独立动作；例子不创建权限或自动 source 中间件。公共运行器保留准确 backend/distribution，已 source 环境与声明不一致时会拒绝运行。

这三个项目已使用逐项相同 SHA 的 Wasm 在 x86_64 与 QEMU AArch64 执行通过，证据范围为值编解码。其他域的三例执行、native peer、权限／错误／清理矩阵、memory64 和库组合仍未完成。选择其他域时保留原始 Humble 或 ROS1 声明，准确 native 发行版资格需另行验收。
