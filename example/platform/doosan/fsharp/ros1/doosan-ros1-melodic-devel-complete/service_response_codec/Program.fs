/// @file Program.fs
/// @brief Exercise the complete original dsr_msgs/GetRobotStateResponse through genuine F# CLR AOT.
open System
open Uwvm.DoosanDoosanRos1MelodicDevelComplete
[<EntryPoint>]
let main _ =
    let codec = Ros1Dsr_msgsGetRobotStateResponseCodec.Instance
    let bytes = codec.Encode(Ros1Dsr_msgsGetRobotStateResponse())
    let again = codec.Encode(codec.Decode(bytes))
    if bytes <> again then failwith "complete canonical record changed"
    Console.WriteLine("{\"type\":\"dsr_msgs/GetRobotStateResponse\",\"bytes\":" + string bytes.Length + "}")
    0
