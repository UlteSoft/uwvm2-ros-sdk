using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Abb.Ros1
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiAbb_robot_msgsSetRAPIDNum
    {
        public static readonly ICodec<Ros1Abb_robot_msgsSetRAPIDNumRequest> RequestCodec =
            new RecordCodec<Ros1Abb_robot_msgsSetRAPIDNumRequest>(Ros1Abb_robot_msgsSetRAPIDNumRequest.Encode, Ros1Abb_robot_msgsSetRAPIDNumRequest.Decode);
        public static readonly ICodec<Ros1Abb_robot_msgsSetRAPIDNumResponse> ResponseCodec =
            new RecordCodec<Ros1Abb_robot_msgsSetRAPIDNumResponse>(Ros1Abb_robot_msgsSetRAPIDNumResponse.Encode, Ros1Abb_robot_msgsSetRAPIDNumResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Abb_robot_msgsSetRAPIDNumRequest, Ros1Abb_robot_msgsSetRAPIDNumResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Abb_robot_msgsSetRAPIDNumResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Abb_robot_msgsSetRAPIDNumRequest, Ros1Abb_robot_msgsSetRAPIDNumResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Abb_robot_msgsSetRAPIDNumRequest, Ros1Abb_robot_msgsSetRAPIDNumResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Abb_robot_msgsSetRAPIDNumRequest.MAX_WIRE_BYTES), callback);
    }
}
