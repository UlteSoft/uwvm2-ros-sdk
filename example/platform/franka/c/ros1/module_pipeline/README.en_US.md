# Four modules, three local policy boundaries, one native ROS role

This source candidate awaits the common `binary/shared/static` implementation.
No shared library, archive extraction, native bridge, or module permission test
is marked passed here. A successfully compiled application cannot establish any
of those properties.

`main` imports scalar functions from `io`, `algorithm`, and
`ros_comm`. `io` writes through its own WASI standard streams. `algorithm`
computes from actual native bytes' digest and links `algorithm_core.a`
transitively. Default WASI still permits basic standard-stream operations;
algorithm has no additional resource or ROS grants. `ros_comm` alone gets the
explicit subscription and monotonic timer. Each module retains its own memory.
No pointer, text view, or ROS handle crosses a library boundary.
The additional `width_echo(uintptr_t)` carries opaque integer bits, never an
address. It deliberately binds algorithm to the selected target width. Main
checks a value above 32 bits on memory64, so narrowing cannot silently pass.

Each library constructor writes its own volatile initialization state. Main
requires io=201, algorithm=202 and ros_comm=203 before its first library
operation; missing initialization returns 78. The extracted archive constructor
runs at priority 101, and algorithm's priority-201 constructor records success
only after observing the archive's state 101. Both static consumers also require
that actual archive state. No entry point calls `_initialize` or initializes
lazily. Qualification must inspect each shared Wasm's Core start section and
observe the actual preload initialization before main. Exporting `_initialize`
without running it cannot pass this check. Application execution alone cannot
establish the shared modules' initialization order.
Constructors emit and flush `io-init`, `archive-init`, `algorithm-init` and
`ros-init`. Main emits and flushes `main-enter` before calling any export. Assert
each init marker occurs once before main-enter, with archive-init before
algorithm-init. This detects linker-generated lazy export wrappers, which could
otherwise make a state-only check pass. The static consumers similarly require
archive-init before their own entry marker. Algorithm's trace uses only the
default basic WASI standard streams. Keep these trace assertions and the real
Core start section inspection as independent requirements.

The ROS module decodes one complete original `std_msgs/String`, computes FNV-1a
over every admitted UTF-8 byte, and copies only byte count/digest scalars to the
caller. The example quota is 252 text bytes, with strict UTF-8 and no embedded
NUL. It preserves an empty string. These are example limits, not upstream schema
edits. Only idle errno 11 permits another poll; all other failures stop. Open,
activation, consumed events and uncertain closes are never replayed. Cleanup
status remains independent of the primary failure.

## Build and artifact contracts

Set `UWVM_ROS_SDK_ROOT` and select a width explicitly:

```sh
xmake f -c -p wasm-wasip1 -a wasm32
xmake main
xmake static_check_c
xmake static_check_cpp
xmake algorithm_wrong
```

The default dynamic deployment is exactly `build/main.wasm`, `build/io.wasm`,
`build/algorithm.wasm`, and `build/ros_comm.wasm`. The real relocatable archive
belongs at `.uwvm-ros/lib/libalgorithm_core.a`. It must contain Wasm object
members and the actual `franka_module_algorithm_core` definition, verified with
the same pinned LLVM archive/symbol tools used by the common producer.
`static_build/static_check_c.wasm` and `static_check_cpp.wasm` each deploy alone.
After retaining the initialization/entry traces, feed an unsigned decimal value
at runtime; the C and genuine C++ consumers call
the separately compiled C definition. Their results must agree for 0, 1,
2147483648 and 4294967295, and refuse malformed/out-of-range input.

Repeat with `-a wasm64`; inspect actual memory64 flags and execute the produced
modules. Do not silently narrow a target or call a native host archive a Wasm
archive. Common producers must preserve ordinary target kind, dependencies,
filename, target directory and public includes. Current older producers that
force `binary` do not satisfy this example.

The module ABI uses ordinary Core Wasm function imports. LLVM PIC/dylink support
is not inferred. A library must really preload and bind its declared exports.
The module functions contain no cross-module memory imports or borrowed-pointer
API, so memory ownership remains local for the process lifetime.

## Explicit manual Noetic setup

Use an installed runtime and source-paired native Noetic gateway. Source Noetic
in each native terminal. In separate terminals start `roscore`, then publish
real changing input, for example:

```sh
rostopic pub -r 5 /sdk_franka_modules/input std_msgs/String "data: 'native module input'"
```

The String identity is the original ROS1 MD5
`992ce8a1687cec8c8bd883ec73ca41d1` (`string data`). Keep a native `rostopic echo`
observation and compare the full text's byte count/digest with the guest output.
This is a standard ROS message exercise, not custom Franka registry acceptance.

Use the exact loaded identities below. `--wasm-preload-library` takes a path and
optional rename; each rename matches the source import module. `main` is bound
with `--wasm-set-main-module-name`. No global ROS grant appears. Replace only the
two installed executable paths before deliberately running these manual commands:

```sh
module_runtime=/absolute/installed/uwvm2-ros
module_gateway=/absolute/installed/uwvm-ros1-gateway
module_session=$(mktemp -d)
module_uid=$(id -u)
bash -c 'kill -STOP "$$"; exec "$@"' module-worker "$module_runtime" -Rint \
  --wasm-preload-library build/io.wasm io \
  --wasm-preload-library build/algorithm.wasm algorithm \
  --wasm-preload-library build/ros_comm.wasm ros_comm \
  --wasm-set-main-module-name main \
  --wasip1-single-create main --wasip1-single-create io \
  --wasip1-single-create algorithm --wasip1-single-create ros_comm \
  --wasip1-single-noinherit-system-environment main \
  --wasip1-single-noinherit-system-environment io \
  --wasip1-single-noinherit-system-environment algorithm \
  --wasip1-single-noinherit-system-environment ros_comm \
  --wasip1-single-grant ros_comm monotonic-clock \
  --ros1-single-create main --ros1-single-create io \
  --ros1-single-create algorithm --ros1-single-create ros_comm \
  --ros1-single-disable main --ros1-single-disable io --ros1-single-disable algorithm \
  --ros1-single-enable ros_comm \
  --ros1-single-master-uri ros_comm http://127.0.0.1:11311 \
  --ros1-single-node-name ros_comm sdk_franka_preload \
  --ros1-single-namespace ros_comm /sdk_franka_modules \
  --ros1-single-advertise-host ros_comm 127.0.0.1 \
  --ros1-single-transport ros_comm tcpros \
  --ros1-single-gateway-socket ros_comm "$module_session/ros1.sock" \
  --ros1-single-gateway-uid ros_comm "$module_uid" \
  --ros1-single-connect-timeout-ms ros_comm 5000 \
  --ros1-single-audit-deny-max-rate-hz ros_comm 100 \
  --ros1-single-audit-deny-burst ros_comm 100 \
  --ros1-single-audit-deny-max-records ros_comm 10000 \
  --ros1-single-audit-deny-max-bytes ros_comm 1048576 \
  --ros1-single-grant ros_comm sample topic.subscribe /sdk_franka_modules/input \
    std_msgs/String 992ce8a1687cec8c8bd883ec73ca41d1 \
  --ros1-single-set ros_comm sample max-message-bytes 256 \
  --ros1-single-set ros_comm sample max-rate-hz 10 \
  --ros1-single-set ros_comm sample burst 1 \
  --ros1-single-set ros_comm sample max-bytes-per-second 4096 \
  --ros1-single-set ros_comm sample max-queue-bytes 4096 \
  --ros1-single-set ros_comm sample overflow-policy drop-oldest \
  --ros1-single-set ros_comm sample validator none \
  --ros1-single-set ros_comm sample audit allow-and-deny \
  --ros1-single-set ros_comm sample max-subscribers 1 \
  --ros1-single-set ros_comm sample queue-depth 10 \
  --ros1-single-set ros_comm sample transport tcpros \
  --run build/main.wasm > "$module_session/guest.log" 2>&1 &
module_worker_pid=$!
```

The deliberately stopped worker keeps its PID across `exec`. Before continuing,
create its explicit gateway whitelist with matching connection and finite limits:

```sh
cat > "$module_session/gateway.conf" <<EOF
backend ros1
worker-uid $module_uid
worker-pid $module_worker_pid
socket $module_session/ros1.sock
timeout-ms 10000
max-sessions 16
audit-max-records-per-second 100
audit-max-records 10000
audit-max-bytes 1048576
connection master-uri http://127.0.0.1:11311
connection node-name sdk_franka_preload
connection namespace /sdk_franka_modules
connection advertise-host 127.0.0.1
connection transport tcpros
grant sample topic.subscribe /sdk_franka_modules/input std_msgs/String 992ce8a1687cec8c8bd883ec73ca41d1
set sample max-message-bytes 256
set sample max-rate-hz 10
set sample burst 1
set sample max-bytes-per-second 4096
set sample max-queue-bytes 4096
set sample overflow-policy drop-oldest
set sample validator none
set sample audit allow-and-deny
set sample max-subscribers 1
set sample queue-depth 10
set sample transport tcpros
EOF
chmod 600 "$module_session/gateway.conf"
"$module_gateway" "$module_session/gateway.conf" > "$module_session/gateway.log" 2>&1 &
module_gateway_pid=$!
```

Check that the worker is actually stopped and the socket exists before
`kill -CONT "$module_worker_pid"`. Record `wait "$module_worker_pid"`'s original
exit status. Then terminate and reap only `module_gateway_pid`. Keep the guest,
gateway and native peer logs; remove the owned session directory after review.
No Xmake build/run hook writes this policy or expands its permissions.

Only ros_comm has a runtime ROS grant. The gateway whitelist is the separate
process-level native boundary; it is not a global runtime grant. All four modules
keep basic WASI standard-stream rights. Ros_comm alone additionally receives the
finite monotonic timer needed for idle supervision.

## Required independent negative checks

Main, io, and algorithm each call their own actual ROS imports and must report
packed denial value 13 with zero cleanup error. A successful open followed by a
failed close cannot masquerade as denial. Positive native observation, all three
denials, primary zero and cleanup zero are separate assertions.

Replace the algorithm preload path with `negative_build/algorithm_wrong.wasm`
while retaining module name `algorithm`. Its i64-to-i64 `step` must be rejected
against main's i32-to-i32 import before communication. Loading two modules under
the same rename must also be rejected. Same export names in distinct module
names are intentional and must bind by both module and export identity.
Separately mix wasm32 algorithm with wasm64 main, then the converse. The explicit
width_echo ABI must be rejected as i32 versus i64 before communication. Independent
module memories with only width-invariant scalar imports do not inherently create
a width mismatch; this fixture tests an actual incompatible function signature.

For memory64 add both documented memory64/table64 parser flags manually to the
same command and use the actually built memory64 files. Finally repeat the real
runtime/native-peer path on QEMU AArch64 with the shared qualified launcher,
recording QEMU/version, runtime ELF/hash, module hashes, cgroup limits and cleanup.
No architecture inspection, binary application pass or native `.so` qualifies
those library tests. Other language producers/consumers need their own genuine
adapter acceptance and are not implied by these C/C++ source declarations.
