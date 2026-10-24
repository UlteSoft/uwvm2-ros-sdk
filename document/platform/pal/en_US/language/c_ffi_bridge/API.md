# pal explicit C FFI API

Each profile exposes six external C functions per original record. They delegate to the complete canonical C implementation and keep its codec identity, full field layout and bounds. This route is an explicit foreign call surface; it does not establish another source-language implementation.

`uwvm_pal_PROFILE_SYMBOL_storage_size()` and `_storage_alignment()` describe the actual selected target C object layout. Allocate correctly aligned guest memory using the foreign language's genuine allocator. Guest addresses are meaningful only within that same application instance. Memory64 changes pointer/size_t width and requires its own build and execution evidence.

`_validate(value)` returns zero for a complete valid record or 22 for invalid fields/null. `_wire_size(value, length)` validates first and leaves the disjoint length result unchanged on refusal. `_encode(value, output, capacity, length)` delegates transactional validation/measurement and returns 22 for invalid or overlapping storage, or 90 when output capacity is insufficient. `_decode(input, length, value)` refuses truncated/trailing/invalid data and changes the destination only after complete success. Callers retain every record, buffer and result allocation. Calls allocate no native ROS resource and grant no permission.

Compile exactly one matching profile implementation into the same application as the caller, with the global `include/platform` root. Use the public header paths below. The foreign caller must use its real compiler/runtime and the exact C calling convention; no generated wrapper may replace its source semantics. Do not copy C struct memory as canonical ROS bytes. Initialize every active field explicitly; zero-filled storage is not a promise of declared native defaults. Original fields, units, constants, defaults and service/action components are indexed in `API_CATALOG.md` and the matching `share/platform/pal/catalogs/PROFILE/schema.json`.

The bridge currently covers local complete-record construction, validation and codecs. Service/action/topic owner adapters and native ROS admission use the shared C foundation and remain separate required work. No successful build, x86 native ROS execution, QEMU AArch64 execution or memory64 qualification is implied by these declarations.

| Profile | Backend | Records | Header | Implementation |
| --- | --- | ---: | --- | --- |
| `ros1_humble_devel` | `ros1` | 275 | `include/platform/pal/c_ffi_bridge/ros1/ros1_humble_devel/abi.h` | `src/platform/pal/c_ffi_bridge/ros1/ros1_humble_devel/abi.c` |
| `ros1_indigo_devel` | `ros1` | 222 | `include/platform/pal/c_ffi_bridge/ros1/ros1_indigo_devel/abi.h` | `src/platform/pal/c_ffi_bridge/ros1/ros1_indigo_devel/abi.c` |
| `ros1_noetic_devel` | `ros1` | 222 | `include/platform/pal/c_ffi_bridge/ros1/ros1_noetic_devel/abi.h` | `src/platform/pal/c_ffi_bridge/ros1/ros1_noetic_devel/abi.c` |
| `ros2_humble_devel` | `ros2` | 30 | `include/platform/pal/c_ffi_bridge/ros2/ros2_humble_devel/abi.h` | `src/platform/pal/c_ffi_bridge/ros2/ros2_humble_devel/abi.c` |
