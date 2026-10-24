/** @file Program.cs
 * @brief Exercise the complete original urinterfaces/srv/SetAnalogOutput_Response through genuine CLR AOT.
 */
using System;
using Models = Uwvm.UniversalRobotsUniversalRobotsPolyscopexComplete.Models.BoundedRecords;

public static class Program
{
    public static int Main()
    {
        var codec = Models.Ros2UrinterfacesSrvSetAnalogOutput_ResponseCodec.Instance;
        byte[] bytes = codec.Encode(new Models._Ros2UrinterfacesSrvSetAnalogOutput_Response());
        byte[] again = codec.Encode(codec.Decode(bytes));
        if(!bytes.AsSpan().SequenceEqual(again))
            return 22;
        Console.WriteLine("{\"type\":\"urinterfaces/srv/SetAnalogOutput_Response\",\"bytes\":" + bytes.Length + "}");
        return 0;
    }
}
