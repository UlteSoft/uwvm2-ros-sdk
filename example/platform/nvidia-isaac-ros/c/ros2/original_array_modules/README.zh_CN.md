# 四个独立模块：NVIDIA 原始 Array

本例通过真实 ROS2 Jazzy DDS 接收未改名、未删字段的 `isaac_ros_apriltag_interfaces/msg/AprilTagDetectionArray`。四个 Core 模块各有独立内存和表。C++ algorithm 通过 `extern "C"` 标量 ABI 使用公共 C record 编解码器，其源码和实际编译前端均为 C++。

| 模块 | 语言 | 私有状态与职责 | 显式额外权限 |
|---|---|---|---|
| main | C | 别名字节、调度 | 无 |
| io | C | wire/report、代际 token、标准输出、等待 | WASI monotonic-clock |
| algorithm | C++ | 完整 Array、id 求和、全 wire FNV-1a | 无 |
| ros_comm | C | 别名、ROS owner/raw handle、完整 Array 和 wire | 一项 Single 订阅、module-exports |

别名和 wire 通过整数标量逐字节传递。地址、record、借用切片和 ROS handle 均留在所属模块。IO 的 64 位 token 仅代表存储代际；commit 先终止写权限，旧 token 写入应返回 9 且不改变字节。ROS owner 在输出前清理，错误路径亦如此。

algorithm 解码全部字段，用 64 位整数计算原始 id 和，并散列每一个 canonical 字节。原生样本含两个不同 detection，每个包含四个 corner 和 36 个 covariance。独立验证器比较全部嵌套字段及 72 个 covariance，再由完整 wire 重算校验值。

main/io/algorithm 的直接 ROS 请求分别返回 13；algorithm 的 clock/random 和 ros_comm 的 clock 返回原始 WASI 76，且私有输出哨兵不变；IO 的显式授权等待成功。包括订阅拒绝项在内，每项探测均独立核验。

## 构建

在本例目录执行：

```sh
export UWVM_ROS_SDK_ROOT=/absolute/sdk
xmake f -c -y -a wasm32 --ros-tool-cache=/absolute/shared/tool-cache
xmake -vD -j1
```

另用独立目录配置 `-a wasm64`，生成真实 64 位内存和表。产物为 `build/main/main.wasm`、`build/io/io.wasm`、`build/algorithm/algorithm.wasm`、`build/ros_comm/ros_comm.wasm`。普通 Xmake shared target 使用公共独立内存 Core preload 模型，具有真实 start section。`run.autobuild=false` 确保运行不替换已构建字节。

运行前阅读[部署手册](DEPLOYMENT.zh_CN.md)。构建选择和链接不授予权限。
