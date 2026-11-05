using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Abb.Ros1
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiAbb_robot_msgsSetRAPIDDnum
    {
        public static readonly ICodec<Ros1Abb_robot_msgsSetRAPIDDnumRequest> RequestCodec =
            new RecordCodec<Ros1Abb_robot_msgsSetRAPIDDnumRequest>(Ros1Abb_robot_msgsSetRAPIDDnumRequest.Encode, Ros1Abb_robot_msgsSetRAPIDDnumRequest.Decode);
        public static readonly ICodec<Ros1Abb_robot_msgsSetRAPIDDnumResponse> ResponseCodec =
            new RecordCodec<Ros1Abb_robot_msgsSetRAPIDDnumResponse>(Ros1Abb_robot_msgsSetRAPIDDnumResponse.Encode, Ros1Abb_robot_msgsSetRAPIDDnumResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Abb_robot_msgsSetRAPIDDnumRequest, Ros1Abb_robot_msgsSetRAPIDDnumResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Abb_robot_msgsSetRAPIDDnumResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Abb_robot_msgsSetRAPIDDnumRequest, Ros1Abb_robot_msgsSetRAPIDDnumResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Abb_robot_msgsSetRAPIDDnumRequest, Ros1Abb_robot_msgsSetRAPIDDnumResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Abb_robot_msgsSetRAPIDDnumRequest.MAX_WIRE_BYTES), callback);
    }
}
