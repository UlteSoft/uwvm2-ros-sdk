using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Abb.Ros2
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros2ApiAbb_rapid_sm_addin_msgsMsgEGMActivateSettings
    {
        public static readonly ICodec<Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings> Codec =
            new RecordCodec<Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings>(Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings.Encode, Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings> CreateSubscription(Node node, string alias, Action<Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings> callback) =>
            node.CreateSubscription(Codec, alias, Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings.MAX_WIRE_BYTES, callback);
    }
}
