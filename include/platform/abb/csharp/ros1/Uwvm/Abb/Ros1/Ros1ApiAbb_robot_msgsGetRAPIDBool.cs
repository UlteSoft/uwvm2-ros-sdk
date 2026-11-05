using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Abb.Ros1
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiAbb_robot_msgsGetRAPIDBool
    {
        public static readonly ICodec<Ros1Abb_robot_msgsGetRAPIDBoolRequest> RequestCodec =
            new RecordCodec<Ros1Abb_robot_msgsGetRAPIDBoolRequest>(Ros1Abb_robot_msgsGetRAPIDBoolRequest.Encode, Ros1Abb_robot_msgsGetRAPIDBoolRequest.Decode);
        public static readonly ICodec<Ros1Abb_robot_msgsGetRAPIDBoolResponse> ResponseCodec =
            new RecordCodec<Ros1Abb_robot_msgsGetRAPIDBoolResponse>(Ros1Abb_robot_msgsGetRAPIDBoolResponse.Encode, Ros1Abb_robot_msgsGetRAPIDBoolResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Abb_robot_msgsGetRAPIDBoolRequest, Ros1Abb_robot_msgsGetRAPIDBoolResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Abb_robot_msgsGetRAPIDBoolResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Abb_robot_msgsGetRAPIDBoolRequest, Ros1Abb_robot_msgsGetRAPIDBoolResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Abb_robot_msgsGetRAPIDBoolRequest, Ros1Abb_robot_msgsGetRAPIDBoolResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Abb_robot_msgsGetRAPIDBoolRequest.MAX_WIRE_BYTES), callback);
    }
}
