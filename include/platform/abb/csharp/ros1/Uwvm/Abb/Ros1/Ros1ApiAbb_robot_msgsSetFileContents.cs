using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Abb.Ros1
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiAbb_robot_msgsSetFileContents
    {
        public static readonly ICodec<Ros1Abb_robot_msgsSetFileContentsRequest> RequestCodec =
            new RecordCodec<Ros1Abb_robot_msgsSetFileContentsRequest>(Ros1Abb_robot_msgsSetFileContentsRequest.Encode, Ros1Abb_robot_msgsSetFileContentsRequest.Decode);
        public static readonly ICodec<Ros1Abb_robot_msgsSetFileContentsResponse> ResponseCodec =
            new RecordCodec<Ros1Abb_robot_msgsSetFileContentsResponse>(Ros1Abb_robot_msgsSetFileContentsResponse.Encode, Ros1Abb_robot_msgsSetFileContentsResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Abb_robot_msgsSetFileContentsRequest, Ros1Abb_robot_msgsSetFileContentsResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Abb_robot_msgsSetFileContentsResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Abb_robot_msgsSetFileContentsRequest, Ros1Abb_robot_msgsSetFileContentsResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Abb_robot_msgsSetFileContentsRequest, Ros1Abb_robot_msgsSetFileContentsResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Abb_robot_msgsSetFileContentsRequest.MAX_WIRE_BYTES), callback);
    }
}
