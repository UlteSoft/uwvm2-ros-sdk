using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Abb.Ros1
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiAbb_egm_msgsEGMState
    {
        public static readonly ICodec<Ros1Abb_egm_msgsEGMState> Codec =
            new RecordCodec<Ros1Abb_egm_msgsEGMState>(Ros1Abb_egm_msgsEGMState.Encode, Ros1Abb_egm_msgsEGMState.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros1Abb_egm_msgsEGMState> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros1Abb_egm_msgsEGMState> CreateSubscription(Node node, string alias, Action<Ros1Abb_egm_msgsEGMState> callback) =>
            node.CreateSubscription(Codec, alias, Ros1Abb_egm_msgsEGMState.MAX_WIRE_BYTES, callback);
    }
}
