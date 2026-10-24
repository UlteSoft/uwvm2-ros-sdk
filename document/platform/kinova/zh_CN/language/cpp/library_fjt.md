# 完整原始 FollowJointTrajectory 库

`kinova` / `ros2_humble` 的 C、C++ `codec_static` 与 `codec_shared` 示例消费原始 `control_msgs/action/FollowJointTrajectory` 的完整 Goal、Feedback 和 Result。两种轨迹、四个容差数组、所有反馈分支和结果代码/文本均保留。完整目录包含17个记录、64个字段；这三个分量的实际依赖闭包为16个记录、59个字段，独立的 `sensor_msgs/msg/JointState` 不在本例消费范围内。完整目录本身保持不变。

本例对调用者提供的规范字节解码并重新编码，不提交机器人目标，也不证明精确 Humble 原生通信。真正的 Humble SDK、TypeSupport 导出与原生类型标识仍须单独验收。编解码标识不是原生 ROS 类型哈希；在现有运行时内执行可移植库，也不等于该运行时具有 Humble 注册表支持。

## 构建与运行

设置 `UWVM_ROS_SDK_ROOT` 指向安装的 SDK，进入对应语言和库种类的示例目录。目标使用普通 `set_kind("static")` 或 `set_kind("shared")`、`add_deps("record_codec")`、`set_ros_platform("kinova")`、`set_ros2_version("humble")`，profile 为 `ros2_humble`。两个目标必须使用相同位宽：

```sh
export UWVM_ROS_SDK_ROOT=/path/to/sdk
xmake f --plat=wasm-wasip1 --arch=wasm32
xmake -vD main
cp deployment.template.json deployment.json
```

需要 memory64 时改用 `wasm64`。手工编辑 `deployment.json`：`runtime` 指向已安装的 uwvm2-ros，`gateway` 指向部署格式要求的可执行文件。所有模块都显式关闭 ROS，因此只校验 gateway 输入，不启动它。第一个参数为 `goal`、`feedback` 或 `result`，第二个为完整规范线格式的十六进制字节。小型完整 Result 示例 `feffffff0400000041e4b8ad` 表示错误码 -2 和 UTF-8 文本 `A中`。然后运行：

```sh
UWVM_ROS_RUN_CONFIG=deployment.json xmake run main
```

公共运行钩子执行已有产物，须保留提交的策略，不构建、不获取编译器缓存。输出含分量字节数与实际重新编码的十六进制字节；`primary=0 cleanup=0` 表示成功，参数或编解码错误返回22。42表示主程序第一次调用前真实库初始化器尚未完成。

## 部署和标量接口

静态依赖是公共私有构建目录 `.uwvm-ros/archives` 中带索引的 `.a`，仅部署 `build/main/main.wasm`。共享依赖是独立实例化的 Core 模块 `build/record_codec/record_codec.wasm`，须部署两个 `.wasm`，并保留模板中精确的 `record_codec` preload/import 标识。它使用实际 Core 模块约定，不假定原生共享对象 ABI 或 LLVM PIC 装载器。

`main` 与 `record_codec` 分别设置 `ros_enabled: false`、`grants: []`、`wasi_grants: []`；静态部署只有 `main`。没有追加 WASI 权限仍保留运行时通常提供的基本标准流。示例不申请 ROS 权限，也不自动扩权。

完整类型值、输入与输出存储由库独占。六个导出只传递 `uint32_t` 标量，不跨模块传指针、C++ 对象、原生 ROS 句柄或内存。单个模块内顺序调用：

| 导出 | 约定 |
|---|---|
| `record_codec_ready()` | 真实提前初始化完成后观察到101；查询不会补做初始化。 |
| `record_codec_reset(component)` | 选择 Goal=0、Feedback=1、Result=2，并清除旧输入/输出；非法选择返回22且不改变状态。 |
| `record_codec_push(value)` | 追加0–255字节；非法值或8581字节有界输入已满时返回22，不追加。 |
| `record_codec_validate()` | 完整解码并重新编码，返回0或22；只有成功后才能读取输出。 |
| `record_codec_size()` | 成功输出的字节数，reset 后为0。 |
| `record_codec_byte(index)` | 复制一个输出字节，越界返回 `UINT32_MAX`。 |

每个值都先 reset，逐字节 push，validate 一次，成功后在下次 reset 前复制输出。C 与 C++ 共用标量 ABI，各自使用公开的语言编解码器和模块存储。初始化器真实提前运行，ready 查询没有懒初始化回退。

## 完整结构与边界

| 原始记录 | 完整且有序的字段 | 规范字节数 最小/最大 |
|---|---|---:|
| `builtin_interfaces/msg/Duration` | `sec`, `nanosec` | 8/8 |
| `builtin_interfaces/msg/Time` | `sec`, `nanosec` | 8/8 |
| `std_msgs/msg/Header` | `stamp`, `frame_id` | 12/140 |
| `trajectory_msgs/msg/JointTrajectoryPoint` | `positions`, `velocities`, `accelerations`, `effort`, `time_from_start` | 24/280 |
| `trajectory_msgs/msg/JointTrajectory` | `header`, `joint_names`, `points` | 20/1484 |
| `geometry_msgs/msg/Vector3` | `x`, `y`, `z` | 24/24 |
| `geometry_msgs/msg/Quaternion` | `x`, `y`, `z`, `w` | 32/32 |
| `geometry_msgs/msg/Transform` | `translation`, `rotation` | 56/56 |
| `geometry_msgs/msg/Twist` | `linear`, `angular` | 48/48 |
| `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | `transforms`, `velocities`, `accelerations`, `time_from_start` | 20/844 |
| `trajectory_msgs/msg/MultiDOFJointTrajectory` | `header`, `joint_names`, `points` | 20/2048 |
| `control_msgs/msg/JointTolerance` | `name`, `position`, `velocity`, `acceleration` | 28/156 |
| `control_msgs/msg/JointComponentTolerance` | `joint_name`, `component`, `position`, `velocity`, `acceleration` | 30/158 |
| `control_msgs/action/FollowJointTrajectory_Goal` | `trajectory`, `multi_dof_trajectory`, `path_tolerance`, `component_path_tolerance`, `goal_tolerance`, `component_goal_tolerance`, `goal_time_tolerance` | 64/8580 |
| `control_msgs/action/FollowJointTrajectory_Result` | `error_code`, `error_string` | 8/264 |
| `control_msgs/action/FollowJointTrajectory_Feedback` | `header`, `joint_names`, `desired`, `actual`, `error`, `multi_dof_joint_names`, `multi_dof_desired`, `multi_dof_actual`, `multi_dof_error` | 152/4708 |

规范数据使用小端标量和32位序列/字符串长度，文本为 UTF-8 且不带字符串终止符。这是 SDK 有界线格式，不是原始 DDS CDR。部署边界保留所有原始字段：普通关节序列和容差数组最多8项；每种轨迹最多1个点；多自由度变换和反馈关节名最多1项；多自由度速度/加速度序列最多8项。名称/坐标系 ID 最多128个 UTF-8 字节，Result 错误文本最多256字节。精确顺序和边界见 `share/platform/kinova/catalogs/ros2_humble/records.json` 以及公开有界记录头文件。

所有浮点值须有限。时间采用有符号秒与小于1,000,000,000的规范纳秒。结构合法的负 Duration 只是编解码数据，不证明控制器目标可执行。物理关节单位和容差含义以选定控制器接口为准，编解码器不换算单位、不判断可行性。截断、尾随数据、超界长度、非法文本/时间和非有限值均失败，不宣称有成功输出。

## 验证范围

私有复核覆盖两个位宽、两种普通库和两种源语言，使用完整原始 Goal/Feedback/Result，截断/尾随/长度变异及 NaN、正负无穷。真实 x86 与 QEMU AArch64 消费、提前初始化、手工策略保留和工作进程回收须由对应回执证明。Humble 原生 ROS、取消和实体控制器行为均不属于该编解码验收。
