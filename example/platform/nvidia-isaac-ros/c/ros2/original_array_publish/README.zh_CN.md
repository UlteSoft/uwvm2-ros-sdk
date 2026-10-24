# 发布完整原始 Array

本独立 C 示例在 guest 私有内存中构造原始 `isaac_ros_apriltag_interfaces/msg/AprilTagDetectionArray`：两个不同 detection、八个完整 corner、两份 stamped pose 及全部 72 个 covariance，再用公共 record API 编码。数据不同于接收夹具；没有将 native 输入复制为 guest 输出。

设置 UWVM_ROS_SDK_ROOT 后执行 `xmake f -a wasm32` 和 `xmake -vD -j1`。另用独立目录配置 wasm64，生成真实 memory64/table64。唯一应用产物是一份 Wasm，构建不授予权限，使用公共 LLVM23 和 Xmake 生命周期。

参数为显式 alias 和模式：0 发布后关闭；1 另检查 close/reopen 和旧 handle；2 撤销并检查 alias 不能重开。应用显式调用二十次 publish，每次间隔 50 ms，为 reliable/volatile keep-last 下的 DDS 发现留出时间；这不是 API 隐藏重试。每次成功计入 publications。

模式 1/2 另编码一份合法但可区分的载荷，改变顶层 timestamp 和第一个 id，仅以退役 raw handle 尝试发送。两次均应返回 9、重复 close 为 9，所有 native 实际观测仍须完整等于合法值。关闭后 reopen 为 0 且 owner 不同，撤销后 reopen 为 125。全部 owner 在 JSON 输出前退役。

单行 JSON 保留准确操作/编码/清理状态、发布次数、合法与拒绝载荷的完整 wire、退役结果。需要独立原生 subscriber 才能验收发布。分别评估 worker 和 Xmake 外层状态。部署见同目录 DEPLOYMENT.zh_CN.md，或正式手册 `sdk/document/platform/nvidia-isaac-ros/zh_CN/language/c/guest_publish.md`。
