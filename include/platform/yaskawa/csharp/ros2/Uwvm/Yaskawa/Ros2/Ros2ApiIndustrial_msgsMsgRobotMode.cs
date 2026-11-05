using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Yaskawa.Ros2
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros2ApiIndustrial_msgsMsgRobotMode
    {
        public static readonly ICodec<Ros2Industrial_msgsMsgRobotMode> Codec =
            new RecordCodec<Ros2Industrial_msgsMsgRobotMode>(Ros2Industrial_msgsMsgRobotMode.Encode, Ros2Industrial_msgsMsgRobotMode.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros2Industrial_msgsMsgRobotMode> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros2Industrial_msgsMsgRobotMode> CreateSubscription(Node node, string alias, Action<Ros2Industrial_msgsMsgRobotMode> callback) =>
            node.CreateSubscription(Codec, alias, Ros2Industrial_msgsMsgRobotMode.MAX_WIRE_BYTES, callback);
    }
}
