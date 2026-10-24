# 通过 C/C++ Wasm 模块图调用原始 FANUC 服务

C main 链接一个真实 C++ 静态 archive，并调用三个单独构建的 Core Wasm shared 模块。`io` 使用 C++ 和自身的 WASI stdout。`algorithm` 拥有独立 canonical-byte 缓冲区，检查全部七个浮点字段和原始 result。只有 `ros_comm` 获得手动选择的原始 GetPayloadValue 服务授权。main、io 和 algorithm 各自尝试打开未授权别名并要求返回13。默认 WASI 基础标准流保留；这些模块没有额外环境、目录、时钟或 ROS 资源授权。

C++ archive 根据输入2计算 schedule7；公开头文件和 FANUC_REQUEST_SCALE 宏通过普通 add_deps/public include 传播到 C main。另一个未使用的 archive object 单独核验。libbridge_static.a 仅为构建输入，不加载、不部署。部署只有 main.wasm、io.wasm、algorithm.wasm、ros_comm.wasm，以及操作者手动审阅的原生配置。构建不需要原生 ROS。

使用公共 SDK 构建独立项目：

```sh
export UWVM_ROS_SDK_ROOT=/path/to/sdk
xmake f -p wasm-wasip1 -a wasm32
xmake main
# Use a separate project/build copy with -a wasm64 for the other width.
```

每个 target 使用 set_kind(binary/shared/static)、set_language(c/cpp)、set_ros_platform(fanuc)、Jazzy 和同一个真实位宽。.uwvm-ros/artifacts 中的公共 artifact 记录列出四个 Wasm 输出和 archive。shared 模块使用真实 Core preload 导入/导出，具有模块自有 memory/table 和初始化 reactor，不是 LLVM PIC/dylink。模块之间不传指针，不导入共享 memory/table。ROS owner 关闭后，标量 byte getter/setter 复制完整32字节响应；响应存储在 ros_comm 模块实例存续期间归该模块所有。越界 getter 返回256；无效 algorithm 写入返回22且不提交；未完成组装返回11。

确切的 preload 顺序如下。wasm64 的 memory64/table64 feature 必须在加载 preload 前出现；公共 native-v2 启动器根据 --target wasm64-wasip1 自动按这个顺序生成命令。

```text
--wasm-feature-enable-memory64 --wasm-feature-enable-table64
--wasm-preload-library /path/to/io.wasm io --wasm-set-preload-module-attribute io none
--wasm-preload-library /path/to/algorithm.wasm algorithm --wasm-set-preload-module-attribute algorithm none
--wasm-preload-library /path/to/ros_comm.wasm ros_comm --wasm-set-preload-module-attribute ros_comm none
```

wasm32 省略第一行 feature。四个 deployment JSON 是完整的手动策略模板。将 runtime/gateway 和 Wasm 占位符改为对应原生厂商配对及四个模块路径。除非操作者明确授权修改，否则保留全部 grant、QoS、原生 RIHS、codec identity 和资源限额。positive 与 controller_refusal 仅为 ros_comm 设置 call_boundary:module-exports。boundary_denied 保留相同服务 grant，但采用默认 same-module，因此跨模块导出调用不能使用它。ungranted 允许导出委托但移除 ros_comm 的 ROS grant。没有全局 ROS enable/grant。每个真实加载 identity 分别绑定自己的 Single WASI/ROS 配置；main/io/algorithm 的 ROS 关闭且 grant 为空。

逐例使用公共启动器运行；例子不含扩权 run hook：

```sh
python3 "$UWVM_ROS_SDK_ROOT/tools/platform/ros/run.py"   --config /path/to/manual-deployment-positive.json --backend ros2 --distribution jazzy   --target wasm32-wasip1 --scenario get_payload_value   --wasm /path/to/main.wasm --report-directory /path/to/reports
```

公共启动器绑定真实 stopped-worker PID，只启动 ros_comm 的 gateway。positive、controller_refusal、boundary_denied、ungranted 回执分别保留。预期 verifier worker 均退出0，但 primary 分别为0、5、13、13。独立原生 peer 请求次数分别为1、1、0、0。拒绝响应保留全部七个浮点字段和 result−7，RPC 与 close 仍为0。每个成功用例还分别要求 main/io/algorithm 的13、真实 C++ WASI 输出、完整 wire checksum、byte 边界和进程清理。peer 完整字段/CDR、artifact kind/ABI 与动态调用边界分别记账；不表示物理机器人、ARM 原生 peer、全部语言库或完整 catalog 传输验收。
