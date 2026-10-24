# realman / haskell

本目录是源码候选。只有交付字节对应的冷启动构建、唯一 Wasm 产物、x86_64 原生 ROS 与 QEMU AArch64 原生 ROS 证据全部通过，才能把相应语言、平台、后端标为完成。

## 安装与构建

先安装包含可校验依赖清单的完整公共 SDK，再叠加该厂商的 include、src、share、tools 文件，设置 `UWVM_ROS_SDK_ROOT`。在独立例子目录执行 `xmake`。构建只依赖预装 Xmake 和 SDK 校验过的依赖；部署阶段才使用原生 ROS 与运行时。唯一部署产物应为应用 `.wasm`，解释器及所有应用模块须真实打包进去。

## 配置

使用 `set_language("haskell")`、`set_ros_platform("realman")`、明确的 `set_ros1_version` 或 `set_ros2_version`、`set_arch`、`set_plat`。使用 `set_ros_config` 明确提供 `profile`、该目录的 `catalog_version` 源锁 SHA-256、`abi = "uwvm-ros-v1"` 与 `transport = "native-ros"`；每个独立例子均含完整配置。可选 `model` 必须是 `provider.json` 中属于该 profile 的精确选择；冲突、未知键和目录或型号不匹配都会报错。`set_ros_scenario` 选择精确的 profile 与场景。厂商配置描述位于 `share/platform/realman/provider.json`，实际编译、打包与运行由公共实现处理。

目录版本由不可变 `source_lock_sha256` 标识，与控制器固件版本分离。型号必须匹配原始型号与 profile 数据，SDK 不推断机器人地址、固件或兼容性。传输使用真实原生 ROS，保留 ROS1、ROS2 原生类型语义。分支名 main、master、develop 不代表任意发行版支持；必须由安装环境的完整类型元数据独立验证。

保留的 C/C++ `state` façade 使用精确的旧版选择宏：Dobot、RealMan 由已选 profile 给出；Elephant、UFactory 须显式设置 `provider.json` 中的 `set_ros_config` 的 `model` 选择，再提供对应 `UWVM_ELEPHANT_SELECTION` 或 `UWVM_XARM_SELECTION`。完整记录 API 不投影为某一型号。其余原始工作流见本语言区域的 `LEGACY-FACADES.md`。

`wasm32`、`wasm64` 与 `wasm-wasip1` 选择精确指针 ABI。WASI preview、线程、异常处理和 Wasm Core 特性须由公共目标清单明确给出，不能把缺失的 memory64 前端静默改为 wasm32。源码存在不等于目标已通过。

| 原始 profile | 后端 | 消息 | 服务 | 动作 |
| --- | --- | ---: | ---: | ---: |
| `ros1_develop` | ROS1 | 100 | 0 | 0 |
| `ros1_main` | ROS1 | 104 | 0 | 0 |
| `ros2_foxy` | ROS2 | 80 | 0 | 0 |
| `ros2_humble` | ROS2 | 80 | 0 | 0 |
| `ros2_jazzy` | ROS2 | 80 | 0 | 0 |

## API 与字段

接口的准确调用名：导入 Realman.Profile.Records 与公共 RosWasm.Wire。不可变完整值保留字段顺序、精确整数宽度；公共 producer 须提供声明模块到文件的映射，并以真实 Haskell 前端构建所选目标。

`PROFILE`、`BUNDLE`、`N` 必须替换为选定的完整来源与 ROS 版本。本 locale 的 `API-CATALOG.md` 列出了每个原始类型、字段和服务、动作组件；完整定义及边界位于 `share/platform/realman/catalogs/PROFILE`。`ir.json` 保留字段顺序、宽度、有符号性、默认值、常量、固定数组与序列配额。规范字节不是原生 CDR/ROS 内存布局；codec 身份不能充当原生类型身份。

单位、坐标系、控制器模式及响应状态含义来自官方定义。绑定不进行未声明的单位变换，也不把默认值或返回字段中的 0 自动当作控制器执行成功。完整值的嵌套存储归调用方所有；传入对象保留本语言的引用语义。

## 错误、所有权与权限

编码前检查完整值；分别保留传输错误、解码错误、厂商响应字段和清理错误。11 表示空闲，不提供记录；13 表示拒绝；22 表示无效；90 表示有限容量；110 可能发生在已接纳操作之后，不能据此重放请求。只使用真正观察到的长度或 required 标志，保留完整 64 位 owner、ticket、correlation。失败解码不能发布部分值。

借用的 capability、context、backend 和回调状态在同步调用期间必须保持有效，共享可变对象须串行访问。每个实际取得的 owner 仅清理一次，主错误优先，同时独立记录 close 的错误。关闭 capability 不等于停止实体机器人；致命 trap 或进程退出仍由外层实例清理。

SDK 不授予权限。受信任操作者手动提供精确别名、资源、完整原生类型身份、QoS、有限配额，以及所需的 monotonic clock、stdout 和参数访问权限。示例最多轮询 250 次，仅在 11 后等待 20 ms；服务调用不重放。本次只允许受控离线或模拟原生 ROS peer，不发送实体机器人命令。

## 示例流程

此路径尚无独立可执行示例，所需公共 API 与适配工作在交接依赖中明确记录。

观测示例接收并解码实际完整记录，在显式清理后输出全部规范字节；查询示例编码完整原始请求，校验完整原始响应。验收必须逐字节核对原始记录，并独立核对主错误、清理错误、拒绝权限及坏报文，不能只检查退出码 0。

## 部署与验收

`xmake run` 单独使用已安装的 `uwvm2-ros`、原生 ROS 与受信任运行配置，保留操作者手动配置的权限。缺少公共运行分发器属于集成依赖，不触发自动创建或扩大权限策略。

冷 Xmake 构建、唯一 Wasm 输出、全类型 codec/service/action、拒绝权限、原生 ROS1/ROS2、实际 QEMU AArch64 运行分别记录。AArch64 必须具有真实 ARM ELF、运行时哈希、QEMU 命令与版本、原生消息字节和清理证据。源码或文档不证明硬件、外部控制器、官方应用套件或 memory64 已通过。复现配方与原始日志保存在 SDK 外的私有交接目录。
