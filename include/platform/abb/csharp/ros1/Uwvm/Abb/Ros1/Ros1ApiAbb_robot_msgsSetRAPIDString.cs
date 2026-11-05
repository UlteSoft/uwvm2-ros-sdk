using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Abb.Ros1
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiAbb_robot_msgsSetRAPIDString
    {
        public static readonly ICodec<Ros1Abb_robot_msgsSetRAPIDStringRequest> RequestCodec =
            new RecordCodec<Ros1Abb_robot_msgsSetRAPIDStringRequest>(Ros1Abb_robot_msgsSetRAPIDStringRequest.Encode, Ros1Abb_robot_msgsSetRAPIDStringRequest.Decode);
        public static readonly ICodec<Ros1Abb_robot_msgsSetRAPIDStringResponse> ResponseCodec =
            new RecordCodec<Ros1Abb_robot_msgsSetRAPIDStringResponse>(Ros1Abb_robot_msgsSetRAPIDStringResponse.Encode, Ros1Abb_robot_msgsSetRAPIDStringResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Abb_robot_msgsSetRAPIDStringRequest, Ros1Abb_robot_msgsSetRAPIDStringResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Abb_robot_msgsSetRAPIDStringResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Abb_robot_msgsSetRAPIDStringRequest, Ros1Abb_robot_msgsSetRAPIDStringResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Abb_robot_msgsSetRAPIDStringRequest, Ros1Abb_robot_msgsSetRAPIDStringResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Abb_robot_msgsSetRAPIDStringRequest.MAX_WIRE_BYTES), callback);
    }
}
