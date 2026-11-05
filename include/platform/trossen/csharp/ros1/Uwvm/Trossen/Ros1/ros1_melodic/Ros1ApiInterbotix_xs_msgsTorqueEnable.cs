using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Trossen.Ros1.ros1_melodic
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiInterbotix_xs_msgsTorqueEnable
    {
        public static readonly ICodec<Ros1Interbotix_xs_msgsTorqueEnableRequest> RequestCodec =
            new RecordCodec<Ros1Interbotix_xs_msgsTorqueEnableRequest>(Ros1Interbotix_xs_msgsTorqueEnableRequest.Encode, Ros1Interbotix_xs_msgsTorqueEnableRequest.Decode);
        public static readonly ICodec<Ros1Interbotix_xs_msgsTorqueEnableResponse> ResponseCodec =
            new RecordCodec<Ros1Interbotix_xs_msgsTorqueEnableResponse>(Ros1Interbotix_xs_msgsTorqueEnableResponse.Encode, Ros1Interbotix_xs_msgsTorqueEnableResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Interbotix_xs_msgsTorqueEnableRequest, Ros1Interbotix_xs_msgsTorqueEnableResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Interbotix_xs_msgsTorqueEnableResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Interbotix_xs_msgsTorqueEnableRequest, Ros1Interbotix_xs_msgsTorqueEnableResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Interbotix_xs_msgsTorqueEnableRequest, Ros1Interbotix_xs_msgsTorqueEnableResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Interbotix_xs_msgsTorqueEnableRequest.MAX_WIRE_BYTES), callback);
    }
}
