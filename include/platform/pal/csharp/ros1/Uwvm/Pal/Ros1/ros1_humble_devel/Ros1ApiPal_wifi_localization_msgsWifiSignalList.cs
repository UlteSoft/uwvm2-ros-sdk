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
    public static class Ros1ApiPal_wifi_localization_msgsWifiSignalList
    {
        public static readonly ICodec<Ros1Pal_wifi_localization_msgsWifiSignalList> Codec =
            new RecordCodec<Ros1Pal_wifi_localization_msgsWifiSignalList>(
                Ros1Pal_wifi_localization_msgsWifiSignalList.Encode,
                Ros1Pal_wifi_localization_msgsWifiSignalList.Decode);
        /** @param node Caller-owned public Node. @param alias Explicit publisher grant. @return Caller-owned publisher.
         */
        public static Publisher<Ros1Pal_wifi_localization_msgsWifiSignalList>
        CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /** @param node Caller-owned Node. @param alias Explicit subscription grant. @param callback Borrowed
         * synchronous full-value callback. @return Caller-owned subscription. */
        public static Subscription<Ros1Pal_wifi_localization_msgsWifiSignalList>
        CreateSubscription(Node node, string alias, Action<Ros1Pal_wifi_localization_msgsWifiSignalList> callback) =>
            node.CreateSubscription(Codec,
                                    alias,
                                    Ros1Pal_wifi_localization_msgsWifiSignalList.MAX_WIRE_BYTES,
                                    callback);
    }
}
