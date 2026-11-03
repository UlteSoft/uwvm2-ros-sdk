# SCOUT：真实 Wasm 闭环仿真

[English](README.md)

这是新开发的 C11 应用，不是把原生 ROS 控制程序改名。`main.c` 编译为一个
`agilex-scout-closed-loop.wasm`，在 uwvm2-ros 的 LLVM-AOT 后端中执行。应用
读取完整 Odometry，前进到约 0.5 米，停车，闭环转向约 0.8 弧度，再停车并
检查反馈。转向时的速度积分和位置补偿、任务状态转换、超时和错误处理都在 Wasm。

## 执行边界

| 组件 | 执行位置 | 职责 |
| --- | --- | --- |
| `main.c`、记录编码、C 数学库 | **一个 Wasm32 模块** | 控制算法、反馈处理、任务阶段、速度命令和停止 |
| Gazebo 11、SCOUT 原模型、`gazebo_ros_diff_drive` | native | 物理模拟、轮关节驱动、真实 `/odom` |
| uwvm ROS 2 gateway、Humble/CycloneDDS | native | 校验通信身份、传输与类型序列化，不生成运动指令 |
| `run_simulation.py`、`observe.py` | native 测试工具 | 启动/退场、只读记录和核对；不发布速度或执行运动决策 |

Wasm 是**静态链接的可执行模块**，不是一个可独立运行的 `.a` 静态库。
没有动态 Wasm 预加载；只有 memory index 0 的一块非共享线性内存，最大
64 MiB。本例不验证动态库、多模块或 multi-memory 独立库。初始内存和完整
imports 以实际 Xmake 产物元数据为准。WASI 只显式授予单调时钟，stdio 用于
输出证据；产物没有 socket、进程执行或文件路径打开 imports。

## 精确权限与验证

`deployment.template.json` 只授予当前模块两个 ROS capability：

- `command`：向 `/cmd_vel` 发布完整 `geometry_msgs/msg/Twist`，48 字节，
  单 publisher、单 inflight、QoS reliable/volatile/keep-last，depth 1。
- `odometry`：订阅 `/odom` 的完整 `nav_msgs/msg/Odometry`，有界上限
  952 字节，单 subscriber、单 inflight，depth 10。保留 stamp、frame、pose、
  twist 和两组协方差，没有把完整消息替换为位置 fixture。

类型 RIHS、codec、速率、字节和队列限制均在模板中显式固定。无 service、
Action、其他 topic 或跨模块权限。控制周期约 20 Hz，原生里程计约 30 Hz。
这不是性能基准或实时性保证。

测试实际执行未授予 alias、错误 memory index、越界 buffer、伪造 handle、
用订阅 handle 发布以及关闭 handle 后发布六个拒绝路径。VM 记录实际 guest
内存读写和 checked IPC；独立订阅者保留真实 RMW 接收的 CDR，并将完整
Odometry 重编码后与 guest 内存逐字节比较。所有速度命令必须与 VM 实际读取
的 48 字节命令按顺序完全一致，publisher GID 必须解析为唯一测试 gateway。
DDS 发现期间同一 GID 的暂未解析名称不算额外 publisher。

因此，本例可以证明**这一次运行**没有原生应用替 Wasm 产生运动命令。
原生仿真器和驱动使用 ROS/DDS 是本例明确允许的外部环境。这里使用隔离的
测试 domain 和 `disabled-test` DDS security 模式；不是公开生产部署、DDS
安全域或 SDK 全平台的认证。

## 构建和运行

使用 SDK 已声明的 LLVM 23.1.4 / wasm32-wasip1 / noeh / ROS 2 Humble。
先按 `simulation-config.example.json` 指定六个实际环境输入；VM 和 gateway
必须用本例完整 Odometry catalog、真实 Humble 安装源 proof 及真实 native
identity 构建，普通只有内置消息的 VM 不能替代。`interfaces/` 是准备输入，
自身不构成 native 身份证明；不能把空身份字段手工填成任意 hash。

在已准入的 CPU 调度作业中执行：

```sh
export UWVM_ROS_SDK_ROOT=/absolute/installed/uwvm2-ros-sdk
export UWVM_SCOUT_SIMULATION_CONFIG=/absolute/scout-environment.json
xmake f -p wasm-wasip1 -a wasm32 -m release
xmake
xmake test
```

调度器必须提供独立 `UWVM_SDK_OUTPUT`、ROS domain、端口、tmp/cache 与进程组。
构建、VM、gateway、Gazebo、记录器和全部后代从出生就受同一
`/sys/fs/cgroup/uwvmros.slice` 的 **64 GiB / 零 swap** 总预算约束。运行器会
检查实际 cgroup；不要直接在未受限的宿主 shell 启动测试。这里只复用已经
准备并逐项校验的原生环境，不宣称 Xmake-only 空机器安装通过。

测试必须真正运行回调并产生 `simulation-result.json`；缺环境、空选择、
控制失败、数据不一致、日志丢失或未完整退场都不能返回通过。所有旧失败的
原始 stdout、stderr、任务结果和队列退场日志保留。

## 原生来源

原生模型为 AgileX `ugv_gazebo_sim`，Humble 分支固定 commit
`9d7888affce35321c657c1c8528307f3115b9d41`，SCOUT v2 原 xacro、Gazebo 11
empty world 和原差速驱动；本例没有修改原模型或物理驱动参数。上游
`scout_description/package.xml` 的许可字段仍是 `TODO: License declaration`；
本目录不重新分发模型/网格压缩包，也不将其描述为已确认开放许可。

这是一个自研 Wasm 运动/反馈测试服务。它不等同于完整导航、实机验收、
原上游控制应用移植，或 36 平台 / 29 语言 / 三种库形态全部交付。
实际测试结果、源码与产物 hash 见随本例提供的证据索引。
