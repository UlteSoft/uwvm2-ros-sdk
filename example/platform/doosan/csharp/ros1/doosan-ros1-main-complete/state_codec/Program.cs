/** @file Program.cs
 * @brief Exercise the complete original dsr_msgs/RobotState through genuine CLR AOT.
 */
using System;
using Models = Uwvm.DoosanDoosanRos1MainComplete.Models.BoundedRecords;

public static class Program
{
    public static int Main()
    {
        var codec = Models.Ros1Dsr_msgsRobotStateCodec.Instance;
        byte[] bytes = codec.Encode(new Models._Ros1Dsr_msgsRobotState());
        byte[] again = codec.Encode(codec.Decode(bytes));
        if(!bytes.AsSpan().SequenceEqual(again))
            return 22;
        Console.WriteLine("{\"type\":\"dsr_msgs/RobotState\",\"bytes\":" + bytes.Length + "}");
        return 0;
    }
}
