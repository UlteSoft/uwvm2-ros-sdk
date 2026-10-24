# universal_robots MoonBit API

Use the canonical `set_language("moonbit")` route and the shared pinned MoonBit 0.10.16+b1a0e846e frontend. The provider selects one exact original catalog; complete catalog identities remain below the ros1 or ros2 backend directory.

| Domain | Backend | Records |
| --- | --- | ---: |
| `universal-robots-ros1-complete` | ros1 | 56 |
| `universal-robots-ros1-trajectory-complete` | ros1 | 64 |
| `universal-robots-polyscopex-complete` | ros2 | 50 |
| `universal-robots-ros2-complete` | ros2 | 108 |
| `universal-robots-ros2-trajectory-complete` | ros2 | 116 |

The public Xmake binding imports its complete record package as `@records`. Construct `@records.Symbol::new()` and `@records.SymbolCodec::new()`. All original fields remain available with a `field_` storage prefix. Nested records, fixed arrays, bounded sequences, native defaults and constants retain their original definitions. Signed and unsigned 64-bit fields use Int64 and UInt64; float32 uses Float, float64 uses Double, text uses String and raw bytes use Bytes.

`codec.encode(value)` returns `Result[Bytes, Int]`; `codec.decode(bytes)` returns the complete typed value or an error. Handle both branches explicitly. Code 22 means invalid canonical input and code 90 means capacity. Fixed lengths, sequence and byte bounds, strict UTF-8, declared float policy and the admitted standard time/JointState rules apply on encoding and decoding. Decode rejects trailing bytes. Capacities are maxima rather than the actual encoded length.

Original definitions, field names, bounds, native identities and codec identities are recorded in the corresponding share/platform domain IR. Keep native distribution and interface compatibility explicit. Original Humble definitions used with a Jazzy fixture do not establish a Humble driver qualification.

The examples exercise local values. Native topic/service/action ownership, permissions and cleanup require separately qualified shared bindings and native peers. wasm32, memory64, x86_64, QEMU AArch64, static archives and shared modules each have their own acceptance scope. MoonBit native ROS, memory64 and library linking remain unqualified in this delivery.
