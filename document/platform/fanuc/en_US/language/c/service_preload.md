# Original FANUC service through a C/C++ Wasm graph

The C main links one genuine C++ static archive and calls three separately built Core Wasm shared modules. `io` is C++ and writes through its own WASI stdout. `algorithm` owns its own canonical-byte buffer and checks all seven floating fields plus the original result. Only `ros_comm` receives the manually selected original GetPayloadValue service grant. The main, IO and algorithm each attempt an ungranted alias open and require13. Default WASI basic standard streams remain; no additional environment, directory, clock or ROS resource authority is granted to those modules.

The C++ archive derives schedule7 from input2. Its public header and FANUC_REQUEST_SCALE definition reach the C main through ordinary add_deps/public include propagation. The unused second archive object is checked separately. libbridge_static.a is a build input; it is never loaded or deployed. Deploy exactly main.wasm,io.wasm,algorithm.wasm,ros_comm.wasm plus your manually reviewed native configuration. Native ROS is not a build prerequisite.

Build the standalone project with the public SDK:

```sh
export UWVM_ROS_SDK_ROOT=/path/to/sdk
xmake f -p wasm-wasip1 -a wasm32
xmake main
# Use a separate project/build copy with -a wasm64 for the other width.
```

Each target uses set_kind(binary/shared/static),set_language(c/cpp),set_ros_platform(fanuc),Jazzy and the same selected width. Public artifact records under .uwvm-ros/artifacts identify the four Wasm outputs and the archive. The shared modules use actual Core preload exports with module-owned memory/table and initialized reactors; they are not LLVM PIC/dylink objects. No pointer or memory/table import crosses this graph. Scalar byte getters and setters copy the full32-byte response after the ROS owner has closed. Response storage remains owned by ros_comm for the lifetime of that module instance. Guarded byte getters return256 out of bounds; algorithm writes return22 without commit; incomplete assembly returns11.

The exact ordered preload options are below. For wasm64, memory64/table64 features must appear before preload loading; the public native-v2 runner emits this order automatically from --target wasm64-wasip1.

```text
--wasm-feature-enable-memory64 --wasm-feature-enable-table64
--wasm-preload-library /path/to/io.wasm io --wasm-set-preload-module-attribute io none
--wasm-preload-library /path/to/algorithm.wasm algorithm --wasm-set-preload-module-attribute algorithm none
--wasm-preload-library /path/to/ros_comm.wasm ros_comm --wasm-set-preload-module-attribute ros_comm none
```

Omit the first feature line for wasm32. The four committed deployment JSON files are complete manual policy templates. Replace runtime/gateway and Wasm placeholders with your matching native vendor pair and four module paths. Keep all grant,QoS,native RIHS,codec identity and resource limits unchanged unless you deliberately authorize a different policy. The positive and controller-refusal policies select call_boundary:module-exports only for ros_comm. The boundary_denied policy retains that same service grant but keeps same-module, so an imported export cannot use it. The ungranted policy permits export calls but removes ros_comm's ROS grant. No global ROS enable/grant appears. Each actual loaded identity has its own Single WASI/ROS configuration; main/io/algorithm keep ROS disabled and zero grants.

Run each separately with the public launcher; this example has no permission-widening run hook:

```sh
python3 "$UWVM_ROS_SDK_ROOT/tools/platform/ros/run.py"   --config /path/to/manual-deployment-positive.json --backend ros2 --distribution jazzy   --target wasm32-wasip1 --scenario get_payload_value   --wasm /path/to/main.wasm --report-directory /path/to/reports
```

The public runner binds fresh stopped-worker PIDs and starts only the ros_comm gateway. Keep positive,controller_refusal,boundary_denied,ungranted reports separate. A successful verifier worker exits0 in every expected mode; its primary field remains0,5,13,13 respectively. Native peers observe1,1,0,0 requests per mode. Refusal keeps all seven floats and result−7; RPC status and close remain0. Every successful mode separately requires main/io/algorithm denial13,actual C++ WASI output,the complete copied-wire checksum,byte guards and process cleanup. Independent peer fields/CDR,artifact kind/ABI evidence and dynamic-call boundary evidence are separate acceptance records. No physical robot,ARM-native peer,all-language library support or full catalog transport is implied.
