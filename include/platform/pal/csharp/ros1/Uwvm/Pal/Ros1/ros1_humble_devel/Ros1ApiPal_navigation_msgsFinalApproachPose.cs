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
    public static class Ros1ApiPal_navigation_msgsFinalApproachPose
    {
        public static readonly ICodec<Ros1Pal_navigation_msgsFinalApproachPoseRequest> RequestCodec =
            new RecordCodec<Ros1Pal_navigation_msgsFinalApproachPoseRequest>(
                Ros1Pal_navigation_msgsFinalApproachPoseRequest.Encode,
                Ros1Pal_navigation_msgsFinalApproachPoseRequest.Decode);
        public static readonly ICodec<Ros1Pal_navigation_msgsFinalApproachPoseResponse> ResponseCodec =
            new RecordCodec<Ros1Pal_navigation_msgsFinalApproachPoseResponse>(
                Ros1Pal_navigation_msgsFinalApproachPoseResponse.Encode,
                Ros1Pal_navigation_msgsFinalApproachPoseResponse.Decode);
        /** @param node Caller-owned Node. @param alias Explicit service-call grant. @return Caller-owned full typed
         * client. */
        public static ServiceClient<Ros1Pal_navigation_msgsFinalApproachPoseRequest,
                                    Ros1Pal_navigation_msgsFinalApproachPoseResponse>
        CreateClient(Node node, string alias) => node.CreateClient(
            RequestCodec, ResponseCodec, alias, Ros1Pal_navigation_msgsFinalApproachPoseResponse.MAX_WIRE_BYTES);
        /** @param node Caller-owned Node. @param advertiseAlias Explicit advertise grant. @param respondAlias Separate
         * response grant. @param callback Borrowed synchronous complete request/response callback. @return Caller-owned
         * server. */
        public static ServiceServer<Ros1Pal_navigation_msgsFinalApproachPoseRequest,
                                    Ros1Pal_navigation_msgsFinalApproachPoseResponse>
        CreateServer(Node node,
                     string advertiseAlias,
                     string respondAlias,
                     Func<Ros1Pal_navigation_msgsFinalApproachPoseRequest,
                          Ros1Pal_navigation_msgsFinalApproachPoseResponse> callback) =>
            node.CreateService(RequestCodec,
                               ResponseCodec,
                               advertiseAlias,
                               respondAlias,
                               checked(8 + Ros1Pal_navigation_msgsFinalApproachPoseRequest.MAX_WIRE_BYTES),
                               callback);
    }
}
