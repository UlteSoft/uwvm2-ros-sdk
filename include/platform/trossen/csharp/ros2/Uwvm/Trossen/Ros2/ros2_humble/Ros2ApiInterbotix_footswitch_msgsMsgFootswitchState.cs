using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Trossen.Ros2.ros2_humble
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros2ApiInterbotix_footswitch_msgsMsgFootswitchState
    {
        public static readonly ICodec<Ros2Interbotix_footswitch_msgsMsgFootswitchState> Codec =
            new RecordCodec<Ros2Interbotix_footswitch_msgsMsgFootswitchState>(Ros2Interbotix_footswitch_msgsMsgFootswitchState.Encode, Ros2Interbotix_footswitch_msgsMsgFootswitchState.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros2Interbotix_footswitch_msgsMsgFootswitchState> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros2Interbotix_footswitch_msgsMsgFootswitchState> CreateSubscription(Node node, string alias, Action<Ros2Interbotix_footswitch_msgsMsgFootswitchState> callback) =>
            node.CreateSubscription(Codec, alias, Ros2Interbotix_footswitch_msgsMsgFootswitchState.MAX_WIRE_BYTES, callback);
    }
}
