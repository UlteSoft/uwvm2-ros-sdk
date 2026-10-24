# realman / ruby

This is a source candidate. No language/platform/backend is complete until its actual cold build, sole-Wasm deployment, x86_64 native ROS and QEMU AArch64 native ROS evidence matches these delivered bytes.

## Installation and build

Install the complete common SDK with its verified dependency manifests, then overlay this vendor's include/src/share/tools directories. Set `UWVM_ROS_SDK_ROOT` to that installation. Application compilation needs preinstalled Xmake and the verified SDK dependency acquisition only; native ROS and the runtime belong to deployment.

Run `xmake` inside one independent example directory. The intended deployable output is one application `.wasm`; caches, archives, generated compiler inputs and managed intermediate assemblies are build inputs. The central producer must package any real interpreter and all imported application modules into that Wasm.

## Configuration

Use `set_language("ruby")`, `set_ros_platform("realman")`, explicit `set_ros1_version` or `set_ros2_version`, `set_arch` and `set_plat`. Use `set_ros_config` with `profile`, its exact `catalog_version` source-lock SHA-256, `abi = "uwvm-ros-v1"` and `transport = "native-ros"`; every example contains the complete map. The optional `model` key accepts an exact selection from `provider.json` and must belong to that profile. Conflicting declarations, unknown keys and mismatched catalog/model selections are errors. `set_ros_scenario` chooses the exact profile/scenario entry. The provider's data is `share/platform/realman/provider.json`; the small adapter delegates production to common code.

The immutable catalog version is its `source_lock_sha256`, separate from controller firmware. A model selector must match the original model/profile metadata; no robot address or firmware is inferred. Transport is native ROS through the runtime/gateway, with original ROS1/ROS2 type semantics. Native distribution selection does not establish upstream compatibility until the complete installed type metadata matches the selected original source. Profiles named master/main/develop do not imply support for an arbitrary distribution.

For the retained C/C++ `state` facades, the selected Dobot/RealMan profile supplies its exact legacy profile define. Elephant/UFactory require an explicit `model` in `set_ros_config` from `provider.json`; only that exact selection supplies `UWVM_ELEPHANT_SELECTION` or `UWVM_XARM_SELECTION`. Complete record APIs need no model projection. Additional original workflows are documented in the locale's `LEGACY-FACADES.md`.

`wasm32` or `wasm64` with `wasm-wasip1` selects the exact pointer ABI. Preview, threads, EH and Wasm Core features must be explicit in the common target manifest. No missing frontend or memory64 route is coerced to wasm32. Source availability and target qualification are separate.

| Source profile | Backend | Messages | Services | Actions |
| --- | --- | ---: | ---: | ---: |
| `ros1_develop` | ROS1 | 100 | 0 | 0 |
| `ros1_main` | ROS1 | 104 | 0 | 0 |
| `ros2_foxy` | ROS2 | 80 | 0 | 0 |
| `ros2_humble` | ROS2 | 80 | 0 | 0 |
| `ros2_jazzy` | ROS2 | 80 | 0 | 0 |

## API and schemas

Require realman/ruby/PROFILE/records and the common roswasm Wire/transport modules. Complete classes live under Uwvm::Realman::Profile; use new, encode and decode. Ruby Integer preserves all signed/unsigned bits. Ensure acquired capabilities close once even when a codec raises.

Replace `PROFILE`, `BUNDLE` and `N` with the exact selected source profile and ROS family. `API-CATALOG.md` in this language's locale lists every original message/component, field and interface. The authoritative definitions and finite quotas are in `share/platform/realman/catalogs/PROFILE`; `ir.json` preserves every field, default, bound, component and codec identity. Canonical storage is distinct from native CDR/ROS serialization. Units, coordinate frames, controller modes and response status meanings remain those of the official definitions; the binding introduces no conversion or success interpretation.

## Errors, ownership and permissions

Validate complete values before encoding. Check original numeric transport errors independently from record decoding and the vendor's response fields. Idle 11 supplies no value; 13 is denial; 22 is invalid; 90 is finite capacity; 110 may follow an admitted effect and does not authorize replay. Preserve actually observed required-length flags and full-width owner/ticket/correlation values. Keep old destinations unchanged after refused decode.

The caller owns all returned buffers and nested values. Retain borrowed capability/context/backend and callback storage throughout synchronous use. Serialize shared mutable owners; callbacks are caller-driven. Close each acquired owner once, retaining primary and independent cleanup errors. Fatal traps or process termination require outer instance cleanup and do not prove physical actuator completion.

The SDK creates no grants. A trusted operator manually supplies exact aliases, resource/type identities, QoS, finite quotas and any monotonic clock/stdout/argument access. Examples wait at most 250 polls with 20 ms waits after idle. Services are admitted once. Fixture deployments use controlled offline/simulated peers; physical robot commands are outside this acceptance scope.

## Examples

- `example/platform/realman/ruby/ros1_develop/observe_arm__current__status`: `observe_arm__current__status`; independent `xmake.lua` and actual source.
- `example/platform/realman/ruby/ros1_develop/observe_joint__temperature`: `observe_joint__temperature`; independent `xmake.lua` and actual source.
- `example/platform/realman/ruby/ros1_develop/observe_six__force`: `observe_six__force`; independent `xmake.lua` and actual source.
- `example/platform/realman/ruby/ros1_main/observe_arm__current__status`: `observe_arm__current__status`; independent `xmake.lua` and actual source.
- `example/platform/realman/ruby/ros1_main/observe_joint__temperature`: `observe_joint__temperature`; independent `xmake.lua` and actual source.
- `example/platform/realman/ruby/ros1_main/observe_six__force`: `observe_six__force`; independent `xmake.lua` and actual source.
- `example/platform/realman/ruby/ros2_foxy/observe_armcurrentstatus`: `observe_armcurrentstatus`; independent `xmake.lua` and actual source.
- `example/platform/realman/ruby/ros2_foxy/observe_jointtemperature`: `observe_jointtemperature`; independent `xmake.lua` and actual source.
- `example/platform/realman/ruby/ros2_foxy/observe_sixforce`: `observe_sixforce`; independent `xmake.lua` and actual source.
- `example/platform/realman/ruby/ros2_humble/observe_armcurrentstatus`: `observe_armcurrentstatus`; independent `xmake.lua` and actual source.
- `example/platform/realman/ruby/ros2_humble/observe_jointtemperature`: `observe_jointtemperature`; independent `xmake.lua` and actual source.
- `example/platform/realman/ruby/ros2_humble/observe_sixforce`: `observe_sixforce`; independent `xmake.lua` and actual source.
- `example/platform/realman/ruby/ros2_jazzy/observe_armcurrentstatus`: `observe_armcurrentstatus`; independent `xmake.lua` and actual source.
- `example/platform/realman/ruby/ros2_jazzy/observe_jointtemperature`: `observe_jointtemperature`; independent `xmake.lua` and actual source.
- `example/platform/realman/ruby/ros2_jazzy/observe_sixforce`: `observe_sixforce`; independent `xmake.lua` and actual source.

Each observation prints actual complete canonical bytes only after full decoding and explicit close. A query encodes its complete original request and validates its complete original response. It does not infer success from a response's zero/default fields. Independent acceptance must compare the entire record/bytes, primary status, cleanup status and denied/malformed cases; exit zero alone is insufficient.

## Deployment and verification

`xmake run` uses the separately installed `uwvm2-ros` and selected native ROS deployment. Configure the trusted run file via the central launcher's public setting, retaining the operator's existing manual permissions. A missing common run dispatcher is an integration dependency, not an automatic policy generation request.

Cold-Xmake, sole-output, complete codec/service/action, denied-permission, native ROS1/ROS2 and actual QEMU AArch64 checks are separate acceptance rows. A genuine ARM ELF/runtime hash, emulator command/version and native byte witnesses are required for ARM execution. No hardware, external controller or upstream application suite is claimed by source documentation. Reproduction recipes and raw logs belong to the private review handoff, outside the distributed SDK.
