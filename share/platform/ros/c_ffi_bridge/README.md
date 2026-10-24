# C Foreign Function Interface bridge

`c_ffi_bridge` forwards C ABI calls from Swift, Haskell, Nim, D, and Odin to the
original uwvm2 ROS Wasm imports. Each language retains its own compiler, runtime,
typed records, and application source. The shared nine-language build adapters
are documented separately in [native_languages](../native_languages/README.md).

The maintained inputs are:

- `include/platform/ros/c_ffi_bridge/roswasm_c_ffi.h`: the uniform C declaration.
- `src/platform/ros/c_ffi_bridge/shim.c`: the numeric dispatch implementation.
- `tools/native_languages/numeric.py`: the source generator and index producer.
- `share/platform/ros/c_ffi_bridge/numeric-inventory.json`: the exact private
  operation indices for the selected ABI schema.

The language binding calls `roswasm_c_ffi_invoke(operation, a0, ..., a6)`.
The shim selects an original imported function while preserving the declared
numeric ABI. `ROSWASM_C_FFI_BACKEND=1` selects `uwvm_ros1_v1`; `=2` selects
`uwvm_ros2_v1`. Link exactly one backend into the guest's own Wasm module.
Private indices must remain paired with the generated shim and bindings.

This bridge is infrastructure, not a programming language or a native ROS node.
Its tests contribute bridge coverage. Each consumer language needs its own
application compilation and execution evidence before a vendor SDK port can be
reported as supported.
