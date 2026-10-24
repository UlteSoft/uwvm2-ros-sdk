/// @file Program.fs
/// @brief Exercise the complete original dsr_msgs/AlterMotionStream through genuine F# CLR AOT.
open System
open Uwvm.DoosanDoosanRos1MelodicDevelComplete
[<EntryPoint>]
let main _ =
    let codec = Ros1Dsr_msgsAlterMotionStreamCodec.Instance
    let bytes = codec.Encode(Ros1Dsr_msgsAlterMotionStream())
    let again = codec.Encode(codec.Decode(bytes))
    if bytes <> again then failwith "complete canonical record changed"
    Console.WriteLine("{\"type\":\"dsr_msgs/AlterMotionStream\",\"bytes\":" + string bytes.Length + "}")
    0
