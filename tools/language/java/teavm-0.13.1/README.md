# Pinned TeaVM native compiler backend repair

These are build-time sources for TeaVM 0.13.1 at commit
`b3a245b7d9034ff35cdfab2def057a3d4f256efb`. The normal public Java/Kotlin
Xmake provider compiles them with the existing native development JDK and
places the resulting backend classes before the pinned TeaVM JARs. Guest Java
and Kotlin code still compile to Wasm and execute in uwvm2-ros.

The emulated exception generator adds an explicit `unreachable` after a
terminating protected body. A nested void block otherwise loses the
polymorphic stack needed by the handler selector. The original event decoder
and its multi-type catch remain unchanged. The name renderer orders each map
by the actual binary index, preserving every debug name.

`Compile.java` rejects a different core JAR SHA or a backend class loaded from
outside its compiler class directory. Its build receipt records the actual
backend class hashes. The AOT receipt additionally records both source hashes,
FULL optimization, and that no generated Wasm is rewritten. Backend upgrades
require refreshing these exact source pins and requalifying the outputs.

The recorded Linux component qualification covers eight complete WABT module
checks, eight actual public VM cases, 93 event assertions, 28 namespace
assertions and eight unchecked-exception identity/terminal-state assertions.
The official ROS service roundtrip, full simulations, other architectures and
broader release qualification remain separate requirements.

`UPSTREAM.json` records the source identities. Adjacent patches show every
upstream modification; `LICENSE` retains the upstream Apache-2.0 license.
