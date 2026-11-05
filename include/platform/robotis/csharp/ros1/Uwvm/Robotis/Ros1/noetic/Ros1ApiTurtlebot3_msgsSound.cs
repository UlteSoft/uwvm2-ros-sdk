using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Robotis.Ros1.noetic
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiTurtlebot3_msgsSound
    {
        public static readonly ICodec<Ros1Turtlebot3_msgsSound> Codec =
            new RecordCodec<Ros1Turtlebot3_msgsSound>(Ros1Turtlebot3_msgsSound.Encode, Ros1Turtlebot3_msgsSound.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros1Turtlebot3_msgsSound> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros1Turtlebot3_msgsSound> CreateSubscription(Node node, string alias, Action<Ros1Turtlebot3_msgsSound> callback) =>
            node.CreateSubscription(Codec, alias, Ros1Turtlebot3_msgsSound.MAX_WIRE_BYTES, callback);
    }
}
