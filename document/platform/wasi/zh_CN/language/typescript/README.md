# TypeScript WASI scalar 示例

维护中的示例为 `example/language/typescript/static_same` 与
`example/language/typescript/shared_same`，复用现有 Microsoft TypeScript 5.9.3、
共享 QuickJS core 和 LLVM23 路线。`apply(i32, i32)` scalar 合约与标准 ROS ESM
命令是不同的接口。

明确配置 `-a wasm32` 或 `-a wasm64`，先构建再运行。使用示例已有的显式 deployment
文件，将 runtime 指向精确的已安装 VM 产品。shared producer 必须保留 deployment 中
声明的 preload 和 Single 输入；不要更改模块身份或权限设置。

VM 强制真实 generated-chain checked unwind 与崩溃栈恢复，不再提供选择 unwind
模式的公开参数。对精确 VM 产品进行 checked unwind 和崩溃栈恢复的 native 自检是
验收前提；旧 VM 的回执不能证明新产品已通过。QEMU 仅用于正确性与架构验证，性能
结论必须来自 native 执行及真实硬件计数器。

通用 scalar 库的验收不代表原生 ROS static/shared 命令或所有 TypeScript 平台已通过。
新的标准 ROS 源码候选和下一版 VM 产品继续分别保留待验证状态。
