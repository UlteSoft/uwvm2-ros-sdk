# Genuine shared JVM producer and Java consumer

This source example uses ordinary set_kind/shared and add_deps through the
common public Xmake contract. The real library owns its heap; the consumer
passes only scalar values through actual named Wasm imports. It verifies signed
sums, a real caught overflow, finally execution, one managed initialization per
instance, and independent state for two instances of the same library bytes.
Actual built/executed status is recorded separately in library-coverage.json.

The public component test builds the current Java sources and launches four
fresh uwvm2-ros AOT processes. It checks arithmetic and actual exception/finally
counters, removes stdout rights and checks both write and rights-restoration
denials, rejects an invalid argument, and checks fresh-process initialization
and module isolation again. The same complete producer bytes are loaded as
`math` and `math_peer`; each instance owns its state.

Copy `guest-test-runtime.example.json` to a deployment-owned location and fill
in the installed VM path, complete executable SHA256, and paired source identity.
An explicit `LD_LIBRARY_PATH` may be selected if that VM needs it. The template's
null identities deliberately fail. On Linux, run:

```sh
export UWVM_ROS_JAVA_GUEST_TEST_CONFIG=/absolute/deployment/java-runtime.json
xmake
xmake test
```

Fresh command logs, actual VM process/library identities, complete Wasm hashes,
import/export/memory metadata and results are retained under
`.uwvm-ros/component-tests/shared-math/`. A missing runtime, zero executed cases
or any failed assertion returns failure. These tests establish a language and
WASI component result only. Official ROS simulation remains separately required.

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
