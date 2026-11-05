using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Robotis.Ros2.main
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros2ApiSensor_msgsMsgImu
    {
        public static readonly ICodec<Ros2Sensor_msgsMsgImu> Codec =
            new RecordCodec<Ros2Sensor_msgsMsgImu>(Ros2Sensor_msgsMsgImu.Encode, Ros2Sensor_msgsMsgImu.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros2Sensor_msgsMsgImu> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros2Sensor_msgsMsgImu> CreateSubscription(Node node, string alias, Action<Ros2Sensor_msgsMsgImu> callback) =>
            node.CreateSubscription(Codec, alias, Ros2Sensor_msgsMsgImu.MAX_WIRE_BYTES, callback);
    }
}
