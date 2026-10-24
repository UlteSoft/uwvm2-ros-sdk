/** @file Program.cs
 * @brief Exercise the complete original dsr_msgs/GetRobotStateResponse through genuine CLR AOT.
 */
using System;
using Models = Uwvm.DoosanDoosanRos1SongMsPatch1Complete.Models.BoundedRecords;

public static class Program
{
    public static int Main()
    {
        var codec = Models.Ros1Dsr_msgsGetRobotStateResponseCodec.Instance;
        byte[] bytes = codec.Encode(new Models._Ros1Dsr_msgsGetRobotStateResponse());
        byte[] again = codec.Encode(codec.Decode(bytes));
        if(!bytes.AsSpan().SequenceEqual(again))
            return 22;
        Console.WriteLine("{\"type\":\"dsr_msgs/GetRobotStateResponse\",\"bytes\":" + bytes.Length + "}");
        return 0;
    }
}
