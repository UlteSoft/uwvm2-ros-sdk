# Native official-program source modules

These are authored application implementations using the actual SDKs. No current
native build or positive ROS/Kit/camera run has passed. Native components are not
Wasm Guests. The 24 scoped official IDs and all 27 language cells remain in
`the platform configuration guide`; whole-repository totals stay unknown.

| Source / installed catalog entry | Actual original application behavior | Remaining native acceptance |
| --- | --- | --- |
| `isaac_ros/native_programs/apriltag_components.cpp` / `native-apriltag-components` | Genuine ROS ComponentManager, class loader and multithreaded executor. Detector plain/core/Sim variants retain all explicit parameters/remaps; USB variant loads RectifyNode, AprilTagNode and UsbCamNode together, applying the whole selected camera YAML. | Actual Lyrical/component/AprilTag/CUDA/VPI/optional USB DSOs, native compile/link and each variant's full inputs/results. |
| `isaac_sim/native_clock.py` / `native-clock` | Real automatic and impulse clock graph, private native Context, two actual Clock callbacks, original two twenty-frame phases, discovery/pacing, 60 Hz CPU physics and complete callback values. | Actual pinned CPython3.12/Kit/ROS build; observe both callbacks in both phases and independently compare simulator time. |
| `isaac_sim/native_camera.py --program manual` / `native-camera-publishers` | Original warehouse/camera/exposure and 1280x720 RGB/depth/CameraInfo graph. Per-frame gate disable/enable sequence, RGB modulo5, depth modulo60, info every frame. | Actual renderer/asset closure and complete native data/cadence observation. |
| Same camera source, `--program periodic` | Same complete scene; sets real persistent gate periods5/60/1 once, preserving the source's different scheduling algorithm. | Independent periodic-mode acceptance; manual-mode evidence cannot qualify it. |
| `isaac_sim/native_cube_subscriber.py` / `native-cube-subscriber` | Actual original scene, real Empty callback/random XYZ update, simulation-thread pose application and playback reset. | Actual native build and independently observed Empty callback/prim pose. |
| `isaac_sim/native_carter.py --program navigation` / `native-carter-programs` | Actual hospital/office multi-Carter USD load, complete stage-loading wait,60Hz CPU physics and finite playback. Both environments remain variants of one official program. | Genuine scenario/transitive asset and ROS/Nav2 closure; native build, actual loaded scene/robot observations. |
| Same Carter source, `--program stereo` | Actual Carter warehouse scenario; all four original RGB/CameraInfo render products;60 warmup updates; genuine complete Twist with angular.z0.5rad/s published every second frame. | Native build, actual stereo images, private-domain matching and simulated motion observation. |

The detector's three entries are variants of one official program. USB is a
second composite program. The two camera selections are two scoped original
programs with different algorithms; they share one authored package/catalog
entry. Neither files, catalog entries nor variants change the official total.

## Real C++ component program

Use installed `nvidia-isaac-ros/cpp/native-apriltag-components` through the existing
SDK xmake build action. Its backend configuration is an ordinary operator-owned
JSON object with exactly these keys:

```json
{
  "format": "uwvm-nvidia-example-config-v1",
  "cmake": {"path": "/ABS/ACTUAL_CMAKE", "sha256": "ACTUAL_SHA256"},
  "cxx": {"path": "/ABS/ACTUAL_NATIVE_CPP_DRIVER", "sha256": "ACTUAL_SHA256"},
  "ninja": {"path": "/ABS/ACTUAL_NINJA", "sha256": "ACTUAL_SHA256"},
  "prefixes": ["/ABS/FROZEN_NATIVE_ROS_PREFIX", "/ABS/FROZEN_NVIDIA_PREFIX"],
  "enable_native_components": false,
  "enable_usb_pipeline": false
}
```

The compiler must be a real C++ driver with its matching native library/link
closure. CMake, compiler and Ninja hashes are checked before and after building.
Actual packages/targets are required even when execution is disabled. No NVIDIA
target, library or successful build is fabricated. Both flags default OFF in
CMake; explicit build and runtime enables are independent. Missing actual
`ament_cmake`, components or plugins remain real build/runtime failures.

Under a separately admitted finite native owner, the enabled command forms are:

```text
PROGRAM --enable-native-components plain DOMAIN LIFETIME_MS /PRIVATE_NAMESPACE
PROGRAM --enable-native-components core DOMAIN LIFETIME_MS /PRIVATE_NAMESPACE tag36h11 CUDA
PROGRAM --enable-native-components sim DOMAIN LIFETIME_MS /PRIVATE_NAMESPACE
PROGRAM --enable-native-components usb DOMAIN LIFETIME_MS /PRIVATE_NAMESPACE PHYSICAL_YAML /PARAMETER_NODE 1280 720 --enable-usb-camera
```

Domain is0..232; lifetime is1..120000ms. The namespace must be private and
absolute. The USB configuration is an ordinary physical file of at most64KiB;
the genuine ROS parameter parser resolves its complete selected node/wildcard
parameter map. Keep YAML, calibration package URLs, every package resource/index
and DSO/driver dependency frozen for the run. The exact original YAML has a `/**`
section, so its full node selection can include the private namespace. USB
additionally requires the separate compile/run flags and real camera rights.
No USB device was opened during this work.

The manager's real load/unload/list services remain native ROS endpoints. No
Guest administrative alias is introduced. The source explicitly binds loaded
children to its private Context: the inspected Lyrical base options builder does
not do so. The executor and its `thread_num` parameter both select two workers;
the actual host must support that range. A watchdog cancels native spin at the
deadline; the outer owner still bounds blocked constructors/callbacks. A zero
exit proves only finite hosting, not detections, observed messages or identity.

## Real clock and camera programs

Clock execution requires both `--enable-native-simulation` and
`--enable-sim-commands`, a physical `--sdk-root`, domain, distinct absolute
`--automatic-topic`/`--manual-topic`, `--lifetime-ms`1..120000,
`--maximum-events`1..256 and a fresh absolute `--evidence` file. It uses the real
Clock messages, not host-generated time. Each original phase has20 frames and
impulses at0/10; phase0 performs the original extra update after each impulse,
while phase1 does not. Requested pacing is1s discovery plus0.1s per frame.
Missing either callback in either completed phase returns110. Recorded dispatch
locations are not an authenticated publication sequence or losslessness proof.

Camera execution requires both `--enable-native-simulation` and
`--enable-native-sensors`, explicit `--program manual|periodic`, physical SDK and
`--warehouse-usd`, exact lowercase `--warehouse-sha256`, domain, three distinct
absolute `--rgb-topic`/`--depth-topic`/`--info-topic`, frames1..10000,
lifetime1..120000ms and a fresh absolute `--evidence`. Supply the actual original
warehouse entry and its complete local transitive USD/texture/resolver closure;
the entry hash alone does not establish that closure. The source preserves all
camera optical/exposure values and the actual frame/4 expression, which rotates
by0.25 degrees per frame despite the original prose's0.5-degree comment.

Optional `--observe-native-loop --native-evidence FRESH_DIRECTORY` uses the
genuine bundled ROS observer to retain full Image, depth Image and CameraInfo
CDR. It retains at most12 complete messages/64MiB fairly across three topics;
oversized complete data fails rather than being cropped. Missing a requested
topic returns110. Native data is never generated by a local codec or mock.
Manual gate assignments and persistent period settings are configuration
evidence; complete native messages and measured cadence remain separate proof.

All native programs require independently admitted loopback DDS, rendering,
actual SDK modules and evidence-file rights. Ambient external discovery profiles
are refused. Cooperative deadlines cannot preempt a blocked Kit/driver call;
the finite whole-process owner remains mandatory for repository acceptance.
No simulator, native ROS component, GPU kernel, model or physical robot ran here.

## Carter source and current qualification scope

Navigation additionally selects `--environment hospital|office` and the exact
corresponding original scenario basename. Stereo selects the original
`carter_warehouse_navigation.usd`; no environment argument is accepted for it.
The complete original asset/robot/ROS graphs and transitive resource closure
must be independently supplied and frozen. An entry hash and filename do not
establish genuine asset provenance or a working Nav2 environment.

The source inventories actual USD ROS2Context prims and assigns the explicit
domain, with the same environment selected before loading. Assignment alone
does not prove the live Context's domain or writer identity. Stereo retains the
original `/cmd_vel` topic in the separately admitted private simulation domain;
it does not publish to an invented topic that the loaded robot never reads.
Every complete six-field Twist attempt is recorded before publication. A failed
call leaves effect uncertainty and is never replayed. Neither publication
return nor scene loading is a positive motion/navigation/image observation.

