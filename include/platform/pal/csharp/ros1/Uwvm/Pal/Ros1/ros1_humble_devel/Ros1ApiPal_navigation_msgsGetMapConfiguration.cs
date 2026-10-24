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
    public static class Ros1ApiPal_navigation_msgsGetMapConfiguration
    {
        public static readonly ICodec<Ros1Pal_navigation_msgsGetMapConfigurationRequest> RequestCodec =
            new RecordCodec<Ros1Pal_navigation_msgsGetMapConfigurationRequest>(
                Ros1Pal_navigation_msgsGetMapConfigurationRequest.Encode,
                Ros1Pal_navigation_msgsGetMapConfigurationRequest.Decode);
        public static readonly ICodec<Ros1Pal_navigation_msgsGetMapConfigurationResponse> ResponseCodec =
            new RecordCodec<Ros1Pal_navigation_msgsGetMapConfigurationResponse>(
                Ros1Pal_navigation_msgsGetMapConfigurationResponse.Encode,
                Ros1Pal_navigation_msgsGetMapConfigurationResponse.Decode);
        /** @param node Caller-owned Node. @param alias Explicit service-call grant. @return Caller-owned full typed
         * client. */
        public static ServiceClient<Ros1Pal_navigation_msgsGetMapConfigurationRequest,
                                    Ros1Pal_navigation_msgsGetMapConfigurationResponse>
        CreateClient(Node node, string alias) => node.CreateClient(
            RequestCodec, ResponseCodec, alias, Ros1Pal_navigation_msgsGetMapConfigurationResponse.MAX_WIRE_BYTES);
        /** @param node Caller-owned Node. @param advertiseAlias Explicit advertise grant. @param respondAlias Separate
         * response grant. @param callback Borrowed synchronous complete request/response callback. @return Caller-owned
         * server. */
        public static ServiceServer<Ros1Pal_navigation_msgsGetMapConfigurationRequest,
                                    Ros1Pal_navigation_msgsGetMapConfigurationResponse>
        CreateServer(Node node,
                     string advertiseAlias,
                     string respondAlias,
                     Func<Ros1Pal_navigation_msgsGetMapConfigurationRequest,
                          Ros1Pal_navigation_msgsGetMapConfigurationResponse> callback) =>
            node.CreateService(RequestCodec,
                               ResponseCodec,
                               advertiseAlias,
                               respondAlias,
                               checked(8 + Ros1Pal_navigation_msgsGetMapConfigurationRequest.MAX_WIRE_BYTES),
                               callback);
    }
}
