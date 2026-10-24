/** @file Program.cs
 * @brief Exercise the complete original ur_msgs/msg/IOStates through genuine CLR AOT.
 */
using System;
using Models = Uwvm.UniversalRobotsUniversalRobotsRos2Complete.Models.BoundedRecords;

public static class Program
{
    public static int Main()
    {
        var codec = Models.Ros2Ur_msgsMsgIOStatesCodec.Instance;
        byte[] bytes = codec.Encode(new Models._Ros2Ur_msgsMsgIOStates());
        byte[] again = codec.Encode(codec.Decode(bytes));
        if(!bytes.AsSpan().SequenceEqual(again))
            return 22;
        Console.WriteLine("{\"type\":\"ur_msgs/msg/IOStates\",\"bytes\":" + bytes.Length + "}");
        return 0;
    }
}
