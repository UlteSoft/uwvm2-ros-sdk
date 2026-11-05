using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Abb.Ros1
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiAbb_robot_msgsGetFileContents
    {
        public static readonly ICodec<Ros1Abb_robot_msgsGetFileContentsRequest> RequestCodec =
            new RecordCodec<Ros1Abb_robot_msgsGetFileContentsRequest>(Ros1Abb_robot_msgsGetFileContentsRequest.Encode, Ros1Abb_robot_msgsGetFileContentsRequest.Decode);
        public static readonly ICodec<Ros1Abb_robot_msgsGetFileContentsResponse> ResponseCodec =
            new RecordCodec<Ros1Abb_robot_msgsGetFileContentsResponse>(Ros1Abb_robot_msgsGetFileContentsResponse.Encode, Ros1Abb_robot_msgsGetFileContentsResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Abb_robot_msgsGetFileContentsRequest, Ros1Abb_robot_msgsGetFileContentsResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Abb_robot_msgsGetFileContentsResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Abb_robot_msgsGetFileContentsRequest, Ros1Abb_robot_msgsGetFileContentsResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Abb_robot_msgsGetFileContentsRequest, Ros1Abb_robot_msgsGetFileContentsResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Abb_robot_msgsGetFileContentsRequest.MAX_WIRE_BYTES), callback);
    }
}
