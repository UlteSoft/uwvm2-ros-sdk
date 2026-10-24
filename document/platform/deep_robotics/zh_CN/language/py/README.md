# deep_robotics 的 py 完整值接口

源版本固定为 `DeepRoboticsLab/sdk_deploy` 的 `9ea6ee94bfe90c9a36f5799d39f8dc1d821128db`。完整原始定义（含标准依赖）位于
`share/platform/deep_robotics/catalogs`。每个原始字段、嵌套值、常量、默认值和容量均保留。
LimX 使用明确命名的自建 ROS2 桥接；Booster 官方接口与 SDK 桥接分别命名，不能把
桥接身份当作官方身份，也不能把 native mros MD5 或 canonical 身份当作原生 RIHS。

安装 SDK，设置 `UWVM_ROS_SDK_ROOT`。本语言的三个独立实例位于
`example/platform/deep_robotics/py/ros2`，每个都有自己的源码与 xmake.lua。
声明 `set_language`、`set_ros_platform`、`set_ros2_version`、`set_arch`、`set_plat` 后执行
`xmake`，部署产物仅为一个 `.wasm`。编译只消耗可校验的公共工具链/解释器输入，
不要求本机 ROS 或 uwvm2-ros。`ros.deep_robotics.version` 默认选择上述锁定源版本；可选
`ros.deep_robotics.model` 按 provider.json 校验。固件、实际型号、transport、QoS、topic/
service/action 资源、原生 registry 与物理限制均由部署显式提供，不能由源码提交猜测。

公开模块为 `deep_robotics.py.ros2.observation`。`wait_<operation>(alias, attempts, pause)` 返回完整类型值与
相互独立的主错误、清理错误、RPC 状态、poll 次数、required/length 存在性及全部
canonical wire_hex。`output(result)` 在关闭后输出，并按主错误、清理错误、输出错误
的顺序选择进程码（最大 125）。生成 records 模块公开全部原始字段及身份元数据；
构造、编码、解码均不获取权限，非法、截断、尾随字节不得暴露成部分成功值。

alias 必须已由用户授权并与独立导出的真实原生类型绑定。attempts 为 1..250；多次
poll 时 pause 为调用者的 20 ms 单调时钟等待函数，返回真实 WASI errno。仅 idle=11
允许在同一个订阅 owner 上继续 poll。拒绝=13、非法=22、容量=90 等立即停止；服务
或命令效果绝不重放。正常获取后的所有路径只关闭一次；致命 trap/内存耗尽由外层
实例退役处理，不能保证正常析构。三个实例读取不同的完整记录；读取命令值话题也
不会向实体机器人发命令。全目录 codec 测试是三个实例以外的额外验收。

运行前安装 uwvm2-ros，手工配置真实 native ROS registry、gateway 和权限。将
`UWVM_ROS_RUN_CONFIG` 指向格式为 `uwvm-installed-runtime-launch-v1` 的 JSON：
`runtime_arguments` 填写用户手工决定的 runtime/policy 参数，`application_arguments`
填写真实别名。`xmake run` 只增加 --run 和现有 Wasm 路径，不自动授权；可用
`UWVM_ROS_RUNTIME` 选择已安装程序。本次原生 ROS、x86_64 和 QEMU 真 AArch64
执行证明必须单独查看 coverage/evidence，源码或打包成功不代表已通过。

当前可接受的配置选择见[共享 provider 配置](../../CONFIGURATION.md)。
