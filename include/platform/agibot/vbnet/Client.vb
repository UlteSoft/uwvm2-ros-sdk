''' @file Client.vb
''' @brief Provide the complete agibot Client.vb source contract.
''' @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
''' encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
Option Strict On
Option Explicit On
Option Infer On

Namespace Agibot.VisualBasic
    ''' <summary>Complete AimDK SDK compiled from VB.NET to genuine AOT Wasm.</summary>
    ''' <remarks>The explicitly shared .NET layer owns immutable results and
    ''' pins buffers only across the static same-Wasm C FFI. No native ROS client,
    ''' host VB process or managed IL interpreter runs the application.</remarks>
    Public Module Client
        ''' <summary>Query original GetMcAction once without replay.</summary>
        ''' <param name="capabilityAlias">Explicit service capabilityAlias, 1..255 strict UTF-8 bytes.</param>
        ''' <returns>Full JSON with independent operation, close and vendor facts.</returns>
        Public Function QueryMode(capabilityAlias As String) As Agibot.Wasm.Observation
            Return Agibot.Wasm.Transport.Observe(1UI, capabilityAlias, 3000UI)
        End Function

        ''' <summary>Receive complete McCommonState before a monotonic deadline.</summary>
        ''' <param name="capabilityAlias">Explicit granted state-subscribe capabilityAlias.</param>
        ''' <param name="timeoutMilliseconds">Deadline in 1..30000 ms.</param>
        ''' <returns>Owned observation; error 110 means deadline expiry.</returns>
        ''' <remarks>Requires monotonic-clock; no callback enters VB.NET.</remarks>
        Public Function NextMotionState(capabilityAlias As String, Optional timeoutMilliseconds As UInteger = 3000UI) As Agibot.Wasm.Observation
            Return Agibot.Wasm.Transport.Observe(2UI, capabilityAlias, timeoutMilliseconds)
        End Function

        ''' <summary>Enumerate original X2 Ultra resources without playback.</summary>
        ''' <param name="capabilityAlias">Explicit GetRobotResources service capabilityAlias.</param>
        ''' <returns>Complete bounded resource/file arrays and exact int64 vendor code.</returns>
        Public Function ListResources(capabilityAlias As String) As Agibot.Wasm.Observation
            Return Agibot.Wasm.Transport.Observe(3UI, capabilityAlias, 3000UI)
        End Function
    End Module
End Namespace
