# 显式发布部署

准备正式手册 `sdk/document/platform/nvidia-isaac-ros/zh_CN/language/c/native_array.md` 中相同原始 Array VM/gateway 和原始 ROS2 Jazzy 接口包。RIHS 为 `RIHS01_45595f343aa66856ae56aee87f959a0b0ceed2132b038a7f6c6d24be707bcbff`，codec 为 `UWVMROS1_60359e405aedd2a627e60bc35e849989fe5ed1d426afb2a884036aef93bfe0a5`。native 仅格式调整后的 token 与原执行一致；两种源码哈希分开保留。

复制 deployment.template.json 到操作者路径，填写真实 runtime/gateway，选择与独立原生 subscriber 一致的 domain/topic。有限夹具为 domain137、`/sdk_fixture/nvidia/guest_array`。唯一模块 nvidia_pub 只有 outgoing topic.publish Single 和显式 50 ms 等待所需额外 WASI monotonic-clock。没有全局 ROS 或继承环境/文件系统/网络权限；disabled-test 仅用于隔离测试。

保留完整原始类型/RIHS、codec、9872 字节 wire 上限、reliable/volatile keep-last depth10、burst10、rate20、每秒262144字节。超界完整值被拒绝，不截断。gateway_arguments 显式为空。设置 `UWVM_ROS_RUN_CONFIG=/absolute/operator/deployment.json` 后执行 `xmake run original-nvidia-array-publish`；run.autobuild 关闭。wasm64 特性由公共 launcher 在 --run 前选择。

拒绝控制仅删除 outgoing grant：worker13、publications0、native 无消息或 publisher/resource。模式1 create/close 各2、旧 handle 为9、reopen0；模式2 create1/revoke1、旧9、alias reopen125；正例模式0 create/close 各1。每个授权项都由独立 native subscriber 核对全部原始字段，且不能观测到拒绝载荷。保留配置/Wasm 前后哈希、Xmake/worker准确返回、gateway真实worker PID、native identity/CDR/计数及优雅清理回执。

矩阵为 Linux x86_64/QEMU AArch64 × 真实 wasm32/wasm64 × 正向/拒绝/关闭/撤销。同一位宽两种主机使用同一 Wasm。DDS 发布不代表 GPU/NITROS、真实 ARM 编译主机、其他语言或全量库验收。

发布 grant 也必须显式填写 gateway 通用队列字段：max-queue-bytes=98720、max-publishers=1、overflow-policy=drop-oldest；完整配置保留这些必填项。
