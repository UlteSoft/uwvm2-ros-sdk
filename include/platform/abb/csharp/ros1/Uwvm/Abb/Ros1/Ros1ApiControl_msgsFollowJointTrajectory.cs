using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Abb.Ros1
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiControl_msgsFollowJointTrajectory
    {
        public static readonly ICodec<Ros1Control_msgsFollowJointTrajectoryGoal> GoalCodec =
            new RecordCodec<Ros1Control_msgsFollowJointTrajectoryGoal>(Ros1Control_msgsFollowJointTrajectoryGoal.Encode, Ros1Control_msgsFollowJointTrajectoryGoal.Decode);
        public static readonly ICodec<Ros1Control_msgsFollowJointTrajectoryResult> ResultCodec =
            new RecordCodec<Ros1Control_msgsFollowJointTrajectoryResult>(Ros1Control_msgsFollowJointTrajectoryResult.Encode, Ros1Control_msgsFollowJointTrajectoryResult.Decode);
        public static readonly ICodec<Ros1Control_msgsFollowJointTrajectoryFeedback> FeedbackCodec =
            new RecordCodec<Ros1Control_msgsFollowJointTrajectoryFeedback>(Ros1Control_msgsFollowJointTrajectoryFeedback.Encode, Ros1Control_msgsFollowJointTrajectoryFeedback.Decode);
        /// <summary>Acquire separate send, cancel-own, feedback and result roles; callers close all owners.</summary>
        public static ActionClient<Ros1Control_msgsFollowJointTrajectoryGoal, Ros1Control_msgsFollowJointTrajectoryResult, Ros1Control_msgsFollowJointTrajectoryFeedback> CreateClient(Node node, string send, string cancel, string feedback, string result, int maximumGoals = 8) =>
            node.CreateActionClient(GoalCodec, ResultCodec, FeedbackCodec, send, cancel, feedback, result, maximumGoals);
        /// <summary>Acquire separate incoming-goal and response roles with complete original goal values.</summary>
        public static ActionServer<Ros1Control_msgsFollowJointTrajectoryGoal, Ros1Control_msgsFollowJointTrajectoryResult, Ros1Control_msgsFollowJointTrajectoryFeedback> CreateServer(Node node, string advertise, string respond, Action<ulong, Ros1Control_msgsFollowJointTrajectoryGoal, ActionServer<Ros1Control_msgsFollowJointTrajectoryGoal, Ros1Control_msgsFollowJointTrajectoryResult, Ros1Control_msgsFollowJointTrajectoryFeedback>> callback, int maximumGoals = 8) =>
            node.CreateActionServer(GoalCodec, ResultCodec, FeedbackCodec, advertise, respond, checked(8 + Ros1Control_msgsFollowJointTrajectoryGoal.MAX_WIRE_BYTES), callback, maximumGoals);
    }
}
