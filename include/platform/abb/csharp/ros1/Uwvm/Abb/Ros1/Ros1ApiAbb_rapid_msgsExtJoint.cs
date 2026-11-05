using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Abb.Ros1
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiAbb_rapid_msgsExtJoint
    {
        public static readonly ICodec<Ros1Abb_rapid_msgsExtJoint> Codec =
            new RecordCodec<Ros1Abb_rapid_msgsExtJoint>(Ros1Abb_rapid_msgsExtJoint.Encode, Ros1Abb_rapid_msgsExtJoint.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros1Abb_rapid_msgsExtJoint> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros1Abb_rapid_msgsExtJoint> CreateSubscription(Node node, string alias, Action<Ros1Abb_rapid_msgsExtJoint> callback) =>
            node.CreateSubscription(Codec, alias, Ros1Abb_rapid_msgsExtJoint.MAX_WIRE_BYTES, callback);
    }
}
