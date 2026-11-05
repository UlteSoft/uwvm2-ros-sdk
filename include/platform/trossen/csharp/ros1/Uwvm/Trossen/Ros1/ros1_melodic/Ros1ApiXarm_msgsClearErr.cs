using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Trossen.Ros1.ros1_melodic
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiXarm_msgsClearErr
    {
        public static readonly ICodec<Ros1Xarm_msgsClearErrRequest> RequestCodec =
            new RecordCodec<Ros1Xarm_msgsClearErrRequest>(Ros1Xarm_msgsClearErrRequest.Encode, Ros1Xarm_msgsClearErrRequest.Decode);
        public static readonly ICodec<Ros1Xarm_msgsClearErrResponse> ResponseCodec =
            new RecordCodec<Ros1Xarm_msgsClearErrResponse>(Ros1Xarm_msgsClearErrResponse.Encode, Ros1Xarm_msgsClearErrResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Xarm_msgsClearErrRequest, Ros1Xarm_msgsClearErrResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Xarm_msgsClearErrResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Xarm_msgsClearErrRequest, Ros1Xarm_msgsClearErrResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Xarm_msgsClearErrRequest, Ros1Xarm_msgsClearErrResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Xarm_msgsClearErrRequest.MAX_WIRE_BYTES), callback);
    }
}
