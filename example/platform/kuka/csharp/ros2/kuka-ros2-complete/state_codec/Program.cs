/** @file Program.cs
 * @brief Exercise the complete original kuka_driver_interfaces/msg/KssStatus through genuine CLR AOT.
 */
using System;
using Models = Uwvm.KukaKukaRos2Complete.Models.BoundedRecords;

public static class Program
{
    public static int Main()
    {
        var codec = Models.Ros2Kuka_driver_interfacesMsgKssStatusCodec.Instance;
        byte[] bytes = codec.Encode(new Models._Ros2Kuka_driver_interfacesMsgKssStatus());
        byte[] again = codec.Encode(codec.Decode(bytes));
        if(!bytes.AsSpan().SequenceEqual(again))
            return 22;
        Console.WriteLine("{\"type\":\"kuka_driver_interfaces/msg/KssStatus\",\"bytes\":" + bytes.Length + "}");
        return 0;
    }
}
