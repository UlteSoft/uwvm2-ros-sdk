# Genuine Haskell source locations for the Wasm backend

The patch targets GHC revision `e8c751198a5123e81eabbc3aaea1272bac43271c`
(version `9.14.1.20260731`). Apply it to a matching source checkout with
`git apply --check` followed by `git apply`. Do not apply it to an unrelated
installed GHC revision or replace an existing installation in place.

GHC's Wasm lowering previously discarded every Cmm tick. The patch retains
actual `SourceNote` spans and emits assembler `.file` and `.loc` directives.
The existing LLVM assembler and linker produce and relocate the DWARF line
table. No Wasm program counter is invented and no executable Wasm instruction
is added. Each function starts with a line-zero marker so an earlier
function's final source position does not leak into its prologue.

## Build using an existing cross environment

Reuse the matching target RTS, package database, libffi and WASI sysroot.
Build the cross compiler frontend in a separate build tree using the normal
GHC cross configuration, an existing host GHC, and Hadrian target
`stage1:exe:ghc-bin`. On this revision the resulting native frontend is
`_build/stage0/bin/wasm32-wasi-ghc`. Keep build parallelism within the host's
memory and process budget.

Host and target libffi are different dependencies: the stage-zero native
`ghci` library must use the host libffi headers and library; the Wasm RTS
must use the existing target libffi. Never pass a Wasm archive to the host
linker. Configure these independently in the build environment; there is no
machine-specific sysroot path in this source patch.

Use the newly built frontend with `-B` pointing at a private copy or overlay
of the matching installed target library tree. Preserve the original
library-tree layout because package paths may be relative to `pkgroot`.
Resolve the compiler, linker and resource-directory paths in the private
settings file to the reused toolchain. Do not modify the original cache.
For debug artifacts, ensure that the target settings do not add
`--strip-debug`. Compile the application and its own Haskell modules with
`-g -O0 -fforce-recomp`, and preserve debug sections through linking.

## Validate the producer and the consumer separately

Inspect the emitted assembly for actual application filenames and source
lines; inspect the final linked Wasm DWARF line table for the same paths and
relocated ranges. A line table containing only C runtime files does not
establish Haskell source debugging. Run the real SDK artifact under
uwvm2-ros, set a source breakpoint in the application, and verify that an IDE
stops at that line and performs mapped stepping. Producer checks alone do
not qualify the runtime or the IDE.

This patch adds line locations. It does not claim full Haskell local-variable
or closure descriptions, rebuild/instrument the precompiled RTS, or establish
memory-tag coverage for the Haskell heap. The SDK's required MTE policy remains
in effect; this source-debugging patch is not an exemption.
