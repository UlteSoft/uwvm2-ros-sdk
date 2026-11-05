using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Trossen.Ros1.ros1_main
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiTrajectory_msgsJointTrajectoryPoint
    {
        public static readonly ICodec<Ros1Trajectory_msgsJointTrajectoryPoint> Codec =
            new RecordCodec<Ros1Trajectory_msgsJointTrajectoryPoint>(Ros1Trajectory_msgsJointTrajectoryPoint.Encode, Ros1Trajectory_msgsJointTrajectoryPoint.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros1Trajectory_msgsJointTrajectoryPoint> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros1Trajectory_msgsJointTrajectoryPoint> CreateSubscription(Node node, string alias, Action<Ros1Trajectory_msgsJointTrajectoryPoint> callback) =>
            node.CreateSubscription(Codec, alias, Ros1Trajectory_msgsJointTrajectoryPoint.MAX_WIRE_BYTES, callback);
    }
}
