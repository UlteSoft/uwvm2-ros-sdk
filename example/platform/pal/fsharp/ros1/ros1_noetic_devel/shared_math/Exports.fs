/// @details The scalar preload contract preserves each CLR module's own heap
/// and initialization state. The example checks overflow cleanup and isolated
/// counters; public binding probes exercise complete record values and explicit
/// denied access. Positive native vendor traffic is a separate qualification.
/// @file Exports.fs
/// @brief Export genuine F# scalar arithmetic with actual typed catch and finally.
module Uwvm.Pal.Preload.Arithmetic
open System
open System.Runtime.InteropServices
let mutable private caught = 0
let mutable private finished = 0
let mutable private initializations = 0
do initializations <- initializations + 1

/// @return Exact low-i32 sum/status zero, or status one after a real overflow catch.
[<UnmanagedCallersOnly(EntryPoint = "checked_add")>]
let checkedAdd (left: int32, right: int32): int64 =
    try
        try
            let sum = int64 left + int64 right
            if sum < int64 Int32.MinValue || sum > int64 Int32.MaxValue then
                raise (OverflowException("i32 overflow"))
            sum &&& 0xffffffffL
        with :? OverflowException ->
            caught <- caught + 1
            1L <<< 32
    finally
        finished <- finished + 1

/// @return Actual catch count in high bits and finally count in low bits.
[<UnmanagedCallersOnly(EntryPoint = "cleanup_counts")>]
let cleanupCounts (): int64 = (int64 caught <<< 32) ||| (int64 finished &&& 0xffffffffL)

/// @return Actual module-local managed initialization executions.
[<UnmanagedCallersOnly(EntryPoint = "initialization_count")>]
let initializationCount (): int32 = initializations
