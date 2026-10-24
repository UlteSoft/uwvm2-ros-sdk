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
    public static class Ros1ApiPal_behaviour_msgsBehaviourTask
    {
        public static readonly ICodec<Ros1Pal_behaviour_msgsBehaviourTaskGoal> GoalCodec =
            new RecordCodec<Ros1Pal_behaviour_msgsBehaviourTaskGoal>(Ros1Pal_behaviour_msgsBehaviourTaskGoal.Encode,
                                                                     Ros1Pal_behaviour_msgsBehaviourTaskGoal.Decode);
        public static readonly ICodec<Ros1Pal_behaviour_msgsBehaviourTaskResult> ResultCodec =
            new RecordCodec<Ros1Pal_behaviour_msgsBehaviourTaskResult>(
                Ros1Pal_behaviour_msgsBehaviourTaskResult.Encode, Ros1Pal_behaviour_msgsBehaviourTaskResult.Decode);
        public static readonly ICodec<Ros1Pal_behaviour_msgsBehaviourTaskFeedback> FeedbackCodec =
            new RecordCodec<Ros1Pal_behaviour_msgsBehaviourTaskFeedback>(
                Ros1Pal_behaviour_msgsBehaviourTaskFeedback.Encode, Ros1Pal_behaviour_msgsBehaviourTaskFeedback.Decode);
        /** @param node Caller-owned Node. @param send Explicit goal grant. @param cancel Separate own-goal cancel
         * grant. @param feedback Separate feedback grant. @param result Separate terminal-result grant. @param
         * maximumGoals Bound on tracked live IDs. @return Caller-owned Action roles. */
        public static ActionClient<Ros1Pal_behaviour_msgsBehaviourTaskGoal,
                                   Ros1Pal_behaviour_msgsBehaviourTaskResult,
                                   Ros1Pal_behaviour_msgsBehaviourTaskFeedback>
        CreateClient(Node node, string send, string cancel, string feedback, string result, int maximumGoals = 8) =>
            node.CreateActionClient(
                GoalCodec, ResultCodec, FeedbackCodec, send, cancel, feedback, result, maximumGoals);
        /** @param node Caller-owned Node. @param advertise Explicit incoming-goal grant. @param respond Separate
         * response grant. @param callback Borrowed synchronous goal callback. @param maximumGoals Bound on owned IDs.
         * @return Caller-owned complete Action server. */
        public static ActionServer<Ros1Pal_behaviour_msgsBehaviourTaskGoal,
                                   Ros1Pal_behaviour_msgsBehaviourTaskResult,
                                   Ros1Pal_behaviour_msgsBehaviourTaskFeedback>
        CreateServer(Node node,
                     string advertise,
                     string respond,
                     Action<ulong,
                            Ros1Pal_behaviour_msgsBehaviourTaskGoal,
                            ActionServer<Ros1Pal_behaviour_msgsBehaviourTaskGoal,
                                         Ros1Pal_behaviour_msgsBehaviourTaskResult,
                                         Ros1Pal_behaviour_msgsBehaviourTaskFeedback>> callback,
                     int maximumGoals = 8) =>
            node.CreateActionServer(GoalCodec,
                                    ResultCodec,
                                    FeedbackCodec,
                                    advertise,
                                    respond,
                                    checked(8 + Ros1Pal_behaviour_msgsBehaviourTaskGoal.MAX_WIRE_BYTES),
                                    callback,
                                    maximumGoals);
    }
}
