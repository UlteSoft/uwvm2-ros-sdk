using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Robotis.Ros1.noetic
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiStd_msgsHeader
    {
        public static readonly ICodec<Ros1Std_msgsHeader> Codec =
            new RecordCodec<Ros1Std_msgsHeader>(Ros1Std_msgsHeader.Encode, Ros1Std_msgsHeader.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros1Std_msgsHeader> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros1Std_msgsHeader> CreateSubscription(Node node, string alias, Action<Ros1Std_msgsHeader> callback) =>
            node.CreateSubscription(Codec, alias, Ros1Std_msgsHeader.MAX_WIRE_BYTES, callback);
    }
}
