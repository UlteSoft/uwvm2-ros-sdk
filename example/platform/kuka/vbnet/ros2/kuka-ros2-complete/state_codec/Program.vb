' @file Program.vb
' @brief Exercise the complete original kuka_driver_interfaces/msg/KssStatus through genuine Visual Basic CLR AOT.
Imports System
Public Module Program
    Public Sub Main()
        Dim codec = Global.Uwvm.KukaKukaRos2Complete.Models.BoundedRecords.Ros2Kuka_driver_interfacesMsgKssStatusCodec.Instance
        Dim bytes = codec.Encode(New Global.Uwvm.KukaKukaRos2Complete.Models.BoundedRecords._Ros2Kuka_driver_interfacesMsgKssStatus())
        Dim again = codec.Encode(codec.Decode(bytes))
        If bytes.Length <> again.Length Then Throw New InvalidOperationException("complete size changed")
        For index As Integer = 0 To bytes.Length - 1
            If bytes(index) <> again(index) Then Throw New InvalidOperationException("complete bytes changed")
        Next
        Console.WriteLine("{""type"":""kuka_driver_interfaces/msg/KssStatus"",""bytes"":" & bytes.Length.ToString() & "}")
    End Sub
End Module
