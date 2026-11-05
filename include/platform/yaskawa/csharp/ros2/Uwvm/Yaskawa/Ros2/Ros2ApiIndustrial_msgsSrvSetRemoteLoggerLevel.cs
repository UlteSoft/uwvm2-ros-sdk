using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Yaskawa.Ros2
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros2ApiIndustrial_msgsSrvSetRemoteLoggerLevel
    {
        public static readonly ICodec<Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request> RequestCodec =
            new RecordCodec<Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request>(Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request.Encode, Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request.Decode);
        public static readonly ICodec<Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response> ResponseCodec =
            new RecordCodec<Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response>(Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response.Encode, Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request, Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request, Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request, Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request.MAX_WIRE_BYTES), callback);
    }
}
