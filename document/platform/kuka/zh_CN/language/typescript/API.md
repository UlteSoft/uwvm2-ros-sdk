# KUKA TypeScript 记录 API

`kuka-ros2-complete` 配置提供 31 个原始 ROS2 记录的 TypeScript 声明和编解码器。
使用 `set_language("typescript")` 选择共享 TypeScript 5.9.3 编译器。生成的
JavaScript 由 SDK 的共享 QuickJS Wasm 引擎执行。部署时，uwvm2-ros 将最终
Wasm 编译为本机代码，并强制检查原生 Unwind；这不代表 TypeScript 本身采用了
原生 AOT 编译。

通过公开模块路径导入，无须使用指向 SDK 的相对路径：

```typescript
import {
    Ros2Kuka_driver_interfacesMsgKssStatusCodec
} from "kuka/typescript/ros2/kuka-ros2-complete/bounded_records";

const codec = Ros2Kuka_driver_interfacesMsgKssStatusCodec;
const value = codec.defaultValue();
const bytes = codec.encode(value);
const restored = codec.decode(bytes);
```

TypeScript 模块调用现有 JS 实现，两种语言共用线格式校验和编解码身份。
声明保留必需字段、嵌套记录、固定数组、有界序列和原始常量。原生 `int64`、
`uint64` 字段使用 `bigint`，其他数值使用 `number`，布尔使用 `boolean`，
文本使用 `string`，明确声明的原始字节字段使用 `Uint8Array`。

| API | 行为 |
| --- | --- |
| `defaultValue()` | 按原始默认值分配完整记录。 |
| `validateValue(value)` | 合法完整值返回 `true`；非法成员抛出异常。 |
| `encode(value)` | 返回调用方拥有的规范线格式缓冲区。 |
| `decode(bytes)` | 返回完整类型值；拒绝畸形输入及尾随字节。 |
| `valid(bytes)` | 判断整个输入是否合法，不暴露部分解码结果。 |
| `codecIdentity` | 标识编解码约定，与原生 ROS 类型身份分别管理。 |
| `maxWireBytes`、`minWireBytes` | 给出编解码器允许的线格式大小边界。 |

运行时会检查标量范围、固定长度、UTF-8、容量及记录声明的浮点和时间规则。
`ControlCodecError.code` 中，`22` 表示非法输入，`90` 表示容量错误。完整字段、
常量和来源记录位于 `share/platform/kuka/domains/kuka-ros2-complete.ir.json`。

三个[示例](examples.md)覆盖所选完整记录的 wasm32、wasm64 应用。严格编译检查
类型声明，但示例没有逐条执行全部 31 个记录。编解码器不获取 ROS 权限。
原生服务、动作所有权、ROS 通信及静态／共享库互操作需要分别验收，不能从这些
值处理示例推断其覆盖范围。
