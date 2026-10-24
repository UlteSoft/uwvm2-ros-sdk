/// @file Main.fs
/// @brief Read every original LedGroup field using genuine F#.
/// @details The checked ordinary CLR SDK closes the alias once before output.
module Uwvm.Pal.Example.Program
open Uwvm.Pal
open Uwvm.Pal.Ros2.ros2_humble_devel
/// @brief Run one complete bounded observation.
/// @param args Exactly one independently granted topic alias.
/// @return Actual first operation, codec, cleanup or output failure.
[<EntryPoint>]
let main (args: string array) =
    if args.Length <> 1 then 22
    else Observation.Write(Observations.ReadLedGroup(args[0], 250))
