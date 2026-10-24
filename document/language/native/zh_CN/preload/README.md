# 公共多语言预加载示例

`example/language/native/preload` 中的 ROS1、ROS2 项目使用统一公共 provider 和
dispatch。项目只声明 `set_language`、`set_ros_platform`、`set_kind`、
`set_arch`、`set_ros_run_config`；构建生命周期由安装的 SDK 负责。

依赖图包含 D 静态库、Zig algorithm 动态模块、D io 动态模块、Objective-C
ros_comm 动态模块，以及 Zig main。只部署四个 Wasm 模块。静态库属于构建输入，
链接器必须实际提取被引用的 `scalar_bias` 符号。

| 目标 | 类型 | 语言 | 运行时权限 |
| --- | --- | --- | --- |
| bias | static | D | 不部署 |
| algorithm | shared | Zig | 没有额外 WASI 权限；禁用 ROS |
| io | shared | D | WASI 标准输出；禁用 ROS |
| ros_comm | shared | Objective-C | 一个精确 String 发布能力及实时钟 |
| main | binary | Zig | WASI 参数和标准流；禁用 ROS |

每个模块拥有独立线性内存。跨模块调用只传整数标量。`algorithm`、`io`、
`ros_comm` 导入名称与手动预加载名称完全一致。不跨模块传递内存、裸指针、
分配器所有权或 ROS 句柄。

设置 `UWVM_ROS_SDK_ROOT` 为安装的 SDK 路径，进入 ROS1 或 ROS2 项目目录，
只使用 Xmake 构建：

```sh
xmake f -P . -c --yes -p wasm-wasip1 -a wasm32
xmake build -P . -r -vD --yes
```

省略 `-a` 时默认为 wasm32。使用 `-a wasm64` 构建整张 memory64 依赖图。
bias 保持 static 类型并生成 `libbias.a`，其他目标生成独立实例化的 `.wasm`。
不部署构建中间文件或编译器缓存。

wasm32 构建将 `deployment.example.json` 复制为 `deployment.json`；
memory64 将 `deployment64.example.json` 复制为同名 `deployment.json`。明确填写安装的运行器和匹配原生网关路径，
以及 ROS 连接、完整 String 类型身份、话题、限额和三个预加载路径。
main 使用 `build/main/main.wasm`；其余文件分别位于 `build/io`、
`build/algorithm`、`build/ros_comm`。所有模块必须使用同一所选内存宽度。

先启动真正的原生 ROS 环境和独立 String 订阅者，订阅配置中的输出话题。
ROS1 选择 Noetic 和明确的 master URI；ROS2 选择 Jazzy、域 149 及配置的 RMW。
SDK run 动作管理自己的工作进程和网关，不启动 master 或独立订阅者。

应用通过 `set_ros_run_config` 明确选择此 `deployment.json` 路径。
编辑该手动文件后，使用公共运行入口：

```sh
xmake run -P . main
```

保持构建时选定的架构。JSON 由 run 动作读取。编译时的 ROS 平台选择只标识
导入族，不授予原生操作能力。io 在运行时仍只有 WASI 权限；配置明确禁用
main、algorithm、io 的 ROS。只有 ros_comm 获得一个精确发布能力和
`realtime-clock`。固定 Preview1 的 `nanosleep` 使用实时钟。
任何模块都不额外获得全局 ROS、继承环境、文件系统、网络套接字或随机数授权。

输入 9 计算得到 38，输入 53 得到 170。独立订阅者必须收到相同的完整原生 String。
ROS1 的首次发布才创建原生发布者，因此发送两次相同值，中间仅有一次有限
1000 毫秒发现间隔；订阅者可能收到两次。ROS2 使用一次有限 500 毫秒节流等待。
等待本身不证明订阅者已经就绪。

只看退出码不算验收。保存实际 Wasm 哈希、原生类型身份、完整原生序列化消息、
工作进程和网关策略、资源创建与关闭审计，以及清理结果。命令只拥有一个 ROS
资源并关闭一次，不发送机器人控制操作。这里的无 Objective-C 运行时编译
不代表 ARC、对象分配、消息派发、全部语言组合或厂商消息已经验收。
