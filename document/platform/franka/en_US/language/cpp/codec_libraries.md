# Complete-record static and shared codecs

The `cpp` examples `codec_static` and `codec_shared` preserve every original
field of `franka_msgs/FrankaState`.
They use ordinary Xmake `static`, `shared`, and `binary` kinds with `add_deps`.
Each library owns the typed value and all input/output buffers. Shared calls
transfer uint32 bytes and lengths; they do not transfer pointers or C++ objects.

Set `UWVM_ROS_SDK_ROOT` to the installed SDK. In either standalone project run:

```sh
xmake f --plat=wasm-wasip1 --arch=wasm32
xmake -j2 main
```

Choose `wasm64` explicitly for the other width. The SDK uses its qualified LLVM
23 closure. Its wasm64 Preview 1 ABI is an Uwvm extension, not an upstream WASI
Preview 1 specification. The static archive is a build input; deploy only
`build/main/main.wasm`. The shared deployment also requires
`build/record_codec/record_codec.wasm`, preloaded as `record_codec`.

Copy `deployment.template.json` to `deployment.json`. Set the installed runtime
and gateway paths, retain the explicit module policies, and replace the sole
argument with a complete hexadecimal wire value. Use the public launcher:

```sh
python3 "$UWVM_ROS_SDK_ROOT/tools/platform/ros/run.py" \
    --config deployment.json --backend ros1 --distribution noetic \
    --target wasm32-wasip1 --scenario codec_static \
    --wasm build/main/main.wasm --report-directory verification
```

For the shared project select `codec_shared`; for wasm64 select
`wasm64-wasip1`. All modules explicitly disable ROS and list no additional WASI
grants. Basic WASI standard streams remain available. The launcher grants no
additional authority and starts no native peer for these codec deployments.

The program checks real eager constructor state before its first library call.
It decodes and re-encodes the complete input, then prints the actual encoded
bytes. Invalid hexadecimal input, truncation, malformed fields and trailing
bytes preserve a nonzero primary status. Cleanup is reported separately.
No lazy initializer repair or cross-memory pointer assumption is used.

The exact tested source revisions passed both widths, ordinary static/shared
loading, constructor checks and complete-value/error checks. Their private
receipts remain outside the distributed SDK. Native ROS state delivery and
AArch64 execution require separate evidence. The common dispatcher routes every vendor through the same public launcher.
After preparing the manual deployment file, use
`UWVM_ROS_RUN_CONFIG=deployment.json xmake run main`.
The original receipts used the direct launcher command above; the exact
vendor Xmake run path remains a separate execution check.
