using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Robotis.Ros1.noetic
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiTurtlebot3_msgsSensorState
    {
        public static readonly ICodec<Ros1Turtlebot3_msgsSensorState> Codec =
            new RecordCodec<Ros1Turtlebot3_msgsSensorState>(Ros1Turtlebot3_msgsSensorState.Encode, Ros1Turtlebot3_msgsSensorState.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros1Turtlebot3_msgsSensorState> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros1Turtlebot3_msgsSensorState> CreateSubscription(Node node, string alias, Action<Ros1Turtlebot3_msgsSensorState> callback) =>
            node.CreateSubscription(Codec, alias, Ros1Turtlebot3_msgsSensorState.MAX_WIRE_BYTES, callback);
    }
}
