using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Trossen.Ros1.ros1_main
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiInterbotix_xs_msgsHexJoy
    {
        public static readonly ICodec<Ros1Interbotix_xs_msgsHexJoy> Codec =
            new RecordCodec<Ros1Interbotix_xs_msgsHexJoy>(Ros1Interbotix_xs_msgsHexJoy.Encode, Ros1Interbotix_xs_msgsHexJoy.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros1Interbotix_xs_msgsHexJoy> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros1Interbotix_xs_msgsHexJoy> CreateSubscription(Node node, string alias, Action<Ros1Interbotix_xs_msgsHexJoy> callback) =>
            node.CreateSubscription(Codec, alias, Ros1Interbotix_xs_msgsHexJoy.MAX_WIRE_BYTES, callback);
    }
}
