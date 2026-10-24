# Java 主程序与三个托管 Wasm 库

当前状态：源码实现待审查。公共 Xmake 目标类型、依赖契约以及真实原生
预加载验收仍未完成，源码可见不代表共享库路线已经可用。

`xmake.lua` 使用普通 `set_kind("shared")` 分别声明 `io`、`algorithm`、
`ros_comm`，使用 `set_kind("binary")` 声明主程序 `main`，再通过
`add_deps` 声明依赖。预期部署文件是 `main.wasm`、`io.wasm`、
`algorithm.wasm`、`ros_comm.wasm`。四个文件都包含真实 Java AOT 代码和
独立的 TeaVM 线性内存运行时。库保留源码中的真实 `@Export` 方法，主程序
通过匹配的 `@Import` 调用。库内由编译器生成的命令入口会拒绝被当作主程序
执行；模块自动 start 应在导出调用前初始化本模块堆。这些行为及函数签名
都必须由实际加载器执行验收。

| 模块名 | 目标类型 | 职责 | 额外运行权限 |
| --- | --- | --- | --- |
| `main` | `binary` | 校验结果并调用三个库 | 无 |
| `io` | `shared` | 输出就绪与结果，读取一个标准输入字节 | 无 |
| `algorithm` | `shared` | 有符号加法、真实溢出 catch 和 finally 计数 | 无 |
| `ros_comm` | `shared` | 获取原生主题 owner，发布一次并关闭 | 仅 `shared_pub` |

模块间只传递 i32/i64 标量。打包的 i64 高 32 位是状态，低 32 位是有符号
i32 结果。Java 对象、数组地址、ROS 句柄和借用指针都留在所属模块内，
没有共享分配器，也不宣称支持跨模块对象生命周期。静态 `.a` 生产者与
消费者是另一个尚未完成的构建路线。

安装固定版本 JVM 工具闭包，并使用能够保留这些目标类型的公共入口后：

```sh
xmake f -p wasm-wasip1 -a wasm32 -c
xmake
```

旧公共入口如果仍强制 binary，必须由公共入口负责岗位修正，不能通过重命名
可执行模块冒充库。构建应保留真实 TeaVM 编译与注解导出回执。

`launch.sh` 是完整、手动声明权限的 uwvm2-ros 命令。在本例目录内明确设置
已安装运行时的绝对路径、原生网关 AF_UNIX 套接字绝对路径和可信数字 UID：

```sh
export UWVM_RUNTIME=/absolute/installed/bin/uwvm2-ros
export UWVM_ROS_GATEWAY_SOCKET=/absolute/gateway/ros2.sock
export UWVM_ROS_GATEWAY_UID=1000
sh launch.sh
```

三个预加载参数将库绑定为 `io`、`algorithm`、`ros_comm`，主模块显式命名为
`main`。四个名字均先创建 WASI Single 和 ROS2 Single，再设置各自策略。
全局 ROS 被禁用，只有 `ros_comm` 启用并获得主题授权，以及全部必需的
限额、QoS、审计字段。`disabled-test`、domain 42 和 `rmw_fastrtps_cpp`
是明确的实验配置，原生网关与独立通信端需要另行按同一配置准备。部署若要求
DDS 安全，须配置真实 keystore/enclave 并使用 `enforce`。脚本不启动网关，
不自动探测网络，也不自动增加权限。

所有模块禁用宿主环境继承。默认 WASI 仍保留基本标准流权限，并非完全没有
描述符权限。这里没有额外授予时钟、随机数、目录、套接字权限；`algorithm`
也保持这个策略。运行钩子不能隐式扩大这份配置。

主程序分别让 `main`、`io`、`algorithm` 真实尝试打开 `shared_pub`，要求
每次实际返回权限拒绝 13。随后校验普通加法、一次溢出 catch 和两次 finally。
`ros_comm` 打开 source 后，通过 `uwvm_ros2_rmw_v1` 真实激活原生发布端。
公共 `uwvm.ros.RmwPublisher` 校验完整 UMRE-v1 回执的 source 关联、
incarnation、QoS、原生 GID 和保留区域；仅打开 capability 不会创建 DDS
发布端。只有真实激活成功后，才由 `io` 输出 `UWVM_PRELOAD publisher-ready`。
独立原生 ROS2 订阅端必须先存在，并通过 DDS 发现确认该发布者，再向标准
输入放行一个 `g` 字节。人工检查时，在原生端确认发现后输入 `g` 并回车；
自动测试应由原生端控制输入管道，不能用固定等待时间替代发现证据。接着
先检查同一个原生端点，再只发布一次，原生 retire 与 source close 各尝试
一次并分别保留原始状态，失败不重放。原生订阅端必须在
`/sdk/shared/chatter` 收到完整 String 内容 `uwvm-managed-preload`。
最终 JSON 仅在所有客体断言通过后输出，仍需独立原生端实际收包证据。

静态归档成员提取、跨语言消费者、名字碰撞及宽度/签名错误拒绝、memory64、
QEMU AArch64 均需单独执行回执。
