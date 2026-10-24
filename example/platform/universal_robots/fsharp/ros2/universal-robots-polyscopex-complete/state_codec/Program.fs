/// @file Program.fs
/// @brief Exercise the complete original urinterfaces/msg/RobotMode through genuine F# CLR AOT.
open System
open Uwvm.UniversalRobotsUniversalRobotsPolyscopexComplete
[<EntryPoint>]
let main _ =
    let codec = Ros2UrinterfacesMsgRobotModeCodec.Instance
    let bytes = codec.Encode(Ros2UrinterfacesMsgRobotMode())
    let again = codec.Encode(codec.Decode(bytes))
    if bytes <> again then failwith "complete canonical record changed"
    Console.WriteLine("{\"type\":\"urinterfaces/msg/RobotMode\",\"bytes\":" + string bytes.Length + "}")
    0
