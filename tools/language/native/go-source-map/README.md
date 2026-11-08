# Exact Go Wasm source maps

This version-pinned patch adds a debug-only compiler flag, -wasmsourcemap,
to the installed Go 1.24.2 frontend. It records genuine source positions next
to emitted instruction byte offsets. The linker accounts for every
variable-length relocation insertion and emits Source Map v3 as an embedded
.debug_source_map custom section. Go runtime virtual PCs are never interpreted
as Wasm byte offsets. Unmapped ranges and function endings terminate mappings.

The patch does not add executable instructions, runtime imports or source
variable locations. Source Map v3 supplies line/column debugging only.
Optimized Go code may share or omit source positions.

prepare.py checks the installed source hashes and version, stages only the
changed source files, and builds two native compiler tools through Go's
-overlay mechanism. A -toolexec wrapper selects these tools for the debug
build. It never modifies the pinned closure, downloads packages or replaces
the installed Go toolchain. Its private cache contains an artifact-hashed
receipt, build logs and genuine relocation/Source Map unit results.
Release compilation uses the original tools without this overlay.

The patch's Go-derived code is governed by LICENSE.Go.
