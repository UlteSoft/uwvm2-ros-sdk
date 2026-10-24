# universal_robots MoonBit API

使用规范 `set_language("moonbit")` 入口和唯一共享的 MoonBit 0.10.16+b1a0e846e 前端。供应商版本必须选择确切的原始目录；完整目录身份位于 ros1 或 ros2 后端层之下。

| Domain | Backend | Records |
| --- | --- | ---: |
| `universal-robots-ros1-complete` | ros1 | 56 |
| `universal-robots-ros1-trajectory-complete` | ros1 | 64 |
| `universal-robots-polyscopex-complete` | ros2 | 50 |
| `universal-robots-ros2-complete` | ros2 | 108 |
| `universal-robots-ros2-trajectory-complete` | ros2 | 116 |

公共 Xmake 绑定以 `@records` 导入完整记录包。使用 `@records.Symbol::new()` 构造值，使用 `@records.SymbolCodec::new()` 构造 codec。全部原始字段保留，MoonBit 存储名增加 `field_` 前缀；嵌套记录、固定数组、有界序列、原始默认值和常量均来自原始定义。64 位整数使用 Int64/UInt64，float32 使用 Float，float64 使用 Double，文本使用 String，原始字节使用 Bytes。

`codec.encode(value)` 返回 `Result[Bytes, Int]`；`codec.decode(bytes)` 返回完整 typed 值或错误。必须显式处理两个分支。22 表示非法 canonical 输入，90 表示容量问题。编码与解码均检查固定长度、序列及字节边界、严格 UTF-8、声明的浮点策略，以及已接入的标准时间/JointState 规则；解码拒绝多余尾字节。容量上限不是实际编码长度。

原始定义、字段名、边界、native identity 和 codec identity 位于对应 share/platform domain IR。原生发行版与接口兼容性必须明确；Humble 原始定义用于 Jazzy fixture 不代表 Humble 驱动资格。

示例处理本地完整值。原生 topic/service/action 的所有权、权限及清理需要单独验证共享绑定和原生 peer。wasm32、memory64、x86_64、QEMU AArch64、静态归档和共享模块分别验收。本交付的 MoonBit native ROS、memory64 和库链接仍未取得资格。
