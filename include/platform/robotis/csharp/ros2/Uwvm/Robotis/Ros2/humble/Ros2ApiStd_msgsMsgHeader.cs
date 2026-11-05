using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Robotis.Ros2.humble
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros2ApiStd_msgsMsgHeader
    {
        public static readonly ICodec<Ros2Std_msgsMsgHeader> Codec =
            new RecordCodec<Ros2Std_msgsMsgHeader>(Ros2Std_msgsMsgHeader.Encode, Ros2Std_msgsMsgHeader.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros2Std_msgsMsgHeader> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros2Std_msgsMsgHeader> CreateSubscription(Node node, string alias, Action<Ros2Std_msgsMsgHeader> callback) =>
            node.CreateSubscription(Codec, alias, Ros2Std_msgsMsgHeader.MAX_WIRE_BYTES, callback);
    }
}
