using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Trossen.Ros2.ros2_jazzy
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros2ApiBuiltin_interfacesMsgTime
    {
        public static readonly ICodec<Ros2Builtin_interfacesMsgTime> Codec =
            new RecordCodec<Ros2Builtin_interfacesMsgTime>(Ros2Builtin_interfacesMsgTime.Encode, Ros2Builtin_interfacesMsgTime.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros2Builtin_interfacesMsgTime> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros2Builtin_interfacesMsgTime> CreateSubscription(Node node, string alias, Action<Ros2Builtin_interfacesMsgTime> callback) =>
            node.CreateSubscription(Codec, alias, Ros2Builtin_interfacesMsgTime.MAX_WIRE_BYTES, callback);
    }
}
