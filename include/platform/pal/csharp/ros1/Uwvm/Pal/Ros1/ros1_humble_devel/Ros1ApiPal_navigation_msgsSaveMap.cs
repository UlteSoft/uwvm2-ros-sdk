using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_humble_devel
{
    /**
     * @brief Expose every typed role through the maintained public ROS binding.
     * @details Every alias is explicit. Public Node owns setup rollback;
     * callers own returned endpoints and must close them once. Codecs
     * preserve the complete original bounded schema. No authority is added.
     */
    public static class Ros1ApiPal_navigation_msgsSaveMap
    {
        public static readonly ICodec<Ros1Pal_navigation_msgsSaveMapRequest> RequestCodec =
            new RecordCodec<Ros1Pal_navigation_msgsSaveMapRequest>(Ros1Pal_navigation_msgsSaveMapRequest.Encode,
                                                                   Ros1Pal_navigation_msgsSaveMapRequest.Decode);
        public static readonly ICodec<Ros1Pal_navigation_msgsSaveMapResponse> ResponseCodec =
            new RecordCodec<Ros1Pal_navigation_msgsSaveMapResponse>(Ros1Pal_navigation_msgsSaveMapResponse.Encode,
                                                                    Ros1Pal_navigation_msgsSaveMapResponse.Decode);
        /** @param node Caller-owned Node. @param alias Explicit service-call grant. @return Caller-owned full typed
         * client. */
        public static ServiceClient<Ros1Pal_navigation_msgsSaveMapRequest, Ros1Pal_navigation_msgsSaveMapResponse>
        CreateClient(Node node, string alias) => node.CreateClient(
            RequestCodec, ResponseCodec, alias, Ros1Pal_navigation_msgsSaveMapResponse.MAX_WIRE_BYTES);
        /** @param node Caller-owned Node. @param advertiseAlias Explicit advertise grant. @param respondAlias Separate
         * response grant. @param callback Borrowed synchronous complete request/response callback. @return Caller-owned
         * server. */
        public static ServiceServer<Ros1Pal_navigation_msgsSaveMapRequest, Ros1Pal_navigation_msgsSaveMapResponse>
        CreateServer(Node node,
                     string advertiseAlias,
                     string respondAlias,
                     Func<Ros1Pal_navigation_msgsSaveMapRequest, Ros1Pal_navigation_msgsSaveMapResponse> callback) =>
            node.CreateService(RequestCodec,
                               ResponseCodec,
                               advertiseAlias,
                               respondAlias,
                               checked(8 + Ros1Pal_navigation_msgsSaveMapRequest.MAX_WIRE_BYTES),
                               callback);
    }
}
