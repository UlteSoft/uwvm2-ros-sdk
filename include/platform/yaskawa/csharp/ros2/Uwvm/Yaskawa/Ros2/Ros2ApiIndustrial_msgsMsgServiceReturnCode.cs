using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Yaskawa.Ros2
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros2ApiIndustrial_msgsMsgServiceReturnCode
    {
        public static readonly ICodec<Ros2Industrial_msgsMsgServiceReturnCode> Codec =
            new RecordCodec<Ros2Industrial_msgsMsgServiceReturnCode>(Ros2Industrial_msgsMsgServiceReturnCode.Encode, Ros2Industrial_msgsMsgServiceReturnCode.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros2Industrial_msgsMsgServiceReturnCode> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros2Industrial_msgsMsgServiceReturnCode> CreateSubscription(Node node, string alias, Action<Ros2Industrial_msgsMsgServiceReturnCode> callback) =>
            node.CreateSubscription(Codec, alias, Ros2Industrial_msgsMsgServiceReturnCode.MAX_WIRE_BYTES, callback);
    }
}
