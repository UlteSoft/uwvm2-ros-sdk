using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Trossen.Ros1.ros1_main
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiXarm_msgsTCPOffset
    {
        public static readonly ICodec<Ros1Xarm_msgsTCPOffsetRequest> RequestCodec =
            new RecordCodec<Ros1Xarm_msgsTCPOffsetRequest>(Ros1Xarm_msgsTCPOffsetRequest.Encode, Ros1Xarm_msgsTCPOffsetRequest.Decode);
        public static readonly ICodec<Ros1Xarm_msgsTCPOffsetResponse> ResponseCodec =
            new RecordCodec<Ros1Xarm_msgsTCPOffsetResponse>(Ros1Xarm_msgsTCPOffsetResponse.Encode, Ros1Xarm_msgsTCPOffsetResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Xarm_msgsTCPOffsetRequest, Ros1Xarm_msgsTCPOffsetResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Xarm_msgsTCPOffsetResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Xarm_msgsTCPOffsetRequest, Ros1Xarm_msgsTCPOffsetResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Xarm_msgsTCPOffsetRequest, Ros1Xarm_msgsTCPOffsetResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Xarm_msgsTCPOffsetRequest.MAX_WIRE_BYTES), callback);
    }
}
