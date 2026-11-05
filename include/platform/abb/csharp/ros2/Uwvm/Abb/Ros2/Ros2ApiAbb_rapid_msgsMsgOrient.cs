using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Abb.Ros2
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros2ApiAbb_rapid_msgsMsgOrient
    {
        public static readonly ICodec<Ros2Abb_rapid_msgsMsgOrient> Codec =
            new RecordCodec<Ros2Abb_rapid_msgsMsgOrient>(Ros2Abb_rapid_msgsMsgOrient.Encode, Ros2Abb_rapid_msgsMsgOrient.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros2Abb_rapid_msgsMsgOrient> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros2Abb_rapid_msgsMsgOrient> CreateSubscription(Node node, string alias, Action<Ros2Abb_rapid_msgsMsgOrient> callback) =>
            node.CreateSubscription(Codec, alias, Ros2Abb_rapid_msgsMsgOrient.MAX_WIRE_BYTES, callback);
    }
}
