using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Trossen.Ros1.ros1_noetic
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiXarm_msgsGripperConfig
    {
        public static readonly ICodec<Ros1Xarm_msgsGripperConfigRequest> RequestCodec =
            new RecordCodec<Ros1Xarm_msgsGripperConfigRequest>(Ros1Xarm_msgsGripperConfigRequest.Encode, Ros1Xarm_msgsGripperConfigRequest.Decode);
        public static readonly ICodec<Ros1Xarm_msgsGripperConfigResponse> ResponseCodec =
            new RecordCodec<Ros1Xarm_msgsGripperConfigResponse>(Ros1Xarm_msgsGripperConfigResponse.Encode, Ros1Xarm_msgsGripperConfigResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Xarm_msgsGripperConfigRequest, Ros1Xarm_msgsGripperConfigResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Xarm_msgsGripperConfigResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Xarm_msgsGripperConfigRequest, Ros1Xarm_msgsGripperConfigResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Xarm_msgsGripperConfigRequest, Ros1Xarm_msgsGripperConfigResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Xarm_msgsGripperConfigRequest.MAX_WIRE_BYTES), callback);
    }
}
