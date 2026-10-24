''' @file Main.vb
''' @brief Observe the complete original JointTrajectory using genuine VB.NET.
''' @details Real VB IL and the ordinary CLR SDK are compiled through full AOT.
Option Strict On
Imports Uwvm.HelloRobot
Imports Uwvm.HelloRobot.Ros2.mobile_fjt_humble
Public Module Program
    ''' @brief Preserve the actual operation and once-only cleanup result.
    ''' @param args Exactly one independently granted topic alias.
    ''' @return Actual first failure, clamped to the WASI exit range.
    Public Function Main(args As String()) As Integer
        If args.Length <> 1 Then Return 22
        Return Observation.Write(Observations.ReadJointTrajectory(args(0), 250))
    End Function
End Module
