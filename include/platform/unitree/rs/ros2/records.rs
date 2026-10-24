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
/// Complete bounded value for ROS2 unitree_api/msg/RequestIdentity.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_api/msg/RequestIdentity value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 16..16
/// bytes and is identified by UWVMROS1_e3daab89abcdaf6526511a189cfcc0c78aaebe8aefc53814ba77f6eb80cdc4e2.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_apiMsgRequestIdentity {
    /// Declared id; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_api/msg/RequestIdentity.id: int64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_apiMsgRequestIdentity; share/platform/ros/rs/API-CONTRACT.md
    pub id: i64,
    /// Declared api_id; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_api/msg/RequestIdentity.api_id: int64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_apiMsgRequestIdentity; share/platform/ros/rs/API-CONTRACT.md
    pub api_id: i64,
}
/// @brief Construct the declared defaults of unitree_api/msg/RequestIdentity.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_apiMsgRequestIdentity; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_apiMsgRequestIdentity {
    fn default() -> Self {
        Self {
            id: Default::default(),
            api_id: Default::default(),
        }
    }
}
impl Ros2Unitree_apiMsgRequestIdentity {
    /// @brief Maximum canonical extent of unitree_api/msg/RequestIdentity in bytes.
    /// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_apiMsgRequestIdentity; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 16;
    /// @brief Cartesian field-bound maximum of unitree_api/msg/RequestIdentity in bytes.
    /// @details Exact independently combined field-bound extent 16; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_apiMsgRequestIdentity; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 16;
    /// @brief Aggregate profile byte budget of unitree_api/msg/RequestIdentity.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_apiMsgRequestIdentity; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_api/msg/RequestIdentity.
    /// @details Exact identity UWVMROS1_e3daab89abcdaf6526511a189cfcc0c78aaebe8aefc53814ba77f6eb80cdc4e2 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_apiMsgRequestIdentity; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e3daab89abcdaf6526511a189cfcc0c78aaebe8aefc53814ba77f6eb80cdc4e2";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_api/msg/RequestIdentity value.
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
    /// @see Ros2Unitree_apiMsgRequestIdentity; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 8)?;
        n = add_size(n, 8)?;
        if n > 16 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_api/msg/RequestIdentity value.
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
    /// @see Ros2Unitree_apiMsgRequestIdentity; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.id.to_le_bytes());
        put(out, at, &self.api_id.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.id = decoded;
        let decoded = i64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.api_id = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_apiMsgRequestIdentity {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_api/msg/RequestIdentity value.
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
    /// @see Ros2Unitree_apiMsgRequestIdentity; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_api/msg/RequestIdentity value.
    /// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_apiMsgRequestIdentity; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 16 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 16 {
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
/// Complete bounded value for ROS2 unitree_api/msg/RequestLease.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_api/msg/RequestLease value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_3dcb1fe2998c880e2d9196967da172ccd9060ebc7f6d2feb8682dc3d104c2e6e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_apiMsgRequestLease {
    /// Declared id; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_api/msg/RequestLease.id: int64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_apiMsgRequestLease; share/platform/ros/rs/API-CONTRACT.md
    pub id: i64,
}
/// @brief Construct the declared defaults of unitree_api/msg/RequestLease.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_apiMsgRequestLease; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_apiMsgRequestLease {
    fn default() -> Self {
        Self {
            id: Default::default(),
        }
    }
}
impl Ros2Unitree_apiMsgRequestLease {
    /// @brief Maximum canonical extent of unitree_api/msg/RequestLease in bytes.
    /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_apiMsgRequestLease; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 8;
    /// @brief Cartesian field-bound maximum of unitree_api/msg/RequestLease in bytes.
    /// @details Exact independently combined field-bound extent 8; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_apiMsgRequestLease; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    /// @brief Aggregate profile byte budget of unitree_api/msg/RequestLease.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_apiMsgRequestLease; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_api/msg/RequestLease.
    /// @details Exact identity UWVMROS1_3dcb1fe2998c880e2d9196967da172ccd9060ebc7f6d2feb8682dc3d104c2e6e binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_apiMsgRequestLease; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_3dcb1fe2998c880e2d9196967da172ccd9060ebc7f6d2feb8682dc3d104c2e6e";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_api/msg/RequestLease value.
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
    /// @see Ros2Unitree_apiMsgRequestLease; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 8)?;
        if n > 8 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_api/msg/RequestLease value.
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
    /// @see Ros2Unitree_apiMsgRequestLease; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.id.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.id = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_apiMsgRequestLease {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_api/msg/RequestLease value.
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
    /// @see Ros2Unitree_apiMsgRequestLease; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_api/msg/RequestLease value.
    /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_apiMsgRequestLease; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 8 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 8 {
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
/// Complete bounded value for ROS2 unitree_api/msg/RequestPolicy.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_api/msg/RequestPolicy value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..5 bytes
/// and is identified by UWVMROS1_61f1a1eafec2f694d24cf798963dcb5a0c8f40e9791db5a502f0736cc8587bb8.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_apiMsgRequestPolicy {
    /// Declared priority; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_api/msg/RequestPolicy.priority: int32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_apiMsgRequestPolicy; share/platform/ros/rs/API-CONTRACT.md
    pub priority: i32,
    /// Declared noreply; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_api/msg/RequestPolicy.noreply: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_apiMsgRequestPolicy; share/platform/ros/rs/API-CONTRACT.md
    pub noreply: bool,
}
/// @brief Construct the declared defaults of unitree_api/msg/RequestPolicy.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_apiMsgRequestPolicy; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_apiMsgRequestPolicy {
    fn default() -> Self {
        Self {
            priority: Default::default(),
            noreply: Default::default(),
        }
    }
}
impl Ros2Unitree_apiMsgRequestPolicy {
    /// @brief Maximum canonical extent of unitree_api/msg/RequestPolicy in bytes.
    /// @details The inclusive bound is 5 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_apiMsgRequestPolicy; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 5;
    /// @brief Cartesian field-bound maximum of unitree_api/msg/RequestPolicy in bytes.
    /// @details Exact independently combined field-bound extent 5; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_apiMsgRequestPolicy; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 5;
    /// @brief Aggregate profile byte budget of unitree_api/msg/RequestPolicy.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_apiMsgRequestPolicy; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_api/msg/RequestPolicy.
    /// @details Exact identity UWVMROS1_61f1a1eafec2f694d24cf798963dcb5a0c8f40e9791db5a502f0736cc8587bb8 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_apiMsgRequestPolicy; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_61f1a1eafec2f694d24cf798963dcb5a0c8f40e9791db5a502f0736cc8587bb8";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_api/msg/RequestPolicy value.
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
    /// @see Ros2Unitree_apiMsgRequestPolicy; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        n = add_size(n, 1)?;
        if n > 5 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_api/msg/RequestPolicy value.
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
    /// @see Ros2Unitree_apiMsgRequestPolicy; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.priority.to_le_bytes());
        put(out, at, &[u8::from(self.noreply)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.priority = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.noreply = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_apiMsgRequestPolicy {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_api/msg/RequestPolicy value.
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
    /// @see Ros2Unitree_apiMsgRequestPolicy; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_api/msg/RequestPolicy value.
    /// @details Require the complete 5..5-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_apiMsgRequestPolicy; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 5 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 5 {
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
/// Complete bounded value for ROS2 unitree_api/msg/RequestHeader.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_api/msg/RequestHeader value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 29..29
/// bytes and is identified by UWVMROS1_c8e8b83e2cdc978c5279483dbfac8d4185a3e05c87799b424643f0fcb02d0fd0.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_apiMsgRequestHeader {
    /// Declared identity; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_api/msg/RequestHeader.identity: unitree_api/msg/RequestIdentity.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_apiMsgRequestHeader; share/platform/ros/rs/API-CONTRACT.md
    pub identity: Ros2Unitree_apiMsgRequestIdentity,
    /// Declared lease; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_api/msg/RequestHeader.lease: unitree_api/msg/RequestLease.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_apiMsgRequestHeader; share/platform/ros/rs/API-CONTRACT.md
    pub lease: Ros2Unitree_apiMsgRequestLease,
    /// Declared policy; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_api/msg/RequestHeader.policy: unitree_api/msg/RequestPolicy.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_apiMsgRequestHeader; share/platform/ros/rs/API-CONTRACT.md
    pub policy: Ros2Unitree_apiMsgRequestPolicy,
}
/// @brief Construct the declared defaults of unitree_api/msg/RequestHeader.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_apiMsgRequestHeader; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_apiMsgRequestHeader {
    fn default() -> Self {
        Self {
            identity: Default::default(),
            lease: Default::default(),
            policy: Default::default(),
        }
    }
}
impl Ros2Unitree_apiMsgRequestHeader {
    /// @brief Maximum canonical extent of unitree_api/msg/RequestHeader in bytes.
    /// @details The inclusive bound is 29 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_apiMsgRequestHeader; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 29;
    /// @brief Cartesian field-bound maximum of unitree_api/msg/RequestHeader in bytes.
    /// @details Exact independently combined field-bound extent 29; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_apiMsgRequestHeader; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 29;
    /// @brief Aggregate profile byte budget of unitree_api/msg/RequestHeader.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_apiMsgRequestHeader; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_api/msg/RequestHeader.
    /// @details Exact identity UWVMROS1_c8e8b83e2cdc978c5279483dbfac8d4185a3e05c87799b424643f0fcb02d0fd0 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_apiMsgRequestHeader; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_c8e8b83e2cdc978c5279483dbfac8d4185a3e05c87799b424643f0fcb02d0fd0";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_api/msg/RequestHeader value.
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
    /// @see Ros2Unitree_apiMsgRequestHeader; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.identity.wire_size()?)?;
        n = add_size(n, self.lease.wire_size()?)?;
        n = add_size(n, self.policy.wire_size()?)?;
        if n > 29 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_api/msg/RequestHeader value.
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
    /// @see Ros2Unitree_apiMsgRequestHeader; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.identity.write_fields(out, at);
        self.lease.write_fields(out, at);
        self.policy.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Unitree_apiMsgRequestIdentity::read_fields(bytes, at)?;
        value.identity = decoded;
        let decoded = Ros2Unitree_apiMsgRequestLease::read_fields(bytes, at)?;
        value.lease = decoded;
        let decoded = Ros2Unitree_apiMsgRequestPolicy::read_fields(bytes, at)?;
        value.policy = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_apiMsgRequestHeader {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_api/msg/RequestHeader value.
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
    /// @see Ros2Unitree_apiMsgRequestHeader; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_api/msg/RequestHeader value.
    /// @details Require the complete 29..29-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_apiMsgRequestHeader; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 29 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 29 {
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
/// Complete bounded value for ROS2 unitree_api/msg/Request.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_api/msg/Request value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 37..4133
/// bytes and is identified by UWVMROS1_97acf1a6d8ba00179ad054f92df1f9faa2dc1f6e16396ccc981b28a3cb580192.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_apiMsgRequest {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_api/msg/Request.header: unitree_api/msg/RequestHeader.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_apiMsgRequest; share/platform/ros/rs/API-CONTRACT.md
    pub header: Ros2Unitree_apiMsgRequestHeader,
    /// Declared parameter; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_api/msg/Request.parameter: string; each string is 0..2048 bytes; strict UTF-8 with no
    /// embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_apiMsgRequest; share/platform/ros/rs/API-CONTRACT.md
    pub parameter: String,
    /// Declared binary; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_api/msg/Request.binary: uint8; 0..2048 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_apiMsgRequest; share/platform/ros/rs/API-CONTRACT.md
    pub binary: Vec<u8>,
}
/// @brief Construct the declared defaults of unitree_api/msg/Request.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_apiMsgRequest; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_apiMsgRequest {
    fn default() -> Self {
        Self {
            header: Default::default(),
            parameter: Default::default(),
            binary: Default::default(),
        }
    }
}
impl Ros2Unitree_apiMsgRequest {
    /// @brief Maximum canonical extent of unitree_api/msg/Request in bytes.
    /// @details The inclusive bound is 4133 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_apiMsgRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 4133;
    /// @brief Cartesian field-bound maximum of unitree_api/msg/Request in bytes.
    /// @details Exact independently combined field-bound extent 4133; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_apiMsgRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 4133;
    /// @brief Aggregate profile byte budget of unitree_api/msg/Request.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_apiMsgRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_api/msg/Request.
    /// @details Exact identity UWVMROS1_97acf1a6d8ba00179ad054f92df1f9faa2dc1f6e16396ccc981b28a3cb580192 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_apiMsgRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_97acf1a6d8ba00179ad054f92df1f9faa2dc1f6e16396ccc981b28a3cb580192";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_api/msg/Request value.
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
    /// @see Ros2Unitree_apiMsgRequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if self.parameter.len() > 2048 || self.parameter.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.parameter.len())?;
        if self.binary.len() > 2048 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.binary {
            n = add_size(n, 1)?;
        }
        if n > 4133 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_api/msg/Request value.
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
    /// @see Ros2Unitree_apiMsgRequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        put(out, at, &(self.parameter.len() as u32).to_le_bytes());
        put(out, at, self.parameter.as_bytes());
        put(out, at, &(self.binary.len() as u32).to_le_bytes());
        for element in &self.binary {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Unitree_apiMsgRequestHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let size = read_count(bytes, at)?;
        if size > 2048 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.parameter = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 2048 {
                return Err(invalid());
            }
            value.binary = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.binary.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_apiMsgRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_api/msg/Request value.
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
    /// @see Ros2Unitree_apiMsgRequest; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_api/msg/Request value.
    /// @details Require the complete 37..4133-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_apiMsgRequest; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 4133 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 37 {
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
/// Complete bounded value for ROS2 unitree_api/msg/ResponseStatus.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_api/msg/ResponseStatus value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
/// and is identified by UWVMROS1_aaad17e09d5d6549455f69060d1bb03ec81cddfc0ede323a5f2365a6c1a7b7b1.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_apiMsgResponseStatus {
    /// Declared code; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_api/msg/ResponseStatus.code: int32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_apiMsgResponseStatus; share/platform/ros/rs/API-CONTRACT.md
    pub code: i32,
}
/// @brief Construct the declared defaults of unitree_api/msg/ResponseStatus.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_apiMsgResponseStatus; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_apiMsgResponseStatus {
    fn default() -> Self {
        Self {
            code: Default::default(),
        }
    }
}
impl Ros2Unitree_apiMsgResponseStatus {
    /// @brief Maximum canonical extent of unitree_api/msg/ResponseStatus in bytes.
    /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_apiMsgResponseStatus; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 4;
    /// @brief Cartesian field-bound maximum of unitree_api/msg/ResponseStatus in bytes.
    /// @details Exact independently combined field-bound extent 4; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_apiMsgResponseStatus; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 4;
    /// @brief Aggregate profile byte budget of unitree_api/msg/ResponseStatus.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_apiMsgResponseStatus; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_api/msg/ResponseStatus.
    /// @details Exact identity UWVMROS1_aaad17e09d5d6549455f69060d1bb03ec81cddfc0ede323a5f2365a6c1a7b7b1 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_apiMsgResponseStatus; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_aaad17e09d5d6549455f69060d1bb03ec81cddfc0ede323a5f2365a6c1a7b7b1";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_api/msg/ResponseStatus value.
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
    /// @see Ros2Unitree_apiMsgResponseStatus; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        if n > 4 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_api/msg/ResponseStatus value.
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
    /// @see Ros2Unitree_apiMsgResponseStatus; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.code.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.code = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_apiMsgResponseStatus {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_api/msg/ResponseStatus value.
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
    /// @see Ros2Unitree_apiMsgResponseStatus; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_api/msg/ResponseStatus value.
    /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_apiMsgResponseStatus; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 4 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 4 {
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
/// Complete bounded value for ROS2 unitree_api/msg/ResponseHeader.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_api/msg/ResponseHeader value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 20..20
/// bytes and is identified by UWVMROS1_20ddef706f0be7d7e2e356ab2222b6e198bd36fd6d8a81706553d5a883de85e0.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_apiMsgResponseHeader {
    /// Declared identity; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_api/msg/ResponseHeader.identity: unitree_api/msg/RequestIdentity.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_apiMsgResponseHeader; share/platform/ros/rs/API-CONTRACT.md
    pub identity: Ros2Unitree_apiMsgRequestIdentity,
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_api/msg/ResponseHeader.status: unitree_api/msg/ResponseStatus.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_apiMsgResponseHeader; share/platform/ros/rs/API-CONTRACT.md
    pub status: Ros2Unitree_apiMsgResponseStatus,
}
/// @brief Construct the declared defaults of unitree_api/msg/ResponseHeader.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_apiMsgResponseHeader; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_apiMsgResponseHeader {
    fn default() -> Self {
        Self {
            identity: Default::default(),
            status: Default::default(),
        }
    }
}
impl Ros2Unitree_apiMsgResponseHeader {
    /// @brief Maximum canonical extent of unitree_api/msg/ResponseHeader in bytes.
    /// @details The inclusive bound is 20 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_apiMsgResponseHeader; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 20;
    /// @brief Cartesian field-bound maximum of unitree_api/msg/ResponseHeader in bytes.
    /// @details Exact independently combined field-bound extent 20; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_apiMsgResponseHeader; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 20;
    /// @brief Aggregate profile byte budget of unitree_api/msg/ResponseHeader.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_apiMsgResponseHeader; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_api/msg/ResponseHeader.
    /// @details Exact identity UWVMROS1_20ddef706f0be7d7e2e356ab2222b6e198bd36fd6d8a81706553d5a883de85e0 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_apiMsgResponseHeader; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_20ddef706f0be7d7e2e356ab2222b6e198bd36fd6d8a81706553d5a883de85e0";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_api/msg/ResponseHeader value.
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
    /// @see Ros2Unitree_apiMsgResponseHeader; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.identity.wire_size()?)?;
        n = add_size(n, self.status.wire_size()?)?;
        if n > 20 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_api/msg/ResponseHeader value.
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
    /// @see Ros2Unitree_apiMsgResponseHeader; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.identity.write_fields(out, at);
        self.status.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Unitree_apiMsgRequestIdentity::read_fields(bytes, at)?;
        value.identity = decoded;
        let decoded = Ros2Unitree_apiMsgResponseStatus::read_fields(bytes, at)?;
        value.status = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_apiMsgResponseHeader {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_api/msg/ResponseHeader value.
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
    /// @see Ros2Unitree_apiMsgResponseHeader; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_api/msg/ResponseHeader value.
    /// @details Require the complete 20..20-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_apiMsgResponseHeader; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 20 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 20 {
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
/// Complete bounded value for ROS2 unitree_api/msg/Response.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_api/msg/Response value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 28..2108
/// bytes and is identified by UWVMROS1_ccfc12626a209d739946c69e2f812bb41e940f20f17e48803e7ee5d34a97dd8f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_apiMsgResponse {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_api/msg/Response.header: unitree_api/msg/ResponseHeader.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_apiMsgResponse; share/platform/ros/rs/API-CONTRACT.md
    pub header: Ros2Unitree_apiMsgResponseHeader,
    /// Declared data; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_api/msg/Response.data: string; each string is 0..2048 bytes; strict UTF-8 with no embedded
    /// NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_apiMsgResponse; share/platform/ros/rs/API-CONTRACT.md
    pub data: String,
    /// Declared binary; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_api/msg/Response.binary: int8; 0..32 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_apiMsgResponse; share/platform/ros/rs/API-CONTRACT.md
    pub binary: Vec<i8>,
}
/// @brief Construct the declared defaults of unitree_api/msg/Response.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_apiMsgResponse; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_apiMsgResponse {
    fn default() -> Self {
        Self {
            header: Default::default(),
            data: Default::default(),
            binary: Default::default(),
        }
    }
}
impl Ros2Unitree_apiMsgResponse {
    /// @brief Maximum canonical extent of unitree_api/msg/Response in bytes.
    /// @details The inclusive bound is 2108 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_apiMsgResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 2108;
    /// @brief Cartesian field-bound maximum of unitree_api/msg/Response in bytes.
    /// @details Exact independently combined field-bound extent 2108; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_apiMsgResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 2108;
    /// @brief Aggregate profile byte budget of unitree_api/msg/Response.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_apiMsgResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_api/msg/Response.
    /// @details Exact identity UWVMROS1_ccfc12626a209d739946c69e2f812bb41e940f20f17e48803e7ee5d34a97dd8f binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_apiMsgResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ccfc12626a209d739946c69e2f812bb41e940f20f17e48803e7ee5d34a97dd8f";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_api/msg/Response value.
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
    /// @see Ros2Unitree_apiMsgResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if self.data.len() > 2048 || self.data.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.data.len())?;
        if self.binary.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.binary {
            n = add_size(n, 1)?;
        }
        if n > 2108 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_api/msg/Response value.
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
    /// @see Ros2Unitree_apiMsgResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        put(out, at, &(self.data.len() as u32).to_le_bytes());
        put(out, at, self.data.as_bytes());
        put(out, at, &(self.binary.len() as u32).to_le_bytes());
        for element in &self.binary {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Unitree_apiMsgResponseHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let size = read_count(bytes, at)?;
        if size > 2048 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.data = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
                return Err(invalid());
            }
            value.binary = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.binary.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_apiMsgResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_api/msg/Response value.
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
    /// @see Ros2Unitree_apiMsgResponse; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_api/msg/Response value.
    /// @details Require the complete 28..2108-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_apiMsgResponse; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 2108 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 28 {
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
/// Complete bounded value for ROS2 unitree_go/msg/AudioData.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_go/msg/AudioData value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..2060
/// bytes and is identified by UWVMROS1_aa14877a076c7fc6b662efa965cc8a75f42b3f84990a078c7c3c5def01d2c9fe.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_goMsgAudioData {
    /// Declared time_frame; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/AudioData.time_frame: uint64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgAudioData; share/platform/ros/rs/API-CONTRACT.md
    pub time_frame: u64,
    /// Declared data; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/AudioData.data: uint8; 0..2048 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgAudioData; share/platform/ros/rs/API-CONTRACT.md
    pub data: Vec<u8>,
}
/// @brief Construct the declared defaults of unitree_go/msg/AudioData.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_goMsgAudioData; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_goMsgAudioData {
    fn default() -> Self {
        Self {
            time_frame: Default::default(),
            data: Default::default(),
        }
    }
}
impl Ros2Unitree_goMsgAudioData {
    /// @brief Maximum canonical extent of unitree_go/msg/AudioData in bytes.
    /// @details The inclusive bound is 2060 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_goMsgAudioData; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 2060;
    /// @brief Cartesian field-bound maximum of unitree_go/msg/AudioData in bytes.
    /// @details Exact independently combined field-bound extent 2060; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_goMsgAudioData; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 2060;
    /// @brief Aggregate profile byte budget of unitree_go/msg/AudioData.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_goMsgAudioData; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_go/msg/AudioData.
    /// @details Exact identity UWVMROS1_aa14877a076c7fc6b662efa965cc8a75f42b3f84990a078c7c3c5def01d2c9fe binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_goMsgAudioData; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_aa14877a076c7fc6b662efa965cc8a75f42b3f84990a078c7c3c5def01d2c9fe";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_go/msg/AudioData value.
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
    /// @see Ros2Unitree_goMsgAudioData; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 8)?;
        if self.data.len() > 2048 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.data {
            n = add_size(n, 1)?;
        }
        if n > 2060 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_go/msg/AudioData value.
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
    /// @see Ros2Unitree_goMsgAudioData; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.time_frame.to_le_bytes());
        put(out, at, &(self.data.len() as u32).to_le_bytes());
        for element in &self.data {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.time_frame = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 2048 {
                return Err(invalid());
            }
            value.data = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.data.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_goMsgAudioData {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_go/msg/AudioData value.
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
    /// @see Ros2Unitree_goMsgAudioData; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_go/msg/AudioData value.
    /// @details Require the complete 12..2060-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_goMsgAudioData; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 2060 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 12 {
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
/// Complete bounded value for ROS2 unitree_go/msg/BmsCmd.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_go/msg/BmsCmd value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
/// and is identified by UWVMROS1_d212c1ab0c92d64801a3b10c3a4d79517ea24a830db3d85ca2bb18e1e0ea5339.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_goMsgBmsCmd {
    /// Declared off; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/BmsCmd.off: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgBmsCmd; share/platform/ros/rs/API-CONTRACT.md
    pub off: u8,
    /// Declared reserve; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/BmsCmd.reserve: uint8; exactly 3 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgBmsCmd; share/platform/ros/rs/API-CONTRACT.md
    pub reserve: [u8; 3],
}
/// @brief Construct the declared defaults of unitree_go/msg/BmsCmd.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_goMsgBmsCmd; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_goMsgBmsCmd {
    fn default() -> Self {
        Self {
            off: Default::default(),
            reserve: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros2Unitree_goMsgBmsCmd {
    /// @brief Maximum canonical extent of unitree_go/msg/BmsCmd in bytes.
    /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_goMsgBmsCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 4;
    /// @brief Cartesian field-bound maximum of unitree_go/msg/BmsCmd in bytes.
    /// @details Exact independently combined field-bound extent 4; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_goMsgBmsCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 4;
    /// @brief Aggregate profile byte budget of unitree_go/msg/BmsCmd.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_goMsgBmsCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_go/msg/BmsCmd.
    /// @details Exact identity UWVMROS1_d212c1ab0c92d64801a3b10c3a4d79517ea24a830db3d85ca2bb18e1e0ea5339 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_goMsgBmsCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d212c1ab0c92d64801a3b10c3a4d79517ea24a830db3d85ca2bb18e1e0ea5339";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_go/msg/BmsCmd value.
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
    /// @see Ros2Unitree_goMsgBmsCmd; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        for element in &self.reserve {
            n = add_size(n, 1)?;
        }
        if n > 4 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_go/msg/BmsCmd value.
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
    /// @see Ros2Unitree_goMsgBmsCmd; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.off.to_le_bytes());
        for element in &self.reserve {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.off = decoded;
        {
            let count = 3usize;
            if count > 3 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.reserve[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_goMsgBmsCmd {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_go/msg/BmsCmd value.
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
    /// @see Ros2Unitree_goMsgBmsCmd; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_go/msg/BmsCmd value.
    /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_goMsgBmsCmd; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 4 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 4 {
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
/// Complete bounded value for ROS2 unitree_go/msg/BmsState.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_go/msg/BmsState value.
/// @details All 9 declared fields are retained in source order. The canonical representation occupies 44..44
/// bytes and is identified by UWVMROS1_7e4d5e3c0a2eddddf39c68b73bff5f7721e1623b0a9322dce23d3e551a07f5b0.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_goMsgBmsState {
    /// Declared version_high; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/BmsState.version_high: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub version_high: u8,
    /// Declared version_low; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/BmsState.version_low: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub version_low: u8,
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/BmsState.status: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub status: u8,
    /// Declared soc; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/BmsState.soc: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub soc: u8,
    /// Declared current; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/BmsState.current: int32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub current: i32,
    /// Declared cycle; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/BmsState.cycle: uint16.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub cycle: u16,
    /// Declared bq_ntc; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/BmsState.bq_ntc: int8; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub bq_ntc: [i8; 2],
    /// Declared mcu_ntc; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/BmsState.mcu_ntc: int8; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub mcu_ntc: [i8; 2],
    /// Declared cell_vol; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/BmsState.cell_vol: uint16; exactly 15 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub cell_vol: [u16; 15],
}
/// @brief Construct the declared defaults of unitree_go/msg/BmsState.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_goMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_goMsgBmsState {
    fn default() -> Self {
        Self {
            version_high: Default::default(),
            version_low: Default::default(),
            status: Default::default(),
            soc: Default::default(),
            current: Default::default(),
            cycle: Default::default(),
            bq_ntc: core::array::from_fn(|_| Default::default()),
            mcu_ntc: core::array::from_fn(|_| Default::default()),
            cell_vol: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros2Unitree_goMsgBmsState {
    /// @brief Maximum canonical extent of unitree_go/msg/BmsState in bytes.
    /// @details The inclusive bound is 44 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_goMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 44;
    /// @brief Cartesian field-bound maximum of unitree_go/msg/BmsState in bytes.
    /// @details Exact independently combined field-bound extent 44; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_goMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 44;
    /// @brief Aggregate profile byte budget of unitree_go/msg/BmsState.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_goMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_go/msg/BmsState.
    /// @details Exact identity UWVMROS1_7e4d5e3c0a2eddddf39c68b73bff5f7721e1623b0a9322dce23d3e551a07f5b0 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_goMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_7e4d5e3c0a2eddddf39c68b73bff5f7721e1623b0a9322dce23d3e551a07f5b0";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_go/msg/BmsState value.
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
    /// @see Ros2Unitree_goMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 4)?;
        n = add_size(n, 2)?;
        for element in &self.bq_ntc {
            n = add_size(n, 1)?;
        }
        for element in &self.mcu_ntc {
            n = add_size(n, 1)?;
        }
        for element in &self.cell_vol {
            n = add_size(n, 2)?;
        }
        if n > 44 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_go/msg/BmsState value.
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
    /// @see Ros2Unitree_goMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.version_high.to_le_bytes());
        put(out, at, &self.version_low.to_le_bytes());
        put(out, at, &self.status.to_le_bytes());
        put(out, at, &self.soc.to_le_bytes());
        put(out, at, &self.current.to_le_bytes());
        put(out, at, &self.cycle.to_le_bytes());
        for element in &self.bq_ntc {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.mcu_ntc {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.cell_vol {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.version_high = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.version_low = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.status = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.soc = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.current = decoded;
        let decoded = u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.cycle = decoded;
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.bq_ntc[i] = decoded;
            }
        }
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.mcu_ntc[i] = decoded;
            }
        }
        {
            let count = 15usize;
            if count > 15 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
                value.cell_vol[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_goMsgBmsState {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_go/msg/BmsState value.
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
    /// @see Ros2Unitree_goMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_go/msg/BmsState value.
    /// @details Require the complete 44..44-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_goMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 44 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 44 {
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
/// Complete bounded value for ROS2 unitree_go/msg/Error.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_go/msg/Error value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_c3e572e08288b6ed0b32575e645fe546f92b5091d62e57db01ec00d27f5e4afd.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_goMsgError {
    /// Declared source; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/Error.source: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgError; share/platform/ros/rs/API-CONTRACT.md
    pub source: u32,
    /// Declared state; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/Error.state: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgError; share/platform/ros/rs/API-CONTRACT.md
    pub state: u32,
}
/// @brief Construct the declared defaults of unitree_go/msg/Error.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_goMsgError; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_goMsgError {
    fn default() -> Self {
        Self {
            source: Default::default(),
            state: Default::default(),
        }
    }
}
impl Ros2Unitree_goMsgError {
    /// @brief Maximum canonical extent of unitree_go/msg/Error in bytes.
    /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_goMsgError; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 8;
    /// @brief Cartesian field-bound maximum of unitree_go/msg/Error in bytes.
    /// @details Exact independently combined field-bound extent 8; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_goMsgError; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    /// @brief Aggregate profile byte budget of unitree_go/msg/Error.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_goMsgError; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_go/msg/Error.
    /// @details Exact identity UWVMROS1_c3e572e08288b6ed0b32575e645fe546f92b5091d62e57db01ec00d27f5e4afd binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_goMsgError; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_c3e572e08288b6ed0b32575e645fe546f92b5091d62e57db01ec00d27f5e4afd";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_go/msg/Error value.
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
    /// @see Ros2Unitree_goMsgError; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        if n > 8 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_go/msg/Error value.
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
    /// @see Ros2Unitree_goMsgError; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.source.to_le_bytes());
        put(out, at, &self.state.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.source = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.state = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_goMsgError {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_go/msg/Error value.
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
    /// @see Ros2Unitree_goMsgError; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_go/msg/Error value.
    /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_goMsgError; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 8 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 8 {
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
/// Complete bounded value for ROS2 unitree_go/msg/Go2FrontVideoData.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_go/msg/Go2FrontVideoData value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 20..6164
/// bytes and is identified by UWVMROS1_07754cf58566a40dcc5a806fa6a346c260931d588eacfdad46f2fc9a168f3cad.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_goMsgGo2FrontVideoData {
    /// Declared time_frame; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/Go2FrontVideoData.time_frame: uint64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgGo2FrontVideoData; share/platform/ros/rs/API-CONTRACT.md
    pub time_frame: u64,
    /// Declared video720p; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/Go2FrontVideoData.video720p: uint8; 0..2048 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgGo2FrontVideoData; share/platform/ros/rs/API-CONTRACT.md
    pub video720p: Vec<u8>,
    /// Declared video360p; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/Go2FrontVideoData.video360p: uint8; 0..2048 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgGo2FrontVideoData; share/platform/ros/rs/API-CONTRACT.md
    pub video360p: Vec<u8>,
    /// Declared video180p; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/Go2FrontVideoData.video180p: uint8; 0..2048 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgGo2FrontVideoData; share/platform/ros/rs/API-CONTRACT.md
    pub video180p: Vec<u8>,
}
/// @brief Construct the declared defaults of unitree_go/msg/Go2FrontVideoData.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_goMsgGo2FrontVideoData; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_goMsgGo2FrontVideoData {
    fn default() -> Self {
        Self {
            time_frame: Default::default(),
            video720p: Default::default(),
            video360p: Default::default(),
            video180p: Default::default(),
        }
    }
}
impl Ros2Unitree_goMsgGo2FrontVideoData {
    /// @brief Maximum canonical extent of unitree_go/msg/Go2FrontVideoData in bytes.
    /// @details The inclusive bound is 6164 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_goMsgGo2FrontVideoData; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 6164;
    /// @brief Cartesian field-bound maximum of unitree_go/msg/Go2FrontVideoData in bytes.
    /// @details Exact independently combined field-bound extent 6164; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_goMsgGo2FrontVideoData; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 6164;
    /// @brief Aggregate profile byte budget of unitree_go/msg/Go2FrontVideoData.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_goMsgGo2FrontVideoData; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_go/msg/Go2FrontVideoData.
    /// @details Exact identity UWVMROS1_07754cf58566a40dcc5a806fa6a346c260931d588eacfdad46f2fc9a168f3cad binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_goMsgGo2FrontVideoData; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_07754cf58566a40dcc5a806fa6a346c260931d588eacfdad46f2fc9a168f3cad";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_go/msg/Go2FrontVideoData value.
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
    /// @see Ros2Unitree_goMsgGo2FrontVideoData; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 8)?;
        if self.video720p.len() > 2048 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.video720p {
            n = add_size(n, 1)?;
        }
        if self.video360p.len() > 2048 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.video360p {
            n = add_size(n, 1)?;
        }
        if self.video180p.len() > 2048 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.video180p {
            n = add_size(n, 1)?;
        }
        if n > 6164 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_go/msg/Go2FrontVideoData value.
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
    /// @see Ros2Unitree_goMsgGo2FrontVideoData; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.time_frame.to_le_bytes());
        put(out, at, &(self.video720p.len() as u32).to_le_bytes());
        for element in &self.video720p {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.video360p.len() as u32).to_le_bytes());
        for element in &self.video360p {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.video180p.len() as u32).to_le_bytes());
        for element in &self.video180p {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.time_frame = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 2048 {
                return Err(invalid());
            }
            value.video720p = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.video720p.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 2048 {
                return Err(invalid());
            }
            value.video360p = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.video360p.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 2048 {
                return Err(invalid());
            }
            value.video180p = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.video180p.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_goMsgGo2FrontVideoData {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_go/msg/Go2FrontVideoData value.
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
    /// @see Ros2Unitree_goMsgGo2FrontVideoData; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_go/msg/Go2FrontVideoData value.
    /// @details Require the complete 20..6164-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_goMsgGo2FrontVideoData; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 6164 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 20 {
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
/// Complete bounded value for ROS2 unitree_go/msg/HeightMap.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_go/msg/HeightMap value.
/// @details All 7 declared fields are retained in source order. The canonical representation occupies 36..2212
/// bytes and is identified by UWVMROS1_fb1787b6d02f3110a081629fee6b9968118ffd9b3e05ed1eb2873832c89da56d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_goMsgHeightMap {
    /// Declared stamp; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/HeightMap.stamp: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgHeightMap; share/platform/ros/rs/API-CONTRACT.md
    pub stamp: f64,
    /// Declared frame_id; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/HeightMap.frame_id: string; each string is 0..2048 bytes; strict UTF-8 with no
    /// embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgHeightMap; share/platform/ros/rs/API-CONTRACT.md
    pub frame_id: String,
    /// Declared resolution; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/HeightMap.resolution: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgHeightMap; share/platform/ros/rs/API-CONTRACT.md
    pub resolution: f32,
    /// Declared width; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/HeightMap.width: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgHeightMap; share/platform/ros/rs/API-CONTRACT.md
    pub width: u32,
    /// Declared height; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/HeightMap.height: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgHeightMap; share/platform/ros/rs/API-CONTRACT.md
    pub height: u32,
    /// Declared origin; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/HeightMap.origin: float32; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgHeightMap; share/platform/ros/rs/API-CONTRACT.md
    pub origin: [f32; 2],
    /// Declared data; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/HeightMap.data: float32; 0..32 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgHeightMap; share/platform/ros/rs/API-CONTRACT.md
    pub data: Vec<f32>,
}
/// @brief Construct the declared defaults of unitree_go/msg/HeightMap.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_goMsgHeightMap; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_goMsgHeightMap {
    fn default() -> Self {
        Self {
            stamp: Default::default(),
            frame_id: Default::default(),
            resolution: Default::default(),
            width: Default::default(),
            height: Default::default(),
            origin: core::array::from_fn(|_| Default::default()),
            data: Default::default(),
        }
    }
}
impl Ros2Unitree_goMsgHeightMap {
    /// @brief Maximum canonical extent of unitree_go/msg/HeightMap in bytes.
    /// @details The inclusive bound is 2212 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_goMsgHeightMap; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 2212;
    /// @brief Cartesian field-bound maximum of unitree_go/msg/HeightMap in bytes.
    /// @details Exact independently combined field-bound extent 2212; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_goMsgHeightMap; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 2212;
    /// @brief Aggregate profile byte budget of unitree_go/msg/HeightMap.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_goMsgHeightMap; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_go/msg/HeightMap.
    /// @details Exact identity UWVMROS1_fb1787b6d02f3110a081629fee6b9968118ffd9b3e05ed1eb2873832c89da56d binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_goMsgHeightMap; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_fb1787b6d02f3110a081629fee6b9968118ffd9b3e05ed1eb2873832c89da56d";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_go/msg/HeightMap value.
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
    /// @see Ros2Unitree_goMsgHeightMap; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.stamp.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if self.frame_id.len() > 2048 || self.frame_id.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.frame_id.len())?;
        if !self.resolution.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        for element in &self.origin {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        if self.data.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.data {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        if n > 2212 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_go/msg/HeightMap value.
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
    /// @see Ros2Unitree_goMsgHeightMap; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.stamp.to_le_bytes());
        put(out, at, &(self.frame_id.len() as u32).to_le_bytes());
        put(out, at, self.frame_id.as_bytes());
        put(out, at, &self.resolution.to_le_bytes());
        put(out, at, &self.width.to_le_bytes());
        put(out, at, &self.height.to_le_bytes());
        for element in &self.origin {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.data.len() as u32).to_le_bytes());
        for element in &self.data {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.stamp = decoded;
        let size = read_count(bytes, at)?;
        if size > 2048 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.frame_id = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.resolution = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.width = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.height = decoded;
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.origin[i] = decoded;
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
                return Err(invalid());
            }
            value.data = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.data.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_goMsgHeightMap {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_go/msg/HeightMap value.
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
    /// @see Ros2Unitree_goMsgHeightMap; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_go/msg/HeightMap value.
    /// @details Require the complete 36..2212-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_goMsgHeightMap; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 2212 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 36 {
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
/// Complete bounded value for ROS2 unitree_go/msg/IMUState.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_go/msg/IMUState value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 53..53
/// bytes and is identified by UWVMROS1_e5326e97c3bfaa06962ad1989d1aa13fa0e60af15d39d9ef6da6ac0a37261bbc.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_goMsgIMUState {
    /// Declared quaternion; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/IMUState.quaternion: float32; exactly 4 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
    pub quaternion: [f32; 4],
    /// Declared gyroscope; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/IMUState.gyroscope: float32; exactly 3 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
    pub gyroscope: [f32; 3],
    /// Declared accelerometer; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/IMUState.accelerometer: float32; exactly 3 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
    pub accelerometer: [f32; 3],
    /// Declared rpy; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/IMUState.rpy: float32; exactly 3 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
    pub rpy: [f32; 3],
    /// Declared temperature; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/IMUState.temperature: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
    pub temperature: i8,
}
/// @brief Construct the declared defaults of unitree_go/msg/IMUState.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_goMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_goMsgIMUState {
    fn default() -> Self {
        Self {
            quaternion: core::array::from_fn(|_| Default::default()),
            gyroscope: core::array::from_fn(|_| Default::default()),
            accelerometer: core::array::from_fn(|_| Default::default()),
            rpy: core::array::from_fn(|_| Default::default()),
            temperature: Default::default(),
        }
    }
}
impl Ros2Unitree_goMsgIMUState {
    /// @brief Maximum canonical extent of unitree_go/msg/IMUState in bytes.
    /// @details The inclusive bound is 53 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_goMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 53;
    /// @brief Cartesian field-bound maximum of unitree_go/msg/IMUState in bytes.
    /// @details Exact independently combined field-bound extent 53; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_goMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 53;
    /// @brief Aggregate profile byte budget of unitree_go/msg/IMUState.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_goMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_go/msg/IMUState.
    /// @details Exact identity UWVMROS1_e5326e97c3bfaa06962ad1989d1aa13fa0e60af15d39d9ef6da6ac0a37261bbc binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_goMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e5326e97c3bfaa06962ad1989d1aa13fa0e60af15d39d9ef6da6ac0a37261bbc";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_go/msg/IMUState value.
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
    /// @see Ros2Unitree_goMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.quaternion {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        for element in &self.gyroscope {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        for element in &self.accelerometer {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        for element in &self.rpy {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        n = add_size(n, 1)?;
        if n > 53 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_go/msg/IMUState value.
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
    /// @see Ros2Unitree_goMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.quaternion {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.gyroscope {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.accelerometer {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.rpy {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.temperature.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 4usize;
            if count > 4 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.quaternion[i] = decoded;
            }
        }
        {
            let count = 3usize;
            if count > 3 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.gyroscope[i] = decoded;
            }
        }
        {
            let count = 3usize;
            if count > 3 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.accelerometer[i] = decoded;
            }
        }
        {
            let count = 3usize;
            if count > 3 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.rpy[i] = decoded;
            }
        }
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.temperature = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_goMsgIMUState {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_go/msg/IMUState value.
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
    /// @see Ros2Unitree_goMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_go/msg/IMUState value.
    /// @details Require the complete 53..53-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_goMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 53 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 53 {
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
/// Complete bounded value for ROS2 unitree_go/msg/InterfaceConfig.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_go/msg/InterfaceConfig value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
/// and is identified by UWVMROS1_9b96ed6672f6a3e039edb28dec8384cd195116dda929d5ba7be85ef7e7668110.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_goMsgInterfaceConfig {
    /// Declared mode; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/InterfaceConfig.mode: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgInterfaceConfig; share/platform/ros/rs/API-CONTRACT.md
    pub mode: u8,
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/InterfaceConfig.value: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgInterfaceConfig; share/platform/ros/rs/API-CONTRACT.md
    pub value: u8,
    /// Declared reserve; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/InterfaceConfig.reserve: uint8; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgInterfaceConfig; share/platform/ros/rs/API-CONTRACT.md
    pub reserve: [u8; 2],
}
/// @brief Construct the declared defaults of unitree_go/msg/InterfaceConfig.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_goMsgInterfaceConfig; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_goMsgInterfaceConfig {
    fn default() -> Self {
        Self {
            mode: Default::default(),
            value: Default::default(),
            reserve: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros2Unitree_goMsgInterfaceConfig {
    /// @brief Maximum canonical extent of unitree_go/msg/InterfaceConfig in bytes.
    /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_goMsgInterfaceConfig; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 4;
    /// @brief Cartesian field-bound maximum of unitree_go/msg/InterfaceConfig in bytes.
    /// @details Exact independently combined field-bound extent 4; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_goMsgInterfaceConfig; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 4;
    /// @brief Aggregate profile byte budget of unitree_go/msg/InterfaceConfig.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_goMsgInterfaceConfig; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_go/msg/InterfaceConfig.
    /// @details Exact identity UWVMROS1_9b96ed6672f6a3e039edb28dec8384cd195116dda929d5ba7be85ef7e7668110 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_goMsgInterfaceConfig; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_9b96ed6672f6a3e039edb28dec8384cd195116dda929d5ba7be85ef7e7668110";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_go/msg/InterfaceConfig value.
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
    /// @see Ros2Unitree_goMsgInterfaceConfig; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        for element in &self.reserve {
            n = add_size(n, 1)?;
        }
        if n > 4 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_go/msg/InterfaceConfig value.
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
    /// @see Ros2Unitree_goMsgInterfaceConfig; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.mode.to_le_bytes());
        put(out, at, &self.value.to_le_bytes());
        for element in &self.reserve {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.mode = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.value = decoded;
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.reserve[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_goMsgInterfaceConfig {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_go/msg/InterfaceConfig value.
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
    /// @see Ros2Unitree_goMsgInterfaceConfig; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_go/msg/InterfaceConfig value.
    /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_goMsgInterfaceConfig; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 4 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 4 {
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
/// Complete bounded value for ROS2 unitree_go/msg/LidarState.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_go/msg/LidarState value.
/// @details All 17 declared fields are retained in source order. The canonical representation occupies 81..6225
/// bytes and is identified by UWVMROS1_51fa49a14899ba99fa5c82385d0dbd4bcf69d4f4d819177d15e34f46ff6006eb.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_goMsgLidarState {
    /// Declared stamp; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LidarState.stamp: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
    pub stamp: f64,
    /// Declared firmware_version; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LidarState.firmware_version: string; each string is 0..2048 bytes; strict UTF-8 with
    /// no embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
    pub firmware_version: String,
    /// Declared software_version; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LidarState.software_version: string; each string is 0..2048 bytes; strict UTF-8 with
    /// no embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
    pub software_version: String,
    /// Declared sdk_version; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LidarState.sdk_version: string; each string is 0..2048 bytes; strict UTF-8 with no
    /// embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
    pub sdk_version: String,
    /// Declared sys_rotation_speed; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LidarState.sys_rotation_speed: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
    pub sys_rotation_speed: f32,
    /// Declared com_rotation_speed; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LidarState.com_rotation_speed: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
    pub com_rotation_speed: f32,
    /// Declared error_state; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LidarState.error_state: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
    pub error_state: u8,
    /// Declared cloud_frequency; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LidarState.cloud_frequency: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
    pub cloud_frequency: f32,
    /// Declared cloud_packet_loss_rate; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LidarState.cloud_packet_loss_rate: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
    pub cloud_packet_loss_rate: f32,
    /// Declared cloud_size; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LidarState.cloud_size: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
    pub cloud_size: u32,
    /// Declared cloud_scan_num; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LidarState.cloud_scan_num: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
    pub cloud_scan_num: u32,
    /// Declared imu_frequency; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LidarState.imu_frequency: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
    pub imu_frequency: f32,
    /// Declared imu_packet_loss_rate; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LidarState.imu_packet_loss_rate: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
    pub imu_packet_loss_rate: f32,
    /// Declared imu_rpy; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LidarState.imu_rpy: float32; exactly 3 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
    pub imu_rpy: [f32; 3],
    /// Declared serial_recv_stamp; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LidarState.serial_recv_stamp: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
    pub serial_recv_stamp: f64,
    /// Declared serial_buffer_size; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LidarState.serial_buffer_size: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
    pub serial_buffer_size: u32,
    /// Declared serial_buffer_read; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LidarState.serial_buffer_read: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
    pub serial_buffer_read: u32,
}
/// @brief Construct the declared defaults of unitree_go/msg/LidarState.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_goMsgLidarState {
    fn default() -> Self {
        Self {
            stamp: Default::default(),
            firmware_version: Default::default(),
            software_version: Default::default(),
            sdk_version: Default::default(),
            sys_rotation_speed: Default::default(),
            com_rotation_speed: Default::default(),
            error_state: Default::default(),
            cloud_frequency: Default::default(),
            cloud_packet_loss_rate: Default::default(),
            cloud_size: Default::default(),
            cloud_scan_num: Default::default(),
            imu_frequency: Default::default(),
            imu_packet_loss_rate: Default::default(),
            imu_rpy: core::array::from_fn(|_| Default::default()),
            serial_recv_stamp: Default::default(),
            serial_buffer_size: Default::default(),
            serial_buffer_read: Default::default(),
        }
    }
}
impl Ros2Unitree_goMsgLidarState {
    /// @brief Maximum canonical extent of unitree_go/msg/LidarState in bytes.
    /// @details The inclusive bound is 6225 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 6225;
    /// @brief Cartesian field-bound maximum of unitree_go/msg/LidarState in bytes.
    /// @details Exact independently combined field-bound extent 6225; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 6225;
    /// @brief Aggregate profile byte budget of unitree_go/msg/LidarState.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_go/msg/LidarState.
    /// @details Exact identity UWVMROS1_51fa49a14899ba99fa5c82385d0dbd4bcf69d4f4d819177d15e34f46ff6006eb binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_51fa49a14899ba99fa5c82385d0dbd4bcf69d4f4d819177d15e34f46ff6006eb";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_go/msg/LidarState value.
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
    /// @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.stamp.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if self.firmware_version.len() > 2048 || self.firmware_version.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.firmware_version.len())?;
        if self.software_version.len() > 2048 || self.software_version.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.software_version.len())?;
        if self.sdk_version.len() > 2048 || self.sdk_version.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.sdk_version.len())?;
        if !self.sys_rotation_speed.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.com_rotation_speed.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, 1)?;
        if !self.cloud_frequency.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.cloud_packet_loss_rate.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        if !self.imu_frequency.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.imu_packet_loss_rate.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.imu_rpy {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        if !self.serial_recv_stamp.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        if n > 6225 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_go/msg/LidarState value.
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
    /// @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.stamp.to_le_bytes());
        put(out, at, &(self.firmware_version.len() as u32).to_le_bytes());
        put(out, at, self.firmware_version.as_bytes());
        put(out, at, &(self.software_version.len() as u32).to_le_bytes());
        put(out, at, self.software_version.as_bytes());
        put(out, at, &(self.sdk_version.len() as u32).to_le_bytes());
        put(out, at, self.sdk_version.as_bytes());
        put(out, at, &self.sys_rotation_speed.to_le_bytes());
        put(out, at, &self.com_rotation_speed.to_le_bytes());
        put(out, at, &self.error_state.to_le_bytes());
        put(out, at, &self.cloud_frequency.to_le_bytes());
        put(out, at, &self.cloud_packet_loss_rate.to_le_bytes());
        put(out, at, &self.cloud_size.to_le_bytes());
        put(out, at, &self.cloud_scan_num.to_le_bytes());
        put(out, at, &self.imu_frequency.to_le_bytes());
        put(out, at, &self.imu_packet_loss_rate.to_le_bytes());
        for element in &self.imu_rpy {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.serial_recv_stamp.to_le_bytes());
        put(out, at, &self.serial_buffer_size.to_le_bytes());
        put(out, at, &self.serial_buffer_read.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.stamp = decoded;
        let size = read_count(bytes, at)?;
        if size > 2048 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.firmware_version = decoded;
        let size = read_count(bytes, at)?;
        if size > 2048 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.software_version = decoded;
        let size = read_count(bytes, at)?;
        if size > 2048 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.sdk_version = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.sys_rotation_speed = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.com_rotation_speed = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.error_state = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.cloud_frequency = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.cloud_packet_loss_rate = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.cloud_size = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.cloud_scan_num = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.imu_frequency = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.imu_packet_loss_rate = decoded;
        {
            let count = 3usize;
            if count > 3 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.imu_rpy[i] = decoded;
            }
        }
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.serial_recv_stamp = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.serial_buffer_size = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.serial_buffer_read = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_goMsgLidarState {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_go/msg/LidarState value.
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
    /// @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_go/msg/LidarState value.
    /// @details Require the complete 81..6225-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 6225 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 81 {
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
/// Complete bounded value for ROS2 unitree_go/msg/MotorCmd.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_go/msg/MotorCmd value.
/// @details All 7 declared fields are retained in source order. The canonical representation occupies 33..33
/// bytes and is identified by UWVMROS1_e5b88c02a6d339ae4ae2706678a3d82f89904f024b6068f4fd174e1e045b0989.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_goMsgMotorCmd {
    /// Declared mode; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/MotorCmd.mode: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub mode: u8,
    /// Declared q; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/MotorCmd.q: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub q: f32,
    /// Declared dq; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/MotorCmd.dq: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub dq: f32,
    /// Declared tau; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/MotorCmd.tau: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub tau: f32,
    /// Declared kp; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/MotorCmd.kp: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub kp: f32,
    /// Declared kd; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/MotorCmd.kd: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub kd: f32,
    /// Declared reserve; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/MotorCmd.reserve: uint32; exactly 3 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub reserve: [u32; 3],
}
/// @brief Construct the declared defaults of unitree_go/msg/MotorCmd.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_goMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_goMsgMotorCmd {
    fn default() -> Self {
        Self {
            mode: Default::default(),
            q: Default::default(),
            dq: Default::default(),
            tau: Default::default(),
            kp: Default::default(),
            kd: Default::default(),
            reserve: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros2Unitree_goMsgMotorCmd {
    /// @brief Maximum canonical extent of unitree_go/msg/MotorCmd in bytes.
    /// @details The inclusive bound is 33 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_goMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 33;
    /// @brief Cartesian field-bound maximum of unitree_go/msg/MotorCmd in bytes.
    /// @details Exact independently combined field-bound extent 33; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_goMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 33;
    /// @brief Aggregate profile byte budget of unitree_go/msg/MotorCmd.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_goMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_go/msg/MotorCmd.
    /// @details Exact identity UWVMROS1_e5b88c02a6d339ae4ae2706678a3d82f89904f024b6068f4fd174e1e045b0989 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_goMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e5b88c02a6d339ae4ae2706678a3d82f89904f024b6068f4fd174e1e045b0989";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_go/msg/MotorCmd value.
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
    /// @see Ros2Unitree_goMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if !self.q.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.dq.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.tau.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.kp.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.kd.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.reserve {
            n = add_size(n, 4)?;
        }
        if n > 33 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_go/msg/MotorCmd value.
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
    /// @see Ros2Unitree_goMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.mode.to_le_bytes());
        put(out, at, &self.q.to_le_bytes());
        put(out, at, &self.dq.to_le_bytes());
        put(out, at, &self.tau.to_le_bytes());
        put(out, at, &self.kp.to_le_bytes());
        put(out, at, &self.kd.to_le_bytes());
        for element in &self.reserve {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.mode = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.q = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.dq = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.tau = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.kp = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.kd = decoded;
        {
            let count = 3usize;
            if count > 3 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                value.reserve[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_goMsgMotorCmd {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_go/msg/MotorCmd value.
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
    /// @see Ros2Unitree_goMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_go/msg/MotorCmd value.
    /// @details Require the complete 33..33-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_goMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 33 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 33 {
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
/// Complete bounded value for ROS2 unitree_go/msg/LowCmd.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_go/msg/LowCmd value.
/// @details All 14 declared fields are retained in source order. The canonical representation occupies 749..749
/// bytes and is identified by UWVMROS1_efd061d06d38ecc686edb95d1a891c26860b16da1e35747fc97eeaf4a5d93d63.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_goMsgLowCmd {
    /// Declared head; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LowCmd.head: uint8; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub head: [u8; 2],
    /// Declared level_flag; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LowCmd.level_flag: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub level_flag: u8,
    /// Declared frame_reserve; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LowCmd.frame_reserve: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub frame_reserve: u8,
    /// Declared sn; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LowCmd.sn: uint32; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub sn: [u32; 2],
    /// Declared version; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LowCmd.version: uint32; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub version: [u32; 2],
    /// Declared bandwidth; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LowCmd.bandwidth: uint16.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub bandwidth: u16,
    /// Declared motor_cmd; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LowCmd.motor_cmd: unitree_go/msg/MotorCmd; exactly 20 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub motor_cmd: [Ros2Unitree_goMsgMotorCmd; 20],
    /// Declared bms_cmd; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LowCmd.bms_cmd: unitree_go/msg/BmsCmd.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub bms_cmd: Ros2Unitree_goMsgBmsCmd,
    /// Declared wireless_remote; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LowCmd.wireless_remote: uint8; exactly 40 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub wireless_remote: [u8; 40],
    /// Declared led; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LowCmd.led: uint8; exactly 12 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub led: [u8; 12],
    /// Declared fan; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LowCmd.fan: uint8; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub fan: [u8; 2],
    /// Declared gpio; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LowCmd.gpio: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub gpio: u8,
    /// Declared reserve; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LowCmd.reserve: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub reserve: u32,
    /// Declared crc; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LowCmd.crc: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub crc: u32,
}
/// @brief Construct the declared defaults of unitree_go/msg/LowCmd.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_goMsgLowCmd {
    fn default() -> Self {
        Self {
            head: core::array::from_fn(|_| Default::default()),
            level_flag: Default::default(),
            frame_reserve: Default::default(),
            sn: core::array::from_fn(|_| Default::default()),
            version: core::array::from_fn(|_| Default::default()),
            bandwidth: Default::default(),
            motor_cmd: core::array::from_fn(|_| Default::default()),
            bms_cmd: Default::default(),
            wireless_remote: core::array::from_fn(|_| Default::default()),
            led: core::array::from_fn(|_| Default::default()),
            fan: core::array::from_fn(|_| Default::default()),
            gpio: Default::default(),
            reserve: Default::default(),
            crc: Default::default(),
        }
    }
}
impl Ros2Unitree_goMsgLowCmd {
    /// @brief Maximum canonical extent of unitree_go/msg/LowCmd in bytes.
    /// @details The inclusive bound is 749 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 749;
    /// @brief Cartesian field-bound maximum of unitree_go/msg/LowCmd in bytes.
    /// @details Exact independently combined field-bound extent 749; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 749;
    /// @brief Aggregate profile byte budget of unitree_go/msg/LowCmd.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_go/msg/LowCmd.
    /// @details Exact identity UWVMROS1_efd061d06d38ecc686edb95d1a891c26860b16da1e35747fc97eeaf4a5d93d63 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_efd061d06d38ecc686edb95d1a891c26860b16da1e35747fc97eeaf4a5d93d63";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_go/msg/LowCmd value.
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
    /// @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.head {
            n = add_size(n, 1)?;
        }
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        for element in &self.sn {
            n = add_size(n, 4)?;
        }
        for element in &self.version {
            n = add_size(n, 4)?;
        }
        n = add_size(n, 2)?;
        for element in &self.motor_cmd {
            n = add_size(n, element.wire_size()?)?;
        }
        n = add_size(n, self.bms_cmd.wire_size()?)?;
        for element in &self.wireless_remote {
            n = add_size(n, 1)?;
        }
        for element in &self.led {
            n = add_size(n, 1)?;
        }
        for element in &self.fan {
            n = add_size(n, 1)?;
        }
        n = add_size(n, 1)?;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        if n > 749 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_go/msg/LowCmd value.
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
    /// @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.head {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.level_flag.to_le_bytes());
        put(out, at, &self.frame_reserve.to_le_bytes());
        for element in &self.sn {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.version {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.bandwidth.to_le_bytes());
        for element in &self.motor_cmd {
            element.write_fields(out, at);
        }
        self.bms_cmd.write_fields(out, at);
        for element in &self.wireless_remote {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.led {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.fan {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.gpio.to_le_bytes());
        put(out, at, &self.reserve.to_le_bytes());
        put(out, at, &self.crc.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.head[i] = decoded;
            }
        }
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.level_flag = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.frame_reserve = decoded;
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                value.sn[i] = decoded;
            }
        }
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                value.version[i] = decoded;
            }
        }
        let decoded = u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.bandwidth = decoded;
        {
            let count = 20usize;
            if count > 20 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded = Ros2Unitree_goMsgMotorCmd::read_fields(bytes, at)?;
                value.motor_cmd[i] = decoded;
            }
        }
        let decoded = Ros2Unitree_goMsgBmsCmd::read_fields(bytes, at)?;
        value.bms_cmd = decoded;
        {
            let count = 40usize;
            if count > 40 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.wireless_remote[i] = decoded;
            }
        }
        {
            let count = 12usize;
            if count > 12 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.led[i] = decoded;
            }
        }
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.fan[i] = decoded;
            }
        }
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.gpio = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.reserve = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.crc = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_goMsgLowCmd {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_go/msg/LowCmd value.
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
    /// @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_go/msg/LowCmd value.
    /// @details Require the complete 749..749-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 749 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 749 {
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
/// Complete bounded value for ROS2 unitree_go/msg/MotorState.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_go/msg/MotorState value.
/// @details All 11 declared fields are retained in source order. The canonical representation occupies 42..42
/// bytes and is identified by UWVMROS1_b0b5e638b9fd9eec6d0019422d417f80c60e61d47f4750fe9adac8c5084a2a62.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_goMsgMotorState {
    /// Declared mode; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/MotorState.mode: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub mode: u8,
    /// Declared q; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/MotorState.q: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub q: f32,
    /// Declared dq; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/MotorState.dq: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub dq: f32,
    /// Declared ddq; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/MotorState.ddq: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub ddq: f32,
    /// Declared tau_est; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/MotorState.tau_est: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub tau_est: f32,
    /// Declared q_raw; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/MotorState.q_raw: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub q_raw: f32,
    /// Declared dq_raw; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/MotorState.dq_raw: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub dq_raw: f32,
    /// Declared ddq_raw; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/MotorState.ddq_raw: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub ddq_raw: f32,
    /// Declared temperature; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/MotorState.temperature: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub temperature: i8,
    /// Declared lost; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/MotorState.lost: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub lost: u32,
    /// Declared reserve; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/MotorState.reserve: uint32; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub reserve: [u32; 2],
}
/// @brief Construct the declared defaults of unitree_go/msg/MotorState.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_goMsgMotorState {
    fn default() -> Self {
        Self {
            mode: Default::default(),
            q: Default::default(),
            dq: Default::default(),
            ddq: Default::default(),
            tau_est: Default::default(),
            q_raw: Default::default(),
            dq_raw: Default::default(),
            ddq_raw: Default::default(),
            temperature: Default::default(),
            lost: Default::default(),
            reserve: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros2Unitree_goMsgMotorState {
    /// @brief Maximum canonical extent of unitree_go/msg/MotorState in bytes.
    /// @details The inclusive bound is 42 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 42;
    /// @brief Cartesian field-bound maximum of unitree_go/msg/MotorState in bytes.
    /// @details Exact independently combined field-bound extent 42; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 42;
    /// @brief Aggregate profile byte budget of unitree_go/msg/MotorState.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_go/msg/MotorState.
    /// @details Exact identity UWVMROS1_b0b5e638b9fd9eec6d0019422d417f80c60e61d47f4750fe9adac8c5084a2a62 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b0b5e638b9fd9eec6d0019422d417f80c60e61d47f4750fe9adac8c5084a2a62";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_go/msg/MotorState value.
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
    /// @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if !self.q.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.dq.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.ddq.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.tau_est.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.q_raw.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.dq_raw.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.ddq_raw.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, 1)?;
        n = add_size(n, 4)?;
        for element in &self.reserve {
            n = add_size(n, 4)?;
        }
        if n > 42 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_go/msg/MotorState value.
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
    /// @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.mode.to_le_bytes());
        put(out, at, &self.q.to_le_bytes());
        put(out, at, &self.dq.to_le_bytes());
        put(out, at, &self.ddq.to_le_bytes());
        put(out, at, &self.tau_est.to_le_bytes());
        put(out, at, &self.q_raw.to_le_bytes());
        put(out, at, &self.dq_raw.to_le_bytes());
        put(out, at, &self.ddq_raw.to_le_bytes());
        put(out, at, &self.temperature.to_le_bytes());
        put(out, at, &self.lost.to_le_bytes());
        for element in &self.reserve {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.mode = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.q = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.dq = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.ddq = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.tau_est = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.q_raw = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.dq_raw = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.ddq_raw = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.temperature = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.lost = decoded;
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                value.reserve[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_goMsgMotorState {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_go/msg/MotorState value.
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
    /// @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_go/msg/MotorState value.
    /// @details Require the complete 42..42-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 42 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 42 {
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
/// Complete bounded value for ROS2 unitree_go/msg/LowState.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_go/msg/LowState value.
/// @details All 22 declared fields are retained in source order. The canonical representation occupies
/// 1050..1050 bytes and is identified by
/// UWVMROS1_56c01d52b26d7b2ef1fa7475fc8a353777ed6952a6f1ceee01da81f1edad3cab.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_goMsgLowState {
    /// Declared head; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LowState.head: uint8; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub head: [u8; 2],
    /// Declared level_flag; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LowState.level_flag: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub level_flag: u8,
    /// Declared frame_reserve; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LowState.frame_reserve: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub frame_reserve: u8,
    /// Declared sn; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LowState.sn: uint32; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub sn: [u32; 2],
    /// Declared version; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LowState.version: uint32; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub version: [u32; 2],
    /// Declared bandwidth; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LowState.bandwidth: uint16.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub bandwidth: u16,
    /// Declared imu_state; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LowState.imu_state: unitree_go/msg/IMUState.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub imu_state: Ros2Unitree_goMsgIMUState,
    /// Declared motor_state; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LowState.motor_state: unitree_go/msg/MotorState; exactly 20 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub motor_state: [Ros2Unitree_goMsgMotorState; 20],
    /// Declared bms_state; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LowState.bms_state: unitree_go/msg/BmsState.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub bms_state: Ros2Unitree_goMsgBmsState,
    /// Declared foot_force; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LowState.foot_force: int16; exactly 4 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub foot_force: [i16; 4],
    /// Declared foot_force_est; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LowState.foot_force_est: int16; exactly 4 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub foot_force_est: [i16; 4],
    /// Declared tick; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LowState.tick: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub tick: u32,
    /// Declared wireless_remote; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LowState.wireless_remote: uint8; exactly 40 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub wireless_remote: [u8; 40],
    /// Declared bit_flag; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LowState.bit_flag: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub bit_flag: u8,
    /// Declared adc_reel; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LowState.adc_reel: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub adc_reel: f32,
    /// Declared temperature_ntc1; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LowState.temperature_ntc1: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub temperature_ntc1: i8,
    /// Declared temperature_ntc2; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LowState.temperature_ntc2: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub temperature_ntc2: i8,
    /// Declared power_v; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LowState.power_v: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub power_v: f32,
    /// Declared power_a; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LowState.power_a: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub power_a: f32,
    /// Declared fan_frequency; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LowState.fan_frequency: uint16; exactly 4 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub fan_frequency: [u16; 4],
    /// Declared reserve; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LowState.reserve: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub reserve: u32,
    /// Declared crc; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/LowState.crc: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub crc: u32,
}
/// @brief Construct the declared defaults of unitree_go/msg/LowState.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_goMsgLowState {
    fn default() -> Self {
        Self {
            head: core::array::from_fn(|_| Default::default()),
            level_flag: Default::default(),
            frame_reserve: Default::default(),
            sn: core::array::from_fn(|_| Default::default()),
            version: core::array::from_fn(|_| Default::default()),
            bandwidth: Default::default(),
            imu_state: Default::default(),
            motor_state: core::array::from_fn(|_| Default::default()),
            bms_state: Default::default(),
            foot_force: core::array::from_fn(|_| Default::default()),
            foot_force_est: core::array::from_fn(|_| Default::default()),
            tick: Default::default(),
            wireless_remote: core::array::from_fn(|_| Default::default()),
            bit_flag: Default::default(),
            adc_reel: Default::default(),
            temperature_ntc1: Default::default(),
            temperature_ntc2: Default::default(),
            power_v: Default::default(),
            power_a: Default::default(),
            fan_frequency: core::array::from_fn(|_| Default::default()),
            reserve: Default::default(),
            crc: Default::default(),
        }
    }
}
impl Ros2Unitree_goMsgLowState {
    /// @brief Maximum canonical extent of unitree_go/msg/LowState in bytes.
    /// @details The inclusive bound is 1050 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 1050;
    /// @brief Cartesian field-bound maximum of unitree_go/msg/LowState in bytes.
    /// @details Exact independently combined field-bound extent 1050; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 1050;
    /// @brief Aggregate profile byte budget of unitree_go/msg/LowState.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_go/msg/LowState.
    /// @details Exact identity UWVMROS1_56c01d52b26d7b2ef1fa7475fc8a353777ed6952a6f1ceee01da81f1edad3cab binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_56c01d52b26d7b2ef1fa7475fc8a353777ed6952a6f1ceee01da81f1edad3cab";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_go/msg/LowState value.
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
    /// @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.head {
            n = add_size(n, 1)?;
        }
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        for element in &self.sn {
            n = add_size(n, 4)?;
        }
        for element in &self.version {
            n = add_size(n, 4)?;
        }
        n = add_size(n, 2)?;
        n = add_size(n, self.imu_state.wire_size()?)?;
        for element in &self.motor_state {
            n = add_size(n, element.wire_size()?)?;
        }
        n = add_size(n, self.bms_state.wire_size()?)?;
        for element in &self.foot_force {
            n = add_size(n, 2)?;
        }
        for element in &self.foot_force_est {
            n = add_size(n, 2)?;
        }
        n = add_size(n, 4)?;
        for element in &self.wireless_remote {
            n = add_size(n, 1)?;
        }
        n = add_size(n, 1)?;
        if !self.adc_reel.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if !self.power_v.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.power_a.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.fan_frequency {
            n = add_size(n, 2)?;
        }
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        if n > 1050 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_go/msg/LowState value.
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
    /// @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.head {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.level_flag.to_le_bytes());
        put(out, at, &self.frame_reserve.to_le_bytes());
        for element in &self.sn {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.version {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.bandwidth.to_le_bytes());
        self.imu_state.write_fields(out, at);
        for element in &self.motor_state {
            element.write_fields(out, at);
        }
        self.bms_state.write_fields(out, at);
        for element in &self.foot_force {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.foot_force_est {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.tick.to_le_bytes());
        for element in &self.wireless_remote {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.bit_flag.to_le_bytes());
        put(out, at, &self.adc_reel.to_le_bytes());
        put(out, at, &self.temperature_ntc1.to_le_bytes());
        put(out, at, &self.temperature_ntc2.to_le_bytes());
        put(out, at, &self.power_v.to_le_bytes());
        put(out, at, &self.power_a.to_le_bytes());
        for element in &self.fan_frequency {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.reserve.to_le_bytes());
        put(out, at, &self.crc.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.head[i] = decoded;
            }
        }
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.level_flag = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.frame_reserve = decoded;
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                value.sn[i] = decoded;
            }
        }
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                value.version[i] = decoded;
            }
        }
        let decoded = u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.bandwidth = decoded;
        let decoded = Ros2Unitree_goMsgIMUState::read_fields(bytes, at)?;
        value.imu_state = decoded;
        {
            let count = 20usize;
            if count > 20 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded = Ros2Unitree_goMsgMotorState::read_fields(bytes, at)?;
                value.motor_state[i] = decoded;
            }
        }
        let decoded = Ros2Unitree_goMsgBmsState::read_fields(bytes, at)?;
        value.bms_state = decoded;
        {
            let count = 4usize;
            if count > 4 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
                value.foot_force[i] = decoded;
            }
        }
        {
            let count = 4usize;
            if count > 4 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
                value.foot_force_est[i] = decoded;
            }
        }
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.tick = decoded;
        {
            let count = 40usize;
            if count > 40 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.wireless_remote[i] = decoded;
            }
        }
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.bit_flag = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.adc_reel = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.temperature_ntc1 = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.temperature_ntc2 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.power_v = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.power_a = decoded;
        {
            let count = 4usize;
            if count > 4 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
                value.fan_frequency[i] = decoded;
            }
        }
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.reserve = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.crc = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_goMsgLowState {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_go/msg/LowState value.
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
    /// @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_go/msg/LowState value.
    /// @details Require the complete 1050..1050-byte canonical representation. Reject truncation, invalid fields
    /// and trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1050 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 1050 {
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
/// Complete bounded value for ROS2 unitree_go/msg/MotorCmds.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_go/msg/MotorCmds value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..1060
/// bytes and is identified by UWVMROS1_d197f3b4853bb06c2379f66e8223dc0807345e8a9c0ce12bb3c6d39e42a7bfb3.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_goMsgMotorCmds {
    /// Declared cmds; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/MotorCmds.cmds: unitree_go/msg/MotorCmd; 0..32 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgMotorCmds; share/platform/ros/rs/API-CONTRACT.md
    pub cmds: Vec<Ros2Unitree_goMsgMotorCmd>,
}
/// @brief Construct the declared defaults of unitree_go/msg/MotorCmds.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_goMsgMotorCmds; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_goMsgMotorCmds {
    fn default() -> Self {
        Self {
            cmds: Default::default(),
        }
    }
}
impl Ros2Unitree_goMsgMotorCmds {
    /// @brief Maximum canonical extent of unitree_go/msg/MotorCmds in bytes.
    /// @details The inclusive bound is 1060 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_goMsgMotorCmds; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 1060;
    /// @brief Cartesian field-bound maximum of unitree_go/msg/MotorCmds in bytes.
    /// @details Exact independently combined field-bound extent 1060; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_goMsgMotorCmds; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 1060;
    /// @brief Aggregate profile byte budget of unitree_go/msg/MotorCmds.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_goMsgMotorCmds; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_go/msg/MotorCmds.
    /// @details Exact identity UWVMROS1_d197f3b4853bb06c2379f66e8223dc0807345e8a9c0ce12bb3c6d39e42a7bfb3 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_goMsgMotorCmds; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d197f3b4853bb06c2379f66e8223dc0807345e8a9c0ce12bb3c6d39e42a7bfb3";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_go/msg/MotorCmds value.
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
    /// @see Ros2Unitree_goMsgMotorCmds; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.cmds.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.cmds {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 1060 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_go/msg/MotorCmds value.
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
    /// @see Ros2Unitree_goMsgMotorCmds; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.cmds.len() as u32).to_le_bytes());
        for element in &self.cmds {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
                return Err(invalid());
            }
            value.cmds = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Unitree_goMsgMotorCmd::read_fields(bytes, at)?;
                value.cmds.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_goMsgMotorCmds {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_go/msg/MotorCmds value.
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
    /// @see Ros2Unitree_goMsgMotorCmds; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_go/msg/MotorCmds value.
    /// @details Require the complete 4..1060-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_goMsgMotorCmds; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1060 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 4 {
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
/// Complete bounded value for ROS2 unitree_go/msg/MotorStates.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_go/msg/MotorStates value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..1348
/// bytes and is identified by UWVMROS1_0280c49a47d3e308c9026dd1d066ad6cf790b30630e075e31f16f26fa0529d3e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_goMsgMotorStates {
    /// Declared states; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/MotorStates.states: unitree_go/msg/MotorState; 0..32 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgMotorStates; share/platform/ros/rs/API-CONTRACT.md
    pub states: Vec<Ros2Unitree_goMsgMotorState>,
}
/// @brief Construct the declared defaults of unitree_go/msg/MotorStates.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_goMsgMotorStates; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_goMsgMotorStates {
    fn default() -> Self {
        Self {
            states: Default::default(),
        }
    }
}
impl Ros2Unitree_goMsgMotorStates {
    /// @brief Maximum canonical extent of unitree_go/msg/MotorStates in bytes.
    /// @details The inclusive bound is 1348 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_goMsgMotorStates; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 1348;
    /// @brief Cartesian field-bound maximum of unitree_go/msg/MotorStates in bytes.
    /// @details Exact independently combined field-bound extent 1348; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_goMsgMotorStates; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 1348;
    /// @brief Aggregate profile byte budget of unitree_go/msg/MotorStates.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_goMsgMotorStates; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_go/msg/MotorStates.
    /// @details Exact identity UWVMROS1_0280c49a47d3e308c9026dd1d066ad6cf790b30630e075e31f16f26fa0529d3e binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_goMsgMotorStates; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0280c49a47d3e308c9026dd1d066ad6cf790b30630e075e31f16f26fa0529d3e";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_go/msg/MotorStates value.
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
    /// @see Ros2Unitree_goMsgMotorStates; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.states.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.states {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 1348 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_go/msg/MotorStates value.
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
    /// @see Ros2Unitree_goMsgMotorStates; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.states.len() as u32).to_le_bytes());
        for element in &self.states {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
                return Err(invalid());
            }
            value.states = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Unitree_goMsgMotorState::read_fields(bytes, at)?;
                value.states.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_goMsgMotorStates {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_go/msg/MotorStates value.
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
    /// @see Ros2Unitree_goMsgMotorStates; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_go/msg/MotorStates value.
    /// @details Require the complete 4..1348-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_goMsgMotorStates; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1348 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 4 {
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
/// Complete bounded value for ROS2 unitree_go/msg/PathPoint.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_go/msg/PathPoint value.
/// @details All 7 declared fields are retained in source order. The canonical representation occupies 28..28
/// bytes and is identified by UWVMROS1_35eb1cc629dcecbace17b342029c287310c30d4e6d988740bf2c212a1251cee4.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_goMsgPathPoint {
    /// Declared t_from_start; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/PathPoint.t_from_start: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgPathPoint; share/platform/ros/rs/API-CONTRACT.md
    pub t_from_start: f32,
    /// Declared x; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/PathPoint.x: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgPathPoint; share/platform/ros/rs/API-CONTRACT.md
    pub x: f32,
    /// Declared y; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/PathPoint.y: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgPathPoint; share/platform/ros/rs/API-CONTRACT.md
    pub y: f32,
    /// Declared yaw; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/PathPoint.yaw: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgPathPoint; share/platform/ros/rs/API-CONTRACT.md
    pub yaw: f32,
    /// Declared vx; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/PathPoint.vx: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgPathPoint; share/platform/ros/rs/API-CONTRACT.md
    pub vx: f32,
    /// Declared vy; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/PathPoint.vy: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgPathPoint; share/platform/ros/rs/API-CONTRACT.md
    pub vy: f32,
    /// Declared vyaw; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/PathPoint.vyaw: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgPathPoint; share/platform/ros/rs/API-CONTRACT.md
    pub vyaw: f32,
}
/// @brief Construct the declared defaults of unitree_go/msg/PathPoint.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_goMsgPathPoint; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_goMsgPathPoint {
    fn default() -> Self {
        Self {
            t_from_start: Default::default(),
            x: Default::default(),
            y: Default::default(),
            yaw: Default::default(),
            vx: Default::default(),
            vy: Default::default(),
            vyaw: Default::default(),
        }
    }
}
impl Ros2Unitree_goMsgPathPoint {
    /// @brief Maximum canonical extent of unitree_go/msg/PathPoint in bytes.
    /// @details The inclusive bound is 28 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_goMsgPathPoint; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 28;
    /// @brief Cartesian field-bound maximum of unitree_go/msg/PathPoint in bytes.
    /// @details Exact independently combined field-bound extent 28; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_goMsgPathPoint; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 28;
    /// @brief Aggregate profile byte budget of unitree_go/msg/PathPoint.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_goMsgPathPoint; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_go/msg/PathPoint.
    /// @details Exact identity UWVMROS1_35eb1cc629dcecbace17b342029c287310c30d4e6d988740bf2c212a1251cee4 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_goMsgPathPoint; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_35eb1cc629dcecbace17b342029c287310c30d4e6d988740bf2c212a1251cee4";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_go/msg/PathPoint value.
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
    /// @see Ros2Unitree_goMsgPathPoint; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.t_from_start.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.x.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.y.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.yaw.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.vx.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.vy.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.vyaw.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if n > 28 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_go/msg/PathPoint value.
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
    /// @see Ros2Unitree_goMsgPathPoint; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.t_from_start.to_le_bytes());
        put(out, at, &self.x.to_le_bytes());
        put(out, at, &self.y.to_le_bytes());
        put(out, at, &self.yaw.to_le_bytes());
        put(out, at, &self.vx.to_le_bytes());
        put(out, at, &self.vy.to_le_bytes());
        put(out, at, &self.vyaw.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.t_from_start = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.x = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.y = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.yaw = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.vx = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.vy = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.vyaw = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_goMsgPathPoint {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_go/msg/PathPoint value.
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
    /// @see Ros2Unitree_goMsgPathPoint; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_go/msg/PathPoint value.
    /// @details Require the complete 28..28-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_goMsgPathPoint; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 28 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 28 {
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
/// Complete bounded value for ROS2 unitree_go/msg/Req.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_go/msg/Req value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..4104
/// bytes and is identified by UWVMROS1_eff40bce6ab17bd2781e77b07b2f43cfb4574654561aa96ebae4e19ecb4966d8.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_goMsgReq {
    /// Declared uuid; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/Req.uuid: string; each string is 0..2048 bytes; strict UTF-8 with no embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgReq; share/platform/ros/rs/API-CONTRACT.md
    pub uuid: String,
    /// Declared body; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/Req.body: string; each string is 0..2048 bytes; strict UTF-8 with no embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgReq; share/platform/ros/rs/API-CONTRACT.md
    pub body: String,
}
/// @brief Construct the declared defaults of unitree_go/msg/Req.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_goMsgReq; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_goMsgReq {
    fn default() -> Self {
        Self {
            uuid: Default::default(),
            body: Default::default(),
        }
    }
}
impl Ros2Unitree_goMsgReq {
    /// @brief Maximum canonical extent of unitree_go/msg/Req in bytes.
    /// @details The inclusive bound is 4104 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_goMsgReq; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 4104;
    /// @brief Cartesian field-bound maximum of unitree_go/msg/Req in bytes.
    /// @details Exact independently combined field-bound extent 4104; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_goMsgReq; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 4104;
    /// @brief Aggregate profile byte budget of unitree_go/msg/Req.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_goMsgReq; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_go/msg/Req.
    /// @details Exact identity UWVMROS1_eff40bce6ab17bd2781e77b07b2f43cfb4574654561aa96ebae4e19ecb4966d8 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_goMsgReq; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_eff40bce6ab17bd2781e77b07b2f43cfb4574654561aa96ebae4e19ecb4966d8";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_go/msg/Req value.
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
    /// @see Ros2Unitree_goMsgReq; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.uuid.len() > 2048 || self.uuid.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.uuid.len())?;
        if self.body.len() > 2048 || self.body.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.body.len())?;
        if n > 4104 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_go/msg/Req value.
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
    /// @see Ros2Unitree_goMsgReq; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.uuid.len() as u32).to_le_bytes());
        put(out, at, self.uuid.as_bytes());
        put(out, at, &(self.body.len() as u32).to_le_bytes());
        put(out, at, self.body.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 2048 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.uuid = decoded;
        let size = read_count(bytes, at)?;
        if size > 2048 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.body = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_goMsgReq {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_go/msg/Req value.
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
    /// @see Ros2Unitree_goMsgReq; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_go/msg/Req value.
    /// @details Require the complete 8..4104-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_goMsgReq; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 4104 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 8 {
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
/// Complete bounded value for ROS2 unitree_go/msg/Res.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_go/msg/Res value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..6156
/// bytes and is identified by UWVMROS1_b18c13e825767a66420c5a03464d38f0d18058e532654a8079f2f60a82cf4963.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_goMsgRes {
    /// Declared uuid; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/Res.uuid: string; each string is 0..2048 bytes; strict UTF-8 with no embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgRes; share/platform/ros/rs/API-CONTRACT.md
    pub uuid: String,
    /// Declared data; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/Res.data: uint8; 0..2048 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgRes; share/platform/ros/rs/API-CONTRACT.md
    pub data: Vec<u8>,
    /// Declared body; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/Res.body: string; each string is 0..2048 bytes; strict UTF-8 with no embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgRes; share/platform/ros/rs/API-CONTRACT.md
    pub body: String,
}
/// @brief Construct the declared defaults of unitree_go/msg/Res.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_goMsgRes; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_goMsgRes {
    fn default() -> Self {
        Self {
            uuid: Default::default(),
            data: Default::default(),
            body: Default::default(),
        }
    }
}
impl Ros2Unitree_goMsgRes {
    /// @brief Maximum canonical extent of unitree_go/msg/Res in bytes.
    /// @details The inclusive bound is 6156 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_goMsgRes; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 6156;
    /// @brief Cartesian field-bound maximum of unitree_go/msg/Res in bytes.
    /// @details Exact independently combined field-bound extent 6156; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_goMsgRes; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 6156;
    /// @brief Aggregate profile byte budget of unitree_go/msg/Res.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_goMsgRes; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_go/msg/Res.
    /// @details Exact identity UWVMROS1_b18c13e825767a66420c5a03464d38f0d18058e532654a8079f2f60a82cf4963 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_goMsgRes; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b18c13e825767a66420c5a03464d38f0d18058e532654a8079f2f60a82cf4963";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_go/msg/Res value.
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
    /// @see Ros2Unitree_goMsgRes; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.uuid.len() > 2048 || self.uuid.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.uuid.len())?;
        if self.data.len() > 2048 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.data {
            n = add_size(n, 1)?;
        }
        if self.body.len() > 2048 || self.body.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.body.len())?;
        if n > 6156 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_go/msg/Res value.
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
    /// @see Ros2Unitree_goMsgRes; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.uuid.len() as u32).to_le_bytes());
        put(out, at, self.uuid.as_bytes());
        put(out, at, &(self.data.len() as u32).to_le_bytes());
        for element in &self.data {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.body.len() as u32).to_le_bytes());
        put(out, at, self.body.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 2048 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.uuid = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 2048 {
                return Err(invalid());
            }
            value.data = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.data.push(decoded);
            }
        }
        let size = read_count(bytes, at)?;
        if size > 2048 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.body = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_goMsgRes {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_go/msg/Res value.
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
    /// @see Ros2Unitree_goMsgRes; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_go/msg/Res value.
    /// @details Require the complete 12..6156-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_goMsgRes; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 6156 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 12 {
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
/// Complete bounded value for ROS2 unitree_go/msg/SportModeCmd.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_go/msg/SportModeCmd value.
/// @details All 11 declared fields are retained in source order. The canonical representation occupies 887..887
/// bytes and is identified by UWVMROS1_cf90a065007b9b8cedde3f0b58aa79da3b39a1456dc1b5297f4fe799d92ff22c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_goMsgSportModeCmd {
    /// Declared mode; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/SportModeCmd.mode: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
    pub mode: u8,
    /// Declared gait_type; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/SportModeCmd.gait_type: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
    pub gait_type: u8,
    /// Declared speed_level; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/SportModeCmd.speed_level: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
    pub speed_level: u8,
    /// Declared foot_raise_height; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/SportModeCmd.foot_raise_height: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
    pub foot_raise_height: f32,
    /// Declared body_height; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/SportModeCmd.body_height: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
    pub body_height: f32,
    /// Declared position; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/SportModeCmd.position: float32; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
    pub position: [f32; 2],
    /// Declared euler; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/SportModeCmd.euler: float32; exactly 3 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
    pub euler: [f32; 3],
    /// Declared velocity; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/SportModeCmd.velocity: float32; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
    pub velocity: [f32; 2],
    /// Declared yaw_speed; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/SportModeCmd.yaw_speed: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
    pub yaw_speed: f32,
    /// Declared bms_cmd; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/SportModeCmd.bms_cmd: unitree_go/msg/BmsCmd.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
    pub bms_cmd: Ros2Unitree_goMsgBmsCmd,
    /// Declared path_point; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/SportModeCmd.path_point: unitree_go/msg/PathPoint; exactly 30 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
    pub path_point: [Ros2Unitree_goMsgPathPoint; 30],
}
/// @brief Construct the declared defaults of unitree_go/msg/SportModeCmd.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_goMsgSportModeCmd {
    fn default() -> Self {
        Self {
            mode: Default::default(),
            gait_type: Default::default(),
            speed_level: Default::default(),
            foot_raise_height: Default::default(),
            body_height: Default::default(),
            position: core::array::from_fn(|_| Default::default()),
            euler: core::array::from_fn(|_| Default::default()),
            velocity: core::array::from_fn(|_| Default::default()),
            yaw_speed: Default::default(),
            bms_cmd: Default::default(),
            path_point: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros2Unitree_goMsgSportModeCmd {
    /// @brief Maximum canonical extent of unitree_go/msg/SportModeCmd in bytes.
    /// @details The inclusive bound is 887 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 887;
    /// @brief Cartesian field-bound maximum of unitree_go/msg/SportModeCmd in bytes.
    /// @details Exact independently combined field-bound extent 887; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 887;
    /// @brief Aggregate profile byte budget of unitree_go/msg/SportModeCmd.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_go/msg/SportModeCmd.
    /// @details Exact identity UWVMROS1_cf90a065007b9b8cedde3f0b58aa79da3b39a1456dc1b5297f4fe799d92ff22c binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_cf90a065007b9b8cedde3f0b58aa79da3b39a1456dc1b5297f4fe799d92ff22c";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_go/msg/SportModeCmd value.
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
    /// @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if !self.foot_raise_height.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.body_height.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.position {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        for element in &self.euler {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        for element in &self.velocity {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        if !self.yaw_speed.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.bms_cmd.wire_size()?)?;
        for element in &self.path_point {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 887 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_go/msg/SportModeCmd value.
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
    /// @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.mode.to_le_bytes());
        put(out, at, &self.gait_type.to_le_bytes());
        put(out, at, &self.speed_level.to_le_bytes());
        put(out, at, &self.foot_raise_height.to_le_bytes());
        put(out, at, &self.body_height.to_le_bytes());
        for element in &self.position {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.euler {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.velocity {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.yaw_speed.to_le_bytes());
        self.bms_cmd.write_fields(out, at);
        for element in &self.path_point {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.mode = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.gait_type = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.speed_level = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.foot_raise_height = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.body_height = decoded;
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.position[i] = decoded;
            }
        }
        {
            let count = 3usize;
            if count > 3 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.euler[i] = decoded;
            }
        }
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.velocity[i] = decoded;
            }
        }
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.yaw_speed = decoded;
        let decoded = Ros2Unitree_goMsgBmsCmd::read_fields(bytes, at)?;
        value.bms_cmd = decoded;
        {
            let count = 30usize;
            if count > 30 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded = Ros2Unitree_goMsgPathPoint::read_fields(bytes, at)?;
                value.path_point[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_goMsgSportModeCmd {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_go/msg/SportModeCmd value.
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
    /// @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_go/msg/SportModeCmd value.
    /// @details Require the complete 887..887-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 887 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 887 {
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
/// Complete bounded value for ROS2 unitree_go/msg/TimeSpec.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_go/msg/TimeSpec value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_9ad3c6ed5a9ff0bba22593b50e1d777ae2f63480a01a744d777ee6b7dad0ecc4.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_goMsgTimeSpec {
    /// Declared sec; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/TimeSpec.sec: int32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgTimeSpec; share/platform/ros/rs/API-CONTRACT.md
    pub sec: i32,
    /// Declared nanosec; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/TimeSpec.nanosec: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgTimeSpec; share/platform/ros/rs/API-CONTRACT.md
    pub nanosec: u32,
}
/// @brief Construct the declared defaults of unitree_go/msg/TimeSpec.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_goMsgTimeSpec; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_goMsgTimeSpec {
    fn default() -> Self {
        Self {
            sec: Default::default(),
            nanosec: Default::default(),
        }
    }
}
impl Ros2Unitree_goMsgTimeSpec {
    /// @brief Maximum canonical extent of unitree_go/msg/TimeSpec in bytes.
    /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_goMsgTimeSpec; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 8;
    /// @brief Cartesian field-bound maximum of unitree_go/msg/TimeSpec in bytes.
    /// @details Exact independently combined field-bound extent 8; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_goMsgTimeSpec; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    /// @brief Aggregate profile byte budget of unitree_go/msg/TimeSpec.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_goMsgTimeSpec; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_go/msg/TimeSpec.
    /// @details Exact identity UWVMROS1_9ad3c6ed5a9ff0bba22593b50e1d777ae2f63480a01a744d777ee6b7dad0ecc4 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_goMsgTimeSpec; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_9ad3c6ed5a9ff0bba22593b50e1d777ae2f63480a01a744d777ee6b7dad0ecc4";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_go/msg/TimeSpec value.
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
    /// @see Ros2Unitree_goMsgTimeSpec; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        if n > 8 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_go/msg/TimeSpec value.
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
    /// @see Ros2Unitree_goMsgTimeSpec; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.sec.to_le_bytes());
        put(out, at, &self.nanosec.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.sec = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.nanosec = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_goMsgTimeSpec {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_go/msg/TimeSpec value.
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
    /// @see Ros2Unitree_goMsgTimeSpec; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_go/msg/TimeSpec value.
    /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_goMsgTimeSpec; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 8 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 8 {
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
/// Complete bounded value for ROS2 unitree_go/msg/SportModeState.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_go/msg/SportModeState value.
/// @details All 15 declared fields are retained in source order. The canonical representation occupies 227..227
/// bytes and is identified by UWVMROS1_2935b9d838087267840b379582862a15c2e1a72fe8ad2bcbf8f19af2f8054760.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_goMsgSportModeState {
    /// Declared stamp; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/SportModeState.stamp: unitree_go/msg/TimeSpec.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
    pub stamp: Ros2Unitree_goMsgTimeSpec,
    /// Declared error_code; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/SportModeState.error_code: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
    pub error_code: u32,
    /// Declared imu_state; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/SportModeState.imu_state: unitree_go/msg/IMUState.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
    pub imu_state: Ros2Unitree_goMsgIMUState,
    /// Declared mode; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/SportModeState.mode: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
    pub mode: u8,
    /// Declared progress; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/SportModeState.progress: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
    pub progress: f32,
    /// Declared gait_type; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/SportModeState.gait_type: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
    pub gait_type: u8,
    /// Declared foot_raise_height; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/SportModeState.foot_raise_height: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
    pub foot_raise_height: f32,
    /// Declared position; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/SportModeState.position: float32; exactly 3 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
    pub position: [f32; 3],
    /// Declared body_height; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/SportModeState.body_height: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
    pub body_height: f32,
    /// Declared velocity; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/SportModeState.velocity: float32; exactly 3 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
    pub velocity: [f32; 3],
    /// Declared yaw_speed; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/SportModeState.yaw_speed: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
    pub yaw_speed: f32,
    /// Declared range_obstacle; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/SportModeState.range_obstacle: float32; exactly 4 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
    pub range_obstacle: [f32; 4],
    /// Declared foot_force; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/SportModeState.foot_force: int16; exactly 4 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
    pub foot_force: [i16; 4],
    /// Declared foot_position_body; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/SportModeState.foot_position_body: float32; exactly 12 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
    pub foot_position_body: [f32; 12],
    /// Declared foot_speed_body; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/SportModeState.foot_speed_body: float32; exactly 12 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
    pub foot_speed_body: [f32; 12],
}
/// @brief Construct the declared defaults of unitree_go/msg/SportModeState.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_goMsgSportModeState {
    fn default() -> Self {
        Self {
            stamp: Default::default(),
            error_code: Default::default(),
            imu_state: Default::default(),
            mode: Default::default(),
            progress: Default::default(),
            gait_type: Default::default(),
            foot_raise_height: Default::default(),
            position: core::array::from_fn(|_| Default::default()),
            body_height: Default::default(),
            velocity: core::array::from_fn(|_| Default::default()),
            yaw_speed: Default::default(),
            range_obstacle: core::array::from_fn(|_| Default::default()),
            foot_force: core::array::from_fn(|_| Default::default()),
            foot_position_body: core::array::from_fn(|_| Default::default()),
            foot_speed_body: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros2Unitree_goMsgSportModeState {
    /// @brief Maximum canonical extent of unitree_go/msg/SportModeState in bytes.
    /// @details The inclusive bound is 227 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 227;
    /// @brief Cartesian field-bound maximum of unitree_go/msg/SportModeState in bytes.
    /// @details Exact independently combined field-bound extent 227; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 227;
    /// @brief Aggregate profile byte budget of unitree_go/msg/SportModeState.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_go/msg/SportModeState.
    /// @details Exact identity UWVMROS1_2935b9d838087267840b379582862a15c2e1a72fe8ad2bcbf8f19af2f8054760 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2935b9d838087267840b379582862a15c2e1a72fe8ad2bcbf8f19af2f8054760";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_go/msg/SportModeState value.
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
    /// @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.stamp.wire_size()?)?;
        n = add_size(n, 4)?;
        n = add_size(n, self.imu_state.wire_size()?)?;
        n = add_size(n, 1)?;
        if !self.progress.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, 1)?;
        if !self.foot_raise_height.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.position {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        if !self.body_height.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.velocity {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        if !self.yaw_speed.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.range_obstacle {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        for element in &self.foot_force {
            n = add_size(n, 2)?;
        }
        for element in &self.foot_position_body {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        for element in &self.foot_speed_body {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        if n > 227 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_go/msg/SportModeState value.
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
    /// @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.stamp.write_fields(out, at);
        put(out, at, &self.error_code.to_le_bytes());
        self.imu_state.write_fields(out, at);
        put(out, at, &self.mode.to_le_bytes());
        put(out, at, &self.progress.to_le_bytes());
        put(out, at, &self.gait_type.to_le_bytes());
        put(out, at, &self.foot_raise_height.to_le_bytes());
        for element in &self.position {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.body_height.to_le_bytes());
        for element in &self.velocity {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.yaw_speed.to_le_bytes());
        for element in &self.range_obstacle {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.foot_force {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.foot_position_body {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.foot_speed_body {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Unitree_goMsgTimeSpec::read_fields(bytes, at)?;
        value.stamp = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.error_code = decoded;
        let decoded = Ros2Unitree_goMsgIMUState::read_fields(bytes, at)?;
        value.imu_state = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.mode = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.progress = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.gait_type = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.foot_raise_height = decoded;
        {
            let count = 3usize;
            if count > 3 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.position[i] = decoded;
            }
        }
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.body_height = decoded;
        {
            let count = 3usize;
            if count > 3 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.velocity[i] = decoded;
            }
        }
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.yaw_speed = decoded;
        {
            let count = 4usize;
            if count > 4 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.range_obstacle[i] = decoded;
            }
        }
        {
            let count = 4usize;
            if count > 4 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
                value.foot_force[i] = decoded;
            }
        }
        {
            let count = 12usize;
            if count > 12 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.foot_position_body[i] = decoded;
            }
        }
        {
            let count = 12usize;
            if count > 12 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.foot_speed_body[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_goMsgSportModeState {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_go/msg/SportModeState value.
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
    /// @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_go/msg/SportModeState value.
    /// @details Require the complete 227..227-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 227 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 227 {
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
/// Complete bounded value for ROS2 unitree_go/msg/UwbState.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_go/msg/UwbState value.
/// @details All 17 declared fields are retained in source order. The canonical representation occupies 55..55
/// bytes and is identified by UWVMROS1_017fbafd61a006aeaf6cb80456ac89f429d30a562da2e0d394c6cfb406e61a34.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_goMsgUwbState {
    /// Declared version; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/UwbState.version: uint8; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
    pub version: [u8; 2],
    /// Declared channel; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/UwbState.channel: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
    pub channel: u8,
    /// Declared joy_mode; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/UwbState.joy_mode: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
    pub joy_mode: u8,
    /// Declared orientation_est; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/UwbState.orientation_est: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
    pub orientation_est: f32,
    /// Declared pitch_est; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/UwbState.pitch_est: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
    pub pitch_est: f32,
    /// Declared distance_est; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/UwbState.distance_est: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
    pub distance_est: f32,
    /// Declared yaw_est; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/UwbState.yaw_est: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
    pub yaw_est: f32,
    /// Declared tag_roll; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/UwbState.tag_roll: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
    pub tag_roll: f32,
    /// Declared tag_pitch; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/UwbState.tag_pitch: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
    pub tag_pitch: f32,
    /// Declared tag_yaw; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/UwbState.tag_yaw: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
    pub tag_yaw: f32,
    /// Declared base_roll; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/UwbState.base_roll: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
    pub base_roll: f32,
    /// Declared base_pitch; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/UwbState.base_pitch: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
    pub base_pitch: f32,
    /// Declared base_yaw; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/UwbState.base_yaw: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
    pub base_yaw: f32,
    /// Declared joystick; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/UwbState.joystick: float32; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
    pub joystick: [f32; 2],
    /// Declared error_state; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/UwbState.error_state: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
    pub error_state: u8,
    /// Declared buttons; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/UwbState.buttons: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
    pub buttons: u8,
    /// Declared enabled_from_app; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/UwbState.enabled_from_app: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
    pub enabled_from_app: u8,
}
/// @brief Construct the declared defaults of unitree_go/msg/UwbState.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_goMsgUwbState {
    fn default() -> Self {
        Self {
            version: core::array::from_fn(|_| Default::default()),
            channel: Default::default(),
            joy_mode: Default::default(),
            orientation_est: Default::default(),
            pitch_est: Default::default(),
            distance_est: Default::default(),
            yaw_est: Default::default(),
            tag_roll: Default::default(),
            tag_pitch: Default::default(),
            tag_yaw: Default::default(),
            base_roll: Default::default(),
            base_pitch: Default::default(),
            base_yaw: Default::default(),
            joystick: core::array::from_fn(|_| Default::default()),
            error_state: Default::default(),
            buttons: Default::default(),
            enabled_from_app: Default::default(),
        }
    }
}
impl Ros2Unitree_goMsgUwbState {
    /// @brief Maximum canonical extent of unitree_go/msg/UwbState in bytes.
    /// @details The inclusive bound is 55 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 55;
    /// @brief Cartesian field-bound maximum of unitree_go/msg/UwbState in bytes.
    /// @details Exact independently combined field-bound extent 55; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 55;
    /// @brief Aggregate profile byte budget of unitree_go/msg/UwbState.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_go/msg/UwbState.
    /// @details Exact identity UWVMROS1_017fbafd61a006aeaf6cb80456ac89f429d30a562da2e0d394c6cfb406e61a34 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_017fbafd61a006aeaf6cb80456ac89f429d30a562da2e0d394c6cfb406e61a34";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_go/msg/UwbState value.
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
    /// @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.version {
            n = add_size(n, 1)?;
        }
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if !self.orientation_est.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.pitch_est.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.distance_est.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.yaw_est.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.tag_roll.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.tag_pitch.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.tag_yaw.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.base_roll.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.base_pitch.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.base_yaw.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.joystick {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 55 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_go/msg/UwbState value.
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
    /// @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.version {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.channel.to_le_bytes());
        put(out, at, &self.joy_mode.to_le_bytes());
        put(out, at, &self.orientation_est.to_le_bytes());
        put(out, at, &self.pitch_est.to_le_bytes());
        put(out, at, &self.distance_est.to_le_bytes());
        put(out, at, &self.yaw_est.to_le_bytes());
        put(out, at, &self.tag_roll.to_le_bytes());
        put(out, at, &self.tag_pitch.to_le_bytes());
        put(out, at, &self.tag_yaw.to_le_bytes());
        put(out, at, &self.base_roll.to_le_bytes());
        put(out, at, &self.base_pitch.to_le_bytes());
        put(out, at, &self.base_yaw.to_le_bytes());
        for element in &self.joystick {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.error_state.to_le_bytes());
        put(out, at, &self.buttons.to_le_bytes());
        put(out, at, &self.enabled_from_app.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.version[i] = decoded;
            }
        }
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.channel = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.joy_mode = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.orientation_est = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.pitch_est = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.distance_est = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.yaw_est = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.tag_roll = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.tag_pitch = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.tag_yaw = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.base_roll = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.base_pitch = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.base_yaw = decoded;
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.joystick[i] = decoded;
            }
        }
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.error_state = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.buttons = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.enabled_from_app = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_goMsgUwbState {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_go/msg/UwbState value.
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
    /// @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_go/msg/UwbState value.
    /// @details Require the complete 55..55-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 55 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 55 {
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
/// Complete bounded value for ROS2 unitree_go/msg/UwbSwitch.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_go/msg/UwbSwitch value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes
/// and is identified by UWVMROS1_4546618797829b3911d1533d8d6bacc9da969d40d7752424de34bbd3de4bede5.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_goMsgUwbSwitch {
    /// Declared enabled; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/UwbSwitch.enabled: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgUwbSwitch; share/platform/ros/rs/API-CONTRACT.md
    pub enabled: u8,
}
/// @brief Construct the declared defaults of unitree_go/msg/UwbSwitch.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_goMsgUwbSwitch; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_goMsgUwbSwitch {
    fn default() -> Self {
        Self {
            enabled: Default::default(),
        }
    }
}
impl Ros2Unitree_goMsgUwbSwitch {
    /// @brief Maximum canonical extent of unitree_go/msg/UwbSwitch in bytes.
    /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_goMsgUwbSwitch; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 1;
    /// @brief Cartesian field-bound maximum of unitree_go/msg/UwbSwitch in bytes.
    /// @details Exact independently combined field-bound extent 1; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_goMsgUwbSwitch; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    /// @brief Aggregate profile byte budget of unitree_go/msg/UwbSwitch.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_goMsgUwbSwitch; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_go/msg/UwbSwitch.
    /// @details Exact identity UWVMROS1_4546618797829b3911d1533d8d6bacc9da969d40d7752424de34bbd3de4bede5 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_goMsgUwbSwitch; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_4546618797829b3911d1533d8d6bacc9da969d40d7752424de34bbd3de4bede5";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_go/msg/UwbSwitch value.
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
    /// @see Ros2Unitree_goMsgUwbSwitch; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if n > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_go/msg/UwbSwitch value.
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
    /// @see Ros2Unitree_goMsgUwbSwitch; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.enabled.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.enabled = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_goMsgUwbSwitch {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_go/msg/UwbSwitch value.
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
    /// @see Ros2Unitree_goMsgUwbSwitch; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_go/msg/UwbSwitch value.
    /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_goMsgUwbSwitch; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 1 {
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
/// Complete bounded value for ROS2 unitree_go/msg/WirelessController.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_go/msg/WirelessController value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 18..18
/// bytes and is identified by UWVMROS1_536e69ce5459227cb68b3c6d484a96bfa40e1400aab820f8ad0d0d62ff6ba438.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_goMsgWirelessController {
    /// Declared lx; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/WirelessController.lx: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgWirelessController; share/platform/ros/rs/API-CONTRACT.md
    pub lx: f32,
    /// Declared ly; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/WirelessController.ly: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgWirelessController; share/platform/ros/rs/API-CONTRACT.md
    pub ly: f32,
    /// Declared rx; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/WirelessController.rx: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgWirelessController; share/platform/ros/rs/API-CONTRACT.md
    pub rx: f32,
    /// Declared ry; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/WirelessController.ry: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgWirelessController; share/platform/ros/rs/API-CONTRACT.md
    pub ry: f32,
    /// Declared keys; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_go/msg/WirelessController.keys: uint16.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_goMsgWirelessController; share/platform/ros/rs/API-CONTRACT.md
    pub keys: u16,
}
/// @brief Construct the declared defaults of unitree_go/msg/WirelessController.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_goMsgWirelessController; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_goMsgWirelessController {
    fn default() -> Self {
        Self {
            lx: Default::default(),
            ly: Default::default(),
            rx: Default::default(),
            ry: Default::default(),
            keys: Default::default(),
        }
    }
}
impl Ros2Unitree_goMsgWirelessController {
    /// @brief Maximum canonical extent of unitree_go/msg/WirelessController in bytes.
    /// @details The inclusive bound is 18 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_goMsgWirelessController; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 18;
    /// @brief Cartesian field-bound maximum of unitree_go/msg/WirelessController in bytes.
    /// @details Exact independently combined field-bound extent 18; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_goMsgWirelessController; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 18;
    /// @brief Aggregate profile byte budget of unitree_go/msg/WirelessController.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_goMsgWirelessController; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_go/msg/WirelessController.
    /// @details Exact identity UWVMROS1_536e69ce5459227cb68b3c6d484a96bfa40e1400aab820f8ad0d0d62ff6ba438 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_goMsgWirelessController; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_536e69ce5459227cb68b3c6d484a96bfa40e1400aab820f8ad0d0d62ff6ba438";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_go/msg/WirelessController value.
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
    /// @see Ros2Unitree_goMsgWirelessController; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.lx.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.ly.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.rx.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.ry.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, 2)?;
        if n > 18 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_go/msg/WirelessController value.
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
    /// @see Ros2Unitree_goMsgWirelessController; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.lx.to_le_bytes());
        put(out, at, &self.ly.to_le_bytes());
        put(out, at, &self.rx.to_le_bytes());
        put(out, at, &self.ry.to_le_bytes());
        put(out, at, &self.keys.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.lx = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.ly = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.rx = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.ry = decoded;
        let decoded = u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.keys = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_goMsgWirelessController {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_go/msg/WirelessController value.
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
    /// @see Ros2Unitree_goMsgWirelessController; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_go/msg/WirelessController value.
    /// @details Require the complete 18..18-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_goMsgWirelessController; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 18 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 18 {
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
/// Complete bounded value for ROS2 unitree_hg/msg/BmsCmd.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_hg/msg/BmsCmd value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 41..41
/// bytes and is identified by UWVMROS1_a267c92d22aa04a15f7d68c87b7638b15a368ac973f49a42021dc91f991b13de.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_hgMsgBmsCmd {
    /// Declared cmd; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/BmsCmd.cmd: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgBmsCmd; share/platform/ros/rs/API-CONTRACT.md
    pub cmd: u8,
    /// Declared reserve; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/BmsCmd.reserve: uint8; exactly 40 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgBmsCmd; share/platform/ros/rs/API-CONTRACT.md
    pub reserve: [u8; 40],
}
/// @brief Construct the declared defaults of unitree_hg/msg/BmsCmd.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_hgMsgBmsCmd; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_hgMsgBmsCmd {
    fn default() -> Self {
        Self {
            cmd: Default::default(),
            reserve: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros2Unitree_hgMsgBmsCmd {
    /// @brief Maximum canonical extent of unitree_hg/msg/BmsCmd in bytes.
    /// @details The inclusive bound is 41 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_hgMsgBmsCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 41;
    /// @brief Cartesian field-bound maximum of unitree_hg/msg/BmsCmd in bytes.
    /// @details Exact independently combined field-bound extent 41; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_hgMsgBmsCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 41;
    /// @brief Aggregate profile byte budget of unitree_hg/msg/BmsCmd.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_hgMsgBmsCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_hg/msg/BmsCmd.
    /// @details Exact identity UWVMROS1_a267c92d22aa04a15f7d68c87b7638b15a368ac973f49a42021dc91f991b13de binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_hgMsgBmsCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a267c92d22aa04a15f7d68c87b7638b15a368ac973f49a42021dc91f991b13de";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_hg/msg/BmsCmd value.
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
    /// @see Ros2Unitree_hgMsgBmsCmd; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        for element in &self.reserve {
            n = add_size(n, 1)?;
        }
        if n > 41 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_hg/msg/BmsCmd value.
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
    /// @see Ros2Unitree_hgMsgBmsCmd; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.cmd.to_le_bytes());
        for element in &self.reserve {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.cmd = decoded;
        {
            let count = 40usize;
            if count > 40 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.reserve[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_hgMsgBmsCmd {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_hg/msg/BmsCmd value.
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
    /// @see Ros2Unitree_hgMsgBmsCmd; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_hg/msg/BmsCmd value.
    /// @details Require the complete 41..41-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_hgMsgBmsCmd; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 41 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 41 {
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
/// Complete bounded value for ROS2 unitree_hg/msg/BmsState.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_hg/msg/BmsState value.
/// @details All 13 declared fields are retained in source order. The canonical representation occupies 161..161
/// bytes and is identified by UWVMROS1_b7ac163c4ab4786d37a9ec027767258adcfc06637ed8b4ef67e30c517397761d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_hgMsgBmsState {
    /// Declared version_high; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/BmsState.version_high: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub version_high: u8,
    /// Declared version_low; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/BmsState.version_low: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub version_low: u8,
    /// Declared fn; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/BmsState.fn: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub r#fn: u8,
    /// Declared cell_vol; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/BmsState.cell_vol: uint16; exactly 40 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub cell_vol: [u16; 40],
    /// Declared bmsvoltage; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/BmsState.bmsvoltage: uint32; exactly 3 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub bmsvoltage: [u32; 3],
    /// Declared current; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/BmsState.current: int32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub current: i32,
    /// Declared soc; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/BmsState.soc: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub soc: u8,
    /// Declared soh; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/BmsState.soh: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub soh: u8,
    /// Declared temperature; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/BmsState.temperature: int16; exactly 12 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub temperature: [i16; 12],
    /// Declared cycle; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/BmsState.cycle: uint16.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub cycle: u16,
    /// Declared manufacturer_date; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/BmsState.manufacturer_date: uint16.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub manufacturer_date: u16,
    /// Declared bmsstate; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/BmsState.bmsstate: uint32; exactly 5 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub bmsstate: [u32; 5],
    /// Declared reserve; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/BmsState.reserve: uint32; exactly 3 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub reserve: [u32; 3],
}
/// @brief Construct the declared defaults of unitree_hg/msg/BmsState.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_hgMsgBmsState {
    fn default() -> Self {
        Self {
            version_high: Default::default(),
            version_low: Default::default(),
            r#fn: Default::default(),
            cell_vol: core::array::from_fn(|_| Default::default()),
            bmsvoltage: core::array::from_fn(|_| Default::default()),
            current: Default::default(),
            soc: Default::default(),
            soh: Default::default(),
            temperature: core::array::from_fn(|_| Default::default()),
            cycle: Default::default(),
            manufacturer_date: Default::default(),
            bmsstate: core::array::from_fn(|_| Default::default()),
            reserve: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros2Unitree_hgMsgBmsState {
    /// @brief Maximum canonical extent of unitree_hg/msg/BmsState in bytes.
    /// @details The inclusive bound is 161 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 161;
    /// @brief Cartesian field-bound maximum of unitree_hg/msg/BmsState in bytes.
    /// @details Exact independently combined field-bound extent 161; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 161;
    /// @brief Aggregate profile byte budget of unitree_hg/msg/BmsState.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_hg/msg/BmsState.
    /// @details Exact identity UWVMROS1_b7ac163c4ab4786d37a9ec027767258adcfc06637ed8b4ef67e30c517397761d binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b7ac163c4ab4786d37a9ec027767258adcfc06637ed8b4ef67e30c517397761d";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_hg/msg/BmsState value.
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
    /// @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        for element in &self.cell_vol {
            n = add_size(n, 2)?;
        }
        for element in &self.bmsvoltage {
            n = add_size(n, 4)?;
        }
        n = add_size(n, 4)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        for element in &self.temperature {
            n = add_size(n, 2)?;
        }
        n = add_size(n, 2)?;
        n = add_size(n, 2)?;
        for element in &self.bmsstate {
            n = add_size(n, 4)?;
        }
        for element in &self.reserve {
            n = add_size(n, 4)?;
        }
        if n > 161 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_hg/msg/BmsState value.
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
    /// @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.version_high.to_le_bytes());
        put(out, at, &self.version_low.to_le_bytes());
        put(out, at, &self.r#fn.to_le_bytes());
        for element in &self.cell_vol {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.bmsvoltage {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.current.to_le_bytes());
        put(out, at, &self.soc.to_le_bytes());
        put(out, at, &self.soh.to_le_bytes());
        for element in &self.temperature {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.cycle.to_le_bytes());
        put(out, at, &self.manufacturer_date.to_le_bytes());
        for element in &self.bmsstate {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.reserve {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.version_high = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.version_low = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#fn = decoded;
        {
            let count = 40usize;
            if count > 40 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
                value.cell_vol[i] = decoded;
            }
        }
        {
            let count = 3usize;
            if count > 3 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                value.bmsvoltage[i] = decoded;
            }
        }
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.current = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.soc = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.soh = decoded;
        {
            let count = 12usize;
            if count > 12 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
                value.temperature[i] = decoded;
            }
        }
        let decoded = u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.cycle = decoded;
        let decoded = u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.manufacturer_date = decoded;
        {
            let count = 5usize;
            if count > 5 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                value.bmsstate[i] = decoded;
            }
        }
        {
            let count = 3usize;
            if count > 3 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                value.reserve[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_hgMsgBmsState {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_hg/msg/BmsState value.
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
    /// @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_hg/msg/BmsState value.
    /// @details Require the complete 161..161-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 161 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 161 {
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
/// Complete bounded value for ROS2 unitree_hg/msg/MotorCmd.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_hg/msg/MotorCmd value.
/// @details All 7 declared fields are retained in source order. The canonical representation occupies 25..25
/// bytes and is identified by UWVMROS1_f3e472df5d061a1515ac185f87b01f702ef2f2bbeff39e42c6c7088d1da26cbb.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_hgMsgMotorCmd {
    /// Declared mode; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/MotorCmd.mode: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub mode: u8,
    /// Declared q; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/MotorCmd.q: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub q: f32,
    /// Declared dq; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/MotorCmd.dq: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub dq: f32,
    /// Declared tau; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/MotorCmd.tau: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub tau: f32,
    /// Declared kp; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/MotorCmd.kp: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub kp: f32,
    /// Declared kd; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/MotorCmd.kd: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub kd: f32,
    /// Declared reserve; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/MotorCmd.reserve: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub reserve: u32,
}
/// @brief Construct the declared defaults of unitree_hg/msg/MotorCmd.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_hgMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_hgMsgMotorCmd {
    fn default() -> Self {
        Self {
            mode: Default::default(),
            q: Default::default(),
            dq: Default::default(),
            tau: Default::default(),
            kp: Default::default(),
            kd: Default::default(),
            reserve: Default::default(),
        }
    }
}
impl Ros2Unitree_hgMsgMotorCmd {
    /// @brief Maximum canonical extent of unitree_hg/msg/MotorCmd in bytes.
    /// @details The inclusive bound is 25 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_hgMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 25;
    /// @brief Cartesian field-bound maximum of unitree_hg/msg/MotorCmd in bytes.
    /// @details Exact independently combined field-bound extent 25; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_hgMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 25;
    /// @brief Aggregate profile byte budget of unitree_hg/msg/MotorCmd.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_hgMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_hg/msg/MotorCmd.
    /// @details Exact identity UWVMROS1_f3e472df5d061a1515ac185f87b01f702ef2f2bbeff39e42c6c7088d1da26cbb binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_hgMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f3e472df5d061a1515ac185f87b01f702ef2f2bbeff39e42c6c7088d1da26cbb";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_hg/msg/MotorCmd value.
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
    /// @see Ros2Unitree_hgMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if !self.q.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.dq.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.tau.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.kp.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.kd.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        if n > 25 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_hg/msg/MotorCmd value.
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
    /// @see Ros2Unitree_hgMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.mode.to_le_bytes());
        put(out, at, &self.q.to_le_bytes());
        put(out, at, &self.dq.to_le_bytes());
        put(out, at, &self.tau.to_le_bytes());
        put(out, at, &self.kp.to_le_bytes());
        put(out, at, &self.kd.to_le_bytes());
        put(out, at, &self.reserve.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.mode = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.q = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.dq = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.tau = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.kp = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.kd = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.reserve = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_hgMsgMotorCmd {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_hg/msg/MotorCmd value.
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
    /// @see Ros2Unitree_hgMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_hg/msg/MotorCmd value.
    /// @details Require the complete 25..25-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_hgMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 25 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 25 {
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
/// Complete bounded value for ROS2 unitree_hg/msg/HandCmd.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_hg/msg/HandCmd value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 20..820
/// bytes and is identified by UWVMROS1_e5215e7e27590939f11d4e93d096535104bb275681fa89a88954227cbdbba006.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_hgMsgHandCmd {
    /// Declared motor_cmd; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/HandCmd.motor_cmd: unitree_hg/msg/MotorCmd; 0..32 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgHandCmd; share/platform/ros/rs/API-CONTRACT.md
    pub motor_cmd: Vec<Ros2Unitree_hgMsgMotorCmd>,
    /// Declared reserve; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/HandCmd.reserve: uint32; exactly 4 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgHandCmd; share/platform/ros/rs/API-CONTRACT.md
    pub reserve: [u32; 4],
}
/// @brief Construct the declared defaults of unitree_hg/msg/HandCmd.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_hgMsgHandCmd; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_hgMsgHandCmd {
    fn default() -> Self {
        Self {
            motor_cmd: Default::default(),
            reserve: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros2Unitree_hgMsgHandCmd {
    /// @brief Maximum canonical extent of unitree_hg/msg/HandCmd in bytes.
    /// @details The inclusive bound is 820 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_hgMsgHandCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 820;
    /// @brief Cartesian field-bound maximum of unitree_hg/msg/HandCmd in bytes.
    /// @details Exact independently combined field-bound extent 820; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_hgMsgHandCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 820;
    /// @brief Aggregate profile byte budget of unitree_hg/msg/HandCmd.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_hgMsgHandCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_hg/msg/HandCmd.
    /// @details Exact identity UWVMROS1_e5215e7e27590939f11d4e93d096535104bb275681fa89a88954227cbdbba006 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_hgMsgHandCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e5215e7e27590939f11d4e93d096535104bb275681fa89a88954227cbdbba006";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_hg/msg/HandCmd value.
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
    /// @see Ros2Unitree_hgMsgHandCmd; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.motor_cmd.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.motor_cmd {
            n = add_size(n, element.wire_size()?)?;
        }
        for element in &self.reserve {
            n = add_size(n, 4)?;
        }
        if n > 820 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_hg/msg/HandCmd value.
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
    /// @see Ros2Unitree_hgMsgHandCmd; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.motor_cmd.len() as u32).to_le_bytes());
        for element in &self.motor_cmd {
            element.write_fields(out, at);
        }
        for element in &self.reserve {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
                return Err(invalid());
            }
            value.motor_cmd = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Unitree_hgMsgMotorCmd::read_fields(bytes, at)?;
                value.motor_cmd.push(decoded);
            }
        }
        {
            let count = 4usize;
            if count > 4 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                value.reserve[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_hgMsgHandCmd {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_hg/msg/HandCmd value.
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
    /// @see Ros2Unitree_hgMsgHandCmd; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_hg/msg/HandCmd value.
    /// @details Require the complete 20..820-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_hgMsgHandCmd; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 820 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 20 {
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
/// Complete bounded value for ROS2 unitree_hg/msg/MotorState.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_hg/msg/MotorState value.
/// @details All 10 declared fields are retained in source order. The canonical representation occupies 53..53
/// bytes and is identified by UWVMROS1_65497908fe0136a5c90f11b4a2cda2110507bcc8805f9347ac82be3b32fe5934.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_hgMsgMotorState {
    /// Declared mode; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/MotorState.mode: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub mode: u8,
    /// Declared q; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/MotorState.q: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub q: f32,
    /// Declared dq; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/MotorState.dq: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub dq: f32,
    /// Declared ddq; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/MotorState.ddq: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub ddq: f32,
    /// Declared tau_est; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/MotorState.tau_est: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub tau_est: f32,
    /// Declared temperature; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/MotorState.temperature: int16; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub temperature: [i16; 2],
    /// Declared vol; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/MotorState.vol: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub vol: f32,
    /// Declared sensor; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/MotorState.sensor: uint32; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub sensor: [u32; 2],
    /// Declared motorstate; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/MotorState.motorstate: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub motorstate: u32,
    /// Declared reserve; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/MotorState.reserve: uint32; exactly 4 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub reserve: [u32; 4],
}
/// @brief Construct the declared defaults of unitree_hg/msg/MotorState.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_hgMsgMotorState {
    fn default() -> Self {
        Self {
            mode: Default::default(),
            q: Default::default(),
            dq: Default::default(),
            ddq: Default::default(),
            tau_est: Default::default(),
            temperature: core::array::from_fn(|_| Default::default()),
            vol: Default::default(),
            sensor: core::array::from_fn(|_| Default::default()),
            motorstate: Default::default(),
            reserve: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros2Unitree_hgMsgMotorState {
    /// @brief Maximum canonical extent of unitree_hg/msg/MotorState in bytes.
    /// @details The inclusive bound is 53 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 53;
    /// @brief Cartesian field-bound maximum of unitree_hg/msg/MotorState in bytes.
    /// @details Exact independently combined field-bound extent 53; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 53;
    /// @brief Aggregate profile byte budget of unitree_hg/msg/MotorState.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_hg/msg/MotorState.
    /// @details Exact identity UWVMROS1_65497908fe0136a5c90f11b4a2cda2110507bcc8805f9347ac82be3b32fe5934 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_65497908fe0136a5c90f11b4a2cda2110507bcc8805f9347ac82be3b32fe5934";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_hg/msg/MotorState value.
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
    /// @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if !self.q.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.dq.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.ddq.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.tau_est.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.temperature {
            n = add_size(n, 2)?;
        }
        if !self.vol.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.sensor {
            n = add_size(n, 4)?;
        }
        n = add_size(n, 4)?;
        for element in &self.reserve {
            n = add_size(n, 4)?;
        }
        if n > 53 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_hg/msg/MotorState value.
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
    /// @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.mode.to_le_bytes());
        put(out, at, &self.q.to_le_bytes());
        put(out, at, &self.dq.to_le_bytes());
        put(out, at, &self.ddq.to_le_bytes());
        put(out, at, &self.tau_est.to_le_bytes());
        for element in &self.temperature {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.vol.to_le_bytes());
        for element in &self.sensor {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.motorstate.to_le_bytes());
        for element in &self.reserve {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.mode = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.q = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.dq = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.ddq = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.tau_est = decoded;
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
                value.temperature[i] = decoded;
            }
        }
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.vol = decoded;
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                value.sensor[i] = decoded;
            }
        }
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.motorstate = decoded;
        {
            let count = 4usize;
            if count > 4 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                value.reserve[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_hgMsgMotorState {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_hg/msg/MotorState value.
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
    /// @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_hg/msg/MotorState value.
    /// @details Require the complete 53..53-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 53 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 53 {
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
/// Complete bounded value for ROS2 unitree_hg/msg/PressSensorState.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_hg/msg/PressSensorState value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 104..104
/// bytes and is identified by UWVMROS1_4abc296d4acd21132c0c1d185e3fafd9f0db8836a5c16ed040ebcc6127380fe5.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_hgMsgPressSensorState {
    /// Declared pressure; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/PressSensorState.pressure: float32; exactly 12 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgPressSensorState; share/platform/ros/rs/API-CONTRACT.md
    pub pressure: [f32; 12],
    /// Declared temperature; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/PressSensorState.temperature: float32; exactly 12 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgPressSensorState; share/platform/ros/rs/API-CONTRACT.md
    pub temperature: [f32; 12],
    /// Declared lost; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/PressSensorState.lost: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgPressSensorState; share/platform/ros/rs/API-CONTRACT.md
    pub lost: u32,
    /// Declared reserve; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/PressSensorState.reserve: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgPressSensorState; share/platform/ros/rs/API-CONTRACT.md
    pub reserve: u32,
}
/// @brief Construct the declared defaults of unitree_hg/msg/PressSensorState.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_hgMsgPressSensorState; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_hgMsgPressSensorState {
    fn default() -> Self {
        Self {
            pressure: core::array::from_fn(|_| Default::default()),
            temperature: core::array::from_fn(|_| Default::default()),
            lost: Default::default(),
            reserve: Default::default(),
        }
    }
}
impl Ros2Unitree_hgMsgPressSensorState {
    /// @brief Maximum canonical extent of unitree_hg/msg/PressSensorState in bytes.
    /// @details The inclusive bound is 104 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_hgMsgPressSensorState; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 104;
    /// @brief Cartesian field-bound maximum of unitree_hg/msg/PressSensorState in bytes.
    /// @details Exact independently combined field-bound extent 104; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_hgMsgPressSensorState; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 104;
    /// @brief Aggregate profile byte budget of unitree_hg/msg/PressSensorState.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_hgMsgPressSensorState; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_hg/msg/PressSensorState.
    /// @details Exact identity UWVMROS1_4abc296d4acd21132c0c1d185e3fafd9f0db8836a5c16ed040ebcc6127380fe5 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_hgMsgPressSensorState; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_4abc296d4acd21132c0c1d185e3fafd9f0db8836a5c16ed040ebcc6127380fe5";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_hg/msg/PressSensorState value.
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
    /// @see Ros2Unitree_hgMsgPressSensorState; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.pressure {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        for element in &self.temperature {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        if n > 104 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_hg/msg/PressSensorState value.
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
    /// @see Ros2Unitree_hgMsgPressSensorState; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.pressure {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.temperature {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.lost.to_le_bytes());
        put(out, at, &self.reserve.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 12usize;
            if count > 12 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.pressure[i] = decoded;
            }
        }
        {
            let count = 12usize;
            if count > 12 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.temperature[i] = decoded;
            }
        }
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.lost = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.reserve = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_hgMsgPressSensorState {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_hg/msg/PressSensorState value.
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
    /// @see Ros2Unitree_hgMsgPressSensorState; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_hg/msg/PressSensorState value.
    /// @details Require the complete 104..104-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_hgMsgPressSensorState; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 104 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 104 {
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
/// Complete bounded value for ROS2 unitree_hg/msg/IMUState.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_hg/msg/IMUState value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 54..54
/// bytes and is identified by UWVMROS1_d83832e8c27273785113c8388f7f22ea1251d6198817255f13a7e542afb26420.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_hgMsgIMUState {
    /// Declared quaternion; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/IMUState.quaternion: float32; exactly 4 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
    pub quaternion: [f32; 4],
    /// Declared gyroscope; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/IMUState.gyroscope: float32; exactly 3 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
    pub gyroscope: [f32; 3],
    /// Declared accelerometer; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/IMUState.accelerometer: float32; exactly 3 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
    pub accelerometer: [f32; 3],
    /// Declared rpy; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/IMUState.rpy: float32; exactly 3 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
    pub rpy: [f32; 3],
    /// Declared temperature; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/IMUState.temperature: int16.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
    pub temperature: i16,
}
/// @brief Construct the declared defaults of unitree_hg/msg/IMUState.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_hgMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_hgMsgIMUState {
    fn default() -> Self {
        Self {
            quaternion: core::array::from_fn(|_| Default::default()),
            gyroscope: core::array::from_fn(|_| Default::default()),
            accelerometer: core::array::from_fn(|_| Default::default()),
            rpy: core::array::from_fn(|_| Default::default()),
            temperature: Default::default(),
        }
    }
}
impl Ros2Unitree_hgMsgIMUState {
    /// @brief Maximum canonical extent of unitree_hg/msg/IMUState in bytes.
    /// @details The inclusive bound is 54 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_hgMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 54;
    /// @brief Cartesian field-bound maximum of unitree_hg/msg/IMUState in bytes.
    /// @details Exact independently combined field-bound extent 54; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_hgMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 54;
    /// @brief Aggregate profile byte budget of unitree_hg/msg/IMUState.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_hgMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_hg/msg/IMUState.
    /// @details Exact identity UWVMROS1_d83832e8c27273785113c8388f7f22ea1251d6198817255f13a7e542afb26420 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_hgMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d83832e8c27273785113c8388f7f22ea1251d6198817255f13a7e542afb26420";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_hg/msg/IMUState value.
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
    /// @see Ros2Unitree_hgMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.quaternion {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        for element in &self.gyroscope {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        for element in &self.accelerometer {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        for element in &self.rpy {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        n = add_size(n, 2)?;
        if n > 54 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_hg/msg/IMUState value.
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
    /// @see Ros2Unitree_hgMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.quaternion {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.gyroscope {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.accelerometer {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.rpy {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.temperature.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 4usize;
            if count > 4 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.quaternion[i] = decoded;
            }
        }
        {
            let count = 3usize;
            if count > 3 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.gyroscope[i] = decoded;
            }
        }
        {
            let count = 3usize;
            if count > 3 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.accelerometer[i] = decoded;
            }
        }
        {
            let count = 3usize;
            if count > 3 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.rpy[i] = decoded;
            }
        }
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.temperature = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_hgMsgIMUState {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_hg/msg/IMUState value.
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
    /// @see Ros2Unitree_hgMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_hg/msg/IMUState value.
    /// @details Require the complete 54..54-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_hgMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 54 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 54 {
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
/// Complete bounded value for ROS2 unitree_hg/msg/HandState.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_hg/msg/HandState value.
/// @details All 9 declared fields are retained in source order. The canonical representation occupies 94..5118
/// bytes and is identified by UWVMROS1_ea3f597b4453ca352d3a973920d0b3b29639e555cec273f6c63fc5fe95c905f6.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_hgMsgHandState {
    /// Declared motor_state; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/HandState.motor_state: unitree_hg/msg/MotorState; 0..32 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgHandState; share/platform/ros/rs/API-CONTRACT.md
    pub motor_state: Vec<Ros2Unitree_hgMsgMotorState>,
    /// Declared press_sensor_state; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/HandState.press_sensor_state: unitree_hg/msg/PressSensorState; 0..32 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgHandState; share/platform/ros/rs/API-CONTRACT.md
    pub press_sensor_state: Vec<Ros2Unitree_hgMsgPressSensorState>,
    /// Declared imu_state; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/HandState.imu_state: unitree_hg/msg/IMUState.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgHandState; share/platform/ros/rs/API-CONTRACT.md
    pub imu_state: Ros2Unitree_hgMsgIMUState,
    /// Declared power_v; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/HandState.power_v: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgHandState; share/platform/ros/rs/API-CONTRACT.md
    pub power_v: f32,
    /// Declared power_a; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/HandState.power_a: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgHandState; share/platform/ros/rs/API-CONTRACT.md
    pub power_a: f32,
    /// Declared system_v; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/HandState.system_v: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgHandState; share/platform/ros/rs/API-CONTRACT.md
    pub system_v: f32,
    /// Declared device_v; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/HandState.device_v: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgHandState; share/platform/ros/rs/API-CONTRACT.md
    pub device_v: f32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/HandState.error: uint32; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgHandState; share/platform/ros/rs/API-CONTRACT.md
    pub error: [u32; 2],
    /// Declared reserve; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/HandState.reserve: uint32; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgHandState; share/platform/ros/rs/API-CONTRACT.md
    pub reserve: [u32; 2],
}
/// @brief Construct the declared defaults of unitree_hg/msg/HandState.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_hgMsgHandState; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_hgMsgHandState {
    fn default() -> Self {
        Self {
            motor_state: Default::default(),
            press_sensor_state: Default::default(),
            imu_state: Default::default(),
            power_v: Default::default(),
            power_a: Default::default(),
            system_v: Default::default(),
            device_v: Default::default(),
            error: core::array::from_fn(|_| Default::default()),
            reserve: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros2Unitree_hgMsgHandState {
    /// @brief Maximum canonical extent of unitree_hg/msg/HandState in bytes.
    /// @details The inclusive bound is 5118 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_hgMsgHandState; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 5118;
    /// @brief Cartesian field-bound maximum of unitree_hg/msg/HandState in bytes.
    /// @details Exact independently combined field-bound extent 5118; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_hgMsgHandState; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 5118;
    /// @brief Aggregate profile byte budget of unitree_hg/msg/HandState.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_hgMsgHandState; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_hg/msg/HandState.
    /// @details Exact identity UWVMROS1_ea3f597b4453ca352d3a973920d0b3b29639e555cec273f6c63fc5fe95c905f6 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_hgMsgHandState; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ea3f597b4453ca352d3a973920d0b3b29639e555cec273f6c63fc5fe95c905f6";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_hg/msg/HandState value.
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
    /// @see Ros2Unitree_hgMsgHandState; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.motor_state.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.motor_state {
            n = add_size(n, element.wire_size()?)?;
        }
        if self.press_sensor_state.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.press_sensor_state {
            n = add_size(n, element.wire_size()?)?;
        }
        n = add_size(n, self.imu_state.wire_size()?)?;
        if !self.power_v.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.power_a.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.system_v.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.device_v.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.error {
            n = add_size(n, 4)?;
        }
        for element in &self.reserve {
            n = add_size(n, 4)?;
        }
        if n > 5118 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_hg/msg/HandState value.
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
    /// @see Ros2Unitree_hgMsgHandState; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.motor_state.len() as u32).to_le_bytes());
        for element in &self.motor_state {
            element.write_fields(out, at);
        }
        put(
            out,
            at,
            &(self.press_sensor_state.len() as u32).to_le_bytes(),
        );
        for element in &self.press_sensor_state {
            element.write_fields(out, at);
        }
        self.imu_state.write_fields(out, at);
        put(out, at, &self.power_v.to_le_bytes());
        put(out, at, &self.power_a.to_le_bytes());
        put(out, at, &self.system_v.to_le_bytes());
        put(out, at, &self.device_v.to_le_bytes());
        for element in &self.error {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.reserve {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
                return Err(invalid());
            }
            value.motor_state = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Unitree_hgMsgMotorState::read_fields(bytes, at)?;
                value.motor_state.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
                return Err(invalid());
            }
            value.press_sensor_state = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Unitree_hgMsgPressSensorState::read_fields(bytes, at)?;
                value.press_sensor_state.push(decoded);
            }
        }
        let decoded = Ros2Unitree_hgMsgIMUState::read_fields(bytes, at)?;
        value.imu_state = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.power_v = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.power_a = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.system_v = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.device_v = decoded;
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                value.error[i] = decoded;
            }
        }
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                value.reserve[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_hgMsgHandState {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_hg/msg/HandState value.
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
    /// @see Ros2Unitree_hgMsgHandState; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_hg/msg/HandState value.
    /// @details Require the complete 94..5118-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_hgMsgHandState; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 5118 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 94 {
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
/// Complete bounded value for ROS2 unitree_hg/msg/LowCmd.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_hg/msg/LowCmd value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 897..897
/// bytes and is identified by UWVMROS1_8303ac6e2e3273251662d31daf966a11ced5b5ac10b93aa6253eebc56f4ec461.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_hgMsgLowCmd {
    /// Declared mode_pr; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/LowCmd.mode_pr: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub mode_pr: u8,
    /// Declared mode_machine; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/LowCmd.mode_machine: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub mode_machine: u8,
    /// Declared motor_cmd; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/LowCmd.motor_cmd: unitree_hg/msg/MotorCmd; exactly 35 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub motor_cmd: [Ros2Unitree_hgMsgMotorCmd; 35],
    /// Declared reserve; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/LowCmd.reserve: uint32; exactly 4 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub reserve: [u32; 4],
    /// Declared crc; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/LowCmd.crc: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub crc: u32,
}
/// @brief Construct the declared defaults of unitree_hg/msg/LowCmd.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_hgMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_hgMsgLowCmd {
    fn default() -> Self {
        Self {
            mode_pr: Default::default(),
            mode_machine: Default::default(),
            motor_cmd: core::array::from_fn(|_| Default::default()),
            reserve: core::array::from_fn(|_| Default::default()),
            crc: Default::default(),
        }
    }
}
impl Ros2Unitree_hgMsgLowCmd {
    /// @brief Maximum canonical extent of unitree_hg/msg/LowCmd in bytes.
    /// @details The inclusive bound is 897 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_hgMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 897;
    /// @brief Cartesian field-bound maximum of unitree_hg/msg/LowCmd in bytes.
    /// @details Exact independently combined field-bound extent 897; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_hgMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 897;
    /// @brief Aggregate profile byte budget of unitree_hg/msg/LowCmd.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_hgMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_hg/msg/LowCmd.
    /// @details Exact identity UWVMROS1_8303ac6e2e3273251662d31daf966a11ced5b5ac10b93aa6253eebc56f4ec461 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_hgMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_8303ac6e2e3273251662d31daf966a11ced5b5ac10b93aa6253eebc56f4ec461";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_hg/msg/LowCmd value.
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
    /// @see Ros2Unitree_hgMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        for element in &self.motor_cmd {
            n = add_size(n, element.wire_size()?)?;
        }
        for element in &self.reserve {
            n = add_size(n, 4)?;
        }
        n = add_size(n, 4)?;
        if n > 897 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_hg/msg/LowCmd value.
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
    /// @see Ros2Unitree_hgMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.mode_pr.to_le_bytes());
        put(out, at, &self.mode_machine.to_le_bytes());
        for element in &self.motor_cmd {
            element.write_fields(out, at);
        }
        for element in &self.reserve {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.crc.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.mode_pr = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.mode_machine = decoded;
        {
            let count = 35usize;
            if count > 35 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded = Ros2Unitree_hgMsgMotorCmd::read_fields(bytes, at)?;
                value.motor_cmd[i] = decoded;
            }
        }
        {
            let count = 4usize;
            if count > 4 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                value.reserve[i] = decoded;
            }
        }
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.crc = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_hgMsgLowCmd {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_hg/msg/LowCmd value.
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
    /// @see Ros2Unitree_hgMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_hg/msg/LowCmd value.
    /// @details Require the complete 897..897-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_hgMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 897 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 897 {
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
/// Complete bounded value for ROS2 unitree_hg/msg/LowState.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_hg/msg/LowState value.
/// @details All 9 declared fields are retained in source order. The canonical representation occupies 1983..1983
/// bytes and is identified by UWVMROS1_7eed2692672f536a476643f1d3a07affc8e5b3272663e3d282c199fff1c2fa1d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_hgMsgLowState {
    /// Declared version; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/LowState.version: uint32; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub version: [u32; 2],
    /// Declared mode_pr; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/LowState.mode_pr: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub mode_pr: u8,
    /// Declared mode_machine; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/LowState.mode_machine: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub mode_machine: u8,
    /// Declared tick; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/LowState.tick: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub tick: u32,
    /// Declared imu_state; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/LowState.imu_state: unitree_hg/msg/IMUState.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub imu_state: Ros2Unitree_hgMsgIMUState,
    /// Declared motor_state; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/LowState.motor_state: unitree_hg/msg/MotorState; exactly 35 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub motor_state: [Ros2Unitree_hgMsgMotorState; 35],
    /// Declared wireless_remote; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/LowState.wireless_remote: uint8; exactly 40 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub wireless_remote: [u8; 40],
    /// Declared reserve; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/LowState.reserve: uint32; exactly 4 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub reserve: [u32; 4],
    /// Declared crc; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/LowState.crc: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub crc: u32,
}
/// @brief Construct the declared defaults of unitree_hg/msg/LowState.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_hgMsgLowState; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_hgMsgLowState {
    fn default() -> Self {
        Self {
            version: core::array::from_fn(|_| Default::default()),
            mode_pr: Default::default(),
            mode_machine: Default::default(),
            tick: Default::default(),
            imu_state: Default::default(),
            motor_state: core::array::from_fn(|_| Default::default()),
            wireless_remote: core::array::from_fn(|_| Default::default()),
            reserve: core::array::from_fn(|_| Default::default()),
            crc: Default::default(),
        }
    }
}
impl Ros2Unitree_hgMsgLowState {
    /// @brief Maximum canonical extent of unitree_hg/msg/LowState in bytes.
    /// @details The inclusive bound is 1983 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_hgMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 1983;
    /// @brief Cartesian field-bound maximum of unitree_hg/msg/LowState in bytes.
    /// @details Exact independently combined field-bound extent 1983; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_hgMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 1983;
    /// @brief Aggregate profile byte budget of unitree_hg/msg/LowState.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_hgMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_hg/msg/LowState.
    /// @details Exact identity UWVMROS1_7eed2692672f536a476643f1d3a07affc8e5b3272663e3d282c199fff1c2fa1d binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_hgMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_7eed2692672f536a476643f1d3a07affc8e5b3272663e3d282c199fff1c2fa1d";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_hg/msg/LowState value.
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
    /// @see Ros2Unitree_hgMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.version {
            n = add_size(n, 4)?;
        }
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 4)?;
        n = add_size(n, self.imu_state.wire_size()?)?;
        for element in &self.motor_state {
            n = add_size(n, element.wire_size()?)?;
        }
        for element in &self.wireless_remote {
            n = add_size(n, 1)?;
        }
        for element in &self.reserve {
            n = add_size(n, 4)?;
        }
        n = add_size(n, 4)?;
        if n > 1983 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_hg/msg/LowState value.
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
    /// @see Ros2Unitree_hgMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.version {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.mode_pr.to_le_bytes());
        put(out, at, &self.mode_machine.to_le_bytes());
        put(out, at, &self.tick.to_le_bytes());
        self.imu_state.write_fields(out, at);
        for element in &self.motor_state {
            element.write_fields(out, at);
        }
        for element in &self.wireless_remote {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.reserve {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.crc.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                value.version[i] = decoded;
            }
        }
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.mode_pr = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.mode_machine = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.tick = decoded;
        let decoded = Ros2Unitree_hgMsgIMUState::read_fields(bytes, at)?;
        value.imu_state = decoded;
        {
            let count = 35usize;
            if count > 35 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded = Ros2Unitree_hgMsgMotorState::read_fields(bytes, at)?;
                value.motor_state[i] = decoded;
            }
        }
        {
            let count = 40usize;
            if count > 40 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.wireless_remote[i] = decoded;
            }
        }
        {
            let count = 4usize;
            if count > 4 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                value.reserve[i] = decoded;
            }
        }
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.crc = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_hgMsgLowState {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_hg/msg/LowState value.
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
    /// @see Ros2Unitree_hgMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_hg/msg/LowState value.
    /// @details Require the complete 1983..1983-byte canonical representation. Reject truncation, invalid fields
    /// and trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros2Unitree_hgMsgLowState; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1983 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 1983 {
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
/// Complete bounded value for ROS2 unitree_hg/msg/MainBoardState.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 2 unitree_hg/msg/MainBoardState value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 72..72
/// bytes and is identified by UWVMROS1_2a27a979aadc7bef33a757e169680faa632936c2634ee787f0c9f25cb08535a6.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros2Unitree_hgMsgMainBoardState {
    /// Declared fan_state; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/MainBoardState.fan_state: uint16; exactly 6 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgMainBoardState; share/platform/ros/rs/API-CONTRACT.md
    pub fan_state: [u16; 6],
    /// Declared temperature; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/MainBoardState.temperature: int16; exactly 6 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgMainBoardState; share/platform/ros/rs/API-CONTRACT.md
    pub temperature: [i16; 6],
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/MainBoardState.value: float32; exactly 6 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgMainBoardState; share/platform/ros/rs/API-CONTRACT.md
    pub value: [f32; 6],
    /// Declared state; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_hg/msg/MainBoardState.state: uint32; exactly 6 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros2Unitree_hgMsgMainBoardState; share/platform/ros/rs/API-CONTRACT.md
    pub state: [u32; 6],
}
/// @brief Construct the declared defaults of unitree_hg/msg/MainBoardState.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros2Unitree_hgMsgMainBoardState; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros2Unitree_hgMsgMainBoardState {
    fn default() -> Self {
        Self {
            fan_state: core::array::from_fn(|_| Default::default()),
            temperature: core::array::from_fn(|_| Default::default()),
            value: core::array::from_fn(|_| Default::default()),
            state: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros2Unitree_hgMsgMainBoardState {
    /// @brief Maximum canonical extent of unitree_hg/msg/MainBoardState in bytes.
    /// @details The inclusive bound is 72 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros2Unitree_hgMsgMainBoardState; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 72;
    /// @brief Cartesian field-bound maximum of unitree_hg/msg/MainBoardState in bytes.
    /// @details Exact independently combined field-bound extent 72; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros2Unitree_hgMsgMainBoardState; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 72;
    /// @brief Aggregate profile byte budget of unitree_hg/msg/MainBoardState.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros2Unitree_hgMsgMainBoardState; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_hg/msg/MainBoardState.
    /// @details Exact identity UWVMROS1_2a27a979aadc7bef33a757e169680faa632936c2634ee787f0c9f25cb08535a6 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros2Unitree_hgMsgMainBoardState; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2a27a979aadc7bef33a757e169680faa632936c2634ee787f0c9f25cb08535a6";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_hg/msg/MainBoardState value.
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
    /// @see Ros2Unitree_hgMsgMainBoardState; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.fan_state {
            n = add_size(n, 2)?;
        }
        for element in &self.temperature {
            n = add_size(n, 2)?;
        }
        for element in &self.value {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        for element in &self.state {
            n = add_size(n, 4)?;
        }
        if n > 72 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_hg/msg/MainBoardState value.
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
    /// @see Ros2Unitree_hgMsgMainBoardState; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.fan_state {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.temperature {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.value {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.state {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
                value.fan_state[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
                value.temperature[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.value[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                value.state[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Unitree_hgMsgMainBoardState {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_hg/msg/MainBoardState value.
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
    /// @see Ros2Unitree_hgMsgMainBoardState; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_hg/msg/MainBoardState value.
    /// @details Require the complete 72..72-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros2Unitree_hgMsgMainBoardState; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 72 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 72 {
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
