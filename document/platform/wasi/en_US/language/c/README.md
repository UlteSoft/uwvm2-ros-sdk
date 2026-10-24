# WASI: c

This route contains 6 standalone projects, covering three operations and two requested widths. Source presence does not qualify a compiler, standard library or runtime.

WASI programs use their genuine source-language standard I/O, arguments and arithmetic. They do not import a ROS facade, select a native ROS distribution, create a ROS gateway or acquire a ROS capability. This provider passes source and exact ABI metadata to the same common language adapter used by other platforms.

## Install and configure

Install Xmake 2.9.8 or later and the matching SDK. Set `UWVM_ROS_SDK_ROOT` to the installed root when structured ancestor discovery cannot find it. An explicit invalid root is an error. No compiler or runtime is restored by configuration. Build requires the pinned common compiler or genuine embedded language engine; interpreted sources must execute in that real engine and be embedded into the sole application `.wasm`. The shared adapter must reject an unavailable target, standard library, startup or exception profile.

A project includes `tools/xmake/ros.lua` from its discovered root and declares:

```lua
set_kind("binary")
set_language("c")
set_ros_platform("wasi")
set_arch("wasm32")
set_plat("wasm-wasip1")
```

Declare actual language source with `add_files`. `xmake f -c -y` configures, then `xmake` builds the one application. There is no native ROS installation requirement during build. Ordinary command startup is the default; an application defining its own `_start` explicitly selects `set_wasm_entry("freestanding")`. `set_arch("wasm64")` requests Uwvm's Preview 1 memory64 extension. It is not a standard upstream WASI ABI and must never be silently replaced by wasm32. Preview 2, threads, EH and individual Core features require separate adapter support and actual tests. A configuration declaration proves none of them.

## Available standalone sources

- `example/platform/wasi/c/copy_lines`.
- `example/platform/wasi/c/copy_lines_memory64`.
- `example/platform/wasi/c/stream_checksum`.
- `example/platform/wasi/c/stream_checksum_memory64`.
- `example/platform/wasi/c/sum_arguments`.
- `example/platform/wasi/c/sum_arguments_memory64`.

The source programs implement these three operations. The six interpreted routes admit at most 1024 decimal arguments of at most 11 ASCII characters each and explicitly bound every value and intermediate sum to signed 32 bits. C-family programs use their selected C long range; do not infer identical overflow limits across those routes. Each interpreted route requires its genuine shared engine and normal argv/standard-stream embedding; these newly authored sources have no build or execution qualification. Their _memory64 configurations request an exact width and must fail if the shared engine lacks it.

| Project | Input and complete result | Error handling |
| --- | --- | --- |
| `sum_arguments` | Decimal arguments `7 11 24` produce `42` and newline | Invalid or out-of-range decimal and signed accumulation overflow return 22; output failure returns 5 |
| `copy_lines` | Copies every stdin byte, including NUL, Unicode UTF-8 and final unterminated data | Bounded 256-byte chunks; detect failed/short output, read error and flush error; return 5 |
| `stream_checksum` | Prints eight lowercase hexadecimal FNV-1a digits plus newline for the actual stdin bytes | Unsigned modulo-2^32 arithmetic; a read or output failure returns 5 |

The `_memory64` projects request the same operations with 64-bit memories. Files, network, wall clocks and random data are not needed. Input buffers belong to the command and are never shared with a different Wasm memory. The explicit C FFI route has no ROS operation to bridge in these WASI-only examples; it remains an accurately labeled route compiled by the real C frontend.

## Manual execution

A runtime installation is a separate deployment input. Build explicitly before `xmake run`; project roots disable automatic rebuild during run. Supply `--ros-run-config=deployment.json` to configuration or set `UWVM_ROS_RUN_CONFIG`. The generic command launcher consumes this explicit configuration for `sum_arguments`:

```json
{
  "format": "uwvm-ros-command-run-v1",
  "backend": "wasi",
  "target": "wasm32-wasip1",
  "runtime": "/absolute/path/to/uwvm2-ros",
  "runtime_arguments": [
    "--runtime-int",
    "--wasip1-global-noinherit-system-environment"
  ],
  "application_arguments": [
    "7",
    "11",
    "24"
  ]
}
```

Use empty `application_arguments` for the two stdin operations and provide their stdin. For a wasm64 application, set `target` to `wasm64-wasip1` and explicitly append `--wasm-feature-enable-memory64` and `--wasm-feature-enable-table64` to `runtime_arguments`. The launcher appends the sole `--run` operand and preserves application arguments, including empty strings. It adds no permission, environment, preopen or Core feature option. This generic command format is separate from the public native-ROS deployment v2 format.

Default WASI provides basic inherited standard-stream descriptors. That is sufficient for these programs and does not imply zero descriptor authority. Disabling system-environment inheritance does not grant a directory, socket or ROS resource. Libraries use native Xmake `set_kind("static")` or `set_kind("shared")`; support must be declared by the exact language adapter. An indexed relocatable `.a` and a real preloadable Core `.wasm` require independent producer/consumer verification. A packaged interpreter source module alone proves neither kind.
