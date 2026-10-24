# 真实 CLR 共享库与 C# 消费端

本 wasm32 标量组件已通过真实 Linux x86_64 编译和公共 VM 执行。生产端使用自身
语言前端及 Mono LLVMOnly AOT；C# 消费端使用原版 WasmImportLinkage/P/Invoke
生成器导入真实 Core 函数。每个库实例独占运行时、内存和函数表。

消费端实际检查有符号加法、溢出 catch、finally 计数、各实例只初始化一次，以及
math/math_peer 状态隔离。最终计数分别为 4294967299、1，初始化次数均为 1。
模块间只传递标量。VB 使用原版 MonoPInvokeCallback 委托约定，消费端显式调用
各实例的 initialize_runtime；C#/F# 使用原版 UCO 约定。F# 共享库主程序集使用
原始 Mono --optimize=-inline 选项，保留正常 AOT 静态状态初始化路径。

在 run-native-clr.json 中填写已安装运行时和 gateway 的真实路径后：

```sh
xmake f -p wasm-wasip1 -a wasm32 -c --ros-run-config=run-native-clr.json
xmake
xmake run main
```

main/math/math_peer 显式关闭 ROS，WASI 授权保持为空。部署由公共 runner 负责。
只部署 build/targets 下的 Wasm，中间物留在 .uwvm-ros。原始位码、目标对象、
AOT 注册和真正剥离后程序集嵌入均保留审查证据；胶水不提供用户方法体。

验收范围是本语言生产端加 C# 消费端。CLR ARM、memory64、静态归档、原生 ROS
图和完整平台路线仍开放。普通无 IL 原生 AOT 最小闭环单独记录。历史 Java
消费端失败证据保留；当前 Xmake 编译 Main.cs。
