using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Abb.Ros2
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros2ApiBuiltin_interfacesMsgDuration
    {
        public static readonly ICodec<Ros2Builtin_interfacesMsgDuration> Codec =
            new RecordCodec<Ros2Builtin_interfacesMsgDuration>(Ros2Builtin_interfacesMsgDuration.Encode, Ros2Builtin_interfacesMsgDuration.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros2Builtin_interfacesMsgDuration> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros2Builtin_interfacesMsgDuration> CreateSubscription(Node node, string alias, Action<Ros2Builtin_interfacesMsgDuration> callback) =>
            node.CreateSubscription(Codec, alias, Ros2Builtin_interfacesMsgDuration.MAX_WIRE_BYTES, callback);
    }
}
