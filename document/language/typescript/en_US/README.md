# TypeScript development

Select `set_language("typescript")` for an actual `.ts` or `.mts` entry. The SDK
uses Microsoft TypeScript 5.9.3 to parse, strictly type-check and emit ECMAScript.
The emitted program is embedded in the same QuickJS 2026-06-04 Wasm engine used
by JavaScript. The compiler never evaluates the application on the build host.
This route does not perform TypeScript-to-native AOT compilation.

The shared compiler package, Node host closure and QuickJS engine are installed
once per pinned cache identity. A platform contributes its schemas and bindings;
it must not distribute another TypeScript compiler or JavaScript interpreter.
The compiler package retains the upstream TypeScript license and standard
library declarations. SDK host-tool manifests identify every supplied file.

## Build configuration

Each installed example contains its own `xmake.lua`. Its bootstrap locates the
SDK through `UWVM_ROS_SDK_ROOT` or by finding the enclosing installed SDK. After
including `tools/xmake/ros.lua`, a Unitree command uses these declarations:

```lua
target("controller")
    set_kind("binary")
    set_language("typescript")
    set_ros_platform("unitree")
    set_ros2_version("jazzy")
    set_ros_scenario("wireless_controller")
    set_arch(get_config("arch") or "wasm32")
    set_plat(get_config("plat") or "wasm-wasip1")
    add_files("main.ts")
target_end()
```

Build from the project directory:

```sh
xmake f -y -a wasm32 -p wasm-wasip1
xmake
```

Use `-a wasm64` for the separate `wasm64-wasip1` ABI. The target is not silently
replaced by wasm32. Building needs Xmake and the installed SDK distribution;
native ROS and `uwvm2-ros` are runtime dependencies, not build dependencies.
The qualified compiler host is Linux x86_64. A QEMU AArch64 guest execution
result does not qualify an AArch64-hosted compiler installation.

## Modules and static types

Declare one entry and import its dependencies. Public imports use SDK namespaces
such as `unitree/js/ros2/records` or a platform's installed
`<platform>/typescript/<profile>/records`; angle brackets are not TypeScript
import syntax. Examples never encode a parent-depth path to the SDK.

Both extensionless public module names and explicit `.mjs`/`.mts` names are
resolved. A neighboring `.d.mts` supplies the types for a real `.mjs` module;
`.d.ts` plays the same role for `.js`. The compiler emits the actual implementation
as part of the guest module graph. Declarations create no fake runtime module.
Existing JavaScript constructors retain their identity, which matters when a
nested record codec checks the original record class.

Interfaces, generics, enum expressions, discriminated unions and type-only
imports are handled by the genuine compiler. Strict semantic errors stop the
build before an application Wasm is produced. Runtime validation of message
bounds and wire representation remains the responsibility of the real codec.
An explicit TypeScript assertion does not change those runtime checks.

The source contract is ES2022 with strict checking, static ESM imports and no
ambient npm packages. Node and browser globals are not guest APIs. The provider
does not load a surrounding `tsconfig.json`, execute package scripts or install
undeclared dependencies. Dynamic `import()` needs a separate guest-loading
contract and is currently rejected explicitly. JSX is not this source route.

## Artifacts, libraries and execution

A binary or shared target delivers `.wasm`. Emitted `.mjs`, compiler diagnostics
and source manifests stay in the private `.uwvm-ros` build area. No `.js` sidecar
is required to deploy the application. Ordinary `set_kind("static")` creates a
real indexed archive as a private link input; its final consumer is `.wasm`.

The four common examples demonstrate typed static linkage, typed shared linkage,
a JavaScript consumer of a TypeScript producer, and a TypeScript consumer of a
JavaScript producer. Read [the library guide](LIBRARIES.md) for the deliberately
bounded scalar ABI and explicit Preload configuration.

For ROS applications, use the selected platform's documented original-type
bindings and deployment configuration. Building grants no ROS capability.
`xmake run` requires an installed `uwvm2-ros` and an explicit run configuration;
it does not infer native distributions, enable ROS or widen module permissions.

Source presence is separate from qualification. The common frontend's test
record identifies compiler bytes, input hashes, exact Wasm products, pointer
widths and runtime architectures. Platform typed catalogs, positive native ROS
transactions and library combinations require their own corresponding evidence.
See the current SDK review entry and each platform's `review-status.json` before
using a platform/language combination as an accepted release route.
