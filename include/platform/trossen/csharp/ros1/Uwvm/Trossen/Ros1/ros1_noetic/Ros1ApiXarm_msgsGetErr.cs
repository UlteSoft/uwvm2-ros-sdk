using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Trossen.Ros1.ros1_noetic
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiXarm_msgsGetErr
    {
        public static readonly ICodec<Ros1Xarm_msgsGetErrRequest> RequestCodec =
            new RecordCodec<Ros1Xarm_msgsGetErrRequest>(Ros1Xarm_msgsGetErrRequest.Encode, Ros1Xarm_msgsGetErrRequest.Decode);
        public static readonly ICodec<Ros1Xarm_msgsGetErrResponse> ResponseCodec =
            new RecordCodec<Ros1Xarm_msgsGetErrResponse>(Ros1Xarm_msgsGetErrResponse.Encode, Ros1Xarm_msgsGetErrResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Xarm_msgsGetErrRequest, Ros1Xarm_msgsGetErrResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Xarm_msgsGetErrResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Xarm_msgsGetErrRequest, Ros1Xarm_msgsGetErrResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Xarm_msgsGetErrRequest, Ros1Xarm_msgsGetErrResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Xarm_msgsGetErrRequest.MAX_WIRE_BYTES), callback);
    }
}
