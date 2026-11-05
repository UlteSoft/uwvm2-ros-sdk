using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Abb.Ros1
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiAbb_robot_msgsSetSpeedRatio
    {
        public static readonly ICodec<Ros1Abb_robot_msgsSetSpeedRatioRequest> RequestCodec =
            new RecordCodec<Ros1Abb_robot_msgsSetSpeedRatioRequest>(Ros1Abb_robot_msgsSetSpeedRatioRequest.Encode, Ros1Abb_robot_msgsSetSpeedRatioRequest.Decode);
        public static readonly ICodec<Ros1Abb_robot_msgsSetSpeedRatioResponse> ResponseCodec =
            new RecordCodec<Ros1Abb_robot_msgsSetSpeedRatioResponse>(Ros1Abb_robot_msgsSetSpeedRatioResponse.Encode, Ros1Abb_robot_msgsSetSpeedRatioResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Abb_robot_msgsSetSpeedRatioRequest, Ros1Abb_robot_msgsSetSpeedRatioResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Abb_robot_msgsSetSpeedRatioResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Abb_robot_msgsSetSpeedRatioRequest, Ros1Abb_robot_msgsSetSpeedRatioResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Abb_robot_msgsSetSpeedRatioRequest, Ros1Abb_robot_msgsSetSpeedRatioResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Abb_robot_msgsSetSpeedRatioRequest.MAX_WIRE_BYTES), callback);
    }
}
