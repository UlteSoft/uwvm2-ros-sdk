using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Trossen.Ros1.ros1_melodic
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiInterbotix_xs_msgsRobotInfo
    {
        public static readonly ICodec<Ros1Interbotix_xs_msgsRobotInfoRequest> RequestCodec =
            new RecordCodec<Ros1Interbotix_xs_msgsRobotInfoRequest>(Ros1Interbotix_xs_msgsRobotInfoRequest.Encode, Ros1Interbotix_xs_msgsRobotInfoRequest.Decode);
        public static readonly ICodec<Ros1Interbotix_xs_msgsRobotInfoResponse> ResponseCodec =
            new RecordCodec<Ros1Interbotix_xs_msgsRobotInfoResponse>(Ros1Interbotix_xs_msgsRobotInfoResponse.Encode, Ros1Interbotix_xs_msgsRobotInfoResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Interbotix_xs_msgsRobotInfoRequest, Ros1Interbotix_xs_msgsRobotInfoResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Interbotix_xs_msgsRobotInfoResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Interbotix_xs_msgsRobotInfoRequest, Ros1Interbotix_xs_msgsRobotInfoResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Interbotix_xs_msgsRobotInfoRequest, Ros1Interbotix_xs_msgsRobotInfoResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Interbotix_xs_msgsRobotInfoRequest.MAX_WIRE_BYTES), callback);
    }
}
