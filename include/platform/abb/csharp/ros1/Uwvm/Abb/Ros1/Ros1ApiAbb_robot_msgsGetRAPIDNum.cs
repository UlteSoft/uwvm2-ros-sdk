using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Abb.Ros1
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiAbb_robot_msgsGetRAPIDNum
    {
        public static readonly ICodec<Ros1Abb_robot_msgsGetRAPIDNumRequest> RequestCodec =
            new RecordCodec<Ros1Abb_robot_msgsGetRAPIDNumRequest>(Ros1Abb_robot_msgsGetRAPIDNumRequest.Encode, Ros1Abb_robot_msgsGetRAPIDNumRequest.Decode);
        public static readonly ICodec<Ros1Abb_robot_msgsGetRAPIDNumResponse> ResponseCodec =
            new RecordCodec<Ros1Abb_robot_msgsGetRAPIDNumResponse>(Ros1Abb_robot_msgsGetRAPIDNumResponse.Encode, Ros1Abb_robot_msgsGetRAPIDNumResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Abb_robot_msgsGetRAPIDNumRequest, Ros1Abb_robot_msgsGetRAPIDNumResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Abb_robot_msgsGetRAPIDNumResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Abb_robot_msgsGetRAPIDNumRequest, Ros1Abb_robot_msgsGetRAPIDNumResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Abb_robot_msgsGetRAPIDNumRequest, Ros1Abb_robot_msgsGetRAPIDNumResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Abb_robot_msgsGetRAPIDNumRequest.MAX_WIRE_BYTES), callback);
    }
}
