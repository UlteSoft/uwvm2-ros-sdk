using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Abb.Ros1
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiSensor_msgsJointState
    {
        public static readonly ICodec<Ros1Sensor_msgsJointState> Codec =
            new RecordCodec<Ros1Sensor_msgsJointState>(Ros1Sensor_msgsJointState.Encode, Ros1Sensor_msgsJointState.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros1Sensor_msgsJointState> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros1Sensor_msgsJointState> CreateSubscription(Node node, string alias, Action<Ros1Sensor_msgsJointState> callback) =>
            node.CreateSubscription(Codec, alias, Ros1Sensor_msgsJointState.MAX_WIRE_BYTES, callback);
    }
}
