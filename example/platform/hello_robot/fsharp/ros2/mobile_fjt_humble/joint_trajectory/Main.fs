/// @file Main.fs
/// @brief Read every original JointTrajectory field using genuine F#.
/// @details The checked ordinary CLR SDK closes the alias once before output.
module Uwvm.HelloRobot.Example.Program
open Uwvm.HelloRobot
open Uwvm.HelloRobot.Ros2.mobile_fjt_humble
/// @brief Run one complete bounded observation.
/// @param args Exactly one independently granted topic alias.
/// @return Actual first operation, codec, cleanup or output failure.
[<EntryPoint>]
let main (args: string array) =
    if args.Length <> 1 then 22
    else Observation.Write(Observations.ReadJointTrajectory(args[0], 250))
