''' @file Records.vb
''' @brief Complete VB.NET typed access to genuine CLR record codecs.
''' @details Requires this profile's C# assembly; failures remain real CLR exceptions.
Option Strict On
Namespace Uwvm.Fourier.Ros2AuroraBridgeV1
    Public NotInheritable Class Records
        Private Sub New()
        End Sub

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/msg/GroupState.
        Public Shared Function NewRos2Uwvm_fourier_bridgeMsgGroupState() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeMsgGroupState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeMsgGroupState()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeMsgGroupState(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeMsgGroupState) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeMsgGroupStateCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeMsgGroupState(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeMsgGroupState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeMsgGroupStateCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/msg/GroupValues.
        Public Shared Function NewRos2Uwvm_fourier_bridgeMsgGroupValues() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeMsgGroupValues
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeMsgGroupValues()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeMsgGroupValues(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeMsgGroupValues) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeMsgGroupValuesCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeMsgGroupValues(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeMsgGroupValues
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeMsgGroupValuesCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/msg/MotionRecipe.
        Public Shared Function NewRos2Uwvm_fourier_bridgeMsgMotionRecipe() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeMsgMotionRecipe
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeMsgMotionRecipe()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeMsgMotionRecipe(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeMsgMotionRecipe) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeMsgMotionRecipeCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeMsgMotionRecipe(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeMsgMotionRecipe
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeMsgMotionRecipeCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/msg/Status.
        Public Shared Function NewRos2Uwvm_fourier_bridgeMsgStatus() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeMsgStatus
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeMsgStatus()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeMsgStatus(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeMsgStatus) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeMsgStatusCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeMsgStatus(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeMsgStatus
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeMsgStatusCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/msg/VelocityCommand.
        Public Shared Function NewRos2Uwvm_fourier_bridgeMsgVelocityCommand() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeMsgVelocityCommand
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeMsgVelocityCommand()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeMsgVelocityCommand(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeMsgVelocityCommand) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeMsgVelocityCommandCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeMsgVelocityCommand(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeMsgVelocityCommand
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeMsgVelocityCommandCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/ExecuteMove_Request.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvExecuteMove_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvExecuteMove_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvExecuteMove_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvExecuteMove_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvExecuteMove_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/ExecuteMove_Response.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvExecuteMove_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvExecuteMove_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvExecuteMove_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvExecuteMove_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvExecuteMove_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/GetBaseData_Request.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvGetBaseData_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvGetBaseData_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetBaseData_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvGetBaseData_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetBaseData_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/GetBaseData_Response.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvGetBaseData_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvGetBaseData_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetBaseData_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvGetBaseData_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetBaseData_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/GetCartesianState_Request.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvGetCartesianState_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvGetCartesianState_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetCartesianState_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvGetCartesianState_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetCartesianState_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/GetCartesianState_Response.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvGetCartesianState_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvGetCartesianState_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetCartesianState_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvGetCartesianState_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetCartesianState_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/GetContactData_Request.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvGetContactData_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetContactData_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetContactData_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvGetContactData_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetContactData_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetContactData_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvGetContactData_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetContactData_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetContactData_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/GetContactData_Response.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvGetContactData_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetContactData_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetContactData_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvGetContactData_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetContactData_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetContactData_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvGetContactData_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetContactData_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetContactData_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/GetFsmName_Request.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvGetFsmName_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvGetFsmName_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetFsmName_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvGetFsmName_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetFsmName_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/GetFsmName_Response.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvGetFsmName_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvGetFsmName_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetFsmName_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvGetFsmName_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetFsmName_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/GetFsmState_Request.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvGetFsmState_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvGetFsmState_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetFsmState_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvGetFsmState_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetFsmState_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/GetFsmState_Response.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvGetFsmState_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvGetFsmState_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetFsmState_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvGetFsmState_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetFsmState_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/GetGroupMotionState_Request.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/GetGroupMotionState_Response.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/GetGroupState_Request.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvGetGroupState_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvGetGroupState_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetGroupState_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvGetGroupState_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetGroupState_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/GetGroupState_Response.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvGetGroupState_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvGetGroupState_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetGroupState_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvGetGroupState_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetGroupState_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/GetSnapshot_Request.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvGetSnapshot_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvGetSnapshot_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetSnapshot_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvGetSnapshot_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetSnapshot_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/GetSnapshot_Response.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvGetSnapshot_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvGetSnapshot_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetSnapshot_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvGetSnapshot_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetSnapshot_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/GetStandPose_Request.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvGetStandPose_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvGetStandPose_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetStandPose_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvGetStandPose_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetStandPose_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/GetStandPose_Response.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvGetStandPose_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvGetStandPose_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetStandPose_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvGetStandPose_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetStandPose_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/GetUpperFsmName_Request.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/GetUpperFsmName_Response.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/GetUpperFsmState_Request.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/GetUpperFsmState_Response.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/GetVelocitySource_Request.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/GetVelocitySource_Response.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/GetVelocitySourceName_Request.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/GetVelocitySourceName_Response.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/SetFsmState_Request.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvSetFsmState_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvSetFsmState_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvSetFsmState_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvSetFsmState_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvSetFsmState_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/SetFsmState_Response.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvSetFsmState_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvSetFsmState_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvSetFsmState_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvSetFsmState_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvSetFsmState_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/SetGroupCommand_Request.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/SetGroupCommand_Response.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/SetMotorCfgPd_Request.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/SetMotorCfgPd_Response.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/SetStandPose_Request.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvSetStandPose_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvSetStandPose_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvSetStandPose_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvSetStandPose_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvSetStandPose_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/SetStandPose_Response.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvSetStandPose_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvSetStandPose_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvSetStandPose_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvSetStandPose_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvSetStandPose_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/SetUpperFsmState_Request.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/SetUpperFsmState_Response.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/SetVelocity_Request.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvSetVelocity_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvSetVelocity_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvSetVelocity_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvSetVelocity_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvSetVelocity_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/SetVelocity_Response.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvSetVelocity_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvSetVelocity_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvSetVelocity_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvSetVelocity_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvSetVelocity_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/SetVelocitySource_Request.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/SetVelocitySource_Response.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response.
        Public Shared Function NewRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_ResponseCodec().Decode(wire)
        End Function

    End Class
End Namespace
