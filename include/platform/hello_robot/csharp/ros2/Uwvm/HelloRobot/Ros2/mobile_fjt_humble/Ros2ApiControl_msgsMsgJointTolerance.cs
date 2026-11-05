using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.HelloRobot.Ros2.mobile_fjt_humble
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros2ApiControl_msgsMsgJointTolerance
    {
        public static readonly ICodec<Ros2Control_msgsMsgJointTolerance> Codec =
            new RecordCodec<Ros2Control_msgsMsgJointTolerance>(Ros2Control_msgsMsgJointTolerance.Encode, Ros2Control_msgsMsgJointTolerance.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros2Control_msgsMsgJointTolerance> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros2Control_msgsMsgJointTolerance> CreateSubscription(Node node, string alias, Action<Ros2Control_msgsMsgJointTolerance> callback) =>
            node.CreateSubscription(Codec, alias, Ros2Control_msgsMsgJointTolerance.MAX_WIRE_BYTES, callback);
    }
}
