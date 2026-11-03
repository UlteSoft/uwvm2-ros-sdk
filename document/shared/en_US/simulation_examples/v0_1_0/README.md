# Official simulation example interface 1

The shared entry is tools/shared/xmake/simulation_example.lua, rule
uwvm.simulation-example.v1. It attaches the standard Xmake on_test hook to the
actual application target and registers the official-scenarios aggregate.
The Python driver API is version 1. Platform owners keep their scene drivers,
provider configuration and assertions in their existing example directories.

    includes(path.join(root, "tools/shared/xmake/simulation_example.lua"))
    target("platform-official-profile")
        -- Declare a real application using the existing SDK language rules.
        uwvm_simulation_example({
            api_version = 1,
            sdk_root = root,
            manifest = "simulation.json",
            driver = "simulation_driver.py",
            timeout_seconds = 300
        })
    target_end()

Run xmake and xmake test from that example directory. The aggregate executes
every scenario in the selected, nonempty manifest sequentially. Unsupported or
unmatched selectors fail instead of accepting Xmake's empty-test result.
Missing mandatory dependencies are BLOCKED and return nonzero. A prerequisite
failure is never registered as an expected successful failure.

## Manifest and driver

Use format uwvm-sdk-simulation-example-v1, one exact official profile, a
frozen_wasm object with sdk_path and whole sha256, declared python_dependencies,
and a nonempty scenarios array. Every scenario has a unique id, kind,
expected_vm_exit and bounded deadline_seconds.

Retain the official repository/commit, model/mode, distribution, ABI, licensing
and remaining mandatory matrix. A finite mock profile does not establish
physics or sensor coverage. The example-relative Python driver exports
API_VERSION = 1 and run_case(context, scenario). It launches or binds the
declared official provider, uses the real permissioned runtime, and obtains
independent native results and fresh state. Returning True, printing success
or reading a historical receipt does not complete a case.

Context.spawn and Context.sample collect actual PID, birth, executable bytes,
command line, cgroup and limits. ROS launch descendants are observed separately.
Context.run_vm appends the sole application --run operand and checks original
native generated-chain unwind and no-fallback evidence. It adds no grant or
unwind selector. The driver independently correlates native goal UUID/result/
state with the live permissioned host observation stream. Sensor drivers must
additionally prove actual simulator bytes reached executing Wasm; a precomputed
digest or echo is not that path.

## Installed execution contracts

The VM owner supplies public execution admission and the installed portable
runtime/provider deployment. This SDK component consumes those contracts. It
does not create admission or implement a VM host. Missing public producers are
explicit blockers.

UWVM_ROS_SIMULATION_ADMISSION selects a current
uwvm-sdk-simulation-admission-v1 JSON descriptor: boot_id,
shared_ancestor_view, shared_ancestor_inode, host_proc_view and canonical_lease
(owner_pid, owner_birth, owner_fd, visible_path, device, inode),
shared_ancestor_host_path, and guardian (pid, birth, executable_sha256, lease_fd).
The shared view must be an actual read-only cgroup2 mount. Each actual actor's
local cgroup device/inode must occur beneath that exact shared view; the bounded
VFS walk and inode rechecks prove actual ancestry. Linux cgroup namespaces can
render a genuine ancestor mount root as /.., and host-proc cgroup text remains
relative to the reader, so host path strings are not treated as ancestry proof.
The host-proc NSpid/birth/PID-namespace mapping additionally binds actual actor
identity. Equal per-process limits alone are insufficient. The actual
owner and guardian FDs must refer to the canonical pinned device/inode. Actual actors and their shared ancestor
must have memory.max=68719476736 and memory.swap.max=0. The actual kernel WRITE
FLOCK owner remains alive through physical retirement. The VM-owned producer
retains its independent guardian; SDK code acquires no second lock.

UWVM_ROS_SIMULATION_DEPLOYMENT selects
uwvm-sdk-simulation-deployment-v1: exact profile ID; runtime with executable,
whole sha256, source_identity and paired_providers (path, sha256); complete
official_provider_files; and exact per-scenario runtime_arguments. Arguments
may use {session_dir}, {adapter}, {policy} and {run_id}. They use native AOT,
preserve checked unwind/cache/origin policy and contain no application --run.
Explicit permissions are separate from adapter metadata.

These are supported-environment inputs, not another chat's paths, a private
source overlay or old qualification output. A clean checkout discovers the
example and reports missing installed public VM/provider contracts. Build,
test and simulation acceptance are separate; this document is not qualification.

## Runtime command association contract

The normative consumer contract is share/shared/simulation_examples/v0.1.0/contracts.json.
The installed pinned VM must declare and actually produce
uwvm-sdk-simulation-command-binding-v1 from its own process stdout, binding
run_id, producing PID/time, executing module SHA/instance, permission_session,
portable imported call sequence, exact adapter/policy SHA, decision, guest
command SHA and the native accepted goal UUID. The producer's name is
uwvm2-ros/runtime/portable-host. Native result/status/feedback and post-result
state are independently observed by platform code and must match that UUID.

This event is a required production-side VM capability, currently unqualified.
A native observer UUID must never be copied into a vm_goal_uuid field or treated
as evidence of the module/permission/command association. Absence is precisely
BLOCKED_VM_COMMAND_SESSION_NATIVE_UUID_PRODUCER_V1 or
BLOCKED_VM_COMMAND_SESSION_NATIVE_UUID_EVENT_V1. The SDK never synthesizes it.
The actual existing module permission and command session semantics must be
preserved by the VM implementation. This schema adds no permission or VM CLI.

The separate actual inbound sensor receipt producer is still missing; API1
reports BLOCKED_SENSOR_RUNTIME_PRODUCER_CONTRACT_UNAVAILABLE_V1. Sensor source,
module-memory bytes, calibration/native stamp and executing-Wasm digest remain
mandatory. It cannot reuse a command UUID or a host-computed result.

Grant request format uwvm-sdk-simulation-grant-request-v1 declares exact frozen
module/alias/import namespace, capability, resources, explicit allow/deny
and rights. It is an external request, not an authority token. An installed
VM-owned trusted policy/deployment producer must bind it to the actual permission
owner. Missing public grant import/binding is BLOCKED, without guessed CLI flags.

## Retention, selection and physical retirement

Each standard xmake test invocation receives an unused SDK generated-state output
directory under .uwvm-ros/simulation-tests/v1/<target>. It retains the exact command argv/cwd/PWD/target/exit, stdout/stderr,
unique suite run directory, input and Wasm SHA, scenario assertions and actual
actor records, including failure or BLOCKED results. latest.json is only an
index. Existing invocation directories are never deleted or overwritten.
Public manifests pin all executable scene/driver/config inputs; verification
precedes scene launch. Normal generated build output is not an input dependency.

Drivers may call Context.block(reason) for a missing required provider. They
complete a joint case using Context.complete_joint_case; generic single-action
platforms use Context.complete_operation_case with named independent assertions.
These methods themselves read the actual VM binding event; driver-authored
copies of UUID fields are ignored. Returning from run_case without completion
fails the suite. Cleanup sends TERM/KILL only to owned recorded births/groups,
then waits a bounded interval until all recorded same-birth PIDs are absent.
Sending SIGKILL alone cannot pass. The VM admission's independent guardian
provides ultimate namespace/leaf retirement. Fast exits without actual matching
exec records remain BLOCKED; supported VM actor recording is required to qualify.

The example must be the original invocation directory returned by Xmake's
os.workingdir(), with absolute PWD matching it. Xmake may temporarily enter its
ancestor SDK project directory while loading targets; os.curdir() is not the
original invocation directory. The selected project must be the example itself
or that exact SDK root xmake.lua. Failure diagnostics include all actual guard
operands, and successful command.json records retain that invocation snapshot. The
qualification harness independently verifies the selected target file and
nonzero test count. Configuration of an SDK-root header-only target cannot
substitute for building the example application.

Simulation logs are kept outside the deployable binary target directory, whose existing undeclared-sidecar rejection remains enforced.

The common entry also defines the project's standard test task as a selection
validation facade: it verifies registered official targets, exact suite names
and the official-simulation group before invoking the installed Xmake native
actions/test/main.lua implementation. All build, on_test dispatch, test counts,
failure accounting and reporting remain the genuine Xmake facility. This early
guard is necessary because unmatched native filters return success without
building targets or invoking their callbacks. It adds no alternate test runner.

The SDK-root header-only fallback also loads this component's exact-selection
test action. With no official example selected, xmake test fails rather than
reporting zero tests as success. Public nested examples still use ordinary
xmake and xmake test; no -P workflow is required. Qualifiers must include the
actual SDK root xmake.lua, repository.lua and unmodified language-entry dispatch
when validating ancestor selection. A reduced projection without that root
entry does not qualify the normal installed SDK invocation path.

The shared test action enters os.projectdir() before querying Xmake targets and
calling the native test action. It preserves os.workingdir() and original PWD;
this internal project-directory transition is not a caller-directory change.
Public callback records include actual binary target kind and all original,
mutable, project and script directory operands. Ordinary commands remain xmake
and xmake test; users do not need a private -P workflow.

## Declaration before native configuration

Inside the real target, call uwvm_simulation_example(cfg), with the same API1
configuration shown above. It attaches the rule and captures the current DSL
target name without instantiating targets. Direct add_rules was an unqualified
preview and is replaced by this declaration. The shared test action validates
exact selections from this table and delegates native Xmake test main, which
alone configures, loads targets, builds, dispatches on_test and reports results
in the normal order. No target-cache reset or fake configuration is used.

## Required full Wasm execution and quarantined implementations

All ROS application queries, callbacks, feedback and sensor processing execute
inside Wasm. SDK-written host rclpy/rospy/JVM/native ROS clients cannot perform
those operations on the application's behalf. The harness may manage lifecycle
and inspect bounded runtime evidence. Official simulator/controller providers
and the permissioned VM host retain their distinct external roles.

A profile with a physically removed required implementation declares
required_implementation = {status: "BLOCKED", diagnostic: "BLOCKED_...",
requirements: [...]} in its manifest and omits driver from the target declaration.
The shared native test still selects every mandatory scenario, hashes the real
built Wasm and public inputs, retains fresh command/results, then returns
BLOCKED/nonzero before starting any scene or client. It never resolves historical
or private directories. This is an incomplete profile, not a compatibility layer.
A non-blocked profile still requires its actual public driver.

The present common completion verifier has no qualified VM-owned reverse ROS
query/callback/feedback verifier. After other installed prerequisites it therefore
fails with BLOCKED_FULL_WASM_GUEST_FEEDBACK_VERIFIER_NOT_IMPLEMENTED_V1. Installing
ROS, setting a manifest flag or supplying native observer results cannot turn it
green. API1 registration/selection and blocked-path evidence do not qualify a
migration or simulation. Restore execution only with real Wasm implementation,
public Linux build/test, denied operations without native effects and the exact
official simulation and reverse feedback/audit evidence.


The exact current VM runtime evidence is versioned under
share/platform/ros/runtime-evidence/v1.0.0/. It establishes a finite private
command-binding/UUID and base-ABI result. A production live admission and
installed-runtime deployment have not been emitted, and the generic reverse
guest callback/sensor receipt remains unimplemented. Historical evidence is
never a live permission. Public required scenarios keep their blockers.

Runtime argument templates now support {adapter_sha256} and {policy_sha256}
from the exact already verified input files. Authorized invocation requires the
four values after --portable-robot: adapter path, adapter whole SHA256, policy
path and policy whole SHA256. --portable-robot-audit-run must carry this fresh
run ID. A denied observation may use --portable-robot-audit-inputs with the exact
paths; that option creates no authority. Missing or wrong pins fail before an
actor starts. Full guest-feedback qualification remains mandatory.
