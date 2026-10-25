# Three real preload libraries (c → cpp, wasm64)

## Run through Xmake

Copy `deployment.template.json` to `deployment.json`, then review the runtime,
gateway, native type identity, connection and every module's explicit grants.
The template uses the same local topic policy as `gateway.conf.in`. Start the
native observer described below, then run:

```sh
xmake f --ros-run-config=deployment.json
xmake run main
```

The main target selects the deployment backend without receiving ROS authority.
Only `ros_comm` selects `call_boundary: "module-exports"` and owns the publication
grant. Removing that boundary opt-in makes cross-module ROS calls fail. The
launcher binds the gateway to the real stopped worker PID, verifies artifacts,
records execution and cleans up owned processes. For wasm64 it enables memory64
and table64 before loading any preload. Review the following direct CLI command
when operating the runtime independently of Xmake.

The application and all three libraries are genuine Core Wasm modules. Native Xmake `set_kind`, `add_deps` and public include propagation order their builds. Shared libraries are separate deployment inputs; they are never ELF shared objects or statically linked command stand-ins. This candidate's fresh native/QEMU acceptance is recorded separately from its source availability.

`algorithm` computes 7 × 6. `io` writes a line using WASI and owns its 96-byte transfer buffer. `ros_comm` owns one native publisher and sends two deliberately requested String samples, both `value=42`; failed operations are never replayed. One successful open has one independent close. The expected successful application output is `algorithm=42 ros=0 cleanup=0`.

Only primitive values and an IO generation token cross module boundaries. `begin(size)` accepts 1–96 bytes, `put(token,index,byte)` accepts the next sequential index and byte 0–255, and `commit`/`abort` retire the token. Tokens cannot be reused. ROS handles, strings and codec buffers remain owned by `ros_comm`. Never pass a raw caller-memory address as a callee-memory pointer. The actual modules declare their own memories; they import no memory/table and use no LLVM PIC/dylink ABI.

The build binds the reactor's actual `[] → []` initializer to a Core start section. The runtime runs it once in preload order; `_initialize` by name alone is insufficient, and applications must not call it again. Constructor lifetime is local to each module.

Default WASI retains basic standard-stream descriptor rights. No clock, random, filesystem, network or ROS grant is added for `algorithm`. Only `io` receives the explicit extra clock grant; only `ros_comm` receives ROS authority. `xmake run` does not add policy. Start a controlled local native peer before the following manual launch and verify the complete `value=42` observations there. Keep the loaded aliases exactly `io`, `algorithm`, `ros_comm`, and main name `main`.

```sh
export UWVM_ROS_SDK_ROOT=/absolute/path/to/sdk
xmake f -c -y
xmake -j1
```

| Module identity | Deployment artifact | Manual additional authority |
|---|---|---|
| `main` | `build/main/main.wasm` | None |
| `io` | `build/io/io.wasm` | WASI `monotonic-clock` for explicit discovery waits |
| `algorithm` | `build/algorithm/algorithm.wasm` | None; default WASI |
| `ros_comm` | `build/ros_comm/ros_comm.wasm` | This module's ROS Single `sample` publication |

```sh
source /opt/ros/noetic/setup.bash
export ROS_MASTER_URI=http://127.0.0.1:11397
export ROS_HOSTNAME=127.0.0.1 ROS_IP=127.0.0.1
# In another terminal: roscore -p 11397
# Observe in another terminal: rostopic echo -n 2 /uwvm_native_sdk/outgoing
```

```sh
# Set absolute installed paths for these two existing native programs.
UWVM=/absolute/path/to/uwvm2-ros
GATEWAY=/absolute/path/to/uwvm-ros1-gateway
socket=/tmp/uwvm-preload-$$.sock
# The shell stops before exec; its PID remains the real runtime worker PID.
sh -c 'kill -STOP "$$"; exec "$@"' worker "$UWVM" \
  --runtime-aot \
  --runtime-llvm-jit-call-stack unwind \
  --wasm-feature-enable-memory64 \
  --wasm-feature-enable-table64 \
  --wasm-set-main-module-name main \
  --wasip1-global-noinherit-system-environment \
  --wasm-feature-enable-memory64 \
  --wasm-feature-enable-table64 \
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
  --ros1-single-create ros_comm \
  --ros1-single-enable ros_comm \
  --ros1-single-call-boundary ros_comm module-exports \
  --ros1-single-node-name ros_comm uwvm_preload_gateway \
  --ros1-single-namespace ros_comm /uwvm_native_sdk \
  --ros1-single-master-uri ros_comm http://127.0.0.1:11397 \
  --ros1-single-advertise-host ros_comm 127.0.0.1 \
  --ros1-single-transport ros_comm tcpros \
  --ros1-single-gateway-socket ros_comm "$socket" \
  --ros1-single-gateway-uid ros_comm "$(id -u)" \
  --ros1-single-connect-timeout-ms ros_comm 5000 \
  --ros1-single-audit-deny-max-rate-hz ros_comm 100 \
  --ros1-single-audit-deny-burst ros_comm 100 \
  --ros1-single-audit-deny-max-records ros_comm 10000 \
  --ros1-single-audit-deny-max-bytes ros_comm 1048576 \
  --ros1-single-grant ros_comm sample topic.publish /uwvm_native_sdk/outgoing std_msgs/String 992ce8a1687cec8c8bd883ec73ca41d1 \
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


The complete gateway policy is [gateway.conf.in](gateway.conf.in). Its PID/UID/socket placeholders are replaced only after stopping the real worker; all connection, type identity, grants and limits are explicit. This noetic configuration targets only the local example topic. The runtime and gateway must use matching original native type identities.

For the denial variant, rebuild with `xmake f -c -y --denial-probe=y` followed by `xmake -a -j1`, and run the same explicit command. It attempts a monotonic clock, random bytes and direct ROS open from `algorithm`, expecting actual errors 76, 76 and 13 and output `algorithm clock=76 random=76 ros=13`. It performs no ROS publication. Do not add any grant for that module to make the test pass. The native peer and gateway resource logs must show no new entity/publication from the denied attempts.

Removing a required preload or changing its alias must reject import binding. Function signatures are exact Core types, including width-sensitive `uintptr_t`/offset APIs where used. The SDK rejects mixed target triples in one dependency graph. Different modules may export identical names; duplicate module aliases and artifact paths are conflicts. A scalar i32-only ABI does not inherently make a mixed-width pair invalid: width-sensitive negative tests must actually request incompatible signatures. Shared-module tests and indexed archive extraction tests have separate evidence; ordinary application execution does not qualify either kind. QEMU AArch64 acceptance remains pending until these exact hashes are run.
