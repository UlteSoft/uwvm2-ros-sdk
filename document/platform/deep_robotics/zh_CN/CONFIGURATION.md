# 当前公共配置

共享前端在构建前校验已安装的 `share/platform/deep_robotics/provider.json`。当前明确声明的发行版为 **ros2: jazzy**，分别使用 `set_ros1_version` 或 `set_ros2_version` 选择。首次发布统一使用 `set_` 配置名称，不保留旧版版本选择函数别名。

源码目录和历史兼容性说明中保留的其他发行版名称不构成已声明的构建路线；未声明的选择会被拒绝。schema 中的平台目标列表也不表示每种语言与位宽组合均已实现，所选语言 provider 仍会拒绝未实现组合。

应用目标输出单个 `.wasm`。当前共享 dispatcher 保留普通 `set_kind("binary")`、`set_kind("shared")` 和 `set_kind("static")`。C/C++ 使用公共原生库约定。真实 JS/Python/Lua 计算库通过 WASI provider 使用语言库手册中明确限定的标量 ABI；带库依赖的 ROS 解释程序尚待实现。Lua 示例明确选择真实 `eh` 配置。实现和执行验收分别记录。构建配置不授予 ROS 权限；部署必须使用用户明确编写的手动权限配置。
