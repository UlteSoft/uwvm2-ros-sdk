/// @file Program.fs
/// @brief Exercise the complete original control_msgs/action/FollowJointTrajectory_Feedback through genuine F# CLR AOT.
open System
open Uwvm.KukaKukaRos2Complete
[<EntryPoint>]
let main _ =
    let codec = Ros2Control_msgsActionFollowJointTrajectory_FeedbackCodec.Instance
    let bytes = codec.Encode(Ros2Control_msgsActionFollowJointTrajectory_Feedback())
    let again = codec.Encode(codec.Decode(bytes))
    if bytes <> again then failwith "complete canonical record changed"
    Console.WriteLine("{\"type\":\"control_msgs/action/FollowJointTrajectory_Feedback\",\"bytes\":" + string bytes.Length + "}")
    0
