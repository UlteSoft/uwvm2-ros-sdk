//! @file observation.rs
//! @brief Represent the complete original ABB ROS 2 canonical value catalog.
//! @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
//! fields, original constants and native defaults; field units and frames follow the retained
//! definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
//! native ROS objects; importing them grants no transport alias.
//! @brief Own complete ABB ROS 2 observations and independent cleanup facts.
//! @details This module uses the real capability SDK and the complete original
//! vendor codecs. Each function performs one request or a finite poll sequence, then
//! closes its capability once. There is no service retry, implicit timer, thread, or
//! controller connection. Enable roswasm features alloc and ros2 explicitly.
//! @see read_speed, read_io, read_system_state

extern crate alloc;

use alloc::vec;
use alloc::vec::Vec;
use roswasm::typed::Canonical;
use roswasm::{codes, Backend, Capability, Error, Operation};

/// @brief Complete selected ABB record definitions, including all nested data.
/// @details The canonical family preserves original fields and finite bounds;
/// importing its types creates no native resources or permissions.
/// @see Outcome
#[path = "ros2/abb-ros2-complete/bounded_records.rs"]
pub mod bounded_records;

use bounded_records::{
    Ros2Abb_robot_msgsMsgSystemState as SystemState,
    Ros2Abb_robot_msgsSrvGetIOSignal_Request as IORequest,
    Ros2Abb_robot_msgsSrvGetIOSignal_Response as IOResponse,
    Ros2Abb_robot_msgsSrvGetSpeedRatio_Request as SpeedRequest,
    Ros2Abb_robot_msgsSrvGetSpeedRatio_Response as SpeedResponse,
};

/// @brief Own one whole typed response and independent failure observations.
/// @tparam T Complete generated vendor record; never a native ROS memory view.
/// @details None is an absent response, including decoding refusal. Some may
/// describe controller failure. Raw numeric and optional length observations
/// remain separate from application status and the single cleanup result.
/// @see Outcome::status
pub struct Outcome<T> {
    /// @brief First open, transport, decode, or controller application error.
    pub primary: u32,
    /// @brief Original transport error, including an actually written size hint.
    pub rpc_error: Option<Error>,
    /// @brief True only after the request or poll returned its real result.
    pub rpc_present: bool,
    /// @brief Actual response extent, or original required extent on error 90.
    pub length: Option<u64>,
    /// @brief Independent once-only close status; None means no acquired owner.
    pub cleanup: Option<u32>,
    /// @brief Whole owned typed response, available only after full decoding.
    pub value: Option<T>,
    /// @brief Whole validated canonical body; empty when no response is present.
    pub wire: Vec<u8>,
}

impl<T> Outcome<T> {
    /// @brief Create local empty report storage without any host operation.
    /// @return Empty owned outcome with no response, transport, or cleanup facts.
    /// @details Zero primary alone does not establish a completed observation.
    /// @see Outcome::status
    fn empty() -> Self {
        Self {
            primary: 0,
            rpc_error: None,
            rpc_present: false,
            length: None,
            cleanup: None,
            value: None,
            wire: Vec::new(),
        }
    }

    /// @brief Select primary failure before any independent cleanup failure.
    /// @return Full unsigned status; zero requires both observed stages to succeed.
    /// @details Local immutable read; it issues no ROS call and grants no access.
    /// @see Outcome::primary
    pub fn status(&self) -> u32 {
        if self.primary != 0 {
            self.primary
        } else {
            self.cleanup.unwrap_or(0)
        }
    }
}

/// @brief Perform one transport operation and decode its complete typed response.
/// @param[in] alias Borrowed existing alias; the host independently grants rights.
/// @param[in] request Entire canonical request, stable until synchronous return.
/// @param[in] capacity Exact generated maximum complete response byte count.
/// @param[in] topic True selects subscribe/poll; false selects ServiceCall.
/// @param[in] attempts Poll budget; service callers pass one.
/// @param[in] pause Callback between idle polls; normal single reads never call it.
/// @param[in] accepted Pure application predicate; it must not panic or reenter ROS.
/// @return Whole typed outcome with separate original error and close observations.
/// @details Ordinary errors close the acquired owner exactly once. Abort/panic
/// or allocation termination may prevent normal cleanup or result reporting.
/// @see read_speed, read_io, read_system_state
fn receive<T: Canonical>(
    alias: &str,
    request: &[u8],
    capacity: usize,
    topic: bool,
    attempts: u32,
    mut pause: impl FnMut() -> u32,
    accepted: impl FnOnce(&T) -> bool,
) -> Outcome<T> {
    let mut out = Outcome::empty();
    if attempts == 0 || attempts > 250 {
        out.primary = codes::INVALID;
        return out;
    }
    if Backend::Ros2.abi_version() != 1 {
        out.primary = codes::UNSUPPORTED;
        return out;
    }
    let mut owner = match Capability::open(Backend::Ros2, alias) {
        Ok(owner) => owner,
        Err(error) => {
            out.primary = error.code;
            return out;
        }
    };
    let mut output = vec![0; capacity];
    if topic {
        if let Err(error) = owner.subscribe() {
            out.primary = error.code;
        }
    }
    if out.primary == 0 {
        let mut result = if topic {
            owner.poll(&mut output)
        } else {
            owner.request(Operation::ServiceCall, request, &mut output)
        };
        for _ in 1..attempts {
            if !topic || !matches!(&result, Err(error) if error.code == 11) {
                break;
            }
            let paused = pause();
            if paused != 0 {
                out.primary = paused;
                break;
            }
            result = owner.poll(&mut output);
        }
        out.rpc_present = true;
        match result {
            Err(error) => {
                if out.primary == 0 {
                    out.primary = error.code;
                }
                out.length = error.required;
                out.rpc_error = Some(error);
            }
            Ok(size) => {
                out.length = Some(size as u64);
                match T::decode(&output[..size]) {
                    Err(error) => out.primary = error.code,
                    Ok(value) => {
                        if !accepted(&value) {
                            out.primary = 5;
                        }
                        output.truncate(size);
                        out.wire = output;
                        out.value = Some(value);
                    }
                }
            }
        }
    }
    out.cleanup = Some(owner.close().err().map_or(0, |error| error.code));
    out
}

/// @brief Read the complete RAPID motion speed ratio once without changing it.
/// @param[in] alias Existing GetSpeedRatio service alias with call permission.
/// @return Whole speed percent, result_code, diagnostic text, and failure facts.
/// @details Application success requires RC_SUCCESS=1 and a ratio at most 100.
/// Complete controller refusals retain their whole response with status 5.
/// @see Outcome::status
pub fn read_speed(alias: &str) -> Outcome<SpeedResponse> {
    let request = match SpeedRequest::default().encode() {
        Ok(bytes) => bytes,
        Err(error) => {
            let mut out = Outcome::empty();
            out.primary = error.code;
            return out;
        }
    };
    receive(
        alias,
        &request,
        SpeedResponse::MAX_WIRE_BYTES,
        false,
        1,
        || 0,
        |value: &SpeedResponse| value.result_code == 1 && value.speed_ratio <= 100,
    )
}

/// @brief Read one complete configured IO signal value without writing it.
/// @param[in] alias Existing GetIOSignal service alias with exact type permission.
/// @param[in] signal Nonempty strict UTF-8 name, at most 512 bytes, no NUL.
/// @return Whole typed response and independent transport/controller/close facts.
/// @details Complete request validation precedes capability acquisition. No
/// timeout, size failure, or controller refusal causes an automatic replay.
/// @see read_speed
pub fn read_io(alias: &str, signal: &str) -> Outcome<IOResponse> {
    if signal.is_empty() || signal.len() > 512 || signal.as_bytes().contains(&0) {
        let mut out = Outcome::empty();
        out.primary = codes::INVALID;
        return out;
    }
    let request = IORequest {
        signal: signal.into(),
    };
    let wire = match request.encode() {
        Ok(bytes) => bytes,
        Err(error) => {
            let mut out = Outcome::empty();
            out.primary = error.code;
            return out;
        }
    };
    receive(
        alias,
        &wire,
        IOResponse::MAX_WIRE_BYTES,
        false,
        1,
        || 0,
        |value: &IOResponse| value.result_code == 1,
    )
}

/// @brief Subscribe and attempt one nonblocking complete SystemState read.
/// @param[in] alias Existing topic alias with SystemState subscription permission.
/// @return Whole header, flags, tasks, and units when present; idle 11 is retained.
/// @details This finite operation never synthesizes a default state on an empty
/// queue. Retain an explicit SDK subscription for a persistent application loop.
/// @see Outcome::value
pub fn read_system_state(alias: &str) -> Outcome<SystemState> {
    receive(
        alias,
        &[],
        SystemState::MAX_WIRE_BYTES,
        true,
        1,
        || 0,
        |_: &SystemState| true,
    )
}

/// @brief Retain one subscription while awaiting a complete first state sample.
/// @param[in] alias Existing SystemState subscription capability alias.
/// @param[in] attempts Finite poll budget in [1,250], including the immediate poll.
/// @param[in] pause Non-panicking callback returning zero or a primary SDK error.
/// @return Whole decoded state and separate final-poll, primary, and close facts.
/// @details Only idle 11 admits another poll on the same owner. Exhaustion keeps
/// idle 11. A pause error preserves the separately recorded original idle RPC.
/// The caller chooses the wait duration; this module creates no timer or thread.
/// @see read_system_state
pub fn wait_system_state(
    alias: &str,
    attempts: u32,
    pause: impl FnMut() -> u32,
) -> Outcome<SystemState> {
    receive(
        alias,
        &[],
        SystemState::MAX_WIRE_BYTES,
        true,
        attempts,
        pause,
        |_: &SystemState| true,
    )
}
