# Unitree c_ffi_bridge

## 真实源语言与工具

Clang 23.1.4; C17 and the maintained numeric C FFI shim for the selected ROS backend.

configure/build 不依赖 uwvm2-ros、gateway、ROS 安装或机器人。在已验收的 Linux x86_64 构建主机上，只需安装 Xmake；SDK 自带经过 SHA-256 固定的离线工具包，由 Xmake 解包和验证，无需预装语言编译器或解释器。产物只有一个 .wasm。

## 三个真实 ROS 2 例子

| 例子 | 真实原生类型与主题 | 保留内容 |
| --- | --- | --- |
| motion_state | unitree_go/msg/SportModeState; /sportmodestate or /lf/sportmodestate | 全部 stamp、error、IMU、模式、步态、里程计、足端状态 |
| low_state | unitree_go/msg/LowState; /lowstate or /lf/lowstate | 全部 20 个 motor、BMS、力、遥控、温度、电源、保留与 CRC 字段 |
| wireless_controller | unitree_go/msg/WirelessController; /wirelesscontroller | 四个完整浮点轴与完整 keys 位掩码 |

部署选择实际主题，例子只接收显式 alias 参数。测试主题是隔离的 /unitree_sdk_fixture/*，没有连接机器人。

## 原生 ROS 1 独立源程序

ros1/motion_state 使用 unitree_legged_msgs/HighState；ros1/low_state 使用 unitree_legged_msgs/LowState；ros1/motor_state 使用 unitree_legged_msgs/MotorState。真实主题依实际驱动或 Gazebo controller 命名空间选择，例如 /high_state、/low_state 及关节 controller 的 state。不得把 ROS 2 或 DDS channel 改名当成 ROS 1。当前 ROS 1 例子全部通过实际 Noetic、生产 Gateway 与 uwvm2-ros 的完整原生消息验收。

## 公开 API 与完整值

### ROS 1

- `unitree_wait_motion_state`
- `unitree_wait_low_state`
- `unitree_wait_motor_state`

### ROS 2

- `unitree_wait_motion_state`
- `unitree_wait_low_state`
- `unitree_wait_wireless_controller`

Xmake 根据 ROS selector 将 `UWVM_UNITREE_ROS_VERSION` 设为 1 或 2；context 与完整 record 必须来自同一后端。

两后端共用辅助接口：`unitree_ffi_backend`.

C/C++/Objective-C/C FFI 的 context、alias、输出对象为同步借用，全部 storage 必须互不重叠并保持有效。C 输出只有 response_present 为真才可读取。C++ Outcome<T> 拥有完整 inline record 与 facts。Go/TinyGo Outcome[T]、Rust Outcome<T>、AS Observation<T> 拥有完整值和 wire；必须检查 ResponsePresent、Some 或非 null。

每次打开一个已有 exact-type alias，订阅一次，最多 250 次实际 poll；仅 11 idle 允许下次 poll。例子在 idle 后通过真实 WASI 单调时钟等待 20 ms，最多 249 次。正常获得的 owner 无论成功失败均只 close 一次；primary 与 cleanup 独立保留，优先返回 primary。trap/panic/内存分配失败不承诺正常清理，宿主仍须回收 Instance。

| 状态 | 含义与处理 |
| --- | --- |
| 0 | 完整操作及正常清理成功；仍检查存在标记 |
| 11 | 无消息或配额暂不可用；仅在有限预算内等待下一次 poll |
| 13 | 没有精确授权，不自动创建权限 |
| 22 / 90 | 无效完整数据或超出容量；不截断、不自动 resize/replay |
| 9 / 95 / 107 / 110 / 125 | 保留失效 owner、不支持、断连、未知超时或撤销的原始数值 |

## Xmake

```lua
target("unitree-observer")
    set_language("c_ffi_bridge")
    set_ros_platform("unitree")
    set_ros2_version("jazzy")
    set_plat(get_config("plat") or "wasm-wasip1")
    set_arch(get_config("arch") or "wasm32")
    add_files("main.c")
target_end()
```

在对应例子目录执行 xmake；run 使用 UWVM_UNITREE_RUN_CONFIG 或 --ros-run-config 指向可信部署 JSON。部署提供实际 uwvm2-ros 与生产 gateway、精确 native identity 与 canonical codec identity、主题、QoS、队列/速率配额及 WASI clock/random 权限。运行还需要 Python 3 进程启动器，可通过 `UWVM_ROS_PYTHON` 指定其可执行文件。该启动器管理 uwvm2-ros 与 gateway 进程；应用由 uwvm2-ros 执行 Wasm。run 不安装语言编译器，不解释源程序。

## 资格与边界

本语言验收目标是 wasm32-wasip1、单线程、无 Wasm EH；memory64 明确拒绝。真实原生 transport 证据来自 Noetic 与 Jazzy fixture，本语言每个后端的 3 个示例均有逐产物记录；这不证明 Humble/Foxy/Melodic 或真实硬件。version selector 是明确的源/部署选择，必须为具体目标重新导出 native metadata 并绑定生产 runtime/gateway。CRC 字段完整保留，但这里不验证物理设备 CRC、移动安全或机器人控制完成。

完整 11 个 ROS 1 与 43 个 ROS 2 record 的字段和 byte bounds 见同语言目录层的 SCHEMA.md；当前发布信息见 share/platform/unitree/publication.json，当前逐产物验收见 share/platform/unitree/qualification.json；可移植历史基线摘要见 share/platform/unitree/historical-baseline.json。基线记录保留历史工具与原生 fixture 证据；本批发布的语言与工具版本以 publication.json 为准。

当前可接受的配置选择见[共享 provider 配置](../../CONFIGURATION.md)。
