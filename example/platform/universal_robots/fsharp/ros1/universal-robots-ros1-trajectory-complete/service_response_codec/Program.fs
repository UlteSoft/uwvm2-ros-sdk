/// @file Program.fs
/// @brief Exercise the complete original ur_dashboard_msgs/AddToLogResponse through genuine F# CLR AOT.
open System
open Uwvm.UniversalRobotsUniversalRobotsRos1TrajectoryComplete
[<EntryPoint>]
let main _ =
    let codec = Ros1Ur_dashboard_msgsAddToLogResponseCodec.Instance
    let bytes = codec.Encode(Ros1Ur_dashboard_msgsAddToLogResponse())
    let again = codec.Encode(codec.Decode(bytes))
    if bytes <> again then failwith "complete canonical record changed"
    Console.WriteLine("{\"type\":\"ur_dashboard_msgs/AddToLogResponse\",\"bytes\":" + string bytes.Length + "}")
    0
