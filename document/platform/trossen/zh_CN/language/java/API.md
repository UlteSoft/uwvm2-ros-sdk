# trossen / java API

公共类型源码位于 `include/platform/trossen/java/`。

Java 与 Kotlin 使用普通 Java 值类；C#、F# 与 VB.NET 使用普通 CLR 值类。每个 profile 有独立公开 namespace，防止不同供应商版本混用。每个 `field_<原名>` 保留原字段，数组/字符串/嵌套值由返回值拥有。`MAX_WIRE_BYTES`、`MIN_WIRE_BYTES` 和 `CODEC_IDENTITY` 是完整 SDK 边界，不是原生 registry 的认证。

`encode`/`Encode` 编码完整记录；`decode`/`Decode` 验证完整长度、有限浮点、字符串、序列容量、嵌套容量和尾随数据。错误抛出真实 `IllegalArgumentException`/`ArgumentException`。独立 SDK 程序集中的错误必须到达应用的真实 catch，不能跳过坏 wire 检查。

类型化 `Api...` 接口覆盖 message publish/subscribe、service call/poll/respond、action send/feedback/result/cancel/server response。每个角色用独立显式 alias，所有权由 `Owner`/`ActionSet` 保留；空闲 11 不是成功，取消确认不是终态。错误 22 是本地验证拒绝；其他原生 errno、RPC 与 required-length 事实按原样保留。

原始字段顺序、常量、默认值、容量和来源固定在 `share/platform/trossen/catalogs/`。
