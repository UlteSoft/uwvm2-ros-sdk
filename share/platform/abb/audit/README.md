# ABB dependency restoration

The user archived the former SDK in `.tmp/sdk 07-26-57-965` while reviewing its
contents. `restoration.json` records the exact selected source files, their
archive and initial destination SHA256 digests, sizes, and reasons for recovery.
The archive is preserved. Later implementation edits are ordinary working-tree
changes; the initial restoration digests are historical observations.

The selection contains the six implemented source-language families
(AssemblyScript, C, C++, Go, Objective-C, Rust), three C FFI bridge checks, their
public ROS bindings, complete ABB schema inputs and licenses, generator inputs,
and the production ROS2 gateway source. The C FFI bridge contributes no additional
source language. The paired WASI C and libc++ headers, target libraries, and
Clang resource component are build inputs, not example application outputs.

Legacy example entry points, build caches, unrelated vendors, and the former
`origin` tree are excluded. Unimplemented language examples are not restored or
represented as tested. Additional dependencies must be justified when their real
language implementation is added.

Source restoration is not compilation or execution evidence. Compiler and runtime
tests run on SSH Linux under `Documents/uwvm2-ros-test` with an actual 64 GiB
memory limit and disabled swap. Authored sources are written locally and copied
as complete folders before these tests. Each application build directory must
contain only its final `.wasm` command; compiler caches and execution logs have
separate locations.
