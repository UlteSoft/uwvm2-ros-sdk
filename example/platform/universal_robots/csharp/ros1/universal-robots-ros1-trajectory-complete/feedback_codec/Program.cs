/** @file Program.cs
 * @brief Exercise the complete original control_msgs/FollowJointTrajectoryFeedback through genuine CLR AOT.
 */
using System;
using Models = Uwvm.UniversalRobotsUniversalRobotsRos1TrajectoryComplete.Models.BoundedRecords;

public static class Program
{
    public static int Main()
    {
        var codec = Models.Ros1Control_msgsFollowJointTrajectoryFeedbackCodec.Instance;
        byte[] bytes = codec.Encode(new Models._Ros1Control_msgsFollowJointTrajectoryFeedback());
        byte[] again = codec.Encode(codec.Decode(bytes));
        if(!bytes.AsSpan().SequenceEqual(again))
            return 22;
        Console.WriteLine("{\"type\":\"control_msgs/FollowJointTrajectoryFeedback\",\"bytes\":" + bytes.Length + "}");
        return 0;
    }
}
