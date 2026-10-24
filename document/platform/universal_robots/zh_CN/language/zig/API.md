# universal_robots / zig API 指导

安装：先安装相同公共版本的完整 SDK；编译器、真实解释器/AOT 和依赖获取由公共实现提供。配置必须选择本平台的准确源码域、ROS 发行版、目标位宽和 WASI 平台。

公共导入： `@import("universal_robots") mapped by selected binding metadata`.

完整类型形式： `records.RosNTYPE`.

实际 API： `value.encode(output), static decode(bytes,allocator)`.

Pinned Zig native compiler, checked error unions and an explicit decoded-value allocator.

每个域的精确类型、成员、常量、默认值和边界均列在平台 `catalog.md` 与 `share/platform/universal_robots/domains/*.ir.json`。`N` 是原始 ROS 代数，TYPE 的实际符号直接取记录的 symbol；DOMAIN 必须使用 provider.json 中的原文。

错误处理：先验证完整值，再检查实际编码/解码结果。空请求是真实零字节组件，不能添加占位字段。拒绝截断、尾随字节、非法布尔/时间/UTF-8、越界容器和不允许的非有限数。动态解码需要保持所有借用输入/arena 的有效期；失败时丢弃内部临时游标，不能消费部分结果。

权限与部署：构造值和 codec 不打开 ROS 资源。实际通信借用明确授权的 owner 和类型身份。每种 transport 角色需要独立权限；关闭 owner 不代表物理停止。构建唯一应用产物为 .wasm，真实解释器和源模块必须嵌入该产物。只在 xmake run 阶段依赖已安装运行时、网关和原生 ROS。

所有语言、后端、发行版与位宽都必须分别获得真实构建和执行证据；源码存在不是完成证明。

## 库目标状态

共享模块、静态归档的生产者和消费者组合仍待验收，包括同语言与跨语言链接。使用普通 Xmake kind 和依赖接口。四模块预加载组合、按模块手动授权、实际位宽及原生 x86/AArch64 验收要求见[库集成状态](../../libraries.md)。binary 编解码例子的证据不能计作库验收。
