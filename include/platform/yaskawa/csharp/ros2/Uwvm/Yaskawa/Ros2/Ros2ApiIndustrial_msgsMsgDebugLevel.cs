using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Yaskawa.Ros2
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros2ApiIndustrial_msgsMsgDebugLevel
    {
        public static readonly ICodec<Ros2Industrial_msgsMsgDebugLevel> Codec =
            new RecordCodec<Ros2Industrial_msgsMsgDebugLevel>(Ros2Industrial_msgsMsgDebugLevel.Encode, Ros2Industrial_msgsMsgDebugLevel.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros2Industrial_msgsMsgDebugLevel> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros2Industrial_msgsMsgDebugLevel> CreateSubscription(Node node, string alias, Action<Ros2Industrial_msgsMsgDebugLevel> callback) =>
            node.CreateSubscription(Codec, alias, Ros2Industrial_msgsMsgDebugLevel.MAX_WIRE_BYTES, callback);
    }
}
