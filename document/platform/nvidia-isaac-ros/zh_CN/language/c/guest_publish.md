# 发布完整原始 Array

本独立 C 示例在 guest 私有内存中构造原始 `isaac_ros_apriltag_interfaces/msg/AprilTagDetectionArray`：两个不同 detection、八个完整 corner、两份 stamped pose 及全部 72 个 covariance，再用公共 record API 编码。数据不同于接收夹具；没有将 native 输入复制为 guest 输出。

设置 UWVM_ROS_SDK_ROOT 后执行 `xmake f -a wasm32` 和 `xmake -vD -j1`。另用独立目录配置 wasm64，生成真实 memory64/table64。唯一应用产物是一份 Wasm，构建不授予权限，使用公共 LLVM23 和 Xmake 生命周期。

参数为显式 alias 和模式：0 发布后关闭；1 另检查 close/reopen 和旧 handle；2 撤销并检查 alias 不能重开。应用显式调用二十次 publish，每次间隔 50 ms，为 reliable/volatile keep-last 下的 DDS 发现留出时间；这不是 API 隐藏重试。每次成功计入 publications。

模式 1/2 另编码一份合法但可区分的载荷，改变顶层 timestamp 和第一个 id，仅以退役 raw handle 尝试发送。两次均应返回 9、重复 close 为 9，所有 native 实际观测仍须完整等于合法值。关闭后 reopen 为 0 且 owner 不同，撤销后 reopen 为 125。全部 owner 在 JSON 输出前退役。

单行 JSON 保留准确操作/编码/清理状态、发布次数、合法与拒绝载荷的完整 wire、退役结果。需要独立原生 subscriber 才能验收发布。分别评估 worker 和 Xmake 外层状态。部署见同目录 DEPLOYMENT.zh_CN.md，或正式手册 `sdk/document/platform/nvidia-isaac-ros/zh_CN/language/c/guest_publish.md`。

# 显式发布部署

准备正式手册 `sdk/document/platform/nvidia-isaac-ros/zh_CN/language/c/native_array.md` 中相同原始 Array VM/gateway 和原始 ROS2 Jazzy 接口包。RIHS 为 `RIHS01_45595f343aa66856ae56aee87f959a0b0ceed2132b038a7f6c6d24be707bcbff`，codec 为 `UWVMROS1_60359e405aedd2a627e60bc35e849989fe5ed1d426afb2a884036aef93bfe0a5`。native 仅格式调整后的 token 与原执行一致；两种源码哈希分开保留。

复制 deployment.template.json 到操作者路径，填写真实 runtime/gateway，选择与独立原生 subscriber 一致的 domain/topic。有限夹具为 domain137、`/sdk_fixture/nvidia/guest_array`。唯一模块 nvidia_pub 只有 outgoing topic.publish Single 和显式 50 ms 等待所需额外 WASI monotonic-clock。没有全局 ROS 或继承环境/文件系统/网络权限；disabled-test 仅用于隔离测试。

保留完整原始类型/RIHS、codec、9872 字节 wire 上限、reliable/volatile keep-last depth10、burst10、rate20、每秒262144字节。超界完整值被拒绝，不截断。gateway_arguments 显式为空。设置 `UWVM_ROS_RUN_CONFIG=/absolute/operator/deployment.json` 后执行 `xmake run original-nvidia-array-publish`；run.autobuild 关闭。wasm64 特性由公共 launcher 在 --run 前选择。

拒绝控制仅删除 outgoing grant：worker13、publications0、native 无消息或 publisher/resource。模式1 create/close 各2、旧 handle 为9、reopen0；模式2 create1/revoke1、旧9、alias reopen125；正例模式0 create/close 各1。每个授权项都由独立 native subscriber 核对全部原始字段，且不能观测到拒绝载荷。保留配置/Wasm 前后哈希、Xmake/worker准确返回、gateway真实worker PID、native identity/CDR/计数及优雅清理回执。

矩阵为 Linux x86_64/QEMU AArch64 × 真实 wasm32/wasm64 × 正向/拒绝/关闭/撤销。同一位宽两种主机使用同一 Wasm。DDS 发布不代表 GPU/NITROS、真实 ARM 编译主机、其他语言或全量库验收。

发布 grant 也必须显式填写 gateway 通用队列字段：max-queue-bytes=98720、max-publishers=1、overflow-policy=drop-oldest；完整配置保留这些必填项。
