# Genuine PHP preload modules

This guide describes a genuine PHP algorithm reactor consumed by a C entry, with separate C++ I/O and ROS communication modules. The verified native scope is wasm32, noeh, ROS1 String on x86 and QEMU AArch64. Memory64, native ROS2 and the complete vendor catalog remain separate acceptance work.

## Genuine PHP computation with three Core libraries

Status: current genuine cold source construction and reactor linking passed.
This four-module project passed public native-v2 `xmake run`
on x86_64 and QEMU AArch64: positive standard String publication, module-export
denial, missing-grant denial and complete peer/worker/gateway cleanup. The same
four Wasm bytes per language were used across hosts. Only ros_comm held the
explicit grant; the complete native wire body was `0800000076616c75653d3432`.
Installed capability metadata is in `share/language/php/module-status.json`.
The pinned source and artifact identities are recorded in
`lib/language/php/ros1/module/runtime.json`. Scope is wasm32/noeh
and this ROS1 String example; R remains incomplete.

The ordinary targets are main (C binary), io (C++ shared), algorithm (PHP shared)
and ros_comm (C++ shared). `add_deps` builds the three actual libraries first.
The PHP interface carries exact i32 values and independent statuses. IO owns a
96-byte buffer addressed by a checked generation token and sequential byte calls.
Commit/abort retire the token. The ROS capability, codec buffers and native
strings stay in ros_comm's memory. No raw pointer crosses a module boundary.

Build with `UWVM_ROS_SDK_ROOT` selecting the installed SDK, then `xmake f -c -y`
and `xmake`. The four outputs are build/main/main.wasm, build/io/io.wasm,
build/algorithm/algorithm.wasm and build/ros_comm/ros_comm.wasm. C++ reactors use
the public Core constructor start binding; the genuine PHP template initializes
its VM on the first explicit scalar call and retires once.

Review every field in deployment.template.json, copy it to deployment.json and
select it with `xmake f --ros-run-config=/absolute/deployment.json` before
`xmake run main`. Or use the unchanged canonical launcher directly:

```sh
python3 -B "$UWVM_ROS_SDK_ROOT/tools/platform/ros/run.py" \
  --config /absolute/deployment.json --backend ros1 --distribution noetic \
  --target wasm32-wasip1 --scenario preload_modules \
  --wasm "$PWD/build/main/main.wasm" --report-directory "$PWD/run-evidence"
```

Every loaded name has its own WASI/ROS Single binding. Algorithm keeps default
WASI, including basic standard streams, and receives no extra grants. IO alone
receives monotonic-clock for two explicit discovery waits; only ros_comm receives
the exact sample/topic.publish/std_msgs/String grant. Its native identity is the
original Noetic MD5 992ce8a1687cec8c8bd883ec73ca41d1. Only ros_comm opts in to
module-exports ROS delegation. The identical sample alias is denied in main,
io and algorithm; algorithm's ungranted timer returns76. No global ROS grant is
used. Removing module-exports or the comm grant must reject publication.

Start an original Noetic master on port11369 and an independent std_msgs/String
observer on /uwvm_arm_ros1/outgoing. PHP computes42 from the supplied7; ros_comm
sends two explicitly requested native String samples value=42, and closes the
single acquired publisher exactly once. A failed effect is never replayed.
The native serializer's complete body must be 0800000076616c75653d3432.
The successful IO line is:

```text
php=42 ros=0 cleanup=0 main=13 io=13 algorithm=13 clock=76
```

The complete manual worker/gateway command below matches gateway.conf.in and
its reviewed explicit policy. Supply real installed runtime/gateway paths and
matching native definitions. Policy PID/UID/socket fields bind the gateway to
the actual stopped worker. No native peer or physical controller is started by
the canonical launcher.

```sh
# Set absolute installed paths for these two existing native programs.
UWVM=/absolute/path/to/uwvm2-ros
GATEWAY=/absolute/path/to/uwvm-ros1-gateway
socket=/tmp/uwvm-preload-$$.sock
# The shell stops before exec; its PID remains the real runtime worker PID.
sh -c 'kill -STOP "$$"; exec "$@"' worker "$UWVM" \
  --runtime-aot \
  --runtime-llvm-jit-call-stack unwind \
  --wasm-set-main-module-name main \
  --wasip1-global-noinherit-system-environment \
  --wasm-preload-library "build/io/io.wasm" io \
  --wasm-set-preload-module-attribute io none \
  --wasm-preload-library "build/algorithm/algorithm.wasm" algorithm \
  --wasm-set-preload-module-attribute algorithm none \
  --wasm-preload-library "build/ros_comm/ros_comm.wasm" ros_comm \
  --wasm-set-preload-module-attribute ros_comm none \
  --wasip1-single-create io \
  --wasip1-single-enable io \
  --wasip1-single-noinherit-system-environment io \
  --wasip1-single-create algorithm \
  --wasip1-single-enable algorithm \
  --wasip1-single-noinherit-system-environment algorithm \
  --wasip1-single-create ros_comm \
  --wasip1-single-enable ros_comm \
  --wasip1-single-noinherit-system-environment ros_comm \
  --wasip1-single-create main \
  --wasip1-single-enable main \
  --wasip1-single-noinherit-system-environment main \
  --wasip1-single-grant io monotonic-clock \
  --ros1-single-create main \
  --ros1-single-disable main \
  --ros1-single-create io \
  --ros1-single-disable io \
  --ros1-single-create algorithm \
  --ros1-single-disable algorithm \
  --ros1-single-create ros_comm \
  --ros1-single-enable ros_comm \
  --ros1-single-call-boundary ros_comm module-exports \
  --ros1-single-node-name ros_comm uwvm_ruby_preload_gateway \
  --ros1-single-namespace ros_comm /uwvm_native_sdk \
  --ros1-single-master-uri ros_comm http://127.0.0.1:11369 \
  --ros1-single-advertise-host ros_comm 127.0.0.1 \
  --ros1-single-transport ros_comm tcpros \
  --ros1-single-gateway-socket ros_comm "$socket" \
  --ros1-single-gateway-uid ros_comm "$(id -u)" \
  --ros1-single-connect-timeout-ms ros_comm 5000 \
  --ros1-single-audit-deny-max-rate-hz ros_comm 100 \
  --ros1-single-audit-deny-burst ros_comm 100 \
  --ros1-single-audit-deny-max-records ros_comm 10000 \
  --ros1-single-audit-deny-max-bytes ros_comm 1048576 \
  --ros1-single-grant ros_comm sample topic.publish /uwvm_arm_ros1/outgoing std_msgs/String 992ce8a1687cec8c8bd883ec73ca41d1 \
  --ros1-single-set ros_comm sample max-rate-hz 100 \
  --ros1-single-set ros_comm sample burst 8 \
  --ros1-single-set ros_comm sample max-bytes-per-second 1048576 \
  --ros1-single-set ros_comm sample validator none \
  --ros1-single-set ros_comm sample audit allow-and-deny \
  --ros1-single-set ros_comm sample audit-max-rate-hz 100 \
  --ros1-single-set ros_comm sample audit-burst 100 \
  --ros1-single-set ros_comm sample audit-max-records 10000 \
  --ros1-single-set ros_comm sample audit-max-bytes 1048576 \
  --ros1-single-set ros_comm sample max-message-bytes 256 \
  --ros1-single-set ros_comm sample max-queue-bytes 2048 \
  --ros1-single-set ros_comm sample overflow-policy drop-oldest \
  --ros1-single-set ros_comm sample max-publishers 1 \
  --ros1-single-set ros_comm sample queue-depth 8 \
  --ros1-single-set ros_comm sample transport tcpros \
  --ros1-single-set ros_comm sample latch false \
  --run "build/main/main.wasm" >worker.stdout 2>worker.stderr &
worker=$!
while ! ps -o state= -p "$worker" | tr -d ' ' | grep -q '^T'; do
  kill -0 "$worker" || exit 1
  sleep 0.02
done
sed -e "s/@WORKER_UID@/$(id -u)/g" -e "s/@WORKER_PID@/$worker/g" \
    -e "s|@SOCKET@|$socket|g" gateway.conf.in >gateway.conf
chmod 600 gateway.conf
"$GATEWAY" "$PWD/gateway.conf" >gateway.log 2>&1 &
gateway=$!
while [ ! -S "$socket" ]; do
  kill -0 "$gateway" || { kill -KILL "$worker"; exit 1; }
  sleep 0.05
done
kill -CONT "$worker"
wait "$worker"
result=$?
kill "$gateway"
wait "$gateway" 2>/dev/null || true
cat worker.stdout
exit "$result"
```

The gateway template contains every connection field, limit, exact grant and
native identity. Default WASI is not zero descriptor authority. Physical AArch64 hosts,
memory64, ROS2, static targets and other source-language combinations remain
separate acceptance dimensions.
