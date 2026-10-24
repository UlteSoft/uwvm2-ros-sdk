/// @file Main.fs
/// @brief Execute subscribe_string with the real F# frontend and the common CLR ABI library.
open Uwvm.RosWasm
[<EntryPoint>]
let main _ = NativeCommand.Run(2u)
