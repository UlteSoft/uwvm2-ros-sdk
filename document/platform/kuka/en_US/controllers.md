# KUKA controller and application contracts

This platform remains incomplete. The selected original driver is
[kuka-ros/kuka_drivers at 15fbb694](https://github.com/kuka-ros/kuka_drivers/tree/15fbb6941356390c38bbd135a0676dfd96a050c0).
Master is a Jazzy source selection; Humble is a separate branch. The 26-definition
graph preserves all six vendor messages and complete JointState/FJT dependencies.
It does not establish that every retained driver family is maintained or installed.

| Native family | Separate boundary |
| --- | --- |
| iiQKA.OS2 RSI | `rsi_only`, `eki_rsi` and `mxa_rsi` have different startup/status channels |
| Recorded RSI setup | KR C5 OPS / KR C5, iiQKA.OS2 9.1.0, RSI 6.1.2; one recorded C5 robot is KR16 R1610-2 |
| Recorded micro setup | KR C5 micro-2 / LBR iisy3 R760, iiQKA.OS2 9.3.0, RSI 6.3.0 |
| KSS RSI | A separate controller/SDK route; the source documentation does not qualify every KSS release |
| iiQKA EAC | Separate controller operating system and external-control SDK contract |
| Sunrise FRI | Separate seven-axis application subset, FRI version and license/installation contract |
| ROS1 | No ROS1 support is inferred from these ROS2 source types |

The [pinned RSI guide](https://github.com/kuka-ros/kuka_drivers/blob/15fbb6941356390c38bbd135a0676dfd96a050c0/kuka_drivers/doc/1_RSI.md)
documents the actual tested upstream setups. Those are upstream source claims,
not new historical source review controller runs. Native dependency manifests and model support
packages require their own immutable commits; the driver commit cannot pin a
floating external SDK dependency automatically.

The C preflight has distinct KSS-RSI, iiQKA.OS2-RSI, iiQKA-EAC and Sunrise-FRI
route selectors. The first three select six joints and the Sunrise example
selects seven. These are conservative application subsets, not all-model support.
Supply the actual installed joint order, bounds, current positions, freshness
and quota. Complete values are checked before any counted array traversal.
Invalid shapes, timings, tolerances, stale state and unsupported component goals
refuse without modifying the complete Goal. The selected KUKA example permits
nonzero final velocity; FANUC/MotoROS2 rules are not copied into it.

The C KssStatus reader preserves all nine original fields and has a saturating
sample counter. Its default-denial witness now also requires an absent owner
handle. The original message has no timestamp: stored flags cannot certify
current safety, motion permission or motor state. RSI/FRI/EAC transport and
native controller handles stay in the trusted native domain. GPIO BOOL, DOUBLE
and signed 64-bit LONG interfaces must retain their native type and configured
limits; source availability is not I/O-write permission.

Lifecycle configure/activate/deactivate, control-mode changes and native recovery
have separate effects and grants. A non-real-time robot_manager deactivate is
not an immediate physical stop. Owned FJT cancel acknowledgement, terminal result,
controller error and physical state remain distinct. A disconnect/timeout never
triggers automatic reactivation, retry or replay. Pendant/hardware stop remains
outside default Guest authority.

`upstream-audit/ros2-master.json` inventories 13 candidates, including five ROS2
launch entries, six upstream test sources and the simulator console manifest.
That manifest declares `rsi_simulator = kuka_rsi_simulator.rsi_simulator:main`;
a census restricted to `examples/` would miss this runnable entry. No simulator,
full native driver, official suite or per-language port is credited by the audit.

An explicit default-off Runtime configuration is:

```sh
xmake f -c -p linux -a x86_64 --import-ros2=y --ros-vendor-kuka=y \
  --ros-vendor-kuka-registry-header=/ABSOLUTE/REVIEWED/merged/manifest.hpp
xmake -j1
```

Use the same physically identical merged native-bound manifest when another
vendor is selected. The SDK headers and this source recipe do not install a
native KUKA SDK or authorize a controller, socket, mode change or motion.

Canonical source layout: public modules are in `sdk/include/platform/kuka/`, complete application sources are in `sdk/example/platform/kuka/`, and platform documentation/provenance is in `sdk/share/platform/kuka/`. Documentation for a language does not establish an implemented or qualified language port.
