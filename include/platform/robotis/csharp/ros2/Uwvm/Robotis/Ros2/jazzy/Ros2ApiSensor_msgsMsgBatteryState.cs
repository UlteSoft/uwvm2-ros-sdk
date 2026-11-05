using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Robotis.Ros2.jazzy
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros2ApiSensor_msgsMsgBatteryState
    {
        public static readonly ICodec<Ros2Sensor_msgsMsgBatteryState> Codec =
            new RecordCodec<Ros2Sensor_msgsMsgBatteryState>(Ros2Sensor_msgsMsgBatteryState.Encode, Ros2Sensor_msgsMsgBatteryState.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros2Sensor_msgsMsgBatteryState> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros2Sensor_msgsMsgBatteryState> CreateSubscription(Node node, string alias, Action<Ros2Sensor_msgsMsgBatteryState> callback) =>
            node.CreateSubscription(Codec, alias, Ros2Sensor_msgsMsgBatteryState.MAX_WIRE_BYTES, callback);
    }
}
