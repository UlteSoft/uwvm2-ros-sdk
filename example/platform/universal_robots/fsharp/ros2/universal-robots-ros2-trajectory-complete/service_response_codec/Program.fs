/// @file Program.fs
/// @brief Exercise the complete original ur_dashboard_msgs/srv/AddToLog_Response through genuine F# CLR AOT.
open System
open Uwvm.UniversalRobotsUniversalRobotsRos2TrajectoryComplete
[<EntryPoint>]
let main _ =
    let codec = Ros2Ur_dashboard_msgsSrvAddToLog_ResponseCodec.Instance
    let bytes = codec.Encode(Ros2Ur_dashboard_msgsSrvAddToLog_Response())
    let again = codec.Encode(codec.Decode(bytes))
    if bytes <> again then failwith "complete canonical record changed"
    Console.WriteLine("{\"type\":\"ur_dashboard_msgs/srv/AddToLog_Response\",\"bytes\":" + string bytes.Length + "}")
    0
