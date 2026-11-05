using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Abb.Ros2
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros2ApiAbb_rapid_sm_addin_msgsMsgStateMachineState
    {
        public static readonly ICodec<Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState> Codec =
            new RecordCodec<Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState>(Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.Encode, Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState> CreateSubscription(Node node, string alias, Action<Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState> callback) =>
            node.CreateSubscription(Codec, alias, Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.MAX_WIRE_BYTES, callback);
    }
}
