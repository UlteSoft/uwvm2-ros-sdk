using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Trossen.Ros1.ros1_noetic
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiXarm_msgsGetDigitalIO
    {
        public static readonly ICodec<Ros1Xarm_msgsGetDigitalIORequest> RequestCodec =
            new RecordCodec<Ros1Xarm_msgsGetDigitalIORequest>(Ros1Xarm_msgsGetDigitalIORequest.Encode, Ros1Xarm_msgsGetDigitalIORequest.Decode);
        public static readonly ICodec<Ros1Xarm_msgsGetDigitalIOResponse> ResponseCodec =
            new RecordCodec<Ros1Xarm_msgsGetDigitalIOResponse>(Ros1Xarm_msgsGetDigitalIOResponse.Encode, Ros1Xarm_msgsGetDigitalIOResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Xarm_msgsGetDigitalIORequest, Ros1Xarm_msgsGetDigitalIOResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Xarm_msgsGetDigitalIOResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Xarm_msgsGetDigitalIORequest, Ros1Xarm_msgsGetDigitalIOResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Xarm_msgsGetDigitalIORequest, Ros1Xarm_msgsGetDigitalIOResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Xarm_msgsGetDigitalIORequest.MAX_WIRE_BYTES), callback);
    }
}
