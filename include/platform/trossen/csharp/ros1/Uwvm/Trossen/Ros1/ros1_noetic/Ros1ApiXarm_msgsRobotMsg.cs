using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Trossen.Ros1.ros1_noetic
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiXarm_msgsRobotMsg
    {
        public static readonly ICodec<Ros1Xarm_msgsRobotMsg> Codec =
            new RecordCodec<Ros1Xarm_msgsRobotMsg>(Ros1Xarm_msgsRobotMsg.Encode, Ros1Xarm_msgsRobotMsg.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros1Xarm_msgsRobotMsg> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros1Xarm_msgsRobotMsg> CreateSubscription(Node node, string alias, Action<Ros1Xarm_msgsRobotMsg> callback) =>
            node.CreateSubscription(Codec, alias, Ros1Xarm_msgsRobotMsg.MAX_WIRE_BYTES, callback);
    }
}
