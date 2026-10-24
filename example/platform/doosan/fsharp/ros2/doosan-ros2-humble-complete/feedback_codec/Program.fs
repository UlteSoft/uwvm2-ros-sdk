/// @file Program.fs
/// @brief Exercise the complete original dsr_msgs2/action/JogH2r_Feedback through genuine F# CLR AOT.
open System
open Uwvm.DoosanDoosanRos2HumbleComplete
[<EntryPoint>]
let main _ =
    let codec = Ros2Dsr_msgs2ActionJogH2r_FeedbackCodec.Instance
    let bytes = codec.Encode(Ros2Dsr_msgs2ActionJogH2r_Feedback())
    let again = codec.Encode(codec.Decode(bytes))
    if bytes <> again then failwith "complete canonical record changed"
    Console.WriteLine("{\"type\":\"dsr_msgs2/action/JogH2r_Feedback\",\"bytes\":" + string bytes.Length + "}")
    0
