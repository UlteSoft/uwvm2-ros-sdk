# Native sensor and control loop

`native_graph.py` uses actual fixed Isaac Sim node definitions at
`87c95274f50836068b44eeb030bf62aa2108bdf8`. Source bodies, original licenses,
Git commit/tree membership and complete selected `.ogn` schemas are retained in
`../upstream/20261021-fixed/isaac-sim-graph/`. Source membership does not identify
an installed Isaac Sim build, driver, GPU, native ROS ABI or USD asset closure.
Freeze and record those independently before running the native program.

The existing finite JointState reader/publisher/controller is retained. Optional
sensor configuration adds RGB, depth, camera depth point clouds, RTX lidar scans
or clouds, actual IMU readings, dynamic TF and simulation clock. Sensor reads,
simulation clock observation and simulation commands require separate Guest
aliases. The native graph uses one explicit ROS2Context/domain and loopback
discovery. No Guest can change a clock, permission, debugger or model setting by
including these sources.

`sensor_graph.py` accepts the exact `uwvm-isaac-sim-native-sensors-v1` format.
Its `sensors` list has 1..16 rows. All topics must be distinct absolute literal
names and must differ from joint state/command topics. No arbitrary node IDs,
graph ports, Python, launch arguments or native device names can appear in the
configuration. Camera/render dimensions are finite. Each row carries complete
native QoS JSON. This is operator configuration, not a Guest policy parser.

| kind | Additional exact fields | Actual source node path |
| --- | --- | --- |
| camera_rgb, camera_depth, camera_depth_pointcloud | prim, frame_id, width, height | IsaacCreateRenderProduct -> ROS2CameraHelper |
| lidar_scan, lidar_pointcloud | prim, frame_id, width, height | IsaacCreateRenderProduct -> ROS2RtxLidarHelper |
| imu | prim, frame_id | IsaacReadIMU -> ROS2PublishImu |
| tf | prims (1..64 distinct actual prim paths) | ROS2PublishTransformTree |
| clock | no additional fields | IsaacReadSimulationTime -> ROS2PublishClock |

Every row also has `kind`, `topic`, `qos`. Camera helper types are rgb/depth/
depth_pcl; lidar helper types are laser_scan/point_cloud. The fixed lidar source
ignores deprecated fullScan; the graph does not pretend it changes scan mode.
Deprecated frameSkipCount is also not set. Actual sensor prim timing controls
publishing. IMU timestamp, orientation, linear acceleration and angular velocity
are linked from the real sensor. Native covariance defaults are the original
publisher's semantics, not a claim of calibrated physical sensor uncertainty.

For example, save this **operator template**, replacing prim paths with actual
camera/IMU prims already present in a frozen local USD scene:

```json
{
  "format": "uwvm-isaac-sim-native-sensors-v1",
  "sensors": [
    {"kind":"camera_rgb","topic":"/uwvm_sim/rgb","qos":"{}","prim":"/World/Camera","frame_id":"camera","width":224,"height":224},
    {"kind":"camera_depth","topic":"/uwvm_sim/depth","qos":"{}","prim":"/World/Camera","frame_id":"camera","width":224,"height":224},
    {"kind":"imu","topic":"/uwvm_sim/imu","qos":"{}","prim":"/World/Robot/Imu","frame_id":"imu"},
    {"kind":"tf","topic":"/uwvm_sim/tf","qos":"{}","prims":["/World/Robot"]},
    {"kind":"clock","topic":"/uwvm_sim/clock","qos":"{}"}
  ]
}
```

Use exact native QoS for the chosen bridge and preserve its installed proof.
Compute the complete template SHA-256 after editing it. The native owner checks
its bytes and physical file identity before any Kit/ROS import. No scene is
fabricated by this template, and a missing prim fails before graph activation.

```sh
ISAAC_PYTHON native_graph.py --enable-native-simulation --enable-native-sensors \
  --sdk-root /absolute/frozen/isaac-sim --usd /absolute/frozen/scene.usd \
  --articulation /World/Robot --domain 231 \
  --state-topic /uwvm_sim/state --command-topic /uwvm_sim/command \
  --state-qos-json '{}' --command-qos-json '{}' \
  --sensor-config /absolute/sensors.json --sensor-config-sha256 ACTUAL_SHA256 \
  --frames 64 --lifetime-ms 10000 --observe-native-loop \
  --native-evidence ABSOLUTE_NEW_DIRECTORY_INSIDE_THIS_OWNER_WORK
```

This must run under the same shared finite owner and heavy/performance exclusion
as other tasks, using the actual Isaac Sim Python environment. Kit updates and
asset/GPU initialization can block; local step limits are not preemption.
An existing `/UWVM_NVIDIA_ExplicitGraph` is refused instead of overwritten.
The requested frame count must complete or the process reports failure.

With observation enabled, `native_observer.py` creates genuine native ROS
subscriptions using the bridge's actual installed Python types. It stores
complete native CDR messages, per-topic counts, original Python field/type
descriptions, byte lengths and SHA-256, with finite memory/disk/sample budgets.
It never publishes a control message. Missing topics produce a failure rather
than a sensor-loop pass. Add `--enable-sim-commands` only for a simulation command
session; then a real command must also be observed. A complete CDR receipt is
still native evidence: the Wasm -> Runtime -> Gateway path, full native identity
export, command effect correlation and independent teardown must be tested
separately. No simulator was started merely by creating a graph plan or checking
its ports against `.ogn` source.

