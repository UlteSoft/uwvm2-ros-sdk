/// @file Program.fs
/// @brief Exercise the complete original urinterfaces/action/SetMode_Feedback through genuine F# CLR AOT.
open System
open Uwvm.UniversalRobotsUniversalRobotsPolyscopexComplete
[<EntryPoint>]
let main _ =
    let codec = Ros2UrinterfacesActionSetMode_FeedbackCodec.Instance
    let bytes = codec.Encode(Ros2UrinterfacesActionSetMode_Feedback())
    let again = codec.Encode(codec.Decode(bytes))
    if bytes <> again then failwith "complete canonical record changed"
    Console.WriteLine("{\"type\":\"urinterfaces/action/SetMode_Feedback\",\"bytes\":" + string bytes.Length + "}")
    0
