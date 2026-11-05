using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Trossen.Ros1.ros1_main
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiXarm_msgsSetDigitalIO
    {
        public static readonly ICodec<Ros1Xarm_msgsSetDigitalIORequest> RequestCodec =
            new RecordCodec<Ros1Xarm_msgsSetDigitalIORequest>(Ros1Xarm_msgsSetDigitalIORequest.Encode, Ros1Xarm_msgsSetDigitalIORequest.Decode);
        public static readonly ICodec<Ros1Xarm_msgsSetDigitalIOResponse> ResponseCodec =
            new RecordCodec<Ros1Xarm_msgsSetDigitalIOResponse>(Ros1Xarm_msgsSetDigitalIOResponse.Encode, Ros1Xarm_msgsSetDigitalIOResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Xarm_msgsSetDigitalIORequest, Ros1Xarm_msgsSetDigitalIOResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Xarm_msgsSetDigitalIOResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Xarm_msgsSetDigitalIORequest, Ros1Xarm_msgsSetDigitalIOResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Xarm_msgsSetDigitalIORequest, Ros1Xarm_msgsSetDigitalIOResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Xarm_msgsSetDigitalIORequest.MAX_WIRE_BYTES), callback);
    }
}
