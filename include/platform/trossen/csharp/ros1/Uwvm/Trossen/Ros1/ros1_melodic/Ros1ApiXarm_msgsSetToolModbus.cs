using System;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Trossen.Ros1.ros1_melodic
{
    /// <summary>Complete typed roles with explicit independent grants and caller-owned endpoints.</summary>
    public static class Ros1ApiXarm_msgsSetToolModbus
    {
        public static readonly ICodec<Ros1Xarm_msgsSetToolModbusRequest> RequestCodec =
            new RecordCodec<Ros1Xarm_msgsSetToolModbusRequest>(Ros1Xarm_msgsSetToolModbusRequest.Encode, Ros1Xarm_msgsSetToolModbusRequest.Decode);
        public static readonly ICodec<Ros1Xarm_msgsSetToolModbusResponse> ResponseCodec =
            new RecordCodec<Ros1Xarm_msgsSetToolModbusResponse>(Ros1Xarm_msgsSetToolModbusResponse.Encode, Ros1Xarm_msgsSetToolModbusResponse.Decode);
        /// <summary>Create a full typed client with an explicit service-call grant.</summary>
        public static ServiceClient<Ros1Xarm_msgsSetToolModbusRequest, Ros1Xarm_msgsSetToolModbusResponse> CreateClient(Node node, string alias) =>
            node.CreateClient(RequestCodec, ResponseCodec, alias, Ros1Xarm_msgsSetToolModbusResponse.MAX_WIRE_BYTES);
        /// <summary>Create a server with separate advertise and response grants and checked setup rollback.</summary>
        public static ServiceServer<Ros1Xarm_msgsSetToolModbusRequest, Ros1Xarm_msgsSetToolModbusResponse> CreateServer(Node node, string advertiseAlias, string respondAlias, Func<Ros1Xarm_msgsSetToolModbusRequest, Ros1Xarm_msgsSetToolModbusResponse> callback) =>
            node.CreateService(RequestCodec, ResponseCodec, advertiseAlias, respondAlias, checked(8 + Ros1Xarm_msgsSetToolModbusRequest.MAX_WIRE_BYTES), callback);
    }
}
