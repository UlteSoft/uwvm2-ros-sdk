using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Robotis.Ros2.humble
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros2ApiGeometry_msgsMsgTwistWithCovariance
    {
        public static readonly ICodec<Ros2Geometry_msgsMsgTwistWithCovariance> Codec =
            new RecordCodec<Ros2Geometry_msgsMsgTwistWithCovariance>(Ros2Geometry_msgsMsgTwistWithCovariance.Encode, Ros2Geometry_msgsMsgTwistWithCovariance.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros2Geometry_msgsMsgTwistWithCovariance> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros2Geometry_msgsMsgTwistWithCovariance> CreateSubscription(Node node, string alias, Action<Ros2Geometry_msgsMsgTwistWithCovariance> callback) =>
            node.CreateSubscription(Codec, alias, Ros2Geometry_msgsMsgTwistWithCovariance.MAX_WIRE_BYTES, callback);
    }
}
