using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_noetic_devel
{
    /**
     * @brief Expose every typed role through the maintained public ROS binding.
     * @details Every alias is explicit. Public Node owns setup rollback;
     * callers own returned endpoints and must close them once. Codecs
     * preserve the complete original bounded schema. No authority is added.
     */
    public static class Ros1ApiPal_detection_msgsPersonDetection
    {
        public static readonly ICodec<Ros1Pal_detection_msgsPersonDetection> Codec =
            new RecordCodec<Ros1Pal_detection_msgsPersonDetection>(Ros1Pal_detection_msgsPersonDetection.Encode,
                                                                   Ros1Pal_detection_msgsPersonDetection.Decode);
        /** @param node Caller-owned public Node. @param alias Explicit publisher grant. @return Caller-owned publisher.
         */
        public static Publisher<Ros1Pal_detection_msgsPersonDetection>
        CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /** @param node Caller-owned Node. @param alias Explicit subscription grant. @param callback Borrowed
         * synchronous full-value callback. @return Caller-owned subscription. */
        public static Subscription<Ros1Pal_detection_msgsPersonDetection>
        CreateSubscription(Node node, string alias, Action<Ros1Pal_detection_msgsPersonDetection> callback) =>
            node.CreateSubscription(Codec, alias, Ros1Pal_detection_msgsPersonDetection.MAX_WIRE_BYTES, callback);
    }
}
