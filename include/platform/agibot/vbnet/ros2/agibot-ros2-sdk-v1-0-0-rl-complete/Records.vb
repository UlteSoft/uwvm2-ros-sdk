''' @file Records.vb
''' @brief Complete VB.NET typed access to genuine CLR record codecs.
''' @details Requires this profile's C# assembly; failures remain real CLR exceptions.
Option Strict On
Namespace Uwvm.Agibot.Ros2SdkV100Rl
    Public NotInheritable Class Records
        Private Sub New()
        End Sub

        ''' @brief Construct all original defaults of builtin_interfaces/msg/Time.
        Public Shared Function NewRos2Builtin_interfacesMsgTime() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Builtin_interfacesMsgTime
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Builtin_interfacesMsgTime()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Builtin_interfacesMsgTime(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Builtin_interfacesMsgTime) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Builtin_interfacesMsgTimeCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Builtin_interfacesMsgTime(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Builtin_interfacesMsgTime
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Builtin_interfacesMsgTimeCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/RequestHeader.
        Public Shared Function NewRos2Aimdk_msgsMsgRequestHeader() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgRequestHeader
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgRequestHeader()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgRequestHeader(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgRequestHeader) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgRequestHeaderCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgRequestHeader(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgRequestHeader
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgRequestHeaderCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/CommonRequest.
        Public Shared Function NewRos2Aimdk_msgsMsgCommonRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgCommonRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgCommonRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgCommonRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgCommonRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgCommonRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgCommonRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgCommonRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgCommonRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/ResponseHeader.
        Public Shared Function NewRos2Aimdk_msgsMsgResponseHeader() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgResponseHeader
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgResponseHeader()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgResponseHeader(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgResponseHeader) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgResponseHeaderCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgResponseHeader(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgResponseHeader
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgResponseHeaderCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/CommonState.
        Public Shared Function NewRos2Aimdk_msgsMsgCommonState() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgCommonState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgCommonState()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgCommonState(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgCommonState) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgCommonStateCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgCommonState(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgCommonState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgCommonStateCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/CommonResponse.
        Public Shared Function NewRos2Aimdk_msgsMsgCommonResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgCommonResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgCommonResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgCommonResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgCommonResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgCommonResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgCommonResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgCommonResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgCommonResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/CommonTaskResponse.
        Public Shared Function NewRos2Aimdk_msgsMsgCommonTaskResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgCommonTaskResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgCommonTaskResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgCommonTaskResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgCommonTaskResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgCommonTaskResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgCommonTaskResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgCommonTaskResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgCommonTaskResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/DomainErrorState.
        Public Shared Function NewRos2Aimdk_msgsMsgDomainErrorState() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgDomainErrorState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgDomainErrorState()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgDomainErrorState(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgDomainErrorState) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgDomainErrorStateCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgDomainErrorState(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgDomainErrorState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgDomainErrorStateCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/JointCommand.
        Public Shared Function NewRos2Aimdk_msgsMsgJointCommand() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgJointCommand
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgJointCommand()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgJointCommand(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgJointCommand) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgJointCommandCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgJointCommand(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgJointCommand
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgJointCommandCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/MessageHeader.
        Public Shared Function NewRos2Aimdk_msgsMsgMessageHeader() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMessageHeader
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMessageHeader()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgMessageHeader(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMessageHeader) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgMessageHeaderCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgMessageHeader(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMessageHeader
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgMessageHeaderCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/JointCommandArray.
        Public Shared Function NewRos2Aimdk_msgsMsgJointCommandArray() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgJointCommandArray
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgJointCommandArray()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgJointCommandArray(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgJointCommandArray) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgJointCommandArrayCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgJointCommandArray(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgJointCommandArray
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgJointCommandArrayCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/JointState.
        Public Shared Function NewRos2Aimdk_msgsMsgJointState() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgJointState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgJointState()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgJointState(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgJointState) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgJointStateCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgJointState(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgJointState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgJointStateCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/JointStateArray.
        Public Shared Function NewRos2Aimdk_msgsMsgJointStateArray() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgJointStateArray
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgJointStateArray()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgJointStateArray(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgJointStateArray) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgJointStateArrayCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgJointStateArray(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgJointStateArray
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgJointStateArrayCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/ModuleChannelInfo.
        Public Shared Function NewRos2Aimdk_msgsMsgModuleChannelInfo() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgModuleChannelInfo
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgModuleChannelInfo()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgModuleChannelInfo(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgModuleChannelInfo) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgModuleChannelInfoCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgModuleChannelInfo(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgModuleChannelInfo
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgModuleChannelInfoCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/ModuleRpcInfo.
        Public Shared Function NewRos2Aimdk_msgsMsgModuleRpcInfo() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgModuleRpcInfo
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgModuleRpcInfo()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgModuleRpcInfo(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgModuleRpcInfo) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgModuleRpcInfoCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgModuleRpcInfo(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgModuleRpcInfo
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgModuleRpcInfoCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/ModuleResourceInfo.
        Public Shared Function NewRos2Aimdk_msgsMsgModuleResourceInfo() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgModuleResourceInfo
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgModuleResourceInfo()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgModuleResourceInfo(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgModuleResourceInfo) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgModuleResourceInfoCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgModuleResourceInfo(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgModuleResourceInfo
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgModuleResourceInfoCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/ThreadResourceInfo.
        Public Shared Function NewRos2Aimdk_msgsMsgThreadResourceInfo() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgThreadResourceInfo
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgThreadResourceInfo()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgThreadResourceInfo(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgThreadResourceInfo) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgThreadResourceInfoCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgThreadResourceInfo(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgThreadResourceInfo
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgThreadResourceInfoCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/ProcessResourceInfo.
        Public Shared Function NewRos2Aimdk_msgsMsgProcessResourceInfo() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgProcessResourceInfo
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgProcessResourceInfo()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgProcessResourceInfo(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgProcessResourceInfo) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgProcessResourceInfoCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgProcessResourceInfo(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgProcessResourceInfo
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgProcessResourceInfoCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/ProcessInfo.
        Public Shared Function NewRos2Aimdk_msgsMsgProcessInfo() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgProcessInfo
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgProcessInfo()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgProcessInfo(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgProcessInfo) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgProcessInfoCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgProcessInfo(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgProcessInfo
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgProcessInfoCodec().Decode(wire)
        End Function

    End Class
End Namespace
