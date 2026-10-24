/** @file Program.cs
 * @brief Exercise the complete original ur_msgs/IOStates through genuine CLR AOT.
 */
using System;
using Models = Uwvm.UniversalRobotsUniversalRobotsRos1TrajectoryComplete.Models.BoundedRecords;

public static class Program
{
    public static int Main()
    {
        var codec = Models.Ros1Ur_msgsIOStatesCodec.Instance;
        byte[] bytes = codec.Encode(new Models._Ros1Ur_msgsIOStates());
        byte[] again = codec.Encode(codec.Decode(bytes));
        if(!bytes.AsSpan().SequenceEqual(again))
            return 22;
        Console.WriteLine("{\"type\":\"ur_msgs/IOStates\",\"bytes\":" + bytes.Length + "}");
        return 0;
    }
}
