# Original service alias revocation

This standalone C++ application opens two owners of `sample`, makes one complete original read request, then revokes the alias. The still-local second owner must return9; reopening must return125. The full canonical sentinel response must remain unchanged, and checked stale-owner close returns9. Every local owner is then retired. No operation is retried.

Build from this example directory with the installed public SDK:

```sh
export UWVM_ROS_SDK_ROOT=/path/to/sdk
xmake f -p wasm-wasip1 -a wasm32
xmake
# Repeat in a separate build directory with -a wasm64.
```

Copy `native.json` to an operator-owned location and replace only the runtime/gateway placeholders with the matching complete vendor pair. Preserve its explicit resource, native RIHS, codec identity, QoS and two-owner max-inflight2. Default WASI basic streams remain; there are no extra WASI grants. Native ROS is selected only at execution time.

```sh
python3 "$UWVM_ROS_SDK_ROOT/tools/platform/ros/run.py" \
  --config /path/to/manual-native.json --backend ros2 --distribution jazzy \
  --target wasm32-wasip1 --scenario read_single_io \
  --wasm /path/to/application.wasm --report-directory /path/to/reports
```

The independent native peer must observe exactly one request and one complete response, including native CDR, then normal cleanup. A worker JSON `passed:true` alone is insufficient. Confirm peer request count1, all response fields, 9/125 outcomes, equal sentinel hex, separate cleanup9, and public worker/gateway reaping. The controlled peer is x86_64; AArch64 qualification means the actual VM and gateway ran under QEMU, not an ARM peer or physical robot.
