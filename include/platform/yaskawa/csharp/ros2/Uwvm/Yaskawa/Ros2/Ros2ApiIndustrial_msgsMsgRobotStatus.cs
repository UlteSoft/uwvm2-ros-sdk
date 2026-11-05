using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Yaskawa.Ros2
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros2ApiIndustrial_msgsMsgRobotStatus
    {
        public static readonly ICodec<Ros2Industrial_msgsMsgRobotStatus> Codec =
            new RecordCodec<Ros2Industrial_msgsMsgRobotStatus>(Ros2Industrial_msgsMsgRobotStatus.Encode, Ros2Industrial_msgsMsgRobotStatus.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros2Industrial_msgsMsgRobotStatus> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros2Industrial_msgsMsgRobotStatus> CreateSubscription(Node node, string alias, Action<Ros2Industrial_msgsMsgRobotStatus> callback) =>
            node.CreateSubscription(Codec, alias, Ros2Industrial_msgsMsgRobotStatus.MAX_WIRE_BYTES, callback);
    }
}
