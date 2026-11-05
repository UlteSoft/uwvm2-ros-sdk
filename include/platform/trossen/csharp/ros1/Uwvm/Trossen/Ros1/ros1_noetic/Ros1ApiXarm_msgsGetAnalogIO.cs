using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Trossen.Ros1.ros1_noetic
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiXarm_msgsGetAnalogIO
    {
        public static readonly ICodec<Ros1Xarm_msgsGetAnalogIORequest> RequestCodec =
            new RecordCodec<Ros1Xarm_msgsGetAnalogIORequest>(Ros1Xarm_msgsGetAnalogIORequest.Encode, Ros1Xarm_msgsGetAnalogIORequest.Decode);
        public static readonly ICodec<Ros1Xarm_msgsGetAnalogIOResponse> ResponseCodec =
            new RecordCodec<Ros1Xarm_msgsGetAnalogIOResponse>(Ros1Xarm_msgsGetAnalogIOResponse.Encode, Ros1Xarm_msgsGetAnalogIOResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Xarm_msgsGetAnalogIORequest, Ros1Xarm_msgsGetAnalogIOResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Xarm_msgsGetAnalogIOResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Xarm_msgsGetAnalogIORequest, Ros1Xarm_msgsGetAnalogIOResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Xarm_msgsGetAnalogIORequest, Ros1Xarm_msgsGetAnalogIOResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Xarm_msgsGetAnalogIORequest.MAX_WIRE_BYTES), callback);
    }
}
