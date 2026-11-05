using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Robotis.Ros1.noetic
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiStd_srvsTrigger
    {
        public static readonly ICodec<Ros1Std_srvsTriggerRequest> RequestCodec =
            new RecordCodec<Ros1Std_srvsTriggerRequest>(Ros1Std_srvsTriggerRequest.Encode, Ros1Std_srvsTriggerRequest.Decode);
        public static readonly ICodec<Ros1Std_srvsTriggerResponse> ResponseCodec =
            new RecordCodec<Ros1Std_srvsTriggerResponse>(Ros1Std_srvsTriggerResponse.Encode, Ros1Std_srvsTriggerResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Std_srvsTriggerRequest, Ros1Std_srvsTriggerResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Std_srvsTriggerResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Std_srvsTriggerRequest, Ros1Std_srvsTriggerResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Std_srvsTriggerRequest, Ros1Std_srvsTriggerResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Std_srvsTriggerRequest.MAX_WIRE_BYTES), callback);
    }
}
