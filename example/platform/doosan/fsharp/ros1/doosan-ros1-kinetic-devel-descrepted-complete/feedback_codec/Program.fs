/// @file Program.fs
/// @brief Exercise the complete original dsr_msgs/LogAlarm through genuine F# CLR AOT.
open System
open Uwvm.DoosanDoosanRos1KineticDevelDescreptedComplete
[<EntryPoint>]
let main _ =
    let codec = Ros1Dsr_msgsLogAlarmCodec.Instance
    let bytes = codec.Encode(Ros1Dsr_msgsLogAlarm())
    let again = codec.Encode(codec.Decode(bytes))
    if bytes <> again then failwith "complete canonical record changed"
    Console.WriteLine("{\"type\":\"dsr_msgs/LogAlarm\",\"bytes\":" + string bytes.Length + "}")
    0
