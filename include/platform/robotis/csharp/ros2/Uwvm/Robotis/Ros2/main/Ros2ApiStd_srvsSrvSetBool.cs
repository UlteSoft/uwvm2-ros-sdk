using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Robotis.Ros2.main
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros2ApiStd_srvsSrvSetBool
    {
        public static readonly ICodec<Ros2Std_srvsSrvSetBool_Request> RequestCodec =
            new RecordCodec<Ros2Std_srvsSrvSetBool_Request>(Ros2Std_srvsSrvSetBool_Request.Encode, Ros2Std_srvsSrvSetBool_Request.Decode);
        public static readonly ICodec<Ros2Std_srvsSrvSetBool_Response> ResponseCodec =
            new RecordCodec<Ros2Std_srvsSrvSetBool_Response>(Ros2Std_srvsSrvSetBool_Response.Encode, Ros2Std_srvsSrvSetBool_Response.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros2Std_srvsSrvSetBool_Request, Ros2Std_srvsSrvSetBool_Response> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros2Std_srvsSrvSetBool_Response.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros2Std_srvsSrvSetBool_Request, Ros2Std_srvsSrvSetBool_Response> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros2Std_srvsSrvSetBool_Request, Ros2Std_srvsSrvSetBool_Response> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros2Std_srvsSrvSetBool_Request.MAX_WIRE_BYTES), callback);
    }
}
