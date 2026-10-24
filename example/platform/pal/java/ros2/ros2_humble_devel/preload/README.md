# Java application with three managed Wasm libraries

Status: source implementation under review. The common Xmake kind/dependency
contract and actual native preload acceptance are still pending. This example
does not establish working shared-library support from source presence alone.

`xmake.lua` declares ordinary `set_kind("shared")` targets `io`, `algorithm`
and `ros_comm`, plus a `set_kind("binary")` target `main` with `add_deps`.
The intended deployment contains exactly `main.wasm`, `io.wasm`,
`algorithm.wasm` and `ros_comm.wasm`. Each file contains genuine Java AOT code
and its own TeaVM linear-memory runtime. The library root's real `@Export`
methods are retained; the application calls matching `@Import` functions.
A compiler-owned command entry in each library rejects accidental command
execution. The loader's automatic module start initializes its heap before
the exported methods are called. Actual loader acceptance must verify that
behavior and each exact import/export signature.

| Module name | Target kind | Work | Additional runtime authority |
| --- | --- | --- | --- |
| `main` | `binary` | Check results and call the three libraries | None |
| `io` | `shared` | Write readiness/result and read one stdin gate byte | None |
| `algorithm` | `shared` | Signed addition, real overflow catch and finally counters | None |
| `ros_comm` | `shared` | Acquire, publish once and close the native topic owner | Only `shared_pub` |

Only primitive i32/i64 values cross module boundaries. A packed i64 contains
status in its high 32 bits and a signed i32 value in its low 32 bits. Java
objects, byte-array addresses, ROS handles and borrowed pointers remain in the
module that owns them. This example provides no cross-module object ownership
or shared allocator. The requested static `.a` producer/consumer route remains
separate unfinished work.

With the installed pinned JVM closure and a common dispatcher that preserves
these kinds, build through the ordinary interface:

```sh
xmake f -p wasm-wasip1 -a wasm32 -c
xmake
```

An older dispatcher that forces binary must be replaced by the common owner;
do not rename executable output files and call them libraries. Every build
must retain the actual TeaVM compiler and annotation export receipt.

`launch.sh` contains the complete manual uwvm2-ros command. Run it from this
example directory, setting the absolute installed runtime/launcher, absolute
native gateway AF_UNIX socket, and explicitly trusted gateway numeric UID:

```sh
export UWVM_RUNTIME=/absolute/installed/bin/uwvm2-ros
export UWVM_ROS_GATEWAY_SOCKET=/absolute/gateway/ros2.sock
export UWVM_ROS_GATEWAY_UID=1000
sh launch.sh
```

The three `--wasm-preload-library` commands bind names `io`, `algorithm` and
`ros_comm`; `--wasm-set-main-module-name main` binds the application. Each name
is created explicitly as both a WASI Single target and a ROS2 Single target.
Global ROS is disabled. Only `ros_comm` is enabled and receives the single
topic grant and every required limit/QoS/audit field. The explicit
`disabled-test` DDS security profile, domain 42 and `rmw_fastrtps_cpp` are
laboratory inputs; provision the matching native gateway/peer independently.
Use an actual configured keystore/enclave and `enforce` when the deployment
requires DDS security. This script starts no gateway and performs no network
or permission discovery.

Every loaded module disables host environment inheritance. Default WASI keeps
basic standard-stream rights. No extra clock, random, directory or socket
permission is granted, including for `algorithm`. A run hook must submit
this exact policy without adding grants.

The main application really attempts `shared_pub` opens from `main`, `io`
and `algorithm`, requiring actual permission-denied errno 13 for each. It then
checks a normal sum, a caught overflow and both finally executions. `ros_comm`
opens its source and activates a real native publisher through the additive
`uwvm_ros2_rmw_v1` imports. The public `uwvm.ros.RmwPublisher` validates the
entire actual UMRE-v1 endpoint receipt, including source association, incarnation,
QoS, native GID and reserved extents. A bare capability open does not create a
DDS endpoint. Only successful native activation permits `io` to print
`UWVM_PRELOAD publisher-ready`. An
independent native ROS2 subscriber must already be present and observe this
publisher through DDS discovery before releasing the single stdin byte `g`.
For an interactive check, press `g` and Enter only after that observation.
An automated peer should control a pipe to stdin; a fixed delay is not a
discovery proof. The same native endpoint is inspected before one publish;
native retirement and source close are each attempted once, with separate
original status facts retained. Failure is never
replayed. The native subscriber must observe exactly the complete String
payload `uwvm-managed-preload` on `/sdk/shared/chatter`. Final guest JSON is
printed only after all guest assertions pass; it alone does not prove receipt
by that independent native peer.

Archive extraction, cross-language consumers, collision/mismatch rejection,
memory64 and QEMU AArch64 execution still need separate receipts.
