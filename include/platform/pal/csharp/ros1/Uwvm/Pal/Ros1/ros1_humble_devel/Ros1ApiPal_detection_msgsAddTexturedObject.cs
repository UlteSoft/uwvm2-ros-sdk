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
    public static class Ros1ApiPal_detection_msgsAddTexturedObject
    {
        public static readonly ICodec<Ros1Pal_detection_msgsAddTexturedObjectRequest> RequestCodec =
            new RecordCodec<Ros1Pal_detection_msgsAddTexturedObjectRequest>(
                Ros1Pal_detection_msgsAddTexturedObjectRequest.Encode,
                Ros1Pal_detection_msgsAddTexturedObjectRequest.Decode);
        public static readonly ICodec<Ros1Pal_detection_msgsAddTexturedObjectResponse> ResponseCodec =
            new RecordCodec<Ros1Pal_detection_msgsAddTexturedObjectResponse>(
                Ros1Pal_detection_msgsAddTexturedObjectResponse.Encode,
                Ros1Pal_detection_msgsAddTexturedObjectResponse.Decode);
        /** @param node Caller-owned Node. @param alias Explicit service-call grant. @return Caller-owned full typed
         * client. */
        public static ServiceClient<Ros1Pal_detection_msgsAddTexturedObjectRequest,
                                    Ros1Pal_detection_msgsAddTexturedObjectResponse>
        CreateClient(Node node, string alias) => node.CreateClient(
            RequestCodec, ResponseCodec, alias, Ros1Pal_detection_msgsAddTexturedObjectResponse.MAX_WIRE_BYTES);
        /** @param node Caller-owned Node. @param advertiseAlias Explicit advertise grant. @param respondAlias Separate
         * response grant. @param callback Borrowed synchronous complete request/response callback. @return Caller-owned
         * server. */
        public static ServiceServer<Ros1Pal_detection_msgsAddTexturedObjectRequest,
                                    Ros1Pal_detection_msgsAddTexturedObjectResponse>
        CreateServer(Node node,
                     string advertiseAlias,
                     string respondAlias,
                     Func<Ros1Pal_detection_msgsAddTexturedObjectRequest,
                          Ros1Pal_detection_msgsAddTexturedObjectResponse> callback) =>
            node.CreateService(RequestCodec,
                               ResponseCodec,
                               advertiseAlias,
                               respondAlias,
                               checked(8 + Ros1Pal_detection_msgsAddTexturedObjectRequest.MAX_WIRE_BYTES),
                               callback);
    }
}
