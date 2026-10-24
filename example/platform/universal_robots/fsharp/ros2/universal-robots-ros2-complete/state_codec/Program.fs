/// @file Program.fs
/// @brief Exercise the complete original ur_msgs/msg/IOStates through genuine F# CLR AOT.
open System
open Uwvm.UniversalRobotsUniversalRobotsRos2Complete
[<EntryPoint>]
let main _ =
    let codec = Ros2Ur_msgsMsgIOStatesCodec.Instance
    let bytes = codec.Encode(Ros2Ur_msgsMsgIOStates())
    let again = codec.Encode(codec.Decode(bytes))
    if bytes <> again then failwith "complete canonical record changed"
    Console.WriteLine("{\"type\":\"ur_msgs/msg/IOStates\",\"bytes\":" + string bytes.Length + "}")
    0
