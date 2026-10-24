# 四模块显式部署

先按[源码说明](README.zh_CN.md)构建，并按独立的单模块 native 构建说明 (`sdk/example/platform/nvidia-isaac-ros/c/ros2/original_array/DEPLOYMENT.zh_CN.md`)准备相同原始 registry、转换器及真实原始类型发布端。可复现纯接口包位于 `src/platform/nvidia-isaac-ros/native/first-array-jazzy/interfaces`；文件哈希与保留的官方生成证据见 `share/platform/nvidia-isaac-ros/native/first-array-jazzy/native-type-support-inputs.json`。加载 ROS2 Jazzy 后：

```sh
cmake -S "$UWVM_ROS_SDK_ROOT/src/platform/nvidia-isaac-ros/native/first-array-jazzy/interfaces" -B "$BUILD/interfaces" -DCMAKE_INSTALL_PREFIX="$BUILD/interfaces-install"
cmake --build "$BUILD/interfaces" --parallel 1
cmake --install "$BUILD/interfaces"
```

驱动保留 NVIDIA 两份原始 msg，使用官方 rosidl_default_generators 与标准依赖。交叉构建需配置实际目标工具链和 prefix。构建 gateway 前加载接口安装；这里只构建接口。原始 Array RIHS 为 `RIHS01_45595f343aa66856ae56aee87f959a0b0ceed2132b038a7f6c6d24be707bcbff`，九个原始类型 identity 均需核验。

复制 deployment.template.json 到操作者目录，填写真实 runtime/gateway 绝对路径。三份 preload 路径相对配置文件目录解析，必要时改成实际产物绝对路径；顺序为 io、algorithm、ros_comm，attribute 为 none。main 产物来自 Xmake main target。各模块保持独立内存和表。

只有 ros_comm 启用 ROS 并取得 sample Single 订阅。module-exports 显式允许经其标量导出 API 进入；调用者不获得直接 ROS 权限或 handle。main/io/algorithm 显式关闭 ROS，仅 IO 获得额外 WASI monotonic-clock。没有全局 ROS、继承系统环境、文件系统或网络授权。公共 gateway_arguments 为显式参数数组，本例为空。

topic/domain 必须匹配真实发布端。有限样本使用 `/sdk_fixture/nvidia/AprilTagDetectionArray`、domain 137、reliable/volatile keep-last depth 10、9872 字节消息、98720 字节队列、burst 10、262144 字节每秒。保留原始 RIHS 与 codec identity。超界完整值被拒绝，不截断字段；安全部署需替换测试安全设置。

```sh
export UWVM_ROS_RUN_CONFIG=/absolute/operator/deployment.json
xmake run main
```

wasm64 特性在首个 preload 前插入。保存新生成的 `.uwvm-ros/native-ros/run/original_array_modules-*`；分别记录 Xmake 外层状态和 execution.json 的准确 worker exit。配置和四份 Wasm 运行前后哈希须完全一致。核验四个模块、仅 ros_comm 的 ROS enablement/alias、仅 IO 的额外时钟、gateway 真实 worker PID、资源审计、全部原始字段/校验值和无强制终止的清理。

控制项：删除 ros_comm grant 为 ungranted；保留 grant 仅改 same-module 边界为祖先边界拒绝。两者均应返回 13、空 wire、零资源、native 无 subscriber。模式 1 的旧 poll/重复 close/old-again 为 9，reopen 为 0 且 handle 不同。模式 2 的旧 handle 为 9，alias reopen 为 125。正例模式 0 创建/关闭各一个资源。各项均检查 IO 旧 token 为 9 和全部权限探测。

验收范围为 Linux x86_64、QEMU AArch64 × 真实 wasm32/wasm64 × positive/ungranted/same-module/close/revoke，仅覆盖此 C/C++ 标量流水线与原始 DDS 消息。NITROS 协商、native GPU、全语言和全部库目录仍需独立验收。
