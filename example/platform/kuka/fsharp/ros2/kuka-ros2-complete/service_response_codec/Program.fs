/// @file Program.fs
/// @brief Exercise the complete original lifecycle_msgs/srv/ChangeState_Response through genuine F# CLR AOT.
open System
open Uwvm.KukaKukaRos2Complete
[<EntryPoint>]
let main _ =
    let codec = Ros2Lifecycle_msgsSrvChangeState_ResponseCodec.Instance
    let bytes = codec.Encode(Ros2Lifecycle_msgsSrvChangeState_Response())
    let again = codec.Encode(codec.Decode(bytes))
    if bytes <> again then failwith "complete canonical record changed"
    Console.WriteLine("{\"type\":\"lifecycle_msgs/srv/ChangeState_Response\",\"bytes\":" + string bytes.Length + "}")
    0
