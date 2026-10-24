# hello_robot / ruby

此路线仍需由对应公共语言引擎和本平台绑定补齐。本指南不把文档记为实现或验收。

安装同一版本 SDK 和 Xmake，设置 `UWVM_ROS_SDK_ROOT` 为 SDK 根目录。构建依赖由公共校验器根据清单和 SHA-256 安装；不使用机器上的任意解释器。编译器路线：the single source-locked common language provider named in dependencies.json。构建本身不需要 uwvm2-ros 或原生 ROS。

每个独立目标使用 `set_language("ruby")`、`set_ros_platform("hello_robot")`、`set_ros1_version(...)` 或 `set_ros2_version(...)`、`set_arch(...)`、`set_plat(...)`。用 `set_values("ros.sdk.vendor_profile", "profile")` 选择 `share/platform/hello_robot/provider.json` 中的精确版本；源码分支名和原生 ROS 发行版是两个独立事实。`ros1_humble_devel` 表示供应商源码分支，不代表存在 ROS 1 Humble 发行版。

模型、驱动版本、校准、运行模式、transport、ABI、Wasm feature 和权限必须来自显式原生部署。目录不证明实际连接的机器人型号。没有自动发现、下载第二套语言 VM、默认硬件命令或自动授权。wasm32/wasm64 与 WASI 代数必须保持原选择；当前托管 AOT 构建仅有 wasm32-wasip1 配方，其他目标仍是明确待完成工作。

先执行 `xmake f --plat=wasm-wasip1 --arch=wasm32`，再执行 `xmake`。最终部署目录只能有应用 `.wasm`；程序集、对象和 compiler cache 是构建中间物。`xmake run` 另外要求已安装 uwvm2-ros、匹配的原生 registry/ROS peers，以及用户手动给出的权限。测试仅使用受控仿真 peer。

公开 API 及完整字段见 `API.md` 和平台 `API_CATALOG.md`；独立例子及运行流程见 `EXAMPLES.md`。本次源码文件数：0。
