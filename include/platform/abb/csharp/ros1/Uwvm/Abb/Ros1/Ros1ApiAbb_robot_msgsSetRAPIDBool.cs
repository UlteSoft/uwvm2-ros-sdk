using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Abb.Ros1
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiAbb_robot_msgsSetRAPIDBool
    {
        public static readonly ICodec<Ros1Abb_robot_msgsSetRAPIDBoolRequest> RequestCodec =
            new RecordCodec<Ros1Abb_robot_msgsSetRAPIDBoolRequest>(Ros1Abb_robot_msgsSetRAPIDBoolRequest.Encode, Ros1Abb_robot_msgsSetRAPIDBoolRequest.Decode);
        public static readonly ICodec<Ros1Abb_robot_msgsSetRAPIDBoolResponse> ResponseCodec =
            new RecordCodec<Ros1Abb_robot_msgsSetRAPIDBoolResponse>(Ros1Abb_robot_msgsSetRAPIDBoolResponse.Encode, Ros1Abb_robot_msgsSetRAPIDBoolResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Abb_robot_msgsSetRAPIDBoolRequest, Ros1Abb_robot_msgsSetRAPIDBoolResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Abb_robot_msgsSetRAPIDBoolResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Abb_robot_msgsSetRAPIDBoolRequest, Ros1Abb_robot_msgsSetRAPIDBoolResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Abb_robot_msgsSetRAPIDBoolRequest, Ros1Abb_robot_msgsSetRAPIDBoolResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Abb_robot_msgsSetRAPIDBoolRequest.MAX_WIRE_BYTES), callback);
    }
}
