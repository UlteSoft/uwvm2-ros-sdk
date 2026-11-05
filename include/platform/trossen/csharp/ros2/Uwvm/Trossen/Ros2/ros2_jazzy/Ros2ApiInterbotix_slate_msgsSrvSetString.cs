using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Trossen.Ros2.ros2_jazzy
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros2ApiInterbotix_slate_msgsSrvSetString
    {
        public static readonly ICodec<Ros2Interbotix_slate_msgsSrvSetString_Request> RequestCodec =
            new RecordCodec<Ros2Interbotix_slate_msgsSrvSetString_Request>(Ros2Interbotix_slate_msgsSrvSetString_Request.Encode, Ros2Interbotix_slate_msgsSrvSetString_Request.Decode);
        public static readonly ICodec<Ros2Interbotix_slate_msgsSrvSetString_Response> ResponseCodec =
            new RecordCodec<Ros2Interbotix_slate_msgsSrvSetString_Response>(Ros2Interbotix_slate_msgsSrvSetString_Response.Encode, Ros2Interbotix_slate_msgsSrvSetString_Response.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros2Interbotix_slate_msgsSrvSetString_Request, Ros2Interbotix_slate_msgsSrvSetString_Response> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros2Interbotix_slate_msgsSrvSetString_Response.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros2Interbotix_slate_msgsSrvSetString_Request, Ros2Interbotix_slate_msgsSrvSetString_Response> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros2Interbotix_slate_msgsSrvSetString_Request, Ros2Interbotix_slate_msgsSrvSetString_Response> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros2Interbotix_slate_msgsSrvSetString_Request.MAX_WIRE_BYTES), callback);
    }
}
