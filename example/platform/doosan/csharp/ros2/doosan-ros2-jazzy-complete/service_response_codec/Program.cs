/** @file Program.cs
 * @brief Exercise the complete original dsr_msgs2/srv/GetRobotState_Response through genuine CLR AOT.
 */
using System;
using Models = Uwvm.DoosanDoosanRos2JazzyComplete.Models.BoundedRecords;

public static class Program
{
    public static int Main()
    {
        var codec = Models.Ros2Dsr_msgs2SrvGetRobotState_ResponseCodec.Instance;
        byte[] bytes = codec.Encode(new Models._Ros2Dsr_msgs2SrvGetRobotState_Response());
        byte[] again = codec.Encode(codec.Decode(bytes));
        if(!bytes.AsSpan().SequenceEqual(again))
            return 22;
        Console.WriteLine("{\"type\":\"dsr_msgs2/srv/GetRobotState_Response\",\"bytes\":" + bytes.Length + "}");
        return 0;
    }
}
