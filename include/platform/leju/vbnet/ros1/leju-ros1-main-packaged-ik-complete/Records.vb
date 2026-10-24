''' @file Records.vb
''' @brief Complete VB.NET typed access to genuine CLR record codecs.
''' @details Requires this profile's C# assembly; failures remain real CLR exceptions.
Option Strict On
Namespace Uwvm.Leju.Ros1MainPackagedIk
    Public NotInheritable Class Records
        Private Sub New()
        End Sub

        ''' @brief Construct all original defaults of motion_capture_ik/armHandPose.
        Public Shared Function NewRos1Motion_capture_ikArmHandPose() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikArmHandPose
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikArmHandPose()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Motion_capture_ikArmHandPose(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikArmHandPose) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Motion_capture_ikArmHandPoseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Motion_capture_ikArmHandPose(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikArmHandPose
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Motion_capture_ikArmHandPoseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of motion_capture_ik/armHandPoseFree.
        Public Shared Function NewRos1Motion_capture_ikArmHandPoseFree() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikArmHandPoseFree
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikArmHandPoseFree()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Motion_capture_ikArmHandPoseFree(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikArmHandPoseFree) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Motion_capture_ikArmHandPoseFreeCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Motion_capture_ikArmHandPoseFree(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikArmHandPoseFree
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Motion_capture_ikArmHandPoseFreeCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of motion_capture_ik/changeArmCtrlModeRequest.
        Public Shared Function NewRos1Motion_capture_ikChangeArmCtrlModeRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikChangeArmCtrlModeRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikChangeArmCtrlModeRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Motion_capture_ikChangeArmCtrlModeRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikChangeArmCtrlModeRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Motion_capture_ikChangeArmCtrlModeRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Motion_capture_ikChangeArmCtrlModeRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikChangeArmCtrlModeRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Motion_capture_ikChangeArmCtrlModeRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of motion_capture_ik/changeArmCtrlModeResponse.
        Public Shared Function NewRos1Motion_capture_ikChangeArmCtrlModeResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikChangeArmCtrlModeResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikChangeArmCtrlModeResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Motion_capture_ikChangeArmCtrlModeResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikChangeArmCtrlModeResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Motion_capture_ikChangeArmCtrlModeResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Motion_capture_ikChangeArmCtrlModeResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikChangeArmCtrlModeResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Motion_capture_ikChangeArmCtrlModeResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of motion_capture_ik/handPose.
        Public Shared Function NewRos1Motion_capture_ikHandPose() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikHandPose
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikHandPose()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Motion_capture_ikHandPose(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikHandPose) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Motion_capture_ikHandPoseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Motion_capture_ikHandPose(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikHandPose
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Motion_capture_ikHandPoseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of motion_capture_ik/ikSolveError.
        Public Shared Function NewRos1Motion_capture_ikIkSolveError() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikIkSolveError
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikIkSolveError()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Motion_capture_ikIkSolveError(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikIkSolveError) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Motion_capture_ikIkSolveErrorCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Motion_capture_ikIkSolveError(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikIkSolveError
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Motion_capture_ikIkSolveErrorCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of motion_capture_ik/ikSolveParam.
        Public Shared Function NewRos1Motion_capture_ikIkSolveParam() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikIkSolveParam
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikIkSolveParam()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Motion_capture_ikIkSolveParam(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikIkSolveParam) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Motion_capture_ikIkSolveParamCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Motion_capture_ikIkSolveParam(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikIkSolveParam
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Motion_capture_ikIkSolveParamCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of motion_capture_ik/recordArmHandPose.
        Public Shared Function NewRos1Motion_capture_ikRecordArmHandPose() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikRecordArmHandPose
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikRecordArmHandPose()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Motion_capture_ikRecordArmHandPose(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikRecordArmHandPose) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Motion_capture_ikRecordArmHandPoseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Motion_capture_ikRecordArmHandPose(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikRecordArmHandPose
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Motion_capture_ikRecordArmHandPoseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of motion_capture_ik/recordArmHandPoseFree.
        Public Shared Function NewRos1Motion_capture_ikRecordArmHandPoseFree() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikRecordArmHandPoseFree
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikRecordArmHandPoseFree()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Motion_capture_ikRecordArmHandPoseFree(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikRecordArmHandPoseFree) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Motion_capture_ikRecordArmHandPoseFreeCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Motion_capture_ikRecordArmHandPoseFree(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikRecordArmHandPoseFree
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Motion_capture_ikRecordArmHandPoseFreeCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of motion_capture_ik/robotArmQVVD.
        Public Shared Function NewRos1Motion_capture_ikRobotArmQVVD() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikRobotArmQVVD
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikRobotArmQVVD()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Motion_capture_ikRobotArmQVVD(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikRobotArmQVVD) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Motion_capture_ikRobotArmQVVDCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Motion_capture_ikRobotArmQVVD(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikRobotArmQVVD
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Motion_capture_ikRobotArmQVVDCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of time.
        Public Shared Function NewRos1Time() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Time
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Time()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Time(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Time) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1TimeCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Time(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Time
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1TimeCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of std_msgs/Header.
        Public Shared Function NewRos1Std_msgsHeader() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Std_msgsHeader
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Std_msgsHeader()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Std_msgsHeader(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Std_msgsHeader) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Std_msgsHeaderCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Std_msgsHeader(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Std_msgsHeader
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Std_msgsHeaderCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of motion_capture_ik/robotHandPosition.
        Public Shared Function NewRos1Motion_capture_ikRobotHandPosition() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikRobotHandPosition
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikRobotHandPosition()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Motion_capture_ikRobotHandPosition(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikRobotHandPosition) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Motion_capture_ikRobotHandPositionCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Motion_capture_ikRobotHandPosition(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikRobotHandPosition
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Motion_capture_ikRobotHandPositionCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of motion_capture_ik/twoArmHandPose.
        Public Shared Function NewRos1Motion_capture_ikTwoArmHandPose() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikTwoArmHandPose
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikTwoArmHandPose()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Motion_capture_ikTwoArmHandPose(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikTwoArmHandPose) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Motion_capture_ikTwoArmHandPoseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Motion_capture_ikTwoArmHandPose(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikTwoArmHandPose
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Motion_capture_ikTwoArmHandPoseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of motion_capture_ik/twoArmHandPoseCmd.
        Public Shared Function NewRos1Motion_capture_ikTwoArmHandPoseCmd() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikTwoArmHandPoseCmd
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikTwoArmHandPoseCmd()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Motion_capture_ikTwoArmHandPoseCmd(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikTwoArmHandPoseCmd) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Motion_capture_ikTwoArmHandPoseCmdCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Motion_capture_ikTwoArmHandPoseCmd(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikTwoArmHandPoseCmd
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Motion_capture_ikTwoArmHandPoseCmdCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of motion_capture_ik/twoArmHandPoseFree.
        Public Shared Function NewRos1Motion_capture_ikTwoArmHandPoseFree() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikTwoArmHandPoseFree
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikTwoArmHandPoseFree()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Motion_capture_ikTwoArmHandPoseFree(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikTwoArmHandPoseFree) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Motion_capture_ikTwoArmHandPoseFreeCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Motion_capture_ikTwoArmHandPoseFree(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikTwoArmHandPoseFree
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Motion_capture_ikTwoArmHandPoseFreeCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of motion_capture_ik/twoArmHandPoseCmdFree.
        Public Shared Function NewRos1Motion_capture_ikTwoArmHandPoseCmdFree() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikTwoArmHandPoseCmdFree
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikTwoArmHandPoseCmdFree()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Motion_capture_ikTwoArmHandPoseCmdFree(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikTwoArmHandPoseCmdFree) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Motion_capture_ikTwoArmHandPoseCmdFreeCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Motion_capture_ikTwoArmHandPoseCmdFree(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Motion_capture_ikTwoArmHandPoseCmdFree
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Motion_capture_ikTwoArmHandPoseCmdFreeCodec().Decode(wire)
        End Function

    End Class
End Namespace
