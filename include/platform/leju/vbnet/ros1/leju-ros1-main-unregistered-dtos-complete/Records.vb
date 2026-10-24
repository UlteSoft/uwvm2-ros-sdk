''' @file Records.vb
''' @brief Complete VB.NET typed access to genuine CLR record codecs.
''' @details Requires this profile's C# assembly; failures remain real CLR exceptions.
Option Strict On
Namespace Uwvm.Leju.Ros1MainUnregisteredDtos
    Public NotInheritable Class Records
        Private Sub New()
        End Sub

        ''' @brief Construct all original defaults of kuavo_sdk/qv.
        Public Shared Function NewRos1Kuavo_sdkQv() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_sdkQv
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_sdkQv()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_sdkQv(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_sdkQv) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_sdkQvCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_sdkQv(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_sdkQv
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_sdkQvCodec().Decode(wire)
        End Function

        ''' @brief Construct all original defaults of kuavo_sdk/fullBodyTargetTrajectories.
        Public Shared Function NewRos1Kuavo_sdkFullBodyTargetTrajectories() As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_sdkFullBodyTargetTrajectories
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_sdkFullBodyTargetTrajectories()
        End Function
        ''' @brief Encode the complete original typed value into owning bytes.
        Public Shared Function EncodeRos1Kuavo_sdkFullBodyTargetTrajectories(value As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_sdkFullBodyTargetTrajectories) As Byte()
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_sdkFullBodyTargetTrajectoriesCodec().Encode(value)
        End Function
        ''' @brief Decode exactly one complete canonical value; invalid wire throws.
        Public Shared Function DecodeRos1Kuavo_sdkFullBodyTargetTrajectories(wire As Byte()) As Global.Uwvm.RosWasm.Generated.BoundedRecords._Ros1Kuavo_sdkFullBodyTargetTrajectories
            Return New Global.Uwvm.RosWasm.Generated.BoundedRecords.Ros1Kuavo_sdkFullBodyTargetTrajectoriesCodec().Decode(wire)
        End Function

    End Class
End Namespace
