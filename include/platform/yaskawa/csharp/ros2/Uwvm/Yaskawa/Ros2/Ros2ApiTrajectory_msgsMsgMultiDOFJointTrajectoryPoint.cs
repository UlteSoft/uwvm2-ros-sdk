using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Yaskawa.Ros2
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros2ApiTrajectory_msgsMsgMultiDOFJointTrajectoryPoint
    {
        public static readonly ICodec<Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint> Codec =
            new RecordCodec<Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint>(Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.Encode, Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint> CreateSubscription(Node node, string alias, Action<Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint> callback) =>
            node.CreateSubscription(Codec, alias, Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.MAX_WIRE_BYTES, callback);
    }
}
