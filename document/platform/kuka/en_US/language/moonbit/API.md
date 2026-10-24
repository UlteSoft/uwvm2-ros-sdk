# kuka / MoonBit API guide

The shared emitter preserves all 31 original records across this platform's 1 source domains. It retains every original member, constant, default, bound and codec identity. Select the exact domain from `share/platform/kuka/provider.json`; the complete original IR is in `share/platform/kuka/domains/`.

The selected package is imported as `@records`. Use each record's exact `symbol` from the IR: `Symbol::new()` constructs the complete value, and `SymbolCodec::new()` constructs its codec. `encode(value)` returns `Result[Bytes, Int]`; `decode(bytes)` returns `Result[Symbol, Int]`. Handle `Err` before consuming a result. Empty service/action components retain their genuine zero-byte payload.

MoonBit storage uses the reversible `field_` prefix, for example original `type` becomes `field_type`. Schema metadata and wire identities retain the official original names. `schema_bytes()` exposes the complete record metadata. Each constructor creates its own mutable arrays; generated string and fixed-array defaults come from the authoritative original IR.

The genuine compiler is pinned to MoonBit `0.10.16+b1a0e846e` by the common SDK tool manifest. The SDK selects the complete ordered package graph, including `wire`, `float` and the directly used `utf8` dependency. Use the first-release `set_language("moonbit")`, `set_ros_platform("kuka")`, `set_ros2_version("jazzy")`, `set_ros_scenario(...)`, `set_arch("wasm32")` and `set_plat("wasm-wasip1")` declarations in the independent examples.

The selected `kuka-ros2-complete` graph contains 31 complete records. Its three value lessons have genuine clean-project Wasm32 builds and executions on x86_64 and QEMU AArch64 using the same Wasm bytes. The lessons exercise complete selected values through construction, encode and decode. All-record independent byte oracles and malformed/semantic-input matrices remain unfinished.

These modules have ROS disabled and no ROS grants. Native topic/service/action communication, exact native distribution qualification, memory64, and shared/static producer-consumer combinations remain unfinished for MoonBit. The original Humble declaration on UR source is preserved; the value runs do not qualify a Humble driver. Each source domain and deployment needs its own evidence. See [examples](examples.md) and [library integration](../../libraries.md).
