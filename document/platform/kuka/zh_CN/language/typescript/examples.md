# 构建与运行 KUKA TypeScript 示例

每个项目都有独立的 `xmake.lua`，生成一个应用 `.wasm`。示例检查两个非默认
完整值、独立小端字节、解码字段及尾随字节拒绝，全部断言通过后才输出 `PASS`。

| 目录 | 检查的记录 |
| --- | --- |
| `state_codec` | `kuka_driver_interfaces/msg/KssStatus` |
| `service_response_codec` | `lifecycle_msgs/srv/ChangeState_Response` |
| `feedback_codec` | `control_msgs/action/FollowJointTrajectory_Feedback` |

选择已安装的 SDK 并构建一个项目：

```sh
export UWVM_ROS_SDK_ROOT=/opt/uwvm2-ros-sdk
cd "$UWVM_ROS_SDK_ROOT/example/platform/kuka/typescript/ros2/kuka-ros2-complete/state_codec"
xmake f -c -p wasm-wasip1 -a wasm32
xmake
```

构建 memory64 应用时，执行 `xmake f -c -p wasm-wasip1 -a wasm64`，再执行
`xmake`。两种配置使用统一的共享编译器及 JS 引擎系列。构建不要求安装
uwvm2-ros 或原生 ROS。

运行需要 Linux uwvm2-ros 可执行文件及显式模块权限。将以下内容保存为
`value-deployment.json`，把 `runtime` 改为实际安装的绝对路径：

```json
{
  "format": "uwvm-native-ros-run-v2",
  "runtime": "/opt/uwvm2-ros/bin/uwvm2-ros",
  "backend": "ros2",
  "distribution": "jazzy",
  "execution_timeout_seconds": 300,
  "connection": {
    "node-name": "kuka_value_example",
    "namespace": "/",
    "domain-id": "219",
    "rmw-implementation": "rmw_fastrtps_cpp",
    "security-mode": "disabled-test",
    "keystore": "not-applicable",
    "enclave": "not-applicable"
  },
  "examples": {
    "state_codec": {
      "arguments": [],
      "main_module": "main",
      "preloads": [],
      "modules": {
        "main": {
          "ros_enabled": false,
          "grants": [],
          "wasi_grants": ["stdio-full-rights"]
        }
      }
    }
  }
}
```

```sh
export UWVM_ROS_RUN_CONFIG="$PWD/value-deployment.json"
xmake run
```

启动器选择 AOT 和经过检查的原生 Unwind。该配置显式禁用 ROS，仅授予 WASI
标准流权限，因此不要求安装网关，也不会启动网关。ROS 连接字段标明所选配置，
在 ROS 禁用时不会建立原生连接。运行其他示例时，将 `examples` 中的
`state_codec` 键改为所选目录名。显式选择 wasm64 构建后，启动器会补充该目标
必需的解析特性。

实际连接 ROS 时，应另行配置原生网关、准确类型身份、资源限制及逐模块手工
授权。任一模块，包括预加载模块，启用 ROS 后都必须提供网关。选择厂商、安装
类型或通过编解码检查均不会自动授予 ROS 权限。

所选值处理示例及对应的 VM 强回归分别保留两种位宽的编译与运行证据。原生 ROS
节点、服务／动作所有权以及静态／共享库不在这些示例的验收范围内。
QEMU AArch64 检查证明功能行为，不代表原生性能。

在 AArch64 上运行 memory64 应用时，应使用包含调用帧修复的当前 uwvm2-ros。
本轮采用配对的 `23.1.1-uwvm-ros.15` LLVM：六次独立、仅有 Xmake 的冷构建均
重现了在原生 x86_64 和完整系统 QEMU AArch64 中执行的相同 Wasm 字节。
六个项目还在原生 x86_64 上通过了实际 `xmake run`，使用显式配置的标准流授权，
并关闭 ROS。启动器核对了所选运行时与应用的完整字节；这些编解码程序没有启动
原生 ROS 网关。运行钩子的验收不等同于原生 ROS 服务或控制器验收。
