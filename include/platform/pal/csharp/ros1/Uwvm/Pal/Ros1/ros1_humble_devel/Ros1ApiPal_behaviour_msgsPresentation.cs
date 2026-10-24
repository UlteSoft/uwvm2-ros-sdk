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
    public static class Ros1ApiPal_behaviour_msgsPresentation
    {
        public static readonly ICodec<Ros1Pal_behaviour_msgsPresentationGoal> GoalCodec =
            new RecordCodec<Ros1Pal_behaviour_msgsPresentationGoal>(Ros1Pal_behaviour_msgsPresentationGoal.Encode,
                                                                    Ros1Pal_behaviour_msgsPresentationGoal.Decode);
        public static readonly ICodec<Ros1Pal_behaviour_msgsPresentationResult> ResultCodec =
            new RecordCodec<Ros1Pal_behaviour_msgsPresentationResult>(Ros1Pal_behaviour_msgsPresentationResult.Encode,
                                                                      Ros1Pal_behaviour_msgsPresentationResult.Decode);
        public static readonly ICodec<Ros1Pal_behaviour_msgsPresentationFeedback> FeedbackCodec =
            new RecordCodec<Ros1Pal_behaviour_msgsPresentationFeedback>(
                Ros1Pal_behaviour_msgsPresentationFeedback.Encode, Ros1Pal_behaviour_msgsPresentationFeedback.Decode);
        /** @param node Caller-owned Node. @param send Explicit goal grant. @param cancel Separate own-goal cancel
         * grant. @param feedback Separate feedback grant. @param result Separate terminal-result grant. @param
         * maximumGoals Bound on tracked live IDs. @return Caller-owned Action roles. */
        public static ActionClient<Ros1Pal_behaviour_msgsPresentationGoal,
                                   Ros1Pal_behaviour_msgsPresentationResult,
                                   Ros1Pal_behaviour_msgsPresentationFeedback>
        CreateClient(Node node, string send, string cancel, string feedback, string result, int maximumGoals = 8) =>
            node.CreateActionClient(
                GoalCodec, ResultCodec, FeedbackCodec, send, cancel, feedback, result, maximumGoals);
        /** @param node Caller-owned Node. @param advertise Explicit incoming-goal grant. @param respond Separate
         * response grant. @param callback Borrowed synchronous goal callback. @param maximumGoals Bound on owned IDs.
         * @return Caller-owned complete Action server. */
        public static ActionServer<Ros1Pal_behaviour_msgsPresentationGoal,
                                   Ros1Pal_behaviour_msgsPresentationResult,
                                   Ros1Pal_behaviour_msgsPresentationFeedback>
        CreateServer(Node node,
                     string advertise,
                     string respond,
                     Action<ulong,
                            Ros1Pal_behaviour_msgsPresentationGoal,
                            ActionServer<Ros1Pal_behaviour_msgsPresentationGoal,
                                         Ros1Pal_behaviour_msgsPresentationResult,
                                         Ros1Pal_behaviour_msgsPresentationFeedback>> callback,
                     int maximumGoals = 8) =>
            node.CreateActionServer(GoalCodec,
                                    ResultCodec,
                                    FeedbackCodec,
                                    advertise,
                                    respond,
                                    checked(8 + Ros1Pal_behaviour_msgsPresentationGoal.MAX_WIRE_BYTES),
                                    callback,
                                    maximumGoals);
    }
}
