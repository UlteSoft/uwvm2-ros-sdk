/** @file Program.cs
 * @brief Exercise the complete original urinterfaces/action/SetMode_Feedback through genuine CLR AOT.
 */
using System;
using Models = Uwvm.UniversalRobotsUniversalRobotsPolyscopexComplete.Models.BoundedRecords;

public static class Program
{
    public static int Main()
    {
        var codec = Models.Ros2UrinterfacesActionSetMode_FeedbackCodec.Instance;
        byte[] bytes = codec.Encode(new Models._Ros2UrinterfacesActionSetMode_Feedback());
        byte[] again = codec.Encode(codec.Decode(bytes));
        if(!bytes.AsSpan().SequenceEqual(again))
            return 22;
        Console.WriteLine("{\"type\":\"urinterfaces/action/SetMode_Feedback\",\"bytes\":" + bytes.Length + "}");
        return 0;
    }
}
