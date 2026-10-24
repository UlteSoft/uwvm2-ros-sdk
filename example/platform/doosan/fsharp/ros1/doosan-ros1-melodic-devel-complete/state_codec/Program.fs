/// @file Program.fs
/// @brief Exercise the complete original dsr_msgs/RobotState through genuine F# CLR AOT.
open System
open Uwvm.DoosanDoosanRos1MelodicDevelComplete
[<EntryPoint>]
let main _ =
    let codec = Ros1Dsr_msgsRobotStateCodec.Instance
    let bytes = codec.Encode(Ros1Dsr_msgsRobotState())
    let again = codec.Encode(codec.Decode(bytes))
    if bytes <> again then failwith "complete canonical record changed"
    Console.WriteLine("{\"type\":\"dsr_msgs/RobotState\",\"bytes\":" + string bytes.Length + "}")
    0
