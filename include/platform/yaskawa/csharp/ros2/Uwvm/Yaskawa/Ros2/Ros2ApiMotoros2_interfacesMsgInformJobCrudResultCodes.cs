using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Yaskawa.Ros2
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros2ApiMotoros2_interfacesMsgInformJobCrudResultCodes
    {
        public static readonly ICodec<Ros2Motoros2_interfacesMsgInformJobCrudResultCodes> Codec =
            new RecordCodec<Ros2Motoros2_interfacesMsgInformJobCrudResultCodes>(Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.Encode, Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros2Motoros2_interfacesMsgInformJobCrudResultCodes> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros2Motoros2_interfacesMsgInformJobCrudResultCodes> CreateSubscription(Node node, string alias, Action<Ros2Motoros2_interfacesMsgInformJobCrudResultCodes> callback) =>
            node.CreateSubscription(Codec, alias, Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.MAX_WIRE_BYTES, callback);
    }
}
