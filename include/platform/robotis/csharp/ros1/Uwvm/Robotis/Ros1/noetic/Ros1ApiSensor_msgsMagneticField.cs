using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Robotis.Ros1.noetic
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiSensor_msgsMagneticField
    {
        public static readonly ICodec<Ros1Sensor_msgsMagneticField> Codec =
            new RecordCodec<Ros1Sensor_msgsMagneticField>(Ros1Sensor_msgsMagneticField.Encode, Ros1Sensor_msgsMagneticField.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros1Sensor_msgsMagneticField> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros1Sensor_msgsMagneticField> CreateSubscription(Node node, string alias, Action<Ros1Sensor_msgsMagneticField> callback) =>
            node.CreateSubscription(Codec, alias, Ros1Sensor_msgsMagneticField.MAX_WIRE_BYTES, callback);
    }
}
