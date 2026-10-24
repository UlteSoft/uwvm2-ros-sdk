/// @file Main.fs
/// @brief Execute publish_string with the real F# frontend and the common CLR ABI library.
open Uwvm.RosWasm
[<EntryPoint>]
let main _ = NativeCommand.Run(1u)
