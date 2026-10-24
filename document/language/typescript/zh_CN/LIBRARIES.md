# TypeScript 静态库与动态模块

使用 Xmake 原有 `set_kind("binary")`、`set_kind("static")`、
`set_kind("shared")` 和 `add_deps`。TypeScript 复用 JavaScript 库 ABI、
唯一 QuickJS core 和 LLVM 23 链接器，不另建解释器，也不把应用算法改写为 C。

## 源码契约

标量生产者是给 `globalThis.apply` 赋值的 TypeScript 脚本：函数接受两个
`number`，返回精确的有符号 32 位整数。声明一个普通库依赖后，消费者获得
`__foreign.initialize()`、`__foreign.apply(left, right)` 和
`__foreign.close()`。

`apply` 返回 `bigint`，高 32 位保存原始 errno，低 32 位保存整数结果。
共享绑定不转换错误含义或对象所有权。`initialize()` 观察加载器已经完成的
初始化，不重复调用 Core start section。`close()` 释放生产者拥有的状态；
重复关闭无害，之后再次调用会创建新状态。

每个 shared 模块拥有自己的语言对象、内存和表，仅整数通过这个接口传递。
静态链接共享消费者内存与权限。当前是有限标量 ABI，不是任意 ESM 导出或
对象传递 ABI：库源码采用脚本形式，每个目标支持一个直接标量库依赖。

## 示例解读

| 目录 | 生产者 | 消费者 | 生产者类型 |
|---|---|---|---|
| `static_same` | TypeScript | TypeScript | `static` |
| `shared_same` | TypeScript | TypeScript | `shared` |
| `shared_js_consumer` | TypeScript | JavaScript | `shared` |
| `shared_js_producer` | JavaScript | TypeScript | `shared` |

`sdk/example/language/typescript` 下每个目录都有带英文注释的独立 xmake.lua。
执行 `xmake f -y -a wasm32 -p wasm-wasip1`、`xmake` 即可构建。需要 wasm64 时
统一使用 `-a wasm64`，两个目标必须使用同一 ABI。

消费者执行两轮完整生命周期断言，独立核对 20、21、22、真实源码异常、
错误返回类型、重复关闭，以及重新创建后的 20。成功退出码为零。生产者中
刻意加入的危险类型断言仅用于触发运行时返回检查，不是普通业务代码写法。

## 显式 Preload 与权限

static 示例只部署最终 consumer；shared 示例还部署 algorithm.wasm，其
Preload 身份必须与普通 Xmake 目标名 `algorithm` 一致。不能只改加载身份
而不改依赖声明。

每个示例提供 wasm32 的 deployment.json 模板。先检查 runtime 路径及参数，
再明确选择它：

```sh
xmake f -y --ros-run-config=deployment.json
xmake run consumer
```

shared 模板显式创建 algorithm 的 WASI Single、关闭宿主环境继承，再按真实
身份 Preload 算法模块并运行 consumer。计算模块不申请额外文件系统、网络
或 ROS 权限，保留默认基础 WASI 行为。

wasm64 部署需将模板 target 改为 `wasm64-wasip1`，并在 runtime_arguments 中
明确加入 `--wasm-feature-enable-memory64` 和 `--wasm-feature-enable-table64`。
构建器及运行器不会替用户加入这些开关。

更大应用需要独立权限时，应把 I/O、算法、ROS 通信分成不同 shared 模块。
I/O 仅获得必要的 WASI 能力，算法保留默认基础 WASI，只有通信模块获得 ROS
权限。静态链接的算法共享调用者权限，不能充当独立权限边界。本组算术示例
不打开 ROS 资源；原始类型通信模块需要另行通过对应平台部署配置的验收。

四个公共库示例还通过了16次实际 Xmake run 调用，覆盖两种位宽及两种主机。每次均使用显式审查的部署配置，没有重新编译，且已验收 Wasm 的哈希和修改时间保持不变。
