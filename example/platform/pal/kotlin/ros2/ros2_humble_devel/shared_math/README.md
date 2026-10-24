# Genuine shared JVM producer and Java consumer

This source example uses ordinary set_kind/shared and add_deps through the
common public Xmake contract. The real library owns its heap; the consumer
passes only scalar values through actual named Wasm imports. It verifies signed
sums, a real caught overflow, finally execution, one managed initialization per
instance, and independent state for two instances of the same library bytes.
Actual built/executed status is recorded separately in library-coverage.json.

Edit run-native.json to select your installed runtime and gateway executables.
Its complete explicit policy enables no ROS module and grants no clocks,
randomness, directories or sockets. The gateway path is a required deployment
input; with all ROS modules disabled the public runner starts no gateway.

```sh
xmake f -p wasm-wasip1 -a wasm32 -c --ros-run-config=run-native.json
xmake
xmake run main
```

The parent-owned shared runner is sdk/tools/platform/ros/run.py. The common
artifact contract selects build/targets/6d617468/math.wasm and
build/targets/6d61696e/main.wasm, with all compiler intermediates outside build/.
The preload aliases math and math_peer have separate explicit module policies.
No cross-module object reference or pointer is transferred. This example does
not qualify native ROS, ARM, memory64 or static archives.
