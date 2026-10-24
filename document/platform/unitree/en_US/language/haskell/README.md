# Unitree Haskell

The genuine Haskell route provides complete original ROS1 Noetic and ROS2 Jazzy records, strict whole-record codecs and six independent read-only observations. All 11 ROS1 records/115 fields and 43 ROS2 records/257 fields retain their original type, order, width and shape.

- [API.md](API.md): actual imports, every complete type/field mapping, codec calls/errors and ownership.
- [EXAMPLES.md](EXAMPLES.md): all six real mains and Xmake descriptors, step-by-step behavior, results, build and trusted native deployment.
- [Original complete schemas](../NATIVE_SCHEMA.md): every original field, native/codec identity and canonical bound.

The supported command profile is wasm32 WASI Preview 1, noeh and one thread, with Noetic/Jazzy original native interfaces. Bundled source compilation is qualified on Linux x86_64. Same-artifact AArch64 native communication is separately checked through QEMU user mode on an x86_64 Linux kernel; it qualifies neither an ARM compiler host nor physical hardware. The x86 source/codec/build evidence is recorded in [native-source-qualification.json](../../../../../../share/platform/unitree/native-source-qualification.json). Pinned frontend provenance is listed in [original compiler versions and source closures](../../../../../../share/platform/unitree/native-compiler-sources.json). Full 54-record codec coverage is distinct from live transport of the six observation types. Memory64, Preview 2, threads, Wasm EH, other distributions, physical control and robot CRC/safety behavior are outside this route's qualification.

Current accepted configuration choices: [shared provider configuration](../../CONFIGURATION.md).
