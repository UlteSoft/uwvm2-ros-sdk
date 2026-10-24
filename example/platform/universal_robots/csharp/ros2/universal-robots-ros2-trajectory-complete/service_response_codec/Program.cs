/** @file Program.cs
 * @brief Exercise the complete original ur_dashboard_msgs/srv/AddToLog_Response through genuine CLR AOT.
 */
using System;
using Models = Uwvm.UniversalRobotsUniversalRobotsRos2TrajectoryComplete.Models.BoundedRecords;

public static class Program
{
    public static int Main()
    {
        var codec = Models.Ros2Ur_dashboard_msgsSrvAddToLog_ResponseCodec.Instance;
        byte[] bytes = codec.Encode(new Models._Ros2Ur_dashboard_msgsSrvAddToLog_Response());
        byte[] again = codec.Encode(codec.Decode(bytes));
        if(!bytes.AsSpan().SequenceEqual(again))
            return 22;
        Console.WriteLine("{\"type\":\"ur_dashboard_msgs/srv/AddToLog_Response\",\"bytes\":" + bytes.Length + "}");
        return 0;
    }
}
