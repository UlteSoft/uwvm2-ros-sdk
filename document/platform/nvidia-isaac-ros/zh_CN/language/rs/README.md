# nvidia-isaac-ros Rust ROS2

用 UWVM_ROS_SDK_ROOT 指定安装的SDK。example/platform/nvidia-isaac-ros/rs/ros2
下每个独立目录都有xmake.lua。执行 `xmake f -a wasm32`、`xmake -vD -j1`，
由真实Rust1.87.0生成一个应用Wasm。冷构建只需Xmake和固定SDK依赖，不需要原生
ROS安装。Rust自身后端是LLVM20.1.1，公共最终链接器是LLVM23.1.4；wasm64明确拒绝。
导入公共crate `nvidia_isaac_ros` 与 `roswasm::typed::Canonical`，公共action解析精确模块，
不通过网络解析包。

roundtrip接收uint32种子并验证完整生成类型；decode_argument接收一个有界精确
十六进制消息体，核对完整类型解码再编码；malformed_wire另要求截断、尾随数据
均被拒绝。成功输出全部线格式字节。三组件图、九应用、30项x86/QEMU CPU用例已
通过；这些用例关闭ROS，仅明确授予单调时钟。坏输入返回22，标准输出失败返回5。
规范值拥有所有字符串/序列，暴露完整值前检查嵌套边界、有限数和UTF-8。

Isaac ROS另提供original_array_receive、original_array_echo、original_array_revoke，
真实操作完整原生Array，保留两条检测、每条四个角点和全部72个协方差值。
手动复制审查部署模板，选择真实原生VM/网关，用UWVM_ROS_RUN_CONFIG和
`xmake run`目标名执行。仅nvidia_rs模块获得精确sample订阅，echo另含outgoing
发布，不全局授权ROS。单调时钟支持有限轮询/定速，不添加随机或实时时钟授权。
12项x86/QEMU原生用例通过，含拒绝13、原始句柄失效9、撤销重新打开125、清理，
独立ROSIDL/CDR订阅者共观测40条完整消息。主操作与清理状态分开；轮询11为空闲，
最多1000次、每次等待20ms；20次主动回发间隔100ms。副作用调用拒绝即停止，
不重放。同步调用期间保留数据所有权。

精确可移植源码/产物身份见share/platform/nvidia/rust-native-review41.json。
原生A64宿主执行不证明Guest memory64。其他原生目录类型、static/shared互操作、
GPU/NITROS、ARM编译宿主均保持独立开放状态。
