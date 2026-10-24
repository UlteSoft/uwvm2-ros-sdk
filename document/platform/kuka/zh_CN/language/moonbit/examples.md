# kuka MoonBit 示例

每个原始目录提供独立的 state_codec、service_response_codec、feedback_codec 项目，分别演示完整状态、服务响应和原始反馈/诊断值。每项都有自己的 xmake.lua 和精炼 main.mbt。程序构造原始默认值，实际编码及解码，输出原始类型和实际字节长度，任一错误分支都会终止。

```sh
export UWVM_ROS_SDK_ROOT=/opt/uwvm2-ros-sdk
cd "$UWVM_ROS_SDK_ROOT/example/platform/kuka/moonbit/ros2/kuka-ros2-complete/state_codec"
xmake f -c -p wasm-wasip1 -a wasm32
xmake
```


公共选择器为 set_language、set_ros_platform、set_ros1_version/set_ros2_version、set_ros_scenario、set_arch、set_plat。保留示例的确切 ros.sdk.vendor_version 目录身份。共享工具包属于构建输入，应用仅输出一个 Wasm 文件。

运行另外需要已安装的 uwvm2-ros 与手工 uwvm-native-ros-run-v2 部署文件。本地值示例的 main 设置 ros_enabled:false、grants:[]、wasi_grants:["stdio-full-rights"]。backend/distribution 与 Xmake 目标一致；即使关闭 ROS 效果，仍需填写相应 runtime/gateway 路径及后端连接字段。使用 `xmake f --ros-run-config=/absolute/path/value-deployment.json` 后运行 `xmake run`。

完整非默认字段与畸形输入回归保存在 VM 仓库，其 fixture 和计数器与 SDK 教程分开维护。原生通信需要确切手工 alias 及受控 peer。wasm64 请求必须实际产生 memory64 或明确失败；static/shared 需要真实共享编译器和加载契约，不能把改名脚本包视为链接结果。
