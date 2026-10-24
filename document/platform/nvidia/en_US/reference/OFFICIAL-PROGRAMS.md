# Pinned official program inventory

This is an application inventory, not a file/launch count. Source inspection used
the connected GitHub reader at the exact commits below and matched its Git blob
IDs to the previously captured complete Git trees. No program was executed by
that inspection. Whole-repository official totals remain **unknown**: the
explicit scopes below do not cover all Isaac ROS repositories, all Isaac Sim
extensions/examples, or every GR00T deployment/tool program.

The corresponding 27-language implementation ledger is
[the platform configuration guide](../README.md). Existing codecs, CPU
layouts, default denials and generated messages do not establish a program port.
Every cooperating process/callback below is part of the required behavior.

## Isaac ROS AprilTag

Repository [NVIDIA-ISAAC-ROS/isaac_ros_apriltag](https://github.com/NVIDIA-ISAAC-ROS/isaac_ros_apriltag/tree/95df59e5dc9c253b6e8e11471c10fd510b036fdd),
commit `95df59e5dc9c253b6e8e11471c10fd510b036fdd`. Scope: the four retained
`isaac_ros_apriltag/launch/*.launch.py` entry files. Two application groups, four
entry variants; a reusable fragment is also independently launchable and is not
silently discarded as a helper. README links identify release 5.0. Installed
Lyrical/rosidl_buffer/CUDA/VPI package and DSO compatibility remains unqualified.

| Stable program ID | Entry and required application behavior | Classification / variants |
| --- | --- | --- |
| `ros-apriltag-detector` | `isaac_ros_apriltag.launch.py`: actual `AprilTagNode` in `component_container_mt`, tag size 0.22, max_tags 64, tile_size 4; consumes the actual complete image/camera info and publishes full detections | One detector application, not three duplicated programs. `core.launch.py` adds the reusable `IsaacROSAprilTagLaunchFragment`, tag family/backends launch arguments, and rectified-image remaps. `isaac_sim_pipeline.launch.py` selects the front stereo image/camera-info remaps and tag size 0.32. Every variant still needs its own qualification. |
| `ros-apriltag-usb-pipeline` | `isaac_ros_apriltag_usb_cam.launch.py`: actual USB camera, RectifyNode and AprilTagNode cooperate in one container; actual camera YAML, width/height launch configuration and rectified image/camera-info flow are required | Composite application. A detection subscriber or a lone detector process does not port the USB/rectification pipeline. Physical camera execution is unavailable. |

Exact entry blob IDs:

| Relative path under `isaac_ros_apriltag/launch/` | Git blob SHA-1 |
| --- | --- |
| `isaac_ros_apriltag.launch.py` | `2129f7e00f170795681d5352d2ddc2456fb72fb4` |
| `isaac_ros_apriltag_core.launch.py` | `1a97f8253d57f613f31f2e503635d9b2c6bf6a75` |
| `isaac_ros_apriltag_isaac_sim_pipeline.launch.py` | `c8f1be2c5ca1a7fd6c59e49df57639baad5bb476` |
| `isaac_ros_apriltag_usb_cam.launch.py` | `9c97348b255fc8e90dfda6f16c9aa97e474d142f` |

The component plugin is a runtime dependency, not another official example. The
common/NITROS repository trees remain upstream dependency audits; their launch
or file totals are not added to this application denominator.

## Isaac Sim ROS2 examples

Repository [isaac-sim/IsaacSim](https://github.com/isaac-sim/IsaacSim/tree/87c95274f50836068b44eeb030bf62aa2108bdf8),
commit `87c95274f50836068b44eeb030bf62aa2108bdf8`. Scope:
`source/standalone_examples/api/isaacsim.ros2.bridge/*.py` and
`source/standalone_examples/api/isaacsim.ros2.control/*.py`.
There are **13 application programs and one auxiliary smoke test in this
scope**. This is not the whole Isaac Sim official denominator. The pinned README
requires Python 3.12; the exact bundled rclpy/Kit/native release must be matched.
A current documentation release number is not substituted for this commit.

| Stable ID (`sim-` prefix) | Entry basename / Git blob SHA-1 | Required behavior |
| --- | --- | --- |
| `camera-manual` | `camera_manual.py` / `ee525e19f02d756a932d5e803eeea73910b05079` | Warehouse/camera scene and exposure/aperture setup; 1280x720 RGB, depth and camera-info graph; per-frame gates explicitly enable RGB every 5 frames, depth every 60, info every frame; rotating camera. |
| `camera-periodic` | `camera_periodic.py` / `568c80c7e65035e366126538bcf9c73d4633c151` | Same complete scene/message domains, but actual persistent simulation-gate periods 5/60/1; preserve this scheduling distinction rather than relabel manual publishing. |
| `camera-noise` | `camera_noise.py` / `c97106c26cbd771472276fb7043820ba7029e2b6` | Real Warp Gaussian RGB augmentation, registered annotator and ROS image writer, simulation-time timestamp link and rotating camera; GPU kernel semantics required. |
| `camera-rclpy-async` | `camera_rclpy_async.py` / `4b0dc4e7bb83ff2f73b7da9411a4e929acccd4a8` | Actual scene/camera, rotating GPU slots, D2D submission, per-slot ownership/events, worker D2H into page-locked messages, synchronize/publish, drop accounting and worker/pinned-buffer cleanup. A synchronous CPU copy is not equivalent. |
| `carter-multiple-navigation` | `carter_multiple_robot_navigation.py` / `263932ffdecc1fc23b3a4cfa255da3fbf8d0446b` | Select hospital/office multi-Carter USD, wait for full stage loading, run genuine ROS-enabled multi-robot scene. Hospital/office are variants, not two counted programs. |
| `carter-stereo` | `carter_stereo.py` / `e312d1c589480ef3db2737b767b1a1fbb1c47285` | Enable both stereo render products and both camera-info products in the actual Carter scene; warm up then publish real Twist angular.z=0.5 every second frame. Simulation only. |
| `clock` | `clock.py` / `dd1bca7d73530104e5f9b21a69c94e1d88cdd796` | Automatic and impulse-driven clock publishers plus two real Clock subscription callbacks; preserve both stepping phases, 60 Hz physics and actual simulator time. A clock codec is insufficient. |
| `moveit` | `moveit.py` / `17e0a0ad91774b10057081c373ff4d413ae90b1a` | Actual Franka/background USD and variants, complete joint reader/publisher, joint command subscriber/articulation controller and clock; preserve names, positions, velocities, efforts, DOF types, stage units, sensorTime and peer MoveIt interaction. |
| `rtx-lidar` | `rtx_lidar.py` / `37adaa244e8899f779731cf7ecdd2460d85893f1` | Genuine 3D and 2D rotary sensors, scan metadata from prim attributes, PointCloud2/LaserScan native writers and both visualizers. |
| `rtx-lidar-rclpy` | `rtx_lidar_rclpy.py` / `6833f0d05cc125dae8a442a5159344b0995bce86` | Real GMO sensor data, duplicate-timestamp rejection, all XYZ/intensity arrays, genuine fill_point_cloud2_message layout/storage reuse and rclpy publishing; test must observe a real published cloud. |
| `rtx-radar` | `rtx_radar.py` / `af1c0379af546a3ece248fd7bef24741bdc0af02` | Motion BVH, BASIC radar channel, two gravity-free PhysX sheets with distinct sinusoidal radial velocities, full radial_velocity_ms point-cloud writer. Transform teleports do not preserve the program. |
| `cube-subscriber` | `subscriber.py` / `7428ee33902642eed7c33fd5f3e7fbc5d9ffb00a` | Ground/light/red 0.2 m cube; actual Empty subscription callback draws x/y in [0,0.4), z=0.1 m, defers complete pose application to the simulation loop, and preserves playback reset. Source counterpart: native_cube_subscriber.py; build/positive execution remain pending. |
| `ur10-ros2-control` | `ur10_ros2_control_demo.py` / `800e02e87d9e72a85db5c2fbaa7e8b2b1f501f42` | UR10/background USD, clock and in-process ROS2ControlManager, actual YAML, robot-description publication and FollowJointTrajectory service plus cooperating external ROS launch. JointState-only transport is incomplete. |

`ros2_control_smoke_test.py` (blob
`01674421915b9612fb869df2ce806159fa3e4102`) is retained as an auxiliary validation
program, separately from the 13 applications: it builds a real one-joint PhysX
arm, loads/configures/activates real controllers, commands 0.5 rad and observes
the joint within 0.1 rad. It must not be replaced by a synthetic joint array.
Configuration YAML, OGN/plugin bodies, render helpers, assets and generated
messages are dependencies, not additional counted application ports.

## GR00T N1.7

Repository [NVIDIA/Isaac-GR00T](https://github.com/NVIDIA/Isaac-GR00T/tree/dac54b313160c201c450f97df0fd74ebd379c892),
commit `dac54b313160c201c450f97df0fd74ebd379c892`. Scope: executable programs
directly referenced by the ten `examples/*/README.md` guides, plus the getting
started inference notebook and standalone deployment inference entry. **Nine
application program IDs are identified below**. Full transitive deployment and
utility coverage is not complete, so the whole-repository total stays unknown.
Entry/call-flow inspection is not exhaustive helper validation or execution.

The fixed environment requires CPython 3.12 (<3.13), Torch 2.9.0 and its pinned
NumPy/transformers/flash-attention closure. The code license is separate from
model licensing and gated Cosmos-Reason2-2B access. No model terms, login or
download have been performed. The observed 8 GiB GPU is below the documented
16 GiB inference recommendation and has not qualified this model.

| Stable ID (`groot-` prefix) | Entry / Git blob SHA-1 | Complete required behavior |
| --- | --- | --- |
| `droid-rollout` | `examples/DROID/main_gr00t.py` / `e56ca6fc3687122b065c16a313d5a48ad988af1e` | Actual DROID observations/cameras, EEF rotation convention, actual modality/horizon discovery, temporal video history, full state/language, policy-server response, bounded selected action chunk, gripper conversion, 15 Hz hardware stepping, evaluation video/CSV. Cooperates with the policy server and DROID host environment; physical execution is unauthorized. |
| `rebot-rollout` | `examples/rebot-arm-dm/eval_rebot_arm_dm.py` / `9a168354cad056f7da7b7d08b151b4f1ca2041d2` | Genuine B601-DM LeRobot plugin, all seven selected joint/gripper keys, cameras, full temporal policy action decoding, 30 Hz robot commands and independent disconnect/client cleanup. Physical execution unauthorized. |
| `finetune` | `examples/finetune.sh` / `8c2dd03963a189555ab35060d140937f044a83b3` | Real shared finetune launcher, explicit model/dataset/embodiment, training/batch/sharding/checkpoint/resume and optional W&B settings. Different benchmark/model configurations are variants, not separate copies. Native training resources/weights remain unavailable. |
| `inference-notebook` | `getting_started/GR00T_inference.ipynb` / `79750ecc5ba3639e7e5919f5c1689f7fd140c19d` | Actual checkpoint/dataset/modality loading, field compatibility checks, full step extraction, state/action/image visualization and real get_action output. Dataset/model-specific keys need real validation; a small tensor codec is not this notebook. |
| `standalone-inference` | `scripts/deployment/standalone_inference_script.py` / `e1a5687ad094186eb83b400677e2ced6944c19e3` | Genuine dataset trajectories, full model inference, execution-horizon contract, numerical evaluation/plots and actual selected PyTorch/TensorRT engine modes. TRT helpers are dependencies, not extra example counts. |
| `policy-server` | `gr00t/eval/run_gr00t_server.py` / `9994b3089b6b3a7000fa9685928a83fba1b9fdad` | Actual model or explicit ReplayPolicy branch, modality configuration, optional simulation wrapper and PolicyServer lifecycle. The authored restricted ROS inference owner intentionally exposes a smaller management surface and is not full server parity. Replay is not model inference. |
| `simulation-rollout` | `gr00t/eval/rollout_policy.py` / `27d2a08b0cfbfe54cb564d7aa38c887ebf7a584a` | Actual benchmark environment, policy/remote-server selection, full observation/action horizon wrappers, parallel environments, success/termination accounting and videos; LIBERO/SimplerEnv/RoboCasa variants share this entry. |
| `open-loop-evaluation` | `gr00t/eval/open_loop_eval.py` / `4461b84431f33634b953c9e563addd91e20ab9ec` | Complete real dataset trajectories and model/client inference, selected action horizons, all trajectory MSE/MAE and plots. Distinct from closed-loop simulation and inference server. |
| `so100-rollout` | `gr00t/eval/real_robot/SO100/eval_so100.py` / `892b598099bd99adb27278e20aeb47b75c5b26b0` | Actual SO100/SO101 LeRobot environment, all camera/state/language and temporal action conversion, 30 Hz motor calls. Physical execution unauthorized; no robot-motion adapter is exposed to Guests. |

Explicit auxiliary/external classifications:

- `examples/DROID/server_client.py`, blob `51a4c149de94b8776478893b14f57b4e46cf1436`, defines the cooperating PolicyClient/serialization API and has no standalone entry. It is a helper, not another DROID example.
- `examples/*/*_config.py` register model modality/configuration data; generated messages and modality JSON are not applications.
- `examples/mask-guided-background-suppression/test_extra_augmentation.py`, blob `43eef5f70a13491edc4608547015e4a413cacbeb`, is an actual augmentation/pipeline smoke-and-visualization utility, tracked separately rather than silently treated as a robot rollout.
- `examples/SimplerEnv/convert_av1_to_h264.py`, blob `89b80d1b969a027e65495e8b461e09d933348614`, is an in-place ffmpeg dataset conversion utility, not inference or a robot SDK application. It was inspected, not run.
- RoboLab's guide points to the external `NVlabs/RoboLab` client; WholeBodyControl points to external SONIC robot-side control. Their bodies/versions are not contained in this pinned repository. They remain explicit unresolved composite dependencies and are not credited as local example ports.

No native ROS integration, real model call, Sim callback, Jetson board test or
physical robot action is accepted by this inventory. License, model, GPU, native
runtime and shared language-toolchain gaps are retained in the handoff.

