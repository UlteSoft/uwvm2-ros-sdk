using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Trossen.Ros1.ros1_melodic
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiInterbotix_xs_msgsJointTrajectoryCommand
    {
        public static readonly ICodec<Ros1Interbotix_xs_msgsJointTrajectoryCommand> Codec =
            new RecordCodec<Ros1Interbotix_xs_msgsJointTrajectoryCommand>(Ros1Interbotix_xs_msgsJointTrajectoryCommand.Encode, Ros1Interbotix_xs_msgsJointTrajectoryCommand.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros1Interbotix_xs_msgsJointTrajectoryCommand> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros1Interbotix_xs_msgsJointTrajectoryCommand> CreateSubscription(Node node, string alias, Action<Ros1Interbotix_xs_msgsJointTrajectoryCommand> callback) =>
            node.CreateSubscription(Codec, alias, Ros1Interbotix_xs_msgsJointTrajectoryCommand.MAX_WIRE_BYTES, callback);
    }
}
