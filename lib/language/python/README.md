# Shared CPython runtime artifacts

The SDK uses one CPython 3.14.8 implementation across platforms. Backend and address-width directories describe distinct import/target ABIs, not vendor-specific engines. Each runtime.json pins the exact Wasm bytes and its actual source construction identity.

Applications use the common Xmake set_language/set_ros_platform interface. Ordinary binary/shared targets produce Wasm; any supported indexed static archive is a private linker input. Support and execution evidence remain specific to language, backend, width and library kind. Manual uwvm2-ros permissions are required for native ROS execution.

Runtime implementation and maintenance belong in src/language and tools/language; this library directory contains distributable inputs and legal notices. The retired Agibot-specific raw-observation engines and their competing build entries are not installed.

所有平台共用 CPython 3.14.8。后端与位宽子目录区分真实 ABI，不能据此推断未验收的语言、库类型或原生 ROS 路线已经完成。应用统一通过公共 Xmake 配置构建；静态归档仅作私有链接输入，部署产物为 Wasm。运行时权限由使用者手动配置。
