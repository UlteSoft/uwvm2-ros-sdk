using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Trossen.Ros2.ros2_humble
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros2ApiInterbotix_slate_msgsSrvSetLightState
    {
        public static readonly ICodec<Ros2Interbotix_slate_msgsSrvSetLightState_Request> RequestCodec =
            new RecordCodec<Ros2Interbotix_slate_msgsSrvSetLightState_Request>(Ros2Interbotix_slate_msgsSrvSetLightState_Request.Encode, Ros2Interbotix_slate_msgsSrvSetLightState_Request.Decode);
        public static readonly ICodec<Ros2Interbotix_slate_msgsSrvSetLightState_Response> ResponseCodec =
            new RecordCodec<Ros2Interbotix_slate_msgsSrvSetLightState_Response>(Ros2Interbotix_slate_msgsSrvSetLightState_Response.Encode, Ros2Interbotix_slate_msgsSrvSetLightState_Response.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros2Interbotix_slate_msgsSrvSetLightState_Request, Ros2Interbotix_slate_msgsSrvSetLightState_Response> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros2Interbotix_slate_msgsSrvSetLightState_Response.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros2Interbotix_slate_msgsSrvSetLightState_Request, Ros2Interbotix_slate_msgsSrvSetLightState_Response> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros2Interbotix_slate_msgsSrvSetLightState_Request, Ros2Interbotix_slate_msgsSrvSetLightState_Response> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros2Interbotix_slate_msgsSrvSetLightState_Request.MAX_WIRE_BYTES), callback);
    }
}
