# Industrial SDK examples through xmake

Run from the installed SDK's `example/` directory. The SDK can be renamed and
moved independently of this repository. Task 01 supplies its root orchestration;
Task 10 supplies the pinned shared tool/profile assembly. The platform modules
select actual source applications and compiler backends. Current source delivery
and a successful build are separate from controller or native ROS qualification.

Select exactly one row, language and example. Listing is read-only:

```sh
cd /ABSOLUTE/INSTALLED-SDK/example
xmake f -c --sdk-example-platform=fanuc --sdk-example-language=c \
  --sdk-example=query --sdk-startup=reactor --ros-sdk-c-standard=11 \
  --sdk-toolchain=/ABSOLUTE/PINNED-TOOLCHAIN \
  --sdk-profile-manifest=/ABSOLUTE/INSTALLED-SDK/share/wasm-profiles.json \
  --sdk-offline=y --sdk-exceptions=n --sdk-threads=n
xmake sdk-example-list
xmake sdk-example-inspect --output=/ABSOLUTE/FRESH/inspection
xmake sdk-example-build --output=/ABSOLUTE/FRESH/build
```

Use a new output directory for each action/profile. `build-receipt.json` identifies
the selected source and actual Wasm artifact. C/C++ emit `application.o` and
`application.wasm`; Rust emits its real Cargo target tree; TinyGo emits
`application.wasm`; AS/JS retain compiler/producers, validation and final artifact
facts below `managed-product/`. No example is implicitly built or run.

| Platform | Languages | Exact example IDs and startup |
| --- | --- | --- |
| fanuc | c; cpp; rs, tinygo, as, js | c `query`, `sine-topic`, cpp `trajectory`: reactor; other languages `query`: command |
| abb | c; cpp; rs, tinygo, as, js | c `query-ros1`, `query-ros2`, cpp `trajectory`: reactor; others `query`: command |
| yaskawa | c; cpp; rs, tinygo, as, js | c `query`, cpp `trajectory`: reactor; others `query`: command |
| kuka | c, cpp | c `status`, cpp `trajectory`: reactor |
| universal_robots | c, cpp, rs, tinygo, as, js | `io-ros1`, `io-ros2`, `io-polyscopex`: command; c `force-mode`, `until-trajectory`: reactor |
| doosan | c, cpp, rs, tinygo, as, js | `observe-PROFILE`: command; c also `move-stop-ros2-humble`, `move-stop-ros2-jazzy`: reactor |

Doosan `PROFILE` is exactly one of `ros1_aws_robot`, `ros1_aws_simulation`,
`ros1_doosan_robotics_patch_1`, `ros1_kinetic_devel_descrepted`, `ros1_main`,
`ros1_master`, `ros1_melodic_devel`, `ros1_noetic_devel`, `ros1_patch_1`,
`ros1_song_ms_patch_1`, `ros2_humble`, `ros2_jazzy`. Original spelling is retained.
The selected complete family, preprocessor profile, Cargo feature and TinyGo
tags are coupled in `recipes.lua`; no source/domain rewrite follows a backend flag.

FANUC `sine-topic` requires the separate 1001-point source family and explicit
generation budget. The eight-point family remains unchanged and fails the
kernel's capacity assertion. The caller drives the original one-second timer
cadence and polls whole JointState values; publication is attempted once,
including ambiguous errors. Native identity binding/publication remains with
the shared publisher. Successful publication is separate from physical execution.

UR `force-mode` retains the complete ROS2 ur_msgs SetForceMode request. Its
Dashboard/controller/TF orchestration and separately authorized stop_force_mode
service remain dependencies. `until-trajectory` uses the distinct original
Until Action, one owned Goal, and four aliases: `ur-until-send`,
`ur-until-cancel-own`, `ur-until-feedback`, `ur-until-result`. Complete feedback,
result, signed error code, until_condition_result and cancel ACK remain separate.
No cancel-any role is opened. These components do not complete the original
multi-process orchestration.

C applications require real C11/17/23 or draft C2y (`--ros-sdk-c-standard=29`).
The owning C++ source applications require real C++20/23 or draft C++26
(`--ros-sdk-cpp-standard=26` selects the compiler's `c++2c` mode). The separate
small preflight facade has scoped C++98–draft26 syntax evidence; that does not
make the owning source applications or entire generated C++ SDK C++98-capable.
Memory64, exceptions and threads require separate supported closures; these
applications refuse them. A mode label alone is not compiler conformance evidence.

Rust uses the pinned real Cargo plus rustc, edition 2021, target
`wasm32-wasip1`, a real `std` target library, panic abort, existing path-only
lockfile and offline/frozen single-job build. For example:

```sh
xmake f -c --sdk-example-platform=fanuc --sdk-example-language=rs \
  --sdk-example=query --sdk-startup=command --sdk-rust-version=1.85.0 --sdk-rust-library=std \
  --sdk-toolchain=/ABSOLUTE/PINNED-RUST-CLOSURE --sdk-offline=y
xmake sdk-example-build --output=/ABSOLUTE/FRESH/rust-build
```

UR and Doosan require the shared Cargo application's explicit-feature contract.
`polyscopex` enables the SDK ROS2 dependency itself; adding root `ros2` as well
would select incompatible UR source domains. The shared integration patch must
preserve this distinction. Missing action support refuses before a build.

TinyGo requires `--sdk-tinygo-version=0.38.0` and an explicit absolute
`--sdk-tinygo-goroot=/ABSOLUTE/PINNED-GO-ROOT` included in the selected tool closure.
It invokes genuine TinyGo WASI with one job, scheduler none, panic trap and the
exact source tags. Official host Go is not this backend.

AS/JS require `--ros-sdk-managed-inputs=/ABSOLUTE/inputs.json` and
`--ros-sdk-managed-inputs-sha256=EXACT_LOWERCASE_SHA256`, in addition to a shared
managed consumer profile. AS requires its exact
`--ros-sdk-as-runtime-version=VERSION`; Node runs only the compiler. The output
uses the SDK `abortGuest`, incremental runtime and finite Wasm memory. JS uses
the pinned QuickJS 2026-06-04 source and WASI C toolchain. Every emitted C,
link and validation job runs serially; full dependency files, linker trace and
closed SDK-local module map are retained. JS executes inside the emitted Wasm.
Missing installed producer, tools or closure is an explicit dependency failure.

Build/prepare/inspect grant no ROS rights. Every listed application currently
requires a separately reviewed trusted Host policy; the generic run task refuses
automatic execution. Default authority is empty apart from ordinary stdio.
Observation commands accept one existing alias: Rust/TinyGo through argv;
AS/JS through nonzero u8 byte count followed by strict UTF-8 stdin bytes.
`vendor-query` is 12 bytes. No native endpoint, credentials or grant are read
from the alias. C reactors require an external explicit lifecycle driver.

The full C query response, required-length/error facts and independent cleanup
remain observable, including controller refusals. Doosan MoveStop requires an
explicit request before positive initialization and never repeats it. The C++
trajectory applications contain a synthetic loopback fixture only; forwarding
that fixture to a physical controller is outside its contract. No example
switches controllers, plays a Dashboard program, grants an alias or certifies
physical stopping. Read the platform's `CONTROLLERS.md` before any independently
authorized native integration. Tests live in the unified repository test tree,
and are not a dependency of the installed SDK example build.

Current qualification is recorded separately in the task 07 round-two handoff.
The presence of these sources or a catalog entry is not a whole-platform pass.
