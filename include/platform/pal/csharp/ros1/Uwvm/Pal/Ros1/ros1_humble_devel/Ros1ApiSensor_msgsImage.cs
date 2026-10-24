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
    public static class Ros1ApiSensor_msgsImage
    {
        public static readonly ICodec<Ros1Sensor_msgsImage> Codec =
            new RecordCodec<Ros1Sensor_msgsImage>(Ros1Sensor_msgsImage.Encode, Ros1Sensor_msgsImage.Decode);
        /** @param node Caller-owned public Node. @param alias Explicit publisher grant. @return Caller-owned publisher.
         */
        public static Publisher<Ros1Sensor_msgsImage>
        CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /** @param node Caller-owned Node. @param alias Explicit subscription grant. @param callback Borrowed
         * synchronous full-value callback. @return Caller-owned subscription. */
        public static Subscription<Ros1Sensor_msgsImage>
        CreateSubscription(Node node, string alias, Action<Ros1Sensor_msgsImage> callback) =>
            node.CreateSubscription(Codec, alias, Ros1Sensor_msgsImage.MAX_WIRE_BYTES, callback);
    }
}
