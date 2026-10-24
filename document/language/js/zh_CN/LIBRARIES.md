# 真实解释器库

三个固定引擎为 QuickJS 2026-06-04、CPython 3.14.8 和 Lua 5.4.8；每种语言和目标位宽共享同一个内核及 LLVM 23 编译器。普通 Xmake `set_kind("static")`、`set_kind("shared")` 和 `add_deps` 分别选择归档、预加载模块和应用依赖。当前明确限定为源代码定义的 `apply(a, b)` 与显式 `close`，任意导出签名和指针传递尚未实现。

计算库使用 `set_ros_platform("wasi")`、明确的 wasm32 或 wasm64，以及 `set_plat("wasm-wasip1")`。Lua 必须设置 `set_wasm_exceptions("eh")`。依赖图的位宽和异常配置必须一致。没有库依赖的原生 ROS 解释程序仍使用完整的独立版本模块清单；同时消费这些库的 ROS 解释程序尚待实现。

JS 定义 `globalThis.apply`，Python 定义 `apply`，Lua 定义全局函数 `apply`。参数与成功结果必须是精确的有符号 32 位整数，由真实语言引擎求值。Wasm 签名为 `(i32,i32)->i64`，高 32 位是错误码，低 32 位是结果位模式。12 表示分配失败，16 表示拒绝重入或所有权冲突，22 表示真实源代码异常、类型或范围错误。失败不提交结果。`close()->i32` 释放本库拥有的语言状态；重复关闭安全，下次调用会创建全新状态。

首版每个目标最多一个直接依赖，通过普通 `add_deps` 表示线性传递链。JS 使用 `__foreign`，Python 导入 `_foreign`，Lua 使用 `__foreign`；接口含 apply、close 和兼容 initialize。initialize 不再调用 reactor 初始化，统一由公共 Wasm start section 执行一次。JS 返回精确 BigInt，Python 返回整数，Lua 返回有符号整数；当前错误码与结果的组合处于 Lua 整数范围内。

导出名由 `uwvm_`、带命名空间的完整 Xmake 目标名称的十六进制字节、`_apply` 或 `_close` 组成。真实名称及源代码、产物 SHA-256 见 `.uwvm-ros/genuine/<identity>/source-abi.json`，公共产物记录列出实际预加载模块及身份。algorithm 目标需要手工配置 `--wasip1-single-create algorithm --wasip1-single-noinherit-system-environment algorithm --wasm-preload-library <algorithm.wasm> algorithm`；其他模块分别配置后，再添加 `--wasip1-global-noinherit-system-environment --run <main.wasm>`。wasm64 还需显式启用 memory64 和 table64，Lua 还需启用 exceptions。所有部署权限均由用户明确提供。

共享模块各自拥有内存和表，只传数值，不传对象、指针、借用或原生句柄。静态链接共享内存和权限，不提供模块隔离。Python 静态库由同一个真实内核管理分别拥有的标准子解释器。默认 WASI 含基础标准流能力，计算示例没有额外资源或 ROS 授权。

当前适配源码和限定 ABI 供评审，是否通过构建与执行以对应源码的实测记录为准。多分支依赖图、任意函数签名、io/algorithm/ros_comm 权限示例、原生 ROS 观察、QEMU AArch64 及 ARM 主机编译仍是独立验收项。
