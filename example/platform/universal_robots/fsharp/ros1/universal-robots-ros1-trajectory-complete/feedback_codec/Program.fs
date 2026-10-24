/// @file Program.fs
/// @brief Exercise the complete original control_msgs/FollowJointTrajectoryFeedback through genuine F# CLR AOT.
open System
open Uwvm.UniversalRobotsUniversalRobotsRos1TrajectoryComplete
[<EntryPoint>]
let main _ =
    let codec = Ros1Control_msgsFollowJointTrajectoryFeedbackCodec.Instance
    let bytes = codec.Encode(Ros1Control_msgsFollowJointTrajectoryFeedback())
    let again = codec.Encode(codec.Decode(bytes))
    if bytes <> again then failwith "complete canonical record changed"
    Console.WriteLine("{\"type\":\"control_msgs/FollowJointTrajectoryFeedback\",\"bytes\":" + string bytes.Length + "}")
    0
