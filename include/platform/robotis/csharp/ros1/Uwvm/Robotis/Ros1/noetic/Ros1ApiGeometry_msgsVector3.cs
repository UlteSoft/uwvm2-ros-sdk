using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Robotis.Ros1.noetic
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiGeometry_msgsVector3
    {
        public static readonly ICodec<Ros1Geometry_msgsVector3> Codec =
            new RecordCodec<Ros1Geometry_msgsVector3>(Ros1Geometry_msgsVector3.Encode, Ros1Geometry_msgsVector3.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros1Geometry_msgsVector3> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros1Geometry_msgsVector3> CreateSubscription(Node node, string alias, Action<Ros1Geometry_msgsVector3> callback) =>
            node.CreateSubscription(Codec, alias, Ros1Geometry_msgsVector3.MAX_WIRE_BYTES, callback);
    }
}
