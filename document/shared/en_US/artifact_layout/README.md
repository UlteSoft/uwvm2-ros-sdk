# Xmake artifacts and private compiler state

The version 0.2.1 layout is a source candidate. Linux builds and tests have not
qualified it. See `share/shared/artifact-layout/v0.2.1/manifest.json` for exact
source identities and qualification state. The earlier 0.1.0 manifest retains
its historical candidate source identities.

The selected Xmake build directory contains separate deployment and compiler
trees. Common defaults place binary artifacts in `artifacts/`, shared modules
and library consumers in `artifacts/targets/<hex-full-target-name>/`, and
static link archives in `.archives/<hex-full-target-name>/`. Xmake selects the
build directory; an explicit `set_targetdir` or filename remains authoritative.

Compiler objects, temporary files and generated source use the real target
object directory, which includes Xmake's target namespace, platform,
architecture and mode. `artifact_contract.workspace(target, category)` locates
common compiler state. Deployment records use
`<target:objectdir()>/ros-artifacts/<hex-full-target-name>.json`; callers can
resolve this path through `artifact_contract.metadatafile(target)`.

Deployment directories contain only declared final artifacts. An explicit
object or dependency directory nested in any deployment directory fails with a
diagnostic. Select disjoint directories when customizing these paths. Missing
write access remains a build failure; no source permission change, host include
fallback or temporary-directory fallback is applied. A read-only installed SDK
requires writable configuration, build and cache locations.

Records retain the version-one schema, exact target/kind/triple, full artifact
hash, actual build command, shared preload identities and manual-runtime-policy
statement. Their location supplies no permission or runtime admission. Shared
libraries remain independent Wasm modules; static archives remain link inputs.

Only common adapters listed in the manifest are changed. Vendor and
language-owned adapters may still choose source-relative workspaces. Their
read-only/default/custom directory cases remain unqualified until their owners
correct and execute those paths. No component build qualifies simulation.

The main scheduler sets a private output root after selecting Xmake's builddir.
Common layout validation rejects artifacts or compiler state outside that root.
It does not relocate an explicit incompatible path silently. Standalone public
examples preserve their explicit paths and need writable selected locations.

Common component and simulation tests keep fresh evidence under the target
object tree. The main scheduler selects a separate per-invocation
`UWVM_ROS_TEST_EVIDENCE_ROOT` and retains the resulting original suite files.
Evidence and deployment artifacts remain distinct. Missing runtime admission
still produces non-success with all mandatory cases visible.
