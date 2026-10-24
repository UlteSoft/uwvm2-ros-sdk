/** @file Program.cs
 * @brief Exercise the complete original ur_dashboard_msgs/AddToLogResponse through genuine CLR AOT.
 */
using System;
using Models = Uwvm.UniversalRobotsUniversalRobotsRos1TrajectoryComplete.Models.BoundedRecords;

public static class Program
{
    public static int Main()
    {
        var codec = Models.Ros1Ur_dashboard_msgsAddToLogResponseCodec.Instance;
        byte[] bytes = codec.Encode(new Models._Ros1Ur_dashboard_msgsAddToLogResponse());
        byte[] again = codec.Encode(codec.Decode(bytes));
        if(!bytes.AsSpan().SequenceEqual(again))
            return 22;
        Console.WriteLine("{\"type\":\"ur_dashboard_msgs/AddToLogResponse\",\"bytes\":" + bytes.Length + "}");
        return 0;
    }
}
