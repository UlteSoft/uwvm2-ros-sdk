# Shared Xmake configuration

Every platform uses the declaration API in `sdk/tools/xmake/ros.lua`. Each
application directory contains its own `xmake.lua` and sources. Set
`UWVM_ROS_SDK_ROOT` to the installed SDK. Build declarations select sources,
target ABIs and platform bindings; runtime authority requires separate manual
configuration.

## An ABB C++ application

This description builds the supplied `read_speed/main.cpp`. The `complete`
selector names the pinned ABB interface catalog, rather than a controller
firmware or RobotWare release.

```lua
-- @brief Use the installed SDK's common configuration and include paths.
local sdk = os.getenv("UWVM_ROS_SDK_ROOT")
includes(path.join(sdk, "tools/xmake/ros.lua"))

target("abb_read_speed")
    set_kind("binary")
    set_language("cpp")
    set_ros_platform("abb")
    set_ros2_version("jazzy")
    set_abb_version("complete")
    set_plat("wasm-wasip1")
    -- Preserve an explicit architecture selected by xmake f -a.
    set_arch(get_config("arch") or "wasm32")
    set_ros_scenario("read_speed")
    add_files("main.cpp")
target_end()
```

Run `xmake` in the application directory to produce `build/abb_read_speed.wasm`.
For a 64-bit target, run `xmake f -a wasm64`, then `xmake`. The resulting target
triples are `wasm32-wasip1` and `wasm64-wasip1`, respectively. Guest pointer width
and the x86_64/AArch64 architecture of the uwvm2-ros host are independent choices.

Sources import through the public include roots; use the concrete header names
documented for the selected language. Build descriptions do not encode the
application's directory depth relative to the SDK.

## Declaration API

| Declaration | Meaning and validation |
| --- | --- |
| `set_language(name)` | Select a genuine frontend or explicit language bridge with an installed platform binding and shared adapter. |
| `set_ros_platform(name)` | Select an installed provider with a complete schema and add the public include roots. |
| `set_ros1_version(distribution)` | Select ROS1 and a native distribution declared by the provider. |
| `set_ros2_version(distribution)` | Select ROS2 and a native distribution declared by the provider. |
| `set_abb_version(catalog)` | Select the ABB interface catalog; conflicting generic catalog options are rejected. |
| `set_agibot_version(version)` | Select an explicit source release matching an installed profile together with its variant. |
| `set_agibot_variant(variant)` | Select the Agibot source variant. |
| `set_ros_config(options)` | Validate the complete option map against the provider schema, rejecting unknown keys, incorrect types and unsupported values. |
| `set_ros_scenario(name)` | Name the application scenario used by provider checks and explicit deployment. |
| `set_wasm_exceptions(profile)` | Select the `noeh` or `eh` target closure explicitly. |
| `set_wasm_features(features)` | Select features supported by the provider and language route; the list must be dense and contain no duplicates. |
| `set_wasm_entry(entry)` | Use the normal language startup with `command`; `freestanding` requires an application-owned entry and supporting implementation. |
| `set_ros_run_config(filename)` | Select an operator-authored deployment JSON without granting authority during compilation. |

These are the unified first-release names; retired aliases are not provided.
`set_arch`, `set_plat`, `set_kind` and `add_deps` retain their ordinary Xmake
meaning. Each language's static libraries, shared modules and threading/exception
combinations require the corresponding shared implementation. A valid declaration
does not itself qualify an execution matrix.

The common C/C++ producer now handles all three kinds. A `binary` is a complete
`.wasm` command; a `shared` target is an independently initialized Core `.wasm`
module for explicit Preload. A `static` target is an indexed Wasm-object archive
used only by the linker. Its default location is `.uwvm-ros/archives`, so archives
are absent from the deployment output. Explicit `set_targetdir` and
`set_basename` retain their ordinary Xmake meaning. `add_deps` propagates public
includes and definitions; `inherit = false` retains build ordering only. Shared
dependencies retain separate memories and permissions instead of becoming link
inputs. Other language/kind combinations must be declared by their actual shared
adapter before configuration is accepted.

The native ROS Preload examples include `deployment.template.json`. Review it,
save an operator-specific deployment, then use `xmake f --ros-run-config=...`
and `xmake run main`. The application's selected ROS backend is deployment
metadata; the file explicitly gives ROS permissions only to `ros_comm`.

## Provider options and features

An explicit ABB option map is:

```lua
set_ros_config({catalog = "complete", transport = "native-ros"})
```

An empty map uses the provider's declared defaults. Required fields without
defaults must be supplied. `false` is a value to validate, not an absent value to
replace with a default. A dedicated selector and a generic option must agree
when both specify the same field. The authoritative keys and choices are in
`sdk/share/platform/<platform>/provider.json`.

For example, `set_wasm_features({"memory64"})` requires `set_arch("wasm64")`.
Selecting `exceptions` also requires `set_wasm_exceptions("eh")` and an available
exception-enabled target closure. A requested language, pointer width or feature
is never silently replaced to make a build appear successful.

## Building and running

Building requires Xmake and the shared compiler/language closures supplied for
that SDK distribution. It does not require ROS or uwvm2-ros to be preinstalled.
Missing closures must be installed explicitly; arbitrary system tool versions
are not substituted.

`xmake run` uses the bytes already built. It additionally requires uwvm2-ros, a
matching native gateway and interface registry, and a manually prepared deployment
file. Successful compilation, loading and native robot operations are separate
conditions. See the [native execution guide](native-run.en_US.md) for arguments,
Preload ordering and per-module permissions.
