using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Robotis.Ros1.noetic
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiSensor_msgsLaserScan
    {
        public static readonly ICodec<Ros1Sensor_msgsLaserScan> Codec =
            new RecordCodec<Ros1Sensor_msgsLaserScan>(Ros1Sensor_msgsLaserScan.Encode, Ros1Sensor_msgsLaserScan.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros1Sensor_msgsLaserScan> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros1Sensor_msgsLaserScan> CreateSubscription(Node node, string alias, Action<Ros1Sensor_msgsLaserScan> callback) =>
            node.CreateSubscription(Codec, alias, Ros1Sensor_msgsLaserScan.MAX_WIRE_BYTES, callback);
    }
}
