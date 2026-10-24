# Unitree SDK: admitted languages and examples

This publication admits 22 source routes, including the C FFI bridge. Each has three independent ROS 1 and three ROS 2 examples: 132 commands. Other language routes remain outside this publication.

Run `xmake` directly inside any example directory. Building needs only Xmake and the complete SDK distribution; the qualified compiler-tool host is Linux x86_64. The sole application output is `build/*.wasm`. `xmake run` separately requires uwvm2-ros, native ROS, its matching gateway, trusted deployment JSON, and a Python 3 process launcher. `UWVM_ROS_PYTHON` may select the launcher executable; uwvm2-ros executes the compiled Wasm application.

ROS 1 examples are `motion_state`, `low_state`, and `motor_state`. ROS 2 examples are `motion_state`, `low_state`, and `wireless_controller`. They observe complete original native messages; physical robot control has not been qualified.

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

[Publication validation and scope](VALIDATION.md)

[C/C++ memory64 build, run and qualification](MEMORY64.md)
