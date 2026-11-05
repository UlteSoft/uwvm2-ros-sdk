using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Robotis.Ros2.jazzy
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros2ApiSensor_msgsMsgMagneticField
    {
        public static readonly ICodec<Ros2Sensor_msgsMsgMagneticField> Codec =
            new RecordCodec<Ros2Sensor_msgsMsgMagneticField>(Ros2Sensor_msgsMsgMagneticField.Encode, Ros2Sensor_msgsMsgMagneticField.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros2Sensor_msgsMsgMagneticField> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros2Sensor_msgsMsgMagneticField> CreateSubscription(Node node, string alias, Action<Ros2Sensor_msgsMsgMagneticField> callback) =>
            node.CreateSubscription(Codec, alias, Ros2Sensor_msgsMsgMagneticField.MAX_WIRE_BYTES, callback);
    }
}
