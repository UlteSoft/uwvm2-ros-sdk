# pal / vbnet

当前候选包含完整类型源码；编译与运行仍需按 coverage.json 分别核对。

安装同一版本 SDK 和 Xmake，设置 `UWVM_ROS_SDK_ROOT` 为 SDK 根目录。构建依赖由公共校验器根据清单和 SHA-256 安装；不使用机器上的任意解释器。编译器路线：.NET SDK 9.0.100-preview.6.24328.19 / Mono 9.0.0-preview.6.24327.7 native-EH full AOT。构建本身不需要 uwvm2-ros 或原生 ROS。

每个独立目标使用 `set_language("vbnet")`、`set_ros_platform("pal")`、`set_ros1_version(...)` 或 `set_ros2_version(...)`、`set_arch(...)`、`set_plat(...)`。用 `set_ros_config({ vendor_profile = "profile" })` 选择 `share/platform/pal/provider.json` 中的精确版本；源码分支名和原生 ROS 发行版是两个独立事实。`ros1_humble_devel` 表示供应商源码分支，不代表存在 ROS 1 Humble 发行版。

模型、驱动版本、校准、运行模式、transport、ABI、Wasm feature 和权限必须来自显式原生部署。目录不证明实际连接的机器人型号。没有自动发现、下载第二套语言 VM、默认硬件命令或自动授权。wasm32/wasm64 与 WASI 代数必须保持原选择；当前托管 AOT 构建仅有 wasm32-wasip1 配方，其他目标仍是明确待完成工作。

先执行 `xmake f --plat=wasm-wasip1 --arch=wasm32`，再执行 `xmake`。不带预加载的独立 binary 部署一个应用 `.wasm`；共享模块应用另外部署配置中显式列出的 `.wasm` 库；程序集、对象和 compiler cache 是构建中间物。`xmake run` 另外要求已安装 uwvm2-ros、匹配的原生 registry/ROS peers，以及用户手动给出的权限。测试仅使用受控仿真 peer。

公开 API 及完整字段见 `API.md` 和平台 `API_CATALOG.md`；独立例子及运行流程见 `EXAMPLES.md`。本次源码文件数：1274。

[标量共享库手册](LIBRARIES.md)说明准确的生产者/消费者组合、两次预加载和空的额外授权。

[公共 ABI 迁移](PUBLIC_ABI.md) 说明规范绑定、类型端点与运行策略。
