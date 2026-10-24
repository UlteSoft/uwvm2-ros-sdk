/// @file Program.fs
/// @brief Exercise the complete original dsr_msgs2/msg/RobotState through genuine F# CLR AOT.
open System
open Uwvm.DoosanDoosanRos2HumbleComplete
[<EntryPoint>]
let main _ =
    let codec = Ros2Dsr_msgs2MsgRobotStateCodec.Instance
    let bytes = codec.Encode(Ros2Dsr_msgs2MsgRobotState())
    let again = codec.Encode(codec.Decode(bytes))
    if bytes <> again then failwith "complete canonical record changed"
    Console.WriteLine("{\"type\":\"dsr_msgs2/msg/RobotState\",\"bytes\":" + string bytes.Length + "}")
    0
