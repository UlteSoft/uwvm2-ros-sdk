using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Trossen.Ros1.ros1_melodic
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiInterbotix_xs_msgsReboot
    {
        public static readonly ICodec<Ros1Interbotix_xs_msgsRebootRequest> RequestCodec =
            new RecordCodec<Ros1Interbotix_xs_msgsRebootRequest>(Ros1Interbotix_xs_msgsRebootRequest.Encode, Ros1Interbotix_xs_msgsRebootRequest.Decode);
        public static readonly ICodec<Ros1Interbotix_xs_msgsRebootResponse> ResponseCodec =
            new RecordCodec<Ros1Interbotix_xs_msgsRebootResponse>(Ros1Interbotix_xs_msgsRebootResponse.Encode, Ros1Interbotix_xs_msgsRebootResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Interbotix_xs_msgsRebootRequest, Ros1Interbotix_xs_msgsRebootResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Interbotix_xs_msgsRebootResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Interbotix_xs_msgsRebootRequest, Ros1Interbotix_xs_msgsRebootResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Interbotix_xs_msgsRebootRequest, Ros1Interbotix_xs_msgsRebootResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Interbotix_xs_msgsRebootRequest.MAX_WIRE_BYTES), callback);
    }
}
