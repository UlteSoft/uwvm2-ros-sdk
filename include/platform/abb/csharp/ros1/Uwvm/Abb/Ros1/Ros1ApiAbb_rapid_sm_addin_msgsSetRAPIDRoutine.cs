using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Abb.Ros1
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiAbb_rapid_sm_addin_msgsSetRAPIDRoutine
    {
        public static readonly ICodec<Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest> RequestCodec =
            new RecordCodec<Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest>(Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest.Encode, Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest.Decode);
        public static readonly ICodec<Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse> ResponseCodec =
            new RecordCodec<Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse>(Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse.Encode, Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest, Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest, Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest, Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest.MAX_WIRE_BYTES), callback);
    }
}
