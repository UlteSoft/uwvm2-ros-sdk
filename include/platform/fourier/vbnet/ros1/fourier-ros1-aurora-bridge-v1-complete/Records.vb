''' @file Records.vb
''' @brief Complete VB.NET typed access to genuine CLR record codecs.
''' @details Requires this profile's C# assembly; failures remain real CLR exceptions.
Option Strict On
Namespace Uwvm.Fourier.Ros1AuroraBridgeV1
    Public NotInheritable Class Records
        Private Sub New()
        End Sub

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/MotionRecipe.
        Public Shared Function NewRos1Uwvm_fourier_bridgeMotionRecipe() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeMotionRecipe
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeMotionRecipe()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeMotionRecipe(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeMotionRecipe) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeMotionRecipeCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeMotionRecipe(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeMotionRecipe
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeMotionRecipeCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/ExecuteMoveRequest.
        Public Shared Function NewRos1Uwvm_fourier_bridgeExecuteMoveRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeExecuteMoveRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeExecuteMoveRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeExecuteMoveRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeExecuteMoveRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeExecuteMoveRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeExecuteMoveRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeExecuteMoveRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeExecuteMoveRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/ExecuteMoveResponse.
        Public Shared Function NewRos1Uwvm_fourier_bridgeExecuteMoveResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeExecuteMoveResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeExecuteMoveResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeExecuteMoveResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeExecuteMoveResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeExecuteMoveResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeExecuteMoveResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeExecuteMoveResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeExecuteMoveResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/GetBaseDataRequest.
        Public Shared Function NewRos1Uwvm_fourier_bridgeGetBaseDataRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetBaseDataRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetBaseDataRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeGetBaseDataRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetBaseDataRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetBaseDataRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeGetBaseDataRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetBaseDataRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetBaseDataRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/GetBaseDataResponse.
        Public Shared Function NewRos1Uwvm_fourier_bridgeGetBaseDataResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetBaseDataResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetBaseDataResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeGetBaseDataResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetBaseDataResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetBaseDataResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeGetBaseDataResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetBaseDataResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetBaseDataResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/GetCartesianStateRequest.
        Public Shared Function NewRos1Uwvm_fourier_bridgeGetCartesianStateRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetCartesianStateRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetCartesianStateRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeGetCartesianStateRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetCartesianStateRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetCartesianStateRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeGetCartesianStateRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetCartesianStateRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetCartesianStateRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/GetCartesianStateResponse.
        Public Shared Function NewRos1Uwvm_fourier_bridgeGetCartesianStateResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetCartesianStateResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetCartesianStateResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeGetCartesianStateResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetCartesianStateResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetCartesianStateResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeGetCartesianStateResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetCartesianStateResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetCartesianStateResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/GetContactDataRequest.
        Public Shared Function NewRos1Uwvm_fourier_bridgeGetContactDataRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetContactDataRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetContactDataRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeGetContactDataRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetContactDataRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetContactDataRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeGetContactDataRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetContactDataRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetContactDataRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/GetContactDataResponse.
        Public Shared Function NewRos1Uwvm_fourier_bridgeGetContactDataResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetContactDataResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetContactDataResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeGetContactDataResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetContactDataResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetContactDataResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeGetContactDataResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetContactDataResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetContactDataResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/GetFsmNameRequest.
        Public Shared Function NewRos1Uwvm_fourier_bridgeGetFsmNameRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetFsmNameRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetFsmNameRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeGetFsmNameRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetFsmNameRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetFsmNameRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeGetFsmNameRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetFsmNameRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetFsmNameRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/GetFsmNameResponse.
        Public Shared Function NewRos1Uwvm_fourier_bridgeGetFsmNameResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetFsmNameResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetFsmNameResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeGetFsmNameResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetFsmNameResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetFsmNameResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeGetFsmNameResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetFsmNameResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetFsmNameResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/GetFsmStateRequest.
        Public Shared Function NewRos1Uwvm_fourier_bridgeGetFsmStateRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetFsmStateRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetFsmStateRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeGetFsmStateRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetFsmStateRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetFsmStateRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeGetFsmStateRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetFsmStateRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetFsmStateRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/GetFsmStateResponse.
        Public Shared Function NewRos1Uwvm_fourier_bridgeGetFsmStateResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetFsmStateResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetFsmStateResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeGetFsmStateResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetFsmStateResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetFsmStateResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeGetFsmStateResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetFsmStateResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetFsmStateResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/GetGroupMotionStateRequest.
        Public Shared Function NewRos1Uwvm_fourier_bridgeGetGroupMotionStateRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeGetGroupMotionStateRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeGetGroupMotionStateRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/GetGroupMotionStateResponse.
        Public Shared Function NewRos1Uwvm_fourier_bridgeGetGroupMotionStateResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeGetGroupMotionStateResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeGetGroupMotionStateResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/GetGroupMotorCfgRequest.
        Public Shared Function NewRos1Uwvm_fourier_bridgeGetGroupMotorCfgRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeGetGroupMotorCfgRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeGetGroupMotorCfgRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/GetGroupMotorCfgResponse.
        Public Shared Function NewRos1Uwvm_fourier_bridgeGetGroupMotorCfgResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeGetGroupMotorCfgResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeGetGroupMotorCfgResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/GetGroupStateRequest.
        Public Shared Function NewRos1Uwvm_fourier_bridgeGetGroupStateRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetGroupStateRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetGroupStateRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeGetGroupStateRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetGroupStateRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetGroupStateRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeGetGroupStateRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetGroupStateRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetGroupStateRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/GetGroupStateResponse.
        Public Shared Function NewRos1Uwvm_fourier_bridgeGetGroupStateResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetGroupStateResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetGroupStateResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeGetGroupStateResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetGroupStateResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetGroupStateResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeGetGroupStateResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetGroupStateResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetGroupStateResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/GetSnapshotRequest.
        Public Shared Function NewRos1Uwvm_fourier_bridgeGetSnapshotRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetSnapshotRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetSnapshotRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeGetSnapshotRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetSnapshotRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetSnapshotRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeGetSnapshotRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetSnapshotRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetSnapshotRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/GroupState.
        Public Shared Function NewRos1Uwvm_fourier_bridgeGroupState() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGroupState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGroupState()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeGroupState(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGroupState) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGroupStateCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeGroupState(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGroupState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGroupStateCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/Status.
        Public Shared Function NewRos1Uwvm_fourier_bridgeStatus() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeStatus
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeStatus()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeStatus(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeStatus) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeStatusCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeStatus(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeStatus
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeStatusCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/GetSnapshotResponse.
        Public Shared Function NewRos1Uwvm_fourier_bridgeGetSnapshotResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetSnapshotResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetSnapshotResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeGetSnapshotResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetSnapshotResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetSnapshotResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeGetSnapshotResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetSnapshotResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetSnapshotResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/GetStandPoseRequest.
        Public Shared Function NewRos1Uwvm_fourier_bridgeGetStandPoseRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetStandPoseRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetStandPoseRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeGetStandPoseRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetStandPoseRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetStandPoseRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeGetStandPoseRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetStandPoseRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetStandPoseRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/GetStandPoseResponse.
        Public Shared Function NewRos1Uwvm_fourier_bridgeGetStandPoseResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetStandPoseResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetStandPoseResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeGetStandPoseResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetStandPoseResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetStandPoseResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeGetStandPoseResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetStandPoseResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetStandPoseResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/GetUpperFsmNameRequest.
        Public Shared Function NewRos1Uwvm_fourier_bridgeGetUpperFsmNameRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeGetUpperFsmNameRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeGetUpperFsmNameRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/GetUpperFsmNameResponse.
        Public Shared Function NewRos1Uwvm_fourier_bridgeGetUpperFsmNameResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeGetUpperFsmNameResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeGetUpperFsmNameResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/GetUpperFsmStateRequest.
        Public Shared Function NewRos1Uwvm_fourier_bridgeGetUpperFsmStateRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeGetUpperFsmStateRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeGetUpperFsmStateRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/GetUpperFsmStateResponse.
        Public Shared Function NewRos1Uwvm_fourier_bridgeGetUpperFsmStateResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeGetUpperFsmStateResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeGetUpperFsmStateResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/GetVelocitySourceRequest.
        Public Shared Function NewRos1Uwvm_fourier_bridgeGetVelocitySourceRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeGetVelocitySourceRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetVelocitySourceRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeGetVelocitySourceRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetVelocitySourceRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/GetVelocitySourceResponse.
        Public Shared Function NewRos1Uwvm_fourier_bridgeGetVelocitySourceResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeGetVelocitySourceResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetVelocitySourceResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeGetVelocitySourceResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetVelocitySourceResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/GetVelocitySourceNameRequest.
        Public Shared Function NewRos1Uwvm_fourier_bridgeGetVelocitySourceNameRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeGetVelocitySourceNameRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeGetVelocitySourceNameRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/GetVelocitySourceNameResponse.
        Public Shared Function NewRos1Uwvm_fourier_bridgeGetVelocitySourceNameResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeGetVelocitySourceNameResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeGetVelocitySourceNameResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/GroupValues.
        Public Shared Function NewRos1Uwvm_fourier_bridgeGroupValues() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGroupValues
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGroupValues()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeGroupValues(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGroupValues) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGroupValuesCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeGroupValues(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeGroupValues
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeGroupValuesCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/SetFsmStateRequest.
        Public Shared Function NewRos1Uwvm_fourier_bridgeSetFsmStateRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetFsmStateRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetFsmStateRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeSetFsmStateRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetFsmStateRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeSetFsmStateRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeSetFsmStateRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetFsmStateRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeSetFsmStateRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/SetFsmStateResponse.
        Public Shared Function NewRos1Uwvm_fourier_bridgeSetFsmStateResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetFsmStateResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetFsmStateResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeSetFsmStateResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetFsmStateResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeSetFsmStateResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeSetFsmStateResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetFsmStateResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeSetFsmStateResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/SetGroupCommandRequest.
        Public Shared Function NewRos1Uwvm_fourier_bridgeSetGroupCommandRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetGroupCommandRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetGroupCommandRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeSetGroupCommandRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetGroupCommandRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeSetGroupCommandRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeSetGroupCommandRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetGroupCommandRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeSetGroupCommandRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/SetGroupCommandResponse.
        Public Shared Function NewRos1Uwvm_fourier_bridgeSetGroupCommandResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetGroupCommandResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetGroupCommandResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeSetGroupCommandResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetGroupCommandResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeSetGroupCommandResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeSetGroupCommandResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetGroupCommandResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeSetGroupCommandResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/SetMotorCfgPdRequest.
        Public Shared Function NewRos1Uwvm_fourier_bridgeSetMotorCfgPdRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeSetMotorCfgPdRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeSetMotorCfgPdRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/SetMotorCfgPdResponse.
        Public Shared Function NewRos1Uwvm_fourier_bridgeSetMotorCfgPdResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeSetMotorCfgPdResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeSetMotorCfgPdResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/SetStandPoseRequest.
        Public Shared Function NewRos1Uwvm_fourier_bridgeSetStandPoseRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetStandPoseRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetStandPoseRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeSetStandPoseRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetStandPoseRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeSetStandPoseRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeSetStandPoseRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetStandPoseRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeSetStandPoseRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/SetStandPoseResponse.
        Public Shared Function NewRos1Uwvm_fourier_bridgeSetStandPoseResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetStandPoseResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetStandPoseResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeSetStandPoseResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetStandPoseResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeSetStandPoseResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeSetStandPoseResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetStandPoseResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeSetStandPoseResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/SetUpperFsmStateRequest.
        Public Shared Function NewRos1Uwvm_fourier_bridgeSetUpperFsmStateRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeSetUpperFsmStateRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeSetUpperFsmStateRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/SetUpperFsmStateResponse.
        Public Shared Function NewRos1Uwvm_fourier_bridgeSetUpperFsmStateResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeSetUpperFsmStateResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeSetUpperFsmStateResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/SetVelocityRequest.
        Public Shared Function NewRos1Uwvm_fourier_bridgeSetVelocityRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetVelocityRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetVelocityRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeSetVelocityRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetVelocityRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeSetVelocityRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeSetVelocityRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetVelocityRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeSetVelocityRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/SetVelocityResponse.
        Public Shared Function NewRos1Uwvm_fourier_bridgeSetVelocityResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetVelocityResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetVelocityResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeSetVelocityResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetVelocityResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeSetVelocityResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeSetVelocityResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetVelocityResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeSetVelocityResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/SetVelocitySourceRequest.
        Public Shared Function NewRos1Uwvm_fourier_bridgeSetVelocitySourceRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeSetVelocitySourceRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeSetVelocitySourceRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeSetVelocitySourceRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeSetVelocitySourceRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/SetVelocitySourceResponse.
        Public Shared Function NewRos1Uwvm_fourier_bridgeSetVelocitySourceResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeSetVelocitySourceResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeSetVelocitySourceResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeSetVelocitySourceResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeSetVelocitySourceResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/VelocityCommand.
        Public Shared Function NewRos1Uwvm_fourier_bridgeVelocityCommand() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeVelocityCommand
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeVelocityCommand()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeVelocityCommand(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeVelocityCommand) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeVelocityCommandCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeVelocityCommand(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeVelocityCommand
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeVelocityCommandCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest.
        Public Shared Function NewRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse.
        Public Shared Function NewRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponseCodec().Decode(wire)
        End Function

    End Class
End Namespace
