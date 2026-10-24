/// @file Program.fs
/// @brief Exercise the complete original ur_dashboard_msgs/SetModeFeedback through genuine F# CLR AOT.
open System
open Uwvm.UniversalRobotsUniversalRobotsRos1Complete
[<EntryPoint>]
let main _ =
    let codec = Ros1Ur_dashboard_msgsSetModeFeedbackCodec.Instance
    let bytes = codec.Encode(Ros1Ur_dashboard_msgsSetModeFeedback())
    let again = codec.Encode(codec.Decode(bytes))
    if bytes <> again then failwith "complete canonical record changed"
    Console.WriteLine("{\"type\":\"ur_dashboard_msgs/SetModeFeedback\",\"bytes\":" + string bytes.Length + "}")
    0
