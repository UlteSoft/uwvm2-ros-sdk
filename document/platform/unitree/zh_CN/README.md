# Unitree SDK：已发布的语言与示例

本批发布 22 个源码入口（含 C FFI 桥接），每个入口提供 ROS 1 和 ROS 2 各 3 个独立示例，共 132 个。其他语言路线不在本批发布范围内。

进入任意示例目录直接运行 `xmake`。构建主机只需 Xmake 和完整 SDK 发行目录；当前工具包验收主机为 Linux x86_64。唯一应用产物位于 `build/*.wasm`。`xmake run` 另需 uwvm2-ros、原生 ROS、对应 Gateway、可信部署 JSON 和 Python 3 进程启动器。可通过 `UWVM_ROS_PYTHON` 指定启动器的可执行文件；应用由 uwvm2-ros 执行 Wasm。

ROS 1：`motion_state`、`low_state`、`motor_state`。ROS 2：`motion_state`、`low_state`、`wireless_controller`。这些例子观察完整原生消息；尚未进行真实机器人控制验收。

- [as](language/as/README.md)
- [c](language/c/README.md)
- [c_ffi_bridge](language/c_ffi_bridge/README.md)
- [cpp](language/cpp/README.md)
- [d](language/d/README.md)
- [go](language/go/README.md)
- [haskell](language/haskell/README.md)
- [java](language/java/README.md)
- [js](language/js/README.md)
- [kotlin](language/kotlin/README.md)
- [lua](language/lua/README.md)
- [moonbit](language/moonbit/README.md)
- [nim](language/nim/README.md)
- [objectc](language/objectc/README.md)
- [odin](language/odin/README.md)
- [php](language/php/README.md)
- [py](language/py/README.md)
- [rs](language/rs/README.md)
- [ruby](language/ruby/README.md)
- [swift](language/swift/README.md)
- [tinygo](language/tinygo/README.md)
- [zig](language/zig/README.md)

[本批验收结果与范围](VALIDATION.md)

[C/C++ memory64 构建、运行与验收](MEMORY64.md)
