This provider compiles genuine Java and Kotlin source through the shared TeaVM WASI engine. `tools/xmake/ros.lua` declares the public source target and each platform selects the same provider. Native ROS and uwvm2-ros are execution prerequisites and are not invoked by compilation.

The selected host bundle is `share/toolchains/host/linux-x86_64/jvm-aot.json`. Its manifest indexes every original JDK, Kotlin/TeaVM JAR and native dependency by exact byte count and SHA. Xmake extracts XMZ using its embedded LZ4 implementation, checks every file, restores executable modes and calls the pinned Java executable directly. It does not probe an ambient JDK, Python, Maven, shell or package manager.

Java uses javac with Java17 bytecode. Kotlin first compiles the maintained Java value types, then invokes the actual Kotlin JVM frontend on the Kotlin facade and entry source. TeaVM's fixed `WEBASSEMBLY_WASI` linear-memory backend emits the final module. Ordinary Java interoperability is explicit. The produced command contains its required class-library implementation and runs without a host JVM.

Each target owns its application scratch below `.uwvm-ros/managed-aot/<target-name>`. The provider clears only that target's classes before compiling current source, so removed entry classes cannot survive an incremental rebuild. Only the final `build/<target-name>.wasm` is an application output. The fixed route requires `wasm-wasip1` and `wasm32`; other widths or WASI components are not inferred from the shared DSL.

本 provider 使用真实 Java/Kotlin 编译器和固定 TeaVM WASI 后端。工具由 Xmake 自行校验和解包，构建时不需要预装语言前端、ROS、uwvm、Python、Maven 或 shell。每个目标独占缓存并在重编前清空自己的 classes，应用输出目录仅保留一个最终 Wasm。运行使用完整线性内存模块，不启动宿主 JVM；资格限于已固定 Linux x86_64 工具宿主与 wasm32 WASIp1。

The scoped Java and Kotlin scalar shared-library producers and Java consumers have passed real wasm32 Linux builds and two-instance preload execution. Native ROS, memory64, static archives and AArch64 qualification remain separate. The ordinary
`set_kind("shared")` selects the real root named by `ros.sdk.main_class`, whose
static primitive/void `@Export(name = "...")` methods are inspected without
executing user initialization and preserved by TeaVM. Kotlin top-level methods
with an explicit file JVM name provide the same static contract. A separate
compiler-owned command entry rejects accidental command invocation; real exported
methods and the module's automatic heap initializer form the Core library.
The actual export names are retained in the build receipt. Consumers declare
real `@Import(module = "...", name = "...")` scalar functions and ordinary
shared `add_deps`. Every module owns its managed objects and linear memory.

Native archive `add_links` and non-shared dependency consumption are explicitly
unsupported. No finished executable module is wrapped in `.a`. The first PAL
preload example includes main/io/algorithm/ros_comm, complete manual Single
policies and real denied-open checks. Only ros_comm receives ROS permission;
the default WASI policy retains basic standard streams without extra resources.
The public ROS2 `RmwPublisher` source activates and inspects a real native endpoint
before discovery/release/publish, and separately retains native/source cleanup
facts. The scalar producer/consumer cohort does not qualify the four-module native RMW path; that path still needs its own native and AArch64 receipts.

共享源码使用真实 Export/Import 和普通 shared/add_deps，静态归档明确拒绝。
新四模块例子、原生 RMW 激活及模块权限隔离都尚未通过实际执行。默认 WASI
保留基本标准流权限，只有 ros_comm 获得手动声明的 ROS 授权。

已通过的范围仅为 Java/Kotlin 标量动态库与 Java 消费者在 Linux x86_64 上的真实 wasm32 构建和双实例 Preload 执行，包含异常捕获、finally 与实例状态隔离。四模块原生 ROS、memory64、静态库及 AArch64 仍须独立验收。
