# 接收完整的原始 AprilTagDetectionArray

本 C 命令通过部署者提供的 ROS2 alias 接收一条 `isaac_ros_apriltag_interfaces/msg/AprilTagDetectionArray`。原始 header、每个检测的 family 与有符号 id、完整 center 和四个 corners，以及带时间戳的 pose 和全部 36 项 covariance 都会保留。程序使用公共 C capability API 和完整 canonical record codec，不向 guest 暴露 CDR 缓冲区、native 指针或 GPU handle。

原始 NVIDIA 定义固定在提交 `7bec6ae5dbb2faa11617f40226e8932a4a94e6e4`，选定的 native identity 为 `RIHS01_45595f343aa66856ae56aee87f959a0b0ceed2132b038a7f6c6d24be707bcbff`。依赖图含九个原始消息类型，但只有 Array 注册为独立 topic 根。实际 native 类型哈希和完整字段描述须独立核对，不能用 guest 的容量限制代替。

## 编译与运行

完整复制本例目录，在 Linux 上选择已安装 SDK 并编译一种实际指针位宽：

```sh
export UWVM_ROS_SDK_ROOT=/absolute/installed/sdk
xmake f -a wasm32
xmake -vD -j1
export UWVM_ROS_RUN_CONFIG=/absolute/operator/deployment.json
xmake run original-nvidia-array
```

选择 `xmake f -a wasm64` 后重新编译，即得到真正的 memory64/table64 产物。公共调度器选择对应的 Preview1 工具链，本例不提供私有编译器包装或运行时参数。编译不需要运行中的 ROS 图；运行需要另外安装匹配的 native 产品、实际 publisher 和[部署指南](DEPLOYMENT.zh_CN.md)中的显式配置。`run.autobuild` 已关闭，`xmake run` 只执行已构建字节。

## 源码与所有权

`main.c` 在本模块中持有一个 backend context、一个 capability、一个完整 bounded value 和一个 canonical 输出缓冲区。程序打开 alias、建立订阅，最多轮询 250 次。idle11 保留同一个 owner，在下一次 poll 前通过 monotonic clock 等待 20 ms；这里没有 RPC 重放，也不会构造 native publisher。

两个应用参数分别是 alias 和 mode。配置模板使用 `sample` 与 mode `0`：

| Mode | 接收完整值后的操作 | 预期资源事件 |
| --- | --- | --- |
| `0` | 关闭一次 | create=1、close=1、revoke=0 |
| `1` | 关闭、检查旧 raw handle、重新打开并关闭新 owner | create=2、close=2、revoke=0 |
| `2` | 撤销、检查旧 raw handle 和被撤销 alias | create=1、close=0、revoke=1 |

alias 字节、完整 typed value 和 codec 存储均属于本模块。保存的旧 handle 只用于显式退休检查；重新打开不能恢复旧的存活身份。这里退休的是 guest 权限，不会停止 native detector 或 publisher。

## 输出与错误

程序输出一行 JSON，保留 `primary`、`cleanup`、`encoding`、完整 `wire_hex` 和各项独立退休状态。成功接收时前三项均为零。wire 是按原始字段顺序编码的小端 canonical 数据，字符串与序列带长度；它不是 native CDR。未使用的容量不会写入，活动字段不会被投影或省略。

本例限制 frame_id/family 为 64 个 UTF-8 字节、detections 为 16 项、每项 corners 固定四个、每套 covariance 固定 36 项；浮点数必须有限，nanosec 必须小于 1000000000。程序不归一化 quaternion，也不筛选 covariance。

| 状态 | 本例含义 |
| --- | --- |
| `13` | alias 获取被拒绝，不产生 native 订阅或资源 |
| `9` | 退休后旧 handle 及重复 close 的预期拒绝 |
| `125` | 撤销 alias 后重新打开的预期拒绝 |
| `22` / `90` | 参数/canonical 值无效，或 codec 输出容量不足 |
| `70` / `71` | 示例发现 handle 生命周期不满足约束 |
| `73` | JSON/stdout 写入或 flush 失败 |

公共 native 回执保留准确的 worker exit code。Xmake 可能将非零子进程状态包装为自己的失败退出码，应读取 `execution.json`，不能把 Xmake 外层状态当成 guest 的 ROS 错误。所有正常获取的 owner 都在输出前 close 或 revoke；拒绝也保留独立 cleanup 事实。

可复现 fixture 发送两项检测、八个完整角点和 72 项 covariance。验收工具独立比较实际 ROSIDL/rclcpp publisher 与 guest 解码后的全部字段，并核对资源审计次数和进程清理。历史单模块回执与本次修正目录、Xmake 入口的验证分开记录。DDS 消息传输不能证明 NITROS 协商、CUDA/VPI 执行、设备所有权或真实 AArch64 硬件支持。
