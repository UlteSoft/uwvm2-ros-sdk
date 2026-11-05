using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Trossen.Ros1.ros1_main
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiInterbotix_xs_msgsMotorGains
    {
        public static readonly ICodec<Ros1Interbotix_xs_msgsMotorGainsRequest> RequestCodec =
            new RecordCodec<Ros1Interbotix_xs_msgsMotorGainsRequest>(Ros1Interbotix_xs_msgsMotorGainsRequest.Encode, Ros1Interbotix_xs_msgsMotorGainsRequest.Decode);
        public static readonly ICodec<Ros1Interbotix_xs_msgsMotorGainsResponse> ResponseCodec =
            new RecordCodec<Ros1Interbotix_xs_msgsMotorGainsResponse>(Ros1Interbotix_xs_msgsMotorGainsResponse.Encode, Ros1Interbotix_xs_msgsMotorGainsResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Interbotix_xs_msgsMotorGainsRequest, Ros1Interbotix_xs_msgsMotorGainsResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Interbotix_xs_msgsMotorGainsResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Interbotix_xs_msgsMotorGainsRequest, Ros1Interbotix_xs_msgsMotorGainsResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Interbotix_xs_msgsMotorGainsRequest, Ros1Interbotix_xs_msgsMotorGainsResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Interbotix_xs_msgsMotorGainsRequest.MAX_WIRE_BYTES), callback);
    }
}
