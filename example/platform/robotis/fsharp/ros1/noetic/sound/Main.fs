/// @file Main.fs
/// @brief Read every original Sound field using genuine F#.
/// @details The checked ordinary CLR SDK closes the alias once before output.
module Uwvm.Robotis.Example.Program
open Uwvm.Robotis
open Uwvm.Robotis.Ros1.noetic
/// @brief Run one complete bounded observation.
/// @param args Exactly one independently granted topic alias.
/// @return Actual first operation, codec, cleanup or output failure.
[<EntryPoint>]
let main (args: string array) =
    if args.Length <> 1 then 22
    else Observation.Write(Observations.ReadSound(args[0], 250))
