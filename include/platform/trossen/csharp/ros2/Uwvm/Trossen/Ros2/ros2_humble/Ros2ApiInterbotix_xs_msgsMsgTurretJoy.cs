using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Trossen.Ros2.ros2_humble
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros2ApiInterbotix_xs_msgsMsgTurretJoy
    {
        public static readonly ICodec<Ros2Interbotix_xs_msgsMsgTurretJoy> Codec =
            new RecordCodec<Ros2Interbotix_xs_msgsMsgTurretJoy>(Ros2Interbotix_xs_msgsMsgTurretJoy.Encode, Ros2Interbotix_xs_msgsMsgTurretJoy.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros2Interbotix_xs_msgsMsgTurretJoy> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros2Interbotix_xs_msgsMsgTurretJoy> CreateSubscription(Node node, string alias, Action<Ros2Interbotix_xs_msgsMsgTurretJoy> callback) =>
            node.CreateSubscription(Codec, alias, Ros2Interbotix_xs_msgsMsgTurretJoy.MAX_WIRE_BYTES, callback);
    }
}
