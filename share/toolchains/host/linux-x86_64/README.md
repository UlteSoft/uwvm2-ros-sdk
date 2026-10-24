# Linux x86-64 build tools

This directory supplies the pinned host programs used by the public Xmake
adapters. Each JSON manifest selects one XMZ archive and records its SHA-256,
members and executable entry points. These files are required by an SDK
installation that builds Wasm applications with only Xmake installed.

LLVM 23 supplies the shared C-family compiler, linker and archive tools. The
other bundles supply the actual AssemblyScript, MoonBit, JVM and native-language
frontends. Every platform uses the same language bundle and version. The host
programs execute on Linux x86-64; their location does not select the guest's
wasm32 or wasm64 architecture.

Xmake verifies and extracts a selected bundle into its shared tool cache.
`ros-tool-cache` selects that cache explicitly; otherwise the adapters use
`XDG_CACHE_HOME/uwvm-ros/host-tools` or the equivalent user cache directory.
The extracted cache may be rebuilt from these distribution archives. Removing
the archives or manifests prevents a fresh installation from building the
corresponding languages.

Application and shared-module outputs are `.wasm`. A `static` target produces
a Wasm object archive consumed during linking. These compiler distribution
archives are build inputs, separate from those target outputs. Runtime-only
deployment uses the built modules, uwvm2-ros and manually selected permissions;
it does not need the host compiler bundles.

See [the Chinese explanation](README.zh_CN.md).
