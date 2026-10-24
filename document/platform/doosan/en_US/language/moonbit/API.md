# doosan MoonBit API

Use the canonical `set_language("moonbit")` route and the shared pinned MoonBit 0.10.16+b1a0e846e frontend. The provider selects one exact original catalog; complete catalog identities remain below the ros1 or ros2 backend directory.

| Domain | Backend | Records |
| --- | --- | ---: |
| `doosan-ros1-aws-robot-complete` | ros1 | 125 |
| `doosan-ros1-aws-simulation-complete` | ros1 | 125 |
| `doosan-ros1-doosan-robotics-patch-1-complete` | ros1 | 280 |
| `doosan-ros1-kinetic-devel-descrepted-complete` | ros1 | 227 |
| `doosan-ros1-main-complete` | ros1 | 280 |
| `doosan-ros1-master-complete` | ros1 | 278 |
| `doosan-ros1-melodic-devel-complete` | ros1 | 280 |
| `doosan-ros1-noetic-devel-complete` | ros1 | 280 |
| `doosan-ros1-patch-1-complete` | ros1 | 280 |
| `doosan-ros1-song-ms-patch-1-complete` | ros1 | 280 |
| `doosan-ros2-humble-complete` | ros2 | 310 |
| `doosan-ros2-jazzy-complete` | ros2 | 310 |

The public Xmake binding imports its complete record package as `@records`. Construct `@records.Symbol::new()` and `@records.SymbolCodec::new()`. All original fields remain available with a `field_` storage prefix. Nested records, fixed arrays, bounded sequences, native defaults and constants retain their original definitions. Signed and unsigned 64-bit fields use Int64 and UInt64; float32 uses Float, float64 uses Double, text uses String and raw bytes use Bytes.

`codec.encode(value)` returns `Result[Bytes, Int]`; `codec.decode(bytes)` returns the complete typed value or an error. Handle both branches explicitly. Code 22 means invalid canonical input and code 90 means capacity. Fixed lengths, sequence and byte bounds, strict UTF-8, declared float policy and the admitted standard time/JointState rules apply on encoding and decoding. Decode rejects trailing bytes. Capacities are maxima rather than the actual encoded length.

Original definitions, field names, bounds, native identities and codec identities are recorded in the corresponding share/platform domain IR. Keep native distribution and interface compatibility explicit. Original Humble definitions used with a Jazzy fixture do not establish a Humble driver qualification.

The examples exercise local values. Native topic/service/action ownership, permissions and cleanup require separately qualified shared bindings and native peers. wasm32, memory64, x86_64, QEMU AArch64, static archives and shared modules each have their own acceptance scope. MoonBit native ROS, memory64 and library linking remain unqualified in this delivery.
