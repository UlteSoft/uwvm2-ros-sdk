/** @file Program.cs
 * @brief Exercise the complete original ur_dashboard_msgs/SetModeFeedback through genuine CLR AOT.
 */
using System;
using Models = Uwvm.UniversalRobotsUniversalRobotsRos1Complete.Models.BoundedRecords;

public static class Program
{
    public static int Main()
    {
        var codec = Models.Ros1Ur_dashboard_msgsSetModeFeedbackCodec.Instance;
        byte[] bytes = codec.Encode(new Models._Ros1Ur_dashboard_msgsSetModeFeedback());
        byte[] again = codec.Encode(codec.Decode(bytes));
        if(!bytes.AsSpan().SequenceEqual(again))
            return 22;
        Console.WriteLine("{\"type\":\"ur_dashboard_msgs/SetModeFeedback\",\"bytes\":" + bytes.Length + "}");
        return 0;
    }
}
