using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros2.ros2_humble_devel
{
    /**
     * @brief Expose every typed role through the maintained public ROS binding.
     * @details Every alias is explicit. Public Node owns setup rollback;
     * callers own returned endpoints and must close them once. Codecs
     * preserve the complete original bounded schema. No authority is added.
     */
    public static class Ros2ApiPal_device_msgsActionDoTimedLedEffect
    {
        public static readonly ICodec<Ros2Pal_device_msgsActionDoTimedLedEffect_Goal> GoalCodec =
            new RecordCodec<Ros2Pal_device_msgsActionDoTimedLedEffect_Goal>(
                Ros2Pal_device_msgsActionDoTimedLedEffect_Goal.Encode,
                Ros2Pal_device_msgsActionDoTimedLedEffect_Goal.Decode);
        public static readonly ICodec<Ros2Pal_device_msgsActionDoTimedLedEffect_Result> ResultCodec =
            new RecordCodec<Ros2Pal_device_msgsActionDoTimedLedEffect_Result>(
                Ros2Pal_device_msgsActionDoTimedLedEffect_Result.Encode,
                Ros2Pal_device_msgsActionDoTimedLedEffect_Result.Decode);
        public static readonly ICodec<Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback> FeedbackCodec =
            new RecordCodec<Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback>(
                Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback.Encode,
                Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback.Decode);
        /** @param node Caller-owned Node. @param send Explicit goal grant. @param cancel Separate own-goal cancel
         * grant. @param feedback Separate feedback grant. @param result Separate terminal-result grant. @param
         * maximumGoals Bound on tracked live IDs. @return Caller-owned Action roles. */
        public static ActionClient<Ros2Pal_device_msgsActionDoTimedLedEffect_Goal,
                                   Ros2Pal_device_msgsActionDoTimedLedEffect_Result,
                                   Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback>
        CreateClient(Node node, string send, string cancel, string feedback, string result, int maximumGoals = 8) =>
            node.CreateActionClient(
                GoalCodec, ResultCodec, FeedbackCodec, send, cancel, feedback, result, maximumGoals);
        /** @param node Caller-owned Node. @param advertise Explicit incoming-goal grant. @param respond Separate
         * response grant. @param callback Borrowed synchronous goal callback. @param maximumGoals Bound on owned IDs.
         * @return Caller-owned complete Action server. */
        public static ActionServer<Ros2Pal_device_msgsActionDoTimedLedEffect_Goal,
                                   Ros2Pal_device_msgsActionDoTimedLedEffect_Result,
                                   Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback>
        CreateServer(Node node,
                     string advertise,
                     string respond,
                     Action<ulong,
                            Ros2Pal_device_msgsActionDoTimedLedEffect_Goal,
                            ActionServer<Ros2Pal_device_msgsActionDoTimedLedEffect_Goal,
                                         Ros2Pal_device_msgsActionDoTimedLedEffect_Result,
                                         Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback>> callback,
                     int maximumGoals = 8) =>
            node.CreateActionServer(GoalCodec,
                                    ResultCodec,
                                    FeedbackCodec,
                                    advertise,
                                    respond,
                                    checked(8 + Ros2Pal_device_msgsActionDoTimedLedEffect_Goal.MAX_WIRE_BYTES),
                                    callback,
                                    maximumGoals);
    }
}
