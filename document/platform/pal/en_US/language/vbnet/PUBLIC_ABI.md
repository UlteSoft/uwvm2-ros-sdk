# vbnet public RosWasm integration

The canonical binding is `Uwvm.RosWasm`. The ordinary public project compiles
`RosWasm/**/*.cs` with exactly `UWVM_ROS1` or `UWVM_ROS2`. The separate
owned-service package declares another explicit runtime/profile; it is not part
of this ordinary SDK assembly. No obsolete `Uwvm.Ros` helper tree is installed.

PAL records retain every source field, constant, bound, identity and default
description. Their `CatalogWire` field adapter delegates primitive I/O to public
`Codecs`; it defines no ROS imports or capability owner. Full typed factories
use public `Node`, `Publisher<T>`, `Subscription<T>`, `ServiceClient<Q,S>`,
`ServiceServer<Q,S>` and `ActionClient`/`ActionServer`. Callers supply explicit
separate role aliases and own returned endpoints. The public layer retains
its original setup rollback, same-session checks, request IDs and cleanup rules.

For example, create a caller-owned `Session(new NativeTransport())`, check its
ABI, then construct `Node(session)`. A generated `Ros2Api…CreatePublisher(node,
alias)` receives an explicitly granted publisher alias; call its `Publish`
with a complete generated value. A service factory takes a call alias or
separate advertise/respond aliases. An Action factory requires four separate
outgoing roles or two separate server roles. No alias or permission is inferred.
Close every acquired endpoint/session through the public checked cleanup API.

The shared scalar project is
`example/platform/pal/vbnet/ros2/ros2_humble_devel/shared_math`:

```sh
xmake f -c -p wasm-wasip1 -a wasm32
xmake
export UWVM_ROS_RUN_CONFIG=/absolute/run-native-clr.json
xmake run main
```

Select the installed SDK with `UWVM_ROS_SDK_ROOT` and copy the manual run config
to set runtime/gateway paths. The project disables automatic builds during run
and declares scenario `shared_math`. Its C# consumer calls the genuine producer
twice through isolated module instances, exercises the public signed/UTF-8
codecs, validates every BatteryState field and its exact canonical bytes, rejects
truncation/trailing bytes/nonfinite payloads, and requires a real errno13 from
an ungranted public native open. ROS and extra WASI grants remain empty; basic
default standard-stream rights remain. Positive native PAL communication,
hardware, memory64, static archives and wider language pairings are separate
unqualified gates. Source availability does not establish those results.

The independent ROS1 project is `example/platform/pal/vbnet/ros1/ros1_noetic_devel/shared_math`. It preserves the original `chargeState` and `batteryPercentage` field names. All three ROS1 source producers with C# consumers also passed the same public x86/ARM checks. The full PAL ROS1 and ROS2 C# source trees were actually compiled; positive native vendor communication and full-catalog runtime coverage remain separate.
