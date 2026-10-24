# SDK 04/05 manual review

The 2026-10-23 platform sources, implementations, independent examples,
configuration and bilingual manuals are published under the public `sdk/`.
This review distinguishes visible source from measured acceptance. Neither
group has completed the full release matrix.

| Group | Platform | Independent Xmake projects | Example languages | Chinese / English manuals |
|---|---|---:|---:|---:|
| 04 | [Franka](platform/franka) | 158 | 26 | 27 / 27 |
| 04 | [Kinova](platform/kinova) | 80 | 26 | 27 / 27 |
| 04 | [Flexiv](platform/flexiv) | 742 | 26 | 27 / 27 |
| 05 | [Dobot](platform/dobot) | 226 | 15 | 28 / 28 |
| 05 | [Elephant](platform/elephant) | 270 | 15 | 28 / 28 |
| 05 | [UFactory](platform/ufactory) | 450 | 15 | 28 / 28 |
| 05 | [RealMan](platform/realman) | 225 | 15 | 28 / 28 |

Project counts include independent library compositions and native observation
examples. They are not executed-application counts. A language directory does
not qualify its compiler, interpreter, native transport or complete API.
Group 05 currently supplies examples in 15 languages, leaving required routes open.

## Review locations

- Applications and independent build files: `sdk/example/platform/<platform>/<language>/`.
- Public imports and types: `sdk/include/platform/<platform>/`.
- Implementations, configuration and tools: the corresponding platform directories
  under `sdk/src/`, `sdk/share/` and `sdk/tools/`.
- Language and example guides: `sdk/document/platform/<platform>/{zh_CN,en_US}/language/<language>/`.
- Per-platform status: `sdk/share/platform/<platform>/review-status.json`.

Group 04 retains 14 source profiles with 454 complete record/component
occurrences and 1,424 fields. Franka Noetic/Jazzy, Kinova Humble and native
Kortex interfaces, and distinct Flexiv releases retain separate identities.
Only the three original Flexiv v1 contact-limit fields permit positive infinity;
other fields keep their independent finite-value contracts.

Group 05 retains 26 source profiles, 1,846 original definitions, 2,982 complete
record/components and 8,047 fields. Each example declares its profile, source
lock hash, ABI and transport through `set_ros_config`. Model selections must
belong to that profile. Source identity and selected native ROS distribution
are validated separately.

## Evidence scope

All 4,062 files in the group 04 delivery manifest matched their SHA-256 entries.
Retained evidence covers 210 Wasm builds, 204 actual guest applications and
1,550 checks, including C/C++ codec slices for 14 profiles at both widths and
12 positive-infinity applications. These results identify their original common
framework snapshots; they do not automatically qualify the newly integrated
public framework. The 117 interface identities remain source-graph candidates,
not qualified formal native exports or guest/native bridge exchanges.

All 5,500 files in the group 05 delivery manifest matched their SHA-256 entries.
The latest 18 cold builds, effective configuration/semantic-profile checks and
actual default-disabled ROS denial executions passed. Exit status 13 carried
no acquired owner or response bytes. Historical 48/66-case cohorts remain
separate and cannot be added into current-source acceptance. Four historical
C++98 build failures remain open.

Those executions used SSH Linux cgroups with measured 64 GiB memory and zero
swap. The authoring host performed source preparation, formatting and hashing
only. The finite post-integration regression is recorded below when available.
Positive native ROS communication, QEMU AArch64, every requested language and
vendor static/shared combinations require separate evidence.

## Build and run

Run `xmake` inside an independent example. Set `UWVM_ROS_SDK_ROOT` when using an
external installation. To request memory64, run
`xmake f --arch=wasm64 --plat=wasm-wasip1`, then `xmake`; wasm32 remains the default.
The common producer validates the actual language/width pair and must not
silently substitute another architecture.

`xmake run` additionally requires an installed uwvm2-ros and an explicitly
configured deployment and permissions. `set_ros1_version`, `set_ros2_version`
and profile selections grant no ROS authority. Deployment outputs are `.wasm`;
static `.a` files are private linker inputs. Libraries use the ordinary
`set_kind("binary"/"static"/"shared")` declarations and need their own acceptance.

Integration preserves structured Xmake option validation, ordinary library
kinds, explicit Preload permission templates and Agibot version conflict checks.
Unpublished interpreter adapters and a retired vendor-specific DSL do not replace
the installed public entry points.

## Finite post-integration regression

The final batch passed 17/17 common configuration checks, 28/28 genuine LLVM 23 builds and 28/28 actual Wasm executions. Each of the seven platforms covers C and C++ at wasm32 and wasm64. The actual memory-section width is inspected, and each project emits exactly one deployable `.wasm`.

The 12 group 04 executions reject empty whole-value input with status 22. The 16 group 05 executions reject ungranted ROS access with status 13 and report no owner or response bytes. All 28 returned artifacts match their actual build SHA-256 identities, and every tested public source still matches the local publication. This batch does not qualify positive native ROS, QEMU AArch64 or vendor library compositions.
