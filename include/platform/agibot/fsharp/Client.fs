/// @file Client.fs
/// @brief Provide the complete agibot Client.fs source contract.
/// @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
/// encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
namespace Agibot.FSharp

/// Complete owned AimDK observation; JSON preserves original fields and exact
/// decimal int64/uint64 strings. Failure facts remain independent; no owner escapes.
type Observation =
    { Error: uint32
      Cleanup: uint32
      Json: string
      Vendor: int64 }

/// Actual F# API compiled through Mono LLVMOnly AOT to a standalone WASI guest.
/// The shared .NET transport pins buffers only across the synchronous same-Wasm
/// FFI call and retires the capability before constructing this owned result.
module Client =
    let private own (value: Agibot.Wasm.Observation) =
        { Error = value.Error
          Cleanup = value.Cleanup
          Json = value.Json
          Vendor = value.Vendor }

    /// Query original GetMcAction once using an explicit service alias of 1..255
    /// strict UTF-8 bytes. Inspect Vendor independently; no service is replayed.
    let queryMode (alias: string) : Observation =
        Agibot.Wasm.Transport.Observe(1u, alias, 3000u) |> own

    /// Receive complete McCommonState under timeoutMilliseconds in 1..30000 ms.
    /// The alias must grant state subscription and the runtime must grant the
    /// monotonic clock. Error 110 means deadline expiry; no callback enters F#.
    let nextMotionState (alias: string) (timeoutMilliseconds: uint32) : Observation =
        Agibot.Wasm.Transport.Observe(2u, alias, timeoutMilliseconds) |> own

    /// Enumerate full original X2 Ultra resource/file arrays through the explicit
    /// GetRobotResources service alias. No resource is played or downloaded.
    let listResources (alias: string) : Observation =
        Agibot.Wasm.Transport.Observe(3u, alias, 3000u) |> own
