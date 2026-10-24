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
    public static class Ros1ApiGeometry_msgsPoint
    {
        public static readonly ICodec<Ros1Geometry_msgsPoint> Codec =
            new RecordCodec<Ros1Geometry_msgsPoint>(Ros1Geometry_msgsPoint.Encode, Ros1Geometry_msgsPoint.Decode);
        /** @param node Caller-owned public Node. @param alias Explicit publisher grant. @return Caller-owned publisher.
         */
        public static Publisher<Ros1Geometry_msgsPoint>
        CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /** @param node Caller-owned Node. @param alias Explicit subscription grant. @param callback Borrowed
         * synchronous full-value callback. @return Caller-owned subscription. */
        public static Subscription<Ros1Geometry_msgsPoint>
        CreateSubscription(Node node, string alias, Action<Ros1Geometry_msgsPoint> callback) =>
            node.CreateSubscription(Codec, alias, Ros1Geometry_msgsPoint.MAX_WIRE_BYTES, callback);
    }
}
