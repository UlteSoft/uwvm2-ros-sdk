/// @file Program.fs
/// @brief Exercise the complete original dsr_msgs2/srv/GetRobotState_Response through genuine F# CLR AOT.
open System
open Uwvm.DoosanDoosanRos2HumbleComplete
[<EntryPoint>]
let main _ =
    let codec = Ros2Dsr_msgs2SrvGetRobotState_ResponseCodec.Instance
    let bytes = codec.Encode(Ros2Dsr_msgs2SrvGetRobotState_Response())
    let again = codec.Encode(codec.Decode(bytes))
    if bytes <> again then failwith "complete canonical record changed"
    Console.WriteLine("{\"type\":\"dsr_msgs2/srv/GetRobotState_Response\",\"bytes\":" + string bytes.Length + "}")
    0
