' @file Program.vb
' @brief Exercise the complete original dsr_msgs2/action/JogH2r_Feedback through genuine Visual Basic CLR AOT.
Imports System
Public Module Program
    Public Sub Main()
        Dim codec = Global.Uwvm.DoosanDoosanRos2HumbleComplete.Models.BoundedRecords.Ros2Dsr_msgs2ActionJogH2r_FeedbackCodec.Instance
        Dim bytes = codec.Encode(New Global.Uwvm.DoosanDoosanRos2HumbleComplete.Models.BoundedRecords._Ros2Dsr_msgs2ActionJogH2r_Feedback())
        Dim again = codec.Encode(codec.Decode(bytes))
        If bytes.Length <> again.Length Then Throw New InvalidOperationException("complete size changed")
        For index As Integer = 0 To bytes.Length - 1
            If bytes(index) <> again(index) Then Throw New InvalidOperationException("complete bytes changed")
        Next
        Console.WriteLine("{""type"":""dsr_msgs2/action/JogH2r_Feedback"",""bytes"":" & bytes.Length.ToString() & "}")
    End Sub
End Module
