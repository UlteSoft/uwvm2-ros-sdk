# SDK source review: all platforms

Review 44 adds the shared TypeScript 5.9.3 frontend and four documented
ordinary Xmake scalar-library examples. Eighteen final build graphs cover both
Wasm widths; four semantic errors are rejected. The same products pass 36
x86_64/QEMU guest runs, including 16 library lifecycle runs. The Unitree codec
case checks every WirelessController field against independent bytes. These
tests open no native ROS resource. Platform-wide typed catalogs and native
transactions remain separately pending. See [the TypeScript guide](language/typescript/en_US/README.md).

The final shared CLR increment is also installed: 1,380 frozen source files,
12 matching wasm32 binary/shared x86_64/QEMU runs, scoped to PAL codecs and
denied ROS. This is not Unitree CLR qualification. Unitree C#/F#/VB.NET/R bindings
are authored but await their own tests; R still requires its genuine Wasm engine.

The final Franka/Flexiv Zig increment has 48 source files and 2,975 individually
verified raw receipt entries. Its 48 selected native executions include the
24 final Flexiv revalidations. Revalidation adds no duplicate coverage credit.
Exact Humble qualification and broader language/platform matrices remain open.

This review covers the current public source tree across 36 platforms. The
required language set contains 29 routes, including Fortran, WAT and TypeScript. A listed
directory or example is source availability; it does not certify the complete
platform, language, ROS distribution, library-kind, or host matrix.

The following review-43 increments are integrated:

- **WAT:** one shared WABT 1.0.42 installation and the LLVM23 object-linking path.
  Three independent WASI Xmake projects cover a memory calculation, a real static
  archive, and a shared Core preload. Six final source builds cover wasm32 and
  wasm64; all ten outputs match the retained successful execution products.
  The Xmake-only cold-install evidence includes six application executions and
  one-time initialization for both widths. WAT native ROS and QEMU remain open.
- **MoonBit:** the final documented KUKA, Universal Robots and Doosan source
  increment. Twelve final wasm32 projects were rebuilt; unchanged products retain
  24 value-codec executions across x86_64 and QEMU AArch64. These runs disable
  ROS. Independent nondefault-field oracles, native ROS, memory64 and library
  producer/consumer qualification remain separate work.
- **Dobot, Elephant, UFactory and RealMan JavaScript:** four current-public
  repacks use the same shared QuickJS engine and retain all 447 public source
  dependencies. Eight positive original-type native ROS2 transactions and
  eight disabled-authority runs passed on x86_64 and QEMU AArch64. The execution
  distribution is Jazzy; a source profile named Humble is not a Humble test.
  Each positive case verifies the complete native value and owner cleanup.

The existing four-vendor AssemblyScript/Java/JavaScript cohort has 24 selected
positive native coverage points in total, one per vendor/language/host.
Revalidating the new JavaScript products adds no duplicate coverage credit.
These results are wasm32/noeh binary scope, not all messages or library pairs.

Previously accepted components remain installed: scoped original ROS1/ROS2 and
ABB C/C++ routes; FANUC independent Action cancellation; Franka/Flexiv native
clients, servers and complete-record library cases; Kinova cross-language
codecs; common Python/JavaScript/Lua and Ruby/PHP engines; Java/Kotlin and native
language library examples; and the reviewed Go/Rust platform increments.
Per-platform review-status.json records their separate scopes and limitations.

The ordinary mixed-language preload example retains four final builds and
eight native ROS1/ROS2 runs, including four QEMU runs, at both Wasm widths.
Its D static archive, Zig algorithm/main, D I/O and runtime-free Objective-C
ROS module use normal Xmake dependency and binary/static/shared declarations.
The application's explicit deployment configuration grants ROS only to the
communication module and the required WASI facilities to the selected modules.

Fortran still requires a successfully built common LLVM Flang 23 frontend,
target intrinsic modules, real runtime and two-width ISO C ABI validation.
Its authored platform sources are not presented as compiled support. Unitree CLR/R, full native TypeScript and remaining Fortran qualification are open.
Maintained RMW comments, the modern-EH graph, TinyGo startup and full vendor
matrices also remain open. Original failed attempts remain in the review record.

All compiler and application evidence comes from SSH Linux containers with
actual memory.max=68719476736 and memory.swap.max=0. QEMU evidence identifies
the AArch64 runtime and native dependency closure. No SDK application was built
or run on the local authoring machine during this review.

The table counts independent language projects, excluding platform aggregate
Xmake files. It is an inventory for manual review, not a release certificate.

| Platform | Standalone Xmake examples | Example language routes | Chinese guides | English guides |
|---|---:|---:|---:|---:|
| [abb](platform/abb) | 164 | 26 | 64 | 64 |
| [agibot](platform/agibot) | 78 | 26 | 33 | 33 |
| [agilex](platform/agilex) | 78 | 13 | 52 | 52 |
| [booster](platform/booster) | 21 | 7 | 8 | 8 |
| [boston_dynamics](platform/boston_dynamics) | 39 | 13 | 52 | 52 |
| [clearpath](platform/clearpath) | 156 | 13 | 52 | 52 |
| [deep_robotics](platform/deep_robotics) | 21 | 7 | 8 | 8 |
| [dobot](platform/dobot) | 226 | 15 | 28 | 28 |
| [doosan](platform/doosan) | 937 | 26 | 57 | 60 |
| [elephant](platform/elephant) | 270 | 15 | 28 | 28 |
| [fanuc](platform/fanuc) | 82 | 26 | 58 | 58 |
| [flexiv](platform/flexiv) | 753 | 26 | 34 | 34 |
| [fourier](platform/fourier) | 24 | 8 | 28 | 28 |
| [franka](platform/franka) | 172 | 26 | 36 | 36 |
| [hello_robot](platform/hello_robot) | 18 | 6 | 79 | 79 |
| [kinova](platform/kinova) | 88 | 26 | 31 | 31 |
| [kuka](platform/kuka) | 79 | 26 | 56 | 58 |
| [leju](platform/leju) | 29 | 8 | 39 | 39 |
| [limx](platform/limx) | 21 | 7 | 8 | 8 |
| [nvidia](platform/nvidia) | 24 | 8 | 27 | 33 |
| [nvidia-groot](platform/nvidia-groot) | 24 | 8 | 27 | 29 |
| [nvidia-isaac-ros](platform/nvidia-isaac-ros) | 39 | 8 | 32 | 34 |
| [nvidia-isaac-sim](platform/nvidia-isaac-sim) | 26 | 8 | 27 | 30 |
| [pal](platform/pal) | 45 | 6 | 85 | 85 |
| [realman](platform/realman) | 225 | 15 | 28 | 28 |
| [robotis](platform/robotis) | 36 | 6 | 79 | 79 |
| [ros](platform/ros) | 174 | 26 | 26 | 26 |
| [ros1](platform/ros1) | 91 | 26 | 29 | 29 |
| [ros2](platform/ros2) | 91 | 26 | 29 | 29 |
| [trossen](platform/trossen) | 36 | 6 | 79 | 79 |
| [ubtech](platform/ubtech) | 24 | 8 | 27 | 27 |
| [ufactory](platform/ufactory) | 450 | 15 | 28 | 28 |
| [unitree](platform/unitree) | 132 | 22 | 44 | 44 |
| [universal_robots](platform/universal_robots) | 391 | 26 | 57 | 59 |
| [wasi](platform/wasi) | 57 | 10 | 26 | 26 |
| [yaskawa](platform/yaskawa) | 79 | 26 | 55 | 55 |

## Review and build workflow

1. Read the platform's bilingual language manual and review-status.json scope.
2. Enter one example directory and use its independent xmake.lua. Public imports
   resolve through the shared SDK include registration.
3. Select the language and platform with set_language and set_ros_platform.
   Version selectors use set_ros1_version, set_ros2_version and the corresponding
   set_<vendor>_version declaration. Select the documented wasm32-wasip1 or
   wasm64-wasip1 route through the common architecture configuration.
4. Use ordinary binary, static or shared target kinds and normal dependencies.
   Executable and shared delivery modules end in .wasm; genuine indexed static
   archives are intermediate build inputs. Interpreted languages use one shared
   pinned Wasm engine, not a host interpreter substitute.
5. Configure an installed uwvm2-ros runtime and explicit module permissions before
   xmake run. Example templates start with native ROS disabled. A successful
   build does not grant capabilities or prove communication with robot hardware.

The WAT build and object-linking details are documented in the
[shared WAT guide](../share/language/wat/README.md). Broader implementation and
test matrices remain deliberately incomplete until their exact source, product,
native distribution and execution-host evidence have been accepted.

The TypeScript library examples additionally pass 16 actual Xmake run invocations without recompilation. The accepted CLR cohort uses an explicitly selected, checksum-verified tool and native-EH pair; default public cold installation still needs its package wiring. Those results do not qualify the pending Unitree CLR bindings.
