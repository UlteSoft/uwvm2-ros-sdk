''' @file Records.vb
''' @brief Complete VB.NET typed access to genuine CLR record codecs.
''' @details Requires this profile's C# assembly; failures remain real CLR exceptions.
Option Strict On
Namespace Uwvm.Agibot.Ros2SdkV090Main
    Public NotInheritable Class Records
        Private Sub New()
        End Sub

        ''' @brief Construct all original defaults of aimdk_msgs/msg/AgentPropertyIdType.
        Public Shared Function NewRos2Aimdk_msgsMsgAgentPropertyIdType() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgAgentPropertyIdType
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgAgentPropertyIdType()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgAgentPropertyIdType(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgAgentPropertyIdType) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgAgentPropertyIdTypeCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgAgentPropertyIdType(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgAgentPropertyIdType
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgAgentPropertyIdTypeCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/AgentPropertiesValue.
        Public Shared Function NewRos2Aimdk_msgsMsgAgentPropertiesValue() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgAgentPropertiesValue
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgAgentPropertiesValue()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgAgentPropertiesValue(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgAgentPropertiesValue) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgAgentPropertiesValueCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgAgentPropertiesValue(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgAgentPropertiesValue
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgAgentPropertiesValueCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/AgentProperties.
        Public Shared Function NewRos2Aimdk_msgsMsgAgentProperties() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgAgentProperties
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgAgentProperties()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgAgentProperties(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgAgentProperties) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgAgentPropertiesCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgAgentProperties(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgAgentProperties
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgAgentPropertiesCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/AudioVadStateType.
        Public Shared Function NewRos2Aimdk_msgsMsgAudioVadStateType() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgAudioVadStateType
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgAudioVadStateType()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgAudioVadStateType(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgAudioVadStateType) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgAudioVadStateTypeCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgAudioVadStateType(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgAudioVadStateType
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgAudioVadStateTypeCodec().Decode(wire)
        End Function

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

        ''' @brief Construct all original defaults of aimdk_msgs/msg/FaceEmojiStatus.
        Public Shared Function NewRos2Aimdk_msgsMsgFaceEmojiStatus() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgFaceEmojiStatus
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgFaceEmojiStatus()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgFaceEmojiStatus(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgFaceEmojiStatus) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgFaceEmojiStatusCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgFaceEmojiStatus(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgFaceEmojiStatus
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgFaceEmojiStatusCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/HandCommand.
        Public Shared Function NewRos2Aimdk_msgsMsgHandCommand() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgHandCommand
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgHandCommand()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgHandCommand(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgHandCommand) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgHandCommandCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgHandCommand(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgHandCommand
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgHandCommandCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/HandType.
        Public Shared Function NewRos2Aimdk_msgsMsgHandType() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgHandType
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgHandType()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgHandType(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgHandType) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgHandTypeCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgHandType(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgHandType
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgHandTypeCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/HandCommandArray.
        Public Shared Function NewRos2Aimdk_msgsMsgHandCommandArray() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgHandCommandArray
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgHandCommandArray()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgHandCommandArray(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgHandCommandArray) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgHandCommandArrayCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgHandCommandArray(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgHandCommandArray
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgHandCommandArrayCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/HandState.
        Public Shared Function NewRos2Aimdk_msgsMsgHandState() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgHandState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgHandState()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgHandState(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgHandState) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgHandStateCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgHandState(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgHandState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgHandStateCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/HandStateArray.
        Public Shared Function NewRos2Aimdk_msgsMsgHandStateArray() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgHandStateArray
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgHandStateArray()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgHandStateArray(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgHandStateArray) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgHandStateArrayCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgHandStateArray(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgHandStateArray
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgHandStateArrayCodec().Decode(wire)
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

        ''' @brief Construct all original defaults of aimdk_msgs/msg/McAction.
        Public Shared Function NewRos2Aimdk_msgsMsgMcAction() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMcAction
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMcAction()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgMcAction(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMcAction) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgMcActionCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgMcAction(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMcAction
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgMcActionCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/McActionCommand.
        Public Shared Function NewRos2Aimdk_msgsMsgMcActionCommand() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMcActionCommand
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMcActionCommand()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgMcActionCommand(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMcActionCommand) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgMcActionCommandCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgMcActionCommand(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMcActionCommand
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgMcActionCommandCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/McActionStatus.
        Public Shared Function NewRos2Aimdk_msgsMsgMcActionStatus() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMcActionStatus
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMcActionStatus()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgMcActionStatus(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMcActionStatus) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgMcActionStatusCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgMcActionStatus(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMcActionStatus
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgMcActionStatusCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/McActionInfo.
        Public Shared Function NewRos2Aimdk_msgsMsgMcActionInfo() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMcActionInfo
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMcActionInfo()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgMcActionInfo(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMcActionInfo) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgMcActionInfoCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgMcActionInfo(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMcActionInfo
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgMcActionInfoCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/McControlArea.
        Public Shared Function NewRos2Aimdk_msgsMsgMcControlArea() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMcControlArea
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMcControlArea()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgMcControlArea(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMcControlArea) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgMcControlAreaCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgMcControlArea(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMcControlArea
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgMcControlAreaCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/McInputAction.
        Public Shared Function NewRos2Aimdk_msgsMsgMcInputAction() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMcInputAction
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMcInputAction()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgMcInputAction(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMcInputAction) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgMcInputActionCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgMcInputAction(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMcInputAction
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgMcInputActionCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/McInputSource.
        Public Shared Function NewRos2Aimdk_msgsMsgMcInputSource() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMcInputSource
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMcInputSource()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgMcInputSource(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMcInputSource) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgMcInputSourceCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgMcInputSource(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMcInputSource
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgMcInputSourceCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/McLocomotionVelocity.
        Public Shared Function NewRos2Aimdk_msgsMsgMcLocomotionVelocity() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMcLocomotionVelocity
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMcLocomotionVelocity()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgMcLocomotionVelocity(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMcLocomotionVelocity) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgMcLocomotionVelocityCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgMcLocomotionVelocity(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMcLocomotionVelocity
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgMcLocomotionVelocityCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/McPresetMotion.
        Public Shared Function NewRos2Aimdk_msgsMsgMcPresetMotion() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMcPresetMotion
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMcPresetMotion()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgMcPresetMotion(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMcPresetMotion) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgMcPresetMotionCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgMcPresetMotion(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgMcPresetMotion
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgMcPresetMotionCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/TtsPriorityLevel.
        Public Shared Function NewRos2Aimdk_msgsMsgTtsPriorityLevel() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgTtsPriorityLevel
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgTtsPriorityLevel()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgTtsPriorityLevel(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgTtsPriorityLevel) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgTtsPriorityLevelCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgTtsPriorityLevel(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgTtsPriorityLevel
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgTtsPriorityLevelCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/PlayMediaFileRequest.
        Public Shared Function NewRos2Aimdk_msgsMsgPlayMediaFileRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgPlayMediaFileRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgPlayMediaFileRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgPlayMediaFileRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgPlayMediaFileRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgPlayMediaFileRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgPlayMediaFileRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgPlayMediaFileRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgPlayMediaFileRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/PlayTtsRequest.
        Public Shared Function NewRos2Aimdk_msgsMsgPlayTtsRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgPlayTtsRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgPlayTtsRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgPlayTtsRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgPlayTtsRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgPlayTtsRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgPlayTtsRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgPlayTtsRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgPlayTtsRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/PlayTtsResponse.
        Public Shared Function NewRos2Aimdk_msgsMsgPlayTtsResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgPlayTtsResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgPlayTtsResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgPlayTtsResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgPlayTtsResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgPlayTtsResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgPlayTtsResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgPlayTtsResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgPlayTtsResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/PmuState.
        Public Shared Function NewRos2Aimdk_msgsMsgPmuState() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgPmuState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgPmuState()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgPmuState(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgPmuState) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgPmuStateCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgPmuState(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgPmuState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgPmuStateCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/ProcessedAudioOutput.
        Public Shared Function NewRos2Aimdk_msgsMsgProcessedAudioOutput() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgProcessedAudioOutput
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgProcessedAudioOutput()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgProcessedAudioOutput(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgProcessedAudioOutput) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgProcessedAudioOutputCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgProcessedAudioOutput(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgProcessedAudioOutput
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgProcessedAudioOutputCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/TouchState.
        Public Shared Function NewRos2Aimdk_msgsMsgTouchState() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgTouchState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgTouchState()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgTouchState(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgTouchState) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgTouchStateCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgTouchState(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgTouchState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgTouchStateCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/GetAllJointState_Request.
        Public Shared Function NewRos2Aimdk_msgsSrvGetAllJointState_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetAllJointState_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetAllJointState_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvGetAllJointState_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetAllJointState_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetAllJointState_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvGetAllJointState_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetAllJointState_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetAllJointState_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/GetAllJointState_Response.
        Public Shared Function NewRos2Aimdk_msgsSrvGetAllJointState_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetAllJointState_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetAllJointState_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvGetAllJointState_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetAllJointState_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetAllJointState_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvGetAllJointState_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetAllJointState_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetAllJointState_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/GetCurrentInputSource_Request.
        Public Shared Function NewRos2Aimdk_msgsSrvGetCurrentInputSource_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetCurrentInputSource_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetCurrentInputSource_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvGetCurrentInputSource_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetCurrentInputSource_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvGetCurrentInputSource_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetCurrentInputSource_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/GetCurrentInputSource_Response.
        Public Shared Function NewRos2Aimdk_msgsSrvGetCurrentInputSource_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetCurrentInputSource_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetCurrentInputSource_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvGetCurrentInputSource_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetCurrentInputSource_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvGetCurrentInputSource_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetCurrentInputSource_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/GetHandType_Request.
        Public Shared Function NewRos2Aimdk_msgsSrvGetHandType_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetHandType_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetHandType_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvGetHandType_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetHandType_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetHandType_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvGetHandType_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetHandType_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetHandType_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/GetHandType_Response.
        Public Shared Function NewRos2Aimdk_msgsSrvGetHandType_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetHandType_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetHandType_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvGetHandType_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetHandType_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetHandType_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvGetHandType_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetHandType_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetHandType_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/GetMcAction_Request.
        Public Shared Function NewRos2Aimdk_msgsSrvGetMcAction_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetMcAction_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetMcAction_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvGetMcAction_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetMcAction_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetMcAction_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvGetMcAction_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetMcAction_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetMcAction_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/GetMcAction_Response.
        Public Shared Function NewRos2Aimdk_msgsSrvGetMcAction_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetMcAction_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetMcAction_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvGetMcAction_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetMcAction_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetMcAction_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvGetMcAction_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetMcAction_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetMcAction_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/GetMute_Request.
        Public Shared Function NewRos2Aimdk_msgsSrvGetMute_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetMute_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetMute_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvGetMute_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetMute_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetMute_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvGetMute_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetMute_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetMute_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/GetMute_Response.
        Public Shared Function NewRos2Aimdk_msgsSrvGetMute_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetMute_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetMute_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvGetMute_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetMute_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetMute_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvGetMute_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetMute_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetMute_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/GetVolume_Request.
        Public Shared Function NewRos2Aimdk_msgsSrvGetVolume_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetVolume_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetVolume_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvGetVolume_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetVolume_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetVolume_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvGetVolume_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetVolume_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetVolume_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/GetVolume_Response.
        Public Shared Function NewRos2Aimdk_msgsSrvGetVolume_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetVolume_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetVolume_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvGetVolume_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetVolume_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetVolume_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvGetVolume_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetVolume_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetVolume_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/LedStripCommand_Request.
        Public Shared Function NewRos2Aimdk_msgsSrvLedStripCommand_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvLedStripCommand_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvLedStripCommand_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvLedStripCommand_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvLedStripCommand_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvLedStripCommand_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvLedStripCommand_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvLedStripCommand_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvLedStripCommand_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/LedStripCommand_Response.
        Public Shared Function NewRos2Aimdk_msgsSrvLedStripCommand_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvLedStripCommand_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvLedStripCommand_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvLedStripCommand_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvLedStripCommand_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvLedStripCommand_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvLedStripCommand_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvLedStripCommand_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvLedStripCommand_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/PlayEmoji_Request.
        Public Shared Function NewRos2Aimdk_msgsSrvPlayEmoji_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayEmoji_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayEmoji_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvPlayEmoji_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayEmoji_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvPlayEmoji_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvPlayEmoji_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayEmoji_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvPlayEmoji_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/PlayEmoji_Response.
        Public Shared Function NewRos2Aimdk_msgsSrvPlayEmoji_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayEmoji_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayEmoji_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvPlayEmoji_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayEmoji_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvPlayEmoji_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvPlayEmoji_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayEmoji_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvPlayEmoji_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/PlayMediaFile_Request.
        Public Shared Function NewRos2Aimdk_msgsSrvPlayMediaFile_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayMediaFile_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayMediaFile_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvPlayMediaFile_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayMediaFile_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvPlayMediaFile_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvPlayMediaFile_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayMediaFile_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvPlayMediaFile_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/PlayMediaFile_Response.
        Public Shared Function NewRos2Aimdk_msgsSrvPlayMediaFile_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayMediaFile_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayMediaFile_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvPlayMediaFile_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayMediaFile_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvPlayMediaFile_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvPlayMediaFile_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayMediaFile_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvPlayMediaFile_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/PlayTts_Request.
        Public Shared Function NewRos2Aimdk_msgsSrvPlayTts_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayTts_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayTts_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvPlayTts_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayTts_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvPlayTts_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvPlayTts_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayTts_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvPlayTts_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/PlayTts_Response.
        Public Shared Function NewRos2Aimdk_msgsSrvPlayTts_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayTts_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayTts_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvPlayTts_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayTts_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvPlayTts_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvPlayTts_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayTts_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvPlayTts_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/PlayVideo_Request.
        Public Shared Function NewRos2Aimdk_msgsSrvPlayVideo_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayVideo_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayVideo_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvPlayVideo_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayVideo_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvPlayVideo_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvPlayVideo_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayVideo_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvPlayVideo_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/PlayVideo_Response.
        Public Shared Function NewRos2Aimdk_msgsSrvPlayVideo_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayVideo_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayVideo_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvPlayVideo_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayVideo_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvPlayVideo_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvPlayVideo_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayVideo_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvPlayVideo_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/PlayVideoGroup_Request.
        Public Shared Function NewRos2Aimdk_msgsSrvPlayVideoGroup_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayVideoGroup_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayVideoGroup_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvPlayVideoGroup_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayVideoGroup_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvPlayVideoGroup_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvPlayVideoGroup_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayVideoGroup_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvPlayVideoGroup_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/PlayVideoGroup_Response.
        Public Shared Function NewRos2Aimdk_msgsSrvPlayVideoGroup_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayVideoGroup_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayVideoGroup_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvPlayVideoGroup_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayVideoGroup_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvPlayVideoGroup_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvPlayVideoGroup_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayVideoGroup_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvPlayVideoGroup_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/SetAgentPropertiesRequest_Request.
        Public Shared Function NewRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/SetAgentPropertiesRequest_Response.
        Public Shared Function NewRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/SetMcAction_Request.
        Public Shared Function NewRos2Aimdk_msgsSrvSetMcAction_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMcAction_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMcAction_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvSetMcAction_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMcAction_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvSetMcAction_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvSetMcAction_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMcAction_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvSetMcAction_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/SetMcAction_Response.
        Public Shared Function NewRos2Aimdk_msgsSrvSetMcAction_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMcAction_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMcAction_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvSetMcAction_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMcAction_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvSetMcAction_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvSetMcAction_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMcAction_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvSetMcAction_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/SetMcInputSource_Request.
        Public Shared Function NewRos2Aimdk_msgsSrvSetMcInputSource_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMcInputSource_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMcInputSource_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvSetMcInputSource_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMcInputSource_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvSetMcInputSource_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvSetMcInputSource_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMcInputSource_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvSetMcInputSource_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/SetMcInputSource_Response.
        Public Shared Function NewRos2Aimdk_msgsSrvSetMcInputSource_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMcInputSource_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMcInputSource_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvSetMcInputSource_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMcInputSource_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvSetMcInputSource_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvSetMcInputSource_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMcInputSource_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvSetMcInputSource_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/SetMcPresetMotion_Request.
        Public Shared Function NewRos2Aimdk_msgsSrvSetMcPresetMotion_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMcPresetMotion_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMcPresetMotion_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvSetMcPresetMotion_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMcPresetMotion_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvSetMcPresetMotion_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMcPresetMotion_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/SetMcPresetMotion_Response.
        Public Shared Function NewRos2Aimdk_msgsSrvSetMcPresetMotion_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMcPresetMotion_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMcPresetMotion_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvSetMcPresetMotion_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMcPresetMotion_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvSetMcPresetMotion_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMcPresetMotion_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/SetMute_Request.
        Public Shared Function NewRos2Aimdk_msgsSrvSetMute_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMute_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMute_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvSetMute_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMute_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvSetMute_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvSetMute_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMute_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvSetMute_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/SetMute_Response.
        Public Shared Function NewRos2Aimdk_msgsSrvSetMute_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMute_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMute_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvSetMute_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMute_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvSetMute_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvSetMute_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMute_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvSetMute_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/SetVolume_Request.
        Public Shared Function NewRos2Aimdk_msgsSrvSetVolume_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetVolume_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetVolume_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvSetVolume_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetVolume_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvSetVolume_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvSetVolume_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetVolume_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvSetVolume_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/SetVolume_Response.
        Public Shared Function NewRos2Aimdk_msgsSrvSetVolume_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetVolume_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetVolume_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvSetVolume_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetVolume_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvSetVolume_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvSetVolume_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetVolume_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvSetVolume_ResponseCodec().Decode(wire)
        End Function

    End Class
End Namespace
