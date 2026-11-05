using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Abb.Ros1
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiAbb_robot_msgsGetRAPIDString
    {
        public static readonly ICodec<Ros1Abb_robot_msgsGetRAPIDStringRequest> RequestCodec =
            new RecordCodec<Ros1Abb_robot_msgsGetRAPIDStringRequest>(Ros1Abb_robot_msgsGetRAPIDStringRequest.Encode, Ros1Abb_robot_msgsGetRAPIDStringRequest.Decode);
        public static readonly ICodec<Ros1Abb_robot_msgsGetRAPIDStringResponse> ResponseCodec =
            new RecordCodec<Ros1Abb_robot_msgsGetRAPIDStringResponse>(Ros1Abb_robot_msgsGetRAPIDStringResponse.Encode, Ros1Abb_robot_msgsGetRAPIDStringResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Abb_robot_msgsGetRAPIDStringRequest, Ros1Abb_robot_msgsGetRAPIDStringResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Abb_robot_msgsGetRAPIDStringResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Abb_robot_msgsGetRAPIDStringRequest, Ros1Abb_robot_msgsGetRAPIDStringResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Abb_robot_msgsGetRAPIDStringRequest, Ros1Abb_robot_msgsGetRAPIDStringResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Abb_robot_msgsGetRAPIDStringRequest.MAX_WIRE_BYTES), callback);
    }
}
