# 三个真实预加载库（c → cpp，wasm64）

## 通过 Xmake 运行

将 `deployment.template.json` 复制为 `deployment.json`，逐项检查 runtime、gateway、
原生类型身份、连接和每个模块的显式权限。模板与 `gateway.conf.in` 使用相同的本地
topic 策略。先启动下文的原生观察节点，再执行：

```sh
xmake f --ros-run-config=deployment.json
xmake run main
```

main 目标只选择部署后端，部署配置没有授予它 ROS 权限。只有 `ros_comm` 声明
`call_boundary: "module-exports"` 并持有发布权限；移除此显式选项后，跨模块 ROS
调用将被拒绝。启动器绑定真实暂停 worker 的 PID，校验产物，记录执行并回收自己
启动的进程。wasm64 的 memory64 与 table64 特性在加载 Preload 前开启。
下文保留直接操作 runtime 的完整命令，方便手工部署审查。

主程序和 `io`、`algorithm`、`ros_comm` 都是独立 Core Wasm 模块。构建使用原生 Xmake `set_kind`、`add_deps` 和公开包含目录传播。共享库是必须单独部署的 `.wasm`；本候选源码的发布不代表已经完成当前字节的原生/QEMU 验收。

`algorithm` 计算 7 × 6；`io` 使用 WASI 输出并独占 96 字节缓冲区；`ros_comm` 独占真实 ROS 发布者，主动请求两次 `value=42` String 发布。失败后不重放操作。一次成功获取对应一次独立关闭，正常主程序输出 `algorithm=42 ros=0 cleanup=0`。

模块间只传递标量和 IO 代次令牌。`begin(size)` 只接受 1–96 字节，`put(token,index,byte)` 只接受下一个顺序下标及 0–255 字节，`commit` 或 `abort` 使该令牌退役，禁止复用。ROS 句柄、字符串和编解码缓冲区只在 `ros_comm` 内存中使用，不能把调用方裸指针当作被调用模块的指针。真实模块各自定义内存，不导入其他模块的内存或表，也不使用 LLVM PIC/dylink 模型。

构建把 reactor 的真实 `[] → []` 初始化函数绑定为 Core start 段，运行时按预加载顺序执行一次。仅存在名为 `_initialize` 的导出不会自动初始化；应用不能再次调用它。各模块分别管理构造和对象生命周期。

默认 WASI 仍保留基本标准流描述符权限；不能把它描述为完全没有描述符权能。`algorithm` 不增加时钟、随机数、文件系统、网络或 ROS 授权。只有 `io` 手动获得额外的单调时钟授权，只有 `ros_comm` 通过 ROS Single 获得发布权。`xmake run` 不扩大权限。先运行受控本地 ROS 观察者，再执行下面完整的手工命令，并在原生观察者中核实完整 `value=42`。预加载别名必须分别为 `io`、`algorithm`、`ros_comm`，主模块名为 `main`。

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


完整网关策略见 [gateway.conf.in](gateway.conf.in)。运行时 worker 先停止，再填写真实 PID/UID/socket；连接参数、原生类型身份、授权和全部限额都显式给出。此 noetic 配置只涉及本地示例主题，网关和运行时必须采用一致的原始原生类型身份。

拒绝授权版本用 `xmake f -c -y --denial-probe=y` 和 `xmake -a -j1` 重新构建，再执行相同手工命令。`algorithm` 实际尝试单调时钟、随机字节和直接 ROS 获取，分别应返回 76、76、13，输出 `algorithm clock=76 random=76 ros=13`，且不会发布 ROS 消息。不能给该模块补授权来让检查通过；原生观察日志和网关资源日志必须没有这些拒绝操作引发的新实体或发布。

缺失预加载或错误别名必须在导入绑定阶段拒绝。Core 函数类型必须完全匹配，宽度相关的 `uintptr_t`/偏移接口也必须匹配；SDK 会拒绝同一依赖图中混用不同目标 triple。不同模块可以导出同名函数，但重复模块别名或产物路径应报冲突。单纯 i32 标量接口本身不会让混合位宽必然非法，位宽负例必须真正构造不兼容的函数类型。共享模块与真实索引归档提取分别保留验收证据，普通应用执行不能替代库验收。当前哈希的 QEMU AArch64 运行仍需单独完成。
