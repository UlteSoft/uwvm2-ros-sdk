/** @file Program.cs
 * @brief Exercise the complete original control_msgs/action/FollowJointTrajectory_Feedback through genuine CLR AOT.
 */
using System;
using Models = Uwvm.KukaKukaRos2Complete.Models.BoundedRecords;

public static class Program
{
    public static int Main()
    {
        var codec = Models.Ros2Control_msgsActionFollowJointTrajectory_FeedbackCodec.Instance;
        byte[] bytes = codec.Encode(new Models._Ros2Control_msgsActionFollowJointTrajectory_Feedback());
        byte[] again = codec.Encode(codec.Decode(bytes));
        if(!bytes.AsSpan().SequenceEqual(again))
            return 22;
        Console.WriteLine("{\"type\":\"control_msgs/action/FollowJointTrajectory_Feedback\",\"bytes\":" + bytes.Length + "}");
        return 0;
    }
}
