using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Abb.Ros1
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiControl_msgsJointTolerance
    {
        public static readonly ICodec<Ros1Control_msgsJointTolerance> Codec =
            new RecordCodec<Ros1Control_msgsJointTolerance>(Ros1Control_msgsJointTolerance.Encode, Ros1Control_msgsJointTolerance.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros1Control_msgsJointTolerance> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros1Control_msgsJointTolerance> CreateSubscription(Node node, string alias, Action<Ros1Control_msgsJointTolerance> callback) =>
            node.CreateSubscription(Codec, alias, Ros1Control_msgsJointTolerance.MAX_WIRE_BYTES, callback);
    }
}
