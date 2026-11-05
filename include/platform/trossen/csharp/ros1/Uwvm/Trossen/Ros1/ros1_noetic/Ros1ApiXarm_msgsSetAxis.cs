using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Trossen.Ros1.ros1_noetic
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiXarm_msgsSetAxis
    {
        public static readonly ICodec<Ros1Xarm_msgsSetAxisRequest> RequestCodec =
            new RecordCodec<Ros1Xarm_msgsSetAxisRequest>(Ros1Xarm_msgsSetAxisRequest.Encode, Ros1Xarm_msgsSetAxisRequest.Decode);
        public static readonly ICodec<Ros1Xarm_msgsSetAxisResponse> ResponseCodec =
            new RecordCodec<Ros1Xarm_msgsSetAxisResponse>(Ros1Xarm_msgsSetAxisResponse.Encode, Ros1Xarm_msgsSetAxisResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Xarm_msgsSetAxisRequest, Ros1Xarm_msgsSetAxisResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Xarm_msgsSetAxisResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Xarm_msgsSetAxisRequest, Ros1Xarm_msgsSetAxisResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Xarm_msgsSetAxisRequest, Ros1Xarm_msgsSetAxisResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Xarm_msgsSetAxisRequest.MAX_WIRE_BYTES), callback);
    }
}
