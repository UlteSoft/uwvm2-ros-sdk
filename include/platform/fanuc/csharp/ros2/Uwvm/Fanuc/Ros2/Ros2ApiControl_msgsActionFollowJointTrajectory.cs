/**
 * @file Ros2ApiControl_msgsActionFollowJointTrajectory.cs
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
    public static class Ros2ApiControl_msgsActionFollowJointTrajectory
    {
        public static readonly ICodec<Ros2Control_msgsActionFollowJointTrajectory_Goal> GoalCodec =
            new RecordCodec<Ros2Control_msgsActionFollowJointTrajectory_Goal>(Ros2Control_msgsActionFollowJointTrajectory_Goal.Encode, Ros2Control_msgsActionFollowJointTrajectory_Goal.Decode);
        public static readonly ICodec<Ros2Control_msgsActionFollowJointTrajectory_Result> ResultCodec =
            new RecordCodec<Ros2Control_msgsActionFollowJointTrajectory_Result>(Ros2Control_msgsActionFollowJointTrajectory_Result.Encode, Ros2Control_msgsActionFollowJointTrajectory_Result.Decode);
        public static readonly ICodec<Ros2Control_msgsActionFollowJointTrajectory_Feedback> FeedbackCodec =
            new RecordCodec<Ros2Control_msgsActionFollowJointTrajectory_Feedback>(Ros2Control_msgsActionFollowJointTrajectory_Feedback.Encode, Ros2Control_msgsActionFollowJointTrajectory_Feedback.Decode);
        /// <summary>Acquire separate send, cancel-own, feedback and result roles; callers close all owners.</summary>
        public static ActionClient<Ros2Control_msgsActionFollowJointTrajectory_Goal, Ros2Control_msgsActionFollowJointTrajectory_Result, Ros2Control_msgsActionFollowJointTrajectory_Feedback> CreateClient(Node node, string send, string cancel, string feedback, string result, int maximumGoals = 8) =>
            node.CreateActionClient(GoalCodec, ResultCodec, FeedbackCodec, send, cancel, feedback, result, maximumGoals);
        /// <summary>Acquire separate incoming-goal and response roles with complete original goal values.</summary>
        public static ActionServer<Ros2Control_msgsActionFollowJointTrajectory_Goal, Ros2Control_msgsActionFollowJointTrajectory_Result, Ros2Control_msgsActionFollowJointTrajectory_Feedback> CreateServer(Node node, string advertise, string respond, Action<ulong, Ros2Control_msgsActionFollowJointTrajectory_Goal, ActionServer<Ros2Control_msgsActionFollowJointTrajectory_Goal, Ros2Control_msgsActionFollowJointTrajectory_Result, Ros2Control_msgsActionFollowJointTrajectory_Feedback>> callback, int maximumGoals = 8) =>
            node.CreateActionServer(GoalCodec, ResultCodec, FeedbackCodec, advertise, respond, checked(8 + Ros2Control_msgsActionFollowJointTrajectory_Goal.MAX_WIRE_BYTES), callback, maximumGoals);
    }
}
