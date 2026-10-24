''' @file Records.vb
''' @brief Complete VB.NET typed access to genuine CLR record codecs.
''' @details Requires this profile's C# assembly; failures remain real CLR exceptions.
Option Strict On
Namespace Uwvm.Leju.Ros1MasterPlatform
    Public NotInheritable Class Records
        Private Sub New()
        End Sub

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

        ''' @brief Construct all original defaults of geometry_msgs/Point.
        Public Shared Function NewRos1Geometry_msgsPoint() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsPoint
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsPoint()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Geometry_msgsPoint(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsPoint) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Geometry_msgsPointCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Geometry_msgsPoint(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsPoint
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Geometry_msgsPointCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of geometry_msgs/Quaternion.
        Public Shared Function NewRos1Geometry_msgsQuaternion() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsQuaternion
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsQuaternion()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Geometry_msgsQuaternion(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsQuaternion) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Geometry_msgsQuaternionCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Geometry_msgsQuaternion(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsQuaternion
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Geometry_msgsQuaternionCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of geometry_msgs/Pose.
        Public Shared Function NewRos1Geometry_msgsPose() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsPose
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsPose()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Geometry_msgsPose(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsPose) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Geometry_msgsPoseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Geometry_msgsPose(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsPose
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Geometry_msgsPoseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of geometry_msgs/PoseWithCovariance.
        Public Shared Function NewRos1Geometry_msgsPoseWithCovariance() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsPoseWithCovariance
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsPoseWithCovariance()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Geometry_msgsPoseWithCovariance(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsPoseWithCovariance) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Geometry_msgsPoseWithCovarianceCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Geometry_msgsPoseWithCovariance(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsPoseWithCovariance
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Geometry_msgsPoseWithCovarianceCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aruco_msgs/Marker.
        Public Shared Function NewRos1Aruco_msgsMarker() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Aruco_msgsMarker
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Aruco_msgsMarker()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Aruco_msgsMarker(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Aruco_msgsMarker) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Aruco_msgsMarkerCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Aruco_msgsMarker(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Aruco_msgsMarker
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Aruco_msgsMarkerCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of aruco_msgs/MarkerArray.
        Public Shared Function NewRos1Aruco_msgsMarkerArray() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Aruco_msgsMarkerArray
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Aruco_msgsMarkerArray()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Aruco_msgsMarkerArray(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Aruco_msgsMarkerArray) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Aruco_msgsMarkerArrayCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Aruco_msgsMarkerArray(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Aruco_msgsMarkerArray
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Aruco_msgsMarkerArrayCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of easy_handeye_msgs/CheckStartingPoseRequest.
        Public Shared Function NewRos1Easy_handeye_msgsCheckStartingPoseRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsCheckStartingPoseRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsCheckStartingPoseRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Easy_handeye_msgsCheckStartingPoseRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsCheckStartingPoseRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsCheckStartingPoseRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Easy_handeye_msgsCheckStartingPoseRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsCheckStartingPoseRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsCheckStartingPoseRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of geometry_msgs/PoseStamped.
        Public Shared Function NewRos1Geometry_msgsPoseStamped() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsPoseStamped
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsPoseStamped()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Geometry_msgsPoseStamped(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsPoseStamped) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Geometry_msgsPoseStampedCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Geometry_msgsPoseStamped(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsPoseStamped
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Geometry_msgsPoseStampedCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of easy_handeye_msgs/TargetPoseList.
        Public Shared Function NewRos1Easy_handeye_msgsTargetPoseList() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsTargetPoseList
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsTargetPoseList()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Easy_handeye_msgsTargetPoseList(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsTargetPoseList) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsTargetPoseListCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Easy_handeye_msgsTargetPoseList(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsTargetPoseList
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsTargetPoseListCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of easy_handeye_msgs/CheckStartingPoseResponse.
        Public Shared Function NewRos1Easy_handeye_msgsCheckStartingPoseResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsCheckStartingPoseResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsCheckStartingPoseResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Easy_handeye_msgsCheckStartingPoseResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsCheckStartingPoseResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsCheckStartingPoseResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Easy_handeye_msgsCheckStartingPoseResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsCheckStartingPoseResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsCheckStartingPoseResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of easy_handeye_msgs/ComputeCalibrationRequest.
        Public Shared Function NewRos1Easy_handeye_msgsComputeCalibrationRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsComputeCalibrationRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsComputeCalibrationRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Easy_handeye_msgsComputeCalibrationRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsComputeCalibrationRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsComputeCalibrationRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Easy_handeye_msgsComputeCalibrationRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsComputeCalibrationRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsComputeCalibrationRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of geometry_msgs/Vector3.
        Public Shared Function NewRos1Geometry_msgsVector3() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsVector3
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsVector3()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Geometry_msgsVector3(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsVector3) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Geometry_msgsVector3Codec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Geometry_msgsVector3(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsVector3
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Geometry_msgsVector3Codec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of geometry_msgs/Transform.
        Public Shared Function NewRos1Geometry_msgsTransform() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsTransform
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsTransform()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Geometry_msgsTransform(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsTransform) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Geometry_msgsTransformCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Geometry_msgsTransform(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsTransform
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Geometry_msgsTransformCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of geometry_msgs/TransformStamped.
        Public Shared Function NewRos1Geometry_msgsTransformStamped() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsTransformStamped
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsTransformStamped()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Geometry_msgsTransformStamped(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsTransformStamped) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Geometry_msgsTransformStampedCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Geometry_msgsTransformStamped(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsTransformStamped
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Geometry_msgsTransformStampedCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of easy_handeye_msgs/HandeyeCalibration.
        Public Shared Function NewRos1Easy_handeye_msgsHandeyeCalibration() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsHandeyeCalibration
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsHandeyeCalibration()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Easy_handeye_msgsHandeyeCalibration(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsHandeyeCalibration) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsHandeyeCalibrationCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Easy_handeye_msgsHandeyeCalibration(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsHandeyeCalibration
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsHandeyeCalibrationCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of easy_handeye_msgs/ComputeCalibrationResponse.
        Public Shared Function NewRos1Easy_handeye_msgsComputeCalibrationResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsComputeCalibrationResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsComputeCalibrationResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Easy_handeye_msgsComputeCalibrationResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsComputeCalibrationResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsComputeCalibrationResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Easy_handeye_msgsComputeCalibrationResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsComputeCalibrationResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsComputeCalibrationResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of easy_handeye_msgs/EnumerateTargetPosesRequest.
        Public Shared Function NewRos1Easy_handeye_msgsEnumerateTargetPosesRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsEnumerateTargetPosesRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsEnumerateTargetPosesRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Easy_handeye_msgsEnumerateTargetPosesRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsEnumerateTargetPosesRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsEnumerateTargetPosesRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Easy_handeye_msgsEnumerateTargetPosesRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsEnumerateTargetPosesRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsEnumerateTargetPosesRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of easy_handeye_msgs/EnumerateTargetPosesResponse.
        Public Shared Function NewRos1Easy_handeye_msgsEnumerateTargetPosesResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsEnumerateTargetPosesResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsEnumerateTargetPosesResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Easy_handeye_msgsEnumerateTargetPosesResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsEnumerateTargetPosesResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsEnumerateTargetPosesResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Easy_handeye_msgsEnumerateTargetPosesResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsEnumerateTargetPosesResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsEnumerateTargetPosesResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of easy_handeye_msgs/ExecutePlanRequest.
        Public Shared Function NewRos1Easy_handeye_msgsExecutePlanRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsExecutePlanRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsExecutePlanRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Easy_handeye_msgsExecutePlanRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsExecutePlanRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsExecutePlanRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Easy_handeye_msgsExecutePlanRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsExecutePlanRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsExecutePlanRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of easy_handeye_msgs/ExecutePlanResponse.
        Public Shared Function NewRos1Easy_handeye_msgsExecutePlanResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsExecutePlanResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsExecutePlanResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Easy_handeye_msgsExecutePlanResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsExecutePlanResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsExecutePlanResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Easy_handeye_msgsExecutePlanResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsExecutePlanResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsExecutePlanResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of easy_handeye_msgs/ListAlgorithmsRequest.
        Public Shared Function NewRos1Easy_handeye_msgsListAlgorithmsRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsListAlgorithmsRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsListAlgorithmsRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Easy_handeye_msgsListAlgorithmsRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsListAlgorithmsRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsListAlgorithmsRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Easy_handeye_msgsListAlgorithmsRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsListAlgorithmsRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsListAlgorithmsRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of easy_handeye_msgs/ListAlgorithmsResponse.
        Public Shared Function NewRos1Easy_handeye_msgsListAlgorithmsResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsListAlgorithmsResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsListAlgorithmsResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Easy_handeye_msgsListAlgorithmsResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsListAlgorithmsResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsListAlgorithmsResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Easy_handeye_msgsListAlgorithmsResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsListAlgorithmsResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsListAlgorithmsResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of easy_handeye_msgs/PlanToSelectedTargetPoseRequest.
        Public Shared Function NewRos1Easy_handeye_msgsPlanToSelectedTargetPoseRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Easy_handeye_msgsPlanToSelectedTargetPoseRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Easy_handeye_msgsPlanToSelectedTargetPoseRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of easy_handeye_msgs/PlanToSelectedTargetPoseResponse.
        Public Shared Function NewRos1Easy_handeye_msgsPlanToSelectedTargetPoseResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Easy_handeye_msgsPlanToSelectedTargetPoseResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Easy_handeye_msgsPlanToSelectedTargetPoseResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of easy_handeye_msgs/RemoveSampleRequest.
        Public Shared Function NewRos1Easy_handeye_msgsRemoveSampleRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsRemoveSampleRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsRemoveSampleRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Easy_handeye_msgsRemoveSampleRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsRemoveSampleRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsRemoveSampleRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Easy_handeye_msgsRemoveSampleRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsRemoveSampleRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsRemoveSampleRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of easy_handeye_msgs/SampleList.
        Public Shared Function NewRos1Easy_handeye_msgsSampleList() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsSampleList
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsSampleList()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Easy_handeye_msgsSampleList(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsSampleList) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsSampleListCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Easy_handeye_msgsSampleList(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsSampleList
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsSampleListCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of easy_handeye_msgs/RemoveSampleResponse.
        Public Shared Function NewRos1Easy_handeye_msgsRemoveSampleResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsRemoveSampleResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsRemoveSampleResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Easy_handeye_msgsRemoveSampleResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsRemoveSampleResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsRemoveSampleResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Easy_handeye_msgsRemoveSampleResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsRemoveSampleResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsRemoveSampleResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of easy_handeye_msgs/SelectTargetPoseRequest.
        Public Shared Function NewRos1Easy_handeye_msgsSelectTargetPoseRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsSelectTargetPoseRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsSelectTargetPoseRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Easy_handeye_msgsSelectTargetPoseRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsSelectTargetPoseRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsSelectTargetPoseRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Easy_handeye_msgsSelectTargetPoseRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsSelectTargetPoseRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsSelectTargetPoseRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of easy_handeye_msgs/SelectTargetPoseResponse.
        Public Shared Function NewRos1Easy_handeye_msgsSelectTargetPoseResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsSelectTargetPoseResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsSelectTargetPoseResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Easy_handeye_msgsSelectTargetPoseResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsSelectTargetPoseResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsSelectTargetPoseResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Easy_handeye_msgsSelectTargetPoseResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsSelectTargetPoseResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsSelectTargetPoseResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of easy_handeye_msgs/SetAlgorithmRequest.
        Public Shared Function NewRos1Easy_handeye_msgsSetAlgorithmRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsSetAlgorithmRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsSetAlgorithmRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Easy_handeye_msgsSetAlgorithmRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsSetAlgorithmRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsSetAlgorithmRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Easy_handeye_msgsSetAlgorithmRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsSetAlgorithmRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsSetAlgorithmRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of easy_handeye_msgs/SetAlgorithmResponse.
        Public Shared Function NewRos1Easy_handeye_msgsSetAlgorithmResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsSetAlgorithmResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsSetAlgorithmResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Easy_handeye_msgsSetAlgorithmResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsSetAlgorithmResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsSetAlgorithmResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Easy_handeye_msgsSetAlgorithmResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsSetAlgorithmResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsSetAlgorithmResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of easy_handeye_msgs/TakeSampleRequest.
        Public Shared Function NewRos1Easy_handeye_msgsTakeSampleRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsTakeSampleRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsTakeSampleRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Easy_handeye_msgsTakeSampleRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsTakeSampleRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsTakeSampleRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Easy_handeye_msgsTakeSampleRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsTakeSampleRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsTakeSampleRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of easy_handeye_msgs/TakeSampleResponse.
        Public Shared Function NewRos1Easy_handeye_msgsTakeSampleResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsTakeSampleResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsTakeSampleResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Easy_handeye_msgsTakeSampleResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsTakeSampleResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsTakeSampleResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Easy_handeye_msgsTakeSampleResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Easy_handeye_msgsTakeSampleResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Easy_handeye_msgsTakeSampleResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of geographic_msgs/GeoPoint.
        Public Shared Function NewRos1Geographic_msgsGeoPoint() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geographic_msgsGeoPoint
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geographic_msgsGeoPoint()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Geographic_msgsGeoPoint(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geographic_msgsGeoPoint) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Geographic_msgsGeoPointCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Geographic_msgsGeoPoint(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geographic_msgsGeoPoint
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Geographic_msgsGeoPointCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of geographic_msgs/GeoPose.
        Public Shared Function NewRos1Geographic_msgsGeoPose() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geographic_msgsGeoPose
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geographic_msgsGeoPose()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Geographic_msgsGeoPose(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geographic_msgsGeoPose) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Geographic_msgsGeoPoseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Geographic_msgsGeoPose(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geographic_msgsGeoPose
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Geographic_msgsGeoPoseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of geometry_msgs/PointStamped.
        Public Shared Function NewRos1Geometry_msgsPointStamped() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsPointStamped
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsPointStamped()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Geometry_msgsPointStamped(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsPointStamped) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Geometry_msgsPointStampedCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Geometry_msgsPointStamped(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsPointStamped
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Geometry_msgsPointStampedCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of geometry_msgs/PoseWithCovarianceStamped.
        Public Shared Function NewRos1Geometry_msgsPoseWithCovarianceStamped() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsPoseWithCovarianceStamped
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsPoseWithCovarianceStamped()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Geometry_msgsPoseWithCovarianceStamped(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsPoseWithCovarianceStamped) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Geometry_msgsPoseWithCovarianceStampedCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Geometry_msgsPoseWithCovarianceStamped(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsPoseWithCovarianceStamped
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Geometry_msgsPoseWithCovarianceStampedCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of geometry_msgs/Twist.
        Public Shared Function NewRos1Geometry_msgsTwist() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsTwist
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsTwist()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Geometry_msgsTwist(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsTwist) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Geometry_msgsTwistCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Geometry_msgsTwist(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Geometry_msgsTwist
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Geometry_msgsTwistCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of grid_map_msgs/GetGridMapRequest.
        Public Shared Function NewRos1Grid_map_msgsGetGridMapRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsGetGridMapRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsGetGridMapRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Grid_map_msgsGetGridMapRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsGetGridMapRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Grid_map_msgsGetGridMapRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Grid_map_msgsGetGridMapRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsGetGridMapRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Grid_map_msgsGetGridMapRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of grid_map_msgs/GridMapInfo.
        Public Shared Function NewRos1Grid_map_msgsGridMapInfo() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsGridMapInfo
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsGridMapInfo()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Grid_map_msgsGridMapInfo(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsGridMapInfo) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Grid_map_msgsGridMapInfoCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Grid_map_msgsGridMapInfo(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsGridMapInfo
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Grid_map_msgsGridMapInfoCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of std_msgs/MultiArrayDimension.
        Public Shared Function NewRos1Std_msgsMultiArrayDimension() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Std_msgsMultiArrayDimension
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Std_msgsMultiArrayDimension()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Std_msgsMultiArrayDimension(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Std_msgsMultiArrayDimension) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Std_msgsMultiArrayDimensionCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Std_msgsMultiArrayDimension(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Std_msgsMultiArrayDimension
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Std_msgsMultiArrayDimensionCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of std_msgs/MultiArrayLayout.
        Public Shared Function NewRos1Std_msgsMultiArrayLayout() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Std_msgsMultiArrayLayout
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Std_msgsMultiArrayLayout()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Std_msgsMultiArrayLayout(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Std_msgsMultiArrayLayout) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Std_msgsMultiArrayLayoutCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Std_msgsMultiArrayLayout(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Std_msgsMultiArrayLayout
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Std_msgsMultiArrayLayoutCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of std_msgs/Float32MultiArray.
        Public Shared Function NewRos1Std_msgsFloat32MultiArray() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Std_msgsFloat32MultiArray
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Std_msgsFloat32MultiArray()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Std_msgsFloat32MultiArray(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Std_msgsFloat32MultiArray) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Std_msgsFloat32MultiArrayCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Std_msgsFloat32MultiArray(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Std_msgsFloat32MultiArray
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Std_msgsFloat32MultiArrayCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of grid_map_msgs/GridMap.
        Public Shared Function NewRos1Grid_map_msgsGridMap() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsGridMap
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsGridMap()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Grid_map_msgsGridMap(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsGridMap) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Grid_map_msgsGridMapCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Grid_map_msgsGridMap(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsGridMap
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Grid_map_msgsGridMapCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of grid_map_msgs/GetGridMapResponse.
        Public Shared Function NewRos1Grid_map_msgsGetGridMapResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsGetGridMapResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsGetGridMapResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Grid_map_msgsGetGridMapResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsGetGridMapResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Grid_map_msgsGetGridMapResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Grid_map_msgsGetGridMapResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsGetGridMapResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Grid_map_msgsGetGridMapResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of grid_map_msgs/GetGridMapInfoRequest.
        Public Shared Function NewRos1Grid_map_msgsGetGridMapInfoRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsGetGridMapInfoRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsGetGridMapInfoRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Grid_map_msgsGetGridMapInfoRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsGetGridMapInfoRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Grid_map_msgsGetGridMapInfoRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Grid_map_msgsGetGridMapInfoRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsGetGridMapInfoRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Grid_map_msgsGetGridMapInfoRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of grid_map_msgs/GetGridMapInfoResponse.
        Public Shared Function NewRos1Grid_map_msgsGetGridMapInfoResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsGetGridMapInfoResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsGetGridMapInfoResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Grid_map_msgsGetGridMapInfoResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsGetGridMapInfoResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Grid_map_msgsGetGridMapInfoResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Grid_map_msgsGetGridMapInfoResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsGetGridMapInfoResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Grid_map_msgsGetGridMapInfoResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of grid_map_msgs/ProcessFileRequest.
        Public Shared Function NewRos1Grid_map_msgsProcessFileRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsProcessFileRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsProcessFileRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Grid_map_msgsProcessFileRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsProcessFileRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Grid_map_msgsProcessFileRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Grid_map_msgsProcessFileRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsProcessFileRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Grid_map_msgsProcessFileRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of grid_map_msgs/ProcessFileResponse.
        Public Shared Function NewRos1Grid_map_msgsProcessFileResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsProcessFileResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsProcessFileResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Grid_map_msgsProcessFileResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsProcessFileResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Grid_map_msgsProcessFileResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Grid_map_msgsProcessFileResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsProcessFileResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Grid_map_msgsProcessFileResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of grid_map_msgs/SetGridMapRequest.
        Public Shared Function NewRos1Grid_map_msgsSetGridMapRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsSetGridMapRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsSetGridMapRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Grid_map_msgsSetGridMapRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsSetGridMapRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Grid_map_msgsSetGridMapRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Grid_map_msgsSetGridMapRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsSetGridMapRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Grid_map_msgsSetGridMapRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of grid_map_msgs/SetGridMapResponse.
        Public Shared Function NewRos1Grid_map_msgsSetGridMapResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsSetGridMapResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsSetGridMapResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Grid_map_msgsSetGridMapResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsSetGridMapResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Grid_map_msgsSetGridMapResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Grid_map_msgsSetGridMapResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Grid_map_msgsSetGridMapResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Grid_map_msgsSetGridMapResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of h12pro_controller_node/ECJointMotordata.
        Public Shared Function NewRos1H12pro_controller_nodeECJointMotordata() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeECJointMotordata
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeECJointMotordata()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1H12pro_controller_nodeECJointMotordata(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeECJointMotordata) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeECJointMotordataCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1H12pro_controller_nodeECJointMotordata(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeECJointMotordata
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeECJointMotordataCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of h12pro_controller_node/ExecuteArmActionRequest.
        Public Shared Function NewRos1H12pro_controller_nodeExecuteArmActionRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeExecuteArmActionRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeExecuteArmActionRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1H12pro_controller_nodeExecuteArmActionRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeExecuteArmActionRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeExecuteArmActionRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1H12pro_controller_nodeExecuteArmActionRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeExecuteArmActionRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeExecuteArmActionRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of h12pro_controller_node/ExecuteArmActionResponse.
        Public Shared Function NewRos1H12pro_controller_nodeExecuteArmActionResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeExecuteArmActionResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeExecuteArmActionResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1H12pro_controller_nodeExecuteArmActionResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeExecuteArmActionResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeExecuteArmActionResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1H12pro_controller_nodeExecuteArmActionResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeExecuteArmActionResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeExecuteArmActionResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of h12pro_controller_node/RobotActionState.
        Public Shared Function NewRos1H12pro_controller_nodeRobotActionState() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeRobotActionState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeRobotActionState()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1H12pro_controller_nodeRobotActionState(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeRobotActionState) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeRobotActionStateCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1H12pro_controller_nodeRobotActionState(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeRobotActionState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeRobotActionStateCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of h12pro_controller_node/UpdateH12CustomizeConfig.
        Public Shared Function NewRos1H12pro_controller_nodeUpdateH12CustomizeConfig() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeUpdateH12CustomizeConfig
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeUpdateH12CustomizeConfig()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1H12pro_controller_nodeUpdateH12CustomizeConfig(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeUpdateH12CustomizeConfig) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeUpdateH12CustomizeConfigCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1H12pro_controller_nodeUpdateH12CustomizeConfig(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeUpdateH12CustomizeConfig
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeUpdateH12CustomizeConfigCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of h12pro_controller_node/changeAMBACCtrlModeRequest.
        Public Shared Function NewRos1H12pro_controller_nodeChangeAMBACCtrlModeRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1H12pro_controller_nodeChangeAMBACCtrlModeRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1H12pro_controller_nodeChangeAMBACCtrlModeRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of h12pro_controller_node/changeAMBACCtrlModeResponse.
        Public Shared Function NewRos1H12pro_controller_nodeChangeAMBACCtrlModeResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1H12pro_controller_nodeChangeAMBACCtrlModeResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1H12pro_controller_nodeChangeAMBACCtrlModeResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of h12pro_controller_node/changeArmCtrlModeRequest.
        Public Shared Function NewRos1H12pro_controller_nodeChangeArmCtrlModeRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeChangeArmCtrlModeRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeChangeArmCtrlModeRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1H12pro_controller_nodeChangeArmCtrlModeRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeChangeArmCtrlModeRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeChangeArmCtrlModeRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1H12pro_controller_nodeChangeArmCtrlModeRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeChangeArmCtrlModeRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeChangeArmCtrlModeRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of h12pro_controller_node/changeArmCtrlModeResponse.
        Public Shared Function NewRos1H12pro_controller_nodeChangeArmCtrlModeResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeChangeArmCtrlModeResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeChangeArmCtrlModeResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1H12pro_controller_nodeChangeArmCtrlModeResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeChangeArmCtrlModeResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeChangeArmCtrlModeResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1H12pro_controller_nodeChangeArmCtrlModeResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeChangeArmCtrlModeResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeChangeArmCtrlModeResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of h12pro_controller_node/changeHandArmPosesByConfigNameRequest.
        Public Shared Function NewRos1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of h12pro_controller_node/changeHandArmPosesByConfigNameResponse.
        Public Shared Function NewRos1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of h12pro_controller_node/h12proRemoteControllerChannel.
        Public Shared Function NewRos1H12pro_controller_nodeH12proRemoteControllerChannel() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeH12proRemoteControllerChannel
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeH12proRemoteControllerChannel()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1H12pro_controller_nodeH12proRemoteControllerChannel(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeH12proRemoteControllerChannel) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeH12proRemoteControllerChannelCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1H12pro_controller_nodeH12proRemoteControllerChannel(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeH12proRemoteControllerChannel
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeH12proRemoteControllerChannelCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of h12pro_controller_node/playmusicRequest.
        Public Shared Function NewRos1H12pro_controller_nodePlaymusicRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodePlaymusicRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodePlaymusicRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1H12pro_controller_nodePlaymusicRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodePlaymusicRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodePlaymusicRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1H12pro_controller_nodePlaymusicRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodePlaymusicRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodePlaymusicRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of h12pro_controller_node/playmusicResponse.
        Public Shared Function NewRos1H12pro_controller_nodePlaymusicResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodePlaymusicResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodePlaymusicResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1H12pro_controller_nodePlaymusicResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodePlaymusicResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodePlaymusicResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1H12pro_controller_nodePlaymusicResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodePlaymusicResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodePlaymusicResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of h12pro_controller_node/robotPhase.
        Public Shared Function NewRos1H12pro_controller_nodeRobotPhase() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeRobotPhase
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeRobotPhase()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1H12pro_controller_nodeRobotPhase(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeRobotPhase) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeRobotPhaseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1H12pro_controller_nodeRobotPhase(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeRobotPhase
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeRobotPhaseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of h12pro_controller_node/robotQVTau.
        Public Shared Function NewRos1H12pro_controller_nodeRobotQVTau() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeRobotQVTau
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeRobotQVTau()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1H12pro_controller_nodeRobotQVTau(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeRobotQVTau) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeRobotQVTauCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1H12pro_controller_nodeRobotQVTau(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeRobotQVTau
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeRobotQVTauCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of h12pro_controller_node/robotTorsoState.
        Public Shared Function NewRos1H12pro_controller_nodeRobotTorsoState() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeRobotTorsoState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeRobotTorsoState()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1H12pro_controller_nodeRobotTorsoState(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeRobotTorsoState) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeRobotTorsoStateCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1H12pro_controller_nodeRobotTorsoState(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeRobotTorsoState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeRobotTorsoStateCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of h12pro_controller_node/srvChangePhasesRequest.
        Public Shared Function NewRos1H12pro_controller_nodeSrvChangePhasesRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeSrvChangePhasesRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeSrvChangePhasesRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1H12pro_controller_nodeSrvChangePhasesRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeSrvChangePhasesRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeSrvChangePhasesRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1H12pro_controller_nodeSrvChangePhasesRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeSrvChangePhasesRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeSrvChangePhasesRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of h12pro_controller_node/srvChangePhasesResponse.
        Public Shared Function NewRos1H12pro_controller_nodeSrvChangePhasesResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeSrvChangePhasesResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeSrvChangePhasesResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1H12pro_controller_nodeSrvChangePhasesResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeSrvChangePhasesResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeSrvChangePhasesResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1H12pro_controller_nodeSrvChangePhasesResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeSrvChangePhasesResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeSrvChangePhasesResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of h12pro_controller_node/srvClearPositionCMDRequest.
        Public Shared Function NewRos1H12pro_controller_nodeSrvClearPositionCMDRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeSrvClearPositionCMDRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeSrvClearPositionCMDRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1H12pro_controller_nodeSrvClearPositionCMDRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeSrvClearPositionCMDRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeSrvClearPositionCMDRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1H12pro_controller_nodeSrvClearPositionCMDRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeSrvClearPositionCMDRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeSrvClearPositionCMDRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of h12pro_controller_node/srvClearPositionCMDResponse.
        Public Shared Function NewRos1H12pro_controller_nodeSrvClearPositionCMDResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeSrvClearPositionCMDResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeSrvClearPositionCMDResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1H12pro_controller_nodeSrvClearPositionCMDResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeSrvClearPositionCMDResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeSrvClearPositionCMDResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1H12pro_controller_nodeSrvClearPositionCMDResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeSrvClearPositionCMDResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeSrvClearPositionCMDResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of h12pro_controller_node/srvchangeCtlModeRequest.
        Public Shared Function NewRos1H12pro_controller_nodeSrvchangeCtlModeRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeSrvchangeCtlModeRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeSrvchangeCtlModeRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1H12pro_controller_nodeSrvchangeCtlModeRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeSrvchangeCtlModeRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeSrvchangeCtlModeRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1H12pro_controller_nodeSrvchangeCtlModeRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeSrvchangeCtlModeRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeSrvchangeCtlModeRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of h12pro_controller_node/srvchangeCtlModeResponse.
        Public Shared Function NewRos1H12pro_controller_nodeSrvchangeCtlModeResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeSrvchangeCtlModeResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeSrvchangeCtlModeResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1H12pro_controller_nodeSrvchangeCtlModeResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeSrvchangeCtlModeResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeSrvchangeCtlModeResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1H12pro_controller_nodeSrvchangeCtlModeResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeSrvchangeCtlModeResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeSrvchangeCtlModeResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of h12pro_controller_node/walkCommand.
        Public Shared Function NewRos1H12pro_controller_nodeWalkCommand() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeWalkCommand
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeWalkCommand()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1H12pro_controller_nodeWalkCommand(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeWalkCommand) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeWalkCommandCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1H12pro_controller_nodeWalkCommand(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1H12pro_controller_nodeWalkCommand
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1H12pro_controller_nodeWalkCommandCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of handcontrollerdemorosnode/armPoseWithTimeStamp.
        Public Shared Function NewRos1HandcontrollerdemorosnodeArmPoseWithTimeStamp() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeArmPoseWithTimeStamp
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeArmPoseWithTimeStamp()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1HandcontrollerdemorosnodeArmPoseWithTimeStamp(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeArmPoseWithTimeStamp) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1HandcontrollerdemorosnodeArmPoseWithTimeStampCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1HandcontrollerdemorosnodeArmPoseWithTimeStamp(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeArmPoseWithTimeStamp
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1HandcontrollerdemorosnodeArmPoseWithTimeStampCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of handcontrollerdemorosnode/changeHandTrackingModeRequest.
        Public Shared Function NewRos1HandcontrollerdemorosnodeChangeHandTrackingModeRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1HandcontrollerdemorosnodeChangeHandTrackingModeRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1HandcontrollerdemorosnodeChangeHandTrackingModeRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of handcontrollerdemorosnode/changeHandTrackingModeResponse.
        Public Shared Function NewRos1HandcontrollerdemorosnodeChangeHandTrackingModeResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1HandcontrollerdemorosnodeChangeHandTrackingModeResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1HandcontrollerdemorosnodeChangeHandTrackingModeResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of handcontrollerdemorosnode/controlEndHandRequest.
        Public Shared Function NewRos1HandcontrollerdemorosnodeControlEndHandRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeControlEndHandRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeControlEndHandRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1HandcontrollerdemorosnodeControlEndHandRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeControlEndHandRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1HandcontrollerdemorosnodeControlEndHandRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1HandcontrollerdemorosnodeControlEndHandRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeControlEndHandRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1HandcontrollerdemorosnodeControlEndHandRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of handcontrollerdemorosnode/controlEndHandResponse.
        Public Shared Function NewRos1HandcontrollerdemorosnodeControlEndHandResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeControlEndHandResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeControlEndHandResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1HandcontrollerdemorosnodeControlEndHandResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeControlEndHandResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1HandcontrollerdemorosnodeControlEndHandResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1HandcontrollerdemorosnodeControlEndHandResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeControlEndHandResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1HandcontrollerdemorosnodeControlEndHandResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of handcontrollerdemorosnode/handRotationEular.
        Public Shared Function NewRos1HandcontrollerdemorosnodeHandRotationEular() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeHandRotationEular
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeHandRotationEular()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1HandcontrollerdemorosnodeHandRotationEular(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeHandRotationEular) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1HandcontrollerdemorosnodeHandRotationEularCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1HandcontrollerdemorosnodeHandRotationEular(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeHandRotationEular
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1HandcontrollerdemorosnodeHandRotationEularCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of handcontrollerdemorosnode/robotArmPose.
        Public Shared Function NewRos1HandcontrollerdemorosnodeRobotArmPose() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeRobotArmPose
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeRobotArmPose()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1HandcontrollerdemorosnodeRobotArmPose(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeRobotArmPose) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1HandcontrollerdemorosnodeRobotArmPoseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1HandcontrollerdemorosnodeRobotArmPose(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeRobotArmPose
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1HandcontrollerdemorosnodeRobotArmPoseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of handcontrollerdemorosnode/robotHandPosition.
        Public Shared Function NewRos1HandcontrollerdemorosnodeRobotHandPosition() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeRobotHandPosition
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeRobotHandPosition()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1HandcontrollerdemorosnodeRobotHandPosition(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeRobotHandPosition) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1HandcontrollerdemorosnodeRobotHandPositionCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1HandcontrollerdemorosnodeRobotHandPosition(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeRobotHandPosition
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1HandcontrollerdemorosnodeRobotHandPositionCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of handcontrollerdemorosnode/srvArmIKRequest.
        Public Shared Function NewRos1HandcontrollerdemorosnodeSrvArmIKRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeSrvArmIKRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeSrvArmIKRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1HandcontrollerdemorosnodeSrvArmIKRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeSrvArmIKRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1HandcontrollerdemorosnodeSrvArmIKRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1HandcontrollerdemorosnodeSrvArmIKRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeSrvArmIKRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1HandcontrollerdemorosnodeSrvArmIKRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of sensor_msgs/JointState.
        Public Shared Function NewRos1Sensor_msgsJointState() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Sensor_msgsJointState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Sensor_msgsJointState()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Sensor_msgsJointState(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Sensor_msgsJointState) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Sensor_msgsJointStateCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Sensor_msgsJointState(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Sensor_msgsJointState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Sensor_msgsJointStateCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of handcontrollerdemorosnode/srvArmIKResponse.
        Public Shared Function NewRos1HandcontrollerdemorosnodeSrvArmIKResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeSrvArmIKResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeSrvArmIKResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1HandcontrollerdemorosnodeSrvArmIKResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeSrvArmIKResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1HandcontrollerdemorosnodeSrvArmIKResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1HandcontrollerdemorosnodeSrvArmIKResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1HandcontrollerdemorosnodeSrvArmIKResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1HandcontrollerdemorosnodeSrvArmIKResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of hardware_node/horizontalMotionByStep.
        Public Shared Function NewRos1Hardware_nodeHorizontalMotionByStep() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Hardware_nodeHorizontalMotionByStep
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Hardware_nodeHorizontalMotionByStep()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Hardware_nodeHorizontalMotionByStep(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Hardware_nodeHorizontalMotionByStep) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Hardware_nodeHorizontalMotionByStepCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Hardware_nodeHorizontalMotionByStep(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Hardware_nodeHorizontalMotionByStep
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Hardware_nodeHorizontalMotionByStepCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of hardware_node/robotHeadMotionData.
        Public Shared Function NewRos1Hardware_nodeRobotHeadMotionData() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Hardware_nodeRobotHeadMotionData
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Hardware_nodeRobotHeadMotionData()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Hardware_nodeRobotHeadMotionData(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Hardware_nodeRobotHeadMotionData) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Hardware_nodeRobotHeadMotionDataCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Hardware_nodeRobotHeadMotionData(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Hardware_nodeRobotHeadMotionData
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Hardware_nodeRobotHeadMotionDataCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of humanoid_arm_control/armControlRequest.
        Public Shared Function NewRos1Humanoid_arm_controlArmControlRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_arm_controlArmControlRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_arm_controlArmControlRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Humanoid_arm_controlArmControlRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_arm_controlArmControlRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Humanoid_arm_controlArmControlRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Humanoid_arm_controlArmControlRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_arm_controlArmControlRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Humanoid_arm_controlArmControlRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of humanoid_arm_control/armControlResponse.
        Public Shared Function NewRos1Humanoid_arm_controlArmControlResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_arm_controlArmControlResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_arm_controlArmControlResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Humanoid_arm_controlArmControlResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_arm_controlArmControlResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Humanoid_arm_controlArmControlResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Humanoid_arm_controlArmControlResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_arm_controlArmControlResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Humanoid_arm_controlArmControlResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of humanoid_arm_control/handUpAndGrabRequest.
        Public Shared Function NewRos1Humanoid_arm_controlHandUpAndGrabRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_arm_controlHandUpAndGrabRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_arm_controlHandUpAndGrabRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Humanoid_arm_controlHandUpAndGrabRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_arm_controlHandUpAndGrabRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Humanoid_arm_controlHandUpAndGrabRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Humanoid_arm_controlHandUpAndGrabRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_arm_controlHandUpAndGrabRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Humanoid_arm_controlHandUpAndGrabRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of humanoid_arm_control/handUpAndGrabResponse.
        Public Shared Function NewRos1Humanoid_arm_controlHandUpAndGrabResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_arm_controlHandUpAndGrabResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_arm_controlHandUpAndGrabResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Humanoid_arm_controlHandUpAndGrabResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_arm_controlHandUpAndGrabResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Humanoid_arm_controlHandUpAndGrabResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Humanoid_arm_controlHandUpAndGrabResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_arm_controlHandUpAndGrabResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Humanoid_arm_controlHandUpAndGrabResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of humanoid_plan_arm_trajectory/ExecuteArmActionRequest.
        Public Shared Function NewRos1Humanoid_plan_arm_trajectoryExecuteArmActionRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Humanoid_plan_arm_trajectoryExecuteArmActionRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Humanoid_plan_arm_trajectoryExecuteArmActionRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of humanoid_plan_arm_trajectory/ExecuteArmActionResponse.
        Public Shared Function NewRos1Humanoid_plan_arm_trajectoryExecuteArmActionResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Humanoid_plan_arm_trajectoryExecuteArmActionResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Humanoid_plan_arm_trajectoryExecuteArmActionResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of humanoid_plan_arm_trajectory/RobotActionState.
        Public Shared Function NewRos1Humanoid_plan_arm_trajectoryRobotActionState() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryRobotActionState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryRobotActionState()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Humanoid_plan_arm_trajectoryRobotActionState(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryRobotActionState) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Humanoid_plan_arm_trajectoryRobotActionStateCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Humanoid_plan_arm_trajectoryRobotActionState(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryRobotActionState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Humanoid_plan_arm_trajectoryRobotActionStateCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of humanoid_plan_arm_trajectory/bezierCurveCubicPoint.
        Public Shared Function NewRos1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPointCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPointCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of humanoid_plan_arm_trajectory/jointBezierTrajectory.
        Public Shared Function NewRos1Humanoid_plan_arm_trajectoryJointBezierTrajectory() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Humanoid_plan_arm_trajectoryJointBezierTrajectory(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectoryCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Humanoid_plan_arm_trajectoryJointBezierTrajectory(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectoryCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of humanoid_plan_arm_trajectory/planArmState.
        Public Shared Function NewRos1Humanoid_plan_arm_trajectoryPlanArmState() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryPlanArmState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryPlanArmState()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Humanoid_plan_arm_trajectoryPlanArmState(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryPlanArmState) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Humanoid_plan_arm_trajectoryPlanArmStateCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Humanoid_plan_arm_trajectoryPlanArmState(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryPlanArmState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Humanoid_plan_arm_trajectoryPlanArmStateCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of humanoid_plan_arm_trajectory/planArmTrajectoryBezierCurveRequest.
        Public Shared Function NewRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of humanoid_plan_arm_trajectory/planArmTrajectoryBezierCurveResponse.
        Public Shared Function NewRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of duration.
        Public Shared Function NewRos1Duration() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Duration
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Duration()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Duration(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Duration) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1DurationCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Duration(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Duration
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1DurationCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of trajectory_msgs/JointTrajectoryPoint.
        Public Shared Function NewRos1Trajectory_msgsJointTrajectoryPoint() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Trajectory_msgsJointTrajectoryPoint
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Trajectory_msgsJointTrajectoryPoint()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Trajectory_msgsJointTrajectoryPoint(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Trajectory_msgsJointTrajectoryPoint) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Trajectory_msgsJointTrajectoryPointCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Trajectory_msgsJointTrajectoryPoint(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Trajectory_msgsJointTrajectoryPoint
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Trajectory_msgsJointTrajectoryPointCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of trajectory_msgs/JointTrajectory.
        Public Shared Function NewRos1Trajectory_msgsJointTrajectory() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Trajectory_msgsJointTrajectory
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Trajectory_msgsJointTrajectory()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Trajectory_msgsJointTrajectory(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Trajectory_msgsJointTrajectory) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Trajectory_msgsJointTrajectoryCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Trajectory_msgsJointTrajectory(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Trajectory_msgsJointTrajectory
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Trajectory_msgsJointTrajectoryCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of humanoid_plan_arm_trajectory/planArmTrajectoryCubicSplineRequest.
        Public Shared Function NewRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of humanoid_plan_arm_trajectory/planArmTrajectoryCubicSplineResponse.
        Public Shared Function NewRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kindr_msgs/VectorAtPosition.
        Public Shared Function NewRos1Kindr_msgsVectorAtPosition() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kindr_msgsVectorAtPosition
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kindr_msgsVectorAtPosition()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kindr_msgsVectorAtPosition(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kindr_msgsVectorAtPosition) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kindr_msgsVectorAtPositionCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kindr_msgsVectorAtPosition(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kindr_msgsVectorAtPosition
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kindr_msgsVectorAtPositionCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_audio_player/audio_statusRequest.
        Public Shared Function NewRos1Kuavo_audio_playerAudio_statusRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_audio_playerAudio_statusRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_audio_playerAudio_statusRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_audio_playerAudio_statusRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_audio_playerAudio_statusRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_audio_playerAudio_statusRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_audio_playerAudio_statusRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_audio_playerAudio_statusRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_audio_playerAudio_statusRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_audio_player/audio_statusResponse.
        Public Shared Function NewRos1Kuavo_audio_playerAudio_statusResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_audio_playerAudio_statusResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_audio_playerAudio_statusResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_audio_playerAudio_statusResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_audio_playerAudio_statusResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_audio_playerAudio_statusResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_audio_playerAudio_statusResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_audio_playerAudio_statusResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_audio_playerAudio_statusResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_audio_player/playmusicRequest.
        Public Shared Function NewRos1Kuavo_audio_playerPlaymusicRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_audio_playerPlaymusicRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_audio_playerPlaymusicRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_audio_playerPlaymusicRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_audio_playerPlaymusicRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_audio_playerPlaymusicRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_audio_playerPlaymusicRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_audio_playerPlaymusicRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_audio_playerPlaymusicRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_audio_player/playmusicResponse.
        Public Shared Function NewRos1Kuavo_audio_playerPlaymusicResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_audio_playerPlaymusicResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_audio_playerPlaymusicResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_audio_playerPlaymusicResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_audio_playerPlaymusicResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_audio_playerPlaymusicResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_audio_playerPlaymusicResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_audio_playerPlaymusicResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_audio_playerPlaymusicResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_mapping/DeleteMapRequest.
        Public Shared Function NewRos1Kuavo_mappingDeleteMapRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingDeleteMapRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingDeleteMapRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_mappingDeleteMapRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingDeleteMapRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingDeleteMapRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_mappingDeleteMapRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingDeleteMapRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingDeleteMapRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_mapping/DeleteMapResponse.
        Public Shared Function NewRos1Kuavo_mappingDeleteMapResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingDeleteMapResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingDeleteMapResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_mappingDeleteMapResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingDeleteMapResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingDeleteMapResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_mappingDeleteMapResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingDeleteMapResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingDeleteMapResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_mapping/EditMapRequest.
        Public Shared Function NewRos1Kuavo_mappingEditMapRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingEditMapRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingEditMapRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_mappingEditMapRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingEditMapRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingEditMapRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_mappingEditMapRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingEditMapRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingEditMapRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_mapping/EditMapResponse.
        Public Shared Function NewRos1Kuavo_mappingEditMapResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingEditMapResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingEditMapResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_mappingEditMapResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingEditMapResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingEditMapResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_mappingEditMapResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingEditMapResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingEditMapResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_mapping/GetAllMapsRequest.
        Public Shared Function NewRos1Kuavo_mappingGetAllMapsRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingGetAllMapsRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingGetAllMapsRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_mappingGetAllMapsRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingGetAllMapsRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingGetAllMapsRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_mappingGetAllMapsRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingGetAllMapsRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingGetAllMapsRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_mapping/GetAllMapsResponse.
        Public Shared Function NewRos1Kuavo_mappingGetAllMapsResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingGetAllMapsResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingGetAllMapsResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_mappingGetAllMapsResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingGetAllMapsResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingGetAllMapsResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_mappingGetAllMapsResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingGetAllMapsResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingGetAllMapsResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_mapping/GetCurrentMapRequest.
        Public Shared Function NewRos1Kuavo_mappingGetCurrentMapRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingGetCurrentMapRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingGetCurrentMapRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_mappingGetCurrentMapRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingGetCurrentMapRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingGetCurrentMapRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_mappingGetCurrentMapRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingGetCurrentMapRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingGetCurrentMapRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_mapping/GetCurrentMapResponse.
        Public Shared Function NewRos1Kuavo_mappingGetCurrentMapResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingGetCurrentMapResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingGetCurrentMapResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_mappingGetCurrentMapResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingGetCurrentMapResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingGetCurrentMapResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_mappingGetCurrentMapResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingGetCurrentMapResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingGetCurrentMapResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_mapping/InitialPoseWithTaskPointRequest.
        Public Shared Function NewRos1Kuavo_mappingInitialPoseWithTaskPointRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingInitialPoseWithTaskPointRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingInitialPoseWithTaskPointRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_mappingInitialPoseWithTaskPointRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingInitialPoseWithTaskPointRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingInitialPoseWithTaskPointRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_mappingInitialPoseWithTaskPointRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingInitialPoseWithTaskPointRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingInitialPoseWithTaskPointRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_mapping/InitialPoseWithTaskPointResponse.
        Public Shared Function NewRos1Kuavo_mappingInitialPoseWithTaskPointResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingInitialPoseWithTaskPointResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingInitialPoseWithTaskPointResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_mappingInitialPoseWithTaskPointResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingInitialPoseWithTaskPointResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingInitialPoseWithTaskPointResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_mappingInitialPoseWithTaskPointResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingInitialPoseWithTaskPointResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingInitialPoseWithTaskPointResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_mapping/LoadMapRequest.
        Public Shared Function NewRos1Kuavo_mappingLoadMapRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingLoadMapRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingLoadMapRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_mappingLoadMapRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingLoadMapRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingLoadMapRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_mappingLoadMapRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingLoadMapRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingLoadMapRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_mapping/LoadMapResponse.
        Public Shared Function NewRos1Kuavo_mappingLoadMapResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingLoadMapResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingLoadMapResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_mappingLoadMapResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingLoadMapResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingLoadMapResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_mappingLoadMapResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingLoadMapResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingLoadMapResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_mapping/NavigateToTaskPointRequest.
        Public Shared Function NewRos1Kuavo_mappingNavigateToTaskPointRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingNavigateToTaskPointRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingNavigateToTaskPointRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_mappingNavigateToTaskPointRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingNavigateToTaskPointRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingNavigateToTaskPointRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_mappingNavigateToTaskPointRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingNavigateToTaskPointRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingNavigateToTaskPointRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_mapping/NavigateToTaskPointResponse.
        Public Shared Function NewRos1Kuavo_mappingNavigateToTaskPointResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingNavigateToTaskPointResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingNavigateToTaskPointResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_mappingNavigateToTaskPointResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingNavigateToTaskPointResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingNavigateToTaskPointResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_mappingNavigateToTaskPointResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingNavigateToTaskPointResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingNavigateToTaskPointResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_mapping/RenameMapRequest.
        Public Shared Function NewRos1Kuavo_mappingRenameMapRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingRenameMapRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingRenameMapRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_mappingRenameMapRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingRenameMapRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingRenameMapRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_mappingRenameMapRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingRenameMapRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingRenameMapRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_mapping/RenameMapResponse.
        Public Shared Function NewRos1Kuavo_mappingRenameMapResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingRenameMapResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingRenameMapResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_mappingRenameMapResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingRenameMapResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingRenameMapResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_mappingRenameMapResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingRenameMapResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingRenameMapResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_mapping/SaveMapRequest.
        Public Shared Function NewRos1Kuavo_mappingSaveMapRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingSaveMapRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingSaveMapRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_mappingSaveMapRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingSaveMapRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingSaveMapRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_mappingSaveMapRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingSaveMapRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingSaveMapRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_mapping/SaveMapResponse.
        Public Shared Function NewRos1Kuavo_mappingSaveMapResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingSaveMapResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingSaveMapResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_mappingSaveMapResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingSaveMapResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingSaveMapResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_mappingSaveMapResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingSaveMapResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingSaveMapResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_mapping/SetInitialPoseRequest.
        Public Shared Function NewRos1Kuavo_mappingSetInitialPoseRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingSetInitialPoseRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingSetInitialPoseRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_mappingSetInitialPoseRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingSetInitialPoseRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingSetInitialPoseRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_mappingSetInitialPoseRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingSetInitialPoseRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingSetInitialPoseRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_mapping/SetInitialPoseResponse.
        Public Shared Function NewRos1Kuavo_mappingSetInitialPoseResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingSetInitialPoseResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingSetInitialPoseResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_mappingSetInitialPoseResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingSetInitialPoseResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingSetInitialPoseResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_mappingSetInitialPoseResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingSetInitialPoseResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingSetInitialPoseResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_mapping/StartMappingRequest.
        Public Shared Function NewRos1Kuavo_mappingStartMappingRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingStartMappingRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingStartMappingRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_mappingStartMappingRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingStartMappingRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingStartMappingRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_mappingStartMappingRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingStartMappingRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingStartMappingRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_mapping/StartMappingResponse.
        Public Shared Function NewRos1Kuavo_mappingStartMappingResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingStartMappingResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingStartMappingResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_mappingStartMappingResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingStartMappingResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingStartMappingResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_mappingStartMappingResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingStartMappingResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingStartMappingResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_mapping/StopMappingRequest.
        Public Shared Function NewRos1Kuavo_mappingStopMappingRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingStopMappingRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingStopMappingRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_mappingStopMappingRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingStopMappingRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingStopMappingRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_mappingStopMappingRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingStopMappingRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingStopMappingRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_mapping/StopMappingResponse.
        Public Shared Function NewRos1Kuavo_mappingStopMappingResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingStopMappingResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingStopMappingResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_mappingStopMappingResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingStopMappingResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingStopMappingResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_mappingStopMappingResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingStopMappingResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingStopMappingResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_mapping/TaskPoint.
        Public Shared Function NewRos1Kuavo_mappingTaskPoint() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingTaskPoint
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingTaskPoint()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_mappingTaskPoint(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingTaskPoint) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingTaskPointCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_mappingTaskPoint(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingTaskPoint
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingTaskPointCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_mapping/TaskPointOperationRequest.
        Public Shared Function NewRos1Kuavo_mappingTaskPointOperationRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingTaskPointOperationRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingTaskPointOperationRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_mappingTaskPointOperationRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingTaskPointOperationRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingTaskPointOperationRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_mappingTaskPointOperationRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingTaskPointOperationRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingTaskPointOperationRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_mapping/TaskPointOperationResponse.
        Public Shared Function NewRos1Kuavo_mappingTaskPointOperationResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingTaskPointOperationResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingTaskPointOperationResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_mappingTaskPointOperationResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingTaskPointOperationResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingTaskPointOperationResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_mappingTaskPointOperationResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_mappingTaskPointOperationResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_mappingTaskPointOperationResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/AprilTagDetection.
        Public Shared Function NewRos1Kuavo_msgsAprilTagDetection() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsAprilTagDetection
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsAprilTagDetection()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsAprilTagDetection(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsAprilTagDetection) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsAprilTagDetectionCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsAprilTagDetection(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsAprilTagDetection
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsAprilTagDetectionCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/AprilTagDetectionArray.
        Public Shared Function NewRos1Kuavo_msgsAprilTagDetectionArray() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsAprilTagDetectionArray
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsAprilTagDetectionArray()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsAprilTagDetectionArray(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsAprilTagDetectionArray) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsAprilTagDetectionArrayCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsAprilTagDetectionArray(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsAprilTagDetectionArray
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsAprilTagDetectionArrayCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/AudioPlaybackStatus.
        Public Shared Function NewRos1Kuavo_msgsAudioPlaybackStatus() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsAudioPlaybackStatus
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsAudioPlaybackStatus()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsAudioPlaybackStatus(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsAudioPlaybackStatus) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsAudioPlaybackStatusCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsAudioPlaybackStatus(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsAudioPlaybackStatus
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsAudioPlaybackStatusCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/AudioReceiverData.
        Public Shared Function NewRos1Kuavo_msgsAudioReceiverData() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsAudioReceiverData
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsAudioReceiverData()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsAudioReceiverData(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsAudioReceiverData) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsAudioReceiverDataCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsAudioReceiverData(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsAudioReceiverData
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsAudioReceiverDataCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/BatteryInfo.
        Public Shared Function NewRos1Kuavo_msgsBatteryInfo() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsBatteryInfo
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsBatteryInfo()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsBatteryInfo(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsBatteryInfo) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsBatteryInfoCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsBatteryInfo(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsBatteryInfo
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsBatteryInfoCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/Color.
        Public Shared Function NewRos1Kuavo_msgsColor() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsColor
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsColor()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsColor(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsColor) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsColorCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsColor(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsColor
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsColorCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/ControllerSwitchEvent.
        Public Shared Function NewRos1Kuavo_msgsControllerSwitchEvent() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsControllerSwitchEvent
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsControllerSwitchEvent()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsControllerSwitchEvent(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsControllerSwitchEvent) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsControllerSwitchEventCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsControllerSwitchEvent(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsControllerSwitchEvent
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsControllerSwitchEventCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/CreatePathRequest.
        Public Shared Function NewRos1Kuavo_msgsCreatePathRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsCreatePathRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsCreatePathRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsCreatePathRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsCreatePathRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsCreatePathRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsCreatePathRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsCreatePathRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsCreatePathRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of nav_msgs/Path.
        Public Shared Function NewRos1Nav_msgsPath() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nav_msgsPath
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nav_msgsPath()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Nav_msgsPath(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nav_msgsPath) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nav_msgsPathCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Nav_msgsPath(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nav_msgsPath
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nav_msgsPathCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/CreatePathResponse.
        Public Shared Function NewRos1Kuavo_msgsCreatePathResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsCreatePathResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsCreatePathResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsCreatePathResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsCreatePathResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsCreatePathResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsCreatePathResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsCreatePathResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsCreatePathResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/DanceTrajectoryState.
        Public Shared Function NewRos1Kuavo_msgsDanceTrajectoryState() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsDanceTrajectoryState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsDanceTrajectoryState()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsDanceTrajectoryState(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsDanceTrajectoryState) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsDanceTrajectoryStateCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsDanceTrajectoryState(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsDanceTrajectoryState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsDanceTrajectoryStateCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/ExecuteArmActionRequest.
        Public Shared Function NewRos1Kuavo_msgsExecuteArmActionRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsExecuteArmActionRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsExecuteArmActionRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsExecuteArmActionRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsExecuteArmActionRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsExecuteArmActionRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsExecuteArmActionRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsExecuteArmActionRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsExecuteArmActionRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/ExecuteArmActionResponse.
        Public Shared Function NewRos1Kuavo_msgsExecuteArmActionResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsExecuteArmActionResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsExecuteArmActionResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsExecuteArmActionResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsExecuteArmActionResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsExecuteArmActionResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsExecuteArmActionResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsExecuteArmActionResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsExecuteArmActionResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/FTsensorData.
        Public Shared Function NewRos1Kuavo_msgsFTsensorData() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFTsensorData
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFTsensorData()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsFTsensorData(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFTsensorData) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFTsensorDataCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsFTsensorData(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFTsensorData
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFTsensorDataCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/FaceBoundingBox.
        Public Shared Function NewRos1Kuavo_msgsFaceBoundingBox() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFaceBoundingBox
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFaceBoundingBox()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsFaceBoundingBox(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFaceBoundingBox) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFaceBoundingBoxCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsFaceBoundingBox(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFaceBoundingBox
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFaceBoundingBoxCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/FallStandCommandRequest.
        Public Shared Function NewRos1Kuavo_msgsFallStandCommandRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFallStandCommandRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFallStandCommandRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsFallStandCommandRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFallStandCommandRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFallStandCommandRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsFallStandCommandRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFallStandCommandRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFallStandCommandRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/FallStandCommandResponse.
        Public Shared Function NewRos1Kuavo_msgsFallStandCommandResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFallStandCommandResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFallStandCommandResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsFallStandCommandResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFallStandCommandResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFallStandCommandResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsFallStandCommandResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFallStandCommandResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFallStandCommandResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/Float32MultiArrayStamped.
        Public Shared Function NewRos1Kuavo_msgsFloat32MultiArrayStamped() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFloat32MultiArrayStamped
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFloat32MultiArrayStamped()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsFloat32MultiArrayStamped(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFloat32MultiArrayStamped) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFloat32MultiArrayStampedCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsFloat32MultiArrayStamped(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFloat32MultiArrayStamped
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFloat32MultiArrayStampedCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/GetAllMapsRequest.
        Public Shared Function NewRos1Kuavo_msgsGetAllMapsRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetAllMapsRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetAllMapsRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsGetAllMapsRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetAllMapsRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetAllMapsRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsGetAllMapsRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetAllMapsRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetAllMapsRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/GetAllMapsResponse.
        Public Shared Function NewRos1Kuavo_msgsGetAllMapsResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetAllMapsResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetAllMapsResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsGetAllMapsResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetAllMapsResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetAllMapsResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsGetAllMapsResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetAllMapsResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetAllMapsResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/GetBatteryInfoRequest.
        Public Shared Function NewRos1Kuavo_msgsGetBatteryInfoRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetBatteryInfoRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetBatteryInfoRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsGetBatteryInfoRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetBatteryInfoRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetBatteryInfoRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsGetBatteryInfoRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetBatteryInfoRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetBatteryInfoRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/GetBatteryInfoResponse.
        Public Shared Function NewRos1Kuavo_msgsGetBatteryInfoResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetBatteryInfoResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetBatteryInfoResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsGetBatteryInfoResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetBatteryInfoResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetBatteryInfoResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsGetBatteryInfoResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetBatteryInfoResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetBatteryInfoResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/GetCurrentMapRequest.
        Public Shared Function NewRos1Kuavo_msgsGetCurrentMapRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetCurrentMapRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetCurrentMapRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsGetCurrentMapRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetCurrentMapRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetCurrentMapRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsGetCurrentMapRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetCurrentMapRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetCurrentMapRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/GetCurrentMapResponse.
        Public Shared Function NewRos1Kuavo_msgsGetCurrentMapResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetCurrentMapResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetCurrentMapResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsGetCurrentMapResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetCurrentMapResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetCurrentMapResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsGetCurrentMapResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetCurrentMapResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetCurrentMapResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/GetPowerBoardStatusRequest.
        Public Shared Function NewRos1Kuavo_msgsGetPowerBoardStatusRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetPowerBoardStatusRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetPowerBoardStatusRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsGetPowerBoardStatusRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetPowerBoardStatusRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetPowerBoardStatusRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsGetPowerBoardStatusRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetPowerBoardStatusRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetPowerBoardStatusRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/PowerBoardStatus.
        Public Shared Function NewRos1Kuavo_msgsPowerBoardStatus() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPowerBoardStatus
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPowerBoardStatus()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsPowerBoardStatus(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPowerBoardStatus) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsPowerBoardStatusCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsPowerBoardStatus(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPowerBoardStatus
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsPowerBoardStatusCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/GetPowerBoardStatusResponse.
        Public Shared Function NewRos1Kuavo_msgsGetPowerBoardStatusResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetPowerBoardStatusResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetPowerBoardStatusResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsGetPowerBoardStatusResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetPowerBoardStatusResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetPowerBoardStatusResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsGetPowerBoardStatusResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetPowerBoardStatusResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetPowerBoardStatusResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/GetStringListRequest.
        Public Shared Function NewRos1Kuavo_msgsGetStringListRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetStringListRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetStringListRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsGetStringListRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetStringListRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetStringListRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsGetStringListRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetStringListRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetStringListRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/GetStringListResponse.
        Public Shared Function NewRos1Kuavo_msgsGetStringListResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetStringListResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetStringListResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsGetStringListResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetStringListResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetStringListResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsGetStringListResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetStringListResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetStringListResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/GetTargetPartPoseInCameraRequest.
        Public Shared Function NewRos1Kuavo_msgsGetTargetPartPoseInCameraRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetTargetPartPoseInCameraRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetTargetPartPoseInCameraRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsGetTargetPartPoseInCameraRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetTargetPartPoseInCameraRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetTargetPartPoseInCameraRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsGetTargetPartPoseInCameraRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetTargetPartPoseInCameraRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetTargetPartPoseInCameraRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/GetTargetPartPoseInCameraResponse.
        Public Shared Function NewRos1Kuavo_msgsGetTargetPartPoseInCameraResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetTargetPartPoseInCameraResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetTargetPartPoseInCameraResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsGetTargetPartPoseInCameraResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetTargetPartPoseInCameraResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetTargetPartPoseInCameraResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsGetTargetPartPoseInCameraResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetTargetPartPoseInCameraResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetTargetPartPoseInCameraResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/InitialPoseWithTaskPointRequest.
        Public Shared Function NewRos1Kuavo_msgsInitialPoseWithTaskPointRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsInitialPoseWithTaskPointRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsInitialPoseWithTaskPointRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsInitialPoseWithTaskPointRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsInitialPoseWithTaskPointRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsInitialPoseWithTaskPointRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsInitialPoseWithTaskPointRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsInitialPoseWithTaskPointRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsInitialPoseWithTaskPointRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/InitialPoseWithTaskPointResponse.
        Public Shared Function NewRos1Kuavo_msgsInitialPoseWithTaskPointResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsInitialPoseWithTaskPointResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsInitialPoseWithTaskPointResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsInitialPoseWithTaskPointResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsInitialPoseWithTaskPointResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsInitialPoseWithTaskPointResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsInitialPoseWithTaskPointResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsInitialPoseWithTaskPointResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsInitialPoseWithTaskPointResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/JoySticks.
        Public Shared Function NewRos1Kuavo_msgsJoySticks() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsJoySticks
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsJoySticks()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsJoySticks(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsJoySticks) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsJoySticksCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsJoySticks(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsJoySticks
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsJoySticksCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/LoadMapRequest.
        Public Shared Function NewRos1Kuavo_msgsLoadMapRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLoadMapRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLoadMapRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsLoadMapRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLoadMapRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsLoadMapRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsLoadMapRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLoadMapRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsLoadMapRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/LoadMapResponse.
        Public Shared Function NewRos1Kuavo_msgsLoadMapResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLoadMapResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLoadMapResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsLoadMapResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLoadMapResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsLoadMapResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsLoadMapResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLoadMapResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsLoadMapResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/Metadata.
        Public Shared Function NewRos1Kuavo_msgsMetadata() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsMetadata
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsMetadata()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsMetadata(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsMetadata) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsMetadataCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsMetadata(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsMetadata
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsMetadataCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/MmDetectionMsg.
        Public Shared Function NewRos1Kuavo_msgsMmDetectionMsg() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsMmDetectionMsg
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsMmDetectionMsg()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsMmDetectionMsg(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsMmDetectionMsg) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsMmDetectionMsgCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsMmDetectionMsg(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsMmDetectionMsg
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsMmDetectionMsgCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/MocapPoseRetarget.
        Public Shared Function NewRos1Kuavo_msgsMocapPoseRetarget() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsMocapPoseRetarget
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsMocapPoseRetarget()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsMocapPoseRetarget(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsMocapPoseRetarget) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsMocapPoseRetargetCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsMocapPoseRetarget(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsMocapPoseRetarget
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsMocapPoseRetargetCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/NavigateToTaskPointRequest.
        Public Shared Function NewRos1Kuavo_msgsNavigateToTaskPointRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsNavigateToTaskPointRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsNavigateToTaskPointRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsNavigateToTaskPointRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsNavigateToTaskPointRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsNavigateToTaskPointRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsNavigateToTaskPointRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsNavigateToTaskPointRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsNavigateToTaskPointRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/NavigateToTaskPointResponse.
        Public Shared Function NewRos1Kuavo_msgsNavigateToTaskPointResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsNavigateToTaskPointResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsNavigateToTaskPointResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsNavigateToTaskPointResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsNavigateToTaskPointResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsNavigateToTaskPointResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsNavigateToTaskPointResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsNavigateToTaskPointResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsNavigateToTaskPointResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/PlayMusicImmediateRequest.
        Public Shared Function NewRos1Kuavo_msgsPlayMusicImmediateRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPlayMusicImmediateRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPlayMusicImmediateRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsPlayMusicImmediateRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPlayMusicImmediateRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsPlayMusicImmediateRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsPlayMusicImmediateRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPlayMusicImmediateRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsPlayMusicImmediateRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/PlayMusicImmediateResponse.
        Public Shared Function NewRos1Kuavo_msgsPlayMusicImmediateResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPlayMusicImmediateResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPlayMusicImmediateResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsPlayMusicImmediateResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPlayMusicImmediateResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsPlayMusicImmediateResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsPlayMusicImmediateResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPlayMusicImmediateResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsPlayMusicImmediateResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/RelaySelectChannelRequest.
        Public Shared Function NewRos1Kuavo_msgsRelaySelectChannelRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRelaySelectChannelRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRelaySelectChannelRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsRelaySelectChannelRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRelaySelectChannelRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsRelaySelectChannelRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsRelaySelectChannelRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRelaySelectChannelRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsRelaySelectChannelRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/RelaySelectChannelResponse.
        Public Shared Function NewRos1Kuavo_msgsRelaySelectChannelResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRelaySelectChannelResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRelaySelectChannelResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsRelaySelectChannelResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRelaySelectChannelResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsRelaySelectChannelResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsRelaySelectChannelResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRelaySelectChannelResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsRelaySelectChannelResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/RepublishTFsRequest.
        Public Shared Function NewRos1Kuavo_msgsRepublishTFsRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRepublishTFsRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRepublishTFsRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsRepublishTFsRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRepublishTFsRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsRepublishTFsRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsRepublishTFsRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRepublishTFsRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsRepublishTFsRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/RepublishTFsResponse.
        Public Shared Function NewRos1Kuavo_msgsRepublishTFsResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRepublishTFsResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRepublishTFsResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsRepublishTFsResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRepublishTFsResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsRepublishTFsResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsRepublishTFsResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRepublishTFsResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsRepublishTFsResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/RigidBodyDescription.
        Public Shared Function NewRos1Kuavo_msgsRigidBodyDescription() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRigidBodyDescription
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRigidBodyDescription()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsRigidBodyDescription(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRigidBodyDescription) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsRigidBodyDescriptionCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsRigidBodyDescription(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRigidBodyDescription
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsRigidBodyDescriptionCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/RigidBodyFrame.
        Public Shared Function NewRos1Kuavo_msgsRigidBodyFrame() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRigidBodyFrame
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRigidBodyFrame()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsRigidBodyFrame(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRigidBodyFrame) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsRigidBodyFrameCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsRigidBodyFrame(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRigidBodyFrame
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsRigidBodyFrameCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/RobotActionState.
        Public Shared Function NewRos1Kuavo_msgsRobotActionState() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRobotActionState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRobotActionState()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsRobotActionState(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRobotActionState) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsRobotActionStateCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsRobotActionState(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRobotActionState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsRobotActionStateCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/SetHeadControlModeRequest.
        Public Shared Function NewRos1Kuavo_msgsSetHeadControlModeRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetHeadControlModeRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetHeadControlModeRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSetHeadControlModeRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetHeadControlModeRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetHeadControlModeRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSetHeadControlModeRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetHeadControlModeRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetHeadControlModeRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/SetHeadControlModeResponse.
        Public Shared Function NewRos1Kuavo_msgsSetHeadControlModeResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetHeadControlModeResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetHeadControlModeResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSetHeadControlModeResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetHeadControlModeResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetHeadControlModeResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSetHeadControlModeResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetHeadControlModeResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetHeadControlModeResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/SetIncrementalArmTrajLinkRequest.
        Public Shared Function NewRos1Kuavo_msgsSetIncrementalArmTrajLinkRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSetIncrementalArmTrajLinkRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSetIncrementalArmTrajLinkRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/SetIncrementalArmTrajLinkResponse.
        Public Shared Function NewRos1Kuavo_msgsSetIncrementalArmTrajLinkResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSetIncrementalArmTrajLinkResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSetIncrementalArmTrajLinkResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/SetInitialPoseRequest.
        Public Shared Function NewRos1Kuavo_msgsSetInitialPoseRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetInitialPoseRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetInitialPoseRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSetInitialPoseRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetInitialPoseRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetInitialPoseRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSetInitialPoseRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetInitialPoseRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetInitialPoseRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/SetInitialPoseResponse.
        Public Shared Function NewRos1Kuavo_msgsSetInitialPoseResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetInitialPoseResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetInitialPoseResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSetInitialPoseResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetInitialPoseResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetInitialPoseResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSetInitialPoseResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetInitialPoseResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetInitialPoseResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/SetJoyTopicRequest.
        Public Shared Function NewRos1Kuavo_msgsSetJoyTopicRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetJoyTopicRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetJoyTopicRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSetJoyTopicRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetJoyTopicRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetJoyTopicRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSetJoyTopicRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetJoyTopicRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetJoyTopicRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/SetJoyTopicResponse.
        Public Shared Function NewRos1Kuavo_msgsSetJoyTopicResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetJoyTopicResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetJoyTopicResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSetJoyTopicResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetJoyTopicResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetJoyTopicResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSetJoyTopicResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetJoyTopicResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetJoyTopicResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/SetLEDModeRequest.
        Public Shared Function NewRos1Kuavo_msgsSetLEDModeRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetLEDModeRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetLEDModeRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSetLEDModeRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetLEDModeRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetLEDModeRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSetLEDModeRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetLEDModeRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetLEDModeRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/SetLEDModeResponse.
        Public Shared Function NewRos1Kuavo_msgsSetLEDModeResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetLEDModeResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetLEDModeResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSetLEDModeResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetLEDModeResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetLEDModeResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSetLEDModeResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetLEDModeResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetLEDModeResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/SetLEDMode_freeRequest.
        Public Shared Function NewRos1Kuavo_msgsSetLEDMode_freeRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetLEDMode_freeRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetLEDMode_freeRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSetLEDMode_freeRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetLEDMode_freeRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetLEDMode_freeRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSetLEDMode_freeRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetLEDMode_freeRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetLEDMode_freeRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/SetLEDMode_freeResponse.
        Public Shared Function NewRos1Kuavo_msgsSetLEDMode_freeResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetLEDMode_freeResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetLEDMode_freeResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSetLEDMode_freeResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetLEDMode_freeResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetLEDMode_freeResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSetLEDMode_freeResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetLEDMode_freeResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetLEDMode_freeResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/SetStringRequest.
        Public Shared Function NewRos1Kuavo_msgsSetStringRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetStringRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetStringRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSetStringRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetStringRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetStringRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSetStringRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetStringRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetStringRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/SetStringResponse.
        Public Shared Function NewRos1Kuavo_msgsSetStringResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetStringResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetStringResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSetStringResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetStringResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetStringResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSetStringResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetStringResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetStringResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/SkeletonFrame.
        Public Shared Function NewRos1Kuavo_msgsSkeletonFrame() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSkeletonFrame
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSkeletonFrame()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSkeletonFrame(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSkeletonFrame) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSkeletonFrameCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSkeletonFrame(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSkeletonFrame
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSkeletonFrameCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/SpeechSynthesisRequest.
        Public Shared Function NewRos1Kuavo_msgsSpeechSynthesisRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSpeechSynthesisRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSpeechSynthesisRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSpeechSynthesisRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSpeechSynthesisRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSpeechSynthesisRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSpeechSynthesisRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSpeechSynthesisRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSpeechSynthesisRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/SpeechSynthesisResponse.
        Public Shared Function NewRos1Kuavo_msgsSpeechSynthesisResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSpeechSynthesisResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSpeechSynthesisResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSpeechSynthesisResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSpeechSynthesisResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSpeechSynthesisResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSpeechSynthesisResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSpeechSynthesisResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSpeechSynthesisResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/TFArray.
        Public Shared Function NewRos1Kuavo_msgsTFArray() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTFArray
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTFArray()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsTFArray(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTFArray) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsTFArrayCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsTFArray(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTFArray
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsTFArrayCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/TaskPoint.
        Public Shared Function NewRos1Kuavo_msgsTaskPoint() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTaskPoint
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTaskPoint()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsTaskPoint(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTaskPoint) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsTaskPointCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsTaskPoint(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTaskPoint
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsTaskPointCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/TaskPointOperationRequest.
        Public Shared Function NewRos1Kuavo_msgsTaskPointOperationRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTaskPointOperationRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTaskPointOperationRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsTaskPointOperationRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTaskPointOperationRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsTaskPointOperationRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsTaskPointOperationRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTaskPointOperationRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsTaskPointOperationRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/TaskPointOperationResponse.
        Public Shared Function NewRos1Kuavo_msgsTaskPointOperationResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTaskPointOperationResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTaskPointOperationResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsTaskPointOperationResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTaskPointOperationResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsTaskPointOperationResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsTaskPointOperationResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTaskPointOperationResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsTaskPointOperationResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/TransportModeCommandRequest.
        Public Shared Function NewRos1Kuavo_msgsTransportModeCommandRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTransportModeCommandRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTransportModeCommandRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsTransportModeCommandRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTransportModeCommandRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsTransportModeCommandRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsTransportModeCommandRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTransportModeCommandRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsTransportModeCommandRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/TransportModeCommandResponse.
        Public Shared Function NewRos1Kuavo_msgsTransportModeCommandResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTransportModeCommandResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTransportModeCommandResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsTransportModeCommandResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTransportModeCommandResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsTransportModeCommandResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsTransportModeCommandResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTransportModeCommandResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsTransportModeCommandResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/VMPTrajectoryState.
        Public Shared Function NewRos1Kuavo_msgsVMPTrajectoryState() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsVMPTrajectoryState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsVMPTrajectoryState()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsVMPTrajectoryState(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsVMPTrajectoryState) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsVMPTrajectoryStateCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsVMPTrajectoryState(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsVMPTrajectoryState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsVMPTrajectoryStateCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/accessIkSolveRequest.
        Public Shared Function NewRos1Kuavo_msgsAccessIkSolveRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsAccessIkSolveRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsAccessIkSolveRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsAccessIkSolveRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsAccessIkSolveRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsAccessIkSolveRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsAccessIkSolveRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsAccessIkSolveRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsAccessIkSolveRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/accessIkSolveResponse.
        Public Shared Function NewRos1Kuavo_msgsAccessIkSolveResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsAccessIkSolveResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsAccessIkSolveResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsAccessIkSolveResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsAccessIkSolveResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsAccessIkSolveResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsAccessIkSolveResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsAccessIkSolveResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsAccessIkSolveResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/adjustZeroPointRequest.
        Public Shared Function NewRos1Kuavo_msgsAdjustZeroPointRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsAdjustZeroPointRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsAdjustZeroPointRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsAdjustZeroPointRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsAdjustZeroPointRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsAdjustZeroPointRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsAdjustZeroPointRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsAdjustZeroPointRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsAdjustZeroPointRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/adjustZeroPointResponse.
        Public Shared Function NewRos1Kuavo_msgsAdjustZeroPointResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsAdjustZeroPointResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsAdjustZeroPointResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsAdjustZeroPointResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsAdjustZeroPointResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsAdjustZeroPointResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsAdjustZeroPointResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsAdjustZeroPointResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsAdjustZeroPointResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/armCollisionCheckInfo.
        Public Shared Function NewRos1Kuavo_msgsArmCollisionCheckInfo() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsArmCollisionCheckInfo
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsArmCollisionCheckInfo()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsArmCollisionCheckInfo(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsArmCollisionCheckInfo) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsArmCollisionCheckInfoCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsArmCollisionCheckInfo(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsArmCollisionCheckInfo
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsArmCollisionCheckInfoCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/armHandPose.
        Public Shared Function NewRos1Kuavo_msgsArmHandPose() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsArmHandPose
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsArmHandPose()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsArmHandPose(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsArmHandPose) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsArmHandPoseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsArmHandPose(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsArmHandPose
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsArmHandPoseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/armHandPoseFree.
        Public Shared Function NewRos1Kuavo_msgsArmHandPoseFree() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsArmHandPoseFree
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsArmHandPoseFree()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsArmHandPoseFree(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsArmHandPoseFree) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsArmHandPoseFreeCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsArmHandPoseFree(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsArmHandPoseFree
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsArmHandPoseFreeCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/armPoseWithTimeStamp.
        Public Shared Function NewRos1Kuavo_msgsArmPoseWithTimeStamp() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsArmPoseWithTimeStamp
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsArmPoseWithTimeStamp()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsArmPoseWithTimeStamp(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsArmPoseWithTimeStamp) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsArmPoseWithTimeStampCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsArmPoseWithTimeStamp(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsArmPoseWithTimeStamp
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsArmPoseWithTimeStampCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/armTargetPoses.
        Public Shared Function NewRos1Kuavo_msgsArmTargetPoses() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsArmTargetPoses
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsArmTargetPoses()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsArmTargetPoses(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsArmTargetPoses) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsArmTargetPosesCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsArmTargetPoses(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsArmTargetPoses
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsArmTargetPosesCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/bezierCurveCubicPoint.
        Public Shared Function NewRos1Kuavo_msgsBezierCurveCubicPoint() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsBezierCurveCubicPoint
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsBezierCurveCubicPoint()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsBezierCurveCubicPoint(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsBezierCurveCubicPoint) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsBezierCurveCubicPointCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsBezierCurveCubicPoint(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsBezierCurveCubicPoint
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsBezierCurveCubicPointCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/changeArmCtrlModeRequest.
        Public Shared Function NewRos1Kuavo_msgsChangeArmCtrlModeRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeArmCtrlModeRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeArmCtrlModeRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsChangeArmCtrlModeRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeArmCtrlModeRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsChangeArmCtrlModeRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsChangeArmCtrlModeRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeArmCtrlModeRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsChangeArmCtrlModeRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/changeArmCtrlModeResponse.
        Public Shared Function NewRos1Kuavo_msgsChangeArmCtrlModeResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeArmCtrlModeResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeArmCtrlModeResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsChangeArmCtrlModeResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeArmCtrlModeResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsChangeArmCtrlModeResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsChangeArmCtrlModeResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeArmCtrlModeResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsChangeArmCtrlModeResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/changeArmCtrlModeKuavoRequest.
        Public Shared Function NewRos1Kuavo_msgsChangeArmCtrlModeKuavoRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsChangeArmCtrlModeKuavoRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsChangeArmCtrlModeKuavoRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/changeArmCtrlModeKuavoResponse.
        Public Shared Function NewRos1Kuavo_msgsChangeArmCtrlModeKuavoResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsChangeArmCtrlModeKuavoResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsChangeArmCtrlModeKuavoResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/changeLbMpcObsUpdateModeSrvRequest.
        Public Shared Function NewRos1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/changeLbMpcObsUpdateModeSrvResponse.
        Public Shared Function NewRos1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/changeLbQuickModeSrvRequest.
        Public Shared Function NewRos1Kuavo_msgsChangeLbQuickModeSrvRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeLbQuickModeSrvRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeLbQuickModeSrvRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsChangeLbQuickModeSrvRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeLbQuickModeSrvRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsChangeLbQuickModeSrvRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsChangeLbQuickModeSrvRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeLbQuickModeSrvRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsChangeLbQuickModeSrvRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/changeLbQuickModeSrvResponse.
        Public Shared Function NewRos1Kuavo_msgsChangeLbQuickModeSrvResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeLbQuickModeSrvResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeLbQuickModeSrvResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsChangeLbQuickModeSrvResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeLbQuickModeSrvResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsChangeLbQuickModeSrvResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsChangeLbQuickModeSrvResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeLbQuickModeSrvResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsChangeLbQuickModeSrvResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/motorParam.
        Public Shared Function NewRos1Kuavo_msgsMotorParam() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsMotorParam
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsMotorParam()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsMotorParam(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsMotorParam) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsMotorParamCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsMotorParam(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsMotorParam
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsMotorParamCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/changeMotorParamRequest.
        Public Shared Function NewRos1Kuavo_msgsChangeMotorParamRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeMotorParamRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeMotorParamRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsChangeMotorParamRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeMotorParamRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsChangeMotorParamRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsChangeMotorParamRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeMotorParamRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsChangeMotorParamRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/changeMotorParamResponse.
        Public Shared Function NewRos1Kuavo_msgsChangeMotorParamResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeMotorParamResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeMotorParamResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsChangeMotorParamResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeMotorParamResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsChangeMotorParamResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsChangeMotorParamResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeMotorParamResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsChangeMotorParamResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/changeTorsoCtrlModeRequest.
        Public Shared Function NewRos1Kuavo_msgsChangeTorsoCtrlModeRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeTorsoCtrlModeRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeTorsoCtrlModeRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsChangeTorsoCtrlModeRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeTorsoCtrlModeRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsChangeTorsoCtrlModeRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsChangeTorsoCtrlModeRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeTorsoCtrlModeRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsChangeTorsoCtrlModeRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/changeTorsoCtrlModeResponse.
        Public Shared Function NewRos1Kuavo_msgsChangeTorsoCtrlModeResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeTorsoCtrlModeResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeTorsoCtrlModeResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsChangeTorsoCtrlModeResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeTorsoCtrlModeResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsChangeTorsoCtrlModeResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsChangeTorsoCtrlModeResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeTorsoCtrlModeResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsChangeTorsoCtrlModeResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/changeWaistCtrlModeRequest.
        Public Shared Function NewRos1Kuavo_msgsChangeWaistCtrlModeRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeWaistCtrlModeRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeWaistCtrlModeRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsChangeWaistCtrlModeRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeWaistCtrlModeRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsChangeWaistCtrlModeRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsChangeWaistCtrlModeRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeWaistCtrlModeRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsChangeWaistCtrlModeRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/changeWaistCtrlModeResponse.
        Public Shared Function NewRos1Kuavo_msgsChangeWaistCtrlModeResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeWaistCtrlModeResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeWaistCtrlModeResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsChangeWaistCtrlModeResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeWaistCtrlModeResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsChangeWaistCtrlModeResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsChangeWaistCtrlModeResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChangeWaistCtrlModeResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsChangeWaistCtrlModeResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/chassisPoseCmdSrvRequest.
        Public Shared Function NewRos1Kuavo_msgsChassisPoseCmdSrvRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChassisPoseCmdSrvRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChassisPoseCmdSrvRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsChassisPoseCmdSrvRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChassisPoseCmdSrvRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsChassisPoseCmdSrvRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsChassisPoseCmdSrvRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChassisPoseCmdSrvRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsChassisPoseCmdSrvRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/chassisPoseCmdSrvResponse.
        Public Shared Function NewRos1Kuavo_msgsChassisPoseCmdSrvResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChassisPoseCmdSrvResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChassisPoseCmdSrvResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsChassisPoseCmdSrvResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChassisPoseCmdSrvResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsChassisPoseCmdSrvResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsChassisPoseCmdSrvResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsChassisPoseCmdSrvResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsChassisPoseCmdSrvResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/endEffectorData.
        Public Shared Function NewRos1Kuavo_msgsEndEffectorData() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsEndEffectorData
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsEndEffectorData()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsEndEffectorData(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsEndEffectorData) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsEndEffectorDataCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsEndEffectorData(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsEndEffectorData
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsEndEffectorDataCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/controlLejuClawRequest.
        Public Shared Function NewRos1Kuavo_msgsControlLejuClawRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsControlLejuClawRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsControlLejuClawRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsControlLejuClawRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsControlLejuClawRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsControlLejuClawRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsControlLejuClawRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsControlLejuClawRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsControlLejuClawRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/controlLejuClawResponse.
        Public Shared Function NewRos1Kuavo_msgsControlLejuClawResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsControlLejuClawResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsControlLejuClawResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsControlLejuClawResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsControlLejuClawResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsControlLejuClawResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsControlLejuClawResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsControlLejuClawResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsControlLejuClawResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/dexhandCommand.
        Public Shared Function NewRos1Kuavo_msgsDexhandCommand() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsDexhandCommand
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsDexhandCommand()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsDexhandCommand(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsDexhandCommand) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsDexhandCommandCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsDexhandCommand(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsDexhandCommand
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsDexhandCommandCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/touchSensorStatus.
        Public Shared Function NewRos1Kuavo_msgsTouchSensorStatus() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTouchSensorStatus
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTouchSensorStatus()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsTouchSensorStatus(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTouchSensorStatus) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsTouchSensorStatusCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsTouchSensorStatus(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTouchSensorStatus
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsTouchSensorStatusCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/dexhandTouchState.
        Public Shared Function NewRos1Kuavo_msgsDexhandTouchState() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsDexhandTouchState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsDexhandTouchState()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsDexhandTouchState(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsDexhandTouchState) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsDexhandTouchStateCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsDexhandTouchState(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsDexhandTouchState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsDexhandTouchStateCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/eePoseReachErrorRequest.
        Public Shared Function NewRos1Kuavo_msgsEePoseReachErrorRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsEePoseReachErrorRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsEePoseReachErrorRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsEePoseReachErrorRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsEePoseReachErrorRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsEePoseReachErrorRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsEePoseReachErrorRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsEePoseReachErrorRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsEePoseReachErrorRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/eePoseReachErrorResponse.
        Public Shared Function NewRos1Kuavo_msgsEePoseReachErrorResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsEePoseReachErrorResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsEePoseReachErrorResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsEePoseReachErrorResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsEePoseReachErrorResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsEePoseReachErrorResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsEePoseReachErrorResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsEePoseReachErrorResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsEePoseReachErrorResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/enableHandTouchSensorRequest.
        Public Shared Function NewRos1Kuavo_msgsEnableHandTouchSensorRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsEnableHandTouchSensorRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsEnableHandTouchSensorRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsEnableHandTouchSensorRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsEnableHandTouchSensorRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsEnableHandTouchSensorRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsEnableHandTouchSensorRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsEnableHandTouchSensorRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsEnableHandTouchSensorRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/enableHandTouchSensorResponse.
        Public Shared Function NewRos1Kuavo_msgsEnableHandTouchSensorResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsEnableHandTouchSensorResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsEnableHandTouchSensorResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsEnableHandTouchSensorResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsEnableHandTouchSensorResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsEnableHandTouchSensorResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsEnableHandTouchSensorResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsEnableHandTouchSensorResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsEnableHandTouchSensorResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/fkSrvRequest.
        Public Shared Function NewRos1Kuavo_msgsFkSrvRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFkSrvRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFkSrvRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsFkSrvRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFkSrvRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFkSrvRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsFkSrvRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFkSrvRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFkSrvRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/twoArmHandPose.
        Public Shared Function NewRos1Kuavo_msgsTwoArmHandPose() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTwoArmHandPose
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTwoArmHandPose()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsTwoArmHandPose(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTwoArmHandPose) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsTwoArmHandPoseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsTwoArmHandPose(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTwoArmHandPose
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsTwoArmHandPoseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/fkSrvResponse.
        Public Shared Function NewRos1Kuavo_msgsFkSrvResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFkSrvResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFkSrvResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsFkSrvResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFkSrvResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFkSrvResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsFkSrvResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFkSrvResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFkSrvResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/fkSrvWithReferFrameRequest.
        Public Shared Function NewRos1Kuavo_msgsFkSrvWithReferFrameRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFkSrvWithReferFrameRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFkSrvWithReferFrameRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsFkSrvWithReferFrameRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFkSrvWithReferFrameRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFkSrvWithReferFrameRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsFkSrvWithReferFrameRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFkSrvWithReferFrameRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFkSrvWithReferFrameRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/fkSrvWithReferFrameResponse.
        Public Shared Function NewRos1Kuavo_msgsFkSrvWithReferFrameResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFkSrvWithReferFrameResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFkSrvWithReferFrameResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsFkSrvWithReferFrameResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFkSrvWithReferFrameResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFkSrvWithReferFrameResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsFkSrvWithReferFrameResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFkSrvWithReferFrameResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFkSrvWithReferFrameResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/footPose.
        Public Shared Function NewRos1Kuavo_msgsFootPose() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPose
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPose()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsFootPose(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPose) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFootPoseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsFootPose(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPose
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFootPoseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/footPose6D.
        Public Shared Function NewRos1Kuavo_msgsFootPose6D() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPose6D
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPose6D()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsFootPose6D(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPose6D) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFootPose6DCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsFootPose6D(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPose6D
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFootPose6DCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/footPoses6D.
        Public Shared Function NewRos1Kuavo_msgsFootPoses6D() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPoses6D
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPoses6D()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsFootPoses6D(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPoses6D) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFootPoses6DCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsFootPoses6D(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPoses6D
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFootPoses6DCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/footPose6DTargetTrajectories.
        Public Shared Function NewRos1Kuavo_msgsFootPose6DTargetTrajectories() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPose6DTargetTrajectories
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPose6DTargetTrajectories()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsFootPose6DTargetTrajectories(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPose6DTargetTrajectories) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFootPose6DTargetTrajectoriesCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsFootPose6DTargetTrajectories(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPose6DTargetTrajectories
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFootPose6DTargetTrajectoriesCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/footPose6DTargetTrajectoriesSrvRequest.
        Public Shared Function NewRos1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/footPose6DTargetTrajectoriesSrvResponse.
        Public Shared Function NewRos1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/footPoses.
        Public Shared Function NewRos1Kuavo_msgsFootPoses() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPoses
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPoses()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsFootPoses(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPoses) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFootPosesCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsFootPoses(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPoses
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFootPosesCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/footPoseTargetTrajectories.
        Public Shared Function NewRos1Kuavo_msgsFootPoseTargetTrajectories() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPoseTargetTrajectories
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPoseTargetTrajectories()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsFootPoseTargetTrajectories(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPoseTargetTrajectories) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFootPoseTargetTrajectoriesCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsFootPoseTargetTrajectories(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPoseTargetTrajectories
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFootPoseTargetTrajectoriesCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/footPoseTargetTrajectoriesSrvRequest.
        Public Shared Function NewRos1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/footPoseTargetTrajectoriesSrvResponse.
        Public Shared Function NewRos1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/footPoseWithVision.
        Public Shared Function NewRos1Kuavo_msgsFootPoseWithVision() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPoseWithVision
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPoseWithVision()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsFootPoseWithVision(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPoseWithVision) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFootPoseWithVisionCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsFootPoseWithVision(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPoseWithVision
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFootPoseWithVisionCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/footPoseWithVisionArray.
        Public Shared Function NewRos1Kuavo_msgsFootPoseWithVisionArray() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPoseWithVisionArray
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPoseWithVisionArray()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsFootPoseWithVisionArray(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPoseWithVisionArray) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFootPoseWithVisionArrayCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsFootPoseWithVisionArray(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFootPoseWithVisionArray
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFootPoseWithVisionArrayCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/qv.
        Public Shared Function NewRos1Kuavo_msgsQv() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsQv
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsQv()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsQv(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsQv) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsQvCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsQv(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsQv
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsQvCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/fullBodyTargetTrajectories.
        Public Shared Function NewRos1Kuavo_msgsFullBodyTargetTrajectories() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFullBodyTargetTrajectories
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFullBodyTargetTrajectories()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsFullBodyTargetTrajectories(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFullBodyTargetTrajectories) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFullBodyTargetTrajectoriesCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsFullBodyTargetTrajectories(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsFullBodyTargetTrajectories
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsFullBodyTargetTrajectoriesCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/gaitTimeName.
        Public Shared Function NewRos1Kuavo_msgsGaitTimeName() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGaitTimeName
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGaitTimeName()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsGaitTimeName(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGaitTimeName) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGaitTimeNameCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsGaitTimeName(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGaitTimeName
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGaitTimeNameCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/gestureTask.
        Public Shared Function NewRos1Kuavo_msgsGestureTask() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGestureTask
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGestureTask()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsGestureTask(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGestureTask) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGestureTaskCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsGestureTask(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGestureTask
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGestureTaskCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/gestureExecuteRequest.
        Public Shared Function NewRos1Kuavo_msgsGestureExecuteRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGestureExecuteRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGestureExecuteRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsGestureExecuteRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGestureExecuteRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGestureExecuteRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsGestureExecuteRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGestureExecuteRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGestureExecuteRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/gestureExecuteResponse.
        Public Shared Function NewRos1Kuavo_msgsGestureExecuteResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGestureExecuteResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGestureExecuteResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsGestureExecuteResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGestureExecuteResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGestureExecuteResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsGestureExecuteResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGestureExecuteResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGestureExecuteResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/gestureExecuteStateRequest.
        Public Shared Function NewRos1Kuavo_msgsGestureExecuteStateRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGestureExecuteStateRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGestureExecuteStateRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsGestureExecuteStateRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGestureExecuteStateRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGestureExecuteStateRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsGestureExecuteStateRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGestureExecuteStateRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGestureExecuteStateRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/gestureExecuteStateResponse.
        Public Shared Function NewRos1Kuavo_msgsGestureExecuteStateResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGestureExecuteStateResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGestureExecuteStateResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsGestureExecuteStateResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGestureExecuteStateResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGestureExecuteStateResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsGestureExecuteStateResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGestureExecuteStateResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGestureExecuteStateResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/gestureInfo.
        Public Shared Function NewRos1Kuavo_msgsGestureInfo() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGestureInfo
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGestureInfo()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsGestureInfo(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGestureInfo) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGestureInfoCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsGestureInfo(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGestureInfo
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGestureInfoCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/gestureListRequest.
        Public Shared Function NewRos1Kuavo_msgsGestureListRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGestureListRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGestureListRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsGestureListRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGestureListRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGestureListRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsGestureListRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGestureListRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGestureListRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/gestureListResponse.
        Public Shared Function NewRos1Kuavo_msgsGestureListResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGestureListResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGestureListResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsGestureListResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGestureListResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGestureListResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsGestureListResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGestureListResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGestureListResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/getControllerListRequest.
        Public Shared Function NewRos1Kuavo_msgsGetControllerListRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetControllerListRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetControllerListRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsGetControllerListRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetControllerListRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetControllerListRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsGetControllerListRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetControllerListRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetControllerListRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/getControllerListResponse.
        Public Shared Function NewRos1Kuavo_msgsGetControllerListResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetControllerListResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetControllerListResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsGetControllerListResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetControllerListResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetControllerListResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsGetControllerListResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetControllerListResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetControllerListResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/getCurrentGaitNameRequest.
        Public Shared Function NewRos1Kuavo_msgsGetCurrentGaitNameRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetCurrentGaitNameRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetCurrentGaitNameRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsGetCurrentGaitNameRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetCurrentGaitNameRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetCurrentGaitNameRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsGetCurrentGaitNameRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetCurrentGaitNameRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetCurrentGaitNameRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/getCurrentGaitNameResponse.
        Public Shared Function NewRos1Kuavo_msgsGetCurrentGaitNameResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetCurrentGaitNameResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetCurrentGaitNameResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsGetCurrentGaitNameResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetCurrentGaitNameResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetCurrentGaitNameResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsGetCurrentGaitNameResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetCurrentGaitNameResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetCurrentGaitNameResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/getLbTorsoInitialPoseRequest.
        Public Shared Function NewRos1Kuavo_msgsGetLbTorsoInitialPoseRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetLbTorsoInitialPoseRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetLbTorsoInitialPoseRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsGetLbTorsoInitialPoseRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetLbTorsoInitialPoseRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetLbTorsoInitialPoseRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsGetLbTorsoInitialPoseRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetLbTorsoInitialPoseRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetLbTorsoInitialPoseRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/getLbTorsoInitialPoseResponse.
        Public Shared Function NewRos1Kuavo_msgsGetLbTorsoInitialPoseResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetLbTorsoInitialPoseResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetLbTorsoInitialPoseResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsGetLbTorsoInitialPoseResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetLbTorsoInitialPoseResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetLbTorsoInitialPoseResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsGetLbTorsoInitialPoseResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetLbTorsoInitialPoseResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetLbTorsoInitialPoseResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/getMotorParamRequest.
        Public Shared Function NewRos1Kuavo_msgsGetMotorParamRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetMotorParamRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetMotorParamRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsGetMotorParamRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetMotorParamRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetMotorParamRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsGetMotorParamRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetMotorParamRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetMotorParamRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/getMotorParamResponse.
        Public Shared Function NewRos1Kuavo_msgsGetMotorParamResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetMotorParamResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetMotorParamResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsGetMotorParamResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetMotorParamResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetMotorParamResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsGetMotorParamResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetMotorParamResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetMotorParamResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/getMotorZeroPointsRequest.
        Public Shared Function NewRos1Kuavo_msgsGetMotorZeroPointsRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetMotorZeroPointsRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetMotorZeroPointsRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsGetMotorZeroPointsRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetMotorZeroPointsRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetMotorZeroPointsRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsGetMotorZeroPointsRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetMotorZeroPointsRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetMotorZeroPointsRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/getMotorZeroPointsResponse.
        Public Shared Function NewRos1Kuavo_msgsGetMotorZeroPointsResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetMotorZeroPointsResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetMotorZeroPointsResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsGetMotorZeroPointsResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetMotorZeroPointsResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetMotorZeroPointsResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsGetMotorZeroPointsResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGetMotorZeroPointsResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGetMotorZeroPointsResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/goToZeroPointRequest.
        Public Shared Function NewRos1Kuavo_msgsGoToZeroPointRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGoToZeroPointRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGoToZeroPointRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsGoToZeroPointRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGoToZeroPointRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGoToZeroPointRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsGoToZeroPointRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGoToZeroPointRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGoToZeroPointRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/goToZeroPointResponse.
        Public Shared Function NewRos1Kuavo_msgsGoToZeroPointResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGoToZeroPointResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGoToZeroPointResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsGoToZeroPointResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGoToZeroPointResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGoToZeroPointResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsGoToZeroPointResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsGoToZeroPointResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsGoToZeroPointResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/handForceLevelRequest.
        Public Shared Function NewRos1Kuavo_msgsHandForceLevelRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsHandForceLevelRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsHandForceLevelRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsHandForceLevelRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsHandForceLevelRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsHandForceLevelRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsHandForceLevelRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsHandForceLevelRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsHandForceLevelRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/handForceLevelResponse.
        Public Shared Function NewRos1Kuavo_msgsHandForceLevelResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsHandForceLevelResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsHandForceLevelResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsHandForceLevelResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsHandForceLevelResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsHandForceLevelResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsHandForceLevelResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsHandForceLevelResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsHandForceLevelResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/handPose.
        Public Shared Function NewRos1Kuavo_msgsHandPose() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsHandPose
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsHandPose()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsHandPose(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsHandPose) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsHandPoseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsHandPose(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsHandPose
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsHandPoseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/headBodyPose.
        Public Shared Function NewRos1Kuavo_msgsHeadBodyPose() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsHeadBodyPose
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsHeadBodyPose()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsHeadBodyPose(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsHeadBodyPose) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsHeadBodyPoseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsHeadBodyPose(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsHeadBodyPose
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsHeadBodyPoseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/headCtrlMode.
        Public Shared Function NewRos1Kuavo_msgsHeadCtrlMode() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsHeadCtrlMode
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsHeadCtrlMode()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsHeadCtrlMode(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsHeadCtrlMode) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsHeadCtrlModeCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsHeadCtrlMode(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsHeadCtrlMode
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsHeadCtrlModeCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/ikSolveError.
        Public Shared Function NewRos1Kuavo_msgsIkSolveError() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsIkSolveError
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsIkSolveError()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsIkSolveError(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsIkSolveError) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsIkSolveErrorCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsIkSolveError(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsIkSolveError
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsIkSolveErrorCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/ikSolveParam.
        Public Shared Function NewRos1Kuavo_msgsIkSolveParam() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsIkSolveParam
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsIkSolveParam()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsIkSolveParam(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsIkSolveParam) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsIkSolveParamCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsIkSolveParam(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsIkSolveParam
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsIkSolveParamCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/imuData.
        Public Shared Function NewRos1Kuavo_msgsImuData() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsImuData
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsImuData()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsImuData(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsImuData) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsImuDataCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsImuData(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsImuData
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsImuDataCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/jointBezierTrajectory.
        Public Shared Function NewRos1Kuavo_msgsJointBezierTrajectory() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsJointBezierTrajectory
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsJointBezierTrajectory()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsJointBezierTrajectory(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsJointBezierTrajectory) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsJointBezierTrajectoryCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsJointBezierTrajectory(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsJointBezierTrajectory
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsJointBezierTrajectoryCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/jointCmd.
        Public Shared Function NewRos1Kuavo_msgsJointCmd() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsJointCmd
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsJointCmd()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsJointCmd(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsJointCmd) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsJointCmdCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsJointCmd(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsJointCmd
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsJointCmdCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/jointData.
        Public Shared Function NewRos1Kuavo_msgsJointData() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsJointData
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsJointData()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsJointData(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsJointData) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsJointDataCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsJointData(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsJointData
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsJointDataCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/jointMoveToRequest.
        Public Shared Function NewRos1Kuavo_msgsJointMoveToRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsJointMoveToRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsJointMoveToRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsJointMoveToRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsJointMoveToRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsJointMoveToRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsJointMoveToRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsJointMoveToRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsJointMoveToRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/jointMoveToResponse.
        Public Shared Function NewRos1Kuavo_msgsJointMoveToResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsJointMoveToResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsJointMoveToResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsJointMoveToResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsJointMoveToResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsJointMoveToResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsJointMoveToResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsJointMoveToResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsJointMoveToResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/kuavoModeSchedule.
        Public Shared Function NewRos1Kuavo_msgsKuavoModeSchedule() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsKuavoModeSchedule
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsKuavoModeSchedule()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsKuavoModeSchedule(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsKuavoModeSchedule) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsKuavoModeScheduleCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsKuavoModeSchedule(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsKuavoModeSchedule
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsKuavoModeScheduleCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/lbBaseLinkPoseCmdSrvRequest.
        Public Shared Function NewRos1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/lbBaseLinkPoseCmdSrvResponse.
        Public Shared Function NewRos1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/lbLegControlSrvRequest.
        Public Shared Function NewRos1Kuavo_msgsLbLegControlSrvRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbLegControlSrvRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbLegControlSrvRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsLbLegControlSrvRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbLegControlSrvRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsLbLegControlSrvRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsLbLegControlSrvRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbLegControlSrvRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsLbLegControlSrvRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/lbLegControlSrvResponse.
        Public Shared Function NewRos1Kuavo_msgsLbLegControlSrvResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbLegControlSrvResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbLegControlSrvResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsLbLegControlSrvResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbLegControlSrvResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsLbLegControlSrvResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsLbLegControlSrvResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbLegControlSrvResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsLbLegControlSrvResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/timedPoint.
        Public Shared Function NewRos1Kuavo_msgsTimedPoint() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTimedPoint
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTimedPoint()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsTimedPoint(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTimedPoint) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsTimedPointCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsTimedPoint(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTimedPoint
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsTimedPointCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/lbTimedOfflineTraj.
        Public Shared Function NewRos1Kuavo_msgsLbTimedOfflineTraj() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbTimedOfflineTraj
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbTimedOfflineTraj()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsLbTimedOfflineTraj(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbTimedOfflineTraj) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsLbTimedOfflineTrajCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsLbTimedOfflineTraj(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbTimedOfflineTraj
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsLbTimedOfflineTrajCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/lbMultiTimedOfflineTrajRequest.
        Public Shared Function NewRos1Kuavo_msgsLbMultiTimedOfflineTrajRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsLbMultiTimedOfflineTrajRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsLbMultiTimedOfflineTrajRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/lbMultiTimedOfflineTrajResponse.
        Public Shared Function NewRos1Kuavo_msgsLbMultiTimedOfflineTrajResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsLbMultiTimedOfflineTrajResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsLbMultiTimedOfflineTrajResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/timedSingleCmd.
        Public Shared Function NewRos1Kuavo_msgsTimedSingleCmd() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTimedSingleCmd
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTimedSingleCmd()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsTimedSingleCmd(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTimedSingleCmd) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsTimedSingleCmdCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsTimedSingleCmd(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTimedSingleCmd
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsTimedSingleCmdCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/lbMultiTimedPosCmdRequest.
        Public Shared Function NewRos1Kuavo_msgsLbMultiTimedPosCmdRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbMultiTimedPosCmdRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbMultiTimedPosCmdRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsLbMultiTimedPosCmdRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbMultiTimedPosCmdRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsLbMultiTimedPosCmdRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsLbMultiTimedPosCmdRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbMultiTimedPosCmdRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsLbMultiTimedPosCmdRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/lbMultiTimedPosCmdResponse.
        Public Shared Function NewRos1Kuavo_msgsLbMultiTimedPosCmdResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbMultiTimedPosCmdResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbMultiTimedPosCmdResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsLbMultiTimedPosCmdResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbMultiTimedPosCmdResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsLbMultiTimedPosCmdResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsLbMultiTimedPosCmdResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbMultiTimedPosCmdResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsLbMultiTimedPosCmdResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/lbTimedPosCmdRequest.
        Public Shared Function NewRos1Kuavo_msgsLbTimedPosCmdRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbTimedPosCmdRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbTimedPosCmdRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsLbTimedPosCmdRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbTimedPosCmdRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsLbTimedPosCmdRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsLbTimedPosCmdRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbTimedPosCmdRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsLbTimedPosCmdRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/lbTimedPosCmdResponse.
        Public Shared Function NewRos1Kuavo_msgsLbTimedPosCmdResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbTimedPosCmdResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbTimedPosCmdResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsLbTimedPosCmdResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbTimedPosCmdResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsLbTimedPosCmdResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsLbTimedPosCmdResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLbTimedPosCmdResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsLbTimedPosCmdResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/lejuClawCommand.
        Public Shared Function NewRos1Kuavo_msgsLejuClawCommand() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLejuClawCommand
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLejuClawCommand()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsLejuClawCommand(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLejuClawCommand) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsLejuClawCommandCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsLejuClawCommand(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLejuClawCommand
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsLejuClawCommandCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/lejuClawRecoveryRequest.
        Public Shared Function NewRos1Kuavo_msgsLejuClawRecoveryRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLejuClawRecoveryRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLejuClawRecoveryRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsLejuClawRecoveryRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLejuClawRecoveryRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsLejuClawRecoveryRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsLejuClawRecoveryRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLejuClawRecoveryRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsLejuClawRecoveryRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/lejuClawRecoveryResponse.
        Public Shared Function NewRos1Kuavo_msgsLejuClawRecoveryResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLejuClawRecoveryResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLejuClawRecoveryResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsLejuClawRecoveryResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLejuClawRecoveryResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsLejuClawRecoveryResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsLejuClawRecoveryResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLejuClawRecoveryResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsLejuClawRecoveryResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/lejuClawState.
        Public Shared Function NewRos1Kuavo_msgsLejuClawState() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLejuClawState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLejuClawState()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsLejuClawState(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLejuClawState) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsLejuClawStateCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsLejuClawState(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLejuClawState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsLejuClawStateCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/lejuClawTarget.
        Public Shared Function NewRos1Kuavo_msgsLejuClawTarget() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLejuClawTarget
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLejuClawTarget()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsLejuClawTarget(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLejuClawTarget) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsLejuClawTargetCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsLejuClawTarget(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsLejuClawTarget
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsLejuClawTargetCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/mpc_input.
        Public Shared Function NewRos1Kuavo_msgsMpc_input() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsMpc_input
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsMpc_input()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsMpc_input(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsMpc_input) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsMpc_inputCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsMpc_input(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsMpc_input
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsMpc_inputCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/mpc_state.
        Public Shared Function NewRos1Kuavo_msgsMpc_state() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsMpc_state
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsMpc_state()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsMpc_state(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsMpc_state) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsMpc_stateCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsMpc_state(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsMpc_state
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsMpc_stateCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/mpc_target_trajectories.
        Public Shared Function NewRos1Kuavo_msgsMpc_target_trajectories() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsMpc_target_trajectories
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsMpc_target_trajectories()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsMpc_target_trajectories(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsMpc_target_trajectories) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsMpc_target_trajectoriesCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsMpc_target_trajectories(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsMpc_target_trajectories
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsMpc_target_trajectoriesCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/picoPoseInfo.
        Public Shared Function NewRos1Kuavo_msgsPicoPoseInfo() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPicoPoseInfo
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPicoPoseInfo()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsPicoPoseInfo(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPicoPoseInfo) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsPicoPoseInfoCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsPicoPoseInfo(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPicoPoseInfo
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsPicoPoseInfoCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/picoPoseInfoList.
        Public Shared Function NewRos1Kuavo_msgsPicoPoseInfoList() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPicoPoseInfoList
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPicoPoseInfoList()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsPicoPoseInfoList(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPicoPoseInfoList) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsPicoPoseInfoListCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsPicoPoseInfoList(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPicoPoseInfoList
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsPicoPoseInfoListCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/picoPoseRetarget.
        Public Shared Function NewRos1Kuavo_msgsPicoPoseRetarget() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPicoPoseRetarget
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPicoPoseRetarget()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsPicoPoseRetarget(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPicoPoseRetarget) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsPicoPoseRetargetCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsPicoPoseRetarget(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPicoPoseRetarget
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsPicoPoseRetargetCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/planArmState.
        Public Shared Function NewRos1Kuavo_msgsPlanArmState() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPlanArmState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPlanArmState()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsPlanArmState(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPlanArmState) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsPlanArmStateCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsPlanArmState(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPlanArmState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsPlanArmStateCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/planArmTrajectoryBezierCurveRequest.
        Public Shared Function NewRos1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/planArmTrajectoryBezierCurveResponse.
        Public Shared Function NewRos1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/planArmTrajectoryCubicSplineRequest.
        Public Shared Function NewRos1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/planArmTrajectoryCubicSplineResponse.
        Public Shared Function NewRos1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/playmusicRequest.
        Public Shared Function NewRos1Kuavo_msgsPlaymusicRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPlaymusicRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPlaymusicRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsPlaymusicRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPlaymusicRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsPlaymusicRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsPlaymusicRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPlaymusicRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsPlaymusicRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/playmusicResponse.
        Public Shared Function NewRos1Kuavo_msgsPlaymusicResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPlaymusicResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPlaymusicResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsPlaymusicResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPlaymusicResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsPlaymusicResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsPlaymusicResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsPlaymusicResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsPlaymusicResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/recordArmHandPose.
        Public Shared Function NewRos1Kuavo_msgsRecordArmHandPose() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRecordArmHandPose
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRecordArmHandPose()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsRecordArmHandPose(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRecordArmHandPose) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsRecordArmHandPoseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsRecordArmHandPose(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRecordArmHandPose
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsRecordArmHandPoseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/recordmusicRequest.
        Public Shared Function NewRos1Kuavo_msgsRecordmusicRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRecordmusicRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRecordmusicRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsRecordmusicRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRecordmusicRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsRecordmusicRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsRecordmusicRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRecordmusicRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsRecordmusicRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/recordmusicResponse.
        Public Shared Function NewRos1Kuavo_msgsRecordmusicResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRecordmusicResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRecordmusicResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsRecordmusicResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRecordmusicResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsRecordmusicResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsRecordmusicResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRecordmusicResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsRecordmusicResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/robotArmQVVD.
        Public Shared Function NewRos1Kuavo_msgsRobotArmQVVD() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRobotArmQVVD
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRobotArmQVVD()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsRobotArmQVVD(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRobotArmQVVD) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsRobotArmQVVDCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsRobotArmQVVD(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRobotArmQVVD
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsRobotArmQVVDCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/robotBodyMatrices.
        Public Shared Function NewRos1Kuavo_msgsRobotBodyMatrices() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRobotBodyMatrices
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRobotBodyMatrices()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsRobotBodyMatrices(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRobotBodyMatrices) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsRobotBodyMatricesCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsRobotBodyMatrices(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRobotBodyMatrices
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsRobotBodyMatricesCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/robotHandPosition.
        Public Shared Function NewRos1Kuavo_msgsRobotHandPosition() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRobotHandPosition
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRobotHandPosition()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsRobotHandPosition(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRobotHandPosition) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsRobotHandPositionCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsRobotHandPosition(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRobotHandPosition
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsRobotHandPositionCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/robotHeadMotionData.
        Public Shared Function NewRos1Kuavo_msgsRobotHeadMotionData() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRobotHeadMotionData
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRobotHeadMotionData()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsRobotHeadMotionData(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRobotHeadMotionData) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsRobotHeadMotionDataCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsRobotHeadMotionData(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRobotHeadMotionData
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsRobotHeadMotionDataCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/robotState.
        Public Shared Function NewRos1Kuavo_msgsRobotState() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRobotState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRobotState()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsRobotState(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRobotState) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsRobotStateCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsRobotState(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRobotState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsRobotStateCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/robotSwitchPoseRequest.
        Public Shared Function NewRos1Kuavo_msgsRobotSwitchPoseRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRobotSwitchPoseRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRobotSwitchPoseRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsRobotSwitchPoseRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRobotSwitchPoseRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsRobotSwitchPoseRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsRobotSwitchPoseRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRobotSwitchPoseRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsRobotSwitchPoseRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/robotSwitchPoseResponse.
        Public Shared Function NewRos1Kuavo_msgsRobotSwitchPoseResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRobotSwitchPoseResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRobotSwitchPoseResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsRobotSwitchPoseResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRobotSwitchPoseResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsRobotSwitchPoseResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsRobotSwitchPoseResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRobotSwitchPoseResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsRobotSwitchPoseResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of std_msgs/Float64MultiArray.
        Public Shared Function NewRos1Std_msgsFloat64MultiArray() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Std_msgsFloat64MultiArray
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Std_msgsFloat64MultiArray()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Std_msgsFloat64MultiArray(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Std_msgsFloat64MultiArray) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Std_msgsFloat64MultiArrayCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Std_msgsFloat64MultiArray(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Std_msgsFloat64MultiArray
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Std_msgsFloat64MultiArrayCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/robotWaistControl.
        Public Shared Function NewRos1Kuavo_msgsRobotWaistControl() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRobotWaistControl
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRobotWaistControl()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsRobotWaistControl(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRobotWaistControl) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsRobotWaistControlCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsRobotWaistControl(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsRobotWaistControl
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsRobotWaistControlCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/sensorsData.
        Public Shared Function NewRos1Kuavo_msgsSensorsData() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSensorsData
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSensorsData()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSensorsData(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSensorsData) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSensorsDataCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSensorsData(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSensorsData
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSensorsDataCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/setContactForceInterpParamsRequest.
        Public Shared Function NewRos1Kuavo_msgsSetContactForceInterpParamsRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetContactForceInterpParamsRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetContactForceInterpParamsRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSetContactForceInterpParamsRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetContactForceInterpParamsRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetContactForceInterpParamsRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSetContactForceInterpParamsRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetContactForceInterpParamsRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetContactForceInterpParamsRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/setContactForceInterpParamsResponse.
        Public Shared Function NewRos1Kuavo_msgsSetContactForceInterpParamsResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetContactForceInterpParamsResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetContactForceInterpParamsResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSetContactForceInterpParamsResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetContactForceInterpParamsResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetContactForceInterpParamsResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSetContactForceInterpParamsResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetContactForceInterpParamsResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetContactForceInterpParamsResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/setHwIntialStateRequest.
        Public Shared Function NewRos1Kuavo_msgsSetHwIntialStateRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetHwIntialStateRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetHwIntialStateRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSetHwIntialStateRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetHwIntialStateRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetHwIntialStateRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSetHwIntialStateRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetHwIntialStateRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetHwIntialStateRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/setHwIntialStateResponse.
        Public Shared Function NewRos1Kuavo_msgsSetHwIntialStateResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetHwIntialStateResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetHwIntialStateResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSetHwIntialStateResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetHwIntialStateResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetHwIntialStateResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSetHwIntialStateResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetHwIntialStateResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetHwIntialStateResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/setMmCtrlFrameRequest.
        Public Shared Function NewRos1Kuavo_msgsSetMmCtrlFrameRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetMmCtrlFrameRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetMmCtrlFrameRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSetMmCtrlFrameRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetMmCtrlFrameRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetMmCtrlFrameRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSetMmCtrlFrameRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetMmCtrlFrameRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetMmCtrlFrameRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/setMmCtrlFrameResponse.
        Public Shared Function NewRos1Kuavo_msgsSetMmCtrlFrameResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetMmCtrlFrameResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetMmCtrlFrameResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSetMmCtrlFrameResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetMmCtrlFrameResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetMmCtrlFrameResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSetMmCtrlFrameResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetMmCtrlFrameResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetMmCtrlFrameResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/setMotorEncoderRoundServiceRequest.
        Public Shared Function NewRos1Kuavo_msgsSetMotorEncoderRoundServiceRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSetMotorEncoderRoundServiceRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSetMotorEncoderRoundServiceRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/setMotorEncoderRoundServiceResponse.
        Public Shared Function NewRos1Kuavo_msgsSetMotorEncoderRoundServiceResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSetMotorEncoderRoundServiceResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSetMotorEncoderRoundServiceResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/setRuckigPlannerParamsRequest.
        Public Shared Function NewRos1Kuavo_msgsSetRuckigPlannerParamsRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetRuckigPlannerParamsRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetRuckigPlannerParamsRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSetRuckigPlannerParamsRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetRuckigPlannerParamsRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetRuckigPlannerParamsRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSetRuckigPlannerParamsRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetRuckigPlannerParamsRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetRuckigPlannerParamsRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/setRuckigPlannerParamsResponse.
        Public Shared Function NewRos1Kuavo_msgsSetRuckigPlannerParamsResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetRuckigPlannerParamsResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetRuckigPlannerParamsResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSetRuckigPlannerParamsResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetRuckigPlannerParamsResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetRuckigPlannerParamsResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSetRuckigPlannerParamsResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetRuckigPlannerParamsResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetRuckigPlannerParamsResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/setTagIdRequest.
        Public Shared Function NewRos1Kuavo_msgsSetTagIdRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetTagIdRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetTagIdRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSetTagIdRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetTagIdRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetTagIdRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSetTagIdRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetTagIdRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetTagIdRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/setTagIdResponse.
        Public Shared Function NewRos1Kuavo_msgsSetTagIdResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetTagIdResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetTagIdResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSetTagIdResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetTagIdResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetTagIdResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSetTagIdResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSetTagIdResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSetTagIdResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/singleStepControlRequest.
        Public Shared Function NewRos1Kuavo_msgsSingleStepControlRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSingleStepControlRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSingleStepControlRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSingleStepControlRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSingleStepControlRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSingleStepControlRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSingleStepControlRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSingleStepControlRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSingleStepControlRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/singleStepControlResponse.
        Public Shared Function NewRos1Kuavo_msgsSingleStepControlResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSingleStepControlResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSingleStepControlResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSingleStepControlResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSingleStepControlResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSingleStepControlResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSingleStepControlResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSingleStepControlResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSingleStepControlResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/stairAlignmentSrvRequest.
        Public Shared Function NewRos1Kuavo_msgsStairAlignmentSrvRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsStairAlignmentSrvRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsStairAlignmentSrvRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsStairAlignmentSrvRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsStairAlignmentSrvRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsStairAlignmentSrvRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsStairAlignmentSrvRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsStairAlignmentSrvRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsStairAlignmentSrvRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/stairAlignmentSrvResponse.
        Public Shared Function NewRos1Kuavo_msgsStairAlignmentSrvResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsStairAlignmentSrvResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsStairAlignmentSrvResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsStairAlignmentSrvResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsStairAlignmentSrvResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsStairAlignmentSrvResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsStairAlignmentSrvResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsStairAlignmentSrvResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsStairAlignmentSrvResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/switchControllerRequest.
        Public Shared Function NewRos1Kuavo_msgsSwitchControllerRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSwitchControllerRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSwitchControllerRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSwitchControllerRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSwitchControllerRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSwitchControllerRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSwitchControllerRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSwitchControllerRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSwitchControllerRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/switchControllerResponse.
        Public Shared Function NewRos1Kuavo_msgsSwitchControllerResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSwitchControllerResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSwitchControllerResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSwitchControllerResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSwitchControllerResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSwitchControllerResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSwitchControllerResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSwitchControllerResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSwitchControllerResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/switchGaitByName.
        Public Shared Function NewRos1Kuavo_msgsSwitchGaitByName() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSwitchGaitByName
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSwitchGaitByName()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSwitchGaitByName(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSwitchGaitByName) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSwitchGaitByNameCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSwitchGaitByName(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSwitchGaitByName
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSwitchGaitByNameCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/switchToNextControllerRequest.
        Public Shared Function NewRos1Kuavo_msgsSwitchToNextControllerRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSwitchToNextControllerRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSwitchToNextControllerRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSwitchToNextControllerRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSwitchToNextControllerRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSwitchToNextControllerRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSwitchToNextControllerRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSwitchToNextControllerRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSwitchToNextControllerRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/switchToNextControllerResponse.
        Public Shared Function NewRos1Kuavo_msgsSwitchToNextControllerResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSwitchToNextControllerResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSwitchToNextControllerResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsSwitchToNextControllerResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSwitchToNextControllerResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSwitchToNextControllerResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsSwitchToNextControllerResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsSwitchToNextControllerResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsSwitchToNextControllerResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/tagDataArray.
        Public Shared Function NewRos1Kuavo_msgsTagDataArray() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTagDataArray
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTagDataArray()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsTagDataArray(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTagDataArray) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsTagDataArrayCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsTagDataArray(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTagDataArray
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsTagDataArrayCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/twoArmHandPoseCmd.
        Public Shared Function NewRos1Kuavo_msgsTwoArmHandPoseCmd() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTwoArmHandPoseCmd
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTwoArmHandPoseCmd()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsTwoArmHandPoseCmd(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTwoArmHandPoseCmd) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsTwoArmHandPoseCmdCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsTwoArmHandPoseCmd(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTwoArmHandPoseCmd
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsTwoArmHandPoseCmdCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/twoArmHandPoseFree.
        Public Shared Function NewRos1Kuavo_msgsTwoArmHandPoseFree() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTwoArmHandPoseFree
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTwoArmHandPoseFree()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsTwoArmHandPoseFree(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTwoArmHandPoseFree) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsTwoArmHandPoseFreeCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsTwoArmHandPoseFree(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTwoArmHandPoseFree
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsTwoArmHandPoseFreeCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/twoArmHandPoseCmdFree.
        Public Shared Function NewRos1Kuavo_msgsTwoArmHandPoseCmdFree() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTwoArmHandPoseCmdFree
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTwoArmHandPoseCmdFree()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsTwoArmHandPoseCmdFree(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTwoArmHandPoseCmdFree) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsTwoArmHandPoseCmdFreeCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsTwoArmHandPoseCmdFree(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTwoArmHandPoseCmdFree
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsTwoArmHandPoseCmdFreeCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/twoArmHandPoseCmdFreeSrvRequest.
        Public Shared Function NewRos1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/twoArmHandPoseCmdFreeSrvResponse.
        Public Shared Function NewRos1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/twoArmHandPoseCmdSrvRequest.
        Public Shared Function NewRos1Kuavo_msgsTwoArmHandPoseCmdSrvRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsTwoArmHandPoseCmdSrvRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsTwoArmHandPoseCmdSrvRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/twoArmHandPoseCmdSrvResponse.
        Public Shared Function NewRos1Kuavo_msgsTwoArmHandPoseCmdSrvResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsTwoArmHandPoseCmdSrvResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsTwoArmHandPoseCmdSrvResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/xsensePoseInfo.
        Public Shared Function NewRos1Kuavo_msgsXsensePoseInfo() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsXsensePoseInfo
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsXsensePoseInfo()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsXsensePoseInfo(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsXsensePoseInfo) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsXsensePoseInfoCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsXsensePoseInfo(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsXsensePoseInfo
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsXsensePoseInfoCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/xsensePoseInfoList.
        Public Shared Function NewRos1Kuavo_msgsXsensePoseInfoList() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsXsensePoseInfoList
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsXsensePoseInfoList()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsXsensePoseInfoList(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsXsensePoseInfoList) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsXsensePoseInfoListCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsXsensePoseInfoList(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsXsensePoseInfoList
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsXsensePoseInfoListCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/xsensePoseRetarget.
        Public Shared Function NewRos1Kuavo_msgsXsensePoseRetarget() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsXsensePoseRetarget
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsXsensePoseRetarget()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsXsensePoseRetarget(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsXsensePoseRetarget) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsXsensePoseRetargetCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsXsensePoseRetarget(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsXsensePoseRetarget
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsXsensePoseRetargetCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/yoloOutputData.
        Public Shared Function NewRos1Kuavo_msgsYoloOutputData() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsYoloOutputData
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsYoloOutputData()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsYoloOutputData(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsYoloOutputData) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsYoloOutputDataCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsYoloOutputData(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsYoloOutputData
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsYoloOutputDataCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_msgs/yoloDetection.
        Public Shared Function NewRos1Kuavo_msgsYoloDetection() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsYoloDetection
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsYoloDetection()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_msgsYoloDetection(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsYoloDetection) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsYoloDetectionCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_msgsYoloDetection(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_msgsYoloDetection
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_msgsYoloDetectionCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_pico_gmr/AmpJoyRouteRequest.
        Public Shared Function NewRos1Kuavo_pico_gmrAmpJoyRouteRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_pico_gmrAmpJoyRouteRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_pico_gmrAmpJoyRouteRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_pico_gmrAmpJoyRouteRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_pico_gmrAmpJoyRouteRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_pico_gmrAmpJoyRouteRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_pico_gmrAmpJoyRouteRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_pico_gmrAmpJoyRouteRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_pico_gmrAmpJoyRouteRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_pico_gmr/AmpJoyRouteResponse.
        Public Shared Function NewRos1Kuavo_pico_gmrAmpJoyRouteResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_pico_gmrAmpJoyRouteResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_pico_gmrAmpJoyRouteResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_pico_gmrAmpJoyRouteResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_pico_gmrAmpJoyRouteResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_pico_gmrAmpJoyRouteResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_pico_gmrAmpJoyRouteResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_pico_gmrAmpJoyRouteResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_pico_gmrAmpJoyRouteResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_ros_interfaces/armTargetPoses.
        Public Shared Function NewRos1Kuavo_ros_interfacesArmTargetPoses() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesArmTargetPoses
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesArmTargetPoses()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_ros_interfacesArmTargetPoses(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesArmTargetPoses) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_ros_interfacesArmTargetPosesCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_ros_interfacesArmTargetPoses(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesArmTargetPoses
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_ros_interfacesArmTargetPosesCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_ros_interfaces/bezierCurveCubicPoint.
        Public Shared Function NewRos1Kuavo_ros_interfacesBezierCurveCubicPoint() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesBezierCurveCubicPoint
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesBezierCurveCubicPoint()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_ros_interfacesBezierCurveCubicPoint(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesBezierCurveCubicPoint) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_ros_interfacesBezierCurveCubicPointCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_ros_interfacesBezierCurveCubicPoint(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesBezierCurveCubicPoint
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_ros_interfacesBezierCurveCubicPointCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_ros_interfaces/jointBezierTrajectory.
        Public Shared Function NewRos1Kuavo_ros_interfacesJointBezierTrajectory() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesJointBezierTrajectory
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesJointBezierTrajectory()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_ros_interfacesJointBezierTrajectory(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesJointBezierTrajectory) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_ros_interfacesJointBezierTrajectoryCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_ros_interfacesJointBezierTrajectory(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesJointBezierTrajectory
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_ros_interfacesJointBezierTrajectoryCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_ros_interfaces/ocs2ChangeArmCtrlModeRequest.
        Public Shared Function NewRos1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_ros_interfaces/ocs2ChangeArmCtrlModeResponse.
        Public Shared Function NewRos1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_ros_interfaces/planArmState.
        Public Shared Function NewRos1Kuavo_ros_interfacesPlanArmState() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesPlanArmState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesPlanArmState()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_ros_interfacesPlanArmState(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesPlanArmState) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_ros_interfacesPlanArmStateCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_ros_interfacesPlanArmState(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesPlanArmState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_ros_interfacesPlanArmStateCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_ros_interfaces/planArmTrajectoryBezierCurveRequest.
        Public Shared Function NewRos1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_ros_interfaces/planArmTrajectoryBezierCurveResponse.
        Public Shared Function NewRos1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_ros_interfaces/robotHandPosition.
        Public Shared Function NewRos1Kuavo_ros_interfacesRobotHandPosition() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesRobotHandPosition
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesRobotHandPosition()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_ros_interfacesRobotHandPosition(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesRobotHandPosition) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_ros_interfacesRobotHandPositionCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_ros_interfacesRobotHandPosition(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesRobotHandPosition
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_ros_interfacesRobotHandPositionCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_ros_interfaces/robotHeadMotionData.
        Public Shared Function NewRos1Kuavo_ros_interfacesRobotHeadMotionData() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesRobotHeadMotionData
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesRobotHeadMotionData()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_ros_interfacesRobotHeadMotionData(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesRobotHeadMotionData) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_ros_interfacesRobotHeadMotionDataCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_ros_interfacesRobotHeadMotionData(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesRobotHeadMotionData
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_ros_interfacesRobotHeadMotionDataCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_ros_interfaces/stopPlanArmTrajectoryRequest.
        Public Shared Function NewRos1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_ros_interfaces/stopPlanArmTrajectoryResponse.
        Public Shared Function NewRos1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/BMS.
        Public Shared Function NewRos1Leju_mobile_base_msgsBMS() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsBMS
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsBMS()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsBMS(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsBMS) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsBMSCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsBMS(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsBMS
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsBMSCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/BaseCmdVelStatus.
        Public Shared Function NewRos1Leju_mobile_base_msgsBaseCmdVelStatus() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsBaseCmdVelStatus
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsBaseCmdVelStatus()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsBaseCmdVelStatus(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsBaseCmdVelStatus) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsBaseCmdVelStatusCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsBaseCmdVelStatus(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsBaseCmdVelStatus
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsBaseCmdVelStatusCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/MoveToTargetOptions.
        Public Shared Function NewRos1Leju_mobile_base_msgsMoveToTargetOptions() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsMoveToTargetOptions
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsMoveToTargetOptions()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsMoveToTargetOptions(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsMoveToTargetOptions) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsMoveToTargetOptionsCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsMoveToTargetOptions(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsMoveToTargetOptions
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsMoveToTargetOptionsCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/BaseMoveRequest.
        Public Shared Function NewRos1Leju_mobile_base_msgsBaseMoveRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsBaseMoveRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsBaseMoveRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsBaseMoveRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsBaseMoveRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsBaseMoveRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsBaseMoveRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsBaseMoveRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsBaseMoveRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/BaseMoveResponse.
        Public Shared Function NewRos1Leju_mobile_base_msgsBaseMoveResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsBaseMoveResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsBaseMoveResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsBaseMoveResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsBaseMoveResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsBaseMoveResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsBaseMoveResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsBaseMoveResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsBaseMoveResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/Battery.
        Public Shared Function NewRos1Leju_mobile_base_msgsBattery() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsBattery
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsBattery()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsBattery(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsBattery) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsBatteryCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsBattery(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsBattery
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsBatteryCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/CheckArrivedRequest.
        Public Shared Function NewRos1Leju_mobile_base_msgsCheckArrivedRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsCheckArrivedRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsCheckArrivedRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsCheckArrivedRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsCheckArrivedRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsCheckArrivedRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsCheckArrivedRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsCheckArrivedRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsCheckArrivedRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/CheckArrivedResponse.
        Public Shared Function NewRos1Leju_mobile_base_msgsCheckArrivedResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsCheckArrivedResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsCheckArrivedResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsCheckArrivedResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsCheckArrivedResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsCheckArrivedResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsCheckArrivedResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsCheckArrivedResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsCheckArrivedResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/ControlLaserScanRequest.
        Public Shared Function NewRos1Leju_mobile_base_msgsControlLaserScanRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsControlLaserScanRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsControlLaserScanRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsControlLaserScanRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsControlLaserScanRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsControlLaserScanRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsControlLaserScanRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsControlLaserScanRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsControlLaserScanRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/ControlLaserScanResponse.
        Public Shared Function NewRos1Leju_mobile_base_msgsControlLaserScanResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsControlLaserScanResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsControlLaserScanResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsControlLaserScanResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsControlLaserScanResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsControlLaserScanResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsControlLaserScanResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsControlLaserScanResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsControlLaserScanResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/DispatchMoveRequest.
        Public Shared Function NewRos1Leju_mobile_base_msgsDispatchMoveRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsDispatchMoveRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsDispatchMoveRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsDispatchMoveRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsDispatchMoveRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsDispatchMoveRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsDispatchMoveRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsDispatchMoveRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsDispatchMoveRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/DispatchMoveResponse.
        Public Shared Function NewRos1Leju_mobile_base_msgsDispatchMoveResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsDispatchMoveResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsDispatchMoveResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsDispatchMoveResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsDispatchMoveResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsDispatchMoveResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsDispatchMoveResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsDispatchMoveResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsDispatchMoveResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/ExecTaskRequest.
        Public Shared Function NewRos1Leju_mobile_base_msgsExecTaskRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsExecTaskRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsExecTaskRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsExecTaskRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsExecTaskRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsExecTaskRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsExecTaskRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsExecTaskRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsExecTaskRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/ExecTaskResponse.
        Public Shared Function NewRos1Leju_mobile_base_msgsExecTaskResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsExecTaskResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsExecTaskResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsExecTaskResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsExecTaskResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsExecTaskResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsExecTaskResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsExecTaskResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsExecTaskResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/GetGlobalOdometerRequest.
        Public Shared Function NewRos1Leju_mobile_base_msgsGetGlobalOdometerRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsGetGlobalOdometerRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsGetGlobalOdometerRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsGetGlobalOdometerRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsGetGlobalOdometerRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsGetGlobalOdometerRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsGetGlobalOdometerRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsGetGlobalOdometerRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsGetGlobalOdometerRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/GetGlobalOdometerResponse.
        Public Shared Function NewRos1Leju_mobile_base_msgsGetGlobalOdometerResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsGetGlobalOdometerResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsGetGlobalOdometerResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsGetGlobalOdometerResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsGetGlobalOdometerResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsGetGlobalOdometerResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsGetGlobalOdometerResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsGetGlobalOdometerResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsGetGlobalOdometerResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/GetLaserScanListRequest.
        Public Shared Function NewRos1Leju_mobile_base_msgsGetLaserScanListRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsGetLaserScanListRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsGetLaserScanListRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsGetLaserScanListRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsGetLaserScanListRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsGetLaserScanListRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsGetLaserScanListRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsGetLaserScanListRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsGetLaserScanListRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/GetLaserScanListResponse.
        Public Shared Function NewRos1Leju_mobile_base_msgsGetLaserScanListResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsGetLaserScanListResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsGetLaserScanListResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsGetLaserScanListResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsGetLaserScanListResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsGetLaserScanListResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsGetLaserScanListResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsGetLaserScanListResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsGetLaserScanListResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/HardwareStatus.
        Public Shared Function NewRos1Leju_mobile_base_msgsHardwareStatus() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsHardwareStatus
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsHardwareStatus()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsHardwareStatus(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsHardwareStatus) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsHardwareStatusCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsHardwareStatus(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsHardwareStatus
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsHardwareStatusCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/Information.
        Public Shared Function NewRos1Leju_mobile_base_msgsInformation() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsInformation
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsInformation()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsInformation(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsInformation) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsInformationCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsInformation(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsInformation
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsInformationCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/LED.
        Public Shared Function NewRos1Leju_mobile_base_msgsLED() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsLED
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsLED()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsLED(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsLED) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsLEDCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsLED(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsLED
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsLEDCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/LiftControl3Feedback.
        Public Shared Function NewRos1Leju_mobile_base_msgsLiftControl3Feedback() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsLiftControl3Feedback
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsLiftControl3Feedback()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsLiftControl3Feedback(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsLiftControl3Feedback) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsLiftControl3FeedbackCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsLiftControl3Feedback(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsLiftControl3Feedback
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsLiftControl3FeedbackCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/LiftControl3Goal.
        Public Shared Function NewRos1Leju_mobile_base_msgsLiftControl3Goal() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsLiftControl3Goal
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsLiftControl3Goal()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsLiftControl3Goal(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsLiftControl3Goal) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsLiftControl3GoalCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsLiftControl3Goal(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsLiftControl3Goal
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsLiftControl3GoalCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/LiftControl3Result.
        Public Shared Function NewRos1Leju_mobile_base_msgsLiftControl3Result() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsLiftControl3Result
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsLiftControl3Result()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsLiftControl3Result(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsLiftControl3Result) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsLiftControl3ResultCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsLiftControl3Result(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsLiftControl3Result
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsLiftControl3ResultCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/LiftStatus.
        Public Shared Function NewRos1Leju_mobile_base_msgsLiftStatus() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsLiftStatus
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsLiftStatus()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsLiftStatus(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsLiftStatus) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsLiftStatusCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsLiftStatus(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsLiftStatus
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsLiftStatusCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/MoveBaseActionGoal.
        Public Shared Function NewRos1Leju_mobile_base_msgsMoveBaseActionGoal() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsMoveBaseActionGoal
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsMoveBaseActionGoal()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsMoveBaseActionGoal(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsMoveBaseActionGoal) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsMoveBaseActionGoalCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsMoveBaseActionGoal(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsMoveBaseActionGoal
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsMoveBaseActionGoalCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/MoveToTargetRequest.
        Public Shared Function NewRos1Leju_mobile_base_msgsMoveToTargetRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsMoveToTargetRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsMoveToTargetRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsMoveToTargetRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsMoveToTargetRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsMoveToTargetRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsMoveToTargetRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsMoveToTargetRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsMoveToTargetRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/MoveToTargetResponse.
        Public Shared Function NewRos1Leju_mobile_base_msgsMoveToTargetResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsMoveToTargetResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsMoveToTargetResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsMoveToTargetResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsMoveToTargetResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsMoveToTargetResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsMoveToTargetResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsMoveToTargetResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsMoveToTargetResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/NavigationModeGoal.
        Public Shared Function NewRos1Leju_mobile_base_msgsNavigationModeGoal() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsNavigationModeGoal
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsNavigationModeGoal()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsNavigationModeGoal(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsNavigationModeGoal) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsNavigationModeGoalCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsNavigationModeGoal(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsNavigationModeGoal
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsNavigationModeGoalCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/Parameter.
        Public Shared Function NewRos1Leju_mobile_base_msgsParameter() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsParameter
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsParameter()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsParameter(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsParameter) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsParameterCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsParameter(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsParameter
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsParameterCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/ResetTemporaryOdometerRequest.
        Public Shared Function NewRos1Leju_mobile_base_msgsResetTemporaryOdometerRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsResetTemporaryOdometerRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsResetTemporaryOdometerRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/ResetTemporaryOdometerResponse.
        Public Shared Function NewRos1Leju_mobile_base_msgsResetTemporaryOdometerResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsResetTemporaryOdometerResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsResetTemporaryOdometerResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/RobotStatus.
        Public Shared Function NewRos1Leju_mobile_base_msgsRobotStatus() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsRobotStatus
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsRobotStatus()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsRobotStatus(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsRobotStatus) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsRobotStatusCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsRobotStatus(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsRobotStatus
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsRobotStatusCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/SetDispatchModeRequest.
        Public Shared Function NewRos1Leju_mobile_base_msgsSetDispatchModeRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsSetDispatchModeRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsSetDispatchModeRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsSetDispatchModeRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsSetDispatchModeRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsSetDispatchModeRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsSetDispatchModeRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsSetDispatchModeRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsSetDispatchModeRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/SetDispatchModeResponse.
        Public Shared Function NewRos1Leju_mobile_base_msgsSetDispatchModeResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsSetDispatchModeResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsSetDispatchModeResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsSetDispatchModeResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsSetDispatchModeResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsSetDispatchModeResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsSetDispatchModeResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsSetDispatchModeResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsSetDispatchModeResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/SetMapServerRequest.
        Public Shared Function NewRos1Leju_mobile_base_msgsSetMapServerRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsSetMapServerRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsSetMapServerRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsSetMapServerRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsSetMapServerRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsSetMapServerRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsSetMapServerRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsSetMapServerRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsSetMapServerRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/SetMapServerResponse.
        Public Shared Function NewRos1Leju_mobile_base_msgsSetMapServerResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsSetMapServerResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsSetMapServerResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsSetMapServerResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsSetMapServerResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsSetMapServerResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsSetMapServerResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsSetMapServerResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsSetMapServerResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/StartLocalizationRequest.
        Public Shared Function NewRos1Leju_mobile_base_msgsStartLocalizationRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsStartLocalizationRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsStartLocalizationRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsStartLocalizationRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsStartLocalizationRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsStartLocalizationRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsStartLocalizationRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsStartLocalizationRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsStartLocalizationRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/StartLocalizationResponse.
        Public Shared Function NewRos1Leju_mobile_base_msgsStartLocalizationResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsStartLocalizationResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsStartLocalizationResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsStartLocalizationResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsStartLocalizationResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsStartLocalizationResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsStartLocalizationResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsStartLocalizationResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsStartLocalizationResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/StepControlGoal.
        Public Shared Function NewRos1Leju_mobile_base_msgsStepControlGoal() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsStepControlGoal
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsStepControlGoal()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsStepControlGoal(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsStepControlGoal) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsStepControlGoalCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsStepControlGoal(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsStepControlGoal
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsStepControlGoalCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/SyncCostmapRequest.
        Public Shared Function NewRos1Leju_mobile_base_msgsSyncCostmapRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsSyncCostmapRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsSyncCostmapRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsSyncCostmapRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsSyncCostmapRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsSyncCostmapRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsSyncCostmapRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsSyncCostmapRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsSyncCostmapRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/SyncCostmapResponse.
        Public Shared Function NewRos1Leju_mobile_base_msgsSyncCostmapResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsSyncCostmapResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsSyncCostmapResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsSyncCostmapResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsSyncCostmapResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsSyncCostmapResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsSyncCostmapResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsSyncCostmapResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsSyncCostmapResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of leju_mobile_base_msgs/TaskDetailStatus.
        Public Shared Function NewRos1Leju_mobile_base_msgsTaskDetailStatus() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsTaskDetailStatus
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsTaskDetailStatus()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Leju_mobile_base_msgsTaskDetailStatus(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsTaskDetailStatus) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsTaskDetailStatusCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Leju_mobile_base_msgsTaskDetailStatus(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Leju_mobile_base_msgsTaskDetailStatus
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Leju_mobile_base_msgsTaskDetailStatusCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of motioncapture/ForcePlateData.
        Public Shared Function NewRos1MotioncaptureForcePlateData() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1MotioncaptureForcePlateData
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1MotioncaptureForcePlateData()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1MotioncaptureForcePlateData(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1MotioncaptureForcePlateData) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1MotioncaptureForcePlateDataCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1MotioncaptureForcePlateData(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1MotioncaptureForcePlateData
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1MotioncaptureForcePlateDataCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of network_monitor/NetworkPingRequest.
        Public Shared Function NewRos1Network_monitorNetworkPingRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Network_monitorNetworkPingRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Network_monitorNetworkPingRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Network_monitorNetworkPingRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Network_monitorNetworkPingRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Network_monitorNetworkPingRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Network_monitorNetworkPingRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Network_monitorNetworkPingRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Network_monitorNetworkPingRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of network_monitor/NetworkPingResponse.
        Public Shared Function NewRos1Network_monitorNetworkPingResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Network_monitorNetworkPingResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Network_monitorNetworkPingResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Network_monitorNetworkPingResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Network_monitorNetworkPingResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Network_monitorNetworkPingResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Network_monitorNetworkPingResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Network_monitorNetworkPingResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Network_monitorNetworkPingResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of network_monitor/NetworkPingMsg.
        Public Shared Function NewRos1Network_monitorNetworkPingMsg() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Network_monitorNetworkPingMsg
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Network_monitorNetworkPingMsg()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Network_monitorNetworkPingMsg(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Network_monitorNetworkPingMsg) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Network_monitorNetworkPingMsgCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Network_monitorNetworkPingMsg(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Network_monitorNetworkPingMsg
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Network_monitorNetworkPingMsgCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of nimservos_controller/motor_cmd.
        Public Shared Function NewRos1Nimservos_controllerMotor_cmd() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nimservos_controllerMotor_cmd
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nimservos_controllerMotor_cmd()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Nimservos_controllerMotor_cmd(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nimservos_controllerMotor_cmd) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nimservos_controllerMotor_cmdCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Nimservos_controllerMotor_cmd(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nimservos_controllerMotor_cmd
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nimservos_controllerMotor_cmdCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of nimservos_controller/motor_state.
        Public Shared Function NewRos1Nimservos_controllerMotor_state() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nimservos_controllerMotor_state
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nimservos_controllerMotor_state()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Nimservos_controllerMotor_state(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nimservos_controllerMotor_state) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nimservos_controllerMotor_stateCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Nimservos_controllerMotor_state(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nimservos_controllerMotor_state
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nimservos_controllerMotor_stateCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of nlink_parser/IotFrame0Node.
        Public Shared Function NewRos1Nlink_parserIotFrame0Node() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserIotFrame0Node
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserIotFrame0Node()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Nlink_parserIotFrame0Node(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserIotFrame0Node) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserIotFrame0NodeCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Nlink_parserIotFrame0Node(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserIotFrame0Node
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserIotFrame0NodeCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of nlink_parser/IotFrame0.
        Public Shared Function NewRos1Nlink_parserIotFrame0() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserIotFrame0
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserIotFrame0()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Nlink_parserIotFrame0(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserIotFrame0) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserIotFrame0Codec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Nlink_parserIotFrame0(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserIotFrame0
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserIotFrame0Codec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of nlink_parser/LinktrackTag.
        Public Shared Function NewRos1Nlink_parserLinktrackTag() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackTag
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackTag()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Nlink_parserLinktrackTag(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackTag) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackTagCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Nlink_parserLinktrackTag(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackTag
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackTagCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of nlink_parser/LinktrackAnchorframe0.
        Public Shared Function NewRos1Nlink_parserLinktrackAnchorframe0() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackAnchorframe0
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackAnchorframe0()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Nlink_parserLinktrackAnchorframe0(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackAnchorframe0) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackAnchorframe0Codec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Nlink_parserLinktrackAnchorframe0(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackAnchorframe0
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackAnchorframe0Codec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of nlink_parser/LinktrackAoaNode0.
        Public Shared Function NewRos1Nlink_parserLinktrackAoaNode0() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackAoaNode0
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackAoaNode0()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Nlink_parserLinktrackAoaNode0(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackAoaNode0) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackAoaNode0Codec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Nlink_parserLinktrackAoaNode0(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackAoaNode0
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackAoaNode0Codec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of nlink_parser/LinktrackAoaNodeframe0.
        Public Shared Function NewRos1Nlink_parserLinktrackAoaNodeframe0() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackAoaNodeframe0
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackAoaNodeframe0()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Nlink_parserLinktrackAoaNodeframe0(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackAoaNodeframe0) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackAoaNodeframe0Codec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Nlink_parserLinktrackAoaNodeframe0(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackAoaNodeframe0
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackAoaNodeframe0Codec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of nlink_parser/LinktrackNode0.
        Public Shared Function NewRos1Nlink_parserLinktrackNode0() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNode0
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNode0()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Nlink_parserLinktrackNode0(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNode0) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackNode0Codec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Nlink_parserLinktrackNode0(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNode0
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackNode0Codec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of nlink_parser/LinktrackNode1.
        Public Shared Function NewRos1Nlink_parserLinktrackNode1() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNode1
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNode1()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Nlink_parserLinktrackNode1(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNode1) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackNode1Codec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Nlink_parserLinktrackNode1(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNode1
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackNode1Codec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of nlink_parser/LinktrackNode2.
        Public Shared Function NewRos1Nlink_parserLinktrackNode2() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNode2
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNode2()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Nlink_parserLinktrackNode2(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNode2) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackNode2Codec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Nlink_parserLinktrackNode2(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNode2
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackNode2Codec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of nlink_parser/LinktrackNode4Anchor.
        Public Shared Function NewRos1Nlink_parserLinktrackNode4Anchor() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNode4Anchor
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNode4Anchor()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Nlink_parserLinktrackNode4Anchor(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNode4Anchor) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackNode4AnchorCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Nlink_parserLinktrackNode4Anchor(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNode4Anchor
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackNode4AnchorCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of nlink_parser/LinktrackNode4Tag.
        Public Shared Function NewRos1Nlink_parserLinktrackNode4Tag() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNode4Tag
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNode4Tag()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Nlink_parserLinktrackNode4Tag(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNode4Tag) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackNode4TagCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Nlink_parserLinktrackNode4Tag(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNode4Tag
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackNode4TagCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of nlink_parser/LinktrackNode5.
        Public Shared Function NewRos1Nlink_parserLinktrackNode5() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNode5
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNode5()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Nlink_parserLinktrackNode5(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNode5) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackNode5Codec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Nlink_parserLinktrackNode5(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNode5
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackNode5Codec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of nlink_parser/LinktrackNode6.
        Public Shared Function NewRos1Nlink_parserLinktrackNode6() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNode6
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNode6()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Nlink_parserLinktrackNode6(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNode6) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackNode6Codec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Nlink_parserLinktrackNode6(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNode6
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackNode6Codec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of nlink_parser/LinktrackNodeframe0.
        Public Shared Function NewRos1Nlink_parserLinktrackNodeframe0() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNodeframe0
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNodeframe0()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Nlink_parserLinktrackNodeframe0(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNodeframe0) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackNodeframe0Codec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Nlink_parserLinktrackNodeframe0(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNodeframe0
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackNodeframe0Codec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of nlink_parser/LinktrackNodeframe1.
        Public Shared Function NewRos1Nlink_parserLinktrackNodeframe1() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNodeframe1
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNodeframe1()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Nlink_parserLinktrackNodeframe1(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNodeframe1) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackNodeframe1Codec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Nlink_parserLinktrackNodeframe1(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNodeframe1
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackNodeframe1Codec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of nlink_parser/LinktrackNodeframe2.
        Public Shared Function NewRos1Nlink_parserLinktrackNodeframe2() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNodeframe2
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNodeframe2()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Nlink_parserLinktrackNodeframe2(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNodeframe2) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackNodeframe2Codec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Nlink_parserLinktrackNodeframe2(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNodeframe2
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackNodeframe2Codec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of nlink_parser/LinktrackNodeframe3.
        Public Shared Function NewRos1Nlink_parserLinktrackNodeframe3() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNodeframe3
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNodeframe3()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Nlink_parserLinktrackNodeframe3(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNodeframe3) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackNodeframe3Codec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Nlink_parserLinktrackNodeframe3(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNodeframe3
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackNodeframe3Codec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of nlink_parser/LinktrackNodeframe4.
        Public Shared Function NewRos1Nlink_parserLinktrackNodeframe4() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNodeframe4
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNodeframe4()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Nlink_parserLinktrackNodeframe4(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNodeframe4) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackNodeframe4Codec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Nlink_parserLinktrackNodeframe4(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNodeframe4
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackNodeframe4Codec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of nlink_parser/LinktrackNodeframe5.
        Public Shared Function NewRos1Nlink_parserLinktrackNodeframe5() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNodeframe5
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNodeframe5()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Nlink_parserLinktrackNodeframe5(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNodeframe5) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackNodeframe5Codec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Nlink_parserLinktrackNodeframe5(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNodeframe5
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackNodeframe5Codec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of nlink_parser/LinktrackNodeframe6.
        Public Shared Function NewRos1Nlink_parserLinktrackNodeframe6() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNodeframe6
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNodeframe6()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Nlink_parserLinktrackNodeframe6(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNodeframe6) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackNodeframe6Codec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Nlink_parserLinktrackNodeframe6(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackNodeframe6
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackNodeframe6Codec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of nlink_parser/LinktrackTagframe0.
        Public Shared Function NewRos1Nlink_parserLinktrackTagframe0() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackTagframe0
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackTagframe0()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Nlink_parserLinktrackTagframe0(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackTagframe0) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackTagframe0Codec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Nlink_parserLinktrackTagframe0(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserLinktrackTagframe0
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserLinktrackTagframe0Codec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of nlink_parser/TofsenseFrame0.
        Public Shared Function NewRos1Nlink_parserTofsenseFrame0() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserTofsenseFrame0
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserTofsenseFrame0()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Nlink_parserTofsenseFrame0(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserTofsenseFrame0) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserTofsenseFrame0Codec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Nlink_parserTofsenseFrame0(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserTofsenseFrame0
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserTofsenseFrame0Codec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of nlink_parser/TofsenseCascade.
        Public Shared Function NewRos1Nlink_parserTofsenseCascade() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserTofsenseCascade
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserTofsenseCascade()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Nlink_parserTofsenseCascade(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserTofsenseCascade) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserTofsenseCascadeCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Nlink_parserTofsenseCascade(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserTofsenseCascade
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserTofsenseCascadeCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of nlink_parser/TofsenseMFrame0Pixel.
        Public Shared Function NewRos1Nlink_parserTofsenseMFrame0Pixel() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserTofsenseMFrame0Pixel
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserTofsenseMFrame0Pixel()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Nlink_parserTofsenseMFrame0Pixel(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserTofsenseMFrame0Pixel) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserTofsenseMFrame0PixelCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Nlink_parserTofsenseMFrame0Pixel(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserTofsenseMFrame0Pixel
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserTofsenseMFrame0PixelCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of nlink_parser/TofsenseMFrame0.
        Public Shared Function NewRos1Nlink_parserTofsenseMFrame0() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserTofsenseMFrame0
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserTofsenseMFrame0()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Nlink_parserTofsenseMFrame0(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserTofsenseMFrame0) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserTofsenseMFrame0Codec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Nlink_parserTofsenseMFrame0(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Nlink_parserTofsenseMFrame0
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Nlink_parserTofsenseMFrame0Codec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of noitom_hi5_hand_udp_python/JoySticks.
        Public Shared Function NewRos1Noitom_hi5_hand_udp_pythonJoySticks() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Noitom_hi5_hand_udp_pythonJoySticks
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Noitom_hi5_hand_udp_pythonJoySticks()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Noitom_hi5_hand_udp_pythonJoySticks(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Noitom_hi5_hand_udp_pythonJoySticks) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Noitom_hi5_hand_udp_pythonJoySticksCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Noitom_hi5_hand_udp_pythonJoySticks(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Noitom_hi5_hand_udp_pythonJoySticks
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Noitom_hi5_hand_udp_pythonJoySticksCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of noitom_hi5_hand_udp_python/PoseInfo.
        Public Shared Function NewRos1Noitom_hi5_hand_udp_pythonPoseInfo() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Noitom_hi5_hand_udp_pythonPoseInfo
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Noitom_hi5_hand_udp_pythonPoseInfo()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Noitom_hi5_hand_udp_pythonPoseInfo(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Noitom_hi5_hand_udp_pythonPoseInfo) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Noitom_hi5_hand_udp_pythonPoseInfoCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Noitom_hi5_hand_udp_pythonPoseInfo(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Noitom_hi5_hand_udp_pythonPoseInfo
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Noitom_hi5_hand_udp_pythonPoseInfoCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of noitom_hi5_hand_udp_python/PoseInfoList.
        Public Shared Function NewRos1Noitom_hi5_hand_udp_pythonPoseInfoList() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Noitom_hi5_hand_udp_pythonPoseInfoList
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Noitom_hi5_hand_udp_pythonPoseInfoList()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Noitom_hi5_hand_udp_pythonPoseInfoList(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Noitom_hi5_hand_udp_pythonPoseInfoList) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Noitom_hi5_hand_udp_pythonPoseInfoListCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Noitom_hi5_hand_udp_pythonPoseInfoList(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Noitom_hi5_hand_udp_pythonPoseInfoList
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Noitom_hi5_hand_udp_pythonPoseInfoListCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of noitom_hi5_hand_udp_python/QuaternionArray.
        Public Shared Function NewRos1Noitom_hi5_hand_udp_pythonQuaternionArray() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Noitom_hi5_hand_udp_pythonQuaternionArray
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Noitom_hi5_hand_udp_pythonQuaternionArray()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Noitom_hi5_hand_udp_pythonQuaternionArray(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Noitom_hi5_hand_udp_pythonQuaternionArray) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Noitom_hi5_hand_udp_pythonQuaternionArrayCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Noitom_hi5_hand_udp_pythonQuaternionArray(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Noitom_hi5_hand_udp_pythonQuaternionArray
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Noitom_hi5_hand_udp_pythonQuaternionArrayCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of noitom_hi5_hand_udp_python/Vector4.
        Public Shared Function NewRos1Noitom_hi5_hand_udp_pythonVector4() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Noitom_hi5_hand_udp_pythonVector4
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Noitom_hi5_hand_udp_pythonVector4()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Noitom_hi5_hand_udp_pythonVector4(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Noitom_hi5_hand_udp_pythonVector4) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Noitom_hi5_hand_udp_pythonVector4Codec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Noitom_hi5_hand_udp_pythonVector4(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Noitom_hi5_hand_udp_pythonVector4
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Noitom_hi5_hand_udp_pythonVector4Codec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of noitom_hi5_hand_udp_python/handRotation.
        Public Shared Function NewRos1Noitom_hi5_hand_udp_pythonHandRotation() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Noitom_hi5_hand_udp_pythonHandRotation
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Noitom_hi5_hand_udp_pythonHandRotation()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Noitom_hi5_hand_udp_pythonHandRotation(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Noitom_hi5_hand_udp_pythonHandRotation) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Noitom_hi5_hand_udp_pythonHandRotationCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Noitom_hi5_hand_udp_pythonHandRotation(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Noitom_hi5_hand_udp_pythonHandRotation
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Noitom_hi5_hand_udp_pythonHandRotationCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of noitom_hi5_hand_udp_python/handRotationEular.
        Public Shared Function NewRos1Noitom_hi5_hand_udp_pythonHandRotationEular() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Noitom_hi5_hand_udp_pythonHandRotationEular
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Noitom_hi5_hand_udp_pythonHandRotationEular()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Noitom_hi5_hand_udp_pythonHandRotationEular(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Noitom_hi5_hand_udp_pythonHandRotationEular) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Noitom_hi5_hand_udp_pythonHandRotationEularCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Noitom_hi5_hand_udp_pythonHandRotationEular(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Noitom_hi5_hand_udp_pythonHandRotationEular
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Noitom_hi5_hand_udp_pythonHandRotationEularCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of ocs2_msgs/constraint.
        Public Shared Function NewRos1Ocs2_msgsConstraint() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsConstraint
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsConstraint()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Ocs2_msgsConstraint(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsConstraint) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_msgsConstraintCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Ocs2_msgsConstraint(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsConstraint
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_msgsConstraintCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of ocs2_msgs/controller_data.
        Public Shared Function NewRos1Ocs2_msgsController_data() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsController_data
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsController_data()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Ocs2_msgsController_data(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsController_data) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_msgsController_dataCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Ocs2_msgsController_data(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsController_data
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_msgsController_dataCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of ocs2_msgs/lagrangian_metrics.
        Public Shared Function NewRos1Ocs2_msgsLagrangian_metrics() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsLagrangian_metrics
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsLagrangian_metrics()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Ocs2_msgsLagrangian_metrics(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsLagrangian_metrics) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_msgsLagrangian_metricsCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Ocs2_msgsLagrangian_metrics(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsLagrangian_metrics
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_msgsLagrangian_metricsCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of ocs2_msgs/mode_schedule.
        Public Shared Function NewRos1Ocs2_msgsMode_schedule() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsMode_schedule
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsMode_schedule()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Ocs2_msgsMode_schedule(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsMode_schedule) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_msgsMode_scheduleCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Ocs2_msgsMode_schedule(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsMode_schedule
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_msgsMode_scheduleCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of ocs2_msgs/mpc_state.
        Public Shared Function NewRos1Ocs2_msgsMpc_state() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsMpc_state
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsMpc_state()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Ocs2_msgsMpc_state(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsMpc_state) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_msgsMpc_stateCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Ocs2_msgsMpc_state(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsMpc_state
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_msgsMpc_stateCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of ocs2_msgs/mpc_input.
        Public Shared Function NewRos1Ocs2_msgsMpc_input() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsMpc_input
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsMpc_input()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Ocs2_msgsMpc_input(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsMpc_input) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_msgsMpc_inputCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Ocs2_msgsMpc_input(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsMpc_input
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_msgsMpc_inputCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of ocs2_msgs/mpc_observation.
        Public Shared Function NewRos1Ocs2_msgsMpc_observation() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsMpc_observation
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsMpc_observation()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Ocs2_msgsMpc_observation(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsMpc_observation) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_msgsMpc_observationCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Ocs2_msgsMpc_observation(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsMpc_observation
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_msgsMpc_observationCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of ocs2_msgs/mpc_target_trajectories.
        Public Shared Function NewRos1Ocs2_msgsMpc_target_trajectories() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsMpc_target_trajectories
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsMpc_target_trajectories()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Ocs2_msgsMpc_target_trajectories(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsMpc_target_trajectories) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_msgsMpc_target_trajectoriesCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Ocs2_msgsMpc_target_trajectories(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsMpc_target_trajectories
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_msgsMpc_target_trajectoriesCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of ocs2_msgs/mpc_performance_indices.
        Public Shared Function NewRos1Ocs2_msgsMpc_performance_indices() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsMpc_performance_indices
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsMpc_performance_indices()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Ocs2_msgsMpc_performance_indices(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsMpc_performance_indices) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_msgsMpc_performance_indicesCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Ocs2_msgsMpc_performance_indices(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsMpc_performance_indices
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_msgsMpc_performance_indicesCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of ocs2_msgs/mpc_flattened_controller.
        Public Shared Function NewRos1Ocs2_msgsMpc_flattened_controller() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsMpc_flattened_controller
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsMpc_flattened_controller()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Ocs2_msgsMpc_flattened_controller(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsMpc_flattened_controller) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_msgsMpc_flattened_controllerCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Ocs2_msgsMpc_flattened_controller(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsMpc_flattened_controller
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_msgsMpc_flattened_controllerCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of ocs2_msgs/mpc_solver_data.
        Public Shared Function NewRos1Ocs2_msgsMpc_solver_data() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsMpc_solver_data
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsMpc_solver_data()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Ocs2_msgsMpc_solver_data(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsMpc_solver_data) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_msgsMpc_solver_dataCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Ocs2_msgsMpc_solver_data(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsMpc_solver_data
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_msgsMpc_solver_dataCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of ocs2_msgs/multiplier.
        Public Shared Function NewRos1Ocs2_msgsMultiplier() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsMultiplier
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsMultiplier()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Ocs2_msgsMultiplier(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsMultiplier) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_msgsMultiplierCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Ocs2_msgsMultiplier(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsMultiplier
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_msgsMultiplierCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of ocs2_msgs/pause_resumeRequest.
        Public Shared Function NewRos1Ocs2_msgsPause_resumeRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsPause_resumeRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsPause_resumeRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Ocs2_msgsPause_resumeRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsPause_resumeRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_msgsPause_resumeRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Ocs2_msgsPause_resumeRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsPause_resumeRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_msgsPause_resumeRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of ocs2_msgs/pause_resumeResponse.
        Public Shared Function NewRos1Ocs2_msgsPause_resumeResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsPause_resumeResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsPause_resumeResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Ocs2_msgsPause_resumeResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsPause_resumeResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_msgsPause_resumeResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Ocs2_msgsPause_resumeResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsPause_resumeResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_msgsPause_resumeResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of ocs2_msgs/resetRequest.
        Public Shared Function NewRos1Ocs2_msgsResetRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsResetRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsResetRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Ocs2_msgsResetRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsResetRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_msgsResetRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Ocs2_msgsResetRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsResetRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_msgsResetRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of ocs2_msgs/resetResponse.
        Public Shared Function NewRos1Ocs2_msgsResetResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsResetResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsResetResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Ocs2_msgsResetResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsResetResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_msgsResetResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Ocs2_msgsResetResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_msgsResetResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_msgsResetResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of ocs2_switched_model_msgs/gait.
        Public Shared Function NewRos1Ocs2_switched_model_msgsGait() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_switched_model_msgsGait
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_switched_model_msgsGait()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Ocs2_switched_model_msgsGait(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_switched_model_msgsGait) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_switched_model_msgsGaitCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Ocs2_switched_model_msgsGait(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_switched_model_msgsGait
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_switched_model_msgsGaitCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of ocs2_switched_model_msgs/gait_sequence.
        Public Shared Function NewRos1Ocs2_switched_model_msgsGait_sequence() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_switched_model_msgsGait_sequence
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_switched_model_msgsGait_sequence()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Ocs2_switched_model_msgsGait_sequence(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_switched_model_msgsGait_sequence) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_switched_model_msgsGait_sequenceCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Ocs2_switched_model_msgsGait_sequence(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_switched_model_msgsGait_sequence
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_switched_model_msgsGait_sequenceCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of ocs2_switched_model_msgs/scheduled_gait_sequence.
        Public Shared Function NewRos1Ocs2_switched_model_msgsScheduled_gait_sequence() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_switched_model_msgsScheduled_gait_sequence
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_switched_model_msgsScheduled_gait_sequence()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Ocs2_switched_model_msgsScheduled_gait_sequence(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_switched_model_msgsScheduled_gait_sequence) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_switched_model_msgsScheduled_gait_sequenceCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Ocs2_switched_model_msgsScheduled_gait_sequence(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_switched_model_msgsScheduled_gait_sequence
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_switched_model_msgsScheduled_gait_sequenceCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of ocs2_switched_model_msgs/trajectory_requestRequest.
        Public Shared Function NewRos1Ocs2_switched_model_msgsTrajectory_requestRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_switched_model_msgsTrajectory_requestRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_switched_model_msgsTrajectory_requestRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Ocs2_switched_model_msgsTrajectory_requestRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_switched_model_msgsTrajectory_requestRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_switched_model_msgsTrajectory_requestRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Ocs2_switched_model_msgsTrajectory_requestRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_switched_model_msgsTrajectory_requestRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_switched_model_msgsTrajectory_requestRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of ocs2_switched_model_msgs/trajectory_requestResponse.
        Public Shared Function NewRos1Ocs2_switched_model_msgsTrajectory_requestResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_switched_model_msgsTrajectory_requestResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_switched_model_msgsTrajectory_requestResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Ocs2_switched_model_msgsTrajectory_requestResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_switched_model_msgsTrajectory_requestResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_switched_model_msgsTrajectory_requestResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Ocs2_switched_model_msgsTrajectory_requestResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Ocs2_switched_model_msgsTrajectory_requestResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Ocs2_switched_model_msgsTrajectory_requestResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of sensor_msgs/RegionOfInterest.
        Public Shared Function NewRos1Sensor_msgsRegionOfInterest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Sensor_msgsRegionOfInterest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Sensor_msgsRegionOfInterest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Sensor_msgsRegionOfInterest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Sensor_msgsRegionOfInterest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Sensor_msgsRegionOfInterestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Sensor_msgsRegionOfInterest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Sensor_msgsRegionOfInterest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Sensor_msgsRegionOfInterestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of sensor_msgs/CameraInfo.
        Public Shared Function NewRos1Sensor_msgsCameraInfo() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Sensor_msgsCameraInfo
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Sensor_msgsCameraInfo()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Sensor_msgsCameraInfo(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Sensor_msgsCameraInfo) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Sensor_msgsCameraInfoCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Sensor_msgsCameraInfo(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Sensor_msgsCameraInfo
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Sensor_msgsCameraInfoCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of robot_calibration_msgs/CameraParameter.
        Public Shared Function NewRos1Robot_calibration_msgsCameraParameter() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_calibration_msgsCameraParameter
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_calibration_msgsCameraParameter()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Robot_calibration_msgsCameraParameter(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_calibration_msgsCameraParameter) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_calibration_msgsCameraParameterCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Robot_calibration_msgsCameraParameter(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_calibration_msgsCameraParameter
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_calibration_msgsCameraParameterCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of robot_calibration_msgs/ExtendedCameraInfo.
        Public Shared Function NewRos1Robot_calibration_msgsExtendedCameraInfo() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_calibration_msgsExtendedCameraInfo
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_calibration_msgsExtendedCameraInfo()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Robot_calibration_msgsExtendedCameraInfo(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_calibration_msgsExtendedCameraInfo) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_calibration_msgsExtendedCameraInfoCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Robot_calibration_msgsExtendedCameraInfo(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_calibration_msgsExtendedCameraInfo
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_calibration_msgsExtendedCameraInfoCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of sensor_msgs/PointField.
        Public Shared Function NewRos1Sensor_msgsPointField() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Sensor_msgsPointField
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Sensor_msgsPointField()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Sensor_msgsPointField(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Sensor_msgsPointField) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Sensor_msgsPointFieldCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Sensor_msgsPointField(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Sensor_msgsPointField
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Sensor_msgsPointFieldCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of sensor_msgs/PointCloud2.
        Public Shared Function NewRos1Sensor_msgsPointCloud2() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Sensor_msgsPointCloud2
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Sensor_msgsPointCloud2()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Sensor_msgsPointCloud2(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Sensor_msgsPointCloud2) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Sensor_msgsPointCloud2Codec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Sensor_msgsPointCloud2(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Sensor_msgsPointCloud2
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Sensor_msgsPointCloud2Codec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of sensor_msgs/Image.
        Public Shared Function NewRos1Sensor_msgsImage() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Sensor_msgsImage
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Sensor_msgsImage()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Sensor_msgsImage(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Sensor_msgsImage) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Sensor_msgsImageCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Sensor_msgsImage(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Sensor_msgsImage
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Sensor_msgsImageCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of robot_calibration_msgs/Observation.
        Public Shared Function NewRos1Robot_calibration_msgsObservation() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_calibration_msgsObservation
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_calibration_msgsObservation()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Robot_calibration_msgsObservation(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_calibration_msgsObservation) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_calibration_msgsObservationCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Robot_calibration_msgsObservation(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_calibration_msgsObservation
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_calibration_msgsObservationCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of robot_calibration_msgs/CalibrationData.
        Public Shared Function NewRos1Robot_calibration_msgsCalibrationData() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_calibration_msgsCalibrationData
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_calibration_msgsCalibrationData()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Robot_calibration_msgsCalibrationData(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_calibration_msgsCalibrationData) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_calibration_msgsCalibrationDataCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Robot_calibration_msgsCalibrationData(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_calibration_msgsCalibrationData
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_calibration_msgsCalibrationDataCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of robot_calibration_msgs/CaptureConfig.
        Public Shared Function NewRos1Robot_calibration_msgsCaptureConfig() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_calibration_msgsCaptureConfig
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_calibration_msgsCaptureConfig()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Robot_calibration_msgsCaptureConfig(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_calibration_msgsCaptureConfig) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_calibration_msgsCaptureConfigCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Robot_calibration_msgsCaptureConfig(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_calibration_msgsCaptureConfig
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_calibration_msgsCaptureConfigCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of robot_calibration_msgs/GripperLedCommandGoal.
        Public Shared Function NewRos1Robot_calibration_msgsGripperLedCommandGoal() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_calibration_msgsGripperLedCommandGoal
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_calibration_msgsGripperLedCommandGoal()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Robot_calibration_msgsGripperLedCommandGoal(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_calibration_msgsGripperLedCommandGoal) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_calibration_msgsGripperLedCommandGoalCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Robot_calibration_msgsGripperLedCommandGoal(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_calibration_msgsGripperLedCommandGoal
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_calibration_msgsGripperLedCommandGoalCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of robot_calibration_msgs/GripperLedCommandResult.
        Public Shared Function NewRos1Robot_calibration_msgsGripperLedCommandResult() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_calibration_msgsGripperLedCommandResult
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_calibration_msgsGripperLedCommandResult()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Robot_calibration_msgsGripperLedCommandResult(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_calibration_msgsGripperLedCommandResult) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_calibration_msgsGripperLedCommandResultCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Robot_calibration_msgsGripperLedCommandResult(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_calibration_msgsGripperLedCommandResult
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_calibration_msgsGripperLedCommandResultCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of robot_calibration_msgs/GripperLedCommandFeedback.
        Public Shared Function NewRos1Robot_calibration_msgsGripperLedCommandFeedback() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_calibration_msgsGripperLedCommandFeedback
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_calibration_msgsGripperLedCommandFeedback()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Robot_calibration_msgsGripperLedCommandFeedback(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_calibration_msgsGripperLedCommandFeedback) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_calibration_msgsGripperLedCommandFeedbackCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Robot_calibration_msgsGripperLedCommandFeedback(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_calibration_msgsGripperLedCommandFeedback
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_calibration_msgsGripperLedCommandFeedbackCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of robot_localization/FromLLRequest.
        Public Shared Function NewRos1Robot_localizationFromLLRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationFromLLRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationFromLLRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Robot_localizationFromLLRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationFromLLRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_localizationFromLLRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Robot_localizationFromLLRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationFromLLRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_localizationFromLLRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of robot_localization/FromLLResponse.
        Public Shared Function NewRos1Robot_localizationFromLLResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationFromLLResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationFromLLResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Robot_localizationFromLLResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationFromLLResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_localizationFromLLResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Robot_localizationFromLLResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationFromLLResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_localizationFromLLResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of robot_localization/GetStateRequest.
        Public Shared Function NewRos1Robot_localizationGetStateRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationGetStateRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationGetStateRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Robot_localizationGetStateRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationGetStateRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_localizationGetStateRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Robot_localizationGetStateRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationGetStateRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_localizationGetStateRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of robot_localization/GetStateResponse.
        Public Shared Function NewRos1Robot_localizationGetStateResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationGetStateResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationGetStateResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Robot_localizationGetStateResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationGetStateResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_localizationGetStateResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Robot_localizationGetStateResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationGetStateResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_localizationGetStateResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of robot_localization/SetDatumRequest.
        Public Shared Function NewRos1Robot_localizationSetDatumRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationSetDatumRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationSetDatumRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Robot_localizationSetDatumRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationSetDatumRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_localizationSetDatumRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Robot_localizationSetDatumRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationSetDatumRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_localizationSetDatumRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of robot_localization/SetDatumResponse.
        Public Shared Function NewRos1Robot_localizationSetDatumResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationSetDatumResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationSetDatumResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Robot_localizationSetDatumResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationSetDatumResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_localizationSetDatumResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Robot_localizationSetDatumResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationSetDatumResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_localizationSetDatumResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of robot_localization/SetPoseRequest.
        Public Shared Function NewRos1Robot_localizationSetPoseRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationSetPoseRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationSetPoseRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Robot_localizationSetPoseRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationSetPoseRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_localizationSetPoseRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Robot_localizationSetPoseRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationSetPoseRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_localizationSetPoseRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of robot_localization/SetPoseResponse.
        Public Shared Function NewRos1Robot_localizationSetPoseResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationSetPoseResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationSetPoseResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Robot_localizationSetPoseResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationSetPoseResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_localizationSetPoseResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Robot_localizationSetPoseResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationSetPoseResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_localizationSetPoseResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of robot_localization/SetUTMZoneRequest.
        Public Shared Function NewRos1Robot_localizationSetUTMZoneRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationSetUTMZoneRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationSetUTMZoneRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Robot_localizationSetUTMZoneRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationSetUTMZoneRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_localizationSetUTMZoneRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Robot_localizationSetUTMZoneRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationSetUTMZoneRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_localizationSetUTMZoneRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of robot_localization/SetUTMZoneResponse.
        Public Shared Function NewRos1Robot_localizationSetUTMZoneResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationSetUTMZoneResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationSetUTMZoneResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Robot_localizationSetUTMZoneResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationSetUTMZoneResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_localizationSetUTMZoneResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Robot_localizationSetUTMZoneResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationSetUTMZoneResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_localizationSetUTMZoneResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of robot_localization/ToLLRequest.
        Public Shared Function NewRos1Robot_localizationToLLRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationToLLRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationToLLRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Robot_localizationToLLRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationToLLRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_localizationToLLRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Robot_localizationToLLRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationToLLRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_localizationToLLRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of robot_localization/ToLLResponse.
        Public Shared Function NewRos1Robot_localizationToLLResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationToLLResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationToLLResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Robot_localizationToLLResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationToLLResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_localizationToLLResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Robot_localizationToLLResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationToLLResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_localizationToLLResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of robot_localization/ToggleFilterProcessingRequest.
        Public Shared Function NewRos1Robot_localizationToggleFilterProcessingRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationToggleFilterProcessingRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationToggleFilterProcessingRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Robot_localizationToggleFilterProcessingRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationToggleFilterProcessingRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_localizationToggleFilterProcessingRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Robot_localizationToggleFilterProcessingRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationToggleFilterProcessingRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_localizationToggleFilterProcessingRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of robot_localization/ToggleFilterProcessingResponse.
        Public Shared Function NewRos1Robot_localizationToggleFilterProcessingResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationToggleFilterProcessingResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationToggleFilterProcessingResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Robot_localizationToggleFilterProcessingResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationToggleFilterProcessingResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_localizationToggleFilterProcessingResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Robot_localizationToggleFilterProcessingResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Robot_localizationToggleFilterProcessingResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Robot_localizationToggleFilterProcessingResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of taiji_trigger_node/PerformTaijiRequest.
        Public Shared Function NewRos1Taiji_trigger_nodePerformTaijiRequest() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Taiji_trigger_nodePerformTaijiRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Taiji_trigger_nodePerformTaijiRequest()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Taiji_trigger_nodePerformTaijiRequest(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Taiji_trigger_nodePerformTaijiRequest) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Taiji_trigger_nodePerformTaijiRequestCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Taiji_trigger_nodePerformTaijiRequest(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Taiji_trigger_nodePerformTaijiRequest
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Taiji_trigger_nodePerformTaijiRequestCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of taiji_trigger_node/PerformTaijiResponse.
        Public Shared Function NewRos1Taiji_trigger_nodePerformTaijiResponse() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Taiji_trigger_nodePerformTaijiResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Taiji_trigger_nodePerformTaijiResponse()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Taiji_trigger_nodePerformTaijiResponse(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Taiji_trigger_nodePerformTaijiResponse) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Taiji_trigger_nodePerformTaijiResponseCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Taiji_trigger_nodePerformTaijiResponse(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Taiji_trigger_nodePerformTaijiResponse
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Taiji_trigger_nodePerformTaijiResponseCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of user_pkg/piddebug.
        Public Shared Function NewRos1User_pkgPiddebug() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1User_pkgPiddebug
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1User_pkgPiddebug()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1User_pkgPiddebug(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1User_pkgPiddebug) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1User_pkgPiddebugCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1User_pkgPiddebug(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1User_pkgPiddebug
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1User_pkgPiddebugCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of user_pkg/uwbdebug.
        Public Shared Function NewRos1User_pkgUwbdebug() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1User_pkgUwbdebug
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1User_pkgUwbdebug()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1User_pkgUwbdebug(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1User_pkgUwbdebug) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1User_pkgUwbdebugCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1User_pkgUwbdebug(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1User_pkgUwbdebug
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1User_pkgUwbdebugCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of wiimote/IrSourceInfo.
        Public Shared Function NewRos1WiimoteIrSourceInfo() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1WiimoteIrSourceInfo
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1WiimoteIrSourceInfo()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1WiimoteIrSourceInfo(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1WiimoteIrSourceInfo) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1WiimoteIrSourceInfoCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1WiimoteIrSourceInfo(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1WiimoteIrSourceInfo
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1WiimoteIrSourceInfoCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of wiimote/State.
        Public Shared Function NewRos1WiimoteState() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1WiimoteState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1WiimoteState()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1WiimoteState(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1WiimoteState) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1WiimoteStateCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1WiimoteState(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1WiimoteState
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1WiimoteStateCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of wiimote/TimedSwitch.
        Public Shared Function NewRos1WiimoteTimedSwitch() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1WiimoteTimedSwitch
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1WiimoteTimedSwitch()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1WiimoteTimedSwitch(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1WiimoteTimedSwitch) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1WiimoteTimedSwitchCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1WiimoteTimedSwitch(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1WiimoteTimedSwitch
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1WiimoteTimedSwitchCodec().Decode(wire)
        End Function

    End Class
End Namespace
