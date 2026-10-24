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
    public static class Ros1ApiHumanoid_nav_msgsStepTarget
    {
        public static readonly ICodec<Ros1Humanoid_nav_msgsStepTarget> Codec =
            new RecordCodec<Ros1Humanoid_nav_msgsStepTarget>(Ros1Humanoid_nav_msgsStepTarget.Encode,
                                                             Ros1Humanoid_nav_msgsStepTarget.Decode);
        /** @param node Caller-owned public Node. @param alias Explicit publisher grant. @return Caller-owned publisher.
         */
        public static Publisher<Ros1Humanoid_nav_msgsStepTarget>
        CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /** @param node Caller-owned Node. @param alias Explicit subscription grant. @param callback Borrowed
         * synchronous full-value callback. @return Caller-owned subscription. */
        public static Subscription<Ros1Humanoid_nav_msgsStepTarget>
        CreateSubscription(Node node, string alias, Action<Ros1Humanoid_nav_msgsStepTarget> callback) =>
            node.CreateSubscription(Codec, alias, Ros1Humanoid_nav_msgsStepTarget.MAX_WIRE_BYTES, callback);
    }
}
