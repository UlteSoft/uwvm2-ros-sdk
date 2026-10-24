Option Strict On
Option Explicit On
Imports System
' @brief Execute genuine Visual Basic logic over the full original .NET value.
Module Program
    Sub Main()
        Using input = Console.OpenStandardInput()
            Dim bytes(5160) As Byte
            Dim used As Integer = 0
            While used < bytes.Length
                Dim count As Integer = input.Read(bytes, used, bytes.Length - used)
                If count = 0 Then Exit While
                used += count
            End While
            Array.Resize(Of Byte)(bytes, used)
            Dim codec = New Uwvm.Flexiv.ros2jazzyv22.BoundedRecords.Ros2Flexiv_msgsMsgRobotStatesCodec()
            Dim value = codec.Decode(bytes)
            Console.WriteLine(BitConverter.ToString(codec.Encode(value)).Replace("-", "").ToLowerInvariant())
        End Using
    End Sub
End Module
