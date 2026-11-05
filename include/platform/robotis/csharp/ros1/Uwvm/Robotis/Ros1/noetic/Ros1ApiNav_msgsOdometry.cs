using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Robotis.Ros1.noetic
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiNav_msgsOdometry
    {
        public static readonly ICodec<Ros1Nav_msgsOdometry> Codec =
            new RecordCodec<Ros1Nav_msgsOdometry>(Ros1Nav_msgsOdometry.Encode, Ros1Nav_msgsOdometry.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros1Nav_msgsOdometry> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros1Nav_msgsOdometry> CreateSubscription(Node node, string alias, Action<Ros1Nav_msgsOdometry> callback) =>
            node.CreateSubscription(Codec, alias, Ros1Nav_msgsOdometry.MAX_WIRE_BYTES, callback);
    }
}
