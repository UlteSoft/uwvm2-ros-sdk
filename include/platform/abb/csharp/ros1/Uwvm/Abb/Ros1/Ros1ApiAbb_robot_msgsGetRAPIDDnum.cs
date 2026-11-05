using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Abb.Ros1
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiAbb_robot_msgsGetRAPIDDnum
    {
        public static readonly ICodec<Ros1Abb_robot_msgsGetRAPIDDnumRequest> RequestCodec =
            new RecordCodec<Ros1Abb_robot_msgsGetRAPIDDnumRequest>(Ros1Abb_robot_msgsGetRAPIDDnumRequest.Encode, Ros1Abb_robot_msgsGetRAPIDDnumRequest.Decode);
        public static readonly ICodec<Ros1Abb_robot_msgsGetRAPIDDnumResponse> ResponseCodec =
            new RecordCodec<Ros1Abb_robot_msgsGetRAPIDDnumResponse>(Ros1Abb_robot_msgsGetRAPIDDnumResponse.Encode, Ros1Abb_robot_msgsGetRAPIDDnumResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Abb_robot_msgsGetRAPIDDnumRequest, Ros1Abb_robot_msgsGetRAPIDDnumResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Abb_robot_msgsGetRAPIDDnumResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Abb_robot_msgsGetRAPIDDnumRequest, Ros1Abb_robot_msgsGetRAPIDDnumResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Abb_robot_msgsGetRAPIDDnumRequest, Ros1Abb_robot_msgsGetRAPIDDnumResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Abb_robot_msgsGetRAPIDDnumRequest.MAX_WIRE_BYTES), callback);
    }
}
