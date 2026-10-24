using System;

/** @brief Run the genuine complete .NET codec on bounded runtime input. */
public static class Program
{
    public static void Main()
    {
        using var input = Console.OpenStandardInput();
        var bytes = new byte[16981];
        int used = 0;
        while(used < bytes.Length)
        {
            int count = input.Read(bytes, used, bytes.Length - used);
            if(count == 0)
                break;
            used += count;
        }
        Array.Resize(ref bytes, used);
        var codec = new Uwvm.Flexiv.controllercorefoxy.BoundedRecords.Ros2Trajectory_msgsMsgJointTrajectoryCodec();
        var value = codec.Decode(bytes);
        Console.WriteLine(BitConverter.ToString(codec.Encode(value)).Replace("-", "").ToLowerInvariant());
    }
}
