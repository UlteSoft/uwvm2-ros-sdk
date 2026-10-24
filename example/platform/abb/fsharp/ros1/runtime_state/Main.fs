// @file Main.fs
// @brief Run one explicit ABB ROS 1 observation with checked cleanup.
// @details The actual source-language application validates argument arity before acquisition, retains
// the whole typed canonical value and reports independent operation/cleanup statuses. The operator
// supplies an existing alias and its matching native type binding. A source-backed compiler or VM is
// required; no grant, replay or controller admission is implicit.
module Abb.Examples.Main
open System
open Uwvm.Ros
open Uwvm.Abb.Ros1
/// @brief Read the complete abb_rapid_sm_addin_msgs/RuntimeState value with genuine F# full AOT.
/// @param args Exactly one explicit policy alias.
/// @return First operation or independent cleanup failure.
[<EntryPoint>]
let main (args: string array) =
    if args.Length <> 1 then 22 else
        let facts = Client.WaitSample(args.[0], 8372, 250)
        let mutable wire = Array.empty<byte>
        if facts.Primary = 0u then
            try wire <- Ros1Abb_rapid_sm_addin_msgsRuntimeState.Decode(facts.Bytes).Encode()
            with :? ArgumentException -> facts.Primary <- 22u
        Console.WriteLine("{\"primary\":" + string facts.Primary + ",\"cleanup\":" + string facts.Cleanup + ",\"wire_hex\":\"" + Convert.ToHexString(wire).ToLowerInvariant() + "\"}")
        int (min 125u (if facts.Primary <> 0u then facts.Primary else facts.Cleanup))
