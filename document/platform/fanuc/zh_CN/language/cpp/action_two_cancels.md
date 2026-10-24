# 完整双目标独立取消

两个完整原始 FollowJointTrajectory 目标同时存活并返回完整反馈后，先 cancel-own 目标2并消费其完整取消结果。随后验证目标1仍被持有、result 返回11且整个 Result 对象与终态 kind 都未改变；再单独 cancel-own 目标1并消费其完整取消结果。两次确认均不等于终态或物理停止。

分别使用独立构建目录选择 wasm32 与 wasm64。实际 memory/table 宽度必须从产物读取。

```sh
export UWVM_ROS_SDK_ROOT=/path/to/sdk
xmake f -p wasm-wasip1 -a wasm32
xmake fanuc_action_two_cancels
```

native.json 为手动策略模板：替换 runtime/gateway 为同一完整 FANUC 注册表的产物，审核 send/own/feedback/result 四个 alias、同一 RIHS/codec/资源及五组 QoS。max-active-goals 为2，没有 cancel-any。使用 SDK 的 tools/platform/ros/run.py 部署记录中的 Wasm；Rust 图还需 main artifact 记录中的三个 preload。输入已编入模块，不需要数据 sidecar。

核验两个唯一完整 Goal/Feedback/Result、两次按目标取消、原生16字节 UUID 对应、四个 role 关闭状态和全部 goal/server/node/executor/worker/gateway/peer 回收。uint64 Runtime ID 是本地 opaque ID，不能当作 UUID。原始越界22、第三目标配额90、foreign-own9、缺少 cancel-any13 必须保持输出原值且没有额外原生请求。记录实际 peer 架构；ARM VM/Gateway 不表示 peer 是 ARM。
