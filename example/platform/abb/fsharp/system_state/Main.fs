// @file Main.fs
// @brief Run one explicit ABB ROS 2 observation with checked cleanup.
// @details The actual source-language application validates argument arity before acquisition, retains
// the whole typed canonical value and reports independent operation/cleanup statuses. The operator
// supplies an existing alias and its matching native type binding. A source-backed compiler or VM is
// required; no grant, replay or controller admission is implicit.
module Uwvm.Abb.Example.Main

open Uwvm.Abb
open Uwvm.Abb.FSharp

/// @brief Execute the complete ABB system_state observation as genuine F# full-AOT.
/// @param args Borrowed arguments: ALIAS.
/// @return Original operation, cleanup or output failure clamped to 125.
/// @details Xmake compiles this actual F# source and the managed SDK into one
/// WASI command. Wrong arity returns 22 before acquisition; no host CLR runs.
[<EntryPoint>]
let main (args: string array) =
    if args.Length <> 1 then
        22
    else
        let report = Observations.systemState args.[0] 250
        Observation.Write(report)
