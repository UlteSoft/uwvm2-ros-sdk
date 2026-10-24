//! @file lib.rs
//! @brief Represent the complete original FANUC ROS 2 canonical value catalog.
//! @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
//! fields, original constants and native defaults; field units and frames follow the retained
//! definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
//! native ROS objects; importing them grants no transport alias.
//! @brief Perform one complete FANUC GetTCPSpeed observation through the real ROS2 Guest SDK.
//! @details This Rust 2021 command-library component uses the selected generated
//! family and actual wasm32-wasip1 imports. Backend use requires an externally
//! reviewed per-instance service alias. Importing the module grants nothing and
//! performs no service operation. Calls are synchronous and caller-serialized;
//! no thread, executor, deadline clock, retry or controller recovery is created.
//! The selected compiler is the centrally pinned Rust 1.87.0. Acceptance of
//! this complete retained program is recorded separately from its source preparation. Abort/panic or allocation
//! termination cannot promise cleanup.
//! @see query_once
//! @see Outcome

use bounded_interfaces::{Cleanup, Ros2Fanuc_msgsSrvGetTCPSpeedClient as Client};
/// @brief Complete original GetTCPSpeed request value.
/// @details group is the original uint8 identifier (0..255); the command sample selects group 1. No field is
/// synthesized or clipped by query_once().
/// @see bounded_records::Ros2Fanuc_msgsSrvGetTCPSpeed_Request
pub use bounded_records::Ros2Fanuc_msgsSrvGetTCPSpeed_Request as Request;
/// @brief Complete original GetTCPSpeed response value.
/// @details Retains signed int32 result/timetag, finite float32 speed and uint8 group. The original IDL does
/// not declare speed or timetag units; no unit/epoch conversion occurs. Values remain owned Rust data after
/// capability close.
/// @see bounded_records::Ros2Fanuc_msgsSrvGetTCPSpeed_Response
pub use bounded_records::Ros2Fanuc_msgsSrvGetTCPSpeed_Response as Response;
/// @brief Expose the actual selected typed service operations and cleanup reports.
/// @details These functions use real Guest capabilities; no host mock or
/// platform-specific transport is implemented by this module.
/// @see bounded_interfaces::Ros2Fanuc_msgsSrvGetTCPSpeedClient
pub use fanuc_interfaces as bounded_interfaces;
/// @brief Expose the complete selected original bounded record definitions.
/// @details Source capacities and canonical validation come from the pinned
/// generated family; a record value is neither native layout nor authority.
/// @see Request
pub use fanuc_records as bounded_records;
use roswasm::typed::Canonical;
use roswasm::{Backend, Error};

/// @brief Retain the whole response and independent primary/cleanup observations.
/// @details Owns all returned values and may outlive the local service client.
/// Some(response) means complete decoding, including controller refusal; inspect
/// primary and cleanup separately. No field proves current physical robot state.
/// @see query_once
#[derive(Debug)]
pub struct Outcome {
    /// @brief First validation, constructor, call or application status.
    /// @details Zero means application success before independent cleanup;
    /// controller refusal maps to 5. Original SDK errors keep their full code.
    /// @see Outcome::cleanup
    pub primary: u32,
    /// @brief Owned complete original response, including controller refusal.
    /// @details None on request, construction or transport/decode failure;
    /// Some does not imply primary is zero or the physical state is fresh.
    /// @see Response
    pub response: Option<Response>,
    /// @brief Preserve original SDK Error and required-length facts when present.
    /// @details None for a decoded controller refusal with application status 5;
    /// the separate cleanup report never overwrites this observation.
    /// @see roswasm::Error
    pub error: Option<Error>,
    /// @brief Preserve normal close or constructor-rollback results.
    /// @details Owns every attempted per-role status; no-owner validation failure
    /// has an empty status vector. Handle close does not stop native work.
    /// @see bounded_interfaces::Cleanup
    pub cleanup: Cleanup,
}

/// @brief Issue one complete original GetTCPSpeed request, then close its service owner.
/// @details Encodes the whole request before opening; a refusal performs no
/// service call. Constructor failure preserves rollback. A successfully decoded
/// response is retained. Application success requires result equals 0, response group equals the requested
/// group, and speed is nonnegative; a complete
/// response failing those checks produces status 5.
/// No request is retried after an ambiguous error. The function starts no timer
/// or thread and does not stop native motion, reset a controller or change grants.
/// Both inputs are borrowed only for this synchronous call; returned storage is
/// owned independently. Serialize access through the selected Guest backend.
/// @param[in] alias Nonempty caller-selected UTF-8 service alias with externally
/// granted rights, exact original type and reviewed quotas/deadline configuration.
/// @param[in] request Complete valid Request in original units and bounded ranges;
/// group is the original uint8 identifier (0..255); the command sample selects group 1. No mutation or
/// ownership transfer occurs.
/// @return Owned Outcome with full response/Error and independent cleanup facts.
/// Normal error returns run checked cleanup; abort/panic cannot guarantee it.
/// @see roswasm::typed::Canonical::encode
/// @see bounded_interfaces::Ros2Fanuc_msgsSrvGetTCPSpeedClient::call
/// @see bounded_interfaces::Ros2Fanuc_msgsSrvGetTCPSpeedClient::close_checked
pub fn query_once(alias: &str, request: &Request) -> Outcome {
    if let Err(error) = request.encode() {
        return Outcome {
            primary: error.code,
            response: None,
            cleanup: Cleanup {
                primary: error.code,
                statuses: Vec::new(),
            },
            error: Some(error),
        };
    }
    let mut client = match Client::open(Backend::Ros2, alias, None, 1) {
        Ok(value) => value,
        Err(error) => {
            return Outcome {
                primary: error.primary.code,
                response: None,
                error: Some(error.primary),
                cleanup: error.rollback,
            }
        }
    };
    let (primary, response, error) = match client.call(request) {
        Ok(value) => {
            let primary = if value.result == 0 && value.group == request.group && value.speed >= 0.0
            {
                0
            } else {
                5
            };
            (primary, Some(value), None)
        }
        Err(error) => (error.code, None, Some(error)),
    };
    let cleanup = client.close_checked(primary);
    Outcome {
        primary,
        response,
        error,
        cleanup,
    }
}
