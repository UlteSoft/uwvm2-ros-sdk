/// @file Main.fs
/// @brief Execute call_trigger with the real F# frontend and the common CLR ABI library.
open Uwvm.RosWasm
[<EntryPoint>]
let main _ = NativeCommand.Run(3u)
