using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Abb.Ros1
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiAbb_robot_msgsGetRobotControllerDescription
    {
        public static readonly ICodec<Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest> RequestCodec =
            new RecordCodec<Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest>(Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest.Encode, Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest.Decode);
        public static readonly ICodec<Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse> ResponseCodec =
            new RecordCodec<Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse>(Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse.Encode, Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest, Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest, Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest, Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest.MAX_WIRE_BYTES), callback);
    }
}
