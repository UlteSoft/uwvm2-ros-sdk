using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Trossen.Ros1.ros1_main
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiXarm_msgsSetInt16
    {
        public static readonly ICodec<Ros1Xarm_msgsSetInt16Request> RequestCodec =
            new RecordCodec<Ros1Xarm_msgsSetInt16Request>(Ros1Xarm_msgsSetInt16Request.Encode, Ros1Xarm_msgsSetInt16Request.Decode);
        public static readonly ICodec<Ros1Xarm_msgsSetInt16Response> ResponseCodec =
            new RecordCodec<Ros1Xarm_msgsSetInt16Response>(Ros1Xarm_msgsSetInt16Response.Encode, Ros1Xarm_msgsSetInt16Response.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Xarm_msgsSetInt16Request, Ros1Xarm_msgsSetInt16Response> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Xarm_msgsSetInt16Response.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Xarm_msgsSetInt16Request, Ros1Xarm_msgsSetInt16Response> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Xarm_msgsSetInt16Request, Ros1Xarm_msgsSetInt16Response> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Xarm_msgsSetInt16Request.MAX_WIRE_BYTES), callback);
    }
}
