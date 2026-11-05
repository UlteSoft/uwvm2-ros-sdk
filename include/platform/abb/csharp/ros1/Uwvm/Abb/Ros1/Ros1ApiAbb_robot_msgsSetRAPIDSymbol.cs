using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Abb.Ros1
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiAbb_robot_msgsSetRAPIDSymbol
    {
        public static readonly ICodec<Ros1Abb_robot_msgsSetRAPIDSymbolRequest> RequestCodec =
            new RecordCodec<Ros1Abb_robot_msgsSetRAPIDSymbolRequest>(Ros1Abb_robot_msgsSetRAPIDSymbolRequest.Encode, Ros1Abb_robot_msgsSetRAPIDSymbolRequest.Decode);
        public static readonly ICodec<Ros1Abb_robot_msgsSetRAPIDSymbolResponse> ResponseCodec =
            new RecordCodec<Ros1Abb_robot_msgsSetRAPIDSymbolResponse>(Ros1Abb_robot_msgsSetRAPIDSymbolResponse.Encode, Ros1Abb_robot_msgsSetRAPIDSymbolResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Abb_robot_msgsSetRAPIDSymbolRequest, Ros1Abb_robot_msgsSetRAPIDSymbolResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Abb_robot_msgsSetRAPIDSymbolResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Abb_robot_msgsSetRAPIDSymbolRequest, Ros1Abb_robot_msgsSetRAPIDSymbolResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Abb_robot_msgsSetRAPIDSymbolRequest, Ros1Abb_robot_msgsSetRAPIDSymbolResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Abb_robot_msgsSetRAPIDSymbolRequest.MAX_WIRE_BYTES), callback);
    }
}
