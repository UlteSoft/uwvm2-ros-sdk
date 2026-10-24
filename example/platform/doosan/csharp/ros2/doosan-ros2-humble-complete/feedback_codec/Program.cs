/** @file Program.cs
 * @brief Exercise the complete original dsr_msgs2/action/JogH2r_Feedback through genuine CLR AOT.
 */
using System;
using Models = Uwvm.DoosanDoosanRos2HumbleComplete.Models.BoundedRecords;

public static class Program
{
    public static int Main()
    {
        var codec = Models.Ros2Dsr_msgs2ActionJogH2r_FeedbackCodec.Instance;
        byte[] bytes = codec.Encode(new Models._Ros2Dsr_msgs2ActionJogH2r_Feedback());
        byte[] again = codec.Encode(codec.Decode(bytes));
        if(!bytes.AsSpan().SequenceEqual(again))
            return 22;
        Console.WriteLine("{\"type\":\"dsr_msgs2/action/JogH2r_Feedback\",\"bytes\":" + bytes.Length + "}");
        return 0;
    }
}
