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
`--target-sdk`, `--cache` and `--output` paths. `--target-sdk` identifies a
completed stable `sysroots.json` build, not the legacy installed libraries.
The independent selectors are `--address-bits 32|64`, `--wasm-version
1.0|2.0|3.0`, `--threads|--no-threads`, `--mte|--no-mte` and
`--exceptions noeh|eh`. Defaults are wasm32, Core 3.0, threads and MTE.
Unsupported or unbuilt combinations are rejected without a fallback. The
selected compiler and every sysroot input must match their recorded hashes.
The producer is the WebAssembly-only stable LLVM 23.1.5 source build.

Builds use fresh private output and object directories, including SDK `.tmp`,
and verify the actual 64 GiB/zero-swap test cgroup. Each compiler invocation
and failed attempt is retained. Debug and source paths are mapped during
compilation; compiled Wasm bytes are never edited to conceal build paths.

CPython builds its matching native helper from source, or reuses an explicitly
selected `--build-python` CPython 3.14.8 helper after checking its version and
recording its hash. That native helper generates frozen modules; applications
always execute in the Wasm interpreter. MTE builds disable pymalloc and
mimalloc so object allocations use the instrumented libc allocator. This is a
memory-safety choice whose performance must be measured separately.
`profile.py` records the reviewed stable-source changes for the explicit WASI
thread target and vector I/O probes. Socket modules are selected by actual
sysroot availability; their exposure and permissions remain VM launch policy.
The build grants no network access. Dynamic native extensions are not loaded.

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
The former `relink_stdlib.py` entry was removed. Relinking an old interpreter
archive cannot instrument its core, allocator, libc or TLS. Rebuild the complete
closure through `build.py`; never combine a new MTE command wrapper with an old
non-MTE core archive. Historical construction and relink locks describe the
old bytes only and are not qualification records for new artifacts.

For example, inside the required test resource group:

```sh
python3 -B tools/language/python/build.py \
  --sdk /absolute/sdk \
  --llvm-root /absolute/stable-wasm-llvm \
  --target-sdk /absolute/completed-sysroot-build \
  --cache /absolute/sdk/.tmp/python-objects \
  --output /absolute/sdk/.tmp/python-engine
```

A threaded engine imports `env.memory`. The launcher must provide a matching
shared-memory owner, explicitly enable WASI Threads and provision enough
storage for the interpreter's code, source segments, stacks and workers.
Exact WASIp1 and ROS interfaces and resource grants are separate from that
storage configuration. An import-visible socket has no socket rights until
those rights are explicitly granted to a supplied descriptor.

The cold build compiles `src/platform/ros/py/_native.c` for each backend.
CPython registers `_roswasm_native` alongside `_uwvm_ros`; `bridge.py` records
the exact adapter inputs. A successful construction receipt remains
`BUILT_PENDING_EXECUTION`. Language execution, tagged-memory violations,
thread safety, native ROS integration and all five VM architectures require
independent acceptance of the exact new bytes.
