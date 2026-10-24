# fsharp 标量共享库

独立工程：`example/platform/pal/fsharp/ros2/ros2_humble_devel/shared_math`。通过公开 Xmake 接口，将 `math` 声明为
`set_kind("shared")`，将 `main` 声明为 `set_kind("binary")`，使用
`add_deps("math")`。生产者真实使用 fsharp 编译，消费者为 C#；
这一组合不能扩大为任意同语言或跨语言互操作。

```sh
xmake f -p wasm-wasip1 -a wasm32 -c
xmake
export UWVM_ROS_RUN_CONFIG=/absolute/run-native-clr.json
xmake run main
```

复制工程中的 `run-native-clr.json`，显式选择已安装的 runtime 和 gateway 路径。
同一个 `math.wasm` 以 `math`、`math_peer` 两个名字预加载，属性均为 `none`。
对应的实际参数分别是
`--wasm-preload-library build/targets/6d617468/math.wasm math` 和
`--wasm-preload-library build/targets/6d617468/math.wasm math_peer`。
两个实例分别拥有内存、运行时、初始化和可变状态。跨模块只传递 i32/i64 标量，
托管对象、指针和缓冲区均留在所属模块。

三个模块均显式配置 `ros_enabled=false`、`grants=[]`、`wasi_grants=[]`。
公开运行器分别创建并绑定各模块的 WASI/ROS Single，不启动 ROS gateway。
默认 WASI 仍保留基本标准流权限；空的额外授权列表不表示零描述符权限。
运行钩子不会添加环境、目录或套接字权限。

本例检查带符号算术、真实溢出 catch/finally、两个实例的隔离状态及各自一次
初始化。这仅是 wasm32 标量组件验收，不代表 PAL 厂商类型、原生 ROS、memory64、
静态库或对象/引用 ABI 已验收。CLR 使用唯一的共用 Mono LLVMOnly 运行时与编译器；
F# 仅对共享主程序集使用原始 `--optimize=-inline` 编译选项，不改用户方法或异常处理器。

独立 Java 四模块原生 ROS2 例子及其完整手工授权见
`document/platform/ros2/zh_CN/language/java/PRELOAD.md`。

[公共 ABI 迁移](PUBLIC_ABI.md) 说明规范绑定、类型端点与运行策略。
