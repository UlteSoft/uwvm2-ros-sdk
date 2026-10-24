using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_humble_devel
{
    /**
     * @brief Expose every typed role through the maintained public ROS binding.
     * @details Every alias is explicit. Public Node owns setup rollback;
     * callers own returned endpoints and must close them once. Codecs
     * preserve the complete original bounded schema. No authority is added.
     */
    public static class Ros1ApiPal_walking_msgsSMStatus
    {
        public static readonly ICodec<Ros1Pal_walking_msgsSMStatus> Codec =
            new RecordCodec<Ros1Pal_walking_msgsSMStatus>(Ros1Pal_walking_msgsSMStatus.Encode,
                                                          Ros1Pal_walking_msgsSMStatus.Decode);
        /** @param node Caller-owned public Node. @param alias Explicit publisher grant. @return Caller-owned publisher.
         */
        public static Publisher<Ros1Pal_walking_msgsSMStatus>
        CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /** @param node Caller-owned Node. @param alias Explicit subscription grant. @param callback Borrowed
         * synchronous full-value callback. @return Caller-owned subscription. */
        public static Subscription<Ros1Pal_walking_msgsSMStatus>
        CreateSubscription(Node node, string alias, Action<Ros1Pal_walking_msgsSMStatus> callback) =>
            node.CreateSubscription(Codec, alias, Ros1Pal_walking_msgsSMStatus.MAX_WIRE_BYTES, callback);
    }
}
