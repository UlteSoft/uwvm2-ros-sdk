# Genuine js static same

Set `UWVM_ROS_SDK_ROOT` to the installed SDK, then run `xmake f -c -y` and `xmake -y`. The Xmake target uses its exact wasm32 Preview 1 profile; edit both ordinary target architecture declarations together for wasm64. Both producer and consumer are actual source-language programs. Each consumer executes two complete rounds of value, real exception, invalid-result, repeated-close and reopen assertions. A successful command exits0 without output.

The producer is js, the consumer is js, and the producer kind is static. Each module owns its language objects; only scalar values cross calls. Static linkage shares memory and authority. Default WASI retains basic standard streams; this example requests no additional resources or ROS capability.

```sh
uwvm2-ros --wasip1-global-noinherit-system-environment --run build/targets/636f6e73756d6572/consumer.wasm
```

For wasm64, explicitly add `--wasm-feature-enable-memory64 --wasm-feature-enable-table64` to the deployment command. Lua already requires the explicit exceptions option shown above. Every deployment option is supplied manually.

中文：设置 SDK 根目录后使用普通 Xmake 构建。生产者和消费者都执行真实语言源码，消费者执行两轮完整断言，检查返回值、真实异常、错误类型、重复关闭与重新创建。成功时退出码为0且无输出。只跨模块传递整数，语言对象留在各自拥有的状态中；静态链接共享内存和权限。默认 WASI 保留基础标准流，本例没有额外资源或 ROS 授权。使用上面的完整手动预加载命令；改为 wasm64 时两个目标必须一起修改，并显式启用 memory64 和 table64。
