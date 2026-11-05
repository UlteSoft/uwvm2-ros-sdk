using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Trossen.Ros1.ros1_noetic
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiXarm_msgsGripperMove
    {
        public static readonly ICodec<Ros1Xarm_msgsGripperMoveRequest> RequestCodec =
            new RecordCodec<Ros1Xarm_msgsGripperMoveRequest>(Ros1Xarm_msgsGripperMoveRequest.Encode, Ros1Xarm_msgsGripperMoveRequest.Decode);
        public static readonly ICodec<Ros1Xarm_msgsGripperMoveResponse> ResponseCodec =
            new RecordCodec<Ros1Xarm_msgsGripperMoveResponse>(Ros1Xarm_msgsGripperMoveResponse.Encode, Ros1Xarm_msgsGripperMoveResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Xarm_msgsGripperMoveRequest, Ros1Xarm_msgsGripperMoveResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Xarm_msgsGripperMoveResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Xarm_msgsGripperMoveRequest, Ros1Xarm_msgsGripperMoveResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Xarm_msgsGripperMoveRequest, Ros1Xarm_msgsGripperMoveResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Xarm_msgsGripperMoveRequest.MAX_WIRE_BYTES), callback);
    }
}
