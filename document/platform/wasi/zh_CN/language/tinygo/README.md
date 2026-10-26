# WASI：tinygo

此语言路径的独立 WASI 程序仍待实现；ROS 程序或公共语言引擎不能证明 WASI 应用支持。

WASI 程序使用真实源语言的标准输入输出、参数及算术，不导入 ROS facade，不选择原生 ROS 发行版，不创建 ROS Gateway，也不获取 ROS capability。此 provider 将真实源码与准确 ABI 元数据交给所有平台共用的语言适配器。

## 安装与配置

安装 Xmake 2.9.8 或更高版本及匹配 SDK。结构化祖先查找不能找到安装目录时设置 `UWVM_ROS_SDK_ROOT`；显式错误路径必须报错。配置阶段不恢复编译器或运行时。构建使用固定的公共编译器或真实语言引擎；解释型源码必须在真实引擎中执行，并和引擎一起嵌入唯一应用 `.wasm`。适配器必须明确拒绝尚未提供的目标、标准库、启动方式或异常配置。

工程从已发现的根目录包含 `tools/xmake/ros.lua`，并声明：

```lua
set_kind("binary")
set_language("tinygo")
set_ros_platform("wasi")
set_arch("wasm32")
set_plat("wasm-wasip1")
```

用 `add_files` 声明真实源语言文件，先运行 `xmake f -c -y` 配置，再运行 `xmake` 构建唯一应用。构建不需要原生 ROS。普通 command 启动为默认方式；自行定义 `_start` 的应用明确选择 `set_wasm_entry("freestanding")`。`set_arch("wasm64")` 请求 Uwvm 的 Preview 1 memory64 扩展，该 ABI 不属于上游 WASI 标准，不能悄悄替换成 wasm32。Preview 2、线程、EH 和每项 Core 特性都需要适配器支持与独立实测；配置声明不能代替验证。

## 现有独立源码

当前没有此路径的独立工程。

源码实现下列三种操作。六种解释型路径最多接受 1024 个十进制参数，每个参数最多 11 个 ASCII 字符，明确将每项数值与中间和限制为有符号 32 位。C 系程序使用所选 C long 的范围，不能假定各路径溢出边界相同。解释型路径依赖其真实公共引擎与正常 argv/标准流嵌入；这些新源码尚无构建或执行通过回执。_memory64 配置只请求准确位宽，公共引擎缺少该位宽时必须拒绝。

| 工程 | 输入与完整结果 | 错误处理 |
| --- | --- | --- |
| `sum_arguments` | 十进制参数 `7 11 24` 输出 `42` 加换行 | 非法、越界十进制及有符号求和溢出返回 22；输出失败返回 5 |
| `copy_lines` | 原样复制全部 stdin 字节，保留 NUL、Unicode UTF-8 及结尾无换行数据 | 使用 256 字节有界块，检查读失败、短写及 flush 失败，返回 5 |
| `stream_checksum` | 对实际 stdin 字节计算 FNV-1a，输出八位小写十六进制加换行 | 使用无符号模 2^32 算术，读或输出失败返回 5 |

`_memory64` 工程请求相同操作与 64 位内存。不需要文件路径、网络、实时时钟或随机权限。输入缓冲由应用自己拥有，不传给另一 Wasm 模块的内存。明确 C FFI 路径在这些纯 WASI 示例中没有 ROS 操作需要桥接，仍按真实 C frontend 编译，并准确标明其路径身份。

## 人工运行配置

运行时安装与应用构建相互独立。先显式构建，再执行 `xmake run`；工程根禁用运行时自动重建。配置时传入 `--ros-run-config=deployment.json` 或设置 `UWVM_ROS_RUN_CONFIG`。`sum_arguments` 的通用 command 启动器消费如下明确配置：

```json
{
  "format": "uwvm-ros-command-run-v1",
  "backend": "wasi",
  "target": "wasm32-wasip1",
  "runtime": "/absolute/path/to/uwvm2-ros",
  "runtime_arguments": [
    "--runtime-aot",
    "--wasip1-global-noinherit-system-environment"
  ],
  "application_arguments": [
    "7",
    "11",
    "24"
  ]
}
```

两个 stdin 操作使用空 `application_arguments` 并提供标准输入。wasm64 应用将 `target` 改为 `wasm64-wasip1`，在 `runtime_arguments` 中明确增加 `--wasm-feature-enable-memory64` 和 `--wasm-feature-enable-table64`。启动器仅追加唯一 `--run` 应用操作数，原样保留包括空字符串在内的应用参数，不自动增加权限、环境、preopen 或 Core 特性。此通用 command 格式与原生 ROS 部署 v2 格式相互独立。

默认 WASI 具有继承的基本标准流描述符，足以执行这些操作；不能声称完全没有描述符权限。禁止系统环境继承不会授权目录、socket 或 ROS 资源。库仍使用原生 Xmake `set_kind("static")` 或 `set_kind("shared")`，必须由所选语言适配器明确支持。带符号索引的真实可重定位 `.a` 和可预加载的 Core `.wasm` 必须分别验证生产者与消费者；仅打包解释器源模块不能证明任一库类型支持。
