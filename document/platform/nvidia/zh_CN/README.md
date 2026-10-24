# NVIDIA 组件选择

选择 GR00T、Isaac ROS 或 Isaac Sim 原始组件。总入口不会创建新的线协议。

精确上游提交与配置键见 `share/platform/nvidia/provider.json`。当前源配置采用 ROS 2 Jazzy、DDS 或纯 CPU 值、Wasm32/Wasm64 的 WASI Preview 1 command。总入口额外要求 `ros.vendor.component`。`ros.vendor.version` 选择不可变源码提交，不选择固件；`ros.vendor.transport=cpu-value` 表示仅编解码，`dds` 表示原生通信。

将本平台覆盖文件与统一 SDK、唯一锁定的编译器/解释器包一起安装，设置 `UWVM_ROS_SDK_ROOT`。每个独立例子都有自己的 `xmake.lua`；执行 `xmake`，部署目录 `build` 中应只有一个 `.wasm`。中间文件和工具链缓存不参与部署。只有真实编译并执行过的路线才可以把 `set_arch("wasm32")` 改为 `set_arch("wasm64")` 后声明支持。Preview 2、线程和异常配置须分别验收。

完整值示例分为 `roundtrip`、`malformed_wire`、`stdin_record`。总入口例子的名称另含所选组件。roundtrip 接受可选的 uint32 种子，在真实运行中编码/解码并打印全部字节；malformed_wire 核对截断、尾随字节、容量不足时输出保持不变；stdin_record 读取完整标准化消息体，拒绝超额或坏包并还原所有有效字节。它们属于 CPU 编解码测试；ROS/GPU 路线还需要保留的 telemetry 与原生程序。

字符串使用无 NUL 的严格 UTF-8 和明确字节上限。序列保留所有元素及原有顺序，超额整值失败；不能删除字段来通过验证。C 编解码在完整验证后才提交结果，拒绝存储重叠。标准化 codec identity 不是原生 ROS 的 MD5/RIHS identity；创建真实资源前必须具备原始生成的 TypeSupport、根类型/组成类型的原生 identity，以及操作员提供的部署配置。

错误域分别保留：11 表示暂时无值，13 为权限拒绝，22 为值/帧/存储错误，90 为有限配额超出，95 为未获准的特性/值域，110 为有限超时。服务的类型化失败值与传输、编解码、ACK、清理失败相互独立。原生影响不确定时不能自动重试。不能裁剪协方差、图像、关节数组或张量时域来报告成功。

`xmake run` 使用已安装的 `uwvm2-ros`，可由 `UWVM_ROS_RUNTIME` 指定，并原样使用手工提供的 `ros.sdk.run_argv`。提供者不会增加任何能力或修改策略。ROS 部署必须明确提供别名、精确原生 identity、资源、策略和配额。测试仅使用回环/私有 ROS 图，不代表物理机器人动作验收。

GPU 功能是独立的原生依赖：GR00T 需要锁定的真实 SDK、离线模型/处理器权重、NumPy/PyTorch/transformers/CUDA 和获准设备；Isaac ROS 需要真实检测器及输入 buffer 所有权/同步；Isaac Sim 需要真实 Kit/USD 场景、图、物理与渲染器。消息 peer、编解码回环或默认拒绝测试不能证明训练、推理、渲染或仿真通过。

在 Linux 上对完整传输的工作目录调用 `tools/testing/aarch64/run_container.py`，使用全局 flock 与实际 64 GiB/零 swap cgroup。`accept.py` 验证原生 ELF machine、真实 memory64 标志、QEMU 版本/参数、完整消息/服务/动作见证和独立清理。QEMU 下 ARM runtime 执行与 ARM 宿主源码编译必须分别记录。实际完成度以 SDK 外的 coverage 与原始回执为准，源码或手册存在不等于路线完成。

统一 Xmake 目标接口要求使用 `set_kind("binary")`、`set_kind("shared")` 和 `set_kind("static")`，配合标准 `add_deps`、`add_links`、`add_linkdirs` 与 public include 传播。当前平台应用示例尚未证明 shared/static 的生产者或消费者支持。动态部署需要各个真实 Wasm 库及明确的 preload 名称；静态 `.a` 必须包含可重定位 Wasm 对象，并实际验证归档符号提取。每种语言、内存宽度及生产者/消费者组合均须单独执行验收。

要求的模块示例包含 `main`、`io`、`algorithm`、`ros_comm`，仅 `ros_comm` 获得绑定实际加载模块身份的手工 ROS Single 权限。默认 WASI 保留基本标准流权限；algorithm 不增加资源或 ROS 授权。统一加载器、目标类型及跨模块调用方契约通过验证后才可声明此流程可用；必须具备原生正向见证及未授权模块的拒绝结果。`xmake run` 保持提交的原始配置。
