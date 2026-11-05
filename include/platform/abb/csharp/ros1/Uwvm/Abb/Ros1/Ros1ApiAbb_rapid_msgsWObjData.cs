using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Abb.Ros1
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiAbb_rapid_msgsWObjData
    {
        public static readonly ICodec<Ros1Abb_rapid_msgsWObjData> Codec =
            new RecordCodec<Ros1Abb_rapid_msgsWObjData>(Ros1Abb_rapid_msgsWObjData.Encode, Ros1Abb_rapid_msgsWObjData.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros1Abb_rapid_msgsWObjData> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros1Abb_rapid_msgsWObjData> CreateSubscription(Node node, string alias, Action<Ros1Abb_rapid_msgsWObjData> callback) =>
            node.CreateSubscription(Codec, alias, Ros1Abb_rapid_msgsWObjData.MAX_WIRE_BYTES, callback);
    }
}
