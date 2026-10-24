/// @file Program.fs
/// @brief Exercise the complete original kuka_driver_interfaces/msg/KssStatus through genuine F# CLR AOT.
open System
open Uwvm.KukaKukaRos2Complete
[<EntryPoint>]
let main _ =
    let codec = Ros2Kuka_driver_interfacesMsgKssStatusCodec.Instance
    let bytes = codec.Encode(Ros2Kuka_driver_interfacesMsgKssStatus())
    let again = codec.Encode(codec.Decode(bytes))
    if bytes <> again then failwith "complete canonical record changed"
    Console.WriteLine("{\"type\":\"kuka_driver_interfaces/msg/KssStatus\",\"bytes\":" + string bytes.Length + "}")
    0
