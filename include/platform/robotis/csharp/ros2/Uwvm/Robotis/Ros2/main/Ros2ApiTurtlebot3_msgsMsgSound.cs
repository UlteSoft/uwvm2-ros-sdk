using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Robotis.Ros2.main
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros2ApiTurtlebot3_msgsMsgSound
    {
        public static readonly ICodec<Ros2Turtlebot3_msgsMsgSound> Codec =
            new RecordCodec<Ros2Turtlebot3_msgsMsgSound>(Ros2Turtlebot3_msgsMsgSound.Encode, Ros2Turtlebot3_msgsMsgSound.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros2Turtlebot3_msgsMsgSound> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros2Turtlebot3_msgsMsgSound> CreateSubscription(Node node, string alias, Action<Ros2Turtlebot3_msgsMsgSound> callback) =>
            node.CreateSubscription(Codec, alias, Ros2Turtlebot3_msgsMsgSound.MAX_WIRE_BYTES, callback);
    }
}
