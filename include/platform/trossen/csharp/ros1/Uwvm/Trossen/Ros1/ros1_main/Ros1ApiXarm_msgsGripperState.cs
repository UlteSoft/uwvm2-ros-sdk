using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Trossen.Ros1.ros1_main
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiXarm_msgsGripperState
    {
        public static readonly ICodec<Ros1Xarm_msgsGripperStateRequest> RequestCodec =
            new RecordCodec<Ros1Xarm_msgsGripperStateRequest>(Ros1Xarm_msgsGripperStateRequest.Encode, Ros1Xarm_msgsGripperStateRequest.Decode);
        public static readonly ICodec<Ros1Xarm_msgsGripperStateResponse> ResponseCodec =
            new RecordCodec<Ros1Xarm_msgsGripperStateResponse>(Ros1Xarm_msgsGripperStateResponse.Encode, Ros1Xarm_msgsGripperStateResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Xarm_msgsGripperStateRequest, Ros1Xarm_msgsGripperStateResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Xarm_msgsGripperStateResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Xarm_msgsGripperStateRequest, Ros1Xarm_msgsGripperStateResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Xarm_msgsGripperStateRequest, Ros1Xarm_msgsGripperStateResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Xarm_msgsGripperStateRequest.MAX_WIRE_BYTES), callback);
    }
}
