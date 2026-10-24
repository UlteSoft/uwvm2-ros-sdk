The JVM tool archive retains original, unmodified JDK 21.0.10+7 Ubuntu binaries, the exact Kotlin 2.1.20 and TeaVM 0.13.1 compiler JAR closure, and the recursively resolved native dependencies of the retained JDK ELF files. Per-file identities are in `share/toolchains/host/linux-x86_64/jvm-aot.json`; dependency selection evidence is retained in the private packaging receipt.

`inputs.json` records original Maven URLs, JAR and POM SHA values, the JDK release declaration and original native package notices. `provenance/maven-poms` and `provenance/native-licenses` preserve source notices. The JDK's own legal files and the JARs' embedded notices remain inside the original tool payload. `native-closure.json` records the selected archive identity and supported source/host/guest profile.

The qualified build host is Linux x86_64. TeaVM generates a standalone core wasm32 WASI Preview1 module. This route uses genuine JVM frontends and TeaVM rather than a native LLVM source frontend. Its pinned class library and actual complete Unitree records are the tested scope; arbitrary Java APIs, memory64, other compiler hosts and physical hardware are not implied.

工具包保留未经改写的原 JDK、Kotlin/TeaVM JAR 和 JDK 递归原生依赖。完整文件 SHA、Maven 来源、POM、JDK release 与许可证均可追溯。资格限于 Linux x86_64 构建宿主和 wasm32 WASIp1；真实 TeaVM 管线不应表述为 LLVM 编译 Java/Kotlin，也不代表任意 Java 类库、memory64 或其他宿主已验收。
