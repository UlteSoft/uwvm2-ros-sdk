/** @file Program.cs
 * @brief Exercise the complete original dsr_msgs/LogAlarm through genuine CLR AOT.
 */
using System;
using Models = Uwvm.DoosanDoosanRos1AwsRobotComplete.Models.BoundedRecords;

public static class Program
{
    public static int Main()
    {
        var codec = Models.Ros1Dsr_msgsLogAlarmCodec.Instance;
        byte[] bytes = codec.Encode(new Models._Ros1Dsr_msgsLogAlarm());
        byte[] again = codec.Encode(codec.Decode(bytes));
        if(!bytes.AsSpan().SequenceEqual(again))
            return 22;
        Console.WriteLine("{\"type\":\"dsr_msgs/LogAlarm\",\"bytes\":" + bytes.Length + "}");
        return 0;
    }
}
