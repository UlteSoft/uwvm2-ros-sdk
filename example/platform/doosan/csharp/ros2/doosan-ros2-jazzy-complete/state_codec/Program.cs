/** @file Program.cs
 * @brief Exercise the complete original dsr_msgs2/msg/RobotState through genuine CLR AOT.
 */
using System;
using Models = Uwvm.DoosanDoosanRos2JazzyComplete.Models.BoundedRecords;

public static class Program
{
    public static int Main()
    {
        var codec = Models.Ros2Dsr_msgs2MsgRobotStateCodec.Instance;
        byte[] bytes = codec.Encode(new Models._Ros2Dsr_msgs2MsgRobotState());
        byte[] again = codec.Encode(codec.Decode(bytes));
        if(!bytes.AsSpan().SequenceEqual(again))
            return 22;
        Console.WriteLine("{\"type\":\"dsr_msgs2/msg/RobotState\",\"bytes\":" + bytes.Length + "}");
        return 0;
    }
}
