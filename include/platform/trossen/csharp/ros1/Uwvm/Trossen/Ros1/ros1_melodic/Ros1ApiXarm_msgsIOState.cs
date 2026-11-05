using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Trossen.Ros1.ros1_melodic
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiXarm_msgsIOState
    {
        public static readonly ICodec<Ros1Xarm_msgsIOState> Codec =
            new RecordCodec<Ros1Xarm_msgsIOState>(Ros1Xarm_msgsIOState.Encode, Ros1Xarm_msgsIOState.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros1Xarm_msgsIOState> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros1Xarm_msgsIOState> CreateSubscription(Node node, string alias, Action<Ros1Xarm_msgsIOState> callback) =>
            node.CreateSubscription(Codec, alias, Ros1Xarm_msgsIOState.MAX_WIRE_BYTES, callback);
    }
}
