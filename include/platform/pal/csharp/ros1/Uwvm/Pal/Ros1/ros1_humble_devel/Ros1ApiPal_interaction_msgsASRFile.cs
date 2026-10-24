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
    public static class Ros1ApiPal_interaction_msgsASRFile
    {
        public static readonly ICodec<Ros1Pal_interaction_msgsASRFileGoal> GoalCodec =
            new RecordCodec<Ros1Pal_interaction_msgsASRFileGoal>(Ros1Pal_interaction_msgsASRFileGoal.Encode,
                                                                 Ros1Pal_interaction_msgsASRFileGoal.Decode);
        public static readonly ICodec<Ros1Pal_interaction_msgsASRFileResult> ResultCodec =
            new RecordCodec<Ros1Pal_interaction_msgsASRFileResult>(Ros1Pal_interaction_msgsASRFileResult.Encode,
                                                                   Ros1Pal_interaction_msgsASRFileResult.Decode);
        public static readonly ICodec<Ros1Pal_interaction_msgsASRFileFeedback> FeedbackCodec =
            new RecordCodec<Ros1Pal_interaction_msgsASRFileFeedback>(Ros1Pal_interaction_msgsASRFileFeedback.Encode,
                                                                     Ros1Pal_interaction_msgsASRFileFeedback.Decode);
        /** @param node Caller-owned Node. @param send Explicit goal grant. @param cancel Separate own-goal cancel
         * grant. @param feedback Separate feedback grant. @param result Separate terminal-result grant. @param
         * maximumGoals Bound on tracked live IDs. @return Caller-owned Action roles. */
        public static ActionClient<Ros1Pal_interaction_msgsASRFileGoal,
                                   Ros1Pal_interaction_msgsASRFileResult,
                                   Ros1Pal_interaction_msgsASRFileFeedback>
        CreateClient(Node node, string send, string cancel, string feedback, string result, int maximumGoals = 8) =>
            node.CreateActionClient(
                GoalCodec, ResultCodec, FeedbackCodec, send, cancel, feedback, result, maximumGoals);
        /** @param node Caller-owned Node. @param advertise Explicit incoming-goal grant. @param respond Separate
         * response grant. @param callback Borrowed synchronous goal callback. @param maximumGoals Bound on owned IDs.
         * @return Caller-owned complete Action server. */
        public static ActionServer<Ros1Pal_interaction_msgsASRFileGoal,
                                   Ros1Pal_interaction_msgsASRFileResult,
                                   Ros1Pal_interaction_msgsASRFileFeedback>
        CreateServer(Node node,
                     string advertise,
                     string respond,
                     Action<ulong,
                            Ros1Pal_interaction_msgsASRFileGoal,
                            ActionServer<Ros1Pal_interaction_msgsASRFileGoal,
                                         Ros1Pal_interaction_msgsASRFileResult,
                                         Ros1Pal_interaction_msgsASRFileFeedback>> callback,
                     int maximumGoals = 8) =>
            node.CreateActionServer(GoalCodec,
                                    ResultCodec,
                                    FeedbackCodec,
                                    advertise,
                                    respond,
                                    checked(8 + Ros1Pal_interaction_msgsASRFileGoal.MAX_WIRE_BYTES),
                                    callback,
                                    maximumGoals);
    }
}
