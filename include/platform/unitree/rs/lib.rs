//! @brief Own complete Unitree native observations in a genuine Rust Wasm command.
//! @details Every synchronous operation retains one exact-type subscription and
//! closes its owner once. No command, native pointer, timer, callback, retry task,
//! host interpreter, or implicit authority is created. Fatal panic/traps can
//! prevent normal cleanup; ordinary numeric errors preserve both failure stages.
extern crate alloc;
use alloc::{vec, vec::Vec};
use roswasm::typed::Canonical;
use roswasm::{codes, Backend, Capability, Error};

/// @brief Complete original ROS 1 field-preserving canonical record types.
/// @details Selecting this source module creates no native endpoint or grant.
#[cfg(feature = "ros1")]
#[path = "ros1/records.rs"]
pub mod records;
/// @brief Complete original ROS 2 field-preserving canonical record types.
/// @details Selecting this source module creates no native endpoint or grant.
#[cfg(feature = "ros2")]
#[path = "ros2/records.rs"]
pub mod records;
#[cfg(all(feature = "ros1", feature = "ros2"))]
compile_error!("Select exactly one Unitree ROS import family");

/// @brief Own one complete typed message and independent operation/close facts.
/// @tparam T Complete generated original Unitree record type.
/// @details Read value only when Some. Owned wire bytes contain every accepted
/// original field; copying this structure creates no native capability.
pub struct Outcome<T> {
    /// @brief First original validation/open/subscribe/poll/decode refusal.
    /// @details The enclosing owned result and its documented presence/error conditions govern this field.
    pub primary: u32,
    /// @brief Original final poll error, including any actually written size hint.
    /// @details The enclosing owned result and its documented presence/error conditions govern this field.
    pub rpc_error: Option<Error>,
    /// @brief True only after an actual event poll returned.
    /// @details The enclosing owned result and its documented presence/error conditions govern this field.
    pub rpc_present: bool,
    /// @brief Original complete extent or actual required-length observation.
    /// @details The enclosing owned result and its documented presence/error conditions govern this field.
    pub length: Option<u64>,
    /// @brief Actual event poll count, including idle results.
    /// @details The enclosing owned result and its documented presence/error conditions govern this field.
    pub polls: u32,
    /// @brief Original once-only close result; None means no owner was acquired.
    /// @details The enclosing owned result and its documented presence/error conditions govern this field.
    pub cleanup: Option<u32>,
    /// @brief Entire accepted original record, or None on every decode refusal.
    /// @details The enclosing owned result and its documented presence/error conditions govern this field.
    pub value: Option<T>,
    /// @brief Entire owned canonical message body; empty without an accepted value.
    /// @details The enclosing owned result and its documented presence/error conditions govern this field.
    pub wire: Vec<u8>,
}
impl<T> Outcome<T> {
    /// @brief Construct local absent-result storage without acquiring an owner.
    fn empty() -> Self {
        Self {
            primary: 0,
            rpc_error: None,
            rpc_present: false,
            length: None,
            polls: 0,
            cleanup: None,
            value: None,
            wire: Vec::new(),
        }
    }
    /// @brief Select the original primary error before independent close failure.
    /// @return Full unsigned numeric status; zero requires both stages to succeed.
    /// @details Pure immutable read with no host operation or ownership transfer.
    pub fn status(&self) -> u32 {
        if self.primary != 0 {
            self.primary
        } else {
            self.cleanup.unwrap_or(0)
        }
    }
}

/// @brief Retain one actual native subscription and decode one entire original message.
/// @tparam T Exact selected complete original canonical record.
/// @param[in] alias Borrowed exact-type subscription policy alias, stable until return.
/// @param[in] capacity Exact complete schema maximum in bytes.
/// @param[in] attempts Finite poll budget in [1,250], including the immediate poll.
/// @param[in] pause Caller-controlled wait after idle; no SDK timer is created.
/// @return Entire owned record and independent operation/poll/length/close facts.
/// @details Idle 11 alone permits another poll. All normal successful acquisitions
/// close once. No capacity/timeout/error is automatically replayed; fatal traps or
/// allocation failure cannot guarantee ordinary cleanup. Serialize shared mutation.
fn receive<T: Canonical>(
    alias: &str,
    capacity: usize,
    attempts: u32,
    pause: fn() -> u32,
) -> Outcome<T> {
    let mut out = Outcome::empty();
    if attempts == 0 || attempts > 250 {
        out.primary = codes::INVALID;
        return out;
    }
    #[cfg(feature = "ros1")]
    let backend = Backend::Ros1;
    #[cfg(feature = "ros2")]
    let backend = Backend::Ros2;
    let mut owner = match Capability::open(backend, alias) {
        Ok(owner) => owner,
        Err(error) => {
            out.primary = error.code;
            return out;
        }
    };
    let mut buffer = vec![0; capacity];
    if let Err(error) = owner.subscribe() {
        out.primary = error.code;
    }
    if out.primary == 0 {
        for index in 0..attempts {
            out.rpc_present = true;
            out.polls += 1;
            match owner.poll(&mut buffer) {
                Err(error) => {
                    out.primary = error.code;
                    out.length = error.required;
                    out.rpc_error = Some(error);
                }
                Ok(length) => {
                    out.primary = 0;
                    out.rpc_error = None;
                    out.length = Some(length as u64);
                    match T::decode(&buffer[..length]) {
                        Err(error) => {
                            out.primary = error.code;
                        }
                        Ok(value) => {
                            buffer.truncate(length);
                            out.wire = buffer;
                            out.value = Some(value);
                            break;
                        }
                    }
                }
            }
            if out.primary != 11 || index + 1 == attempts {
                break;
            }
            out.primary = pause();
            if out.primary != 0 {
                break;
            }
        }
    }
    out.cleanup = Some(owner.close().err().map_or(0, |error| error.code));
    out
}

/// @brief Observe the complete native locomotion, odometry, IMU, and foot state.
/// @param[in] alias Existing exact native SportModeState subscription policy alias.
/// @param[in] attempts Total finite poll budget, one through 250.
/// @param[in] pause Caller wait after idle; no hidden timer/thread is started.
/// @return Whole owned original record and independent operation/poll/close facts.
/// @details Borrow input storage synchronously. Ordinary failures close the owner
/// once and expose no partial record; no robot command or authority is created.
#[cfg(feature = "ros2")]
pub fn wait_motion_state(
    alias: &str,
    attempts: u32,
    pause: fn() -> u32,
) -> Outcome<records::Ros2Unitree_goMsgSportModeState> {
    receive(
        alias,
        records::Ros2Unitree_goMsgSportModeState::MAX_WIRE_BYTES,
        attempts,
        pause,
    )
}

/// @brief Observe every native motor, BMS, force, remote, temperature, reserve, and CRC field.
/// @param[in] alias Existing exact native LowState subscription policy alias.
/// @param[in] attempts Total finite poll budget, one through 250.
/// @param[in] pause Caller wait after idle; no hidden timer/thread is started.
/// @return Whole owned original record and independent operation/poll/close facts.
/// @details Borrow input storage synchronously. Ordinary failures close the owner
/// once and expose no partial record; no robot command or authority is created.
#[cfg(feature = "ros2")]
pub fn wait_low_state(
    alias: &str,
    attempts: u32,
    pause: fn() -> u32,
) -> Outcome<records::Ros2Unitree_goMsgLowState> {
    receive(
        alias,
        records::Ros2Unitree_goMsgLowState::MAX_WIRE_BYTES,
        attempts,
        pause,
    )
}

/// @brief Observe all four joystick axes and the complete key bitmask without generating input.
/// @param[in] alias Existing exact native WirelessController subscription policy alias.
/// @param[in] attempts Total finite poll budget, one through 250.
/// @param[in] pause Caller wait after idle; no hidden timer/thread is started.
/// @return Whole owned original record and independent operation/poll/close facts.
/// @details Borrow input storage synchronously. Ordinary failures close the owner
/// once and expose no partial record; no robot command or authority is created.
#[cfg(feature = "ros2")]
pub fn wait_wireless_controller(
    alias: &str,
    attempts: u32,
    pause: fn() -> u32,
) -> Outcome<records::Ros2Unitree_goMsgWirelessController> {
    receive(
        alias,
        records::Ros2Unitree_goMsgWirelessController::MAX_WIRE_BYTES,
        attempts,
        pause,
    )
}

/// @brief Observe the complete native ROS 1 high-level state and every nested field.
/// @param[in] alias Existing exact native HighState subscription policy alias.
/// @param[in] attempts Total finite poll budget, one through 250.
/// @param[in] pause Caller wait after idle; no hidden timer/thread is started.
/// @return Whole owned original record and independent operation/poll/close facts.
/// @details Borrow input storage synchronously. Ordinary failures close the owner
/// once and expose no partial record; no robot command or authority is created.
#[cfg(feature = "ros1")]
pub fn wait_motion_state(
    alias: &str,
    attempts: u32,
    pause: fn() -> u32,
) -> Outcome<records::Ros1Unitree_legged_msgsHighState> {
    receive(
        alias,
        records::Ros1Unitree_legged_msgsHighState::MAX_WIRE_BYTES,
        attempts,
        pause,
    )
}

/// @brief Observe the complete native ROS 1 low-level state with all twenty motors.
/// @param[in] alias Existing exact native LowState subscription policy alias.
/// @param[in] attempts Total finite poll budget, one through 250.
/// @param[in] pause Caller wait after idle; no hidden timer/thread is started.
/// @return Whole owned original record and independent operation/poll/close facts.
/// @details Borrow input storage synchronously. Ordinary failures close the owner
/// once and expose no partial record; no robot command or authority is created.
#[cfg(feature = "ros1")]
pub fn wait_low_state(
    alias: &str,
    attempts: u32,
    pause: fn() -> u32,
) -> Outcome<records::Ros1Unitree_legged_msgsLowState> {
    receive(
        alias,
        records::Ros1Unitree_legged_msgsLowState::MAX_WIRE_BYTES,
        attempts,
        pause,
    )
}

/// @brief Observe a native Gazebo joint-controller state, preserving every original motor field.
/// @param[in] alias Existing exact native MotorState subscription policy alias.
/// @param[in] attempts Total finite poll budget, one through 250.
/// @param[in] pause Caller wait after idle; no hidden timer/thread is started.
/// @return Whole owned original record and independent operation/poll/close facts.
/// @details Borrow input storage synchronously. Ordinary failures close the owner
/// once and expose no partial record; no robot command or authority is created.
#[cfg(feature = "ros1")]
pub fn wait_motor_state(
    alias: &str,
    attempts: u32,
    pause: fn() -> u32,
) -> Outcome<records::Ros1Unitree_legged_msgsMotorState> {
    receive(
        alias,
        records::Ros1Unitree_legged_msgsMotorState::MAX_WIRE_BYTES,
        attempts,
        pause,
    )
}
