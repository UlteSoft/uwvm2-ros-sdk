//! @file bounded_records.rs
//! @brief Retain original realman value/workflow support under explicit caller ownership.
//! @details Use the exact source-selected complete record APIs and their finite bounds. Keep native
//! units, model selection and application result meanings unchanged. The caller supplies existing
//! capabilities and serializes mutable state; local construction, formatting and cleanup confer no grant,
//! automatic replay or physical command-completion guarantee.
//! @see The platform's localized language guide and complete API-CATALOG.md.
//! Generated bounded-v2 canonical values; no I/O, threads, clocks or authority.
//! Enable the existing SDK alloc feature. Containers/UTF-8 are validated before
//! output allocation; decoder lengths are checked before bounded allocations.
//! Empty interface components are zero-sized semantic values, not native byte copies.
extern crate alloc;
use alloc::{string::String, vec::Vec};
use roswasm::typed::Canonical;
use roswasm::{codes, Error};
fn invalid() -> Error {
    Error::new(codes::INVALID)
}
fn add_size(n: usize, m: usize) -> Result<usize, Error> {
    n.checked_add(m)
        .filter(|v| *v <= 32768)
        .ok_or(Error::new(codes::TOO_LARGE))
}
fn take<'a>(bytes: &'a [u8], at: &mut usize, n: usize) -> Result<&'a [u8], Error> {
    if *at > bytes.len() || n > bytes.len() - *at {
        return Err(invalid());
    }
    let start = *at;
    *at += n;
    Ok(&bytes[start..*at])
}
fn read_count(bytes: &[u8], at: &mut usize) -> Result<usize, Error> {
    Ok(u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?) as usize)
}
fn put(out: &mut [u8], at: &mut usize, bytes: &[u8]) {
    out[*at..*at + bytes.len()].copy_from_slice(bytes);
    *at += bytes.len();
}
/// Complete bounded value for ROS1 std_msgs/Empty.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 std_msgs/Empty value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes
/// and is identified by UWVMROS1_f54b7880aaea96d2bf731438bf8008205b6b4708a00e2bb7435927cf79318b85.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Std_msgsEmpty {}
/// @brief Construct the declared defaults of std_msgs/Empty.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Std_msgsEmpty; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Std_msgsEmpty {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Std_msgsEmpty {
    /// @brief Maximum canonical extent of std_msgs/Empty in bytes.
    /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Std_msgsEmpty; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 0;
    /// @brief Cartesian field-bound maximum of std_msgs/Empty in bytes.
    /// @details Exact independently combined field-bound extent 0; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Std_msgsEmpty; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    /// @brief Aggregate profile byte budget of std_msgs/Empty.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Std_msgsEmpty; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of std_msgs/Empty.
    /// @details Exact identity UWVMROS1_f54b7880aaea96d2bf731438bf8008205b6b4708a00e2bb7435927cf79318b85 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Std_msgsEmpty; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f54b7880aaea96d2bf731438bf8008205b6b4708a00e2bb7435927cf79318b85";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete std_msgs/Empty value.
    /// @details Check every active field, finite bound and selected semantic invariant before returning its exact
    /// initialized wire extent. This is not maximum capacity, native sizeof, an allocation request or a transport
    /// operation.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Exact validated initialized wire extent in bytes through the language result/error contract; this
    /// value is not maximum capacity or a reservation.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Std_msgsEmpty; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete std_msgs/Empty value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] out Caller-owned writable output bytes; success returns only the initialized prefix extent.
    /// @return Exact initialized caller-output extent in bytes through Result; no output allocation is returned or
    /// transferred. Ignore partial output on Err.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Std_msgsEmpty; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Std_msgsEmpty {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete std_msgs/Empty value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Owned complete canonical bytes through the native language result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Std_msgsEmpty; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete std_msgs/Empty value.
    /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Std_msgsEmpty; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
