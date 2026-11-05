using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Trossen.Ros1.ros1_main
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiXarm_msgsGetControllerDigitalIO
    {
        public static readonly ICodec<Ros1Xarm_msgsGetControllerDigitalIORequest> RequestCodec =
            new RecordCodec<Ros1Xarm_msgsGetControllerDigitalIORequest>(Ros1Xarm_msgsGetControllerDigitalIORequest.Encode, Ros1Xarm_msgsGetControllerDigitalIORequest.Decode);
        public static readonly ICodec<Ros1Xarm_msgsGetControllerDigitalIOResponse> ResponseCodec =
            new RecordCodec<Ros1Xarm_msgsGetControllerDigitalIOResponse>(Ros1Xarm_msgsGetControllerDigitalIOResponse.Encode, Ros1Xarm_msgsGetControllerDigitalIOResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Xarm_msgsGetControllerDigitalIORequest, Ros1Xarm_msgsGetControllerDigitalIOResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Xarm_msgsGetControllerDigitalIOResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Xarm_msgsGetControllerDigitalIORequest, Ros1Xarm_msgsGetControllerDigitalIOResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Xarm_msgsGetControllerDigitalIORequest, Ros1Xarm_msgsGetControllerDigitalIOResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Xarm_msgsGetControllerDigitalIORequest.MAX_WIRE_BYTES), callback);
    }
}
