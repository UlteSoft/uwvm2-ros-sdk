# ubtech / py

The source distribution preserves the complete original vendor catalogs, including dependencies, service request/response fields and action goal/result/feedback roles. The profile catalog API manuals enumerate every type and field. File presence is separate from compiler, guest and native ROS qualification; consult the private delivery coverage and actual receipts for the proposed bytes.

Install Xmake and a verified SDK distribution. Use `UWVM_ROS_SDK_ROOT` to select its root. Every target declares `set_language("py")`, `set_ros_platform("ubtech")`, `set_values("ros.sdk.profile", "PROFILE")`, the exact `set_ros1_version("noetic")` or `set_ros2_version("jazzy")`, `set_plat("wasm-wasip1")` and `set_arch("wasm32")`. ROS2 Humble source profiles are also selectable; Jazzy means the original declarations are independently built as a native fixture, never a claim that upstream shipped another package version. No build infers controller firmware, transport endpoints, model or permission grants.

Choose one of these exact source profiles: `ros2_main`. Do not mix generated classes from different releases in one namespace. Public imports start at `ubtech/py/`; SDK/module roots are global and examples contain no parent traversal. The `c_ffi_bridge` route is explicitly a C FFI boundary. Kotlin consumes genuine JVM types; F#/VB.NET may consume genuine CLR types, with their respective real AOT compilation. Objective-C requires an actual Objective-C runtime/compiler route. Missing language engines remain engineering work and cannot be replaced with C or a small parser.

CRuby uses the single 3.4.7 interpreter and PHP uses the single Zend 8.4.13 interpreter for every vendor. The source packager embeds the complete original module graph and entry in one `.wasm`; each language executes its own codecs. Runtime input files or source sidecars are not deployment artifacts. The current interpreter port is memory32, unshared WASI Preview1 with Asyncify; a memory64 request must produce and execute a genuine memory64 engine before being accepted. C/C++ have a separately selected LLVM 23 target profile. Preview2, threads and EH are explicit target dimensions.

Record constructors retain original names, widths, arrays, string bounds, constants and defaults. Encoders validate complete values before returning owning bytes. Decoders reject truncated/trailing framing, invalid UTF-8/NUL, noncanonical booleans, nonfinite scalar encodings and excess quotas. PHP 32-bit Zend integers use `Word` for uint32/int64/uint64; wide constants are exact decimal strings. Ruby uses full-width Integer. R uses base-R typed raw 64-bit words; its genuine standalone engine remains under implementation.

The observation API returns separate primary status, cleanup status, cleanup presence, response presence, required extent and full canonical hex. One explicit capability is closed once even when decoding raises. A service is attempted once. Only an idle subscription is polled again, at most 250 times with real 20 ms pauses. This is a poll budget, not a hard real-time deadline. The caller owns returned values. Original controller result/status fields remain in the full record and must be checked by the caller.

`xmake` builds; `xmake run` uses the already installed uwvm2-ros and a manually configured native deployment (`UWVM_ROS_RUN_CONFIG` or `--ros-run-config`). The launcher must preserve existing grants, quotas and denied-permission results. It must not auto-grant capability rights. No physical robot operation is authorized by a compilation or fixture test. Repeated launches must use the same deployed Wasm bytes. UBTECH inspect_pose validates a received full quaternion; it does not invent another upstream message or invoke a controller.

Delivered source entry paths:

- `include/platform/ubtech/py/__init__.py`
- `include/platform/ubtech/py/ros2/ubtech-ros2-main-complete/bounded_records.py`
- `include/platform/ubtech/py/ros2/main/__init__.py`
- `include/platform/ubtech/py/ros2/main/records.py`

Standalone examples:

- `example/platform/ubtech/py/grasp_candidate`: own xmake.lua and genuine language source; requires its exact alias.
- `example/platform/ubtech/py/ik_request`: own xmake.lua and genuine language source; requires its exact alias.
- `example/platform/ubtech/py/inspect_pose`: own xmake.lua and genuine language source; requires its exact alias.

## Explicit native deployment

Select the operator's file with `set_ros_run_config("deployment.json")`.
The common `tools/platform/ros/run.py` consumes `uwvm-native-ros-run-v2`;
backend and distribution must match the target exactly. Under
`examples.<scenario>`, supply `arguments`, `main_module`, `preloads` and
`modules` explicitly. `arguments` is the original UTF-8 argument array, including
the alias and, when required by the example, the caller-maintained sequence.
It is never synthesized from a platform or scenario name.

Every loaded module has independent `ros_enabled`, `grants` and `wasi_grants`.
A grant retains the exact alias, operation, resource, native type, native identity
and limits selected by the deployment owner. Disabled ROS admits no grants.
The common launcher creates only the declared gateway bindings; native peers,
matching vendor registries and physical-controller preparation remain external
deployment inputs. A codec identity is not a substitute for a registered native
type identity. An idle wait needs the explicit monotonic-clock WASI permission.

Preloads require policies for their exact module names. The algorithm keeps
default WASI, including basic standard-stream rights, and receives no additional
resource or ROS grants. Only `ros_comm` may receive ROS authority; exported
delegation uses its explicit `call_boundary: "module-exports"` choice. Global
grants do not establish this separation. The common shared/static Xmake producer
remains a separate dependency; source or private Core experiments do not make
ordinary library targets accepted. Run preserves the submitted policy and does
not build or start a physical controller.
