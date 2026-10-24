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
    public static class Ros2ApiPal_device_msgsMsgLedProgressParams
    {
        public static readonly ICodec<Ros2Pal_device_msgsMsgLedProgressParams> Codec =
            new RecordCodec<Ros2Pal_device_msgsMsgLedProgressParams>(Ros2Pal_device_msgsMsgLedProgressParams.Encode,
                                                                     Ros2Pal_device_msgsMsgLedProgressParams.Decode);
        /** @param node Caller-owned public Node. @param alias Explicit publisher grant. @return Caller-owned publisher.
         */
        public static Publisher<Ros2Pal_device_msgsMsgLedProgressParams>
        CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /** @param node Caller-owned Node. @param alias Explicit subscription grant. @param callback Borrowed
         * synchronous full-value callback. @return Caller-owned subscription. */
        public static Subscription<Ros2Pal_device_msgsMsgLedProgressParams>
        CreateSubscription(Node node, string alias, Action<Ros2Pal_device_msgsMsgLedProgressParams> callback) =>
            node.CreateSubscription(Codec, alias, Ros2Pal_device_msgsMsgLedProgressParams.MAX_WIRE_BYTES, callback);
    }
}
