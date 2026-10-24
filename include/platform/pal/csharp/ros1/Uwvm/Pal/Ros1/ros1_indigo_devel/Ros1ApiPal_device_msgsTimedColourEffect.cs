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
    public static class Ros1ApiPal_device_msgsTimedColourEffect
    {
        public static readonly ICodec<Ros1Pal_device_msgsTimedColourEffectRequest> RequestCodec =
            new RecordCodec<Ros1Pal_device_msgsTimedColourEffectRequest>(
                Ros1Pal_device_msgsTimedColourEffectRequest.Encode, Ros1Pal_device_msgsTimedColourEffectRequest.Decode);
        public static readonly ICodec<Ros1Pal_device_msgsTimedColourEffectResponse> ResponseCodec =
            new RecordCodec<Ros1Pal_device_msgsTimedColourEffectResponse>(
                Ros1Pal_device_msgsTimedColourEffectResponse.Encode,
                Ros1Pal_device_msgsTimedColourEffectResponse.Decode);
        /** @param node Caller-owned Node. @param alias Explicit service-call grant. @return Caller-owned full typed
         * client. */
        public static ServiceClient<Ros1Pal_device_msgsTimedColourEffectRequest,
                                    Ros1Pal_device_msgsTimedColourEffectResponse>
        CreateClient(Node node, string alias) => node.CreateClient(
            RequestCodec, ResponseCodec, alias, Ros1Pal_device_msgsTimedColourEffectResponse.MAX_WIRE_BYTES);
        /** @param node Caller-owned Node. @param advertiseAlias Explicit advertise grant. @param respondAlias Separate
         * response grant. @param callback Borrowed synchronous complete request/response callback. @return Caller-owned
         * server. */
        public static ServiceServer<Ros1Pal_device_msgsTimedColourEffectRequest,
                                    Ros1Pal_device_msgsTimedColourEffectResponse>
        CreateServer(
            Node node,
            string advertiseAlias,
            string respondAlias,
            Func<Ros1Pal_device_msgsTimedColourEffectRequest, Ros1Pal_device_msgsTimedColourEffectResponse> callback) =>
            node.CreateService(RequestCodec,
                               ResponseCodec,
                               advertiseAlias,
                               respondAlias,
                               checked(8 + Ros1Pal_device_msgsTimedColourEffectRequest.MAX_WIRE_BYTES),
                               callback);
    }
}
