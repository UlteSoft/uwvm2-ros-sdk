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
    public static class Ros2ApiStd_msgsMsgColorRGBA
    {
        public static readonly ICodec<Ros2Std_msgsMsgColorRGBA> Codec =
            new RecordCodec<Ros2Std_msgsMsgColorRGBA>(Ros2Std_msgsMsgColorRGBA.Encode, Ros2Std_msgsMsgColorRGBA.Decode);
        /** @param node Caller-owned public Node. @param alias Explicit publisher grant. @return Caller-owned publisher.
         */
        public static Publisher<Ros2Std_msgsMsgColorRGBA>
        CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /** @param node Caller-owned Node. @param alias Explicit subscription grant. @param callback Borrowed
         * synchronous full-value callback. @return Caller-owned subscription. */
        public static Subscription<Ros2Std_msgsMsgColorRGBA>
        CreateSubscription(Node node, string alias, Action<Ros2Std_msgsMsgColorRGBA> callback) =>
            node.CreateSubscription(Codec, alias, Ros2Std_msgsMsgColorRGBA.MAX_WIRE_BYTES, callback);
    }
}
