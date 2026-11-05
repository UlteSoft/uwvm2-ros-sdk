using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Trossen.Ros1.ros1_noetic
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiInterbotix_xs_msgsRegisterValues
    {
        public static readonly ICodec<Ros1Interbotix_xs_msgsRegisterValuesRequest> RequestCodec =
            new RecordCodec<Ros1Interbotix_xs_msgsRegisterValuesRequest>(Ros1Interbotix_xs_msgsRegisterValuesRequest.Encode, Ros1Interbotix_xs_msgsRegisterValuesRequest.Decode);
        public static readonly ICodec<Ros1Interbotix_xs_msgsRegisterValuesResponse> ResponseCodec =
            new RecordCodec<Ros1Interbotix_xs_msgsRegisterValuesResponse>(Ros1Interbotix_xs_msgsRegisterValuesResponse.Encode, Ros1Interbotix_xs_msgsRegisterValuesResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Interbotix_xs_msgsRegisterValuesRequest, Ros1Interbotix_xs_msgsRegisterValuesResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Interbotix_xs_msgsRegisterValuesResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Interbotix_xs_msgsRegisterValuesRequest, Ros1Interbotix_xs_msgsRegisterValuesResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Interbotix_xs_msgsRegisterValuesRequest, Ros1Interbotix_xs_msgsRegisterValuesResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Interbotix_xs_msgsRegisterValuesRequest.MAX_WIRE_BYTES), callback);
    }
}
