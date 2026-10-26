# C 静态归档与 C、C++ 消费者

示例位于 `sdk/example/platform/universal_robots/cpp/ros2/universal-robots-ros2-complete/static_archive_consumers`。普通 Xmake target 分别为 `algorithm_archive`
（`static`）、`static_c_consumer` 与 `static_cpp_consumer`（均为 `binary`）。
归档包含真实可重定位 Wasm 对象；每个应用只部署自己的 `.wasm`，`.a` 仅作为
构建输入。公共 SDK 通过 `add_deps` 完成归档链接，运行时不需要该归档。

设置 `UWVM_ROS_SDK_ROOT` 后进入示例目录，执行：

```sh
xmake f --plat=wasm-wasip1 --arch=wasm32
xmake static_c_consumer
xmake static_cpp_consumer
```

选择 `--arch=wasm64` 可构建真实 memory64 目标。构建使用统一且经校验的 LLVM23
依赖，无需安装 uwvm2-ros 或原生 ROS。C、C++ 分别使用真实语言前端，公共头通过
`extern "C"` 保持 C ABI。边界只传递无符号标量，不传指针、分配器或 C++ 对象。
算法按模 2^32 计算 `3 * value + 1`，输入 7 应打印 `{"archive_result":22}`
并返回 0；标准输出失败返回 5，结果错误返回 22。

未引用的归档成员包含会触发 trap 的构造函数，普通归档提取必须不链接该成员。
已验收的执行与归档成员、链接器提取证据配套，不能据此推广到任意链接参数或动态库。

运行另行安装的 uwvm2-ros。将以下手工配置保存为 `deployment.json`，确认实际运行器
后执行 `UWVM_ROS_RUN_CONFIG=deployment.json xmake run static_cpp_consumer`，也可
选择 C 消费者。wasm64 构建须将配置中的 `target` 改为 `wasm64-wasip1`。启动器
只追加已构建的应用文件，不扩大策略。

```json
{
  "format": "uwvm-ros-command-run-v1",
  "target": "wasm32-wasip1",
  "backend": "ros2",
  "distribution": "humble",
  "runtime": "uwvm2-ros",
  "runtime_arguments": [
    "--runtime-aot",
    "--wasip1-global-noinherit-system-environment",
    "--ros2-global-disable"
  ],
  "application_arguments": []
}
```

本标量示例显式关闭 ROS，保留默认 WASI 基本标准流，不访问机器人端点或厂商消息。
现有证据覆盖两个平台、双位宽、x86/QEMU AArch64，共四个归档及十六次消费者执行。
这不代表完整厂商 API、原生 Humble、全语言或 ARM 编译宿主已经验收。
