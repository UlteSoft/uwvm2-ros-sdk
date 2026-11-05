/**
 * @file Ros2ApiFanuc_msgsMsgAnalogIOCmd.cs
 * @brief Represent the complete original FANUC ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Fanuc.Ros2
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros2ApiFanuc_msgsMsgAnalogIOCmd
    {
        public static readonly ICodec<Ros2Fanuc_msgsMsgAnalogIOCmd> Codec =
            new RecordCodec<Ros2Fanuc_msgsMsgAnalogIOCmd>(Ros2Fanuc_msgsMsgAnalogIOCmd.Encode, Ros2Fanuc_msgsMsgAnalogIOCmd.Decode);
        /// <summary>Create a publisher with an explicitly granted alias.</summary>
        public static Publisher<Ros2Fanuc_msgsMsgAnalogIOCmd> CreatePublisher(Node node, string alias) => node.CreatePublisher(Codec, alias);
        /// <summary>Create a bounded subscription; the caller owns and closes its handle.</summary>
        public static Subscription<Ros2Fanuc_msgsMsgAnalogIOCmd> CreateSubscription(Node node, string alias, Action<Ros2Fanuc_msgsMsgAnalogIOCmd> callback) =>
            node.CreateSubscription(Codec, alias, Ros2Fanuc_msgsMsgAnalogIOCmd.MAX_WIRE_BYTES, callback);
    }
}
