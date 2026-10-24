# limx 的 c 源码、API 与实例

公开导入 `<limx/c/observation.h>`、`<limx/c/ros2/records.h>`。
完整上游定义和依赖位于 `share/platform/limx/catalogs`；旧完整类型路径保留，
导入改为公共 SDK 根。Deep Robotics 保留全部 26 个定义及服务组件；Booster 官方
接口与 SDK 桥接分别命名；LimX 是明确标注的自建桥接，不能伪装成官方 ROS2 包。
canonical 身份、桥接哈希或 mros MD5 均不能替代独立原生 RIHS 导出。

三个 API 是上述英文列表中的 `limx_wait_<operation>(alias, output)`。
alias 为 1..255 字节 NUL 结尾 UTF-8 名称，必须已由用户授权并精确绑定真实类型。
output 为调用者独占、完整有效、与别名和 scratch/owner 不重叠的记录存储。
只有完整解码才提交输出。每次只打开一个订阅 owner，最多 poll 250 次，仅 idle=11
允许在显式授予单调时钟权限后等待 20 ms 再 poll；拒绝、容量、坏 wire 等立即停止。
所有正常获取后的路径只关闭一次。致命 trap 由外层实例退役处理，无后台线程或重试。

结果 `uwvm_vendor_observation` 分别保存主错误、清理错误、存在性、原始 RPC 长度
和 poll 次数。输出在关闭后进行，包含每个 canonical 字节；错误优先级为主操作、
清理、codec、stdout。记录 API 提供完整验证、实际 wire 长度、事务编码和精确解码；
非法、截断或尾随数据不得部分改写输出。所有字段位宽、符号、数组/字符串容量、
常量和默认值保留。不得把 C/C++ padding 或原生对象内存当作 wire。单位按原始定义。

C++ 路线还提供完整类型别名和真正的 `roswasmcpp::Codec<T>`。c_ffi_bridge 是明确的
C FFI 路线而不是另一种语言。objectc 当前使用真正 Objective-C 前端编译原始 C ABI
facade；Foundation、ARC 和 Objective-C 消息派发仍是额外缺口，不声明完整支持。

每个 `example/platform/limx/c/ros2` 有三个独立项目，读取不同完整值；
读取命令话题不等于向硬件发送命令。设置 `UWVM_ROS_SDK_ROOT` 后，在项目执行 xmake。
声明式 set_language/set_ros_platform/set_ros2_version/set_arch/set_plat 由公共前端解释，
只使用统一的可校验 LLVM 23.1.4 与真实 memory32/memory64 库；编译不需要 ROS 或
uwvm2-ros。部署产物只有一个 `.wasm`，缓存与收据位于 build 之外。

源版本 `ros.limx.version` 和可选型号 `ros.limx.model` 按 provider.json 校验；
固件、物理限制、registry、资源、transport 和 QoS 由用户显式提供。未完成的 ROS1、
Preview2、线程与型号路线不降级、不推断兼容。运行时手工准备真实 ROS 部署和权限，
`UWVM_ROS_RUN_CONFIG` 使用 `uwvm-installed-runtime-launch-v1`，填写 literal
runtime_arguments/application_arguments。xmake run 只添加 --run 与现有 Wasm 路径。
源码、编译、codec、native ROS 和 QEMU 真 AArch64 证明分别记录，不能由构建成功
推导运行通过。实际状态以交付目录的 coverage/evidence 为准。

当前可接受的配置选择见[共享 provider 配置](../../CONFIGURATION.md)。
