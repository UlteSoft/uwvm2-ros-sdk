/// @file Program.fs
/// @brief Exercise the complete original urinterfaces/srv/SetAnalogOutput_Response through genuine F# CLR AOT.
open System
open Uwvm.UniversalRobotsUniversalRobotsPolyscopexComplete
[<EntryPoint>]
let main _ =
    let codec = Ros2UrinterfacesSrvSetAnalogOutput_ResponseCodec.Instance
    let bytes = codec.Encode(Ros2UrinterfacesSrvSetAnalogOutput_Response())
    let again = codec.Encode(codec.Decode(bytes))
    if bytes <> again then failwith "complete canonical record changed"
    Console.WriteLine("{\"type\":\"urinterfaces/srv/SetAnalogOutput_Response\",\"bytes\":" + string bytes.Length + "}")
    0
