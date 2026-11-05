using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Robotis.Ros2.jazzy
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros2ApiTurtlebot3_msgsSrvGoal
    {
        public static readonly ICodec<Ros2Turtlebot3_msgsSrvGoal_Request> RequestCodec =
            new RecordCodec<Ros2Turtlebot3_msgsSrvGoal_Request>(Ros2Turtlebot3_msgsSrvGoal_Request.Encode, Ros2Turtlebot3_msgsSrvGoal_Request.Decode);
        public static readonly ICodec<Ros2Turtlebot3_msgsSrvGoal_Response> ResponseCodec =
            new RecordCodec<Ros2Turtlebot3_msgsSrvGoal_Response>(Ros2Turtlebot3_msgsSrvGoal_Response.Encode, Ros2Turtlebot3_msgsSrvGoal_Response.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros2Turtlebot3_msgsSrvGoal_Request, Ros2Turtlebot3_msgsSrvGoal_Response> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros2Turtlebot3_msgsSrvGoal_Response.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros2Turtlebot3_msgsSrvGoal_Request, Ros2Turtlebot3_msgsSrvGoal_Response> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros2Turtlebot3_msgsSrvGoal_Request, Ros2Turtlebot3_msgsSrvGoal_Response> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros2Turtlebot3_msgsSrvGoal_Request.MAX_WIRE_BYTES), callback);
    }
}
