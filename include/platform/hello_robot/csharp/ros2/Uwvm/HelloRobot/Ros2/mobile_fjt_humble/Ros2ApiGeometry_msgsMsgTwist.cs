using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.HelloRobot.Ros2.mobile_fjt_humble
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros2ApiGeometry_msgsMsgTwist
    {
        public static readonly ICodec<Ros2Geometry_msgsMsgTwist> Codec =
            new RecordCodec<Ros2Geometry_msgsMsgTwist>(Ros2Geometry_msgsMsgTwist.Encode, Ros2Geometry_msgsMsgTwist.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros2Geometry_msgsMsgTwist> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros2Geometry_msgsMsgTwist> CreateSubscription(Node node, string alias, Action<Ros2Geometry_msgsMsgTwist> callback) =>
            node.CreateSubscription(Codec, alias, Ros2Geometry_msgsMsgTwist.MAX_WIRE_BYTES, callback);
    }
}
