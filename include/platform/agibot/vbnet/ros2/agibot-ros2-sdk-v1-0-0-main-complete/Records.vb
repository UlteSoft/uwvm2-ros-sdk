''' @file Records.vb
''' @brief Complete VB.NET typed access to genuine CLR record codecs.
''' @details Requires this profile's C# assembly; failures remain real CLR exceptions.
Option Strict On
Namespace Uwvm.Agibot.Ros2SdkV100Main
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

        ''' @brief Construct all original defaults of aimdk_msgs/msg/AudioInfo.
        Public Shared Function NewRos2Aimdk_msgsMsgAudioInfo() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgAudioInfo
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgAudioInfo()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgAudioInfo(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgAudioInfo) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgAudioInfoCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgAudioInfo(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgAudioInfo
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgAudioInfoCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/AudioData.
        Public Shared Function NewRos2Aimdk_msgsMsgAudioData() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgAudioData
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgAudioData()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgAudioData(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgAudioData) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgAudioDataCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgAudioData(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgAudioData
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgAudioDataCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/AudioCapture.
        Public Shared Function NewRos2Aimdk_msgsMsgAudioCapture() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgAudioCapture
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgAudioCapture()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgAudioCapture(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgAudioCapture) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgAudioCaptureCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgAudioCapture(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgAudioCapture
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgAudioCaptureCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/AudioFile.
        Public Shared Function NewRos2Aimdk_msgsMsgAudioFile() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgAudioFile
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgAudioFile()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgAudioFile(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgAudioFile) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgAudioFileCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgAudioFile(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgAudioFile
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgAudioFileCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/AudioPlayback.
        Public Shared Function NewRos2Aimdk_msgsMsgAudioPlayback() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgAudioPlayback
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgAudioPlayback()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgAudioPlayback(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgAudioPlayback) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgAudioPlaybackCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgAudioPlayback(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgAudioPlayback
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgAudioPlaybackCodec().Decode(wire)
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

        ''' @brief Construct all original defaults of aimdk_msgs/msg/CurrentVersion.
        Public Shared Function NewRos2Aimdk_msgsMsgCurrentVersion() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgCurrentVersion
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgCurrentVersion()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgCurrentVersion(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgCurrentVersion) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgCurrentVersionCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgCurrentVersion(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgCurrentVersion
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgCurrentVersionCodec().Decode(wire)
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

        ''' @brief Construct all original defaults of aimdk_msgs/msg/FocusRequester.
        Public Shared Function NewRos2Aimdk_msgsMsgFocusRequester() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgFocusRequester
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgFocusRequester()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgFocusRequester(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgFocusRequester) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgFocusRequesterCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgFocusRequester(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgFocusRequester
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgFocusRequesterCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/FocusResponse.
        Public Shared Function NewRos2Aimdk_msgsMsgFocusResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgFocusResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgFocusResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgFocusResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgFocusResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgFocusResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgFocusResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgFocusResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgFocusResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of geometry_msgs/msg/Point.
        Public Shared Function NewRos2Geometry_msgsMsgPoint() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Geometry_msgsMsgPoint
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Geometry_msgsMsgPoint()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Geometry_msgsMsgPoint(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Geometry_msgsMsgPoint) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Geometry_msgsMsgPointCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Geometry_msgsMsgPoint(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Geometry_msgsMsgPoint
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Geometry_msgsMsgPointCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of geometry_msgs/msg/Quaternion.
        Public Shared Function NewRos2Geometry_msgsMsgQuaternion() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Geometry_msgsMsgQuaternion
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Geometry_msgsMsgQuaternion()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Geometry_msgsMsgQuaternion(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Geometry_msgsMsgQuaternion) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Geometry_msgsMsgQuaternionCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Geometry_msgsMsgQuaternion(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Geometry_msgsMsgQuaternion
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Geometry_msgsMsgQuaternionCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of geometry_msgs/msg/Pose.
        Public Shared Function NewRos2Geometry_msgsMsgPose() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Geometry_msgsMsgPose
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Geometry_msgsMsgPose()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Geometry_msgsMsgPose(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Geometry_msgsMsgPose) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Geometry_msgsMsgPoseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Geometry_msgsMsgPose(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Geometry_msgsMsgPose
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Geometry_msgsMsgPoseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/QRCode.
        Public Shared Function NewRos2Aimdk_msgsMsgQRCode() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgQRCode
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgQRCode()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgQRCode(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgQRCode) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgQRCodeCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgQRCode(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgQRCode
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgQRCodeCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/HRPoint.
        Public Shared Function NewRos2Aimdk_msgsMsgHRPoint() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgHRPoint
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgHRPoint()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgHRPoint(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgHRPoint) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgHRPointCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgHRPoint(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgHRPoint
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgHRPointCodec().Decode(wire)
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

        ''' @brief Construct all original defaults of aimdk_msgs/msg/HandTouchSensorData.
        Public Shared Function NewRos2Aimdk_msgsMsgHandTouchSensorData() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgHandTouchSensorData
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgHandTouchSensorData()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgHandTouchSensorData(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgHandTouchSensorData) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgHandTouchSensorDataCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgHandTouchSensorData(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgHandTouchSensorData
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgHandTouchSensorDataCodec().Decode(wire)
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

        ''' @brief Construct all original defaults of geometry_msgs/msg/Pose2D.
        Public Shared Function NewRos2Geometry_msgsMsgPose2D() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Geometry_msgsMsgPose2D
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Geometry_msgsMsgPose2D()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Geometry_msgsMsgPose2D(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Geometry_msgsMsgPose2D) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Geometry_msgsMsgPose2DCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Geometry_msgsMsgPose2D(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Geometry_msgsMsgPose2D
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Geometry_msgsMsgPose2DCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/NaviPoint.
        Public Shared Function NewRos2Aimdk_msgsMsgNaviPoint() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgNaviPoint
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgNaviPoint()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgNaviPoint(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgNaviPoint) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgNaviPointCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgNaviPoint(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgNaviPoint
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgNaviPointCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/Path.
        Public Shared Function NewRos2Aimdk_msgsMsgPath() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgPath
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgPath()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgPath(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgPath) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgPathCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgPath(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgPath
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgPathCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/PlayStateType.
        Public Shared Function NewRos2Aimdk_msgsMsgPlayStateType() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgPlayStateType
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgPlayStateType()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgPlayStateType(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgPlayStateType) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgPlayStateTypeCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgPlayStateType(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgPlayStateType
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgPlayStateTypeCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/PlayStateChange.
        Public Shared Function NewRos2Aimdk_msgsMsgPlayStateChange() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgPlayStateChange
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgPlayStateChange()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgPlayStateChange(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgPlayStateChange) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgPlayStateChangeCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgPlayStateChange(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgPlayStateChange
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgPlayStateChangeCodec().Decode(wire)
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

        ''' @brief Construct all original defaults of aimdk_msgs/msg/QRPoint.
        Public Shared Function NewRos2Aimdk_msgsMsgQRPoint() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgQRPoint
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgQRPoint()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgQRPoint(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgQRPoint) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgQRPointCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgQRPoint(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgQRPoint
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgQRPointCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of geometry_msgs/msg/Point32.
        Public Shared Function NewRos2Geometry_msgsMsgPoint32() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Geometry_msgsMsgPoint32
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Geometry_msgsMsgPoint32()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Geometry_msgsMsgPoint32(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Geometry_msgsMsgPoint32) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Geometry_msgsMsgPoint32Codec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Geometry_msgsMsgPoint32(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Geometry_msgsMsgPoint32
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Geometry_msgsMsgPoint32Codec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of geometry_msgs/msg/Polygon.
        Public Shared Function NewRos2Geometry_msgsMsgPolygon() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Geometry_msgsMsgPolygon
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Geometry_msgsMsgPolygon()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Geometry_msgsMsgPolygon(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Geometry_msgsMsgPolygon) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Geometry_msgsMsgPolygonCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Geometry_msgsMsgPolygon(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Geometry_msgsMsgPolygon
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Geometry_msgsMsgPolygonCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/Region.
        Public Shared Function NewRos2Aimdk_msgsMsgRegion() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgRegion
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgRegion()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgRegion(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgRegion) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgRegionCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgRegion(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgRegion
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgRegionCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/RobotResource.
        Public Shared Function NewRos2Aimdk_msgsMsgRobotResource() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgRobotResource
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgRobotResource()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgRobotResource(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgRobotResource) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgRobotResourceCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgRobotResource(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgRobotResource
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgRobotResourceCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/SlaveDevice.
        Public Shared Function NewRos2Aimdk_msgsMsgSlaveDevice() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgSlaveDevice
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgSlaveDevice()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgSlaveDevice(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgSlaveDevice) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgSlaveDeviceCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgSlaveDevice(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgSlaveDevice
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgSlaveDeviceCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/msg/SystemStatus.
        Public Shared Function NewRos2Aimdk_msgsMsgSystemStatus() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgSystemStatus
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgSystemStatus()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsMsgSystemStatus(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgSystemStatus) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgSystemStatusCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsMsgSystemStatus(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsMsgSystemStatus
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsMsgSystemStatusCodec().Decode(wire)
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

        ''' @brief Construct all original defaults of aimdk_msgs/srv/AbandonAudioFocus_Request.
        Public Shared Function NewRos2Aimdk_msgsSrvAbandonAudioFocus_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvAbandonAudioFocus_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvAbandonAudioFocus_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvAbandonAudioFocus_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvAbandonAudioFocus_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvAbandonAudioFocus_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvAbandonAudioFocus_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvAbandonAudioFocus_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvAbandonAudioFocus_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/AbandonAudioFocus_Response.
        Public Shared Function NewRos2Aimdk_msgsSrvAbandonAudioFocus_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvAbandonAudioFocus_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvAbandonAudioFocus_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvAbandonAudioFocus_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvAbandonAudioFocus_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvAbandonAudioFocus_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvAbandonAudioFocus_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvAbandonAudioFocus_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvAbandonAudioFocus_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/ExecuteActionResource_Request.
        Public Shared Function NewRos2Aimdk_msgsSrvExecuteActionResource_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvExecuteActionResource_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvExecuteActionResource_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvExecuteActionResource_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvExecuteActionResource_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvExecuteActionResource_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvExecuteActionResource_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvExecuteActionResource_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvExecuteActionResource_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/ExecuteActionResource_Response.
        Public Shared Function NewRos2Aimdk_msgsSrvExecuteActionResource_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvExecuteActionResource_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvExecuteActionResource_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvExecuteActionResource_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvExecuteActionResource_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvExecuteActionResource_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvExecuteActionResource_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvExecuteActionResource_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvExecuteActionResource_ResponseCodec().Decode(wire)
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

        ''' @brief Construct all original defaults of aimdk_msgs/srv/GetMicSourceRequest_Request.
        Public Shared Function NewRos2Aimdk_msgsSrvGetMicSourceRequest_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetMicSourceRequest_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetMicSourceRequest_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvGetMicSourceRequest_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetMicSourceRequest_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetMicSourceRequest_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvGetMicSourceRequest_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetMicSourceRequest_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetMicSourceRequest_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/GetMicSourceRequest_Response.
        Public Shared Function NewRos2Aimdk_msgsSrvGetMicSourceRequest_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetMicSourceRequest_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetMicSourceRequest_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvGetMicSourceRequest_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetMicSourceRequest_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetMicSourceRequest_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvGetMicSourceRequest_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetMicSourceRequest_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetMicSourceRequest_ResponseCodec().Decode(wire)
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

        ''' @brief Construct all original defaults of aimdk_msgs/srv/GetRobotResources_Request.
        Public Shared Function NewRos2Aimdk_msgsSrvGetRobotResources_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetRobotResources_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetRobotResources_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvGetRobotResources_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetRobotResources_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetRobotResources_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvGetRobotResources_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetRobotResources_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetRobotResources_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/GetRobotResources_Response.
        Public Shared Function NewRos2Aimdk_msgsSrvGetRobotResources_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetRobotResources_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetRobotResources_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvGetRobotResources_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetRobotResources_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetRobotResources_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvGetRobotResources_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetRobotResources_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetRobotResources_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of std_msgs/msg/Header.
        Public Shared Function NewRos2Std_msgsMsgHeader() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Std_msgsMsgHeader
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Std_msgsMsgHeader()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Std_msgsMsgHeader(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Std_msgsMsgHeader) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Std_msgsMsgHeaderCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Std_msgsMsgHeader(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Std_msgsMsgHeader
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Std_msgsMsgHeaderCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/GetStoredMapByName_Request.
        Public Shared Function NewRos2Aimdk_msgsSrvGetStoredMapByName_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetStoredMapByName_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetStoredMapByName_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvGetStoredMapByName_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetStoredMapByName_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetStoredMapByName_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvGetStoredMapByName_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetStoredMapByName_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetStoredMapByName_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of nav_msgs/msg/MapMetaData.
        Public Shared Function NewRos2Nav_msgsMsgMapMetaData() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Nav_msgsMsgMapMetaData
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Nav_msgsMsgMapMetaData()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Nav_msgsMsgMapMetaData(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Nav_msgsMsgMapMetaData) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Nav_msgsMsgMapMetaDataCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Nav_msgsMsgMapMetaData(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Nav_msgsMsgMapMetaData
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Nav_msgsMsgMapMetaDataCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/GetStoredMapByName_Response.
        Public Shared Function NewRos2Aimdk_msgsSrvGetStoredMapByName_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetStoredMapByName_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetStoredMapByName_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvGetStoredMapByName_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetStoredMapByName_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetStoredMapByName_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvGetStoredMapByName_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetStoredMapByName_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetStoredMapByName_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/GetSystemState_Request.
        Public Shared Function NewRos2Aimdk_msgsSrvGetSystemState_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetSystemState_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetSystemState_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvGetSystemState_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetSystemState_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetSystemState_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvGetSystemState_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetSystemState_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetSystemState_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/GetSystemState_Response.
        Public Shared Function NewRos2Aimdk_msgsSrvGetSystemState_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetSystemState_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetSystemState_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvGetSystemState_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetSystemState_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetSystemState_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvGetSystemState_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvGetSystemState_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvGetSystemState_ResponseCodec().Decode(wire)
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

        ''' @brief Construct all original defaults of aimdk_msgs/srv/MigrateSystemState_Request.
        Public Shared Function NewRos2Aimdk_msgsSrvMigrateSystemState_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvMigrateSystemState_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvMigrateSystemState_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvMigrateSystemState_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvMigrateSystemState_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvMigrateSystemState_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvMigrateSystemState_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvMigrateSystemState_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvMigrateSystemState_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/MigrateSystemState_Response.
        Public Shared Function NewRos2Aimdk_msgsSrvMigrateSystemState_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvMigrateSystemState_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvMigrateSystemState_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvMigrateSystemState_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvMigrateSystemState_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvMigrateSystemState_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvMigrateSystemState_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvMigrateSystemState_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvMigrateSystemState_ResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/PlayAudioFile_Request.
        Public Shared Function NewRos2Aimdk_msgsSrvPlayAudioFile_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayAudioFile_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayAudioFile_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvPlayAudioFile_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayAudioFile_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvPlayAudioFile_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvPlayAudioFile_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayAudioFile_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvPlayAudioFile_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/PlayAudioFile_Response.
        Public Shared Function NewRos2Aimdk_msgsSrvPlayAudioFile_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayAudioFile_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayAudioFile_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvPlayAudioFile_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayAudioFile_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvPlayAudioFile_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvPlayAudioFile_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvPlayAudioFile_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvPlayAudioFile_ResponseCodec().Decode(wire)
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

        ''' @brief Construct all original defaults of aimdk_msgs/srv/RequestAudioFocus_Request.
        Public Shared Function NewRos2Aimdk_msgsSrvRequestAudioFocus_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvRequestAudioFocus_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvRequestAudioFocus_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvRequestAudioFocus_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvRequestAudioFocus_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvRequestAudioFocus_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvRequestAudioFocus_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvRequestAudioFocus_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvRequestAudioFocus_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/RequestAudioFocus_Response.
        Public Shared Function NewRos2Aimdk_msgsSrvRequestAudioFocus_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvRequestAudioFocus_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvRequestAudioFocus_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvRequestAudioFocus_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvRequestAudioFocus_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvRequestAudioFocus_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvRequestAudioFocus_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvRequestAudioFocus_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvRequestAudioFocus_ResponseCodec().Decode(wire)
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

        ''' @brief Construct all original defaults of aimdk_msgs/srv/SetMicSourceRequest_Request.
        Public Shared Function NewRos2Aimdk_msgsSrvSetMicSourceRequest_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMicSourceRequest_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMicSourceRequest_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvSetMicSourceRequest_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMicSourceRequest_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvSetMicSourceRequest_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvSetMicSourceRequest_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMicSourceRequest_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvSetMicSourceRequest_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/SetMicSourceRequest_Response.
        Public Shared Function NewRos2Aimdk_msgsSrvSetMicSourceRequest_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMicSourceRequest_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMicSourceRequest_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvSetMicSourceRequest_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMicSourceRequest_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvSetMicSourceRequest_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvSetMicSourceRequest_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetMicSourceRequest_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvSetMicSourceRequest_ResponseCodec().Decode(wire)
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

        ''' @brief Construct all original defaults of aimdk_msgs/srv/SetPmuLed_Request.
        Public Shared Function NewRos2Aimdk_msgsSrvSetPmuLed_Request() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetPmuLed_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetPmuLed_Request()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvSetPmuLed_Request(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetPmuLed_Request) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvSetPmuLed_RequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvSetPmuLed_Request(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetPmuLed_Request
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvSetPmuLed_RequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aimdk_msgs/srv/SetPmuLed_Response.
        Public Shared Function NewRos2Aimdk_msgsSrvSetPmuLed_Response() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetPmuLed_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetPmuLed_Response()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Aimdk_msgsSrvSetPmuLed_Response(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetPmuLed_Response) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvSetPmuLed_ResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Aimdk_msgsSrvSetPmuLed_Response(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Aimdk_msgsSrvSetPmuLed_Response
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Aimdk_msgsSrvSetPmuLed_ResponseCodec().Decode(wire)
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
