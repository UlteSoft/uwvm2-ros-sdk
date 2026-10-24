using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_indigo_devel
{
    /**
     * @brief Expose every typed role through the maintained public ROS binding.
     * @details Every alias is explicit. Public Node owns setup rollback;
     * callers own returned endpoints and must close them once. Codecs
     * preserve the complete original bounded schema. No authority is added.
     */
    public static class Ros1ApiPal_vision_msgsFollowMeStop
    {
        public static readonly ICodec<Ros1Pal_vision_msgsFollowMeStopRequest> RequestCodec =
            new RecordCodec<Ros1Pal_vision_msgsFollowMeStopRequest>(Ros1Pal_vision_msgsFollowMeStopRequest.Encode,
                                                                    Ros1Pal_vision_msgsFollowMeStopRequest.Decode);
        public static readonly ICodec<Ros1Pal_vision_msgsFollowMeStopResponse> ResponseCodec =
            new RecordCodec<Ros1Pal_vision_msgsFollowMeStopResponse>(Ros1Pal_vision_msgsFollowMeStopResponse.Encode,
                                                                     Ros1Pal_vision_msgsFollowMeStopResponse.Decode);
        /** @param node Caller-owned Node. @param alias Explicit service-call grant. @return Caller-owned full typed
         * client. */
        public static ServiceClient<Ros1Pal_vision_msgsFollowMeStopRequest, Ros1Pal_vision_msgsFollowMeStopResponse>
        CreateClient(Node node, string alias) => node.CreateClient(
            RequestCodec, ResponseCodec, alias, Ros1Pal_vision_msgsFollowMeStopResponse.MAX_WIRE_BYTES);
        /** @param node Caller-owned Node. @param advertiseAlias Explicit advertise grant. @param respondAlias Separate
         * response grant. @param callback Borrowed synchronous complete request/response callback. @return Caller-owned
         * server. */
        public static ServiceServer<Ros1Pal_vision_msgsFollowMeStopRequest, Ros1Pal_vision_msgsFollowMeStopResponse>
        CreateServer(Node node,
                     string advertiseAlias,
                     string respondAlias,
                     Func<Ros1Pal_vision_msgsFollowMeStopRequest, Ros1Pal_vision_msgsFollowMeStopResponse> callback) =>
            node.CreateService(RequestCodec,
                               ResponseCodec,
                               advertiseAlias,
                               respondAlias,
                               checked(8 + Ros1Pal_vision_msgsFollowMeStopRequest.MAX_WIRE_BYTES),
                               callback);
    }
}
