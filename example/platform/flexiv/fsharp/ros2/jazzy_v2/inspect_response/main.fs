/// @brief Execute genuine F# logic using the shared complete .NET record library.
open System
[<EntryPoint>]
let main _ =
    use input = Console.OpenStandardInput()
    let bytes = Array.zeroCreate<byte> 262
    let mutable used = 0
    let mutable doneReading = false
    while used < bytes.Length && not doneReading do
        let count = input.Read(bytes, used, bytes.Length - used)
        if count = 0 then doneReading <- true else used <- used + count
    let codec = Uwvm.Flexiv.ros2jazzyv2.BoundedRecords.Ros2Flexiv_msgsActionGrasp_ResultCodec()
    let value = codec.Decode(bytes.[0 .. used - 1])
    Console.WriteLine(BitConverter.ToString(codec.Encode(value)).Replace("-", "").ToLowerInvariant())
    0
