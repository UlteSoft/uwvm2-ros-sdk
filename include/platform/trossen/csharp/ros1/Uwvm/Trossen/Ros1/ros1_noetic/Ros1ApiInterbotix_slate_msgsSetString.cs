using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Trossen.Ros1.ros1_noetic
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiInterbotix_slate_msgsSetString
    {
        public static readonly ICodec<Ros1Interbotix_slate_msgsSetStringRequest> RequestCodec =
            new RecordCodec<Ros1Interbotix_slate_msgsSetStringRequest>(Ros1Interbotix_slate_msgsSetStringRequest.Encode, Ros1Interbotix_slate_msgsSetStringRequest.Decode);
        public static readonly ICodec<Ros1Interbotix_slate_msgsSetStringResponse> ResponseCodec =
            new RecordCodec<Ros1Interbotix_slate_msgsSetStringResponse>(Ros1Interbotix_slate_msgsSetStringResponse.Encode, Ros1Interbotix_slate_msgsSetStringResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Interbotix_slate_msgsSetStringRequest, Ros1Interbotix_slate_msgsSetStringResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Interbotix_slate_msgsSetStringResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Interbotix_slate_msgsSetStringRequest, Ros1Interbotix_slate_msgsSetStringResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Interbotix_slate_msgsSetStringRequest, Ros1Interbotix_slate_msgsSetStringResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Interbotix_slate_msgsSetStringRequest.MAX_WIRE_BYTES), callback);
    }
}
