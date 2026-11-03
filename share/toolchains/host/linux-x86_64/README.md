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
The extracted cache may be rebuilt from these distribution archives. The current
installer checks archive presence and SHA before cache reuse too; a valid
extracted cache does not permit removing its manifest/archive. An absent archive
fails rather than being downloaded by this installer. This directory supplies
build inputs, not proof that all29 language routes and their entire target/runtime
dependencies can bootstrap on an Xmake-only OS. Those cold/default-entry and
required public-test cases remain independently required.

Application and shared-module outputs are `.wasm`. A `static` target produces
a Wasm object archive consumed during linking. These compiler distribution
archives are build inputs, separate from those target outputs. Runtime-only
deployment does not need these host compiler bundles, but still needs an
actually qualified installed VM and its OS/loader/native runtime closure.
ROS examples additionally need matching controlled gateways, type support and
official providers; required per-caller policies must be supplied and enforced.
An ELF path or JSON template alone does not establish that deployment. The
single-executable runtime release and full SDK installation are not qualified by
successful compiler-archive extraction.

See [the Chinese explanation](README.zh_CN.md).

`python-supervisor.json` supplies the native Python 3.12.13 supervisor from the
immutable upstream python-build-standalone 20260728 release. The shared
`tools/xmake/python_runtime.lua` first reuses a suitable existing Python. If none
works, it restores this complete pinned bundle into the shared user cache using
Xmake's embedded codec. An invalid explicit `UWVM_SDK_PYTHON` rejects without
installing a replacement. This host interpreter does not replace the separately
compiled Wasm CPython engines or qualify any robot task.

The distribution archive is required for restoration on a machine with only
Xmake. This path uses no preinstalled Python, tar, compiler, shell or downloader;
it does not claim a network-only bootstrap without a distributed transport tool.
Missing trusted OS bwrap and its applicable user namespace policy remain a
separate system prerequisite. No system package, root unit or policy is installed
by the supervisor selector.

Maintainers can reproduce the exact XMZ archive from the original upstream
tar.gz, whose URL, byte count and SHA256 are recorded in
`python-supervisor-source.json`, inside an admitted build environment:

    python3 -I -S -B /absolute/sdk/tools/xmake/package_python_supervisor.py --sdk /absolute/sdk --archive /absolute/original.tar.gz --output /absolute/new-package --xmake /absolute/xmake

Every original regular payload is retained byte for byte. Original link metadata
is recorded and aliases resolve to declared regular members. The generic shared
packager and installer verify every file, including empty files, before use.

The independently reviewed cold test restored3474 unchanged upstream regular
payloads plus SOURCE.json (3475 installed files) and1048 aliases. It used the
distributed fixed XMZ, an empty installation cache and only Xmake on PATH inside
a view without Python/bwrap. Its outer isolation harness used existing bwrap;
trusted OS bwrap acquisition, network-only restoration, all-language deployment
and guest CPython/source qualification remain separate. Native construction
stopped before output when bwrap was missing.

A separate Ubuntu25.10 x86_64 candidate stages four matching original OS packages
from signed indices when bwrap is absent, then refuses native construction pending
reviewed system installation. Cold/warm staging and wrong-OS rejection are proved;
installation, policy load and the missing-Python+bwrap current UR route are not.
Existing-prerequisite shared029 -> current019 native launch/retirement now has
separate027 evidence. Frozen028 metadata and033 owner README now declare matching target sources
and preserve027's actual029 producer. This closes the candidate-declaration
consistency gap, not the unrun new-constructor/current019 or installation route.
Keep all six files coherent on integration; native README remains owner01's.
