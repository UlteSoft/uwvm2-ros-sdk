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
/// Complete bounded value for ROS1 unitree_legged_msgs/BmsCmd.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 unitree_legged_msgs/BmsCmd value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
/// and is identified by UWVMROS1_75732753b156fff8db3ba7e39541444bed2b71e139389a9b5bfbc49a4fa14928.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Unitree_legged_msgsBmsCmd {
    /// Declared off; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/BmsCmd.off: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsBmsCmd; share/platform/ros/rs/API-CONTRACT.md
    pub off: u8,
    /// Declared reserve; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/BmsCmd.reserve: uint8; exactly 3 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsBmsCmd; share/platform/ros/rs/API-CONTRACT.md
    pub reserve: [u8; 3],
}
/// @brief Construct the declared defaults of unitree_legged_msgs/BmsCmd.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Unitree_legged_msgsBmsCmd; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Unitree_legged_msgsBmsCmd {
    fn default() -> Self {
        Self {
            off: Default::default(),
            reserve: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros1Unitree_legged_msgsBmsCmd {
    /// @brief Maximum canonical extent of unitree_legged_msgs/BmsCmd in bytes.
    /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Unitree_legged_msgsBmsCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 4;
    /// @brief Cartesian field-bound maximum of unitree_legged_msgs/BmsCmd in bytes.
    /// @details Exact independently combined field-bound extent 4; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Unitree_legged_msgsBmsCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 4;
    /// @brief Aggregate profile byte budget of unitree_legged_msgs/BmsCmd.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Unitree_legged_msgsBmsCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_legged_msgs/BmsCmd.
    /// @details Exact identity UWVMROS1_75732753b156fff8db3ba7e39541444bed2b71e139389a9b5bfbc49a4fa14928 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Unitree_legged_msgsBmsCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_75732753b156fff8db3ba7e39541444bed2b71e139389a9b5bfbc49a4fa14928";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_legged_msgs/BmsCmd value.
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
    /// @see Ros1Unitree_legged_msgsBmsCmd; share/platform/ros/rs/API-CONTRACT.md
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
    /// @brief Encode one complete unitree_legged_msgs/BmsCmd value.
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
    /// @see Ros1Unitree_legged_msgsBmsCmd; share/platform/ros/rs/API-CONTRACT.md
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
impl Canonical for Ros1Unitree_legged_msgsBmsCmd {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_legged_msgs/BmsCmd value.
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
    /// @see Ros1Unitree_legged_msgsBmsCmd; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_legged_msgs/BmsCmd value.
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
    /// @see Ros1Unitree_legged_msgsBmsCmd; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 unitree_legged_msgs/BmsState.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 unitree_legged_msgs/BmsState value.
/// @details All 9 declared fields are retained in source order. The canonical representation occupies 34..34
/// bytes and is identified by UWVMROS1_ef0f93501f54d0ff760039d86bd1ba1739cb0c888b3a873611679484ccec094a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Unitree_legged_msgsBmsState {
    /// Declared version_h; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/BmsState.version_h: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub version_h: u8,
    /// Declared version_l; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/BmsState.version_l: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub version_l: u8,
    /// Declared bms_status; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/BmsState.bms_status: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub bms_status: u8,
    /// Declared SOC; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/BmsState.SOC: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub SOC: u8,
    /// Declared current; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/BmsState.current: int32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub current: i32,
    /// Declared cycle; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/BmsState.cycle: uint16.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub cycle: u16,
    /// Declared BQ_NTC; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/BmsState.BQ_NTC: int8; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub BQ_NTC: [i8; 2],
    /// Declared MCU_NTC; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/BmsState.MCU_NTC: int8; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub MCU_NTC: [i8; 2],
    /// Declared cell_vol; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/BmsState.cell_vol: uint16; exactly 10 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub cell_vol: [u16; 10],
}
/// @brief Construct the declared defaults of unitree_legged_msgs/BmsState.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Unitree_legged_msgsBmsState; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Unitree_legged_msgsBmsState {
    fn default() -> Self {
        Self {
            version_h: Default::default(),
            version_l: Default::default(),
            bms_status: Default::default(),
            SOC: Default::default(),
            current: Default::default(),
            cycle: Default::default(),
            BQ_NTC: core::array::from_fn(|_| Default::default()),
            MCU_NTC: core::array::from_fn(|_| Default::default()),
            cell_vol: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros1Unitree_legged_msgsBmsState {
    /// @brief Maximum canonical extent of unitree_legged_msgs/BmsState in bytes.
    /// @details The inclusive bound is 34 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Unitree_legged_msgsBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 34;
    /// @brief Cartesian field-bound maximum of unitree_legged_msgs/BmsState in bytes.
    /// @details Exact independently combined field-bound extent 34; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Unitree_legged_msgsBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 34;
    /// @brief Aggregate profile byte budget of unitree_legged_msgs/BmsState.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Unitree_legged_msgsBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_legged_msgs/BmsState.
    /// @details Exact identity UWVMROS1_ef0f93501f54d0ff760039d86bd1ba1739cb0c888b3a873611679484ccec094a binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Unitree_legged_msgsBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ef0f93501f54d0ff760039d86bd1ba1739cb0c888b3a873611679484ccec094a";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_legged_msgs/BmsState value.
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
    /// @see Ros1Unitree_legged_msgsBmsState; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 4)?;
        n = add_size(n, 2)?;
        for element in &self.BQ_NTC {
            n = add_size(n, 1)?;
        }
        for element in &self.MCU_NTC {
            n = add_size(n, 1)?;
        }
        for element in &self.cell_vol {
            n = add_size(n, 2)?;
        }
        if n > 34 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_legged_msgs/BmsState value.
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
    /// @see Ros1Unitree_legged_msgsBmsState; share/platform/ros/rs/API-CONTRACT.md
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
        put(out, at, &self.version_h.to_le_bytes());
        put(out, at, &self.version_l.to_le_bytes());
        put(out, at, &self.bms_status.to_le_bytes());
        put(out, at, &self.SOC.to_le_bytes());
        put(out, at, &self.current.to_le_bytes());
        put(out, at, &self.cycle.to_le_bytes());
        for element in &self.BQ_NTC {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.MCU_NTC {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.cell_vol {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.version_h = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.version_l = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.bms_status = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.SOC = decoded;
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
                value.BQ_NTC[i] = decoded;
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
                value.MCU_NTC[i] = decoded;
            }
        }
        {
            let count = 10usize;
            if count > 10 {
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
impl Canonical for Ros1Unitree_legged_msgsBmsState {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_legged_msgs/BmsState value.
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
    /// @see Ros1Unitree_legged_msgsBmsState; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_legged_msgs/BmsState value.
    /// @details Require the complete 34..34-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros1Unitree_legged_msgsBmsState; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 34 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 34 {
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
/// Complete bounded value for ROS1 unitree_legged_msgs/Cartesian.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 unitree_legged_msgs/Cartesian value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..12
/// bytes and is identified by UWVMROS1_43c7c62ba2a689751a0a15e326c5c9690a9b1f166b6726a0f803b98d2b3fa722.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Unitree_legged_msgsCartesian {
    /// Declared x; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/Cartesian.x: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsCartesian; share/platform/ros/rs/API-CONTRACT.md
    pub x: f32,
    /// Declared y; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/Cartesian.y: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsCartesian; share/platform/ros/rs/API-CONTRACT.md
    pub y: f32,
    /// Declared z; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/Cartesian.z: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsCartesian; share/platform/ros/rs/API-CONTRACT.md
    pub z: f32,
}
/// @brief Construct the declared defaults of unitree_legged_msgs/Cartesian.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Unitree_legged_msgsCartesian; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Unitree_legged_msgsCartesian {
    fn default() -> Self {
        Self {
            x: Default::default(),
            y: Default::default(),
            z: Default::default(),
        }
    }
}
impl Ros1Unitree_legged_msgsCartesian {
    /// @brief Maximum canonical extent of unitree_legged_msgs/Cartesian in bytes.
    /// @details The inclusive bound is 12 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Unitree_legged_msgsCartesian; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 12;
    /// @brief Cartesian field-bound maximum of unitree_legged_msgs/Cartesian in bytes.
    /// @details Exact independently combined field-bound extent 12; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Unitree_legged_msgsCartesian; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 12;
    /// @brief Aggregate profile byte budget of unitree_legged_msgs/Cartesian.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Unitree_legged_msgsCartesian; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_legged_msgs/Cartesian.
    /// @details Exact identity UWVMROS1_43c7c62ba2a689751a0a15e326c5c9690a9b1f166b6726a0f803b98d2b3fa722 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Unitree_legged_msgsCartesian; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_43c7c62ba2a689751a0a15e326c5c9690a9b1f166b6726a0f803b98d2b3fa722";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_legged_msgs/Cartesian value.
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
    /// @see Ros1Unitree_legged_msgsCartesian; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.x.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.y.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.z.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if n > 12 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_legged_msgs/Cartesian value.
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
    /// @see Ros1Unitree_legged_msgsCartesian; share/platform/ros/rs/API-CONTRACT.md
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
        put(out, at, &self.x.to_le_bytes());
        put(out, at, &self.y.to_le_bytes());
        put(out, at, &self.z.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
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
        value.z = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Unitree_legged_msgsCartesian {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_legged_msgs/Cartesian value.
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
    /// @see Ros1Unitree_legged_msgsCartesian; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_legged_msgs/Cartesian value.
    /// @details Require the complete 12..12-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros1Unitree_legged_msgsCartesian; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 12 {
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
/// Complete bounded value for ROS1 unitree_legged_msgs/LED.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 unitree_legged_msgs/LED value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 3..3 bytes
/// and is identified by UWVMROS1_b4efac59eaf4d3f09c069e4833dd82b5422980f6a9f27db84950243a47164ea5.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Unitree_legged_msgsLED {
    /// Declared r; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/LED.r: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsLED; share/platform/ros/rs/API-CONTRACT.md
    pub r: u8,
    /// Declared g; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/LED.g: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsLED; share/platform/ros/rs/API-CONTRACT.md
    pub g: u8,
    /// Declared b; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/LED.b: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsLED; share/platform/ros/rs/API-CONTRACT.md
    pub b: u8,
}
/// @brief Construct the declared defaults of unitree_legged_msgs/LED.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Unitree_legged_msgsLED; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Unitree_legged_msgsLED {
    fn default() -> Self {
        Self {
            r: Default::default(),
            g: Default::default(),
            b: Default::default(),
        }
    }
}
impl Ros1Unitree_legged_msgsLED {
    /// @brief Maximum canonical extent of unitree_legged_msgs/LED in bytes.
    /// @details The inclusive bound is 3 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Unitree_legged_msgsLED; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 3;
    /// @brief Cartesian field-bound maximum of unitree_legged_msgs/LED in bytes.
    /// @details Exact independently combined field-bound extent 3; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Unitree_legged_msgsLED; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 3;
    /// @brief Aggregate profile byte budget of unitree_legged_msgs/LED.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Unitree_legged_msgsLED; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_legged_msgs/LED.
    /// @details Exact identity UWVMROS1_b4efac59eaf4d3f09c069e4833dd82b5422980f6a9f27db84950243a47164ea5 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Unitree_legged_msgsLED; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b4efac59eaf4d3f09c069e4833dd82b5422980f6a9f27db84950243a47164ea5";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_legged_msgs/LED value.
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
    /// @see Ros1Unitree_legged_msgsLED; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 3 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_legged_msgs/LED value.
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
    /// @see Ros1Unitree_legged_msgsLED; share/platform/ros/rs/API-CONTRACT.md
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
        put(out, at, &self.r.to_le_bytes());
        put(out, at, &self.g.to_le_bytes());
        put(out, at, &self.b.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.g = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.b = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Unitree_legged_msgsLED {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_legged_msgs/LED value.
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
    /// @see Ros1Unitree_legged_msgsLED; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_legged_msgs/LED value.
    /// @details Require the complete 3..3-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros1Unitree_legged_msgsLED; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 3 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 3 {
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
/// Complete bounded value for ROS1 unitree_legged_msgs/HighCmd.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 unitree_legged_msgs/HighCmd value.
/// @details All 20 declared fields are retained in source order. The canonical representation occupies 129..129
/// bytes and is identified by UWVMROS1_ec6ec8937b2629a4441adc4a21eed83fca940b18d46b970d96e05c957ac90b38.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Unitree_legged_msgsHighCmd {
    /// Declared head; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighCmd.head: uint8; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
    pub head: [u8; 2],
    /// Declared levelFlag; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighCmd.levelFlag: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
    pub levelFlag: u8,
    /// Declared frameReserve; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighCmd.frameReserve: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
    pub frameReserve: u8,
    /// Declared SN; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighCmd.SN: uint32; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
    pub SN: [u32; 2],
    /// Declared version; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighCmd.version: uint32; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
    pub version: [u32; 2],
    /// Declared bandWidth; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighCmd.bandWidth: uint16.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
    pub bandWidth: u16,
    /// Declared mode; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighCmd.mode: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
    pub mode: u8,
    /// Declared gaitType; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighCmd.gaitType: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
    pub gaitType: u8,
    /// Declared speedLevel; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighCmd.speedLevel: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
    pub speedLevel: u8,
    /// Declared footRaiseHeight; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighCmd.footRaiseHeight: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
    pub footRaiseHeight: f32,
    /// Declared bodyHeight; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighCmd.bodyHeight: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
    pub bodyHeight: f32,
    /// Declared position; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighCmd.position: float32; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
    pub position: [f32; 2],
    /// Declared euler; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighCmd.euler: float32; exactly 3 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
    pub euler: [f32; 3],
    /// Declared velocity; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighCmd.velocity: float32; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
    pub velocity: [f32; 2],
    /// Declared yawSpeed; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighCmd.yawSpeed: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
    pub yawSpeed: f32,
    /// Declared bms; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighCmd.bms: unitree_legged_msgs/BmsCmd.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
    pub bms: Ros1Unitree_legged_msgsBmsCmd,
    /// Declared led; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighCmd.led: unitree_legged_msgs/LED; exactly 4 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
    pub led: [Ros1Unitree_legged_msgsLED; 4],
    /// Declared wirelessRemote; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighCmd.wirelessRemote: uint8; exactly 40 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
    pub wirelessRemote: [u8; 40],
    /// Declared reserve; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighCmd.reserve: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
    pub reserve: u32,
    /// Declared crc; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighCmd.crc: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
    pub crc: u32,
}
/// @brief Construct the declared defaults of unitree_legged_msgs/HighCmd.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Unitree_legged_msgsHighCmd {
    fn default() -> Self {
        Self {
            head: core::array::from_fn(|_| Default::default()),
            levelFlag: Default::default(),
            frameReserve: Default::default(),
            SN: core::array::from_fn(|_| Default::default()),
            version: core::array::from_fn(|_| Default::default()),
            bandWidth: Default::default(),
            mode: Default::default(),
            gaitType: Default::default(),
            speedLevel: Default::default(),
            footRaiseHeight: Default::default(),
            bodyHeight: Default::default(),
            position: core::array::from_fn(|_| Default::default()),
            euler: core::array::from_fn(|_| Default::default()),
            velocity: core::array::from_fn(|_| Default::default()),
            yawSpeed: Default::default(),
            bms: Default::default(),
            led: core::array::from_fn(|_| Default::default()),
            wirelessRemote: core::array::from_fn(|_| Default::default()),
            reserve: Default::default(),
            crc: Default::default(),
        }
    }
}
impl Ros1Unitree_legged_msgsHighCmd {
    /// @brief Maximum canonical extent of unitree_legged_msgs/HighCmd in bytes.
    /// @details The inclusive bound is 129 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 129;
    /// @brief Cartesian field-bound maximum of unitree_legged_msgs/HighCmd in bytes.
    /// @details Exact independently combined field-bound extent 129; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 129;
    /// @brief Aggregate profile byte budget of unitree_legged_msgs/HighCmd.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_legged_msgs/HighCmd.
    /// @details Exact identity UWVMROS1_ec6ec8937b2629a4441adc4a21eed83fca940b18d46b970d96e05c957ac90b38 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ec6ec8937b2629a4441adc4a21eed83fca940b18d46b970d96e05c957ac90b38";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_legged_msgs/HighCmd value.
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
    /// @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.head {
            n = add_size(n, 1)?;
        }
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        for element in &self.SN {
            n = add_size(n, 4)?;
        }
        for element in &self.version {
            n = add_size(n, 4)?;
        }
        n = add_size(n, 2)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if !self.footRaiseHeight.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.bodyHeight.is_finite() {
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
        if !self.yawSpeed.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.bms.wire_size()?)?;
        for element in &self.led {
            n = add_size(n, element.wire_size()?)?;
        }
        for element in &self.wirelessRemote {
            n = add_size(n, 1)?;
        }
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        if n > 129 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_legged_msgs/HighCmd value.
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
    /// @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
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
        put(out, at, &self.levelFlag.to_le_bytes());
        put(out, at, &self.frameReserve.to_le_bytes());
        for element in &self.SN {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.version {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.bandWidth.to_le_bytes());
        put(out, at, &self.mode.to_le_bytes());
        put(out, at, &self.gaitType.to_le_bytes());
        put(out, at, &self.speedLevel.to_le_bytes());
        put(out, at, &self.footRaiseHeight.to_le_bytes());
        put(out, at, &self.bodyHeight.to_le_bytes());
        for element in &self.position {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.euler {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.velocity {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.yawSpeed.to_le_bytes());
        self.bms.write_fields(out, at);
        for element in &self.led {
            element.write_fields(out, at);
        }
        for element in &self.wirelessRemote {
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
        value.levelFlag = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.frameReserve = decoded;
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                value.SN[i] = decoded;
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
        value.bandWidth = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.mode = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.gaitType = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.speedLevel = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.footRaiseHeight = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.bodyHeight = decoded;
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
        value.yawSpeed = decoded;
        let decoded = Ros1Unitree_legged_msgsBmsCmd::read_fields(bytes, at)?;
        value.bms = decoded;
        {
            let count = 4usize;
            if count > 4 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded = Ros1Unitree_legged_msgsLED::read_fields(bytes, at)?;
                value.led[i] = decoded;
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
                value.wirelessRemote[i] = decoded;
            }
        }
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.reserve = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.crc = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Unitree_legged_msgsHighCmd {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_legged_msgs/HighCmd value.
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
    /// @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_legged_msgs/HighCmd value.
    /// @details Require the complete 129..129-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 129 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 129 {
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
/// Complete bounded value for ROS1 unitree_legged_msgs/IMU.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 unitree_legged_msgs/IMU value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 53..53
/// bytes and is identified by UWVMROS1_29d9ec99e676fe8747665da588b78c8ab77a3197e281ba892ab389d2d81fa276.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Unitree_legged_msgsIMU {
    /// Declared quaternion; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/IMU.quaternion: float32; exactly 4 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsIMU; share/platform/ros/rs/API-CONTRACT.md
    pub quaternion: [f32; 4],
    /// Declared gyroscope; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/IMU.gyroscope: float32; exactly 3 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsIMU; share/platform/ros/rs/API-CONTRACT.md
    pub gyroscope: [f32; 3],
    /// Declared accelerometer; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/IMU.accelerometer: float32; exactly 3 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsIMU; share/platform/ros/rs/API-CONTRACT.md
    pub accelerometer: [f32; 3],
    /// Declared rpy; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/IMU.rpy: float32; exactly 3 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsIMU; share/platform/ros/rs/API-CONTRACT.md
    pub rpy: [f32; 3],
    /// Declared temperature; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/IMU.temperature: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsIMU; share/platform/ros/rs/API-CONTRACT.md
    pub temperature: i8,
}
/// @brief Construct the declared defaults of unitree_legged_msgs/IMU.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Unitree_legged_msgsIMU; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Unitree_legged_msgsIMU {
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
impl Ros1Unitree_legged_msgsIMU {
    /// @brief Maximum canonical extent of unitree_legged_msgs/IMU in bytes.
    /// @details The inclusive bound is 53 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Unitree_legged_msgsIMU; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 53;
    /// @brief Cartesian field-bound maximum of unitree_legged_msgs/IMU in bytes.
    /// @details Exact independently combined field-bound extent 53; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Unitree_legged_msgsIMU; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 53;
    /// @brief Aggregate profile byte budget of unitree_legged_msgs/IMU.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Unitree_legged_msgsIMU; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_legged_msgs/IMU.
    /// @details Exact identity UWVMROS1_29d9ec99e676fe8747665da588b78c8ab77a3197e281ba892ab389d2d81fa276 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Unitree_legged_msgsIMU; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_29d9ec99e676fe8747665da588b78c8ab77a3197e281ba892ab389d2d81fa276";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_legged_msgs/IMU value.
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
    /// @see Ros1Unitree_legged_msgsIMU; share/platform/ros/rs/API-CONTRACT.md
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
    /// @brief Encode one complete unitree_legged_msgs/IMU value.
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
    /// @see Ros1Unitree_legged_msgsIMU; share/platform/ros/rs/API-CONTRACT.md
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
impl Canonical for Ros1Unitree_legged_msgsIMU {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_legged_msgs/IMU value.
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
    /// @see Ros1Unitree_legged_msgsIMU; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_legged_msgs/IMU value.
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
    /// @see Ros1Unitree_legged_msgsIMU; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 unitree_legged_msgs/MotorState.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 unitree_legged_msgs/MotorState value.
/// @details All 10 declared fields are retained in source order. The canonical representation occupies 38..38
/// bytes and is identified by UWVMROS1_be540cb22db5f08b6b9a8082777c76244e80f3148e9cfd63f510e4b2acdc0abf.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Unitree_legged_msgsMotorState {
    /// Declared mode; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/MotorState.mode: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub mode: u8,
    /// Declared q; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/MotorState.q: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub q: f32,
    /// Declared dq; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/MotorState.dq: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub dq: f32,
    /// Declared ddq; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/MotorState.ddq: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub ddq: f32,
    /// Declared tauEst; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/MotorState.tauEst: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub tauEst: f32,
    /// Declared q_raw; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/MotorState.q_raw: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub q_raw: f32,
    /// Declared dq_raw; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/MotorState.dq_raw: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub dq_raw: f32,
    /// Declared ddq_raw; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/MotorState.ddq_raw: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub ddq_raw: f32,
    /// Declared temperature; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/MotorState.temperature: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub temperature: i8,
    /// Declared reserve; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/MotorState.reserve: uint32; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub reserve: [u32; 2],
}
/// @brief Construct the declared defaults of unitree_legged_msgs/MotorState.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Unitree_legged_msgsMotorState {
    fn default() -> Self {
        Self {
            mode: Default::default(),
            q: Default::default(),
            dq: Default::default(),
            ddq: Default::default(),
            tauEst: Default::default(),
            q_raw: Default::default(),
            dq_raw: Default::default(),
            ddq_raw: Default::default(),
            temperature: Default::default(),
            reserve: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros1Unitree_legged_msgsMotorState {
    /// @brief Maximum canonical extent of unitree_legged_msgs/MotorState in bytes.
    /// @details The inclusive bound is 38 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 38;
    /// @brief Cartesian field-bound maximum of unitree_legged_msgs/MotorState in bytes.
    /// @details Exact independently combined field-bound extent 38; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 38;
    /// @brief Aggregate profile byte budget of unitree_legged_msgs/MotorState.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_legged_msgs/MotorState.
    /// @details Exact identity UWVMROS1_be540cb22db5f08b6b9a8082777c76244e80f3148e9cfd63f510e4b2acdc0abf binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_be540cb22db5f08b6b9a8082777c76244e80f3148e9cfd63f510e4b2acdc0abf";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_legged_msgs/MotorState value.
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
    /// @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
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
        if !self.tauEst.is_finite() {
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
        for element in &self.reserve {
            n = add_size(n, 4)?;
        }
        if n > 38 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_legged_msgs/MotorState value.
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
    /// @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
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
        put(out, at, &self.tauEst.to_le_bytes());
        put(out, at, &self.q_raw.to_le_bytes());
        put(out, at, &self.dq_raw.to_le_bytes());
        put(out, at, &self.ddq_raw.to_le_bytes());
        put(out, at, &self.temperature.to_le_bytes());
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
        value.tauEst = decoded;
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
impl Canonical for Ros1Unitree_legged_msgsMotorState {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_legged_msgs/MotorState value.
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
    /// @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_legged_msgs/MotorState value.
    /// @details Require the complete 38..38-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 38 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 38 {
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
/// Complete bounded value for ROS1 unitree_legged_msgs/HighState.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 unitree_legged_msgs/HighState value.
/// @details All 25 declared fields are retained in source order. The canonical representation occupies
/// 1087..1087 bytes and is identified by
/// UWVMROS1_82ee0efaab21b5cb89e99f5c0f5daec583b48dd5feb2dd6a7e09ba9d9110b53d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Unitree_legged_msgsHighState {
    /// Declared head; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighState.head: uint8; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
    pub head: [u8; 2],
    /// Declared levelFlag; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighState.levelFlag: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
    pub levelFlag: u8,
    /// Declared frameReserve; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighState.frameReserve: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
    pub frameReserve: u8,
    /// Declared SN; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighState.SN: uint32; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
    pub SN: [u32; 2],
    /// Declared version; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighState.version: uint32; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
    pub version: [u32; 2],
    /// Declared bandWidth; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighState.bandWidth: uint16.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
    pub bandWidth: u16,
    /// Declared imu; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighState.imu: unitree_legged_msgs/IMU.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
    pub imu: Ros1Unitree_legged_msgsIMU,
    /// Declared motorState; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighState.motorState: unitree_legged_msgs/MotorState; exactly 20 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
    pub motorState: [Ros1Unitree_legged_msgsMotorState; 20],
    /// Declared bms; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighState.bms: unitree_legged_msgs/BmsState.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
    pub bms: Ros1Unitree_legged_msgsBmsState,
    /// Declared footForce; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighState.footForce: int16; exactly 4 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
    pub footForce: [i16; 4],
    /// Declared footForceEst; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighState.footForceEst: int16; exactly 4 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
    pub footForceEst: [i16; 4],
    /// Declared mode; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighState.mode: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
    pub mode: u8,
    /// Declared progress; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighState.progress: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
    pub progress: f32,
    /// Declared gaitType; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighState.gaitType: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
    pub gaitType: u8,
    /// Declared footRaiseHeight; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighState.footRaiseHeight: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
    pub footRaiseHeight: f32,
    /// Declared position; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighState.position: float32; exactly 3 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
    pub position: [f32; 3],
    /// Declared bodyHeight; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighState.bodyHeight: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
    pub bodyHeight: f32,
    /// Declared velocity; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighState.velocity: float32; exactly 3 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
    pub velocity: [f32; 3],
    /// Declared yawSpeed; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighState.yawSpeed: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
    pub yawSpeed: f32,
    /// Declared rangeObstacle; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighState.rangeObstacle: float32; exactly 4 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
    pub rangeObstacle: [f32; 4],
    /// Declared footPosition2Body; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighState.footPosition2Body: unitree_legged_msgs/Cartesian; exactly 4 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
    pub footPosition2Body: [Ros1Unitree_legged_msgsCartesian; 4],
    /// Declared footSpeed2Body; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighState.footSpeed2Body: unitree_legged_msgs/Cartesian; exactly 4 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
    pub footSpeed2Body: [Ros1Unitree_legged_msgsCartesian; 4],
    /// Declared wirelessRemote; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighState.wirelessRemote: uint8; exactly 40 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
    pub wirelessRemote: [u8; 40],
    /// Declared reserve; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighState.reserve: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
    pub reserve: u32,
    /// Declared crc; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/HighState.crc: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
    pub crc: u32,
}
/// @brief Construct the declared defaults of unitree_legged_msgs/HighState.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Unitree_legged_msgsHighState {
    fn default() -> Self {
        Self {
            head: core::array::from_fn(|_| Default::default()),
            levelFlag: Default::default(),
            frameReserve: Default::default(),
            SN: core::array::from_fn(|_| Default::default()),
            version: core::array::from_fn(|_| Default::default()),
            bandWidth: Default::default(),
            imu: Default::default(),
            motorState: core::array::from_fn(|_| Default::default()),
            bms: Default::default(),
            footForce: core::array::from_fn(|_| Default::default()),
            footForceEst: core::array::from_fn(|_| Default::default()),
            mode: Default::default(),
            progress: Default::default(),
            gaitType: Default::default(),
            footRaiseHeight: Default::default(),
            position: core::array::from_fn(|_| Default::default()),
            bodyHeight: Default::default(),
            velocity: core::array::from_fn(|_| Default::default()),
            yawSpeed: Default::default(),
            rangeObstacle: core::array::from_fn(|_| Default::default()),
            footPosition2Body: core::array::from_fn(|_| Default::default()),
            footSpeed2Body: core::array::from_fn(|_| Default::default()),
            wirelessRemote: core::array::from_fn(|_| Default::default()),
            reserve: Default::default(),
            crc: Default::default(),
        }
    }
}
impl Ros1Unitree_legged_msgsHighState {
    /// @brief Maximum canonical extent of unitree_legged_msgs/HighState in bytes.
    /// @details The inclusive bound is 1087 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 1087;
    /// @brief Cartesian field-bound maximum of unitree_legged_msgs/HighState in bytes.
    /// @details Exact independently combined field-bound extent 1087; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 1087;
    /// @brief Aggregate profile byte budget of unitree_legged_msgs/HighState.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_legged_msgs/HighState.
    /// @details Exact identity UWVMROS1_82ee0efaab21b5cb89e99f5c0f5daec583b48dd5feb2dd6a7e09ba9d9110b53d binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_82ee0efaab21b5cb89e99f5c0f5daec583b48dd5feb2dd6a7e09ba9d9110b53d";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_legged_msgs/HighState value.
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
    /// @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.head {
            n = add_size(n, 1)?;
        }
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        for element in &self.SN {
            n = add_size(n, 4)?;
        }
        for element in &self.version {
            n = add_size(n, 4)?;
        }
        n = add_size(n, 2)?;
        n = add_size(n, self.imu.wire_size()?)?;
        for element in &self.motorState {
            n = add_size(n, element.wire_size()?)?;
        }
        n = add_size(n, self.bms.wire_size()?)?;
        for element in &self.footForce {
            n = add_size(n, 2)?;
        }
        for element in &self.footForceEst {
            n = add_size(n, 2)?;
        }
        n = add_size(n, 1)?;
        if !self.progress.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, 1)?;
        if !self.footRaiseHeight.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.position {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        if !self.bodyHeight.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.velocity {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        if !self.yawSpeed.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.rangeObstacle {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        for element in &self.footPosition2Body {
            n = add_size(n, element.wire_size()?)?;
        }
        for element in &self.footSpeed2Body {
            n = add_size(n, element.wire_size()?)?;
        }
        for element in &self.wirelessRemote {
            n = add_size(n, 1)?;
        }
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        if n > 1087 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_legged_msgs/HighState value.
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
    /// @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
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
        put(out, at, &self.levelFlag.to_le_bytes());
        put(out, at, &self.frameReserve.to_le_bytes());
        for element in &self.SN {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.version {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.bandWidth.to_le_bytes());
        self.imu.write_fields(out, at);
        for element in &self.motorState {
            element.write_fields(out, at);
        }
        self.bms.write_fields(out, at);
        for element in &self.footForce {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.footForceEst {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.mode.to_le_bytes());
        put(out, at, &self.progress.to_le_bytes());
        put(out, at, &self.gaitType.to_le_bytes());
        put(out, at, &self.footRaiseHeight.to_le_bytes());
        for element in &self.position {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.bodyHeight.to_le_bytes());
        for element in &self.velocity {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.yawSpeed.to_le_bytes());
        for element in &self.rangeObstacle {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.footPosition2Body {
            element.write_fields(out, at);
        }
        for element in &self.footSpeed2Body {
            element.write_fields(out, at);
        }
        for element in &self.wirelessRemote {
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
        value.levelFlag = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.frameReserve = decoded;
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                value.SN[i] = decoded;
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
        value.bandWidth = decoded;
        let decoded = Ros1Unitree_legged_msgsIMU::read_fields(bytes, at)?;
        value.imu = decoded;
        {
            let count = 20usize;
            if count > 20 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded = Ros1Unitree_legged_msgsMotorState::read_fields(bytes, at)?;
                value.motorState[i] = decoded;
            }
        }
        let decoded = Ros1Unitree_legged_msgsBmsState::read_fields(bytes, at)?;
        value.bms = decoded;
        {
            let count = 4usize;
            if count > 4 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
                value.footForce[i] = decoded;
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
                value.footForceEst[i] = decoded;
            }
        }
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.mode = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.progress = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.gaitType = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.footRaiseHeight = decoded;
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
        value.bodyHeight = decoded;
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
        value.yawSpeed = decoded;
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
                value.rangeObstacle[i] = decoded;
            }
        }
        {
            let count = 4usize;
            if count > 4 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded = Ros1Unitree_legged_msgsCartesian::read_fields(bytes, at)?;
                value.footPosition2Body[i] = decoded;
            }
        }
        {
            let count = 4usize;
            if count > 4 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded = Ros1Unitree_legged_msgsCartesian::read_fields(bytes, at)?;
                value.footSpeed2Body[i] = decoded;
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
                value.wirelessRemote[i] = decoded;
            }
        }
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.reserve = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.crc = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Unitree_legged_msgsHighState {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_legged_msgs/HighState value.
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
    /// @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_legged_msgs/HighState value.
    /// @details Require the complete 1087..1087-byte canonical representation. Reject truncation, invalid fields
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
    /// @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1087 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 1087 {
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
/// Complete bounded value for ROS1 unitree_legged_msgs/MotorCmd.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 unitree_legged_msgs/MotorCmd value.
/// @details All 7 declared fields are retained in source order. The canonical representation occupies 33..33
/// bytes and is identified by UWVMROS1_632b25f209e72857182d92752aa72e3ab47a45e895cc352ee6dc05f1c1168083.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Unitree_legged_msgsMotorCmd {
    /// Declared mode; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/MotorCmd.mode: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub mode: u8,
    /// Declared q; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/MotorCmd.q: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub q: f32,
    /// Declared dq; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/MotorCmd.dq: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub dq: f32,
    /// Declared tau; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/MotorCmd.tau: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub tau: f32,
    /// Declared Kp; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/MotorCmd.Kp: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub Kp: f32,
    /// Declared Kd; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/MotorCmd.Kd: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub Kd: f32,
    /// Declared reserve; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/MotorCmd.reserve: uint32; exactly 3 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub reserve: [u32; 3],
}
/// @brief Construct the declared defaults of unitree_legged_msgs/MotorCmd.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Unitree_legged_msgsMotorCmd; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Unitree_legged_msgsMotorCmd {
    fn default() -> Self {
        Self {
            mode: Default::default(),
            q: Default::default(),
            dq: Default::default(),
            tau: Default::default(),
            Kp: Default::default(),
            Kd: Default::default(),
            reserve: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros1Unitree_legged_msgsMotorCmd {
    /// @brief Maximum canonical extent of unitree_legged_msgs/MotorCmd in bytes.
    /// @details The inclusive bound is 33 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Unitree_legged_msgsMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 33;
    /// @brief Cartesian field-bound maximum of unitree_legged_msgs/MotorCmd in bytes.
    /// @details Exact independently combined field-bound extent 33; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Unitree_legged_msgsMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 33;
    /// @brief Aggregate profile byte budget of unitree_legged_msgs/MotorCmd.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Unitree_legged_msgsMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_legged_msgs/MotorCmd.
    /// @details Exact identity UWVMROS1_632b25f209e72857182d92752aa72e3ab47a45e895cc352ee6dc05f1c1168083 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Unitree_legged_msgsMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_632b25f209e72857182d92752aa72e3ab47a45e895cc352ee6dc05f1c1168083";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_legged_msgs/MotorCmd value.
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
    /// @see Ros1Unitree_legged_msgsMotorCmd; share/platform/ros/rs/API-CONTRACT.md
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
        if !self.Kp.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.Kd.is_finite() {
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
    /// @brief Encode one complete unitree_legged_msgs/MotorCmd value.
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
    /// @see Ros1Unitree_legged_msgsMotorCmd; share/platform/ros/rs/API-CONTRACT.md
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
        put(out, at, &self.Kp.to_le_bytes());
        put(out, at, &self.Kd.to_le_bytes());
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
        value.Kp = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.Kd = decoded;
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
impl Canonical for Ros1Unitree_legged_msgsMotorCmd {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_legged_msgs/MotorCmd value.
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
    /// @see Ros1Unitree_legged_msgsMotorCmd; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_legged_msgs/MotorCmd value.
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
    /// @see Ros1Unitree_legged_msgsMotorCmd; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 unitree_legged_msgs/LowCmd.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 unitree_legged_msgs/LowCmd value.
/// @details All 11 declared fields are retained in source order. The canonical representation occupies 734..734
/// bytes and is identified by UWVMROS1_11d3ac7c497f01fbf6624c39ec71fa613c462cd62acb20c1f263cdde672e9181.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Unitree_legged_msgsLowCmd {
    /// Declared head; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/LowCmd.head: uint8; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub head: [u8; 2],
    /// Declared levelFlag; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/LowCmd.levelFlag: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub levelFlag: u8,
    /// Declared frameReserve; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/LowCmd.frameReserve: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub frameReserve: u8,
    /// Declared SN; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/LowCmd.SN: uint32; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub SN: [u32; 2],
    /// Declared version; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/LowCmd.version: uint32; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub version: [u32; 2],
    /// Declared bandWidth; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/LowCmd.bandWidth: uint16.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub bandWidth: u16,
    /// Declared motorCmd; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/LowCmd.motorCmd: unitree_legged_msgs/MotorCmd; exactly 20 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub motorCmd: [Ros1Unitree_legged_msgsMotorCmd; 20],
    /// Declared bms; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/LowCmd.bms: unitree_legged_msgs/BmsCmd.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub bms: Ros1Unitree_legged_msgsBmsCmd,
    /// Declared wirelessRemote; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/LowCmd.wirelessRemote: uint8; exactly 40 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub wirelessRemote: [u8; 40],
    /// Declared reserve; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/LowCmd.reserve: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub reserve: u32,
    /// Declared crc; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/LowCmd.crc: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub crc: u32,
}
/// @brief Construct the declared defaults of unitree_legged_msgs/LowCmd.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Unitree_legged_msgsLowCmd {
    fn default() -> Self {
        Self {
            head: core::array::from_fn(|_| Default::default()),
            levelFlag: Default::default(),
            frameReserve: Default::default(),
            SN: core::array::from_fn(|_| Default::default()),
            version: core::array::from_fn(|_| Default::default()),
            bandWidth: Default::default(),
            motorCmd: core::array::from_fn(|_| Default::default()),
            bms: Default::default(),
            wirelessRemote: core::array::from_fn(|_| Default::default()),
            reserve: Default::default(),
            crc: Default::default(),
        }
    }
}
impl Ros1Unitree_legged_msgsLowCmd {
    /// @brief Maximum canonical extent of unitree_legged_msgs/LowCmd in bytes.
    /// @details The inclusive bound is 734 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 734;
    /// @brief Cartesian field-bound maximum of unitree_legged_msgs/LowCmd in bytes.
    /// @details Exact independently combined field-bound extent 734; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 734;
    /// @brief Aggregate profile byte budget of unitree_legged_msgs/LowCmd.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_legged_msgs/LowCmd.
    /// @details Exact identity UWVMROS1_11d3ac7c497f01fbf6624c39ec71fa613c462cd62acb20c1f263cdde672e9181 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_11d3ac7c497f01fbf6624c39ec71fa613c462cd62acb20c1f263cdde672e9181";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_legged_msgs/LowCmd value.
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
    /// @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.head {
            n = add_size(n, 1)?;
        }
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        for element in &self.SN {
            n = add_size(n, 4)?;
        }
        for element in &self.version {
            n = add_size(n, 4)?;
        }
        n = add_size(n, 2)?;
        for element in &self.motorCmd {
            n = add_size(n, element.wire_size()?)?;
        }
        n = add_size(n, self.bms.wire_size()?)?;
        for element in &self.wirelessRemote {
            n = add_size(n, 1)?;
        }
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        if n > 734 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_legged_msgs/LowCmd value.
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
    /// @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
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
        put(out, at, &self.levelFlag.to_le_bytes());
        put(out, at, &self.frameReserve.to_le_bytes());
        for element in &self.SN {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.version {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.bandWidth.to_le_bytes());
        for element in &self.motorCmd {
            element.write_fields(out, at);
        }
        self.bms.write_fields(out, at);
        for element in &self.wirelessRemote {
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
        value.levelFlag = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.frameReserve = decoded;
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                value.SN[i] = decoded;
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
        value.bandWidth = decoded;
        {
            let count = 20usize;
            if count > 20 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded = Ros1Unitree_legged_msgsMotorCmd::read_fields(bytes, at)?;
                value.motorCmd[i] = decoded;
            }
        }
        let decoded = Ros1Unitree_legged_msgsBmsCmd::read_fields(bytes, at)?;
        value.bms = decoded;
        {
            let count = 40usize;
            if count > 40 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.wirelessRemote[i] = decoded;
            }
        }
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.reserve = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.crc = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Unitree_legged_msgsLowCmd {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_legged_msgs/LowCmd value.
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
    /// @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_legged_msgs/LowCmd value.
    /// @details Require the complete 734..734-byte canonical representation. Reject truncation, invalid fields and
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
    /// @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 734 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 734 {
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
/// Complete bounded value for ROS1 unitree_legged_msgs/LowState.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 unitree_legged_msgs/LowState value.
/// @details All 20 declared fields are retained in source order. The canonical representation occupies
/// 1069..1069 bytes and is identified by
/// UWVMROS1_37425ed49c0eebd762b6084ee413c7706fc43defc524414d3f50cdd2d25552c0.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Unitree_legged_msgsLowState {
    /// Declared head; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/LowState.head: uint8; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
    pub head: [u8; 2],
    /// Declared levelFlag; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/LowState.levelFlag: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
    pub levelFlag: u8,
    /// Declared frameReserve; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/LowState.frameReserve: uint8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
    pub frameReserve: u8,
    /// Declared SN; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/LowState.SN: uint32; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
    pub SN: [u32; 2],
    /// Declared version; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/LowState.version: uint32; exactly 2 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
    pub version: [u32; 2],
    /// Declared bandWidth; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/LowState.bandWidth: uint16.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
    pub bandWidth: u16,
    /// Declared imu; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/LowState.imu: unitree_legged_msgs/IMU.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
    pub imu: Ros1Unitree_legged_msgsIMU,
    /// Declared motorState; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/LowState.motorState: unitree_legged_msgs/MotorState; exactly 20 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
    pub motorState: [Ros1Unitree_legged_msgsMotorState; 20],
    /// Declared bms; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/LowState.bms: unitree_legged_msgs/BmsState.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
    pub bms: Ros1Unitree_legged_msgsBmsState,
    /// Declared footForce; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/LowState.footForce: int16; exactly 4 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
    pub footForce: [i16; 4],
    /// Declared footForceEst; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/LowState.footForceEst: int16; exactly 4 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
    pub footForceEst: [i16; 4],
    /// Declared tick; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/LowState.tick: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
    pub tick: u32,
    /// Declared wirelessRemote; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/LowState.wirelessRemote: uint8; exactly 40 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
    pub wirelessRemote: [u8; 40],
    /// Declared reserve; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/LowState.reserve: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
    pub reserve: u32,
    /// Declared crc; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/LowState.crc: uint32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
    pub crc: u32,
    /// Declared eeForceRaw; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/LowState.eeForceRaw: unitree_legged_msgs/Cartesian; exactly 4 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
    pub eeForceRaw: [Ros1Unitree_legged_msgsCartesian; 4],
    /// Declared eeForce; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/LowState.eeForce: unitree_legged_msgs/Cartesian; exactly 4 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
    pub eeForce: [Ros1Unitree_legged_msgsCartesian; 4],
    /// Declared position; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/LowState.position: unitree_legged_msgs/Cartesian.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
    pub position: Ros1Unitree_legged_msgsCartesian,
    /// Declared velocity; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/LowState.velocity: unitree_legged_msgs/Cartesian.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
    pub velocity: Ros1Unitree_legged_msgsCartesian,
    /// Declared velocity_w; canonical bounds are part of CODEC_IDENTITY.
    /// @brief unitree_legged_msgs/LowState.velocity_w: unitree_legged_msgs/Cartesian.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
    pub velocity_w: Ros1Unitree_legged_msgsCartesian,
}
/// @brief Construct the declared defaults of unitree_legged_msgs/LowState.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Unitree_legged_msgsLowState {
    fn default() -> Self {
        Self {
            head: core::array::from_fn(|_| Default::default()),
            levelFlag: Default::default(),
            frameReserve: Default::default(),
            SN: core::array::from_fn(|_| Default::default()),
            version: core::array::from_fn(|_| Default::default()),
            bandWidth: Default::default(),
            imu: Default::default(),
            motorState: core::array::from_fn(|_| Default::default()),
            bms: Default::default(),
            footForce: core::array::from_fn(|_| Default::default()),
            footForceEst: core::array::from_fn(|_| Default::default()),
            tick: Default::default(),
            wirelessRemote: core::array::from_fn(|_| Default::default()),
            reserve: Default::default(),
            crc: Default::default(),
            eeForceRaw: core::array::from_fn(|_| Default::default()),
            eeForce: core::array::from_fn(|_| Default::default()),
            position: Default::default(),
            velocity: Default::default(),
            velocity_w: Default::default(),
        }
    }
}
impl Ros1Unitree_legged_msgsLowState {
    /// @brief Maximum canonical extent of unitree_legged_msgs/LowState in bytes.
    /// @details The inclusive bound is 1069 bytes for this selected profile; it is not a native sizeof or a queue
    /// reservation.
    /// @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 1069;
    /// @brief Cartesian field-bound maximum of unitree_legged_msgs/LowState in bytes.
    /// @details Exact independently combined field-bound extent 1069; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 1069;
    /// @brief Aggregate profile byte budget of unitree_legged_msgs/LowState.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of unitree_legged_msgs/LowState.
    /// @details Exact identity UWVMROS1_37425ed49c0eebd762b6084ee413c7706fc43defc524414d3f50cdd2d25552c0 binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_37425ed49c0eebd762b6084ee413c7706fc43defc524414d3f50cdd2d25552c0";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete unitree_legged_msgs/LowState value.
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
    /// @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.head {
            n = add_size(n, 1)?;
        }
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        for element in &self.SN {
            n = add_size(n, 4)?;
        }
        for element in &self.version {
            n = add_size(n, 4)?;
        }
        n = add_size(n, 2)?;
        n = add_size(n, self.imu.wire_size()?)?;
        for element in &self.motorState {
            n = add_size(n, element.wire_size()?)?;
        }
        n = add_size(n, self.bms.wire_size()?)?;
        for element in &self.footForce {
            n = add_size(n, 2)?;
        }
        for element in &self.footForceEst {
            n = add_size(n, 2)?;
        }
        n = add_size(n, 4)?;
        for element in &self.wirelessRemote {
            n = add_size(n, 1)?;
        }
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        for element in &self.eeForceRaw {
            n = add_size(n, element.wire_size()?)?;
        }
        for element in &self.eeForce {
            n = add_size(n, element.wire_size()?)?;
        }
        n = add_size(n, self.position.wire_size()?)?;
        n = add_size(n, self.velocity.wire_size()?)?;
        n = add_size(n, self.velocity_w.wire_size()?)?;
        if n > 1069 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete unitree_legged_msgs/LowState value.
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
    /// @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
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
        put(out, at, &self.levelFlag.to_le_bytes());
        put(out, at, &self.frameReserve.to_le_bytes());
        for element in &self.SN {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.version {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.bandWidth.to_le_bytes());
        self.imu.write_fields(out, at);
        for element in &self.motorState {
            element.write_fields(out, at);
        }
        self.bms.write_fields(out, at);
        for element in &self.footForce {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.footForceEst {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.tick.to_le_bytes());
        for element in &self.wirelessRemote {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.reserve.to_le_bytes());
        put(out, at, &self.crc.to_le_bytes());
        for element in &self.eeForceRaw {
            element.write_fields(out, at);
        }
        for element in &self.eeForce {
            element.write_fields(out, at);
        }
        self.position.write_fields(out, at);
        self.velocity.write_fields(out, at);
        self.velocity_w.write_fields(out, at);
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
        value.levelFlag = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.frameReserve = decoded;
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                value.SN[i] = decoded;
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
        value.bandWidth = decoded;
        let decoded = Ros1Unitree_legged_msgsIMU::read_fields(bytes, at)?;
        value.imu = decoded;
        {
            let count = 20usize;
            if count > 20 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded = Ros1Unitree_legged_msgsMotorState::read_fields(bytes, at)?;
                value.motorState[i] = decoded;
            }
        }
        let decoded = Ros1Unitree_legged_msgsBmsState::read_fields(bytes, at)?;
        value.bms = decoded;
        {
            let count = 4usize;
            if count > 4 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
                value.footForce[i] = decoded;
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
                value.footForceEst[i] = decoded;
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
                value.wirelessRemote[i] = decoded;
            }
        }
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.reserve = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.crc = decoded;
        {
            let count = 4usize;
            if count > 4 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded = Ros1Unitree_legged_msgsCartesian::read_fields(bytes, at)?;
                value.eeForceRaw[i] = decoded;
            }
        }
        {
            let count = 4usize;
            if count > 4 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded = Ros1Unitree_legged_msgsCartesian::read_fields(bytes, at)?;
                value.eeForce[i] = decoded;
            }
        }
        let decoded = Ros1Unitree_legged_msgsCartesian::read_fields(bytes, at)?;
        value.position = decoded;
        let decoded = Ros1Unitree_legged_msgsCartesian::read_fields(bytes, at)?;
        value.velocity = decoded;
        let decoded = Ros1Unitree_legged_msgsCartesian::read_fields(bytes, at)?;
        value.velocity_w = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Unitree_legged_msgsLowState {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete unitree_legged_msgs/LowState value.
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
    /// @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete unitree_legged_msgs/LowState value.
    /// @details Require the complete 1069..1069-byte canonical representation. Reject truncation, invalid fields
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
    /// @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1069 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 1069 {
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
