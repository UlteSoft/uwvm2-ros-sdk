# ABB SDK 开发指南

公共模块位于 sdk/include/platform/abb，独立应用位于 sdk/example/platform/abb，包元数据位于 sdk/lib/platform/abb，上游定义、来源和验证摘要位于 sdk/share/platform/abb。源码与构建脚本先在本机修改和格式化，再用 scp -r 同步完整目录到 SSH Linux。所有编译与执行测试在 Linux 的 64 GiB、禁用 swap 环境完成。

下面逐项区分实际交付与待实现范围。当前已交付语言及 c_ffi_bridge 桥接分组的三个观察示例不能证明全部要求的语言或整个 ABB 驱动已完成。

| 语言或基础设施 | 当前范围 |
| --- | --- |
| [as](language/as/README.md) | 已提供三个观察命令；验证范围见报告 |
| [c](language/c/README.md) | 已提供三个观察命令；验证范围见报告 |
| [c_ffi_bridge](language/c_ffi_bridge/README.md) | 三个 C 桥接示例；计入桥接验证，不计入独立语言数量或其余语言的完成度 |
| [cpp](language/cpp/README.md) | 已提供三个观察命令；验证范围见报告 |
| `csharp` | 尚未完成三个独立示例及完整验收 |
| `d` | 尚未完成三个独立示例及完整验收 |
| [objectc](language/objectc/README.md) | 已提供三个观察命令；验证范围见报告 |
| `fsharp` | 尚未完成三个独立示例及完整验收 |
| [go](language/go/README.md) | 已提供三个观察命令；验证范围见报告 |
| `haskell` | 尚未完成三个独立示例及完整验收 |
| `java` | 尚未完成三个独立示例及完整验收 |
| `js` | 尚未完成三个独立示例及完整验收 |
| `kotlin` | 尚未完成三个独立示例及完整验收 |
| `lua` | 尚未完成三个独立示例及完整验收 |
| `moonbit` | 尚未完成三个独立示例及完整验收 |
| `nim` | 尚未完成三个独立示例及完整验收 |
| `odin` | 尚未完成三个独立示例及完整验收 |
| `php` | 尚未完成三个独立示例及完整验收 |
| `py` | 尚未完成三个独立示例及完整验收 |
| `r` | 尚未完成三个独立示例及完整验收 |
| [rs](language/rs/README.md) | 已提供三个观察命令；验证范围见报告 |
| `ruby` | 尚未完成三个独立示例及完整验收 |
| `swift` | 尚未完成三个独立示例及完整验收 |
| [tinygo](language/tinygo/README.md) | 已提供三个观察命令；验证范围见报告 |
| `vbnet` | 尚未完成三个独立示例及完整验收 |
| `zig` | 尚未完成三个独立示例及完整验收 |

ROS1 参考 [abb_robot_driver](https://github.com/ros-industrial/abb_robot_driver)，准确的所选提交和 ROS2 集成边界见 [CONTROLLERS.md](../../../../share/platform/abb/CONTROLLERS.md)。RWS 状态读取、离散服务、EGM 硬件控制和控制器启动示例是不同能力；本次观察命令只覆盖其中三个明确接口。
