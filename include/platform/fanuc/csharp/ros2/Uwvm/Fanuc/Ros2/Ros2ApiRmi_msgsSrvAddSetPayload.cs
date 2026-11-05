/**
 * @file Ros2ApiRmi_msgsSrvAddSetPayload.cs
 * @brief Represent the complete original FANUC ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Fanuc.Ros2
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros2ApiRmi_msgsSrvAddSetPayload
    {
        public static readonly ICodec<Ros2Rmi_msgsSrvAddSetPayload_Request> RequestCodec =
            new RecordCodec<Ros2Rmi_msgsSrvAddSetPayload_Request>(Ros2Rmi_msgsSrvAddSetPayload_Request.Encode, Ros2Rmi_msgsSrvAddSetPayload_Request.Decode);
        public static readonly ICodec<Ros2Rmi_msgsSrvAddSetPayload_Response> ResponseCodec =
            new RecordCodec<Ros2Rmi_msgsSrvAddSetPayload_Response>(Ros2Rmi_msgsSrvAddSetPayload_Response.Encode, Ros2Rmi_msgsSrvAddSetPayload_Response.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros2Rmi_msgsSrvAddSetPayload_Request, Ros2Rmi_msgsSrvAddSetPayload_Response> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros2Rmi_msgsSrvAddSetPayload_Response.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros2Rmi_msgsSrvAddSetPayload_Request, Ros2Rmi_msgsSrvAddSetPayload_Response> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros2Rmi_msgsSrvAddSetPayload_Request, Ros2Rmi_msgsSrvAddSetPayload_Response> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros2Rmi_msgsSrvAddSetPayload_Request.MAX_WIRE_BYTES), callback);
    }
}
