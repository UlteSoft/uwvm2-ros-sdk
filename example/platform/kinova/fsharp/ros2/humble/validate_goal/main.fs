/// @brief Execute genuine F# logic using the shared complete .NET record library.
open System
[<EntryPoint>]
let main _ =
    use input = Console.OpenStandardInput()
    let bytes = Array.zeroCreate<byte> 8581
    let mutable used = 0
    let mutable doneReading = false
    while used < bytes.Length && not doneReading do
        let count = input.Read(bytes, used, bytes.Length - used)
        if count = 0 then doneReading <- true else used <- used + count
    let codec = Uwvm.Kinova.ros2humble.BoundedRecords.Ros2Control_msgsActionFollowJointTrajectory_GoalCodec()
    let value = codec.Decode(bytes.[0 .. used - 1])
    Console.WriteLine(BitConverter.ToString(codec.Encode(value)).Replace("-", "").ToLowerInvariant())
    0
