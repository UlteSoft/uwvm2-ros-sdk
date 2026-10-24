/** @file Program.cs
 * @brief Exercise the complete original ur_msgs/action/FollowJointTrajectoryUntil_Feedback through genuine CLR AOT.
 */
using System;
using Models = Uwvm.UniversalRobotsUniversalRobotsRos2TrajectoryComplete.Models.BoundedRecords;

public static class Program
{
    public static int Main()
    {
        var codec = Models.Ros2Ur_msgsActionFollowJointTrajectoryUntil_FeedbackCodec.Instance;
        byte[] bytes = codec.Encode(new Models._Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback());
        byte[] again = codec.Encode(codec.Decode(bytes));
        if(!bytes.AsSpan().SequenceEqual(again))
            return 22;
        Console.WriteLine("{\"type\":\"ur_msgs/action/FollowJointTrajectoryUntil_Feedback\",\"bytes\":" + bytes.Length + "}");
        return 0;
    }
}
