/// @file Main.fs
/// @brief Execute the genuine agibot Main application over its explicit SDK imports.
/// @details The application owns its values and closes explicitly acquired capabilities. An installed
/// compiler/engine and exact native deployment remain separate requirements.
module Agibot.Examples.Program

open Agibot.FSharp

/// Execute one original AimDK observation inside a genuine F# AOT Wasm command.
/// args contains one exact granted alias. The SDK retires its owner before JSON
/// output; original service response codes remain separate from ABI failures.
[<EntryPoint>]
let main (args: string array) : int =
    if args.Length <> 1 then
        eprintfn "Expected exactly one granted Agibot alias"
        22
    else
        let result = Client.queryMode args[0]
        if result.Error <> 0u || result.Cleanup <> 0u then
            eprintfn "Agibot observation failed: %u; close: %u" result.Error result.Cleanup
            1
        else
            printfn "%s" result.Json
            if result.Vendor = 0L then 0 else 1
