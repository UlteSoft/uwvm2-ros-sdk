using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Robotis.Ros1.noetic
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiGeometry_msgsPoint
    {
        public static readonly ICodec<Ros1Geometry_msgsPoint> Codec =
            new RecordCodec<Ros1Geometry_msgsPoint>(Ros1Geometry_msgsPoint.Encode, Ros1Geometry_msgsPoint.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros1Geometry_msgsPoint> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros1Geometry_msgsPoint> CreateSubscription(Node node, string alias, Action<Ros1Geometry_msgsPoint> callback) =>
            node.CreateSubscription(Codec, alias, Ros1Geometry_msgsPoint.MAX_WIRE_BYTES, callback);
    }
}
