using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Robotis.Ros1.noetic
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiStd_srvsSetBool
    {
        public static readonly ICodec<Ros1Std_srvsSetBoolRequest> RequestCodec =
            new RecordCodec<Ros1Std_srvsSetBoolRequest>(Ros1Std_srvsSetBoolRequest.Encode, Ros1Std_srvsSetBoolRequest.Decode);
        public static readonly ICodec<Ros1Std_srvsSetBoolResponse> ResponseCodec =
            new RecordCodec<Ros1Std_srvsSetBoolResponse>(Ros1Std_srvsSetBoolResponse.Encode, Ros1Std_srvsSetBoolResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Std_srvsSetBoolRequest, Ros1Std_srvsSetBoolResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Std_srvsSetBoolResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Std_srvsSetBoolRequest, Ros1Std_srvsSetBoolResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Std_srvsSetBoolRequest, Ros1Std_srvsSetBoolResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Std_srvsSetBoolRequest.MAX_WIRE_BYTES), callback);
    }
}
