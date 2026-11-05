using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Abb.Ros1
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiAbb_robot_msgsSetIOSignal
    {
        public static readonly ICodec<Ros1Abb_robot_msgsSetIOSignalRequest> RequestCodec =
            new RecordCodec<Ros1Abb_robot_msgsSetIOSignalRequest>(Ros1Abb_robot_msgsSetIOSignalRequest.Encode, Ros1Abb_robot_msgsSetIOSignalRequest.Decode);
        public static readonly ICodec<Ros1Abb_robot_msgsSetIOSignalResponse> ResponseCodec =
            new RecordCodec<Ros1Abb_robot_msgsSetIOSignalResponse>(Ros1Abb_robot_msgsSetIOSignalResponse.Encode, Ros1Abb_robot_msgsSetIOSignalResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Abb_robot_msgsSetIOSignalRequest, Ros1Abb_robot_msgsSetIOSignalResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Abb_robot_msgsSetIOSignalResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Abb_robot_msgsSetIOSignalRequest, Ros1Abb_robot_msgsSetIOSignalResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Abb_robot_msgsSetIOSignalRequest, Ros1Abb_robot_msgsSetIOSignalResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Abb_robot_msgsSetIOSignalRequest.MAX_WIRE_BYTES), callback);
    }
}
