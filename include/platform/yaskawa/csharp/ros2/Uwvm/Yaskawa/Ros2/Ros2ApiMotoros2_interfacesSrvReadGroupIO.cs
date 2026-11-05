using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Yaskawa.Ros2
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros2ApiMotoros2_interfacesSrvReadGroupIO
    {
        public static readonly ICodec<Ros2Motoros2_interfacesSrvReadGroupIO_Request> RequestCodec =
            new RecordCodec<Ros2Motoros2_interfacesSrvReadGroupIO_Request>(Ros2Motoros2_interfacesSrvReadGroupIO_Request.Encode, Ros2Motoros2_interfacesSrvReadGroupIO_Request.Decode);
        public static readonly ICodec<Ros2Motoros2_interfacesSrvReadGroupIO_Response> ResponseCodec =
            new RecordCodec<Ros2Motoros2_interfacesSrvReadGroupIO_Response>(Ros2Motoros2_interfacesSrvReadGroupIO_Response.Encode, Ros2Motoros2_interfacesSrvReadGroupIO_Response.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros2Motoros2_interfacesSrvReadGroupIO_Request, Ros2Motoros2_interfacesSrvReadGroupIO_Response> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros2Motoros2_interfacesSrvReadGroupIO_Response.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros2Motoros2_interfacesSrvReadGroupIO_Request, Ros2Motoros2_interfacesSrvReadGroupIO_Response> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros2Motoros2_interfacesSrvReadGroupIO_Request, Ros2Motoros2_interfacesSrvReadGroupIO_Response> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros2Motoros2_interfacesSrvReadGroupIO_Request.MAX_WIRE_BYTES), callback);
    }
}
