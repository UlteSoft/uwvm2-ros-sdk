# KUKA TypeScript record API

The `kuka-ros2-complete` profile provides TypeScript declarations and codecs for
31 original ROS2 records. Use `set_language("typescript")` with the shared
TypeScript 5.9.3 compiler. The emitted JavaScript runs in the SDK's shared QuickJS
Wasm engine. At deployment, uwvm2-ros compiles the resulting Wasm to native code
and requires checked native unwind; this does not make TypeScript itself a
native AOT language.

Import the public module without a relative SDK path:

```typescript
import {
    Ros2Kuka_driver_interfacesMsgKssStatusCodec
} from "kuka/typescript/ros2/kuka-ros2-complete/bounded_records";

const codec = Ros2Kuka_driver_interfacesMsgKssStatusCodec;
const value = codec.defaultValue();
const bytes = codec.encode(value);
const restored = codec.decode(bytes);
```

The TypeScript module delegates encoding to the existing JS implementation.
Both languages therefore share wire validation and codec identities. Required
fields, nested records, fixed arrays, bounded sequences and original constants
are retained. Native `int64` and `uint64` fields use `bigint`; other numeric
fields use `number`, Boolean fields use `boolean`, text uses `string`, and
explicit raw byte fields use `Uint8Array`.

| API | Contract |
| --- | --- |
| `defaultValue()` | Allocate a complete record with its original defaults. |
| `validateValue(value)` | Return `true` for a valid complete value; throw on invalid members. |
| `encode(value)` | Return an owned buffer containing the canonical wire representation. |
| `decode(bytes)` | Return a complete typed value; reject malformed or trailing bytes. |
| `valid(bytes)` | Report whether the complete input is valid without exposing a partial value. |
| `codecIdentity` | Identify the codec contract, independently of a native ROS type identity. |
| `maxWireBytes`, `minWireBytes` | Describe the codec's admitted wire-size bounds. |

Runtime validation includes scalar ranges, fixed lengths, UTF-8, capacities and
the record's declared floating-point and time rules. `ControlCodecError.code`
uses `22` for invalid input and `90` for capacity errors. Full field definitions,
constants and source provenance are in
`share/platform/kuka/domains/kuka-ros2-complete.ir.json`.

The three [examples](examples.md) exercise selected complete records in wasm32
and wasm64 applications. Strict compilation covers the declarations, but the
examples do not execute all 31 records individually. Codecs do not acquire ROS
permissions. Native service/action ownership, ROS transport and static/shared
library interoperability require their own qualification; these value examples
do not establish that coverage.
