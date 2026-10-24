# Shared source-language adapter interface

The public declarations remain `set_language("wat")` and
`set_language("fortran")`, followed by the ordinary `set_kind`, `add_files`,
`add_deps`, `add_links`, `add_linkdirs`, `set_arch`, and `set_plat` declarations.
SDK discovery uses only `UWVM_ROS_SDK_ROOT`.

The common registry loads `tools/language/wat/provider.lua` for WAT and
`tools/language/fortran/provider.lua` for Fortran. Owner 01 supplies the WAT
implementation; owner 08 supplies the one real Fortran implementation. There is
no fallback to C, a system compiler, or an interpreted approximation. An absent
provider fails as a missing shared dependency.

Each provider implements the existing version-one lifecycle:

- `describe()` returns `api_version = 1`, supported `languages`, exact `targets`,
  `exception_profiles`, `entry_profiles`, `features`, and `artifact_kinds`.
- `configure(target, root, request)` checks the source selection and binding
  metadata. It must not discover, install, or execute a compiler or assembler.
- `build(target, root, request)` acquires the pinned shared tools, builds the
  genuine source language, and writes the target's actual output.

The request already contains the target `kind`, `sources`, `artifact`, `triple`,
`address_bits`, `wasi_preview`, `threads`, `exception_profile`, `entry`, `features`,
`links`, `linkdirs`, `dependency_targets`, `public_include_roots`, and the
platform-owned `binding`, `include_roots`, `module_roots`, and `native_sources`.
Bindings retain their own schemas and exact ROS/backend selection; the common
dispatcher contains no vendor-specific compiler branch.

For library producers, `describe().artifact_kinds[kind]` lists the actual
languages, targets, exception profiles, and supported producer/consumer
combinations. A static target produces `.a` with real relocatable Wasm members.
An already linked module is not an object-file substitute. A shared target
produces an independently initialized Core `.wasm` module with named imports
and exports; it is not a native DSO and does not imply LLVM dylink support.

`artifact_contract.static_closure(target)` returns ordered static targets for
lazy archive extraction. Shared boundaries terminate traversal. The checked
dependency records identify `static-link`, `preload`, or `build-only` usage and
retain exact triples and exception profiles. These are public common services
for the Fortran adapter as well as the WAT adapter.

Fortran adapters must use real Fortran sources and a pinned Flang lineage.
Cross-language public symbols should use actual `ISO_C_BINDING`/`bind(C)`
interfaces, with the matching target-width runtime archives supplied by owner
08. Declaring a route does not qualify its compiler, runtime, library kinds,
memory64 behavior, or native ROS execution.

ROS Fortran bindings consume the common modules
`include/platform/ros/fortran/ros1/uwvm_ros1_v1.f90` and
`include/platform/ros/fortran/ros2/uwvm_ros2_v1.f90`, implemented once by owner 08.
For an ABI operation `capability_open`, the public procedure is
`uwvm_ros1_capability_open` or `uwvm_ros2_capability_open`, with the exact
`BIND(C)` symbol `uwvm_ros1_v1_capability_open` or
`uwvm_ros2_v1_capability_open`. The operations and scalar signatures come from
`share/abi/abi-v1.json`. Platform bindings do not distribute another complete
raw-ABI module. A caller may use standard Fortran `USE` renaming. Vendor records
and vendor operations remain separate from the common raw imports.

Signed `ISO_C_BINDING` integer kinds preserve all bits of unsigned ABI fields.
Pointer conversion follows the actual target pointer representation; a wasm32
pointer must not be sign-extended into an unsigned 64-bit guest offset. Layout
qualification requires owner 08's independent C/Fortran round trips at both
widths. The LLVM Flang 23.1.4 source candidate is commit
`7a941dfb2877a0b8cf30323fefa85ad019e0b0f5`, source archive SHA-256
`dd7ef5ae528cfe23ccf3cda68ab42c11e42657b079d43d7e0ddb1ff52840d0e0`;
this is a source pin, not a qualified compiler or runtime bundle.

Platform schemas explicitly list these routes after the platform owner provides
their bindings. Three distinct examples per language/backend and English/Chinese
manuals remain platform deliverables. Unsupported combinations fail clearly.
Build and cold Xmake-only qualification are separate evidence. Running compiled
bytes preserves the operator's manually supplied per-module permissions.
