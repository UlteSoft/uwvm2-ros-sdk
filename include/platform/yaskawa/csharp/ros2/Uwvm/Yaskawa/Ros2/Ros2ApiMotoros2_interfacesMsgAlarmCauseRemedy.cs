using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Yaskawa.Ros2
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros2ApiMotoros2_interfacesMsgAlarmCauseRemedy
    {
        public static readonly ICodec<Ros2Motoros2_interfacesMsgAlarmCauseRemedy> Codec =
            new RecordCodec<Ros2Motoros2_interfacesMsgAlarmCauseRemedy>(Ros2Motoros2_interfacesMsgAlarmCauseRemedy.Encode, Ros2Motoros2_interfacesMsgAlarmCauseRemedy.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros2Motoros2_interfacesMsgAlarmCauseRemedy> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros2Motoros2_interfacesMsgAlarmCauseRemedy> CreateSubscription(Node node, string alias, Action<Ros2Motoros2_interfacesMsgAlarmCauseRemedy> callback) =>
            node.CreateSubscription(Codec, alias, Ros2Motoros2_interfacesMsgAlarmCauseRemedy.MAX_WIRE_BYTES, callback);
    }
}
