using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Trossen.Ros1.ros1_main
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiXarm_msgsMove
    {
        public static readonly ICodec<Ros1Xarm_msgsMoveRequest> RequestCodec =
            new RecordCodec<Ros1Xarm_msgsMoveRequest>(Ros1Xarm_msgsMoveRequest.Encode, Ros1Xarm_msgsMoveRequest.Decode);
        public static readonly ICodec<Ros1Xarm_msgsMoveResponse> ResponseCodec =
            new RecordCodec<Ros1Xarm_msgsMoveResponse>(Ros1Xarm_msgsMoveResponse.Encode, Ros1Xarm_msgsMoveResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Xarm_msgsMoveRequest, Ros1Xarm_msgsMoveResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Xarm_msgsMoveResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Xarm_msgsMoveRequest, Ros1Xarm_msgsMoveResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Xarm_msgsMoveRequest, Ros1Xarm_msgsMoveResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Xarm_msgsMoveRequest.MAX_WIRE_BYTES), callback);
    }
}
