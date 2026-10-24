/** @file Program.cs
 * @brief Exercise the complete original dsr_msgs/AlterMotionStream through genuine CLR AOT.
 */
using System;
using Models = Uwvm.DoosanDoosanRos1Patch1Complete.Models.BoundedRecords;

public static class Program
{
    public static int Main()
    {
        var codec = Models.Ros1Dsr_msgsAlterMotionStreamCodec.Instance;
        byte[] bytes = codec.Encode(new Models._Ros1Dsr_msgsAlterMotionStream());
        byte[] again = codec.Encode(codec.Decode(bytes));
        if(!bytes.AsSpan().SequenceEqual(again))
            return 22;
        Console.WriteLine("{\"type\":\"dsr_msgs/AlterMotionStream\",\"bytes\":" + bytes.Length + "}");
        return 0;
    }
}
