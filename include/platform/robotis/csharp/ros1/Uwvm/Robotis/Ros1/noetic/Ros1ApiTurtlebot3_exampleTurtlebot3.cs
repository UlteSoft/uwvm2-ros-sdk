using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Robotis.Ros1.noetic
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiTurtlebot3_exampleTurtlebot3
    {
        public static readonly ICodec<Ros1Turtlebot3_exampleTurtlebot3Goal> GoalCodec =
            new RecordCodec<Ros1Turtlebot3_exampleTurtlebot3Goal>(Ros1Turtlebot3_exampleTurtlebot3Goal.Encode, Ros1Turtlebot3_exampleTurtlebot3Goal.Decode);
        public static readonly ICodec<Ros1Turtlebot3_exampleTurtlebot3Result> ResultCodec =
            new RecordCodec<Ros1Turtlebot3_exampleTurtlebot3Result>(Ros1Turtlebot3_exampleTurtlebot3Result.Encode, Ros1Turtlebot3_exampleTurtlebot3Result.Decode);
        public static readonly ICodec<Ros1Turtlebot3_exampleTurtlebot3Feedback> FeedbackCodec =
            new RecordCodec<Ros1Turtlebot3_exampleTurtlebot3Feedback>(Ros1Turtlebot3_exampleTurtlebot3Feedback.Encode, Ros1Turtlebot3_exampleTurtlebot3Feedback.Decode);
        /// <summary>Acquire separate send, cancel-own, feedback and result roles; callers close all owners.</summary>
        public static ActionClient<Ros1Turtlebot3_exampleTurtlebot3Goal, Ros1Turtlebot3_exampleTurtlebot3Result, Ros1Turtlebot3_exampleTurtlebot3Feedback> CreateClient(Node node, string send, string cancel, string feedback, string result, int maximumGoals = 8) =>
            node.CreateActionClient(GoalCodec, ResultCodec, FeedbackCodec, send, cancel, feedback, result, maximumGoals);
        /// <summary>Acquire separate incoming-goal and response roles with complete original goal values.</summary>
        public static ActionServer<Ros1Turtlebot3_exampleTurtlebot3Goal, Ros1Turtlebot3_exampleTurtlebot3Result, Ros1Turtlebot3_exampleTurtlebot3Feedback> CreateServer(Node node, string advertise, string respond, Action<ulong, Ros1Turtlebot3_exampleTurtlebot3Goal, ActionServer<Ros1Turtlebot3_exampleTurtlebot3Goal, Ros1Turtlebot3_exampleTurtlebot3Result, Ros1Turtlebot3_exampleTurtlebot3Feedback>> callback, int maximumGoals = 8) =>
            node.CreateActionServer(GoalCodec, ResultCodec, FeedbackCodec, advertise, respond, checked(8 + Ros1Turtlebot3_exampleTurtlebot3Goal.MAX_WIRE_BYTES), callback, maximumGoals);
    }
}
