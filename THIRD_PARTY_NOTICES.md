# Third-party and retained license notices

The MIT license at the repository root covers the SDK project except where a
file or bundled component specifies different terms. Repository separation
does not remove upstream copyright notices or relicense third-party software.

- Platform catalogs retain the original project licenses beneath
  `share/platform/*/licenses` and `share/platform/*/catalogs`.
- LLVM and WASI license texts are retained in `share/wasm/licenses`.
- Language runtimes retain their notices under `lib/language` and
  `src/language`; precompiled host bundles carry their upstream notices in the
  corresponding pinned bundle manifest and payload.
- Source files with existing upstream license notices keep those notices and
  the applicable license texts supplied with their components.

Consult the applicable component's source, license and provenance metadata when
redistributing it or producing a linked application. Git LFS changes only the
storage mechanism; it does not change the component's license.
