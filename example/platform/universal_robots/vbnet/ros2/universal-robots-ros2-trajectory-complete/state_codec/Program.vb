' @file Program.vb
' @brief Exercise the complete original ur_msgs/msg/IOStates through genuine Visual Basic CLR AOT.
Imports System
Public Module Program
    Public Sub Main()
        Dim codec = Global.Uwvm.UniversalRobotsUniversalRobotsRos2TrajectoryComplete.Models.BoundedRecords.Ros2Ur_msgsMsgIOStatesCodec.Instance
        Dim bytes = codec.Encode(New Global.Uwvm.UniversalRobotsUniversalRobotsRos2TrajectoryComplete.Models.BoundedRecords._Ros2Ur_msgsMsgIOStates())
        Dim again = codec.Encode(codec.Decode(bytes))
        If bytes.Length <> again.Length Then Throw New InvalidOperationException("complete size changed")
        For index As Integer = 0 To bytes.Length - 1
            If bytes(index) <> again(index) Then Throw New InvalidOperationException("complete bytes changed")
        Next
        Console.WriteLine("{""type"":""ur_msgs/msg/IOStates"",""bytes"":" & bytes.Length.ToString() & "}")
    End Sub
End Module
