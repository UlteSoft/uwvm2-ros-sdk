''' @file Main.vb
''' @brief Observe the complete original Bumper using genuine VB.NET.
''' @details Real VB IL and the ordinary CLR SDK are compiled through full AOT.
Option Strict On
Imports Uwvm.Pal
Imports Uwvm.Pal.Ros2.ros2_humble_devel
Public Module Program
    ''' @brief Preserve the actual operation and once-only cleanup result.
    ''' @param args Exactly one independently granted topic alias.
    ''' @return Actual first failure, clamped to the WASI exit range.
    Public Function Main(args As String()) As Integer
        If args.Length <> 1 Then Return 22
        Return Observation.Write(Observations.ReadBumper(args(0), 250))
    End Function
End Module
