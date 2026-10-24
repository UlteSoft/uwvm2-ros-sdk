/** @file Program.cs
 * @brief Exercise the complete original urinterfaces/msg/RobotMode through genuine CLR AOT.
 */
using System;
using Models = Uwvm.UniversalRobotsUniversalRobotsPolyscopexComplete.Models.BoundedRecords;

public static class Program
{
    public static int Main()
    {
        var codec = Models.Ros2UrinterfacesMsgRobotModeCodec.Instance;
        byte[] bytes = codec.Encode(new Models._Ros2UrinterfacesMsgRobotMode());
        byte[] again = codec.Encode(codec.Decode(bytes));
        if(!bytes.AsSpan().SequenceEqual(again))
            return 22;
        Console.WriteLine("{\"type\":\"urinterfaces/msg/RobotMode\",\"bytes\":" + bytes.Length + "}");
        return 0;
    }
}
