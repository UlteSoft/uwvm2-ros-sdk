using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Abb.Ros1
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiAbb_robot_msgsGetRAPIDSymbol
    {
        public static readonly ICodec<Ros1Abb_robot_msgsGetRAPIDSymbolRequest> RequestCodec =
            new RecordCodec<Ros1Abb_robot_msgsGetRAPIDSymbolRequest>(Ros1Abb_robot_msgsGetRAPIDSymbolRequest.Encode, Ros1Abb_robot_msgsGetRAPIDSymbolRequest.Decode);
        public static readonly ICodec<Ros1Abb_robot_msgsGetRAPIDSymbolResponse> ResponseCodec =
            new RecordCodec<Ros1Abb_robot_msgsGetRAPIDSymbolResponse>(Ros1Abb_robot_msgsGetRAPIDSymbolResponse.Encode, Ros1Abb_robot_msgsGetRAPIDSymbolResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Abb_robot_msgsGetRAPIDSymbolRequest, Ros1Abb_robot_msgsGetRAPIDSymbolResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Abb_robot_msgsGetRAPIDSymbolResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Abb_robot_msgsGetRAPIDSymbolRequest, Ros1Abb_robot_msgsGetRAPIDSymbolResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Abb_robot_msgsGetRAPIDSymbolRequest, Ros1Abb_robot_msgsGetRAPIDSymbolResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Abb_robot_msgsGetRAPIDSymbolRequest.MAX_WIRE_BYTES), callback);
    }
}
