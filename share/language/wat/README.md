# WAT source applications and libraries

Declare `set_language("wat")`, the ordinary `set_kind("binary")`,
`set_kind("static")` or `set_kind("shared")`, and `add_files("main.wat")`.
Discover the installed SDK through `UWVM_ROS_SDK_ROOT` and include
`tools/xmake/ros.lua`. Select `wasm-wasip1` and either `wasm32` or `wasm64` with
ordinary Xmake platform/architecture declarations or configuration options.
The current adapter implements noeh, unshared single memory, and Preview 1.
Unsupported ABI profiles fail before assembly.

The one shared assembler is WABT 1.0.42, source commit
`ff0ef7e0009402740c805a9744c09b05be063e48`, archive SHA-256
`08d1fe7f64b7eb1473dfcb4b312afabdaafaa8753b5176d95682bea674396e1e`.
The SDK's Xmake-only installer checks the archive and every installed file.
WABT reuses the separately pinned LLVM23 build-host loader/runtime instead of
distributing another copy. Configuration does not discover or execute tools.

A single-source command or shared module is assembled from the supplied text
without rewriting it. A command supplies its own `() -> ()` `_start` export.
A shared module supplies a real `() -> ()` `_initialize` export; the common
metadata operation binds that function as the module start, or verifies that
the identical start already exists. Initialization therefore uses actual WAT
code. Every independent module owns its memory. Shared modules are named Core
preloads with independent state and memory; this route does not implement
LLVM PIC/dylink or native DSOs.

Static targets and sources needing a static link use WABT's actual relocatable
mode, version-two linking metadata, and LLVM23 `llvm-ar`/LLD. An archive contains
real Wasm objects. A cross-object function must have an explicit `$name`; its
export uses the same `name`. WABT otherwise makes an unnamed definition local.
Export aliases and automatic rebasing of integer address constants are outside
this object contract. Scalar WAT/C archive exchange is the initial tested scope.
Pointer-bearing layouts and data relocations require their own explicit object
ABI and verification. Initialization of linked WAT sources is an explicit call
from the command or module initializer, rather than an inferred constructor.

Use `add_deps`, `add_links`, and `add_linkdirs` normally. Static dependencies
enter the lazy archive link in dependency order; shared boundaries terminate
that traversal. Shared dependencies remain deployment modules and are never
passed to the static linker. In a multi-source link, unresolved function names
are limited to the imports actually declared by the WAT objects. Identical
symbol names from different import modules are rejected. The supplied source
must select exact ROS import families such as `uwvm_ros1_v1` or `uwvm_ros2_v1`.
The canonical operation names and signatures are in
`share/platform/ros/abi-v1.json`; build metadata grants no ROS authority.

Write explicit target-width memory declarations and address instructions. The
three projects under `example/platform/wasi/wat` select complete `main32.wat`
or `main64.wat` sources with `is_arch`. A wasm64 request is never implemented by
substituting wasm32 bytes. The adapter checks every actual memory declaration
after assembly and linking, including unused imported memory in an object.
This check is required even with WABT's `--disable-memory64` switch.

The complete examples are `memory-sum` (real target-width loads/stores),
`linked-math` (an indexed WAT static archive), and `preload-counter` (a separately
initialized shared module whose command checks exactly one initialization).
For either width, configure with `xmake f -c -y -a wasm32` or `wasm64`, then
build with `xmake -a -j1`. Preserve the resulting `.wasm` bytes for deployment.

Running uses the common installed runtime launcher and an explicitly supplied
`uwvm-ros-command-run-v1` configuration. Supply the exact target/backend,
runtime, runtime argument array and application argument array. For the shared
example, manually provide the `counter` preload path/name and the runtime's
memory64/table64 flags when using the 64-bit output. The launcher appends the
application `--run` argument and does not rebuild it or add permissions. Native
ROS integrations use the same public v2 deployment owner as other languages.

Source pins, native assembler builds, cold installation, static linking,
preloading, memory64, native middleware transactions and QEMU execution are
separate acceptance rows. The language descriptor is a build interface, not a
claim that every platform/backend has completed those rows.
