# GNU R 4.5.1 standalone port

The maintained upstream source is in src/language/r/upstream.
file-manifest.json pins its 5,081 files, including the 51 original Fortran
sources. source-lock.json records the archive identity.

tools/language/r/build_r.py builds separate wasm32 and wasm64 runtimes with
explicit existing LLVM 23, Flang, WASI dependency and timezone inputs. It does
not download a toolchain or execute a host R interpreter. The producer requires
a fresh output directory and records commands and input hashes. Execution
qualification is separate from building and installing the artifacts.

The public provider requires set_wasm_exceptions("eh"). Runtime artifacts
live at lib/language/r/<backend>/R.wasm for wasm32 and
lib/language/r/<backend>/wasm64/R.wasm for wasm64, with exact runtime metadata.
Both widths have genuine standalone WASI, ROS1 and ROS2 artifacts installed.
The existing source-slot packer embeds the program and selected ordered R
modules into that runtime. R guest execution goes through uwvm2-ros.

command.c enters original GNU R via Rf_initEmbeddedR, R_ParseVector and
Rf_eval. LLVM native WebAssembly EH/SjLj handles nonlocal control; there is
no Asyncify transformation or host-language fallback. native.c statically
registers the six-argument raw ROS bridge, whose handles and returned lengths
are eight raw bytes. The common raw ABI header's directory retains its
historical name; using its declarations does not use the Asyncify driver.

The runtime embeds original base-package sources and read-only TZif data.
Recommended packages, dynamic native modules and source-module library
artifacts are not qualified. Unsupported subprocess operations return errors;
they do not execute host commands. Temporary and application files use
explicit WASI preopens and rights. ROS namespace enablement grants no resource
alias or WASI filesystem authority.

stdio.c provides .Call("uwvm_wasi_stdio", "stdin") and the corresponding
"stdout" connection. It preserves binary data and propagates WASI errors.
The descriptor is borrowed, so closing the R connection does not close the
module's standard stream. Standard-stream access remains subject to WASI
permissions and any explicit limits.

Finite tests cover real startup, standard streams, conditions, original
Fortran numerical computation, timezone data and filesystem boundaries.
The public xmake guest, native ROS and official simulation matrix remains in
progress. Memory64 _wasm64 WASI imports are SDK extensions: Wasmtime Core
validation alone does not establish Preview 1 host-ABI compatibility.
Build receipts and finite test results do not certify the complete R package
ecosystem, all ROS operations, all hosts, or a complete source/dependency closure.
