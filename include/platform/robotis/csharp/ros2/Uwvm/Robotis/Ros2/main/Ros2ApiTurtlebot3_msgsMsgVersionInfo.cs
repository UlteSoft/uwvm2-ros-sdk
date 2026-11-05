using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Robotis.Ros2.main
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros2ApiTurtlebot3_msgsMsgVersionInfo
    {
        public static readonly ICodec<Ros2Turtlebot3_msgsMsgVersionInfo> Codec =
            new RecordCodec<Ros2Turtlebot3_msgsMsgVersionInfo>(Ros2Turtlebot3_msgsMsgVersionInfo.Encode, Ros2Turtlebot3_msgsMsgVersionInfo.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros2Turtlebot3_msgsMsgVersionInfo> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros2Turtlebot3_msgsMsgVersionInfo> CreateSubscription(Node node, string alias, Action<Ros2Turtlebot3_msgsMsgVersionInfo> callback) =>
            node.CreateSubscription(Codec, alias, Ros2Turtlebot3_msgsMsgVersionInfo.MAX_WIRE_BYTES, callback);
    }
}
