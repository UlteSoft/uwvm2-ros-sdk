using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Trossen.Ros1.ros1_melodic
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiXarm_msgsSetLoad
    {
        public static readonly ICodec<Ros1Xarm_msgsSetLoadRequest> RequestCodec =
            new RecordCodec<Ros1Xarm_msgsSetLoadRequest>(Ros1Xarm_msgsSetLoadRequest.Encode, Ros1Xarm_msgsSetLoadRequest.Decode);
        public static readonly ICodec<Ros1Xarm_msgsSetLoadResponse> ResponseCodec =
            new RecordCodec<Ros1Xarm_msgsSetLoadResponse>(Ros1Xarm_msgsSetLoadResponse.Encode, Ros1Xarm_msgsSetLoadResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Xarm_msgsSetLoadRequest, Ros1Xarm_msgsSetLoadResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Xarm_msgsSetLoadResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Xarm_msgsSetLoadRequest, Ros1Xarm_msgsSetLoadResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Xarm_msgsSetLoadRequest, Ros1Xarm_msgsSetLoadResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Xarm_msgsSetLoadRequest.MAX_WIRE_BYTES), callback);
    }
}
