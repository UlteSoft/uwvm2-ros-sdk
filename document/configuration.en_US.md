# Shared Xmake configuration

Every platform uses the declaration API in `tools/xmake/ros.lua`. Each
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
    set_wasm_exceptions("noeh")
    -- Preserve an explicit architecture selected by xmake f -a.
    set_arch(get_config("arch") or "wasm32")
    set_ros_scenario("read_speed")
    add_files("main.cpp")
target_end()
```

This is a declaration example, not a recorded successful build of this ABB
application. With the current default artifact layout, this target requests
`artifacts/abb_read_speed.wasm` below Xmake's selected build directory. An explicit
target directory or dependency graph may change that location; use the actual
artifact record in the target's object directory.

`xmake f -a wasm64` requests a 64-bit target only when the project preserves that
selection and the provider, genuine language adapter and target closure support
it. The current shared dispatch rejects a target-local `set_arch("wasm32")`
that conflicts with an explicit wasm64 configuration; platform conflicts also
fail before compilation. Source descriptions should preserve the configured
selection. Exact C/C++ static-pointer graphs have matching32/64 product
memories in the reviewed snapshot; this is not all-language support.
Check the recorded triple and actual emitted memories; a successful configure or
build exit alone is insufficient. The requested triples are `wasm32-wasip1` and
`wasm64-wasip1`. Guest pointer width and the x86_64/AArch64 architecture of the
uwvm2-ros host are separate choices.

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

`set_ros1_version` and `set_ros2_version` require a nonempty distribution
identifier such as the provider's declared `noetic` or `jazzy`; `""` is rejected.
Distribution selection is separate from a vendor source/catalog version,
controller firmware, native type-support ABI and compiler/interpreter version.
Keep all of those identities explicit in the selected project and deployment;
`complete` is not a version or compatibility certificate.

These are the unified first-release names; retired aliases are not provided.
`set_arch`, `set_plat`, `set_kind` and `add_deps` retain their ordinary Xmake
meaning. Each language's static libraries, shared modules and threading/exception
combinations require the corresponding shared implementation. A valid declaration
does not itself qualify an execution matrix.

The declarations distinguish output category from memory semantics:

- `set_wasm_kind("binary")` requests a complete `.wasm` command.
- `set_wasm_kind("static")` requests an indexed archive containing relocatable
  Wasm objects. Its default location is `.archives/<target-identity>` below the
  selected build directory. It is a linker input and shares the linked
  consumer's memory and authority; it is not deployed as another instance.
- Existing `set_kind("shared")` requests a module-owned-memory Core preload,
  identified as `core-preload`. It does not select the explicit dynamic-memory
  model or a native DSO.
- `set_wasm_kind("dynamic")` requests an explicit imported communication memory;
  `set_wasm_kind("independent")` additionally requests an unexported private
  memory. Both require `set_wasm_memory_import(module, export)` and an adapter
  that implements the exact model. The current dispatcher rejects these modes
  and explicit memory imports for C, C++ and `c_ffi_bridge`. C-family library
  graphs currently require Preview 1, `noeh` and a single guest thread.

For other languages, the shared adapter checks exact producer/consumer
languages, triples, exception profiles and memory models. A declaration or
source candidate is not evidence that every such combination builds or runs.
Explicit `set_targetdir` and `set_basename` retain Xmake meaning. `add_deps`
propagates public includes and definitions; `inherit = false` records build
ordering only. Preload dependencies are separate deployment inputs, not static
link inputs. Their private backing, initialization, actual caller identity,
per-instance grants and cleanup require runtime evidence. Build declarations,
module names and multiple memory indices establish none of those facts.

The native ROS Preload examples include `deployment.template.json`. Review it,
save an operator-specific deployment, then use `xmake f --ros-run-config=...`
and `xmake run main`. The application's selected ROS backend is deployment
metadata. In that particular template, only `ros_comm` requests ROS permissions;
the selected runtime and gateway must enforce the exact per-caller grants.
A template neither grants authority nor qualifies the deployment.

## Provider options and features

An explicit ABB option map is:

```lua
set_ros_config({catalog = "complete", transport = "native-ros"})
```

An empty map uses the provider's declared defaults. Required fields without
defaults must be supplied. `false` is a value to validate, not an absent value to
replace with a default. A dedicated selector and a generic option must agree
when both specify the same field. The authoritative keys and choices are in
`share/platform/<platform>/provider.json`.

For example, `set_wasm_features({"memory64"})` requires `set_arch("wasm64")`.
Selecting `exceptions` also requires `set_wasm_exceptions("eh")` and an available
exception-enabled target closure. The contract requires a requested language, pointer width and feature set to
remain unchanged. Validate the actual output; the earlier explicitly requested
wasm64 static-library diagnostics still produced wasm32, so the contract alone
cannot be treated as a verified property of every current example.

## Building and running

Python test supervisors require Python 3.11 or newer with `hashlib.file_digest`
and exception-group traceback support. Set `UWVM_SDK_PYTHON` to an absolute
interpreter path, or leave it unset to check `python3` on PATH. A missing,
relative, or unsupported explicit selection produces `BLOCKED_SDK_PYTHON_*`
before the supervisor starts; it never silently selects another interpreter.
This host test dependency is separate from a Python interpreter running inside
Wasm for an SDK application.

On Linux, supervisors enable child adoption before actor birth and retire their
descendants using kernel pidfds, including early-exiting leaders, double forks,
`setsid`, and stopped processes. Retirement retains original failures and any
remaining processes. It does not replace execution admission, the common
resource budget, or the independent lifecycle guardian.

Building requires Xmake and the shared compiler/language closures supplied for
that SDK distribution. It does not require ROS or uwvm2-ros to be preinstalled.
The current bundle installer consumes an already-present, hash-pinned SDK
archive and fails if it is missing. It does not download an absent archive, and
the Python supervisor resolver does not acquire host Python. Supplying such
inputs is a current prerequisite or missing-bootstrap blocker, not completion
of the required Xmake-only cold-start contract. Every final example must still
automatically obtain its supported pinned dependencies from an Xmake-only
installation; this is not yet qualified for the complete SDK. Do not substitute
arbitrary system tools or count a restricted PATH plus an external Python as a
clean installation.

`xmake run` uses the bytes already built. It additionally requires uwvm2-ros, a
matching native gateway and interface registry, and a manually prepared deployment
file. Successful compilation, loading and native robot operations are separate
conditions. See the [native execution guide](native-run.en_US.md) for arguments,
Preload ordering and per-module permissions.
