using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Abb.Ros2
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros2ApiAbb_rapid_msgsMsgRobTarget
    {
        public static readonly ICodec<Ros2Abb_rapid_msgsMsgRobTarget> Codec =
            new RecordCodec<Ros2Abb_rapid_msgsMsgRobTarget>(Ros2Abb_rapid_msgsMsgRobTarget.Encode, Ros2Abb_rapid_msgsMsgRobTarget.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros2Abb_rapid_msgsMsgRobTarget> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros2Abb_rapid_msgsMsgRobTarget> CreateSubscription(Node node, string alias, Action<Ros2Abb_rapid_msgsMsgRobTarget> callback) =>
            node.CreateSubscription(Codec, alias, Ros2Abb_rapid_msgsMsgRobTarget.MAX_WIRE_BYTES, callback);
    }
}
