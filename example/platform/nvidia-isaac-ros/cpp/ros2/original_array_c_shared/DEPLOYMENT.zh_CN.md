# 手工部署原生 ROS2

安装使用原始 NVIDIA 类型图构建的 runtime/gateway 配对和真正 Jazzy ROSIDL 库。RIHS 与 adapter codec 身份必须匹配模板。受控原生发布者应提供全部嵌套值和每个检测的 36 项协方差。原生 CDR 与 guest 线格式是不同编码。

将 `deployment.template.json` 复制到 SDK 外，修改 runtime/gateway 为匹配的绝对路径，核对 alias、资源、类型和身份。模板明确列出可靠/易失、keep-last 深度 10、无限 deadline/lifespan/lease、自动 liveliness、每秒 20 条与 burst 10、字节/队列/订阅者/inflight 限额、drop-oldest 与审计限额。连接选择域 137、Fast DDS 和隔离测试的 disabled-security；实际部署自行选择安全策略。超时 30 秒，worker/gateway 限制均显式配置。

只有 main 拥有 ROS Single 和额外 monotonic-clock，调用边界为 same-module。array_c 必须以同名、none 属性预加载，替换为对应位宽的真实路径。该模块 ROS 禁用、无额外 WASI 授权，默认 WASI 保留基本标准流。部署需要两个 Wasm。

执行 `UWVM_ROS_RUN_CONFIG=/absolute/deployment.json xmake run main`。公共入口不重建、不扩大授权。arguments 为 alias sample 与模式 0/1/2。拒绝用例单独复制配置并删除 main 的 grant，worker 应返回 13；不得用全局授权代替。

将 worker 状态与 Xmake 包装退出码分开核验。成功时 primary/cleanup/encoding 为零，完整字段和库摘要一致且 library_contract 为 1；拒绝时没有 wire 或摘要。检查原生订阅计数、资源创建/关闭/撤销审计及所有进程清理。必须分别核验双位宽、Linux x86 与 QEMU AArch64，源码图不代表执行验收。
