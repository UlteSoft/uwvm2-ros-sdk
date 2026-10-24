# ABB SDK development guide

Public modules live in sdk/include/platform/abb, standalone applications in sdk/example/platform/abb, package metadata in sdk/lib/platform/abb, and original definitions/provenance/validation summaries in sdk/share/platform/abb. Author and format source locally, then synchronize complete directories to SSH Linux with scp -r. All compiler and runtime acceptance runs use the Linux 64 GiB, swap-disabled environment.

The matrix distinguishes actual source delivery from remaining implementation work. The delivered three observation commands per source language and the c_ffi_bridge bridge group do not establish completion of all requested languages or the entire ABB driver.

| Language or infrastructure | Current scope |
| --- | --- |
| [as](language/as/README.md) | Three observation commands delivered; see validation scope |
| [c](language/c/README.md) | Three observation commands delivered; see validation scope |
| [c_ffi_bridge](language/c_ffi_bridge/README.md) | Three C bridge examples; counted as bridge validation, not another language or completion of its consumers |
| [cpp](language/cpp/README.md) | Three observation commands delivered; see validation scope |
| `csharp` | Three standalone examples and complete acceptance are not yet delivered |
| `d` | Three standalone examples and complete acceptance are not yet delivered |
| [objectc](language/objectc/README.md) | Three observation commands delivered; see validation scope |
| `fsharp` | Three standalone examples and complete acceptance are not yet delivered |
| [go](language/go/README.md) | Three observation commands delivered; see validation scope |
| `haskell` | Three standalone examples and complete acceptance are not yet delivered |
| `java` | Three standalone examples and complete acceptance are not yet delivered |
| `js` | Three standalone examples and complete acceptance are not yet delivered |
| `kotlin` | Three standalone examples and complete acceptance are not yet delivered |
| `lua` | Three standalone examples and complete acceptance are not yet delivered |
| `moonbit` | Three standalone examples and complete acceptance are not yet delivered |
| `nim` | Three standalone examples and complete acceptance are not yet delivered |
| `odin` | Three standalone examples and complete acceptance are not yet delivered |
| `php` | Three standalone examples and complete acceptance are not yet delivered |
| `py` | Three standalone examples and complete acceptance are not yet delivered |
| `r` | Three standalone examples and complete acceptance are not yet delivered |
| [rs](language/rs/README.md) | Three observation commands delivered; see validation scope |
| `ruby` | Three standalone examples and complete acceptance are not yet delivered |
| `swift` | Three standalone examples and complete acceptance are not yet delivered |
| [tinygo](language/tinygo/README.md) | Three observation commands delivered; see validation scope |
| `vbnet` | Three standalone examples and complete acceptance are not yet delivered |
| `zig` | Three standalone examples and complete acceptance are not yet delivered |

The ROS1 reference is [abb_robot_driver](https://github.com/ros-industrial/abb_robot_driver); exact selected revisions and the distinct ROS2 integration boundary are recorded in [CONTROLLERS.md](../../../../share/platform/abb/CONTROLLERS.md). RWS state publication, discrete services, EGM hardware control, and controller bringup are separate capabilities. These observation commands cover three explicitly selected interfaces.
