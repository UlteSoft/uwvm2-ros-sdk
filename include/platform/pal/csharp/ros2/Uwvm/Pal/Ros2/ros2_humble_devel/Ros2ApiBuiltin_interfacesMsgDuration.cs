using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros2.ros2_humble_devel
{
    /**
     * @brief Expose every typed role through the maintained public ROS binding.
     * @details Every alias is explicit. Public Node owns setup rollback;
     * callers own returned endpoints and must close them once. Codecs
     * preserve the complete original bounded schema. No authority is added.
     */
    public static class Ros2ApiBuiltin_interfacesMsgDuration
    {
        public static readonly ICodec<Ros2Builtin_interfacesMsgDuration> Codec =
            new RecordCodec<Ros2Builtin_interfacesMsgDuration>(Ros2Builtin_interfacesMsgDuration.Encode,
                                                               Ros2Builtin_interfacesMsgDuration.Decode);
        /** @param node Caller-owned public Node. @param alias Explicit publisher grant. @return Caller-owned publisher.
         */
        public static Publisher<Ros2Builtin_interfacesMsgDuration>
        CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /** @param node Caller-owned Node. @param alias Explicit subscription grant. @param callback Borrowed
         * synchronous full-value callback. @return Caller-owned subscription. */
        public static Subscription<Ros2Builtin_interfacesMsgDuration>
        CreateSubscription(Node node, string alias, Action<Ros2Builtin_interfacesMsgDuration> callback) =>
            node.CreateSubscription(Codec, alias, Ros2Builtin_interfacesMsgDuration.MAX_WIRE_BYTES, callback);
    }
}
