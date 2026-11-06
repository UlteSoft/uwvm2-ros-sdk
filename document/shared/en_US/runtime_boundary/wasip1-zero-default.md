# Explicit WASIp1 test and run contracts

Every uwvm2-ros module starts without WASIp1, ROS1 or ROS2 host authority.
Namespace enablement, API exposure, operation/resource grants and optional
quotas are separate decisions.

The current schema is `uwvm-sdk-wasip1-policy-v3`. Each module must provide
`enabled`, an exact `interfaces` map, and `grants`:

~~~json
{
  "format": "uwvm-sdk-wasip1-policy-v3",
  "modules": {
    "main": {
      "enabled": true,
      "interfaces": {
        "fd_close": "allow",
        "fd_fdstat_get": "allow",
        "fd_seek": "allow",
        "fd_write": "allow",
        "proc_exit": "allow"
      },
      "grants": ["stdout.write", "stdio.metadata", "proc-exit"]
    }
  }
}
~~~

This is the interface contract for `example/language/c/public_command_closure`.
Each function defaults to `hidden`: it is unavailable for import validation.
`deny` exposes the ABI but rejects calls. `allow` exposes and admits the call,
which still needs its existing operation/resource rights. Memory32 and memory64
function names are separate keys. Unknown APIs, wildcards, cross-family keys and
old schema versions are rejected.

`xmake test` explicitly enables the base WASIp1 namespace for each loaded module.
Its final test launcher reads each built Wasm file and emits `allow` only for
that module's actual imported APIs in already enabled namespaces. Explicit
`hidden`, `deny` and `allow` entries take precedence. It never derives stdio,
filesystem, clock, random, network or ROS capability grants from imports.
A missing test policy therefore means base linkage with zero operation grants.
Preloads have independent policies; an importing caller's rights are not copied.
Explicitly disabled WASI namespaces are rejected by the SDK test helper; VM
validation tests cover the absent-namespace case.

Production `xmake run` never performs this test-only import authorization. Its
exact interface maps must be reviewed with the operation/resource contract.
A changed binary with new imports requires a corresponding reviewed deployment
change. The shared inventory is `tools/shared/host-interfaces.json`.

Native ROS deployments use `uwvm-native-ros-run-v4` and require per-module
`wasi_interfaces` and `ros_interfaces` maps, alongside `wasi_enabled`,
`ros_enabled`, `wasi_grants` and ROS `grants`. Unitree deployments use
`uwvm-unitree-run-v3` and the same maps. WASI keys are function names; ROS keys
are `namespace.function`. Enablement alone exposes no API. A module with zero
native ROS grants does not start a gateway. Old versions and the removed
`imports`, `wasi_imports` and `ros_imports` fields have no compatibility fallback.

Denied calls emit `[warning]` by default; hidden imports fail with `[error]` and
the exact enabling command. Limits are unlimited unless configured. Quota
rejection/wait warnings default off. Select them with `--enable-warning`,
suppress them with `--disable-warning`, or promote them using
`--warning-as-error`:

- `all_host_calls` selects denial and quota events.
- `all_host_denied` and `all_host_limited` select one event class.
- Append `_wasip1`, `_ros1` or `_ros2` to select a family.
- `host_call_FAMILY.API`, `host_denied_FAMILY.API` and
  `host_limited_FAMILY.API` select an exact API; ROS API names include namespace.

The last matching selector wins. For example,
`--enable-warning host_limited_wasip1.random_get` enables random quota warnings,
while `--disable-warning all_host_denied_ros2` suppresses ROS2 denial warnings.
Quota actions remain rejection or synchronous waiting; diagnostics do not add
asynchronous behavior, quotas, permissions or an execution fallback.

Test runtime options are passed through the shared Python/Lua
`wasi_policy.test_arguments` helper. Put WASI operation grants, limits and exit
actions in the structured policy; raw WASIp1 binding switches in test arguments
are rejected to avoid duplicate, shared or conflicting authority. Graph options
`--wasm-set-main-module-name`/`-Wname` and
`--wasm-preload-library`/`-Wpre` retain their exact declared module identities.

Production `xmake run` continues to honor the exact configured policy. A missing
production policy adds no WASI namespace or operations. Raw production options
remain explicit; do not declare a binding in both raw options and structured
policy. No launcher retries a failure with larger operation permissions.

The installed VM identity checks, native unwind requirements, and official ROS
simulation admission remain enforced. A finite pure-WASI permission test is not
an official robot or simulator qualification. Test evidence records the complete
argv so operators can inspect each enabled namespace and granted operation.

Clock time queries (`monotonic-clock`, for example), resolution queries
(`monotonic-resolution`), and timer subscriptions (`monotonic-timer`) are
independent grants. Each requires its namespace to be enabled. Precision overrides use the VM's explicit `--wasip1-single-limit` arguments.
The structured resource-limit schema below never adds an implicit quota.

The shared test actor receives VM output through bounded pipes and writes its
own log files. Guests do not receive the log-file descriptors. The VM also supports explicitly granted terminal, ordinary-file and device stdio. Native synchronous operations retain their in-flight lease until the kernel call completes; a failed device write returns its WASI errno. The shared test supervisor uses owned pipes to collect bounded evidence.

The custom library and ROS test supervisors use the same bounded pipe receiver.
Guest stdin pipes are opened nonblocking by the test launcher; the VM preserves inherited descriptor flags. Blocking input selected by a different launcher performs a synchronous native read. Default authorized proc_exit terminates the process; explicit native-wait retention waits for the admitted operation to finish. A launch gate keeps
its own blocking input until it consumes the supervisor release byte, then
sets the guest-facing descriptor nonblocking immediately before exec.

For `example/platform/wasi/c/sum_arguments`, add only `args` to the reviewed
grants. The test launcher explicitly exposes its actual argument imports; production deployments must list those interfaces. Without that grant, the actual SDK command exits with a
denial; granting output alone never grants its application arguments.

Native ROS/Unitree workers, Fourier language scenarios and the Agilex standalone
simulation also keep guest output on bounded pipes. PAL/Kinova Lua tests use
`tools/xmake/pipe_run.lua`, whose Python receiver owns the output files and
finite deadline. Native gateways, simulators and compiler processes retain
their existing output handling: they are not the guest WASI provider.

## Finite local functional tests

Pure WASI components can explicitly select
`uwvm-sdk-local-finite-wasi-test-v1` through
`UWVM_ROS_RUNTIME_TEST_DEPLOYMENT`. This is a separate local functional test
profile. Its results never qualify official robot simulations, production
admission, or an independent guardian. All existing official deployment
formats retain their VM-owned admission gate.

A template is `example/language/c/public_command_closure/local-test.example.json`.
Replace the executable with its absolute canonical path, set its actual SHA-256,
and describe the source identity. Enter a Linux cgroup with exactly 64 GiB
`memory.max` and zero `memory.swap.max`, then select that JSON and run the
example's normal `xmake test`. The source manifest and pinned VM are still
verified. The local supervisor records its real cgroup and verified executable
descriptor, uses bounded output pipes, applies a finite deadline, and owns child
cleanup. The WASI-only profile rejects ROS/other host imports and exposes no raw
VM argument field. The explicit local ROS profile selects ROS1 or ROS2 and
names each authorized module. Its import inspection allows only the actual registered function imports for that version (including ROS2 portable interfaces), within explicitly enabled module bindings. The VM independently checks the namespace, exact interface and operation/resource grants. This grants no ROS resources or
portable deployment: an example's denied open remains a permission test, not
successful robot operation or simulator qualification.
The reviewed `wasi_policy` is the only way this profile grants WASI operations;
base namespace linkage is always present.

For `sum_arguments`, add `args` to `grants`. No policy or an empty policy enables
base linkage with zero operation grants. Failed tests
never retry with broader permissions. A missing operation grant is recorded
as a real guest failure, while an invalid executable, source identity, resource
boundary, or deployment format prevents guest startup.

## Explicit limit actions

Operation grants and resource limits are separate. The SDK must not add a
quota merely because an operation is granted. Any limit and its over-limit
action must be explicit in the selected deployment.

Each module may add a `limits` object to `wasi_policy`; native ROS and Unitree
use the same object as `wasi_limits`. For example, this optional policy limits
stdout calls per accounting window and selects synchronous waiting:

```json
{
  "stdout.window-calls": {
    "value": "20",
    "on_exhausted": "wait",
    "on_proc_exit": "wait"
  }
}
```

Each key is `<budget>.<field>`. Budgets are `random`, `stdin`, `stdout`, `stderr`,
`realtime`, `monotonic`, `process`, `thread`, `poll`, `signal`, `yield`, and
`filesystem`. Fields are `request-bytes`, `window-bytes`, `window-calls`,
`total-bytes`, `total-calls`, and `concurrent`. Both `value` and `on_exhausted`
are required. Values are canonical unsigned 64-bit decimal **strings**, or
`"unlimited"`; JSON numbers are rejected to avoid rounding. Omitted limits and
unlimited values emit no quota or action switches.

`on_exhausted` is `reject` or `wait`. Waiting is supported only for
`window-bytes`, `window-calls`, and `concurrent`; per-request and cumulative
limits cannot replenish by waiting. A request larger than an entire finite
window cannot wait indefinitely. Waiting preserves the synchronous WASIp1 ABI:
the same call returns after completion or failure. There is no asynchronous
completion mode or implicit background retry.

Optional `on_proc_exit` is `cancel` (the VM default) or `wait`. `wait` is valid
only for the three waitable fields above. It controls that limit's existing
wait when an authorized module/thread requests process exit. It grants no exit
permission and gives other guests no authority to alter the limit. The SDK
emits `--wasip1-single-limit-exit-action` only for an explicit finite limit with
this field present. It never sets a global exit mode.

Native pipe/socket/timer waiting is independent from quota exhaustion. A
module can add `wait_exit_actions`, for example
`{"stdout.native-wait": "wait", "stdin.native-wait": "cancel"}`. Native ROS
and Unitree use `wasi_wait_exit_actions`. Only the 12 budget names above with
the exact `.native-wait` suffix are valid; values are `cancel` or `wait`.
These choices emit only `--wasip1-single-limit-exit-action`, without inventing
a numeric quota. Missing choices use the VM's `cancel` default.

Finite limits emit one `--wasip1-single-limit` and one
`--wasip1-single-limit-action` for the exact module and field. Existing examples
do not receive new limits automatically.

The finite test supervisor's deadline and log-byte bound protect the test run.
They are recorded separately and do not grant guest authority or imply a guest
WASI quota. Tests must distinguish a returned errno, a guest exit or trap, a
surviving VM management loop, and an outer test supervisor that records failure.

## Explicit directory and environment objects

A module may provide preopens, filesystem_rights, and environment. None
are inferred from the language or imports. For example, this module fragment
exposes one scratch directory and only the named environment variable:

    {
      "enabled": true,
      "grants": ["environ"],
      "preopens": [{"guest": "/work", "host": "/absolute/operator-selected/scratch"}],
      "filesystem_rights": {"base": "271360", "inheriting": "2097254"},
      "environment": {"TMPDIR": "/work"}
    }

These masks permit path open/create/stat and inheritable file read/write,
seek/tell/stat. They do not permit directory creation or removal. Select the
exact WASIp1 bit masks needed by an application; this example is not an R
runtime startup policy. Rights are canonical uint64 decimal strings. A mount
without masks has zero operation rights; a mask without a mount creates no
host object. The VM independently checks all paths and denies escape through
symlinks. The serializer adds no path-length cap.

The environment map contains only operator-selected strings. Reading those
strings still requires the environ grant; other host environment variables are
not inherited. Some real libc startup paths exit before main if that permission
is omitted. Disabled namespaces cannot configure grants, preopens, rights or
environment objects. These objects remain isolated by the exact module names
in modules. The thread-spawn operation grant does not configure or enable
the separate WASI threads runtime.

A preopen may additionally supply a rights map, for example:

    {
      "guest": "/readonly",
      "host": "/absolute/operator-selected/readonly",
      "rights": {"base": "270336", "inheriting": "2097190"}
    }

This selects the exact initial masks for that root, independently of other
preopens and the module's filesystem_rights template. An omitted field inside
an explicit rights map is zero. If the map is absent, the module template
applies, still zero by default. Python and Xmake Lua serializers emit the same
--wasip1-single-mount-dir-rights command after declaring that root; neither
adds an operation grant or quota. Rights are uint64 decimal strings, never
unlimited. Duplicate/overlapping normalized roots are checked by the VM.
