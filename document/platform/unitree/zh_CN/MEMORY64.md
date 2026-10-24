# Unitree C/C++ memory64 配置与验收

C17 和 C++23 的既有六个完整记录观察示例现在可选择 `wasm64-wasip1`。
每种语言分别提供 ROS1 和 ROS2 各三个示例，使用 LLVM 23.1.4 与 LLVM23
构建的 noeh 系统头和目标库，唯一应用产物仍为 `build/*.wasm`。

这里使用 Uwvm 的 Preview 1 memory64 扩展。`args_get_wasm64`、
`fd_write_wasm64` 等函数从 `wasi_snapshot_preview1` 导入；这不是上游标准
WASI memory64 ABI。`wasm64` 是 Xmake 架构，`wasm-wasip1` 是平台，两者共同
选择完整目标 `wasm64-wasip1`。

## 构建与运行

在任意 C/C++ Unitree 示例目录执行：

```sh
export UWVM_ROS_SDK_ROOT=/absolute/path/to/sdk
xmake f -c -y -p wasm-wasip1 -a wasm64 --ros-target=wasm64-wasip1 --ros-exceptions=noeh
xmake
```

构建主机验收范围为 Linux x86_64，只需 Xmake 和完整 SDK 发行目录。
Xmake 从固定摘要的离线包安装所需编译工具；构建不要求安装 ROS 或 uwvm2-ros。
运行时应先加载相应原生 ROS 环境，并按[总指南](README.md)准备真实 runtime、
Gateway 和可信部署文件：

```sh
export UWVM_UNITREE_RUN_CONFIG=/absolute/path/to/deployment.json
xmake run
```

启动器在创建 worker 和 Gateway 前检查实际 Wasm 内存宽度。显式选择 64 位
目标时自动打开 Uwvm 的 memory64 和 table64 功能；宽度不匹配的旧产物会被
拒绝。切换回默认目标后应重新构建：

```sh
xmake f -c -y -p wasm-wasip1 -a wasm32 --ros-target=wasm32-wasip1 --ros-exceptions=noeh
xmake
```

## 实际证据

| 检查 | 结果与范围 |
| --- | --- |
| 新 memory64 应用构建 | 12 份；复用只读、逐摘要验证的编译器缓存 |
| 真正空工具缓存构建 | 另 2 次；只暴露 Xmake，独立安装全部 348 个工具文件，产物与对应已验模块相同 |
| 完整原生通信 | 48 次；12 份产物在 x86_64 和 QEMU AArch64 各连续运行两次 |
| 独立高位 ABI 检查 | 4 份 C/C++ 模块、16 次执行；每次核对 9 个高位拒绝与输出槽不变，再完成完整 LowState 通信 |
| 实际 ARM ELF 映射 | 另 2 次运行，记录运行中 runtime/Gateway 的 machine183 映射 |
| wasm32 回归 | 12 份重新构建的模块 SHA 与原产物相同，其中 4 份在两个宿主各运行两次 |
| 原 132 份产物预检 | 逐 SHA 只读检查，22 个入口全部正确识别为 memory32；没有新增编译或 guest 执行 |

82 次实际运行均核对完整原生 wire、原始状态、presence、required 和 cleanup；
每次只创建并正常关闭一个 owner。普通 memory64 通信、ABI 检查、ELF 观察和
wasm32 回归分别计数。实际配置检查另包含 24 个接受、68 个拒绝，以及启动器
对真实产物的 36 个拒绝检查。

所有编译和执行在 SSH Linux 的 64 GiB、禁用 swap cgroup 中完成。维护源码
在本机写入后整文件夹 SCP 同步；本机只进行源码、文档和证据检查。

## 支持范围

该配置只准入 C/C++、P1、单线程且无 Wasm EH。其余语言的 memory64、P2、
线程、冲突 triple 和 memory64 EH 仍被明确拒绝。通信覆盖 Noetic/Jazzy 的
HighState、ROS1 LowState、MotorState、SportModeState、ROS2 LowState 和
WirelessController；不把六种通信记录扩展为全部 54 种记录的 memory64 codec 验收。

QEMU 运行真实 AArch64 runtime、Gateway 和原版 ROS，但不代表实体 ARM 硬件
或 ARM 原生编译器宿主验收。模块具有 64 位地址类型，实际内存上限为 64 MiB；
高位拒绝检查不代表成功分配或访问超过 4 GiB 的内存。墙钟时间包含原生发现、
启动、轮询和模拟器开销，不作为硬件性能结论。当前仍是完整记录观察路径，
没有新增机器人执行命令，也未测试实体机器人。

逐项结果见 [memory64-qualification.json](../../../../share/platform/unitree/memory64-qualification.json)。
原 132 份 wasm32 示例的资格和计数保持独立。
