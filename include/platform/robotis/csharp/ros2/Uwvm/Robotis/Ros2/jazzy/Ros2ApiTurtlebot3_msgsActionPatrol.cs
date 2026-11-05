using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Robotis.Ros2.jazzy
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros2ApiTurtlebot3_msgsActionPatrol
    {
        public static readonly ICodec<Ros2Turtlebot3_msgsActionPatrol_Goal> GoalCodec =
            new RecordCodec<Ros2Turtlebot3_msgsActionPatrol_Goal>(Ros2Turtlebot3_msgsActionPatrol_Goal.Encode, Ros2Turtlebot3_msgsActionPatrol_Goal.Decode);
        public static readonly ICodec<Ros2Turtlebot3_msgsActionPatrol_Result> ResultCodec =
            new RecordCodec<Ros2Turtlebot3_msgsActionPatrol_Result>(Ros2Turtlebot3_msgsActionPatrol_Result.Encode, Ros2Turtlebot3_msgsActionPatrol_Result.Decode);
        public static readonly ICodec<Ros2Turtlebot3_msgsActionPatrol_Feedback> FeedbackCodec =
            new RecordCodec<Ros2Turtlebot3_msgsActionPatrol_Feedback>(Ros2Turtlebot3_msgsActionPatrol_Feedback.Encode, Ros2Turtlebot3_msgsActionPatrol_Feedback.Decode);
        /// <summary>Acquire separate send, cancel-own, feedback and result roles; callers close all owners.</summary>
        public static ActionClient<Ros2Turtlebot3_msgsActionPatrol_Goal, Ros2Turtlebot3_msgsActionPatrol_Result, Ros2Turtlebot3_msgsActionPatrol_Feedback> CreateClient(Node node, string send, string cancel, string feedback, string result, int maximumGoals = 8) =>
            node.CreateActionClient(GoalCodec, ResultCodec, FeedbackCodec, send, cancel, feedback, result, maximumGoals);
        /// <summary>Acquire separate incoming-goal and response roles with complete original goal values.</summary>
        public static ActionServer<Ros2Turtlebot3_msgsActionPatrol_Goal, Ros2Turtlebot3_msgsActionPatrol_Result, Ros2Turtlebot3_msgsActionPatrol_Feedback> CreateServer(Node node, string advertise, string respond, Action<ulong, Ros2Turtlebot3_msgsActionPatrol_Goal, ActionServer<Ros2Turtlebot3_msgsActionPatrol_Goal, Ros2Turtlebot3_msgsActionPatrol_Result, Ros2Turtlebot3_msgsActionPatrol_Feedback>> callback, int maximumGoals = 8) =>
            node.CreateActionServer(GoalCodec, ResultCodec, FeedbackCodec, advertise, respond, checked(8 + Ros2Turtlebot3_msgsActionPatrol_Goal.MAX_WIRE_BYTES), callback, maximumGoals);
    }
}
