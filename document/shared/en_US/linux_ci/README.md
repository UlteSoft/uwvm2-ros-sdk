# Linux public example CI

The SDK root has one aggregate entry: xmake examples. Main Xmake async.runjobs
schedules bounded child projects. Each child first receives a real Xmake config
action selecting its public project and a fresh private build directory. It then
receives xmake -P <public-project> -j1 and the separate xmake test -P
<public-project> -j1 command. The Python helper supervises one lifecycle; it does not
schedule parallel work or implement ROS business. Configuration/global caches,
temporary files and build state are isolated per project/invocation. Actual
application output uses the selected private build tree through the common
artifact contract. Explicit target directories retain their meaning; the root
scheduler rejects a target that leaves the isolated tree or overlaps private
compiler state. Such a required project remains a non-success row. Verified
shared toolchain preparation finishes sequentially before concurrent children;
private cache names prevent concurrent repair or extraction to the same path.

share/platform/examples/linux-ci-v1.json accounts for every public example
xmake.lua as a project or an exact include-only aggregator whose children are
separately indexed. Each project records source files, language and mode, build
and test status. Refresh the complete source catalog with xmake examples
--refresh-catalog after an intentional reviewed source change. A catalog drift
fails before execution. An incomplete/removed implementation remains BLOCKED,
not omitted from required coverage.

The Linux workflow has 32 deterministic shards and at most two hosted runners.
Each shard is scheduled by main Xmake, with at most two concurrent children and
one job inside each child Xmake. Official simulation profiles enter a serial
lane and require the actual public VM admission, provider and full-lifecycle
lease even on hosted CI. Hosted runner CPU, memory, swap and filesystem facts
are retained separately from manual SSH 64GiB/zero-swap admission evidence.
Manual execution consumes the same VM-owned public read-only admission contract;
missing or inaccessible identity/lease facts block before toolchain preparation.
No mode synthesizes a public admission or relaxes kernel checks.

The workflow builds fixed Xmake 2.9.8 source commit
13fc392386960040c3da1ddcbd104423b02fbe1b on Ubuntu 24.04 and hashes its complete
installed files before reuse within that workflow. GitHub actions are full-SHA
pinned, permissions are contents:read, credentials are not persisted, and there
are no secrets, privileged/self-hosted runners or pull_request_target execution.
Language compilers remain SDK build dependencies. A candidate VM ELF is not
accepted as a verified runtime release merely because it is downloadable.

Every fresh command retains cwd/PWD, argv, actual exit status, sampled process
identities/cgroups, source and Wasm SHA, stdout/stderr hashes and actual native
Xmake test count. Missing tools/runtime/provider, failed builds, zero or unproven
test counts, missing results and incomplete actor retirement are non-success.
The existing VM guardian remains necessary for the full manual namespace life
cycle; hosted-CI complete exec/retirement closure is still unqualified. Fast
unsampled processes cannot establish an identity claim.

The final job invokes xmake examples --merge=SHARD_DIRECTORY. It verifies the
same catalog SHA, complete shard and project coverage, deterministic assignments,
original configuration/result/log hashes, successful configuration, and both
successful nonempty build/test results. A job exception remains in its row while
independent jobs continue; missing/interrupted originals prevent acceptance.
Missing or failed shards cannot become a green aggregate. Exports whitelist raw
reports/logs and exclude compiler caches, SDK dependency payloads and temporary
build state. No old receipt becomes a new command result.

Current status: source candidate only. The independent initial workflow lookup
returned zero runs. The workflow has not been published or executed by SDK01;
public source presence, Xmake syntax and static API inspection do not prove a
CI pass or full Wasm/native/official simulation acceptance.

The explicit wasi-c-clock-v1 group contains the sum-argument component and the
unmodified upstream RCL 9.2.11 clock fragment. Run xmake examples
--group=wasi-c-clock-v1 --jobs=2 from the SDK root. Its eight required guest
cases and sampled overlap are a finite concurrency target, not full SDK or
framework simulation acceptance. Manual execution still requires the real
VM-owned public admission; no metadata receipt supplies that authority.

The separate required-simulations-v1.json retains known mandatory official
scenario rows and quarantine obligations, even when no runnable public target
remains. Inventory discovery is incomplete and stays required. Referenced
model/release/ABI matrices remain open. Doosan codec projects do not count as
official simulation. Aggregation emits NOT_RUN for every missing project or
required scenario, and verifies fresh structured case reports and bounded raw
files copied from this invocation. Native Xmake's one suite count is distinct
from the number of guest cases or completed official simulations.


The 8 MiB combined command-log watchdog is separate from the 2 GiB subject-file
extent bound. A stricter inherited file hard cap is preserved. Actual selected
limits and terminating signals are reported. Cold tool restoration records its
expected decompressed extent before writing, plus the original codec and OS
error and partial extent on a returned error. A file-cap failure is not retried
with weaker limits or hidden by a generic extraction failure. Decode diagnostic
JSON is retained in the preparation evidence and exported by the workflow.
These revised paths still need their own Linux validation.

The runtime component runner now consumes the same installed stopped gate and
actual after-exec receipt as the simulator lifecycle. Its hosted build budget
does not substitute a live VM-owned runtime boundary. Missing installed public
admission/deployment blocks its runtime cases, while every required case stays
listed. See ../runtime_boundary/README.md for the unqualified consumer draft.
The atomic guardian-self/host-direct bundle, denial-first ordering and exact
frozen-joint feedback verifier are source candidates requiring fresh Linux
proofs and public Xmake runs. No generic sensor/callback or full framework
acceptance follows from this integration source.
