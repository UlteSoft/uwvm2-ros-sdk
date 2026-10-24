# WAT 源码应用与库

使用 `set_language("wat")`，配合普通的 `set_kind("binary")`、
`set_kind("static")` 或 `set_kind("shared")`，再用 `add_files` 声明完整 WAT
源码。只通过 `UWVM_ROS_SDK_ROOT` 查找安装的 SDK，并引入
`tools/xmake/ros.lua`。平台选择 `wasm-wasip1`，架构选择 `wasm32` 或
`wasm64`。当前实现限定 Preview 1、noeh、单个非共享线性内存；不支持的 ABI
组合会在汇编前拒绝。

所有平台共用 WABT 1.0.42。源码提交为
`ff0ef7e0009402740c805a9744c09b05be063e48`，源码归档 SHA-256 为
`08d1fe7f64b7eb1473dfcb4b312afabdaafaa8753b5176d95682bea674396e1e`。
公共 Xmake 安装器校验归档和每个文件。WABT 复用单独锁定的 LLVM23 宿主加载器
及运行依赖；配置阶段不查找或运行汇编器。

单源码命令和共享模块直接汇编所提供的文本，不重写源码。命令自行定义无参数、
无返回值的 `_start` 导出。共享模块自行定义同类签名的 `_initialize`，公共元数据
操作将该实际函数设为 start，或核对已有 start 完全一致。初始化执行的是 WAT
源码中的逻辑。独立模块拥有自己的内存；共享库是带名称、独立状态和内存的 Core
预加载模块。该接口不实现 LLVM PIC/dylink 或本机 DSO。

静态库和需要静态链接的源码使用 WABT 真正的 relocatable 模式、版本二 linking
元数据，以及 LLVM23 的 `llvm-ar` 和 LLD。归档成员必须是真实 Wasm 对象。跨对象
函数应显式命名为 `$name`，并用相同的 `name` 导出；没有名字的定义在 WABT 对象
ABI 中是局部符号。当前对象约定不支持导出别名，也不会把普通整数地址常量自动
变为重定位。初始验证范围为标量 WAT/C 静态库互调；指针布局和数据重定位需要
各自明确的 ABI 与验证。链接后的初始化由命令或模块初始化函数显式调用。

普通 `add_deps`、`add_links` 和 `add_linkdirs` 保留原有含义。静态库按依赖顺序
参与惰性提取；遍历在共享模块边界停止。共享依赖只作为部署模块，不作为静态
链接输入。多源码链接只允许 WAT 对象实际声明的未解析函数导入；同名符号来自
不同导入模块时拒绝构建。ROS 源码明确选择 `uwvm_ros1_v1` 或 `uwvm_ros2_v1`
导入族，操作和签名见 `share/platform/ros/abi-v1.json`。构建不授予任何 ROS 权限。

源码必须明确声明实际内存宽度和相应地址指令。`example/platform/wasi/wat` 下
三个项目使用 `is_arch` 选择完整的 32 位或 64 位源码。汇编和链接后均检查实际
内存声明，包含对象中未使用的导入内存。即使传入 `--disable-memory64`，也必须
执行这项检查；64 位请求不会退回 32 位产物。

三个完整示例分别是 `memory-sum`（真实内存读写）、`linked-math`（带索引的
静态库）、`preload-counter`（独立初始化的共享模块，并断言初始化恰好一次）。
先用 `xmake f -c -y -a wasm32` 或 `wasm64` 配置，再用 `xmake -a -j1` 构建。
部署时保留真实生成的 `.wasm` 字节。

运行使用公共启动器和人工提供的 `uwvm-ros-command-run-v1` 配置，明确指定目标、
后端、运行时、运行时参数数组及应用参数数组。共享示例还应人工提供名称为
`counter` 的模块路径；64 位产物的 memory64/table64 开关也由操作者明确填写。
启动器只追加应用 `--run` 参数，不重新编译，也不增加权限。本机 ROS 继续使用
同一公共 v2 部署接口。

源码锁、宿主汇编器构建、冷安装、静态链接、预加载、memory64、本机中间件通信
和 QEMU 执行分别验收。接口描述不代表所有平台、后端及运行方式已经通过。
