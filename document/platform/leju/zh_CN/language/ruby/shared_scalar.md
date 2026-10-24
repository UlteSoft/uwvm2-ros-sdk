# 真实 Ruby 标量共享库示例

状态：普通 Xmake `shared` 与 C `add_deps` 构建已在仅预装 Xmake 的 Linux
环境通过，实际限制为64GiB、零 swap。准确产物随后通过公共 native-v2 运行器的
两次独立实例调用及缺少预加载库的拒绝检查。参数相关计算由真实 Ruby 方法执行，
C 只桥接和检查结果。范围为 CRuby3.4.7、LLVM23.1.4、wasm32 Preview1/noeh、
ROS1 导入命名空间。本夹具不启动原生 ROS 网关或对端，不代表 Noetic 原生通信
通过；测试会去掉工具镜像带入的 ROS_DISTRO 标签，不伪装已 source 的原生环境。
可移植范围见 `share/language/ruby/module-status.json`。`xmake run` CLI 钩子的实际
执行仍为单独验收项。

`algorithm/xmake.lua` 使用普通 `set_kind("shared")`；C 主程序使用
`set_kind("binary")` 和 `add_deps("algorithm")`。依赖声明建立构建关系，部署时
仍需将独立 Core 模块显式加载为 `algorithm`。接口是
`<language/common/module.h>`，导入端将 `UWVM_LIBRARY_NAMESPACE` 定义为该模块名。
每个目标目录只产生一个 `.wasm`，动态部署需要两个实际构建的模块。

两个目标都选择现有 `ros1_main_packaged_ik` 源码 profile，完整保留17条记录的
模块图；此计算不发送运动请求。

真实 Ruby `Uwvm::Library.call_i32` 计算三角数、保存调用计数，运行 GC 和 Fiber，
对非法输入抛出真实异常，并在受保护异常后继续调用。C 主程序分别检查结果和
状态，再执行一次 VM 退出；退出后的调用返回状态125。接口仅传递精确 i32
标量，不跨模块传递指针、内存视图、所有者或资源句柄。C 不实现计算算法。

安装公共 artifact contract 和准确的 reactor 模板后，将
`UWVM_ROS_SDK_ROOT` 设置为 SDK，执行 `xmake f -c -a wasm32` 和 `xmake`。
缺少真实模板时必须明确失败；显式 wasm64 请求也必须失败，不得换成 memory32。
历史直接链接核心的实验不能代替普通 Xmake 构建回执。

复制 `deployment.example.json`，手工填写运行时、网关和准确的预加载产物路径。
配置文件使用绝对路径，通过 `xmake f --ros-run-config=/absolute/config.json`
配置，然后执行 `xmake run shared-scalar-main`。唯一启动入口仍是
`tools/platform/ros/run.py`；示例和 provider 不增加权限。网关可执行文件作为
部署基础设施接受校验，但所有模块都禁用 ROS 时不会启动网关进程。

`main` 和 `algorithm` 各有显式 WASI/ROS Single 绑定，均禁用 ROS，ROS 授权和
额外 WASI 授权数组均为空。默认 WASI 仍具有基本标准流权限，不继承环境、目录
或套接字。Ruby 库明确检查 `chat07-ungranted` 返回13且没有暴露资源所有者。
这个两模块最小示例不代表正向原生 ROS 三库隔离、静态库、memory64 或 AArch64
验收通过。
