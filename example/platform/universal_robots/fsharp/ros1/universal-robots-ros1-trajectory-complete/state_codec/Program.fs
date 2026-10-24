/// @file Program.fs
/// @brief Exercise the complete original ur_msgs/IOStates through genuine F# CLR AOT.
open System
open Uwvm.UniversalRobotsUniversalRobotsRos1TrajectoryComplete
[<EntryPoint>]
let main _ =
    let codec = Ros1Ur_msgsIOStatesCodec.Instance
    let bytes = codec.Encode(Ros1Ur_msgsIOStates())
    let again = codec.Encode(codec.Decode(bytes))
    if bytes <> again then failwith "complete canonical record changed"
    Console.WriteLine("{\"type\":\"ur_msgs/IOStates\",\"bytes\":" + string bytes.Length + "}")
    0
