/** @file Program.cs
 * @brief Exercise the complete original lifecycle_msgs/srv/ChangeState_Response through genuine CLR AOT.
 */
using System;
using Models = Uwvm.KukaKukaRos2Complete.Models.BoundedRecords;

public static class Program
{
    public static int Main()
    {
        var codec = Models.Ros2Lifecycle_msgsSrvChangeState_ResponseCodec.Instance;
        byte[] bytes = codec.Encode(new Models._Ros2Lifecycle_msgsSrvChangeState_Response());
        byte[] again = codec.Encode(codec.Decode(bytes));
        if(!bytes.AsSpan().SequenceEqual(again))
            return 22;
        Console.WriteLine("{\"type\":\"lifecycle_msgs/srv/ChangeState_Response\",\"bytes\":" + bytes.Length + "}");
        return 0;
    }
}
