using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Abb.Ros2
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros2ApiAbb_rapid_sm_addin_msgsSrvSetSGCommand
    {
        public static readonly ICodec<Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request> RequestCodec =
            new RecordCodec<Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request>(Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.Encode, Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.Decode);
        public static readonly ICodec<Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response> ResponseCodec =
            new RecordCodec<Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response>(Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response.Encode, Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request, Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request, Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request, Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.MAX_WIRE_BYTES), callback);
    }
}
