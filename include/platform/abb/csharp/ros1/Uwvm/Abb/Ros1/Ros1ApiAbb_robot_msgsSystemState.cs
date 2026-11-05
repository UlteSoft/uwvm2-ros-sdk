using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Abb.Ros1
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiAbb_robot_msgsSystemState
    {
        public static readonly ICodec<Ros1Abb_robot_msgsSystemState> Codec =
            new RecordCodec<Ros1Abb_robot_msgsSystemState>(Ros1Abb_robot_msgsSystemState.Encode, Ros1Abb_robot_msgsSystemState.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros1Abb_robot_msgsSystemState> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros1Abb_robot_msgsSystemState> CreateSubscription(Node node, string alias, Action<Ros1Abb_robot_msgsSystemState> callback) =>
            node.CreateSubscription(Codec, alias, Ros1Abb_robot_msgsSystemState.MAX_WIRE_BYTES, callback);
    }
}
