// @file Main.fs
// @brief Run one explicit FANUC ROS 2 observation with checked cleanup.
// @details The actual source-language application validates argument arity before acquisition, retains
// the whole typed canonical value and reports independent operation/cleanup statuses. The operator
// supplies an existing alias and its matching native type binding. A source-backed compiler or VM is
// required; no grant, replay or controller admission is implicit.
module Fanuc.Examples.Main
open System
open System.Threading
open Uwvm.RosWasm
open Uwvm.Fanuc.Ros2

/// Observe in the real F# Wasm guest. Poll only idle results and retire an acquired owner once.
[<EntryPoint>]
let main (args: string array) =
    if args.Length <> 1 then 22 else
        let mutable primary = 0u
        let mutable cleanup = 0u
        let mutable wire = Array.empty<byte>
        let mutable owner: Capability option = None
        let session = new Session(new NativeTransport(), 1)
        try
            try
                session.CheckAbi()
                let capability = session.Open(args.[0])
                owner <- Some capability
                primary <- capability.Invoke("topic_subscribe").Error
                let mutable attempt = 0
                let mutable waiting = primary = 0u
                while waiting && attempt < 250 do
                    let result = capability.Invoke("event_poll", capacity = 1)
                    primary <- result.Error
                    attempt <- attempt + 1
                    waiting <- primary = 11u
                    if primary = 0u then
                        wire <- Ros2Fanuc_msgsMsgConnectionStatus.Encode(Ros2Fanuc_msgsMsgConnectionStatus.Decode(result.Data))
                    if waiting && attempt < 250 then Thread.Sleep(20)
            with
            | :? RosException as error -> primary <- error.Result.Error
            | :? ArgumentException -> primary <- 22u
            | :? FormatException -> primary <- 22u
        finally
            match owner with
            | Some capability ->
                try cleanup <- capability.CloseChecked().Error
                with
                | :? RosException as error -> cleanup <- error.Result.Error
                | _ -> cleanup <- 5u
            | None -> ()
        Console.WriteLine("{\"primary\":" + string primary + ",\"cleanup\":" + string cleanup + ",\"wire_hex\":\"" + Convert.ToHexString(wire).ToLowerInvariant() + "\"}")
        int (min 125u (if primary <> 0u then primary else cleanup))
