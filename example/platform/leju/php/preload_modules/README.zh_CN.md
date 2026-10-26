# PHP 真实计算与三个 Core 共享库

状态：本轮真实冷源码构建与共享模板链接已通过。source-r41 的这组四模块
已在 x86_64 与 QEMU AArch64 上通过公共 native-v2 `xmake run` 的正向
标准 String 发布、模块边界拒绝、缺失授权拒绝，并完成 peer、worker、gateway
清理；每种语言在两种宿主上使用相同四个 Wasm。只有 ros_comm 有显式授权，
完整原生序列化为 `0800000076616c75653d3432`。精确回执保存在独立审查包的
`review/four-module-native-current.json`。范围仅限 wasm32/noeh 与本 ROS1
String 示例；R 仍未完成。

main 是 C binary；io 为 C++ shared；algorithm 为 PHP shared；ros_comm 为
C++ shared。普通 add_deps 保证三个真实库先构建。只传精确标量和 IO 代际令牌；
IO 的96字节缓冲区由顺序 put、commit/abort 管理，令牌退出后不可复用。ROS 所有者、
编解码缓冲区和原生字符串留在 ros_comm 的内存中，不跨模块传原始指针。

设置 UWVM_ROS_SDK_ROOT 后执行 xmake f -c -y 和 xmake，生成 build/main/main.wasm、
build/io/io.wasm、build/algorithm/algorithm.wasm、build/ros_comm/ros_comm.wasm。
C++ reactor 使用公共 Core 构造启动绑定；PHP 模板在首次显式标量调用时启动真实
VM，退出后禁止复活。

逐项审查 deployment.template.json 并复制为 deployment.json，通过
xmake f --ros-run-config=/absolute/deployment.json 选择，然后 xmake run main。
也可执行以下唯一公共入口；参数与策略均由操作者明确提供：

```sh
python3 -B "$UWVM_ROS_SDK_ROOT/tools/platform/ros/run.py" \
  --config /absolute/deployment.json --backend ros1 --distribution noetic \
  --target wasm32-wasip1 --scenario preload_modules \
  --wasm "$PWD/build/main/main.wasm" --report-directory "$PWD/run-evidence"
```

每个模块名都有独立 WASI/ROS Single 绑定。算法仅保留默认 WASI（含基本标准流），
不追加权限；IO 的两次显式发现等待单独授予 monotonic-clock。只有 ros_comm 获得
精确 sample/topic.publish/std_msgs/String 授权，其原生 Noetic MD5 为
992ce8a1687cec8c8bd883ec73ca41d1，且显式选择 module-exports 调用边界。
main、io、algorithm 对相同 sample 别名都须返回13，算法的无授权计时器须返回76。
不使用全局 ROS 授权；去掉委托边界或通信模块的授权必须拒绝发布。

先在本机11369端口启动原始 Noetic master，并由独立 std_msgs/String 对端观察
/uwvm_arm_ros1/outgoing。PHP 由参数7计算42，通信模块显式发送两条 value=42
原生样本并关闭唯一获取的发布者一次，失败操作不重放。原生序列化的完整正文必须是
0800000076616c75653d3432，成功 IO 行为：

```text
php=42 ros=0 cleanup=0 main=13 io=13 algorithm=13 clock=76
```

以下完整手工命令与 gateway.conf.in 一致，显式声明预加载名、所有 Single、连接、
授权、限额和原生身份。网关 UID/PID/socket 在停止真实 worker 后绑定。操作者须填写
实际程序和原生安装；公共运行器不启动原生对端或实体控制器。

```sh
# Set absolute installed paths for these two existing native programs.
UWVM=/absolute/path/to/uwvm2-ros
GATEWAY=/absolute/path/to/uwvm-ros1-gateway
socket=/tmp/uwvm-preload-$$.sock
# The shell stops before exec; its PID remains the real runtime worker PID.
sh -c 'kill -STOP "$$"; exec "$@"' worker "$UWVM" \
  --runtime-aot \
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

默认 WASI 仍有基本描述符权限。此新示例的正向原生隔离、QEMU 物理 AArch64 宿主/编译器、memory64、
静态目标和其他语言组合均须单独实际验收。
