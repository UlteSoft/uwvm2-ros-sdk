using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Robotis.Ros2.humble
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros2ApiTurtlebot3_msgsMsgSensorState
    {
        public static readonly ICodec<Ros2Turtlebot3_msgsMsgSensorState> Codec =
            new RecordCodec<Ros2Turtlebot3_msgsMsgSensorState>(Ros2Turtlebot3_msgsMsgSensorState.Encode, Ros2Turtlebot3_msgsMsgSensorState.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros2Turtlebot3_msgsMsgSensorState> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros2Turtlebot3_msgsMsgSensorState> CreateSubscription(Node node, string alias, Action<Ros2Turtlebot3_msgsMsgSensorState> callback) =>
            node.CreateSubscription(Codec, alias, Ros2Turtlebot3_msgsMsgSensorState.MAX_WIRE_BYTES, callback);
    }
}
