# Core Wasm module and archive source example

This example is **source-only pending the common kind/dependency producer**.
Application builds and the separate C codec freeze do not qualify these libraries.
Read [the English guide](README.en_US.md) or [中文指南](README.zh_CN.md).

The standard Xmake graph contains `main` (`binary`), `io`, `algorithm` and
`ros_comm` (`shared`), and a real `algorithm_core` (`static`) dependency.
Two additional consumers test C and C++ linkage of the C archive. A deliberately
wrong i64 signature is a negative preload fixture, not an alternate implementation.

The dynamic deployment needs four Wasm files. No native `.so` or `.dylib` is a
substitute. The archive is a build input and is not deployed with either consumer.

This technical module example uses the original Noetic `std_msgs/String` ABI.
It does not establish a full custom Franka message/runtime registry.
