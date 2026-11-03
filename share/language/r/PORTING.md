# GNU R 4.5.1 standalone port

The complete maintained upstream source is in `src/language/r/upstream`.
`file-manifest.json` pins all 5,081 files; the 51 original Fortran files retain
their original bytes. `source-lock.json` records the upstream archive identity.

`src/language/r/command.c` enters GNU R through `Rf_initEmbeddedR`,
`R_ParseVector` and `Rf_eval`. `native.c` registers the six-argument static
`.Call` bridge. Handles and returned lengths use eight raw bytes; R numeric
values do not carry opaque handles. `native.R` supplies the sole R wrapper for
that registered interface. The platform codecs remain ordinary R source.

The public version-one language adapter uses the existing source-slot producer
and requires the genuine `lib/language/r/<backend>/R.wasm` plus its exact
runtime metadata. No R runtime is installed or qualified yet.

The remaining build requires the shared Fortran frontend and same-target
runtime, the complete original numerical closure, original R base-package
startup data, and the shared nonlocal-control driver. The shared Fortran API is
defined by `tools/xmake/SOURCE_LANGUAGE_ADAPTER.md`; its implementation belongs
to that API's owner. The original numerical sources stay in this port.

Build, startup, conditions, garbage collection, numerical results, raw ABI,
public `xmake`/`xmake test`, and official ROS simulation all require actual
Linux qualification. The source restoration establishes none of those results.
