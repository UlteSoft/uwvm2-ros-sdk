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
    public static class Ros1ApiNav_msgsOccupancyGrid
    {
        public static readonly ICodec<Ros1Nav_msgsOccupancyGrid> Codec = new RecordCodec<Ros1Nav_msgsOccupancyGrid>(
            Ros1Nav_msgsOccupancyGrid.Encode, Ros1Nav_msgsOccupancyGrid.Decode);
        /** @param node Caller-owned public Node. @param alias Explicit publisher grant. @return Caller-owned publisher.
         */
        public static Publisher<Ros1Nav_msgsOccupancyGrid>
        CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /** @param node Caller-owned Node. @param alias Explicit subscription grant. @param callback Borrowed
         * synchronous full-value callback. @return Caller-owned subscription. */
        public static Subscription<Ros1Nav_msgsOccupancyGrid>
        CreateSubscription(Node node, string alias, Action<Ros1Nav_msgsOccupancyGrid> callback) =>
            node.CreateSubscription(Codec, alias, Ros1Nav_msgsOccupancyGrid.MAX_WIRE_BYTES, callback);
    }
}
