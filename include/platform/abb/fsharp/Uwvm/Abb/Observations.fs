// @file Observations.fs
// @brief Represent the complete original ABB ROS 2 canonical value catalog.
// @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
// fields, original constants and native defaults; field units and frames follow the retained
// definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
// native ROS objects; importing them grants no transport alias.
namespace Uwvm.Abb.FSharp

open Uwvm.Abb

/// @brief Expose genuine F# signatures over the complete managed ABB value model.
/// @details All functions run inside the full-AOT WASI guest. Returned values
/// own their nested records and preserve separate transport and cleanup facts.
module Observations =
    /// @brief Read the controller speed ratio once without changing it.
    /// @param alias Borrowed exact GetSpeedRatio service-call capability alias.
    /// @return Owned full typed response/report, including a complete refusal.
    /// @details The actual request and once-only close complete before return.
    let readSpeed (alias: string) = Observation.ReadSpeed(alias)

    /// @brief Read one complete IO signal value through the real selected ROS ABI.
    /// @param alias Borrowed exact GetIOSignal service-call alias.
    /// @param signal Nonempty Unicode name bounded to 512 UTF-8 bytes.
    /// @return Owned complete response/report; invalid local inputs retain errno 22.
    /// @details No host CLR, background thread, or implicit request replay exists.
    let readIO (alias: string) (signal: string) = Observation.ReadIO(alias, signal)

    /// @brief Await one complete nested SystemState on the same subscription.
    /// @param alias Borrowed exact topic-subscribe alias.
    /// @param attempts Caller-supplied poll credits in 1..250.
    /// @return Owned complete state/report or actual transport/clock/decode failure.
    /// @details Only idle errno 11 permits a subsequent explicit WASI-clock pause.
    let systemState (alias: string) (attempts: int) = Observation.ReadSystemState(alias, attempts)
