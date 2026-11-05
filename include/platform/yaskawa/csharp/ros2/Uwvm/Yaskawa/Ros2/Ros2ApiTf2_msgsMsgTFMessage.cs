using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Yaskawa.Ros2
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros2ApiTf2_msgsMsgTFMessage
    {
        public static readonly ICodec<Ros2Tf2_msgsMsgTFMessage> Codec =
            new RecordCodec<Ros2Tf2_msgsMsgTFMessage>(Ros2Tf2_msgsMsgTFMessage.Encode, Ros2Tf2_msgsMsgTFMessage.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros2Tf2_msgsMsgTFMessage> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros2Tf2_msgsMsgTFMessage> CreateSubscription(Node node, string alias, Action<Ros2Tf2_msgsMsgTFMessage> callback) =>
            node.CreateSubscription(Codec, alias, Ros2Tf2_msgsMsgTFMessage.MAX_WIRE_BYTES, callback);
    }
}
