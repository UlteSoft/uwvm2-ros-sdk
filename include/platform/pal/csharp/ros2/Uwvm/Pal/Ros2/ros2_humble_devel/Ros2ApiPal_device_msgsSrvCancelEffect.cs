using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros2.ros2_humble_devel
{
    /**
     * @brief Expose every typed role through the maintained public ROS binding.
     * @details Every alias is explicit. Public Node owns setup rollback;
     * callers own returned endpoints and must close them once. Codecs
     * preserve the complete original bounded schema. No authority is added.
     */
    public static class Ros2ApiPal_device_msgsSrvCancelEffect
    {
        public static readonly ICodec<Ros2Pal_device_msgsSrvCancelEffect_Request> RequestCodec =
            new RecordCodec<Ros2Pal_device_msgsSrvCancelEffect_Request>(
                Ros2Pal_device_msgsSrvCancelEffect_Request.Encode, Ros2Pal_device_msgsSrvCancelEffect_Request.Decode);
        public static readonly ICodec<Ros2Pal_device_msgsSrvCancelEffect_Response> ResponseCodec =
            new RecordCodec<Ros2Pal_device_msgsSrvCancelEffect_Response>(
                Ros2Pal_device_msgsSrvCancelEffect_Response.Encode, Ros2Pal_device_msgsSrvCancelEffect_Response.Decode);
        /** @param node Caller-owned Node. @param alias Explicit service-call grant. @return Caller-owned full typed
         * client. */
        public static ServiceClient<Ros2Pal_device_msgsSrvCancelEffect_Request,
                                    Ros2Pal_device_msgsSrvCancelEffect_Response>
        CreateClient(Node node, string alias) => node.CreateClient(
            RequestCodec, ResponseCodec, alias, Ros2Pal_device_msgsSrvCancelEffect_Response.MAX_WIRE_BYTES);
        /** @param node Caller-owned Node. @param advertiseAlias Explicit advertise grant. @param respondAlias Separate
         * response grant. @param callback Borrowed synchronous complete request/response callback. @return Caller-owned
         * server. */
        public static ServiceServer<Ros2Pal_device_msgsSrvCancelEffect_Request,
                                    Ros2Pal_device_msgsSrvCancelEffect_Response>
        CreateServer(
            Node node,
            string advertiseAlias,
            string respondAlias,
            Func<Ros2Pal_device_msgsSrvCancelEffect_Request, Ros2Pal_device_msgsSrvCancelEffect_Response> callback) =>
            node.CreateService(RequestCodec,
                               ResponseCodec,
                               advertiseAlias,
                               respondAlias,
                               checked(8 + Ros2Pal_device_msgsSrvCancelEffect_Request.MAX_WIRE_BYTES),
                               callback);
    }
}
