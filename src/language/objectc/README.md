# Objective-C Wasm runtime
The retained LLVM 23 build is incrementally rebuilt with the two included compiler patches. The host frontend bundle pins the exact compiler, ELF loader, dependencies and licenses. The original LLVM bundle remains in use for the linker, archiver and target sysroots.

libobjc2 is the genuine upstream implementation at the revision in upstream-source.json. The local port targets single-threaded WASI Preview 1 with exceptions disabled. It retains class loading, dynamic dispatch, inheritance, categories, instance allocation and reference counting. It does not provide Foundation, host Objective-C execution, or a native runtime fallback.

The noeh port removes exception-only code and exception capabilities, excludes unsupported executable block trampolines, and traps on impossible contended thread locks. The runtime and all application logic are linked into Wasm. WASI imports still need explicit per-module VM grants. Runtime initialization reads the process environment; command tests must grant args and environ in addition to the interfaces actually used. The environment remains empty unless explicitly supplied.

The 32-bit and 64-bit archives are independent target builds. wasm64 Preview 1 import names are the SDK extension and are not evidence of standardized WASI Preview 1 interoperability. Core memory64 semantics are tested separately.

Build with CMake/Ninja using the patched frontend, the selected existing LLVM 23 noeh sysroot and resource directory, static-library try-compiles, WASM=ON, OLDABI_COMPAT=OFF, BUILD_SHARED_LIBOBJC=OFF, BUILD_STATIC_LIBOBJC=ON, TESTS=OFF, and FETCHCONTENT_SOURCE_DIR_ROBINMAP pointing at the adjacent retained source. Use -fno-exceptions -fno-objc-exceptions -ffunction-sections -fdata-sections for all target languages. The SDK links libobjc.a with the same target libc++, libc++abi and wasi-emulated-mman archives.

The SDK also compiles base_object.m into each archive. It implements the empty Object root class declared by the public upstream header; application subclasses use genuine Objective-C class metadata and dispatch. This is source compiled into Wasm, not a host callback or application replacement.

An application-owned _start uses -nostartfiles and still links the genuine Objective-C runtime, libc, and required Wasm libraries. Freestanding entry ownership does not remove class/selector initialization or introduce a native runtime. Execution must independently grant any required WASI operations.
