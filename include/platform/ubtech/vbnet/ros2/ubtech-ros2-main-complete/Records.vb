''' @file Records.vb
''' @brief Complete VB.NET typed access to genuine CLR record codecs.
''' @details Requires this profile's C# assembly; failures remain real CLR exceptions.
Option Strict On
Namespace Uwvm.Ubtech.Ros2Main
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

        ''' @brief Construct all original defaults of geometry_msgs/msg/PoseStamped.
        Public Shared Function NewRos2Geometry_msgsMsgPoseStamped() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Geometry_msgsMsgPoseStamped
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Geometry_msgsMsgPoseStamped()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Geometry_msgsMsgPoseStamped(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Geometry_msgsMsgPoseStamped) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Geometry_msgsMsgPoseStampedCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Geometry_msgsMsgPoseStamped(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Geometry_msgsMsgPoseStamped
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Geometry_msgsMsgPoseStampedCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of grab_demo_msgs/msg/GraspCandidate.
        Public Shared Function NewRos2Grab_demo_msgsMsgGraspCandidate() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Grab_demo_msgsMsgGraspCandidate
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Grab_demo_msgsMsgGraspCandidate()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Grab_demo_msgsMsgGraspCandidate(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Grab_demo_msgsMsgGraspCandidate) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Grab_demo_msgsMsgGraspCandidateCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Grab_demo_msgsMsgGraspCandidate(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Grab_demo_msgsMsgGraspCandidate
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Grab_demo_msgsMsgGraspCandidateCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of grab_demo_msgs/msg/IKRequest.
        Public Shared Function NewRos2Grab_demo_msgsMsgIKRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Grab_demo_msgsMsgIKRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Grab_demo_msgsMsgIKRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos2Grab_demo_msgsMsgIKRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Grab_demo_msgsMsgIKRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Grab_demo_msgsMsgIKRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos2Grab_demo_msgsMsgIKRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros2Grab_demo_msgsMsgIKRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros2Grab_demo_msgsMsgIKRequestCodec().Decode(wire)
        End Function

    End Class
End Namespace
