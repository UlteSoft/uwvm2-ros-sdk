' @file Observations.vb
' @brief Represent the complete original ABB ROS 2 canonical value catalog.
' @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
' fields, original constants and native defaults; field units and frames follow the retained
' definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
' native ROS objects; importing them grants no transport alias.
Imports Uwvm.Abb

Namespace Uwvm.Abb.VisualBasic
    ''' @brief Expose genuine Visual Basic functions over the complete managed ABB API.
    ''' @details These functions are real VB.NET full-AOT inputs. All nested
    ''' response values remain guest-owned and no host CLR is needed at run time.
    Public Module Observations
        ''' @brief Read the controller speed ratio without changing its override.
        ''' @param capabilityAlias Borrowed exact GetSpeedRatio service-call capability alias.
        ''' @return Owned complete typed response/report, retaining controller refusal.
        ''' @details One actual request and one checked close complete before return.
        Public Function ReadSpeed(capabilityAlias As String) As Observation.Result(Of Observation.SpeedRatio)
            Return Observation.ReadSpeed(capabilityAlias)
        End Function

        ''' @brief Read one complete IO signal value through the genuine ROS ABI.
        ''' @param capabilityAlias Borrowed exact GetIOSignal service-call alias.
        ''' @param signal Nonempty Unicode name bounded to 512 UTF-8 bytes.
        ''' @return Owned whole response/report; local invalid input preserves errno 22.
        ''' @details Neither a host process nor an implicit service retry is used.
        Public Function ReadIO(capabilityAlias As String, signal As String) As Observation.Result(Of Observation.IOSignal)
            Return Observation.ReadIO(capabilityAlias, signal)
        End Function

        ''' @brief Await a complete nested SystemState with one subscription owner.
        ''' @param capabilityAlias Borrowed exact topic-subscribe alias.
        ''' @param attempts Caller-supplied poll credits in 1..250.
        ''' @return Owned complete state/report or the actual operation failure.
        ''' @details Only idle errno 11 permits another poll after a real WASI pause.
        Public Function SystemState(capabilityAlias As String, attempts As Integer) As Observation.Result(Of Observation.SystemState)
            Return Observation.ReadSystemState(capabilityAlias, attempts)
        End Function
    End Module
End Namespace
