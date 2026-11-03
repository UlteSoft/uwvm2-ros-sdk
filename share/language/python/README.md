# CPython 3.14.8: shared genuine guest engine

One engine implementation serves every robot platform. ROS1 and ROS2 variants
select their exact ABI import namespace. They contain no vendor schema,
application outcome, robot address, capability grant or native ROS library.
Actual modules execute inside CPython; Xmake never evaluates them.

## Source and maintenance

`src/language/python/` contains maintained implementation inputs.
`share/language/python/upstream.json` retains upstream archive identity,
licenses and the original/adapted per-file identities. `source-lock.json` pins
the complete maintained source/recipe closure. Third-party legal notices and
algorithmic sources remain separate from the SDK-authored adapter review.

`tools/language/python/build.py` takes explicit `--sdk`, `--llvm-root`,
`--target-sdk`, `--cache`, `--output` and `--target`. Supported construction
selectors are `wasm32-wasip1` and `wasm64-wasip1`; the selected **actual module
memory width** must match. A construction selector alone is no execution claim.
The target uses shared LLVM 23.1.4 and the `noeh` target profile.
Every build starts with new private object/output directories and verifies
actual 64 GiB memory / zero-swap cgroup files. Run only on SSH Linux under the
global test lease. It builds real sources, records each command and keeps every
failed attempt. No personal path is removed by editing compiled Wasm bytes.
New bytes require new language, codec, native ROS and architecture acceptance.

CPython additionally builds its matching native helper from source, freezes
real startup encodings and disables the unavailable optional socket extension
before configure. Its getpath VPATH and compiler source names use public
logical prefixes. This profile does not bundle a complete Python stdlib, pip
or dynamic extensions. Lua uses genuine upstream C++ throw/catch and modern
Wasm EH, with deterministic noncryptographic hash/sort/random initialization
and ordinary failure for unavailable host shell/temporary-file operations.
QuickJS retains the full ECMAScript implementation with WASI allocator and
non-threaded adaptations. These details describe the relevant family only.

## Platform-neutral Xmake adapter

Providers call `configure(target, sdk_root)` and `build(target, sdk_root)` from
`tools/language/python/pack.lua` (JS owns the one implementation). They set
`ros.sdk.language`, `ros.sdk.backend`, `ros.sdk.bundle_manifest`, `set_arch` and
`set_plat`. `ros.sdk.bundle_manifest` is a portable SDK-relative JSON filename:

```json
{
  "format": "uwvm-language-bundle-v1",
  "language": "py",
  "backend": "ros2",
  "modules": [
    {"name": "public/module", "file": "include/platform/vendor/module", "sha256": "EXACT_FILE_SHA256"}
  ]
}
```

Python uses dotted identifiers and explicit `package: true` parent entries in
initialization order. JavaScript keeps the real module loader and admits at
most 63 library modules plus the application. Lua preloads public require names
and requires LF-normalized source. The manifest declares complete source bytes
and their SHA-256 values. No path may escape the installed SDK. Platform code
supplies its own records and thin APIs; do not copy an interpreter per vendor.

The real runtime metadata must match the locked upstream version, exact
backend, target, whole-file digest and source-slot marker/capacity. Packing
changes only that checked initially empty data slot and preserves all section
extents. The application output is one `.wasm`; build receipts remain in the
example's `.uwvm-ros` cache. The guest compiles/parses application source at
execution time. A packaging receipt is deliberately not an execution receipt.

## Execution and qualification

Use the installed `uwvm2-ros` and an independently configured native ROS
deployment. The user manually supplies policy/aliases, exact native type
identities, transport and QoS. Neither build nor `xmake run` grants rights.
Native ROS1/ROS2, x86_64 and actual QEMU AArch64 runtime evidence must be checked
for the exact application and runtime bytes. Codec-only checks, old engine
identity and cross compilation cannot establish that evidence.

The complete original raw-operation signatures, exact scalar/result rules and ownership are documented in `share/language/js/RAW-ABI.md`.


The common lazy source loader now merges the exact CPython3.14.8 source graph in
`stdlib.json` before platform modules. Its286 modules cover the conservative import
graph rooted at collections, collections.abc, dataclasses, pathlib, typing, json
and array; genuine collections itself installs its original collections.abc alias.
Every source member is hashed against the retained CPython source inventory.
Duplicate platform declarations must have the identical original stdlib bytes.
All four existing ROS1/ROS2 memory32/memory64 command engines are genuinely
relinked from the same unchanged core archives with16MiB source slots; JavaScript
keeps its original4MiB default. `relink_stdlib.py` records the real compiler, target
libraries, original core hashes, complete ABI imports and new artifact hashes.
The original core construction lock remains historical; current source and the
new command relink provenance have separate locks.

The native extensions remain the genuine statically compiled WASI core modules.
There is no native Python application fallback or invented standard module. This
is not a claim that every optional desktop/network/platform extension is usable.
Missing socket, TLS, dynamic loader or host-specific extensions keep their actual
import/runtime errors. The complete robot ROS/driver/simulator integration still
requires separate genuine VM and official-environment acceptance.

The public relink maintenance entry requires explicit paths, for example:
`python3.12 -B tools/language/python/relink_stdlib.py --sdk /absolute/sdk
--llvm /absolute/verified/llvm23 --output /absolute/fresh-output` (one command).
Run it through the admitted CPU scheduler. It independently checks the actual
64GiB/zero-swap ancestor before compiler execution, validates both existing
genuine core/toolchain closures, and reports their reuse explicitly. It needs
no UWVM_SDK_OUTPUT variable. Core cold construction remains build.py's separate
operation. memory64/table64 metadata is derived from the emitted artifact's
actual memory and table widths; no64-bit guest execution is implied.

The same common cold-build and explicit-output relink entries compile the actual
`src/platform/ros/py/_native.c` bridge for each selected backend. CPython registers
its real `_roswasm_native` module alongside the separate `_uwvm_ros` module; no
name alias or native application fallback is used. The shared bridge.py owns
the compiler flags and exact source/header inventory. Both source locks and
runtime metadata record those real bridge inputs. Original core archives remain
unchanged; capability grants and official scenario execution stay separate.
