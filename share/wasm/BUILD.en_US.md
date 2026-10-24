# Maintaining the LLVM 23 WASI sysroots

`toolchains.json` is the integration contract. Resolve its paths relative
to the SDK directory. A target is eligible for normal selection only when its
`tested` field is `true`; `compile_link_tested` alone does not qualify execution.
Normal builds use the pinned LLVM 23 closure; historical reference layouts are not selected.

The reference inventory contains 24 directory combinations across ordinary,
no-exception, memory-tagged, and no-exception memory-tagged profiles. Directory
existence is not support evidence. Upstream WASI SDK currently supports wasm32
and does not define a wasm64 Preview 1 ABI. The `wasm64-wasip1` build here uses
the explicitly named Uwvm Preview 1 memory64 extension: pointer and size
arguments use i64, file descriptors and flags retain i32, and imported function
names end in `_wasm64`. It requires a matching Uwvm runtime.

These recipes build static, single-threaded Preview 1 closures. They do not
qualify WASI Preview 2, WASI Preview 3, thread spawning, shared libraries,
memory tagging, or cross-runtime compatibility of the Uwvm memory64 extension.
C `setjmp`/`longjmp` support is disabled in this closure.
The `noeh` C++ profile disables exceptions. The `eh` profile, when present,
requires the standardized Wasm exception instructions and a successful
throw/catch runtime fixture. Consult each manifest entry for its actual status.

## Source and compiler provenance

`share/wasm/source-lock.json` pins complete wasi-libc sources and the LLVM
runtime source subset by Git revision and SHA-256. The archives exclude local
uncommitted changes and all prebuilt target archives. `prepare_wasm64.py`
generates the audited adapter in the isolated build directory; its JSON output
lists every widened imported parameter.

The build rejects a compiler outside LLVM major version 23 and also rejects
LLVM 23 builds that omitted the WebAssembly backend. The compiler artifact is
the official LLVM 23.1.4 Linux x86_64 release, whose digest is recorded in
`llvm23-compiler-artifact.json`. A matching release digest is recorded; no GPG
or Sigstore verification is claimed.

The runtime sources are the LLVM 23 development snapshot recorded in the
source lock, compiled with the official 23.1.4 compiler. The memory64 adapter
also corrects compiler-rt's soft-float comparison return type to i32, matching
LLVM's Wasm libcall ABI. Compiler-rt's two exception-tag assembly files are
compiled with `-fwasm-exceptions`; other builtins retain their ordinary codegen.
The binary128 comparison fixture and the throw/catch fixture cover these
otherwise easy-to-miss ABI requirements.

## Linux rebuild

Author changes locally, then copy the complete `tools/wasm`, `src/wasm`, and
`share/wasm` folders to the isolated Linux source SDK. Run compilation and
verification only inside the authorized 64 GiB container with swap disabled.
The scripts read the process cgroup and refuse a different memory limit or
swap setting. Use at most two compiler jobs.

Rebuilding requires Python 3.11 or newer, CMake 3.26 or newer, Ninja, the pinned
source cache, and the LLVM 23 host tools. No LLVM 22 compiler is used to build
the guest closures. Consuming the prebuilt closures through Xmake does not
require Python, CMake, Ninja, or a preinstalled C/C++ compiler.

Keep the original upstream archives in an SDK-external source cache. With
`SDK`, `WORK`, `LLVM23`, `UWVM_ROS_RUNTIME`, and `SOURCE_CACHE` set to their container-visible
absolute paths:

```sh
python3 "$SDK/tools/wasm/build_llvm23_sysroots.py" \
  --sdk "$SDK" --work "$WORK" --toolchain "$LLVM23" \
  --source-cache "$SOURCE_CACHE" \
  --cmake /host/usr/bin/cmake --ninja /host/usr/bin/ninja \
  --targets wasm32-wasip1 wasm64-wasip1 --profiles noeh eh --jobs 2
python3 "$SDK/tools/wasm/verify_llvm23_sysroots.py" \
  --sdk "$SDK" --work "$WORK/acceptance" --toolchain "$LLVM23" \
  --runtime "$UWVM_ROS_RUNTIME"
```

Provide the host CMake dependencies through the container's `LD_LIBRARY_PATH`
when using `/host/usr/bin/cmake`. Do not substitute clang 22 if clang 23 is
unavailable. Compiler-rt, wasi-libc, libc++, libc++abi, and the optional unwinder
are compiled from their pinned sources. The build command record is retained
in the manifest and the isolated work directory.

## Consuming a closure

For a selected manifest entry, pass its exact triple, sysroot and resource
directory to the compiler:

```sh
clang --target=wasm32-wasip1 \
  --sysroot="$SDK/lib/wasm/llvm23/noeh/wasm32-wasip1" \
  -resource-dir="$SDK/lib/language/cfamily/clang/23" hello.c -o hello.wasm
clang++ --target=wasm32-wasip1 \
  --sysroot="$SDK/lib/wasm/llvm23/noeh/wasm32-wasip1" \
  -resource-dir="$SDK/lib/language/cfamily/clang/23" \
  -stdlib=libc++ -fno-exceptions hello.cpp -o hello-cxx.wasm
```

The SDK-relative include symlink preserves Clang's normal sysroot lookup.
For `eh`, add the entry's `cxxflags` and `ldflags`, including
`-fwasm-exceptions -mllvm -wasm-use-legacy-eh=false` and `-lunwind`.
For memory64, select the `wasm64-wasip1` entry and its matching sysroot;
changing only the target flag on a wasm32 closure is invalid.

Uwvm execution must also use the entry's `runtime_flags`. In particular,
memory64 output uses both memory64 and table64, so it requires
`--wasm-feature-enable-memory64 --wasm-feature-enable-table64`. The acceptance
fixture writes a buffer above 4 GiB through `fd_write_wasm64`, as well as
checking ordinary 64-bit C and C++ programs. This qualifies the stated fixture
scope; it does not constitute a full functional audit of every libc syscall.

Before delivery, copy the generated versioned library, header, and resource
folders back to the local SDK. Preserve relative symlinks. The validation
report records LLVM object architecture, linked memory flags, import
signatures, fixture hashes, runtime output, and explicit gaps. Revalidate
after relocating the entire SDK to catch absolute-path dependencies.

## Host compiler cache package

`package_llvm23_host.py` creates a gzip tar archive containing the original
official Linux x86_64 compiler, linker, archive/inspection tools, resource
headers, license, and provenance. Its paired JSON receipt supplies the archive
SHA-256, root directory, relative executable paths, and native runtime
requirements for the unified Xmake bootstrap. Keep this cache package outside
the public SDK until review and publication policy permit its use.

The Linux package requires `libc.so.6`, `libm.so.6`, `libgcc_s.so.1`,
`libstdc++.so.6`, `libz.so.1`, and the ELF loader. Its minimum required symbol
versions are GLIBC 2.34, GLIBCXX 3.4.30, and CXXABI 1.3.13. These OS libraries
are not bundled. The bootstrap must provide or verify them; having Xmake alone
does not prove they are present. Other host operating systems and architectures
need their corresponding pinned compiler artifact.

The separately staged `llvm-23.1.4-linux-x86_64-closure` directory removes these
host-library prerequisites for the Linux x86_64 consumer. It retains original
release executables under `original/bin`, the matching Debian runtime libraries
and ELF loader under `lib/host-runtime`, and resource headers under
`lib/clang/23/include`. The `share/uwvm/llvm23-host-closure.json` inventory pins
every retained file, source artifact, runtime package version, and license.
Its ordinary `bin/clang`, `bin/clang++`, `bin/wasm-ld`, and archive-tool entries
use a native static launcher. This launcher uses Linux system calls directly,
has no C library or ELF interpreter dependency, derives the install root from
`/proc/self/exe`, and preserves the original argument vector. It requires a
mounted `/proc`; it does not invoke a shell, Python, tar, or a download utility.

Prepare that directory on Linux with `prepare_llvm23_host_closure.py --sdk SDK
--toolchain LLVM23 --output NEW_DIRECTORY`. The launcher source is
`src/wasm/host/llvm23_host_launcher.c`; its complete LLVM 23 build command and
`readelf` evidence are retained in the closure manifest. Runtime package
copyright texts are retained alongside the LLVM license. Corresponding source
caches remain outside the SDK.

When invoking Clang through this closure, always supply the target entry's SDK
resource directory and `-fintegrated-cc1`. For links, use
`-fuse-ld=ABSOLUTE_CLOSURE_PATH/bin/wasm-ld`. LLVM 23's WebAssembly driver does
not honor `--ld-path`; its unused-argument warning is not a valid linker
selection. The explicit `-fuse-ld` path ensures Clang's child linker also uses
the native launcher and bundled loader. Full acceptance with a clean host-tool
PATH and empty `LD_LIBRARY_PATH` is recorded in
`llvm23-native-host-validation.json`. Root-level Xmake cache packaging and
installation consume this raw directory after review.

Upstream target policy: [WASI SDK limitations](https://github.com/WebAssembly/wasi-sdk#notable-limitations).

Set `UWVM_ROS_RUNTIME` to the matching installed VM before verification.
