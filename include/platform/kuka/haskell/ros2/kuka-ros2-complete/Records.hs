-- @file Records.hs
-- @brief Complete kuka values and adapters for the selected original interface catalog.
-- @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
-- defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
-- roles require the separately admitted SDK owner.
-- @see share/platform/kuka/domains/kuka-ros2-complete.ir.json
-- @see document/platform/kuka/en_US/README.md

-- Generated complete canonical values; all field selectors are record-qualified.
module Kuka.Records.KukaRos2Complete where
import Data.Int
import Data.Word
import qualified Data.ByteString as B
import qualified Data.Text as T
import GHC.Float
import Control.Monad (replicateM)
import qualified RosWasm.Wire as W
import RosWasm.Typed (Canonical(..))
-- | \@brief Complete ROS 2 builtin_interfaces/msg/Duration value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
-- is identified by UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Builtin_interfacesMsgDuration = Ros2Builtin_interfacesMsgDuration
  {
    -- | \@brief builtin_interfaces/msg/Duration.sec: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Builtin_interfacesMsgDuration; share/platform/ros/haskell/API-CONTRACT.md
    ros2Builtin_interfacesMsgDuration_sec :: Int32
  ,
    -- | \@brief builtin_interfaces/msg/Duration.nanosec: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Builtin_interfacesMsgDuration; share/platform/ros/haskell/API-CONTRACT.md
    ros2Builtin_interfacesMsgDuration_nanosec :: Word32
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of builtin_interfaces/msg/Duration.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Builtin_interfacesMsgDuration; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Builtin_interfacesMsgDuration :: Ros2Builtin_interfacesMsgDuration
defaultRos2Builtin_interfacesMsgDuration = Ros2Builtin_interfacesMsgDuration (0) (0)
-- | \@brief Canonical codec identity of builtin_interfaces/msg/Duration.
-- \@details Exact identity UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Builtin_interfacesMsgDuration; share/platform/ros/haskell/API-CONTRACT.md
ros2Builtin_interfacesMsgDurationCodecIdentity :: String
-- | \@brief Canonical codec identity of builtin_interfaces/msg/Duration.
-- \@details Exact identity UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Builtin_interfacesMsgDuration; share/platform/ros/haskell/API-CONTRACT.md
ros2Builtin_interfacesMsgDurationCodecIdentity =
    "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4"
-- | \@brief Encode one complete builtin_interfaces/msg/Duration value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
-- Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Builtin_interfacesMsgDuration; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Builtin_interfacesMsgDuration :: Ros2Builtin_interfacesMsgDuration -> Either Word32 B.ByteString
encodeRos2Builtin_interfacesMsgDuration value = do
  if (ros2Builtin_interfacesMsgDuration_nanosec value) >= 1000000000 then Left 22 else Right ()
  b0 <- W.encodeSigned 4 (fromIntegral (ros2Builtin_interfacesMsgDuration_sec value))
  b1 <- W.encodeUnsigned 4 (fromIntegral (ros2Builtin_interfacesMsgDuration_nanosec value))
  W.bounded 8 [b0, b1]
-- | \@brief Read the ordered canonical fields of builtin_interfaces/msg/Duration.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Builtin_interfacesMsgDuration; share/platform/ros/haskell/API-CONTRACT.md
readRos2Builtin_interfacesMsgDuration :: W.Decoder Ros2Builtin_interfacesMsgDuration
readRos2Builtin_interfacesMsgDuration = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- fromIntegral <$> W.unsigned 4
  let value = Ros2Builtin_interfacesMsgDuration a0 a1
  case encodeRos2Builtin_interfacesMsgDuration value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete builtin_interfaces/msg/Duration value.
-- \@details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Builtin_interfacesMsgDuration; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Builtin_interfacesMsgDuration :: B.ByteString -> Either Word32 Ros2Builtin_interfacesMsgDuration
decodeRos2Builtin_interfacesMsgDuration = W.runDecoder 8 readRos2Builtin_interfacesMsgDuration
instance Canonical Ros2Builtin_interfacesMsgDuration where
  maximumBytes _ = 8
  encodeValue = encodeRos2Builtin_interfacesMsgDuration
  readValue = readRos2Builtin_interfacesMsgDuration
-- | \@brief Complete ROS 2 builtin_interfaces/msg/Time value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
-- is identified by UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Builtin_interfacesMsgTime = Ros2Builtin_interfacesMsgTime
  {
    -- | \@brief builtin_interfaces/msg/Time.sec: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Builtin_interfacesMsgTime; share/platform/ros/haskell/API-CONTRACT.md
    ros2Builtin_interfacesMsgTime_sec :: Int32
  ,
    -- | \@brief builtin_interfaces/msg/Time.nanosec: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Builtin_interfacesMsgTime; share/platform/ros/haskell/API-CONTRACT.md
    ros2Builtin_interfacesMsgTime_nanosec :: Word32
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of builtin_interfaces/msg/Time.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Builtin_interfacesMsgTime; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Builtin_interfacesMsgTime :: Ros2Builtin_interfacesMsgTime
defaultRos2Builtin_interfacesMsgTime = Ros2Builtin_interfacesMsgTime (0) (0)
-- | \@brief Canonical codec identity of builtin_interfaces/msg/Time.
-- \@details Exact identity UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Builtin_interfacesMsgTime; share/platform/ros/haskell/API-CONTRACT.md
ros2Builtin_interfacesMsgTimeCodecIdentity :: String
-- | \@brief Canonical codec identity of builtin_interfaces/msg/Time.
-- \@details Exact identity UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Builtin_interfacesMsgTime; share/platform/ros/haskell/API-CONTRACT.md
ros2Builtin_interfacesMsgTimeCodecIdentity = "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7"
-- | \@brief Encode one complete builtin_interfaces/msg/Time value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
-- Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Builtin_interfacesMsgTime; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Builtin_interfacesMsgTime :: Ros2Builtin_interfacesMsgTime -> Either Word32 B.ByteString
encodeRos2Builtin_interfacesMsgTime value = do
  if (ros2Builtin_interfacesMsgTime_nanosec value) >= 1000000000 then Left 22 else Right ()
  b0 <- W.encodeSigned 4 (fromIntegral (ros2Builtin_interfacesMsgTime_sec value))
  b1 <- W.encodeUnsigned 4 (fromIntegral (ros2Builtin_interfacesMsgTime_nanosec value))
  W.bounded 8 [b0, b1]
-- | \@brief Read the ordered canonical fields of builtin_interfaces/msg/Time.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Builtin_interfacesMsgTime; share/platform/ros/haskell/API-CONTRACT.md
readRos2Builtin_interfacesMsgTime :: W.Decoder Ros2Builtin_interfacesMsgTime
readRos2Builtin_interfacesMsgTime = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- fromIntegral <$> W.unsigned 4
  let value = Ros2Builtin_interfacesMsgTime a0 a1
  case encodeRos2Builtin_interfacesMsgTime value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete builtin_interfaces/msg/Time value.
-- \@details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Builtin_interfacesMsgTime; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Builtin_interfacesMsgTime :: B.ByteString -> Either Word32 Ros2Builtin_interfacesMsgTime
decodeRos2Builtin_interfacesMsgTime = W.runDecoder 8 readRos2Builtin_interfacesMsgTime
instance Canonical Ros2Builtin_interfacesMsgTime where
  maximumBytes _ = 8
  encodeValue = encodeRos2Builtin_interfacesMsgTime
  readValue = readRos2Builtin_interfacesMsgTime
-- | \@brief Complete ROS 2 std_msgs/msg/Header value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 12..76 bytes
-- and is identified by UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader
  {
    -- | \@brief std_msgs/msg/Header.stamp: builtin_interfaces/msg/Time.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Std_msgsMsgHeader; share/platform/ros/haskell/API-CONTRACT.md
    ros2Std_msgsMsgHeader_stamp :: Ros2Builtin_interfacesMsgTime
  ,
    -- | \@brief std_msgs/msg/Header.frame_id: string; each string is 0..64 bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Std_msgsMsgHeader; share/platform/ros/haskell/API-CONTRACT.md
    ros2Std_msgsMsgHeader_frame_id :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of std_msgs/msg/Header.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Std_msgsMsgHeader; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Std_msgsMsgHeader :: Ros2Std_msgsMsgHeader
defaultRos2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader (defaultRos2Builtin_interfacesMsgTime) (T.empty)
-- | \@brief Canonical codec identity of std_msgs/msg/Header.
-- \@details Exact identity UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Std_msgsMsgHeader; share/platform/ros/haskell/API-CONTRACT.md
ros2Std_msgsMsgHeaderCodecIdentity :: String
-- | \@brief Canonical codec identity of std_msgs/msg/Header.
-- \@details Exact identity UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Std_msgsMsgHeader; share/platform/ros/haskell/API-CONTRACT.md
ros2Std_msgsMsgHeaderCodecIdentity = "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396"
-- | \@brief Encode one complete std_msgs/msg/Header value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
-- Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Std_msgsMsgHeader; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Std_msgsMsgHeader :: Ros2Std_msgsMsgHeader -> Either Word32 B.ByteString
encodeRos2Std_msgsMsgHeader value = do
  b0 <- encodeRos2Builtin_interfacesMsgTime (ros2Std_msgsMsgHeader_stamp value)
  b1 <- W.encodeText 64 True (ros2Std_msgsMsgHeader_frame_id value)
  W.bounded 76 [b0, b1]
-- | \@brief Read the ordered canonical fields of std_msgs/msg/Header.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Std_msgsMsgHeader; share/platform/ros/haskell/API-CONTRACT.md
readRos2Std_msgsMsgHeader :: W.Decoder Ros2Std_msgsMsgHeader
readRos2Std_msgsMsgHeader = do
  a0 <- readRos2Builtin_interfacesMsgTime
  a1 <- W.text 64 True
  let value = Ros2Std_msgsMsgHeader a0 a1
  case encodeRos2Std_msgsMsgHeader value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete std_msgs/msg/Header value.
-- \@details Require the complete 12..76-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Std_msgsMsgHeader; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Std_msgsMsgHeader :: B.ByteString -> Either Word32 Ros2Std_msgsMsgHeader
decodeRos2Std_msgsMsgHeader = W.runDecoder 76 readRos2Std_msgsMsgHeader
instance Canonical Ros2Std_msgsMsgHeader where
  maximumBytes _ = 76
  encodeValue = encodeRos2Std_msgsMsgHeader
  readValue = readRos2Std_msgsMsgHeader
-- | \@brief Complete ROS 2 trajectory_msgs/msg/JointTrajectoryPoint value.
-- \@details All 5 declared fields are retained in source order. The canonical representation occupies 24..408 bytes
-- and is identified by UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Trajectory_msgsMsgJointTrajectoryPoint = Ros2Trajectory_msgsMsgJointTrajectoryPoint
  {
    -- | \@brief trajectory_msgs/msg/JointTrajectoryPoint.positions: float64; 0..12 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Trajectory_msgsMsgJointTrajectoryPoint_positions :: [Double]
  ,
    -- | \@brief trajectory_msgs/msg/JointTrajectoryPoint.velocities: float64; 0..12 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Trajectory_msgsMsgJointTrajectoryPoint_velocities :: [Double]
  ,
    -- | \@brief trajectory_msgs/msg/JointTrajectoryPoint.accelerations: float64; 0..12 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Trajectory_msgsMsgJointTrajectoryPoint_accelerations :: [Double]
  ,
    -- | \@brief trajectory_msgs/msg/JointTrajectoryPoint.effort: float64; 0..12 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Trajectory_msgsMsgJointTrajectoryPoint_effort :: [Double]
  ,
    -- | \@brief trajectory_msgs/msg/JointTrajectoryPoint.time_from_start: builtin_interfaces/msg/Duration.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Trajectory_msgsMsgJointTrajectoryPoint_time_from_start :: Ros2Builtin_interfacesMsgDuration
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of trajectory_msgs/msg/JointTrajectoryPoint.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Trajectory_msgsMsgJointTrajectoryPoint :: Ros2Trajectory_msgsMsgJointTrajectoryPoint
defaultRos2Trajectory_msgsMsgJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgJointTrajectoryPoint
        ([])
        ([])
        ([])
        ([])
        (defaultRos2Builtin_interfacesMsgDuration)
-- | \@brief Canonical codec identity of trajectory_msgs/msg/JointTrajectoryPoint.
-- \@details Exact identity UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/haskell/API-CONTRACT.md
ros2Trajectory_msgsMsgJointTrajectoryPointCodecIdentity :: String
-- | \@brief Canonical codec identity of trajectory_msgs/msg/JointTrajectoryPoint.
-- \@details Exact identity UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/haskell/API-CONTRACT.md
ros2Trajectory_msgsMsgJointTrajectoryPointCodecIdentity =
    "UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5"
-- | \@brief Encode one complete trajectory_msgs/msg/JointTrajectoryPoint value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
-- Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Trajectory_msgsMsgJointTrajectoryPoint :: Ros2Trajectory_msgsMsgJointTrajectoryPoint -> Either Word32 B.ByteString
encodeRos2Trajectory_msgsMsgJointTrajectoryPoint value = do
  if length (ros2Trajectory_msgsMsgJointTrajectoryPoint_positions value) > 12 then Left 22 else Right ()
  prefix0 <- W.encodeCount 12 (length (ros2Trajectory_msgsMsgJointTrajectoryPoint_positions value))
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Trajectory_msgsMsgJointTrajectoryPoint_positions value)
  if length (ros2Trajectory_msgsMsgJointTrajectoryPoint_velocities value) > 12 then Left 22 else Right ()
  prefix1 <- W.encodeCount 12 (length (ros2Trajectory_msgsMsgJointTrajectoryPoint_velocities value))
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Trajectory_msgsMsgJointTrajectoryPoint_velocities value)
  if length (ros2Trajectory_msgsMsgJointTrajectoryPoint_accelerations value) > 12 then Left 22 else Right ()
  prefix2 <- W.encodeCount 12 (length (ros2Trajectory_msgsMsgJointTrajectoryPoint_accelerations value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Trajectory_msgsMsgJointTrajectoryPoint_accelerations value)
  if length (ros2Trajectory_msgsMsgJointTrajectoryPoint_effort value) > 12 then Left 22 else Right ()
  prefix3 <- W.encodeCount 12 (length (ros2Trajectory_msgsMsgJointTrajectoryPoint_effort value))
  b3 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Trajectory_msgsMsgJointTrajectoryPoint_effort value)
  b4 <- encodeRos2Builtin_interfacesMsgDuration (ros2Trajectory_msgsMsgJointTrajectoryPoint_time_from_start value)
  W.bounded 408 [prefix0, b0, prefix1, b1, prefix2, b2, prefix3, b3, b4]
-- | \@brief Read the ordered canonical fields of trajectory_msgs/msg/JointTrajectoryPoint.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/haskell/API-CONTRACT.md
readRos2Trajectory_msgsMsgJointTrajectoryPoint :: W.Decoder Ros2Trajectory_msgsMsgJointTrajectoryPoint
readRos2Trajectory_msgsMsgJointTrajectoryPoint = do
  count0 <- W.count 12
  a0 <- replicateM count0 (W.float64)
  count1 <- W.count 12
  a1 <- replicateM count1 (W.float64)
  count2 <- W.count 12
  a2 <- replicateM count2 (W.float64)
  count3 <- W.count 12
  a3 <- replicateM count3 (W.float64)
  a4 <- readRos2Builtin_interfacesMsgDuration
  let value = Ros2Trajectory_msgsMsgJointTrajectoryPoint a0 a1 a2 a3 a4
  case encodeRos2Trajectory_msgsMsgJointTrajectoryPoint value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete trajectory_msgs/msg/JointTrajectoryPoint value.
-- \@details Require the complete 24..408-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Trajectory_msgsMsgJointTrajectoryPoint :: B.ByteString -> Either Word32 Ros2Trajectory_msgsMsgJointTrajectoryPoint
decodeRos2Trajectory_msgsMsgJointTrajectoryPoint = W.runDecoder 408 readRos2Trajectory_msgsMsgJointTrajectoryPoint
instance Canonical Ros2Trajectory_msgsMsgJointTrajectoryPoint where
  maximumBytes _ = 408
  encodeValue = encodeRos2Trajectory_msgsMsgJointTrajectoryPoint
  readValue = readRos2Trajectory_msgsMsgJointTrajectoryPoint
-- | \@brief Complete ROS 2 trajectory_msgs/msg/JointTrajectory value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies 20..4164 bytes
-- and is identified by UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Trajectory_msgsMsgJointTrajectory = Ros2Trajectory_msgsMsgJointTrajectory
  {
    -- | \@brief trajectory_msgs/msg/JointTrajectory.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/haskell/API-CONTRACT.md
    ros2Trajectory_msgsMsgJointTrajectory_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief trajectory_msgs/msg/JointTrajectory.joint_names: string; 0..12 elements; each string is 0..64 bytes;
    -- strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/haskell/API-CONTRACT.md
    ros2Trajectory_msgsMsgJointTrajectory_joint_names :: [T.Text]
  ,
    -- | \@brief trajectory_msgs/msg/JointTrajectory.points: trajectory_msgs/msg/JointTrajectoryPoint; 0..8 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/haskell/API-CONTRACT.md
    ros2Trajectory_msgsMsgJointTrajectory_points :: [Ros2Trajectory_msgsMsgJointTrajectoryPoint]
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of trajectory_msgs/msg/JointTrajectory.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Trajectory_msgsMsgJointTrajectory :: Ros2Trajectory_msgsMsgJointTrajectory
defaultRos2Trajectory_msgsMsgJointTrajectory =
    Ros2Trajectory_msgsMsgJointTrajectory
        (defaultRos2Std_msgsMsgHeader)
        ([])
        ([])
-- | \@brief Canonical codec identity of trajectory_msgs/msg/JointTrajectory.
-- \@details Exact identity UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/haskell/API-CONTRACT.md
ros2Trajectory_msgsMsgJointTrajectoryCodecIdentity :: String
-- | \@brief Canonical codec identity of trajectory_msgs/msg/JointTrajectory.
-- \@details Exact identity UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/haskell/API-CONTRACT.md
ros2Trajectory_msgsMsgJointTrajectoryCodecIdentity =
    "UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0"
-- | \@brief Encode one complete trajectory_msgs/msg/JointTrajectory value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
-- Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Trajectory_msgsMsgJointTrajectory :: Ros2Trajectory_msgsMsgJointTrajectory -> Either Word32 B.ByteString
encodeRos2Trajectory_msgsMsgJointTrajectory value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Trajectory_msgsMsgJointTrajectory_header value)
  if length (ros2Trajectory_msgsMsgJointTrajectory_joint_names value) > 12 then Left 22 else Right ()
  prefix1 <- W.encodeCount 12 (length (ros2Trajectory_msgsMsgJointTrajectory_joint_names value))
  b1 <- B.concat <$> mapM (\e -> W.encodeText 64 True (e)) (ros2Trajectory_msgsMsgJointTrajectory_joint_names value)
  if length (ros2Trajectory_msgsMsgJointTrajectory_points value) > 8 then Left 22 else Right ()
  prefix2 <- W.encodeCount 8 (length (ros2Trajectory_msgsMsgJointTrajectory_points value))
  b2 <- B.concat <$> mapM (\e -> encodeRos2Trajectory_msgsMsgJointTrajectoryPoint (e)) (ros2Trajectory_msgsMsgJointTrajectory_points value)
  W.bounded 4164 [b0, prefix1, b1, prefix2, b2]
-- | \@brief Read the ordered canonical fields of trajectory_msgs/msg/JointTrajectory.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/haskell/API-CONTRACT.md
readRos2Trajectory_msgsMsgJointTrajectory :: W.Decoder Ros2Trajectory_msgsMsgJointTrajectory
readRos2Trajectory_msgsMsgJointTrajectory = do
  a0 <- readRos2Std_msgsMsgHeader
  count1 <- W.count 12
  a1 <- replicateM count1 (W.text 64 True)
  count2 <- W.count 8
  a2 <- replicateM count2 (readRos2Trajectory_msgsMsgJointTrajectoryPoint)
  let value = Ros2Trajectory_msgsMsgJointTrajectory a0 a1 a2
  case encodeRos2Trajectory_msgsMsgJointTrajectory value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete trajectory_msgs/msg/JointTrajectory value.
-- \@details Require the complete 20..4164-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Trajectory_msgsMsgJointTrajectory :: B.ByteString -> Either Word32 Ros2Trajectory_msgsMsgJointTrajectory
decodeRos2Trajectory_msgsMsgJointTrajectory = W.runDecoder 4164 readRos2Trajectory_msgsMsgJointTrajectory
instance Canonical Ros2Trajectory_msgsMsgJointTrajectory where
  maximumBytes _ = 4164
  encodeValue = encodeRos2Trajectory_msgsMsgJointTrajectory
  readValue = readRos2Trajectory_msgsMsgJointTrajectory
-- | \@brief Complete ROS 2 geometry_msgs/msg/Vector3 value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies 24..24 bytes
-- and is identified by UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3
  {
    -- | \@brief geometry_msgs/msg/Vector3.x: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgVector3; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgVector3_x :: Double
  ,
    -- | \@brief geometry_msgs/msg/Vector3.y: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgVector3; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgVector3_y :: Double
  ,
    -- | \@brief geometry_msgs/msg/Vector3.z: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgVector3; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgVector3_z :: Double
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of geometry_msgs/msg/Vector3.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Geometry_msgsMsgVector3; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Geometry_msgsMsgVector3 :: Ros2Geometry_msgsMsgVector3
defaultRos2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3 (0) (0) (0)
-- | \@brief Canonical codec identity of geometry_msgs/msg/Vector3.
-- \@details Exact identity UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Geometry_msgsMsgVector3; share/platform/ros/haskell/API-CONTRACT.md
ros2Geometry_msgsMsgVector3CodecIdentity :: String
-- | \@brief Canonical codec identity of geometry_msgs/msg/Vector3.
-- \@details Exact identity UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Geometry_msgsMsgVector3; share/platform/ros/haskell/API-CONTRACT.md
ros2Geometry_msgsMsgVector3CodecIdentity = "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e"
-- | \@brief Encode one complete geometry_msgs/msg/Vector3 value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
-- Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Geometry_msgsMsgVector3; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Geometry_msgsMsgVector3 :: Ros2Geometry_msgsMsgVector3 -> Either Word32 B.ByteString
encodeRos2Geometry_msgsMsgVector3 value = do
  b0 <- W.encodeFloat64 (ros2Geometry_msgsMsgVector3_x value)
  b1 <- W.encodeFloat64 (ros2Geometry_msgsMsgVector3_y value)
  b2 <- W.encodeFloat64 (ros2Geometry_msgsMsgVector3_z value)
  W.bounded 24 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of geometry_msgs/msg/Vector3.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Geometry_msgsMsgVector3; share/platform/ros/haskell/API-CONTRACT.md
readRos2Geometry_msgsMsgVector3 :: W.Decoder Ros2Geometry_msgsMsgVector3
readRos2Geometry_msgsMsgVector3 = do
  a0 <- W.float64
  a1 <- W.float64
  a2 <- W.float64
  let value = Ros2Geometry_msgsMsgVector3 a0 a1 a2
  case encodeRos2Geometry_msgsMsgVector3 value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete geometry_msgs/msg/Vector3 value.
-- \@details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Geometry_msgsMsgVector3; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Geometry_msgsMsgVector3 :: B.ByteString -> Either Word32 Ros2Geometry_msgsMsgVector3
decodeRos2Geometry_msgsMsgVector3 = W.runDecoder 24 readRos2Geometry_msgsMsgVector3
instance Canonical Ros2Geometry_msgsMsgVector3 where
  maximumBytes _ = 24
  encodeValue = encodeRos2Geometry_msgsMsgVector3
  readValue = readRos2Geometry_msgsMsgVector3
-- | \@brief Complete ROS 2 geometry_msgs/msg/Quaternion value.
-- \@details All 4 declared fields are retained in source order. The canonical representation occupies 32..32 bytes
-- and is identified by UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Geometry_msgsMsgQuaternion = Ros2Geometry_msgsMsgQuaternion
  {
    -- | \@brief geometry_msgs/msg/Quaternion.x: float64.
    -- \@details Schema default 0.0. Encoding preserves the original field position and signedness; invalid bounds fail
    -- instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgQuaternion_x :: Double
  ,
    -- | \@brief geometry_msgs/msg/Quaternion.y: float64.
    -- \@details Schema default 0.0. Encoding preserves the original field position and signedness; invalid bounds fail
    -- instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgQuaternion_y :: Double
  ,
    -- | \@brief geometry_msgs/msg/Quaternion.z: float64.
    -- \@details Schema default 0.0. Encoding preserves the original field position and signedness; invalid bounds fail
    -- instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgQuaternion_z :: Double
  ,
    -- | \@brief geometry_msgs/msg/Quaternion.w: float64.
    -- \@details Schema default 1.0. Encoding preserves the original field position and signedness; invalid bounds fail
    -- instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgQuaternion_w :: Double
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of geometry_msgs/msg/Quaternion.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Geometry_msgsMsgQuaternion :: Ros2Geometry_msgsMsgQuaternion
defaultRos2Geometry_msgsMsgQuaternion =
    Ros2Geometry_msgsMsgQuaternion
        (castWord64ToDouble 0x0)
        (castWord64ToDouble 0x0)
        (castWord64ToDouble 0x0)
        (castWord64ToDouble 0x3ff0000000000000)
-- | \@brief Canonical codec identity of geometry_msgs/msg/Quaternion.
-- \@details Exact identity UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/haskell/API-CONTRACT.md
ros2Geometry_msgsMsgQuaternionCodecIdentity :: String
-- | \@brief Canonical codec identity of geometry_msgs/msg/Quaternion.
-- \@details Exact identity UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/haskell/API-CONTRACT.md
ros2Geometry_msgsMsgQuaternionCodecIdentity =
    "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672"
-- | \@brief Encode one complete geometry_msgs/msg/Quaternion value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
-- Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Geometry_msgsMsgQuaternion :: Ros2Geometry_msgsMsgQuaternion -> Either Word32 B.ByteString
encodeRos2Geometry_msgsMsgQuaternion value = do
  b0 <- W.encodeFloat64 (ros2Geometry_msgsMsgQuaternion_x value)
  b1 <- W.encodeFloat64 (ros2Geometry_msgsMsgQuaternion_y value)
  b2 <- W.encodeFloat64 (ros2Geometry_msgsMsgQuaternion_z value)
  b3 <- W.encodeFloat64 (ros2Geometry_msgsMsgQuaternion_w value)
  W.bounded 32 [b0, b1, b2, b3]
-- | \@brief Read the ordered canonical fields of geometry_msgs/msg/Quaternion.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/haskell/API-CONTRACT.md
readRos2Geometry_msgsMsgQuaternion :: W.Decoder Ros2Geometry_msgsMsgQuaternion
readRos2Geometry_msgsMsgQuaternion = do
  a0 <- W.float64
  a1 <- W.float64
  a2 <- W.float64
  a3 <- W.float64
  let value = Ros2Geometry_msgsMsgQuaternion a0 a1 a2 a3
  case encodeRos2Geometry_msgsMsgQuaternion value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete geometry_msgs/msg/Quaternion value.
-- \@details Require the complete 32..32-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Geometry_msgsMsgQuaternion :: B.ByteString -> Either Word32 Ros2Geometry_msgsMsgQuaternion
decodeRos2Geometry_msgsMsgQuaternion = W.runDecoder 32 readRos2Geometry_msgsMsgQuaternion
instance Canonical Ros2Geometry_msgsMsgQuaternion where
  maximumBytes _ = 32
  encodeValue = encodeRos2Geometry_msgsMsgQuaternion
  readValue = readRos2Geometry_msgsMsgQuaternion
-- | \@brief Complete ROS 2 geometry_msgs/msg/Transform value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 56..56 bytes
-- and is identified by UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Geometry_msgsMsgTransform = Ros2Geometry_msgsMsgTransform
  {
    -- | \@brief geometry_msgs/msg/Transform.translation: geometry_msgs/msg/Vector3.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgTransform; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgTransform_translation :: Ros2Geometry_msgsMsgVector3
  ,
    -- | \@brief geometry_msgs/msg/Transform.rotation: geometry_msgs/msg/Quaternion.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgTransform; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgTransform_rotation :: Ros2Geometry_msgsMsgQuaternion
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of geometry_msgs/msg/Transform.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Geometry_msgsMsgTransform; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Geometry_msgsMsgTransform :: Ros2Geometry_msgsMsgTransform
defaultRos2Geometry_msgsMsgTransform =
    Ros2Geometry_msgsMsgTransform
        (defaultRos2Geometry_msgsMsgVector3)
        (defaultRos2Geometry_msgsMsgQuaternion)
-- | \@brief Canonical codec identity of geometry_msgs/msg/Transform.
-- \@details Exact identity UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Geometry_msgsMsgTransform; share/platform/ros/haskell/API-CONTRACT.md
ros2Geometry_msgsMsgTransformCodecIdentity :: String
-- | \@brief Canonical codec identity of geometry_msgs/msg/Transform.
-- \@details Exact identity UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Geometry_msgsMsgTransform; share/platform/ros/haskell/API-CONTRACT.md
ros2Geometry_msgsMsgTransformCodecIdentity = "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b"
-- | \@brief Encode one complete geometry_msgs/msg/Transform value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
-- Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Geometry_msgsMsgTransform; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Geometry_msgsMsgTransform :: Ros2Geometry_msgsMsgTransform -> Either Word32 B.ByteString
encodeRos2Geometry_msgsMsgTransform value = do
  b0 <- encodeRos2Geometry_msgsMsgVector3 (ros2Geometry_msgsMsgTransform_translation value)
  b1 <- encodeRos2Geometry_msgsMsgQuaternion (ros2Geometry_msgsMsgTransform_rotation value)
  W.bounded 56 [b0, b1]
-- | \@brief Read the ordered canonical fields of geometry_msgs/msg/Transform.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Geometry_msgsMsgTransform; share/platform/ros/haskell/API-CONTRACT.md
readRos2Geometry_msgsMsgTransform :: W.Decoder Ros2Geometry_msgsMsgTransform
readRos2Geometry_msgsMsgTransform = do
  a0 <- readRos2Geometry_msgsMsgVector3
  a1 <- readRos2Geometry_msgsMsgQuaternion
  let value = Ros2Geometry_msgsMsgTransform a0 a1
  case encodeRos2Geometry_msgsMsgTransform value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete geometry_msgs/msg/Transform value.
-- \@details Require the complete 56..56-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Geometry_msgsMsgTransform; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Geometry_msgsMsgTransform :: B.ByteString -> Either Word32 Ros2Geometry_msgsMsgTransform
decodeRos2Geometry_msgsMsgTransform = W.runDecoder 56 readRos2Geometry_msgsMsgTransform
instance Canonical Ros2Geometry_msgsMsgTransform where
  maximumBytes _ = 56
  encodeValue = encodeRos2Geometry_msgsMsgTransform
  readValue = readRos2Geometry_msgsMsgTransform
-- | \@brief Complete ROS 2 geometry_msgs/msg/Twist value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 48..48 bytes
-- and is identified by UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Geometry_msgsMsgTwist = Ros2Geometry_msgsMsgTwist
  {
    -- | \@brief geometry_msgs/msg/Twist.linear: geometry_msgs/msg/Vector3.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgTwist; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgTwist_linear :: Ros2Geometry_msgsMsgVector3
  ,
    -- | \@brief geometry_msgs/msg/Twist.angular: geometry_msgs/msg/Vector3.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgTwist; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgTwist_angular :: Ros2Geometry_msgsMsgVector3
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of geometry_msgs/msg/Twist.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Geometry_msgsMsgTwist; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Geometry_msgsMsgTwist :: Ros2Geometry_msgsMsgTwist
defaultRos2Geometry_msgsMsgTwist =
    Ros2Geometry_msgsMsgTwist
        (defaultRos2Geometry_msgsMsgVector3)
        (defaultRos2Geometry_msgsMsgVector3)
-- | \@brief Canonical codec identity of geometry_msgs/msg/Twist.
-- \@details Exact identity UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Geometry_msgsMsgTwist; share/platform/ros/haskell/API-CONTRACT.md
ros2Geometry_msgsMsgTwistCodecIdentity :: String
-- | \@brief Canonical codec identity of geometry_msgs/msg/Twist.
-- \@details Exact identity UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Geometry_msgsMsgTwist; share/platform/ros/haskell/API-CONTRACT.md
ros2Geometry_msgsMsgTwistCodecIdentity = "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e"
-- | \@brief Encode one complete geometry_msgs/msg/Twist value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
-- Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Geometry_msgsMsgTwist; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Geometry_msgsMsgTwist :: Ros2Geometry_msgsMsgTwist -> Either Word32 B.ByteString
encodeRos2Geometry_msgsMsgTwist value = do
  b0 <- encodeRos2Geometry_msgsMsgVector3 (ros2Geometry_msgsMsgTwist_linear value)
  b1 <- encodeRos2Geometry_msgsMsgVector3 (ros2Geometry_msgsMsgTwist_angular value)
  W.bounded 48 [b0, b1]
-- | \@brief Read the ordered canonical fields of geometry_msgs/msg/Twist.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Geometry_msgsMsgTwist; share/platform/ros/haskell/API-CONTRACT.md
readRos2Geometry_msgsMsgTwist :: W.Decoder Ros2Geometry_msgsMsgTwist
readRos2Geometry_msgsMsgTwist = do
  a0 <- readRos2Geometry_msgsMsgVector3
  a1 <- readRos2Geometry_msgsMsgVector3
  let value = Ros2Geometry_msgsMsgTwist a0 a1
  case encodeRos2Geometry_msgsMsgTwist value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete geometry_msgs/msg/Twist value.
-- \@details Require the complete 48..48-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Geometry_msgsMsgTwist; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Geometry_msgsMsgTwist :: B.ByteString -> Either Word32 Ros2Geometry_msgsMsgTwist
decodeRos2Geometry_msgsMsgTwist = W.runDecoder 48 readRos2Geometry_msgsMsgTwist
instance Canonical Ros2Geometry_msgsMsgTwist where
  maximumBytes _ = 48
  encodeValue = encodeRos2Geometry_msgsMsgTwist
  readValue = readRos2Geometry_msgsMsgTwist
-- | \@brief Complete ROS 2 trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value.
-- \@details All 4 declared fields are retained in source order. The canonical representation occupies 20..324 bytes
-- and is identified by UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint = Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
  {
    -- | \@brief trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.transforms: geometry_msgs/msg/Transform; 0..2
    -- elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_transforms :: [Ros2Geometry_msgsMsgTransform]
  ,
    -- | \@brief trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.velocities: geometry_msgs/msg/Twist; 0..2 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_velocities :: [Ros2Geometry_msgsMsgTwist]
  ,
    -- | \@brief trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.accelerations: geometry_msgs/msg/Twist; 0..2 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_accelerations :: [Ros2Geometry_msgsMsgTwist]
  ,
    -- | \@brief trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.time_from_start: builtin_interfaces/msg/Duration.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_time_from_start :: Ros2Builtin_interfacesMsgDuration
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint :: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
defaultRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
        ([])
        ([])
        ([])
        (defaultRos2Builtin_interfacesMsgDuration)
-- | \@brief Canonical codec identity of trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
-- \@details Exact identity UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/haskell/API-CONTRACT.md
ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointCodecIdentity :: String
-- | \@brief Canonical codec identity of trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
-- \@details Exact identity UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/haskell/API-CONTRACT.md
ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointCodecIdentity =
    "UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242"
-- | \@brief Encode one complete trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
-- Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint :: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint -> Either Word32 B.ByteString
encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint value = do
  if length (ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_transforms value) > 2 then Left 22 else Right ()
  prefix0 <- W.encodeCount 2 (length (ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_transforms value))
  b0 <- B.concat <$> mapM (\e -> encodeRos2Geometry_msgsMsgTransform (e)) (ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_transforms value)
  if length (ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_velocities value) > 2 then Left 22 else Right ()
  prefix1 <- W.encodeCount 2 (length (ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_velocities value))
  b1 <- B.concat <$> mapM (\e -> encodeRos2Geometry_msgsMsgTwist (e)) (ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_velocities value)
  if length (ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_accelerations value) > 2 then Left 22 else Right ()
  prefix2 <- W.encodeCount 2 (length (ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_accelerations value))
  b2 <- B.concat <$> mapM (\e -> encodeRos2Geometry_msgsMsgTwist (e)) (ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_accelerations value)
  b3 <- encodeRos2Builtin_interfacesMsgDuration (ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_time_from_start value)
  W.bounded 324 [prefix0, b0, prefix1, b1, prefix2, b2, b3]
-- | \@brief Read the ordered canonical fields of trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/haskell/API-CONTRACT.md
readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint :: W.Decoder Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint = do
  count0 <- W.count 2
  a0 <- replicateM count0 (readRos2Geometry_msgsMsgTransform)
  count1 <- W.count 2
  a1 <- replicateM count1 (readRos2Geometry_msgsMsgTwist)
  count2 <- W.count 2
  a2 <- replicateM count2 (readRos2Geometry_msgsMsgTwist)
  a3 <- readRos2Builtin_interfacesMsgDuration
  let value = Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint a0 a1 a2 a3
  case encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value.
-- \@details Require the complete 20..324-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint :: B.ByteString -> Either Word32 Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
decodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint = W.runDecoder 324 readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
instance Canonical Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint where
  maximumBytes _ = 324
  encodeValue = encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
  readValue = readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
-- | \@brief Complete ROS 2 trajectory_msgs/msg/MultiDOFJointTrajectory value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies 20..1516 bytes
-- and is identified by UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Trajectory_msgsMsgMultiDOFJointTrajectory = Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
  {
    -- | \@brief trajectory_msgs/msg/MultiDOFJointTrajectory.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/haskell/API-CONTRACT.md
    ros2Trajectory_msgsMsgMultiDOFJointTrajectory_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief trajectory_msgs/msg/MultiDOFJointTrajectory.joint_names: string; 0..2 elements; each string is 0..64
    -- bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/haskell/API-CONTRACT.md
    ros2Trajectory_msgsMsgMultiDOFJointTrajectory_joint_names :: [T.Text]
  ,
    -- | \@brief trajectory_msgs/msg/MultiDOFJointTrajectory.points: trajectory_msgs/msg/MultiDOFJointTrajectoryPoint;
    -- 0..4 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/haskell/API-CONTRACT.md
    ros2Trajectory_msgsMsgMultiDOFJointTrajectory_points :: [Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint]
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of trajectory_msgs/msg/MultiDOFJointTrajectory.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Trajectory_msgsMsgMultiDOFJointTrajectory :: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
defaultRos2Trajectory_msgsMsgMultiDOFJointTrajectory =
    Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
        (defaultRos2Std_msgsMsgHeader)
        ([])
        ([])
-- | \@brief Canonical codec identity of trajectory_msgs/msg/MultiDOFJointTrajectory.
-- \@details Exact identity UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/haskell/API-CONTRACT.md
ros2Trajectory_msgsMsgMultiDOFJointTrajectoryCodecIdentity :: String
-- | \@brief Canonical codec identity of trajectory_msgs/msg/MultiDOFJointTrajectory.
-- \@details Exact identity UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/haskell/API-CONTRACT.md
ros2Trajectory_msgsMsgMultiDOFJointTrajectoryCodecIdentity =
    "UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401"
-- | \@brief Encode one complete trajectory_msgs/msg/MultiDOFJointTrajectory value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
-- Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectory :: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory -> Either Word32 B.ByteString
encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectory value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Trajectory_msgsMsgMultiDOFJointTrajectory_header value)
  if length (ros2Trajectory_msgsMsgMultiDOFJointTrajectory_joint_names value) > 2 then Left 22 else Right ()
  prefix1 <- W.encodeCount 2 (length (ros2Trajectory_msgsMsgMultiDOFJointTrajectory_joint_names value))
  b1 <- B.concat <$> mapM (\e -> W.encodeText 64 True (e)) (ros2Trajectory_msgsMsgMultiDOFJointTrajectory_joint_names value)
  if length (ros2Trajectory_msgsMsgMultiDOFJointTrajectory_points value) > 4 then Left 22 else Right ()
  prefix2 <- W.encodeCount 4 (length (ros2Trajectory_msgsMsgMultiDOFJointTrajectory_points value))
  b2 <- B.concat <$> mapM (\e -> encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint (e)) (ros2Trajectory_msgsMsgMultiDOFJointTrajectory_points value)
  W.bounded 1516 [b0, prefix1, b1, prefix2, b2]
-- | \@brief Read the ordered canonical fields of trajectory_msgs/msg/MultiDOFJointTrajectory.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/haskell/API-CONTRACT.md
readRos2Trajectory_msgsMsgMultiDOFJointTrajectory :: W.Decoder Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
readRos2Trajectory_msgsMsgMultiDOFJointTrajectory = do
  a0 <- readRos2Std_msgsMsgHeader
  count1 <- W.count 2
  a1 <- replicateM count1 (W.text 64 True)
  count2 <- W.count 4
  a2 <- replicateM count2 (readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint)
  let value = Ros2Trajectory_msgsMsgMultiDOFJointTrajectory a0 a1 a2
  case encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectory value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete trajectory_msgs/msg/MultiDOFJointTrajectory value.
-- \@details Require the complete 20..1516-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Trajectory_msgsMsgMultiDOFJointTrajectory :: B.ByteString -> Either Word32 Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
decodeRos2Trajectory_msgsMsgMultiDOFJointTrajectory = W.runDecoder 1516 readRos2Trajectory_msgsMsgMultiDOFJointTrajectory
instance Canonical Ros2Trajectory_msgsMsgMultiDOFJointTrajectory where
  maximumBytes _ = 1516
  encodeValue = encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectory
  readValue = readRos2Trajectory_msgsMsgMultiDOFJointTrajectory
-- | \@brief Complete ROS 2 control_msgs/msg/JointTolerance value.
-- \@details All 4 declared fields are retained in source order. The canonical representation occupies 28..92 bytes
-- and is identified by UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Control_msgsMsgJointTolerance = Ros2Control_msgsMsgJointTolerance
  {
    -- | \@brief control_msgs/msg/JointTolerance.name: string; each string is 0..64 bytes; strict UTF-8 with no embedded
    -- NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsMsgJointTolerance; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsMsgJointTolerance_name :: T.Text
  ,
    -- | \@brief control_msgs/msg/JointTolerance.position: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsMsgJointTolerance; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsMsgJointTolerance_position :: Double
  ,
    -- | \@brief control_msgs/msg/JointTolerance.velocity: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsMsgJointTolerance; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsMsgJointTolerance_velocity :: Double
  ,
    -- | \@brief control_msgs/msg/JointTolerance.acceleration: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsMsgJointTolerance; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsMsgJointTolerance_acceleration :: Double
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of control_msgs/msg/JointTolerance.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Control_msgsMsgJointTolerance; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Control_msgsMsgJointTolerance :: Ros2Control_msgsMsgJointTolerance
defaultRos2Control_msgsMsgJointTolerance = Ros2Control_msgsMsgJointTolerance (T.empty) (0) (0) (0)
-- | \@brief Canonical codec identity of control_msgs/msg/JointTolerance.
-- \@details Exact identity UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Control_msgsMsgJointTolerance; share/platform/ros/haskell/API-CONTRACT.md
ros2Control_msgsMsgJointToleranceCodecIdentity :: String
-- | \@brief Canonical codec identity of control_msgs/msg/JointTolerance.
-- \@details Exact identity UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Control_msgsMsgJointTolerance; share/platform/ros/haskell/API-CONTRACT.md
ros2Control_msgsMsgJointToleranceCodecIdentity =
    "UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2"
-- | \@brief Encode one complete control_msgs/msg/JointTolerance value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
-- Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Control_msgsMsgJointTolerance; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Control_msgsMsgJointTolerance :: Ros2Control_msgsMsgJointTolerance -> Either Word32 B.ByteString
encodeRos2Control_msgsMsgJointTolerance value = do
  b0 <- W.encodeText 64 True (ros2Control_msgsMsgJointTolerance_name value)
  b1 <- W.encodeFloat64 (ros2Control_msgsMsgJointTolerance_position value)
  b2 <- W.encodeFloat64 (ros2Control_msgsMsgJointTolerance_velocity value)
  b3 <- W.encodeFloat64 (ros2Control_msgsMsgJointTolerance_acceleration value)
  W.bounded 92 [b0, b1, b2, b3]
-- | \@brief Read the ordered canonical fields of control_msgs/msg/JointTolerance.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Control_msgsMsgJointTolerance; share/platform/ros/haskell/API-CONTRACT.md
readRos2Control_msgsMsgJointTolerance :: W.Decoder Ros2Control_msgsMsgJointTolerance
readRos2Control_msgsMsgJointTolerance = do
  a0 <- W.text 64 True
  a1 <- W.float64
  a2 <- W.float64
  a3 <- W.float64
  let value = Ros2Control_msgsMsgJointTolerance a0 a1 a2 a3
  case encodeRos2Control_msgsMsgJointTolerance value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete control_msgs/msg/JointTolerance value.
-- \@details Require the complete 28..92-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Control_msgsMsgJointTolerance; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Control_msgsMsgJointTolerance :: B.ByteString -> Either Word32 Ros2Control_msgsMsgJointTolerance
decodeRos2Control_msgsMsgJointTolerance = W.runDecoder 92 readRos2Control_msgsMsgJointTolerance
instance Canonical Ros2Control_msgsMsgJointTolerance where
  maximumBytes _ = 92
  encodeValue = encodeRos2Control_msgsMsgJointTolerance
  readValue = readRos2Control_msgsMsgJointTolerance
-- | \@brief Complete ROS 2 control_msgs/msg/JointComponentTolerance value.
-- \@details All 5 declared fields are retained in source order. The canonical representation occupies 30..542 bytes
-- and is identified by UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Control_msgsMsgJointComponentTolerance = Ros2Control_msgsMsgJointComponentTolerance
  {
    -- | \@brief control_msgs/msg/JointComponentTolerance.joint_name: string; each string is 0..512 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsMsgJointComponentTolerance_joint_name :: T.Text
  ,
    -- | \@brief control_msgs/msg/JointComponentTolerance.component: uint16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsMsgJointComponentTolerance_component :: Word16
  ,
    -- | \@brief control_msgs/msg/JointComponentTolerance.position: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsMsgJointComponentTolerance_position :: Double
  ,
    -- | \@brief control_msgs/msg/JointComponentTolerance.velocity: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsMsgJointComponentTolerance_velocity :: Double
  ,
    -- | \@brief control_msgs/msg/JointComponentTolerance.acceleration: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsMsgJointComponentTolerance_acceleration :: Double
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of control_msgs/msg/JointComponentTolerance.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Control_msgsMsgJointComponentTolerance :: Ros2Control_msgsMsgJointComponentTolerance
defaultRos2Control_msgsMsgJointComponentTolerance = Ros2Control_msgsMsgJointComponentTolerance (T.empty) (0) (0) (0) (0)
-- | \@brief Canonical codec identity of control_msgs/msg/JointComponentTolerance.
-- \@details Exact identity UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/haskell/API-CONTRACT.md
ros2Control_msgsMsgJointComponentToleranceCodecIdentity :: String
-- | \@brief Canonical codec identity of control_msgs/msg/JointComponentTolerance.
-- \@details Exact identity UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/haskell/API-CONTRACT.md
ros2Control_msgsMsgJointComponentToleranceCodecIdentity =
    "UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342"
-- | \@brief control_msgs/msg/JointComponentTolerance.X_AXIS: original uint16 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/haskell/API-CONTRACT.md
ros2Control_msgsMsgJointComponentTolerance_X_AXIS :: Word16
-- | \@brief control_msgs/msg/JointComponentTolerance.X_AXIS: original uint16 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/haskell/API-CONTRACT.md
ros2Control_msgsMsgJointComponentTolerance_X_AXIS = 1
-- | \@brief control_msgs/msg/JointComponentTolerance.Y_AXIS: original uint16 constant.
-- \@details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/haskell/API-CONTRACT.md
ros2Control_msgsMsgJointComponentTolerance_Y_AXIS :: Word16
-- | \@brief control_msgs/msg/JointComponentTolerance.Y_AXIS: original uint16 constant.
-- \@details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/haskell/API-CONTRACT.md
ros2Control_msgsMsgJointComponentTolerance_Y_AXIS = 2
-- | \@brief control_msgs/msg/JointComponentTolerance.Z_AXIS: original uint16 constant.
-- \@details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/haskell/API-CONTRACT.md
ros2Control_msgsMsgJointComponentTolerance_Z_AXIS :: Word16
-- | \@brief control_msgs/msg/JointComponentTolerance.Z_AXIS: original uint16 constant.
-- \@details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/haskell/API-CONTRACT.md
ros2Control_msgsMsgJointComponentTolerance_Z_AXIS = 3
-- | \@brief control_msgs/msg/JointComponentTolerance.TRANSLATION: original uint16 constant.
-- \@details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/haskell/API-CONTRACT.md
ros2Control_msgsMsgJointComponentTolerance_TRANSLATION :: Word16
-- | \@brief control_msgs/msg/JointComponentTolerance.TRANSLATION: original uint16 constant.
-- \@details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/haskell/API-CONTRACT.md
ros2Control_msgsMsgJointComponentTolerance_TRANSLATION = 4
-- | \@brief control_msgs/msg/JointComponentTolerance.ROTATION: original uint16 constant.
-- \@details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/haskell/API-CONTRACT.md
ros2Control_msgsMsgJointComponentTolerance_ROTATION :: Word16
-- | \@brief control_msgs/msg/JointComponentTolerance.ROTATION: original uint16 constant.
-- \@details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/haskell/API-CONTRACT.md
ros2Control_msgsMsgJointComponentTolerance_ROTATION = 5
-- | \@brief Encode one complete control_msgs/msg/JointComponentTolerance value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
-- Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Control_msgsMsgJointComponentTolerance :: Ros2Control_msgsMsgJointComponentTolerance -> Either Word32 B.ByteString
encodeRos2Control_msgsMsgJointComponentTolerance value = do
  b0 <- W.encodeText 512 True (ros2Control_msgsMsgJointComponentTolerance_joint_name value)
  b1 <- W.encodeUnsigned 2 (fromIntegral (ros2Control_msgsMsgJointComponentTolerance_component value))
  b2 <- W.encodeFloat64 (ros2Control_msgsMsgJointComponentTolerance_position value)
  b3 <- W.encodeFloat64 (ros2Control_msgsMsgJointComponentTolerance_velocity value)
  b4 <- W.encodeFloat64 (ros2Control_msgsMsgJointComponentTolerance_acceleration value)
  W.bounded 542 [b0, b1, b2, b3, b4]
-- | \@brief Read the ordered canonical fields of control_msgs/msg/JointComponentTolerance.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/haskell/API-CONTRACT.md
readRos2Control_msgsMsgJointComponentTolerance :: W.Decoder Ros2Control_msgsMsgJointComponentTolerance
readRos2Control_msgsMsgJointComponentTolerance = do
  a0 <- W.text 512 True
  a1 <- fromIntegral <$> W.unsigned 2
  a2 <- W.float64
  a3 <- W.float64
  a4 <- W.float64
  let value = Ros2Control_msgsMsgJointComponentTolerance a0 a1 a2 a3 a4
  case encodeRos2Control_msgsMsgJointComponentTolerance value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete control_msgs/msg/JointComponentTolerance value.
-- \@details Require the complete 30..542-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Control_msgsMsgJointComponentTolerance :: B.ByteString -> Either Word32 Ros2Control_msgsMsgJointComponentTolerance
decodeRos2Control_msgsMsgJointComponentTolerance = W.runDecoder 542 readRos2Control_msgsMsgJointComponentTolerance
instance Canonical Ros2Control_msgsMsgJointComponentTolerance where
  maximumBytes _ = 542
  encodeValue = encodeRos2Control_msgsMsgJointComponentTolerance
  readValue = readRos2Control_msgsMsgJointComponentTolerance
-- | \@brief Complete ROS 2 control_msgs/action/FollowJointTrajectory_Goal value.
-- \@details All 7 declared fields are retained in source order. The canonical representation occupies 64..20920
-- bytes and is identified by UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Control_msgsActionFollowJointTrajectory_Goal = Ros2Control_msgsActionFollowJointTrajectory_Goal
  {
    -- | \@brief control_msgs/action/FollowJointTrajectory_Goal.trajectory: trajectory_msgs/msg/JointTrajectory.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsActionFollowJointTrajectory_Goal_trajectory :: Ros2Trajectory_msgsMsgJointTrajectory
  ,
    -- | \@brief control_msgs/action/FollowJointTrajectory_Goal.multi_dof_trajectory:
    -- trajectory_msgs/msg/MultiDOFJointTrajectory.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsActionFollowJointTrajectory_Goal_multi_dof_trajectory :: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
  ,
    -- | \@brief control_msgs/action/FollowJointTrajectory_Goal.path_tolerance: control_msgs/msg/JointTolerance; 0..12
    -- elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsActionFollowJointTrajectory_Goal_path_tolerance :: [Ros2Control_msgsMsgJointTolerance]
  ,
    -- | \@brief control_msgs/action/FollowJointTrajectory_Goal.component_path_tolerance:
    -- control_msgs/msg/JointComponentTolerance; 0..12 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsActionFollowJointTrajectory_Goal_component_path_tolerance :: [Ros2Control_msgsMsgJointComponentTolerance]
  ,
    -- | \@brief control_msgs/action/FollowJointTrajectory_Goal.goal_tolerance: control_msgs/msg/JointTolerance; 0..12
    -- elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsActionFollowJointTrajectory_Goal_goal_tolerance :: [Ros2Control_msgsMsgJointTolerance]
  ,
    -- | \@brief control_msgs/action/FollowJointTrajectory_Goal.component_goal_tolerance:
    -- control_msgs/msg/JointComponentTolerance; 0..12 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsActionFollowJointTrajectory_Goal_component_goal_tolerance :: [Ros2Control_msgsMsgJointComponentTolerance]
  ,
    -- | \@brief control_msgs/action/FollowJointTrajectory_Goal.goal_time_tolerance: builtin_interfaces/msg/Duration.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsActionFollowJointTrajectory_Goal_goal_time_tolerance :: Ros2Builtin_interfacesMsgDuration
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of control_msgs/action/FollowJointTrajectory_Goal.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Control_msgsActionFollowJointTrajectory_Goal :: Ros2Control_msgsActionFollowJointTrajectory_Goal
defaultRos2Control_msgsActionFollowJointTrajectory_Goal =
    Ros2Control_msgsActionFollowJointTrajectory_Goal
        (defaultRos2Trajectory_msgsMsgJointTrajectory)
        (defaultRos2Trajectory_msgsMsgMultiDOFJointTrajectory)
        ([])
        ([])
        ([])
        ([])
        (defaultRos2Builtin_interfacesMsgDuration)
-- | \@brief Canonical codec identity of control_msgs/action/FollowJointTrajectory_Goal.
-- \@details Exact identity UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/haskell/API-CONTRACT.md
ros2Control_msgsActionFollowJointTrajectory_GoalCodecIdentity :: String
-- | \@brief Canonical codec identity of control_msgs/action/FollowJointTrajectory_Goal.
-- \@details Exact identity UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/haskell/API-CONTRACT.md
ros2Control_msgsActionFollowJointTrajectory_GoalCodecIdentity =
    "UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16"
-- | \@brief Encode one complete control_msgs/action/FollowJointTrajectory_Goal value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
-- Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Control_msgsActionFollowJointTrajectory_Goal :: Ros2Control_msgsActionFollowJointTrajectory_Goal -> Either Word32 B.ByteString
encodeRos2Control_msgsActionFollowJointTrajectory_Goal value = do
  b0 <- encodeRos2Trajectory_msgsMsgJointTrajectory (ros2Control_msgsActionFollowJointTrajectory_Goal_trajectory value)
  b1 <- encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectory (ros2Control_msgsActionFollowJointTrajectory_Goal_multi_dof_trajectory value)
  if length (ros2Control_msgsActionFollowJointTrajectory_Goal_path_tolerance value) > 12 then Left 22 else Right ()
  prefix2 <- W.encodeCount 12 (length (ros2Control_msgsActionFollowJointTrajectory_Goal_path_tolerance value))
  b2 <- B.concat <$> mapM (\e -> encodeRos2Control_msgsMsgJointTolerance (e)) (ros2Control_msgsActionFollowJointTrajectory_Goal_path_tolerance value)
  if length (ros2Control_msgsActionFollowJointTrajectory_Goal_component_path_tolerance value) > 12 then Left 22 else Right ()
  prefix3 <- W.encodeCount 12 (length (ros2Control_msgsActionFollowJointTrajectory_Goal_component_path_tolerance value))
  b3 <- B.concat <$> mapM (\e -> encodeRos2Control_msgsMsgJointComponentTolerance (e)) (ros2Control_msgsActionFollowJointTrajectory_Goal_component_path_tolerance value)
  if length (ros2Control_msgsActionFollowJointTrajectory_Goal_goal_tolerance value) > 12 then Left 22 else Right ()
  prefix4 <- W.encodeCount 12 (length (ros2Control_msgsActionFollowJointTrajectory_Goal_goal_tolerance value))
  b4 <- B.concat <$> mapM (\e -> encodeRos2Control_msgsMsgJointTolerance (e)) (ros2Control_msgsActionFollowJointTrajectory_Goal_goal_tolerance value)
  if length (ros2Control_msgsActionFollowJointTrajectory_Goal_component_goal_tolerance value) > 12 then Left 22 else Right ()
  prefix5 <- W.encodeCount 12 (length (ros2Control_msgsActionFollowJointTrajectory_Goal_component_goal_tolerance value))
  b5 <- B.concat <$> mapM (\e -> encodeRos2Control_msgsMsgJointComponentTolerance (e)) (ros2Control_msgsActionFollowJointTrajectory_Goal_component_goal_tolerance value)
  b6 <- encodeRos2Builtin_interfacesMsgDuration (ros2Control_msgsActionFollowJointTrajectory_Goal_goal_time_tolerance value)
  W.bounded 20920 [b0, b1, prefix2, b2, prefix3, b3, prefix4, b4, prefix5, b5, b6]
-- | \@brief Read the ordered canonical fields of control_msgs/action/FollowJointTrajectory_Goal.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/haskell/API-CONTRACT.md
readRos2Control_msgsActionFollowJointTrajectory_Goal :: W.Decoder Ros2Control_msgsActionFollowJointTrajectory_Goal
readRos2Control_msgsActionFollowJointTrajectory_Goal = do
  a0 <- readRos2Trajectory_msgsMsgJointTrajectory
  a1 <- readRos2Trajectory_msgsMsgMultiDOFJointTrajectory
  count2 <- W.count 12
  a2 <- replicateM count2 (readRos2Control_msgsMsgJointTolerance)
  count3 <- W.count 12
  a3 <- replicateM count3 (readRos2Control_msgsMsgJointComponentTolerance)
  count4 <- W.count 12
  a4 <- replicateM count4 (readRos2Control_msgsMsgJointTolerance)
  count5 <- W.count 12
  a5 <- replicateM count5 (readRos2Control_msgsMsgJointComponentTolerance)
  a6 <- readRos2Builtin_interfacesMsgDuration
  let value = Ros2Control_msgsActionFollowJointTrajectory_Goal a0 a1 a2 a3 a4 a5 a6
  case encodeRos2Control_msgsActionFollowJointTrajectory_Goal value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete control_msgs/action/FollowJointTrajectory_Goal value.
-- \@details Require the complete 64..20920-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Control_msgsActionFollowJointTrajectory_Goal :: B.ByteString -> Either Word32 Ros2Control_msgsActionFollowJointTrajectory_Goal
decodeRos2Control_msgsActionFollowJointTrajectory_Goal = W.runDecoder 20920 readRos2Control_msgsActionFollowJointTrajectory_Goal
instance Canonical Ros2Control_msgsActionFollowJointTrajectory_Goal where
  maximumBytes _ = 20920
  encodeValue = encodeRos2Control_msgsActionFollowJointTrajectory_Goal
  readValue = readRos2Control_msgsActionFollowJointTrajectory_Goal
-- | \@brief Complete ROS 2 control_msgs/action/FollowJointTrajectory_Result value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 8..4104 bytes
-- and is identified by UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Control_msgsActionFollowJointTrajectory_Result = Ros2Control_msgsActionFollowJointTrajectory_Result
  {
    -- | \@brief control_msgs/action/FollowJointTrajectory_Result.error_code: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsActionFollowJointTrajectory_Result_error_code :: Int32
  ,
    -- | \@brief control_msgs/action/FollowJointTrajectory_Result.error_string: string; each string is 0..4096 bytes;
    -- strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsActionFollowJointTrajectory_Result_error_string :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of control_msgs/action/FollowJointTrajectory_Result.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Control_msgsActionFollowJointTrajectory_Result :: Ros2Control_msgsActionFollowJointTrajectory_Result
defaultRos2Control_msgsActionFollowJointTrajectory_Result =
    Ros2Control_msgsActionFollowJointTrajectory_Result
        (0)
        (T.empty)
-- | \@brief Canonical codec identity of control_msgs/action/FollowJointTrajectory_Result.
-- \@details Exact identity UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/haskell/API-CONTRACT.md
ros2Control_msgsActionFollowJointTrajectory_ResultCodecIdentity :: String
-- | \@brief Canonical codec identity of control_msgs/action/FollowJointTrajectory_Result.
-- \@details Exact identity UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/haskell/API-CONTRACT.md
ros2Control_msgsActionFollowJointTrajectory_ResultCodecIdentity =
    "UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70"
-- | \@brief control_msgs/action/FollowJointTrajectory_Result.SUCCESSFUL: original int32 constant.
-- \@details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/haskell/API-CONTRACT.md
ros2Control_msgsActionFollowJointTrajectory_Result_SUCCESSFUL :: Int32
-- | \@brief control_msgs/action/FollowJointTrajectory_Result.SUCCESSFUL: original int32 constant.
-- \@details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/haskell/API-CONTRACT.md
ros2Control_msgsActionFollowJointTrajectory_Result_SUCCESSFUL = 0
-- | \@brief control_msgs/action/FollowJointTrajectory_Result.INVALID_GOAL: original int32 constant.
-- \@details Exact admitted value -1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/haskell/API-CONTRACT.md
ros2Control_msgsActionFollowJointTrajectory_Result_INVALID_GOAL :: Int32
-- | \@brief control_msgs/action/FollowJointTrajectory_Result.INVALID_GOAL: original int32 constant.
-- \@details Exact admitted value -1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/haskell/API-CONTRACT.md
ros2Control_msgsActionFollowJointTrajectory_Result_INVALID_GOAL = -1
-- | \@brief control_msgs/action/FollowJointTrajectory_Result.INVALID_JOINTS: original int32 constant.
-- \@details Exact admitted value -2. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/haskell/API-CONTRACT.md
ros2Control_msgsActionFollowJointTrajectory_Result_INVALID_JOINTS :: Int32
-- | \@brief control_msgs/action/FollowJointTrajectory_Result.INVALID_JOINTS: original int32 constant.
-- \@details Exact admitted value -2. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/haskell/API-CONTRACT.md
ros2Control_msgsActionFollowJointTrajectory_Result_INVALID_JOINTS = -2
-- | \@brief control_msgs/action/FollowJointTrajectory_Result.OLD_HEADER_TIMESTAMP: original int32 constant.
-- \@details Exact admitted value -3. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/haskell/API-CONTRACT.md
ros2Control_msgsActionFollowJointTrajectory_Result_OLD_HEADER_TIMESTAMP :: Int32
-- | \@brief control_msgs/action/FollowJointTrajectory_Result.OLD_HEADER_TIMESTAMP: original int32 constant.
-- \@details Exact admitted value -3. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/haskell/API-CONTRACT.md
ros2Control_msgsActionFollowJointTrajectory_Result_OLD_HEADER_TIMESTAMP = -3
-- | \@brief control_msgs/action/FollowJointTrajectory_Result.PATH_TOLERANCE_VIOLATED: original int32 constant.
-- \@details Exact admitted value -4. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/haskell/API-CONTRACT.md
ros2Control_msgsActionFollowJointTrajectory_Result_PATH_TOLERANCE_VIOLATED :: Int32
-- | \@brief control_msgs/action/FollowJointTrajectory_Result.PATH_TOLERANCE_VIOLATED: original int32 constant.
-- \@details Exact admitted value -4. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/haskell/API-CONTRACT.md
ros2Control_msgsActionFollowJointTrajectory_Result_PATH_TOLERANCE_VIOLATED = -4
-- | \@brief control_msgs/action/FollowJointTrajectory_Result.GOAL_TOLERANCE_VIOLATED: original int32 constant.
-- \@details Exact admitted value -5. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/haskell/API-CONTRACT.md
ros2Control_msgsActionFollowJointTrajectory_Result_GOAL_TOLERANCE_VIOLATED :: Int32
-- | \@brief control_msgs/action/FollowJointTrajectory_Result.GOAL_TOLERANCE_VIOLATED: original int32 constant.
-- \@details Exact admitted value -5. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/haskell/API-CONTRACT.md
ros2Control_msgsActionFollowJointTrajectory_Result_GOAL_TOLERANCE_VIOLATED = -5
-- | \@brief Encode one complete control_msgs/action/FollowJointTrajectory_Result value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
-- Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Control_msgsActionFollowJointTrajectory_Result :: Ros2Control_msgsActionFollowJointTrajectory_Result -> Either Word32 B.ByteString
encodeRos2Control_msgsActionFollowJointTrajectory_Result value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros2Control_msgsActionFollowJointTrajectory_Result_error_code value))
  b1 <- W.encodeText 4096 True (ros2Control_msgsActionFollowJointTrajectory_Result_error_string value)
  W.bounded 4104 [b0, b1]
-- | \@brief Read the ordered canonical fields of control_msgs/action/FollowJointTrajectory_Result.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/haskell/API-CONTRACT.md
readRos2Control_msgsActionFollowJointTrajectory_Result :: W.Decoder Ros2Control_msgsActionFollowJointTrajectory_Result
readRos2Control_msgsActionFollowJointTrajectory_Result = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- W.text 4096 True
  let value = Ros2Control_msgsActionFollowJointTrajectory_Result a0 a1
  case encodeRos2Control_msgsActionFollowJointTrajectory_Result value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete control_msgs/action/FollowJointTrajectory_Result value.
-- \@details Require the complete 8..4104-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Control_msgsActionFollowJointTrajectory_Result :: B.ByteString -> Either Word32 Ros2Control_msgsActionFollowJointTrajectory_Result
decodeRos2Control_msgsActionFollowJointTrajectory_Result = W.runDecoder 4104 readRos2Control_msgsActionFollowJointTrajectory_Result
instance Canonical Ros2Control_msgsActionFollowJointTrajectory_Result where
  maximumBytes _ = 4104
  encodeValue = encodeRos2Control_msgsActionFollowJointTrajectory_Result
  readValue = readRos2Control_msgsActionFollowJointTrajectory_Result
-- | \@brief Complete ROS 2 control_msgs/action/FollowJointTrajectory_Feedback value.
-- \@details All 9 declared fields are retained in source order. The canonical representation occupies 152..4128
-- bytes and is identified by UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Control_msgsActionFollowJointTrajectory_Feedback = Ros2Control_msgsActionFollowJointTrajectory_Feedback
  {
    -- | \@brief control_msgs/action/FollowJointTrajectory_Feedback.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsActionFollowJointTrajectory_Feedback_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief control_msgs/action/FollowJointTrajectory_Feedback.joint_names: string; 0..12 elements; each string is
    -- 0..64 bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsActionFollowJointTrajectory_Feedback_joint_names :: [T.Text]
  ,
    -- | \@brief control_msgs/action/FollowJointTrajectory_Feedback.desired: trajectory_msgs/msg/JointTrajectoryPoint.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsActionFollowJointTrajectory_Feedback_desired :: Ros2Trajectory_msgsMsgJointTrajectoryPoint
  ,
    -- | \@brief control_msgs/action/FollowJointTrajectory_Feedback.actual: trajectory_msgs/msg/JointTrajectoryPoint.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsActionFollowJointTrajectory_Feedback_actual :: Ros2Trajectory_msgsMsgJointTrajectoryPoint
  ,
    -- | \@brief control_msgs/action/FollowJointTrajectory_Feedback.error: trajectory_msgs/msg/JointTrajectoryPoint.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsActionFollowJointTrajectory_Feedback_error :: Ros2Trajectory_msgsMsgJointTrajectoryPoint
  ,
    -- | \@brief control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_joint_names: string; 0..2 elements; each
    -- string is 0..512 bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsActionFollowJointTrajectory_Feedback_multi_dof_joint_names :: [T.Text]
  ,
    -- | \@brief control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_desired:
    -- trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsActionFollowJointTrajectory_Feedback_multi_dof_desired :: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
  ,
    -- | \@brief control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_actual:
    -- trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsActionFollowJointTrajectory_Feedback_multi_dof_actual :: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
  ,
    -- | \@brief control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_error:
    -- trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/haskell/API-CONTRACT.md
    ros2Control_msgsActionFollowJointTrajectory_Feedback_multi_dof_error :: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of control_msgs/action/FollowJointTrajectory_Feedback.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Control_msgsActionFollowJointTrajectory_Feedback :: Ros2Control_msgsActionFollowJointTrajectory_Feedback
defaultRos2Control_msgsActionFollowJointTrajectory_Feedback =
    Ros2Control_msgsActionFollowJointTrajectory_Feedback
        (defaultRos2Std_msgsMsgHeader)
        ([])
        (defaultRos2Trajectory_msgsMsgJointTrajectoryPoint)
        (defaultRos2Trajectory_msgsMsgJointTrajectoryPoint)
        (defaultRos2Trajectory_msgsMsgJointTrajectoryPoint)
        ([])
        (defaultRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint)
        (defaultRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint)
        (defaultRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint)
-- | \@brief Canonical codec identity of control_msgs/action/FollowJointTrajectory_Feedback.
-- \@details Exact identity UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/haskell/API-CONTRACT.md
ros2Control_msgsActionFollowJointTrajectory_FeedbackCodecIdentity :: String
-- | \@brief Canonical codec identity of control_msgs/action/FollowJointTrajectory_Feedback.
-- \@details Exact identity UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/haskell/API-CONTRACT.md
ros2Control_msgsActionFollowJointTrajectory_FeedbackCodecIdentity =
    "UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb"
-- | \@brief Encode one complete control_msgs/action/FollowJointTrajectory_Feedback value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
-- Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Control_msgsActionFollowJointTrajectory_Feedback :: Ros2Control_msgsActionFollowJointTrajectory_Feedback -> Either Word32 B.ByteString
encodeRos2Control_msgsActionFollowJointTrajectory_Feedback value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Control_msgsActionFollowJointTrajectory_Feedback_header value)
  if length (ros2Control_msgsActionFollowJointTrajectory_Feedback_joint_names value) > 12 then Left 22 else Right ()
  prefix1 <- W.encodeCount 12 (length (ros2Control_msgsActionFollowJointTrajectory_Feedback_joint_names value))
  b1 <- B.concat <$> mapM (\e -> W.encodeText 64 True (e)) (ros2Control_msgsActionFollowJointTrajectory_Feedback_joint_names value)
  b2 <- encodeRos2Trajectory_msgsMsgJointTrajectoryPoint (ros2Control_msgsActionFollowJointTrajectory_Feedback_desired value)
  b3 <- encodeRos2Trajectory_msgsMsgJointTrajectoryPoint (ros2Control_msgsActionFollowJointTrajectory_Feedback_actual value)
  b4 <- encodeRos2Trajectory_msgsMsgJointTrajectoryPoint (ros2Control_msgsActionFollowJointTrajectory_Feedback_error value)
  if length (ros2Control_msgsActionFollowJointTrajectory_Feedback_multi_dof_joint_names value) > 2 then Left 22 else Right ()
  prefix5 <- W.encodeCount 2 (length (ros2Control_msgsActionFollowJointTrajectory_Feedback_multi_dof_joint_names value))
  b5 <- B.concat <$> mapM (\e -> W.encodeText 512 True (e)) (ros2Control_msgsActionFollowJointTrajectory_Feedback_multi_dof_joint_names value)
  b6 <- encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint (ros2Control_msgsActionFollowJointTrajectory_Feedback_multi_dof_desired value)
  b7 <- encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint (ros2Control_msgsActionFollowJointTrajectory_Feedback_multi_dof_actual value)
  b8 <- encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint (ros2Control_msgsActionFollowJointTrajectory_Feedback_multi_dof_error value)
  W.bounded 4128 [b0, prefix1, b1, b2, b3, b4, prefix5, b5, b6, b7, b8]
-- | \@brief Read the ordered canonical fields of control_msgs/action/FollowJointTrajectory_Feedback.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/haskell/API-CONTRACT.md
readRos2Control_msgsActionFollowJointTrajectory_Feedback :: W.Decoder Ros2Control_msgsActionFollowJointTrajectory_Feedback
readRos2Control_msgsActionFollowJointTrajectory_Feedback = do
  a0 <- readRos2Std_msgsMsgHeader
  count1 <- W.count 12
  a1 <- replicateM count1 (W.text 64 True)
  a2 <- readRos2Trajectory_msgsMsgJointTrajectoryPoint
  a3 <- readRos2Trajectory_msgsMsgJointTrajectoryPoint
  a4 <- readRos2Trajectory_msgsMsgJointTrajectoryPoint
  count5 <- W.count 2
  a5 <- replicateM count5 (W.text 512 True)
  a6 <- readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
  a7 <- readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
  a8 <- readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
  let value = Ros2Control_msgsActionFollowJointTrajectory_Feedback a0 a1 a2 a3 a4 a5 a6 a7 a8
  case encodeRos2Control_msgsActionFollowJointTrajectory_Feedback value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete control_msgs/action/FollowJointTrajectory_Feedback value.
-- \@details Require the complete 152..4128-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Control_msgsActionFollowJointTrajectory_Feedback :: B.ByteString -> Either Word32 Ros2Control_msgsActionFollowJointTrajectory_Feedback
decodeRos2Control_msgsActionFollowJointTrajectory_Feedback = W.runDecoder 4128 readRos2Control_msgsActionFollowJointTrajectory_Feedback
instance Canonical Ros2Control_msgsActionFollowJointTrajectory_Feedback where
  maximumBytes _ = 4128
  encodeValue = encodeRos2Control_msgsActionFollowJointTrajectory_Feedback
  readValue = readRos2Control_msgsActionFollowJointTrajectory_Feedback
-- | \@brief Complete ROS 2 kuka_driver_interfaces/msg/FRIState value.
-- \@details All 9 declared fields are retained in source order. The canonical representation occupies 40..40 bytes
-- and is identified by UWVMROS1_27be8431e4a8cda3bb4d6d5a8a69fd86a0d07a1d920799c232d63a4941ee6716.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Kuka_driver_interfacesMsgFRIState = Ros2Kuka_driver_interfacesMsgFRIState
  {
    -- | \@brief kuka_driver_interfaces/msg/FRIState.session_state: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Kuka_driver_interfacesMsgFRIState_session_state :: Int32
  ,
    -- | \@brief kuka_driver_interfaces/msg/FRIState.connection_quality: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Kuka_driver_interfacesMsgFRIState_connection_quality :: Int32
  ,
    -- | \@brief kuka_driver_interfaces/msg/FRIState.safety_state: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Kuka_driver_interfacesMsgFRIState_safety_state :: Int32
  ,
    -- | \@brief kuka_driver_interfaces/msg/FRIState.command_mode: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Kuka_driver_interfacesMsgFRIState_command_mode :: Int32
  ,
    -- | \@brief kuka_driver_interfaces/msg/FRIState.control_mode: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Kuka_driver_interfacesMsgFRIState_control_mode :: Int32
  ,
    -- | \@brief kuka_driver_interfaces/msg/FRIState.operation_mode: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Kuka_driver_interfacesMsgFRIState_operation_mode :: Int32
  ,
    -- | \@brief kuka_driver_interfaces/msg/FRIState.drive_state: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Kuka_driver_interfacesMsgFRIState_drive_state :: Int32
  ,
    -- | \@brief kuka_driver_interfaces/msg/FRIState.overlay_type: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Kuka_driver_interfacesMsgFRIState_overlay_type :: Int32
  ,
    -- | \@brief kuka_driver_interfaces/msg/FRIState.tracking_performance: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Kuka_driver_interfacesMsgFRIState_tracking_performance :: Double
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of kuka_driver_interfaces/msg/FRIState.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Kuka_driver_interfacesMsgFRIState :: Ros2Kuka_driver_interfacesMsgFRIState
defaultRos2Kuka_driver_interfacesMsgFRIState = Ros2Kuka_driver_interfacesMsgFRIState (0) (0) (0) (0) (0) (0) (0) (0) (0)
-- | \@brief Canonical codec identity of kuka_driver_interfaces/msg/FRIState.
-- \@details Exact identity UWVMROS1_27be8431e4a8cda3bb4d6d5a8a69fd86a0d07a1d920799c232d63a4941ee6716 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/haskell/API-CONTRACT.md
ros2Kuka_driver_interfacesMsgFRIStateCodecIdentity :: String
-- | \@brief Canonical codec identity of kuka_driver_interfaces/msg/FRIState.
-- \@details Exact identity UWVMROS1_27be8431e4a8cda3bb4d6d5a8a69fd86a0d07a1d920799c232d63a4941ee6716 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/haskell/API-CONTRACT.md
ros2Kuka_driver_interfacesMsgFRIStateCodecIdentity =
    "UWVMROS1_27be8431e4a8cda3bb4d6d5a8a69fd86a0d07a1d920799c232d63a4941ee6716"
-- | \@brief Encode one complete kuka_driver_interfaces/msg/FRIState value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
-- Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Kuka_driver_interfacesMsgFRIState :: Ros2Kuka_driver_interfacesMsgFRIState -> Either Word32 B.ByteString
encodeRos2Kuka_driver_interfacesMsgFRIState value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros2Kuka_driver_interfacesMsgFRIState_session_state value))
  b1 <- W.encodeSigned 4 (fromIntegral (ros2Kuka_driver_interfacesMsgFRIState_connection_quality value))
  b2 <- W.encodeSigned 4 (fromIntegral (ros2Kuka_driver_interfacesMsgFRIState_safety_state value))
  b3 <- W.encodeSigned 4 (fromIntegral (ros2Kuka_driver_interfacesMsgFRIState_command_mode value))
  b4 <- W.encodeSigned 4 (fromIntegral (ros2Kuka_driver_interfacesMsgFRIState_control_mode value))
  b5 <- W.encodeSigned 4 (fromIntegral (ros2Kuka_driver_interfacesMsgFRIState_operation_mode value))
  b6 <- W.encodeSigned 4 (fromIntegral (ros2Kuka_driver_interfacesMsgFRIState_drive_state value))
  b7 <- W.encodeSigned 4 (fromIntegral (ros2Kuka_driver_interfacesMsgFRIState_overlay_type value))
  b8 <- W.encodeFloat64 (ros2Kuka_driver_interfacesMsgFRIState_tracking_performance value)
  W.bounded 40 [b0, b1, b2, b3, b4, b5, b6, b7, b8]
-- | \@brief Read the ordered canonical fields of kuka_driver_interfaces/msg/FRIState.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/haskell/API-CONTRACT.md
readRos2Kuka_driver_interfacesMsgFRIState :: W.Decoder Ros2Kuka_driver_interfacesMsgFRIState
readRos2Kuka_driver_interfacesMsgFRIState = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- fromIntegral <$> W.signed 4
  a2 <- fromIntegral <$> W.signed 4
  a3 <- fromIntegral <$> W.signed 4
  a4 <- fromIntegral <$> W.signed 4
  a5 <- fromIntegral <$> W.signed 4
  a6 <- fromIntegral <$> W.signed 4
  a7 <- fromIntegral <$> W.signed 4
  a8 <- W.float64
  let value = Ros2Kuka_driver_interfacesMsgFRIState a0 a1 a2 a3 a4 a5 a6 a7 a8
  case encodeRos2Kuka_driver_interfacesMsgFRIState value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete kuka_driver_interfaces/msg/FRIState value.
-- \@details Require the complete 40..40-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Kuka_driver_interfacesMsgFRIState :: B.ByteString -> Either Word32 Ros2Kuka_driver_interfacesMsgFRIState
decodeRos2Kuka_driver_interfacesMsgFRIState = W.runDecoder 40 readRos2Kuka_driver_interfacesMsgFRIState
instance Canonical Ros2Kuka_driver_interfacesMsgFRIState where
  maximumBytes _ = 40
  encodeValue = encodeRos2Kuka_driver_interfacesMsgFRIState
  readValue = readRos2Kuka_driver_interfacesMsgFRIState
-- | \@brief Complete ROS 2 kuka_driver_interfaces/msg/FRIStateArray value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 8..1736 bytes
-- and is identified by UWVMROS1_4312aa4103fd0c92fe7cd9d1201c40e327b05812cdc60130d11b8c2e0eb47449.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Kuka_driver_interfacesMsgFRIStateArray = Ros2Kuka_driver_interfacesMsgFRIStateArray
  {
    -- | \@brief kuka_driver_interfaces/msg/FRIStateArray.robot_names: string; 0..16 elements; each string is 0..64
    -- bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/haskell/API-CONTRACT.md
    ros2Kuka_driver_interfacesMsgFRIStateArray_robot_names :: [T.Text]
  ,
    -- | \@brief kuka_driver_interfaces/msg/FRIStateArray.states: kuka_driver_interfaces/msg/FRIState; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/haskell/API-CONTRACT.md
    ros2Kuka_driver_interfacesMsgFRIStateArray_states :: [Ros2Kuka_driver_interfacesMsgFRIState]
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of kuka_driver_interfaces/msg/FRIStateArray.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Kuka_driver_interfacesMsgFRIStateArray :: Ros2Kuka_driver_interfacesMsgFRIStateArray
defaultRos2Kuka_driver_interfacesMsgFRIStateArray = Ros2Kuka_driver_interfacesMsgFRIStateArray ([]) ([])
-- | \@brief Canonical codec identity of kuka_driver_interfaces/msg/FRIStateArray.
-- \@details Exact identity UWVMROS1_4312aa4103fd0c92fe7cd9d1201c40e327b05812cdc60130d11b8c2e0eb47449 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/haskell/API-CONTRACT.md
ros2Kuka_driver_interfacesMsgFRIStateArrayCodecIdentity :: String
-- | \@brief Canonical codec identity of kuka_driver_interfaces/msg/FRIStateArray.
-- \@details Exact identity UWVMROS1_4312aa4103fd0c92fe7cd9d1201c40e327b05812cdc60130d11b8c2e0eb47449 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/haskell/API-CONTRACT.md
ros2Kuka_driver_interfacesMsgFRIStateArrayCodecIdentity =
    "UWVMROS1_4312aa4103fd0c92fe7cd9d1201c40e327b05812cdc60130d11b8c2e0eb47449"
-- | \@brief Encode one complete kuka_driver_interfaces/msg/FRIStateArray value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
-- Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Kuka_driver_interfacesMsgFRIStateArray :: Ros2Kuka_driver_interfacesMsgFRIStateArray -> Either Word32 B.ByteString
encodeRos2Kuka_driver_interfacesMsgFRIStateArray value = do
  if length (ros2Kuka_driver_interfacesMsgFRIStateArray_robot_names value) > 16 then Left 22 else Right ()
  prefix0 <- W.encodeCount 16 (length (ros2Kuka_driver_interfacesMsgFRIStateArray_robot_names value))
  b0 <- B.concat <$> mapM (\e -> W.encodeText 64 True (e)) (ros2Kuka_driver_interfacesMsgFRIStateArray_robot_names value)
  if length (ros2Kuka_driver_interfacesMsgFRIStateArray_states value) > 16 then Left 22 else Right ()
  prefix1 <- W.encodeCount 16 (length (ros2Kuka_driver_interfacesMsgFRIStateArray_states value))
  b1 <- B.concat <$> mapM (\e -> encodeRos2Kuka_driver_interfacesMsgFRIState (e)) (ros2Kuka_driver_interfacesMsgFRIStateArray_states value)
  W.bounded 1736 [prefix0, b0, prefix1, b1]
-- | \@brief Read the ordered canonical fields of kuka_driver_interfaces/msg/FRIStateArray.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/haskell/API-CONTRACT.md
readRos2Kuka_driver_interfacesMsgFRIStateArray :: W.Decoder Ros2Kuka_driver_interfacesMsgFRIStateArray
readRos2Kuka_driver_interfacesMsgFRIStateArray = do
  count0 <- W.count 16
  a0 <- replicateM count0 (W.text 64 True)
  count1 <- W.count 16
  a1 <- replicateM count1 (readRos2Kuka_driver_interfacesMsgFRIState)
  let value = Ros2Kuka_driver_interfacesMsgFRIStateArray a0 a1
  case encodeRos2Kuka_driver_interfacesMsgFRIStateArray value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete kuka_driver_interfaces/msg/FRIStateArray value.
-- \@details Require the complete 8..1736-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Kuka_driver_interfacesMsgFRIStateArray :: B.ByteString -> Either Word32 Ros2Kuka_driver_interfacesMsgFRIStateArray
decodeRos2Kuka_driver_interfacesMsgFRIStateArray = W.runDecoder 1736 readRos2Kuka_driver_interfacesMsgFRIStateArray
instance Canonical Ros2Kuka_driver_interfacesMsgFRIStateArray where
  maximumBytes _ = 1736
  encodeValue = encodeRos2Kuka_driver_interfacesMsgFRIStateArray
  readValue = readRos2Kuka_driver_interfacesMsgFRIStateArray
-- | \@brief Complete ROS 2 kuka_driver_interfaces/msg/FriConfiguration value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
-- is identified by UWVMROS1_a60335766ad606adc5699c833cc6bc43adc3067691bcdbf587bbfb56e8a7127e.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Kuka_driver_interfacesMsgFriConfiguration = Ros2Kuka_driver_interfacesMsgFriConfiguration
  {
    -- | \@brief kuka_driver_interfaces/msg/FriConfiguration.receive_multiplier: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/haskell/API-CONTRACT.md
    ros2Kuka_driver_interfacesMsgFriConfiguration_receive_multiplier :: Int32
  ,
    -- | \@brief kuka_driver_interfaces/msg/FriConfiguration.send_period_ms: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/haskell/API-CONTRACT.md
    ros2Kuka_driver_interfacesMsgFriConfiguration_send_period_ms :: Int32
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of kuka_driver_interfaces/msg/FriConfiguration.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Kuka_driver_interfacesMsgFriConfiguration :: Ros2Kuka_driver_interfacesMsgFriConfiguration
defaultRos2Kuka_driver_interfacesMsgFriConfiguration = Ros2Kuka_driver_interfacesMsgFriConfiguration (0) (0)
-- | \@brief Canonical codec identity of kuka_driver_interfaces/msg/FriConfiguration.
-- \@details Exact identity UWVMROS1_a60335766ad606adc5699c833cc6bc43adc3067691bcdbf587bbfb56e8a7127e binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/haskell/API-CONTRACT.md
ros2Kuka_driver_interfacesMsgFriConfigurationCodecIdentity :: String
-- | \@brief Canonical codec identity of kuka_driver_interfaces/msg/FriConfiguration.
-- \@details Exact identity UWVMROS1_a60335766ad606adc5699c833cc6bc43adc3067691bcdbf587bbfb56e8a7127e binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/haskell/API-CONTRACT.md
ros2Kuka_driver_interfacesMsgFriConfigurationCodecIdentity =
    "UWVMROS1_a60335766ad606adc5699c833cc6bc43adc3067691bcdbf587bbfb56e8a7127e"
-- | \@brief Encode one complete kuka_driver_interfaces/msg/FriConfiguration value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
-- Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Kuka_driver_interfacesMsgFriConfiguration :: Ros2Kuka_driver_interfacesMsgFriConfiguration -> Either Word32 B.ByteString
encodeRos2Kuka_driver_interfacesMsgFriConfiguration value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros2Kuka_driver_interfacesMsgFriConfiguration_receive_multiplier value))
  b1 <- W.encodeSigned 4 (fromIntegral (ros2Kuka_driver_interfacesMsgFriConfiguration_send_period_ms value))
  W.bounded 8 [b0, b1]
-- | \@brief Read the ordered canonical fields of kuka_driver_interfaces/msg/FriConfiguration.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/haskell/API-CONTRACT.md
readRos2Kuka_driver_interfacesMsgFriConfiguration :: W.Decoder Ros2Kuka_driver_interfacesMsgFriConfiguration
readRos2Kuka_driver_interfacesMsgFriConfiguration = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- fromIntegral <$> W.signed 4
  let value = Ros2Kuka_driver_interfacesMsgFriConfiguration a0 a1
  case encodeRos2Kuka_driver_interfacesMsgFriConfiguration value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete kuka_driver_interfaces/msg/FriConfiguration value.
-- \@details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Kuka_driver_interfacesMsgFriConfiguration :: B.ByteString -> Either Word32 Ros2Kuka_driver_interfacesMsgFriConfiguration
decodeRos2Kuka_driver_interfacesMsgFriConfiguration = W.runDecoder 8 readRos2Kuka_driver_interfacesMsgFriConfiguration
instance Canonical Ros2Kuka_driver_interfacesMsgFriConfiguration where
  maximumBytes _ = 8
  encodeValue = encodeRos2Kuka_driver_interfacesMsgFriConfiguration
  readValue = readRos2Kuka_driver_interfacesMsgFriConfiguration
-- | \@brief Complete ROS 2 kuka_driver_interfaces/msg/HardwareEvent value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 5..517 bytes
-- and is identified by UWVMROS1_cb542e9311957712257c6d8ae273b3d2d2339760978e11e3798982c84fbc5e68.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Kuka_driver_interfacesMsgHardwareEvent = Ros2Kuka_driver_interfacesMsgHardwareEvent
  {
    -- | \@brief kuka_driver_interfaces/msg/HardwareEvent.robot_name: string; each string is 0..512 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/haskell/API-CONTRACT.md
    ros2Kuka_driver_interfacesMsgHardwareEvent_robot_name :: T.Text
  ,
    -- | \@brief kuka_driver_interfaces/msg/HardwareEvent.event: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/haskell/API-CONTRACT.md
    ros2Kuka_driver_interfacesMsgHardwareEvent_event :: Word8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of kuka_driver_interfaces/msg/HardwareEvent.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Kuka_driver_interfacesMsgHardwareEvent :: Ros2Kuka_driver_interfacesMsgHardwareEvent
defaultRos2Kuka_driver_interfacesMsgHardwareEvent = Ros2Kuka_driver_interfacesMsgHardwareEvent (T.empty) (0)
-- | \@brief Canonical codec identity of kuka_driver_interfaces/msg/HardwareEvent.
-- \@details Exact identity UWVMROS1_cb542e9311957712257c6d8ae273b3d2d2339760978e11e3798982c84fbc5e68 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/haskell/API-CONTRACT.md
ros2Kuka_driver_interfacesMsgHardwareEventCodecIdentity :: String
-- | \@brief Canonical codec identity of kuka_driver_interfaces/msg/HardwareEvent.
-- \@details Exact identity UWVMROS1_cb542e9311957712257c6d8ae273b3d2d2339760978e11e3798982c84fbc5e68 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/haskell/API-CONTRACT.md
ros2Kuka_driver_interfacesMsgHardwareEventCodecIdentity =
    "UWVMROS1_cb542e9311957712257c6d8ae273b3d2d2339760978e11e3798982c84fbc5e68"
-- | \@brief Encode one complete kuka_driver_interfaces/msg/HardwareEvent value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
-- Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Kuka_driver_interfacesMsgHardwareEvent :: Ros2Kuka_driver_interfacesMsgHardwareEvent -> Either Word32 B.ByteString
encodeRos2Kuka_driver_interfacesMsgHardwareEvent value = do
  b0 <- W.encodeText 512 True (ros2Kuka_driver_interfacesMsgHardwareEvent_robot_name value)
  b1 <- W.encodeUnsigned 1 (fromIntegral (ros2Kuka_driver_interfacesMsgHardwareEvent_event value))
  W.bounded 517 [b0, b1]
-- | \@brief Read the ordered canonical fields of kuka_driver_interfaces/msg/HardwareEvent.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/haskell/API-CONTRACT.md
readRos2Kuka_driver_interfacesMsgHardwareEvent :: W.Decoder Ros2Kuka_driver_interfacesMsgHardwareEvent
readRos2Kuka_driver_interfacesMsgHardwareEvent = do
  a0 <- W.text 512 True
  a1 <- fromIntegral <$> W.unsigned 1
  let value = Ros2Kuka_driver_interfacesMsgHardwareEvent a0 a1
  case encodeRos2Kuka_driver_interfacesMsgHardwareEvent value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete kuka_driver_interfaces/msg/HardwareEvent value.
-- \@details Require the complete 5..517-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Kuka_driver_interfacesMsgHardwareEvent :: B.ByteString -> Either Word32 Ros2Kuka_driver_interfacesMsgHardwareEvent
decodeRos2Kuka_driver_interfacesMsgHardwareEvent = W.runDecoder 517 readRos2Kuka_driver_interfacesMsgHardwareEvent
instance Canonical Ros2Kuka_driver_interfacesMsgHardwareEvent where
  maximumBytes _ = 517
  encodeValue = encodeRos2Kuka_driver_interfacesMsgHardwareEvent
  readValue = readRos2Kuka_driver_interfacesMsgHardwareEvent
-- | \@brief Complete ROS 2 kuka_driver_interfaces/msg/KssStatus value.
-- \@details All 9 declared fields are retained in source order. The canonical representation occupies 9..9 bytes and
-- is identified by UWVMROS1_b28bc2f19a0f410f0cd1d5b1d59daf1d09acb3e8312b4267f622a4d119f16b82.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Kuka_driver_interfacesMsgKssStatus = Ros2Kuka_driver_interfacesMsgKssStatus
  {
    -- | \@brief kuka_driver_interfaces/msg/KssStatus.control_mode: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Kuka_driver_interfacesMsgKssStatus_control_mode :: Word8
  ,
    -- | \@brief kuka_driver_interfaces/msg/KssStatus.cycle_time: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Kuka_driver_interfacesMsgKssStatus_cycle_time :: Word8
  ,
    -- | \@brief kuka_driver_interfaces/msg/KssStatus.drives_powered: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Kuka_driver_interfacesMsgKssStatus_drives_powered :: Bool
  ,
    -- | \@brief kuka_driver_interfaces/msg/KssStatus.emergency_stop: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Kuka_driver_interfacesMsgKssStatus_emergency_stop :: Bool
  ,
    -- | \@brief kuka_driver_interfaces/msg/KssStatus.guard_stop: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Kuka_driver_interfacesMsgKssStatus_guard_stop :: Bool
  ,
    -- | \@brief kuka_driver_interfaces/msg/KssStatus.in_motion: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Kuka_driver_interfacesMsgKssStatus_in_motion :: Bool
  ,
    -- | \@brief kuka_driver_interfaces/msg/KssStatus.motion_possible: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Kuka_driver_interfacesMsgKssStatus_motion_possible :: Bool
  ,
    -- | \@brief kuka_driver_interfaces/msg/KssStatus.operation_mode: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Kuka_driver_interfacesMsgKssStatus_operation_mode :: Word8
  ,
    -- | \@brief kuka_driver_interfaces/msg/KssStatus.robot_stopped: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Kuka_driver_interfacesMsgKssStatus_robot_stopped :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of kuka_driver_interfaces/msg/KssStatus.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Kuka_driver_interfacesMsgKssStatus :: Ros2Kuka_driver_interfacesMsgKssStatus
defaultRos2Kuka_driver_interfacesMsgKssStatus =
    Ros2Kuka_driver_interfacesMsgKssStatus
        (0)
        (0)
        (False)
        (False)
        (False)
        (False)
        (False)
        (0)
        (False)
-- | \@brief Canonical codec identity of kuka_driver_interfaces/msg/KssStatus.
-- \@details Exact identity UWVMROS1_b28bc2f19a0f410f0cd1d5b1d59daf1d09acb3e8312b4267f622a4d119f16b82 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Kuka_driver_interfacesMsgKssStatusCodecIdentity :: String
-- | \@brief Canonical codec identity of kuka_driver_interfaces/msg/KssStatus.
-- \@details Exact identity UWVMROS1_b28bc2f19a0f410f0cd1d5b1d59daf1d09acb3e8312b4267f622a4d119f16b82 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Kuka_driver_interfacesMsgKssStatusCodecIdentity =
    "UWVMROS1_b28bc2f19a0f410f0cd1d5b1d59daf1d09acb3e8312b4267f622a4d119f16b82"
-- | \@brief kuka_driver_interfaces/msg/KssStatus.UNSPECIFIED: original uint8 constant.
-- \@details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Kuka_driver_interfacesMsgKssStatus_UNSPECIFIED :: Word8
-- | \@brief kuka_driver_interfaces/msg/KssStatus.UNSPECIFIED: original uint8 constant.
-- \@details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Kuka_driver_interfacesMsgKssStatus_UNSPECIFIED = 0
-- | \@brief kuka_driver_interfaces/msg/KssStatus.JOINT_POSITION_CONTROL: original uint8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Kuka_driver_interfacesMsgKssStatus_JOINT_POSITION_CONTROL :: Word8
-- | \@brief kuka_driver_interfaces/msg/KssStatus.JOINT_POSITION_CONTROL: original uint8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Kuka_driver_interfacesMsgKssStatus_JOINT_POSITION_CONTROL = 1
-- | \@brief kuka_driver_interfaces/msg/KssStatus.CARTESIAN_POSITION_CONTROL: original uint8 constant.
-- \@details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Kuka_driver_interfacesMsgKssStatus_CARTESIAN_POSITION_CONTROL :: Word8
-- | \@brief kuka_driver_interfaces/msg/KssStatus.CARTESIAN_POSITION_CONTROL: original uint8 constant.
-- \@details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Kuka_driver_interfacesMsgKssStatus_CARTESIAN_POSITION_CONTROL = 5
-- | \@brief kuka_driver_interfaces/msg/KssStatus.RSI_4MS: original uint8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Kuka_driver_interfacesMsgKssStatus_RSI_4MS :: Word8
-- | \@brief kuka_driver_interfaces/msg/KssStatus.RSI_4MS: original uint8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Kuka_driver_interfacesMsgKssStatus_RSI_4MS = 1
-- | \@brief kuka_driver_interfaces/msg/KssStatus.RSI_12MS: original uint8 constant.
-- \@details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Kuka_driver_interfacesMsgKssStatus_RSI_12MS :: Word8
-- | \@brief kuka_driver_interfaces/msg/KssStatus.RSI_12MS: original uint8 constant.
-- \@details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Kuka_driver_interfacesMsgKssStatus_RSI_12MS = 2
-- | \@brief kuka_driver_interfaces/msg/KssStatus.T1: original uint8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Kuka_driver_interfacesMsgKssStatus_T1 :: Word8
-- | \@brief kuka_driver_interfaces/msg/KssStatus.T1: original uint8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Kuka_driver_interfacesMsgKssStatus_T1 = 1
-- | \@brief kuka_driver_interfaces/msg/KssStatus.T2: original uint8 constant.
-- \@details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Kuka_driver_interfacesMsgKssStatus_T2 :: Word8
-- | \@brief kuka_driver_interfaces/msg/KssStatus.T2: original uint8 constant.
-- \@details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Kuka_driver_interfacesMsgKssStatus_T2 = 2
-- | \@brief kuka_driver_interfaces/msg/KssStatus.AUT: original uint8 constant.
-- \@details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Kuka_driver_interfacesMsgKssStatus_AUT :: Word8
-- | \@brief kuka_driver_interfaces/msg/KssStatus.AUT: original uint8 constant.
-- \@details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Kuka_driver_interfacesMsgKssStatus_AUT = 3
-- | \@brief kuka_driver_interfaces/msg/KssStatus.EXT: original uint8 constant.
-- \@details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Kuka_driver_interfacesMsgKssStatus_EXT :: Word8
-- | \@brief kuka_driver_interfaces/msg/KssStatus.EXT: original uint8 constant.
-- \@details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Kuka_driver_interfacesMsgKssStatus_EXT = 4
-- | \@brief Encode one complete kuka_driver_interfaces/msg/KssStatus value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
-- Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Kuka_driver_interfacesMsgKssStatus :: Ros2Kuka_driver_interfacesMsgKssStatus -> Either Word32 B.ByteString
encodeRos2Kuka_driver_interfacesMsgKssStatus value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros2Kuka_driver_interfacesMsgKssStatus_control_mode value))
  b1 <- W.encodeUnsigned 1 (fromIntegral (ros2Kuka_driver_interfacesMsgKssStatus_cycle_time value))
  b2 <- W.encodeBool (ros2Kuka_driver_interfacesMsgKssStatus_drives_powered value)
  b3 <- W.encodeBool (ros2Kuka_driver_interfacesMsgKssStatus_emergency_stop value)
  b4 <- W.encodeBool (ros2Kuka_driver_interfacesMsgKssStatus_guard_stop value)
  b5 <- W.encodeBool (ros2Kuka_driver_interfacesMsgKssStatus_in_motion value)
  b6 <- W.encodeBool (ros2Kuka_driver_interfacesMsgKssStatus_motion_possible value)
  b7 <- W.encodeUnsigned 1 (fromIntegral (ros2Kuka_driver_interfacesMsgKssStatus_operation_mode value))
  b8 <- W.encodeBool (ros2Kuka_driver_interfacesMsgKssStatus_robot_stopped value)
  W.bounded 9 [b0, b1, b2, b3, b4, b5, b6, b7, b8]
-- | \@brief Read the ordered canonical fields of kuka_driver_interfaces/msg/KssStatus.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/haskell/API-CONTRACT.md
readRos2Kuka_driver_interfacesMsgKssStatus :: W.Decoder Ros2Kuka_driver_interfacesMsgKssStatus
readRos2Kuka_driver_interfacesMsgKssStatus = do
  a0 <- fromIntegral <$> W.unsigned 1
  a1 <- fromIntegral <$> W.unsigned 1
  a2 <- W.boolean
  a3 <- W.boolean
  a4 <- W.boolean
  a5 <- W.boolean
  a6 <- W.boolean
  a7 <- fromIntegral <$> W.unsigned 1
  a8 <- W.boolean
  let value = Ros2Kuka_driver_interfacesMsgKssStatus a0 a1 a2 a3 a4 a5 a6 a7 a8
  case encodeRos2Kuka_driver_interfacesMsgKssStatus value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete kuka_driver_interfaces/msg/KssStatus value.
-- \@details Require the complete 9..9-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Kuka_driver_interfacesMsgKssStatus :: B.ByteString -> Either Word32 Ros2Kuka_driver_interfacesMsgKssStatus
decodeRos2Kuka_driver_interfacesMsgKssStatus = W.runDecoder 9 readRos2Kuka_driver_interfacesMsgKssStatus
instance Canonical Ros2Kuka_driver_interfacesMsgKssStatus where
  maximumBytes _ = 9
  encodeValue = encodeRos2Kuka_driver_interfacesMsgKssStatus
  readValue = readRos2Kuka_driver_interfacesMsgKssStatus
-- | \@brief Complete ROS 2 kuka_driver_interfaces/msg/KssStatusArray value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 8..1240 bytes
-- and is identified by UWVMROS1_3c8e93b369eefea89c0aa56ab657721edd041ac66e18cfbf4fc4201df60dbebd.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Kuka_driver_interfacesMsgKssStatusArray = Ros2Kuka_driver_interfacesMsgKssStatusArray
  {
    -- | \@brief kuka_driver_interfaces/msg/KssStatusArray.robot_names: string; 0..16 elements; each string is 0..64
    -- bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/haskell/API-CONTRACT.md
    ros2Kuka_driver_interfacesMsgKssStatusArray_robot_names :: [T.Text]
  ,
    -- | \@brief kuka_driver_interfaces/msg/KssStatusArray.statuses: kuka_driver_interfaces/msg/KssStatus; 0..16
    -- elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/haskell/API-CONTRACT.md
    ros2Kuka_driver_interfacesMsgKssStatusArray_statuses :: [Ros2Kuka_driver_interfacesMsgKssStatus]
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of kuka_driver_interfaces/msg/KssStatusArray.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Kuka_driver_interfacesMsgKssStatusArray :: Ros2Kuka_driver_interfacesMsgKssStatusArray
defaultRos2Kuka_driver_interfacesMsgKssStatusArray = Ros2Kuka_driver_interfacesMsgKssStatusArray ([]) ([])
-- | \@brief Canonical codec identity of kuka_driver_interfaces/msg/KssStatusArray.
-- \@details Exact identity UWVMROS1_3c8e93b369eefea89c0aa56ab657721edd041ac66e18cfbf4fc4201df60dbebd binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/haskell/API-CONTRACT.md
ros2Kuka_driver_interfacesMsgKssStatusArrayCodecIdentity :: String
-- | \@brief Canonical codec identity of kuka_driver_interfaces/msg/KssStatusArray.
-- \@details Exact identity UWVMROS1_3c8e93b369eefea89c0aa56ab657721edd041ac66e18cfbf4fc4201df60dbebd binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/haskell/API-CONTRACT.md
ros2Kuka_driver_interfacesMsgKssStatusArrayCodecIdentity =
    "UWVMROS1_3c8e93b369eefea89c0aa56ab657721edd041ac66e18cfbf4fc4201df60dbebd"
-- | \@brief Encode one complete kuka_driver_interfaces/msg/KssStatusArray value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
-- Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Kuka_driver_interfacesMsgKssStatusArray :: Ros2Kuka_driver_interfacesMsgKssStatusArray -> Either Word32 B.ByteString
encodeRos2Kuka_driver_interfacesMsgKssStatusArray value = do
  if length (ros2Kuka_driver_interfacesMsgKssStatusArray_robot_names value) > 16 then Left 22 else Right ()
  prefix0 <- W.encodeCount 16 (length (ros2Kuka_driver_interfacesMsgKssStatusArray_robot_names value))
  b0 <- B.concat <$> mapM (\e -> W.encodeText 64 True (e)) (ros2Kuka_driver_interfacesMsgKssStatusArray_robot_names value)
  if length (ros2Kuka_driver_interfacesMsgKssStatusArray_statuses value) > 16 then Left 22 else Right ()
  prefix1 <- W.encodeCount 16 (length (ros2Kuka_driver_interfacesMsgKssStatusArray_statuses value))
  b1 <- B.concat <$> mapM (\e -> encodeRos2Kuka_driver_interfacesMsgKssStatus (e)) (ros2Kuka_driver_interfacesMsgKssStatusArray_statuses value)
  W.bounded 1240 [prefix0, b0, prefix1, b1]
-- | \@brief Read the ordered canonical fields of kuka_driver_interfaces/msg/KssStatusArray.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/haskell/API-CONTRACT.md
readRos2Kuka_driver_interfacesMsgKssStatusArray :: W.Decoder Ros2Kuka_driver_interfacesMsgKssStatusArray
readRos2Kuka_driver_interfacesMsgKssStatusArray = do
  count0 <- W.count 16
  a0 <- replicateM count0 (W.text 64 True)
  count1 <- W.count 16
  a1 <- replicateM count1 (readRos2Kuka_driver_interfacesMsgKssStatus)
  let value = Ros2Kuka_driver_interfacesMsgKssStatusArray a0 a1
  case encodeRos2Kuka_driver_interfacesMsgKssStatusArray value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete kuka_driver_interfaces/msg/KssStatusArray value.
-- \@details Require the complete 8..1240-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Kuka_driver_interfacesMsgKssStatusArray :: B.ByteString -> Either Word32 Ros2Kuka_driver_interfacesMsgKssStatusArray
decodeRos2Kuka_driver_interfacesMsgKssStatusArray = W.runDecoder 1240 readRos2Kuka_driver_interfacesMsgKssStatusArray
instance Canonical Ros2Kuka_driver_interfacesMsgKssStatusArray where
  maximumBytes _ = 1240
  encodeValue = encodeRos2Kuka_driver_interfacesMsgKssStatusArray
  readValue = readRos2Kuka_driver_interfacesMsgKssStatusArray
-- | \@brief Complete ROS 2 lifecycle_msgs/msg/State value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 5..517 bytes
-- and is identified by UWVMROS1_ebd49e5f87ddaa204cc4072ceef9840676c6f65f67448a027e26570dae0ded94.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Lifecycle_msgsMsgState = Ros2Lifecycle_msgsMsgState
  {
    -- | \@brief lifecycle_msgs/msg/State.id: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Lifecycle_msgsMsgState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Lifecycle_msgsMsgState_id :: Word8
  ,
    -- | \@brief lifecycle_msgs/msg/State.label: string; each string is 0..512 bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Lifecycle_msgsMsgState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Lifecycle_msgsMsgState_label :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of lifecycle_msgs/msg/State.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Lifecycle_msgsMsgState; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Lifecycle_msgsMsgState :: Ros2Lifecycle_msgsMsgState
defaultRos2Lifecycle_msgsMsgState = Ros2Lifecycle_msgsMsgState (0) (T.empty)
-- | \@brief Canonical codec identity of lifecycle_msgs/msg/State.
-- \@details Exact identity UWVMROS1_ebd49e5f87ddaa204cc4072ceef9840676c6f65f67448a027e26570dae0ded94 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Lifecycle_msgsMsgState; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgStateCodecIdentity :: String
-- | \@brief Canonical codec identity of lifecycle_msgs/msg/State.
-- \@details Exact identity UWVMROS1_ebd49e5f87ddaa204cc4072ceef9840676c6f65f67448a027e26570dae0ded94 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Lifecycle_msgsMsgState; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgStateCodecIdentity = "UWVMROS1_ebd49e5f87ddaa204cc4072ceef9840676c6f65f67448a027e26570dae0ded94"
-- | \@brief lifecycle_msgs/msg/State.PRIMARY_STATE_UNKNOWN: original uint8 constant.
-- \@details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgState; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgState_PRIMARY_STATE_UNKNOWN :: Word8
-- | \@brief lifecycle_msgs/msg/State.PRIMARY_STATE_UNKNOWN: original uint8 constant.
-- \@details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgState; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgState_PRIMARY_STATE_UNKNOWN = 0
-- | \@brief lifecycle_msgs/msg/State.PRIMARY_STATE_UNCONFIGURED: original uint8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgState; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgState_PRIMARY_STATE_UNCONFIGURED :: Word8
-- | \@brief lifecycle_msgs/msg/State.PRIMARY_STATE_UNCONFIGURED: original uint8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgState; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgState_PRIMARY_STATE_UNCONFIGURED = 1
-- | \@brief lifecycle_msgs/msg/State.PRIMARY_STATE_INACTIVE: original uint8 constant.
-- \@details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgState; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgState_PRIMARY_STATE_INACTIVE :: Word8
-- | \@brief lifecycle_msgs/msg/State.PRIMARY_STATE_INACTIVE: original uint8 constant.
-- \@details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgState; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgState_PRIMARY_STATE_INACTIVE = 2
-- | \@brief lifecycle_msgs/msg/State.PRIMARY_STATE_ACTIVE: original uint8 constant.
-- \@details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgState; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgState_PRIMARY_STATE_ACTIVE :: Word8
-- | \@brief lifecycle_msgs/msg/State.PRIMARY_STATE_ACTIVE: original uint8 constant.
-- \@details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgState; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgState_PRIMARY_STATE_ACTIVE = 3
-- | \@brief lifecycle_msgs/msg/State.PRIMARY_STATE_FINALIZED: original uint8 constant.
-- \@details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgState; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgState_PRIMARY_STATE_FINALIZED :: Word8
-- | \@brief lifecycle_msgs/msg/State.PRIMARY_STATE_FINALIZED: original uint8 constant.
-- \@details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgState; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgState_PRIMARY_STATE_FINALIZED = 4
-- | \@brief lifecycle_msgs/msg/State.TRANSITION_STATE_CONFIGURING: original uint8 constant.
-- \@details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgState; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgState_TRANSITION_STATE_CONFIGURING :: Word8
-- | \@brief lifecycle_msgs/msg/State.TRANSITION_STATE_CONFIGURING: original uint8 constant.
-- \@details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgState; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgState_TRANSITION_STATE_CONFIGURING = 10
-- | \@brief lifecycle_msgs/msg/State.TRANSITION_STATE_CLEANINGUP: original uint8 constant.
-- \@details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgState; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgState_TRANSITION_STATE_CLEANINGUP :: Word8
-- | \@brief lifecycle_msgs/msg/State.TRANSITION_STATE_CLEANINGUP: original uint8 constant.
-- \@details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgState; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgState_TRANSITION_STATE_CLEANINGUP = 11
-- | \@brief lifecycle_msgs/msg/State.TRANSITION_STATE_SHUTTINGDOWN: original uint8 constant.
-- \@details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgState; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgState_TRANSITION_STATE_SHUTTINGDOWN :: Word8
-- | \@brief lifecycle_msgs/msg/State.TRANSITION_STATE_SHUTTINGDOWN: original uint8 constant.
-- \@details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgState; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgState_TRANSITION_STATE_SHUTTINGDOWN = 12
-- | \@brief lifecycle_msgs/msg/State.TRANSITION_STATE_ACTIVATING: original uint8 constant.
-- \@details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgState; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgState_TRANSITION_STATE_ACTIVATING :: Word8
-- | \@brief lifecycle_msgs/msg/State.TRANSITION_STATE_ACTIVATING: original uint8 constant.
-- \@details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgState; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgState_TRANSITION_STATE_ACTIVATING = 13
-- | \@brief lifecycle_msgs/msg/State.TRANSITION_STATE_DEACTIVATING: original uint8 constant.
-- \@details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgState; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgState_TRANSITION_STATE_DEACTIVATING :: Word8
-- | \@brief lifecycle_msgs/msg/State.TRANSITION_STATE_DEACTIVATING: original uint8 constant.
-- \@details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgState; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgState_TRANSITION_STATE_DEACTIVATING = 14
-- | \@brief lifecycle_msgs/msg/State.TRANSITION_STATE_ERRORPROCESSING: original uint8 constant.
-- \@details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgState; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgState_TRANSITION_STATE_ERRORPROCESSING :: Word8
-- | \@brief lifecycle_msgs/msg/State.TRANSITION_STATE_ERRORPROCESSING: original uint8 constant.
-- \@details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgState; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgState_TRANSITION_STATE_ERRORPROCESSING = 15
-- | \@brief Encode one complete lifecycle_msgs/msg/State value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
-- Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Lifecycle_msgsMsgState; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Lifecycle_msgsMsgState :: Ros2Lifecycle_msgsMsgState -> Either Word32 B.ByteString
encodeRos2Lifecycle_msgsMsgState value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros2Lifecycle_msgsMsgState_id value))
  b1 <- W.encodeText 512 True (ros2Lifecycle_msgsMsgState_label value)
  W.bounded 517 [b0, b1]
-- | \@brief Read the ordered canonical fields of lifecycle_msgs/msg/State.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Lifecycle_msgsMsgState; share/platform/ros/haskell/API-CONTRACT.md
readRos2Lifecycle_msgsMsgState :: W.Decoder Ros2Lifecycle_msgsMsgState
readRos2Lifecycle_msgsMsgState = do
  a0 <- fromIntegral <$> W.unsigned 1
  a1 <- W.text 512 True
  let value = Ros2Lifecycle_msgsMsgState a0 a1
  case encodeRos2Lifecycle_msgsMsgState value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete lifecycle_msgs/msg/State value.
-- \@details Require the complete 5..517-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Lifecycle_msgsMsgState; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Lifecycle_msgsMsgState :: B.ByteString -> Either Word32 Ros2Lifecycle_msgsMsgState
decodeRos2Lifecycle_msgsMsgState = W.runDecoder 517 readRos2Lifecycle_msgsMsgState
instance Canonical Ros2Lifecycle_msgsMsgState where
  maximumBytes _ = 517
  encodeValue = encodeRos2Lifecycle_msgsMsgState
  readValue = readRos2Lifecycle_msgsMsgState
-- | \@brief Complete ROS 2 lifecycle_msgs/msg/Transition value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 5..517 bytes
-- and is identified by UWVMROS1_1f9bb864622854b446a37cf3c6e29e9cf41f8efa37375c5a56205b4c02ed10cb.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Lifecycle_msgsMsgTransition = Ros2Lifecycle_msgsMsgTransition
  {
    -- | \@brief lifecycle_msgs/msg/Transition.id: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
    ros2Lifecycle_msgsMsgTransition_id :: Word8
  ,
    -- | \@brief lifecycle_msgs/msg/Transition.label: string; each string is 0..512 bytes; strict UTF-8 with no embedded
    -- NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
    ros2Lifecycle_msgsMsgTransition_label :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of lifecycle_msgs/msg/Transition.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Lifecycle_msgsMsgTransition :: Ros2Lifecycle_msgsMsgTransition
defaultRos2Lifecycle_msgsMsgTransition = Ros2Lifecycle_msgsMsgTransition (0) (T.empty)
-- | \@brief Canonical codec identity of lifecycle_msgs/msg/Transition.
-- \@details Exact identity UWVMROS1_1f9bb864622854b446a37cf3c6e29e9cf41f8efa37375c5a56205b4c02ed10cb binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransitionCodecIdentity :: String
-- | \@brief Canonical codec identity of lifecycle_msgs/msg/Transition.
-- \@details Exact identity UWVMROS1_1f9bb864622854b446a37cf3c6e29e9cf41f8efa37375c5a56205b4c02ed10cb binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransitionCodecIdentity =
    "UWVMROS1_1f9bb864622854b446a37cf3c6e29e9cf41f8efa37375c5a56205b4c02ed10cb"
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_CREATE: original uint8 constant.
-- \@details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_CREATE :: Word8
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_CREATE: original uint8 constant.
-- \@details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_CREATE = 0
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_CONFIGURE: original uint8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_CONFIGURE :: Word8
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_CONFIGURE: original uint8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_CONFIGURE = 1
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_CLEANUP: original uint8 constant.
-- \@details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_CLEANUP :: Word8
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_CLEANUP: original uint8 constant.
-- \@details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_CLEANUP = 2
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ACTIVATE: original uint8 constant.
-- \@details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ACTIVATE :: Word8
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ACTIVATE: original uint8 constant.
-- \@details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ACTIVATE = 3
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_DEACTIVATE: original uint8 constant.
-- \@details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_DEACTIVATE :: Word8
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_DEACTIVATE: original uint8 constant.
-- \@details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_DEACTIVATE = 4
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_UNCONFIGURED_SHUTDOWN: original uint8 constant.
-- \@details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_UNCONFIGURED_SHUTDOWN :: Word8
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_UNCONFIGURED_SHUTDOWN: original uint8 constant.
-- \@details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_UNCONFIGURED_SHUTDOWN = 5
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_INACTIVE_SHUTDOWN: original uint8 constant.
-- \@details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_INACTIVE_SHUTDOWN :: Word8
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_INACTIVE_SHUTDOWN: original uint8 constant.
-- \@details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_INACTIVE_SHUTDOWN = 6
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ACTIVE_SHUTDOWN: original uint8 constant.
-- \@details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ACTIVE_SHUTDOWN :: Word8
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ACTIVE_SHUTDOWN: original uint8 constant.
-- \@details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ACTIVE_SHUTDOWN = 7
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_DESTROY: original uint8 constant.
-- \@details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_DESTROY :: Word8
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_DESTROY: original uint8 constant.
-- \@details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_DESTROY = 8
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ON_CONFIGURE_SUCCESS: original uint8 constant.
-- \@details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_CONFIGURE_SUCCESS :: Word8
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ON_CONFIGURE_SUCCESS: original uint8 constant.
-- \@details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_CONFIGURE_SUCCESS = 10
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ON_CONFIGURE_FAILURE: original uint8 constant.
-- \@details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_CONFIGURE_FAILURE :: Word8
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ON_CONFIGURE_FAILURE: original uint8 constant.
-- \@details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_CONFIGURE_FAILURE = 11
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ON_CONFIGURE_ERROR: original uint8 constant.
-- \@details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_CONFIGURE_ERROR :: Word8
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ON_CONFIGURE_ERROR: original uint8 constant.
-- \@details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_CONFIGURE_ERROR = 12
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ON_CLEANUP_SUCCESS: original uint8 constant.
-- \@details Exact admitted value 20. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_CLEANUP_SUCCESS :: Word8
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ON_CLEANUP_SUCCESS: original uint8 constant.
-- \@details Exact admitted value 20. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_CLEANUP_SUCCESS = 20
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ON_CLEANUP_FAILURE: original uint8 constant.
-- \@details Exact admitted value 21. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_CLEANUP_FAILURE :: Word8
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ON_CLEANUP_FAILURE: original uint8 constant.
-- \@details Exact admitted value 21. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_CLEANUP_FAILURE = 21
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ON_CLEANUP_ERROR: original uint8 constant.
-- \@details Exact admitted value 22. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_CLEANUP_ERROR :: Word8
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ON_CLEANUP_ERROR: original uint8 constant.
-- \@details Exact admitted value 22. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_CLEANUP_ERROR = 22
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ON_ACTIVATE_SUCCESS: original uint8 constant.
-- \@details Exact admitted value 30. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_ACTIVATE_SUCCESS :: Word8
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ON_ACTIVATE_SUCCESS: original uint8 constant.
-- \@details Exact admitted value 30. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_ACTIVATE_SUCCESS = 30
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ON_ACTIVATE_FAILURE: original uint8 constant.
-- \@details Exact admitted value 31. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_ACTIVATE_FAILURE :: Word8
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ON_ACTIVATE_FAILURE: original uint8 constant.
-- \@details Exact admitted value 31. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_ACTIVATE_FAILURE = 31
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ON_ACTIVATE_ERROR: original uint8 constant.
-- \@details Exact admitted value 32. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_ACTIVATE_ERROR :: Word8
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ON_ACTIVATE_ERROR: original uint8 constant.
-- \@details Exact admitted value 32. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_ACTIVATE_ERROR = 32
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ON_DEACTIVATE_SUCCESS: original uint8 constant.
-- \@details Exact admitted value 40. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_DEACTIVATE_SUCCESS :: Word8
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ON_DEACTIVATE_SUCCESS: original uint8 constant.
-- \@details Exact admitted value 40. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_DEACTIVATE_SUCCESS = 40
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ON_DEACTIVATE_FAILURE: original uint8 constant.
-- \@details Exact admitted value 41. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_DEACTIVATE_FAILURE :: Word8
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ON_DEACTIVATE_FAILURE: original uint8 constant.
-- \@details Exact admitted value 41. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_DEACTIVATE_FAILURE = 41
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ON_DEACTIVATE_ERROR: original uint8 constant.
-- \@details Exact admitted value 42. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_DEACTIVATE_ERROR :: Word8
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ON_DEACTIVATE_ERROR: original uint8 constant.
-- \@details Exact admitted value 42. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_DEACTIVATE_ERROR = 42
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ON_SHUTDOWN_SUCCESS: original uint8 constant.
-- \@details Exact admitted value 50. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_SHUTDOWN_SUCCESS :: Word8
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ON_SHUTDOWN_SUCCESS: original uint8 constant.
-- \@details Exact admitted value 50. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_SHUTDOWN_SUCCESS = 50
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ON_SHUTDOWN_FAILURE: original uint8 constant.
-- \@details Exact admitted value 51. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_SHUTDOWN_FAILURE :: Word8
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ON_SHUTDOWN_FAILURE: original uint8 constant.
-- \@details Exact admitted value 51. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_SHUTDOWN_FAILURE = 51
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ON_SHUTDOWN_ERROR: original uint8 constant.
-- \@details Exact admitted value 52. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_SHUTDOWN_ERROR :: Word8
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ON_SHUTDOWN_ERROR: original uint8 constant.
-- \@details Exact admitted value 52. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_SHUTDOWN_ERROR = 52
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ON_ERROR_SUCCESS: original uint8 constant.
-- \@details Exact admitted value 60. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_ERROR_SUCCESS :: Word8
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ON_ERROR_SUCCESS: original uint8 constant.
-- \@details Exact admitted value 60. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_ERROR_SUCCESS = 60
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ON_ERROR_FAILURE: original uint8 constant.
-- \@details Exact admitted value 61. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_ERROR_FAILURE :: Word8
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ON_ERROR_FAILURE: original uint8 constant.
-- \@details Exact admitted value 61. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_ERROR_FAILURE = 61
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ON_ERROR_ERROR: original uint8 constant.
-- \@details Exact admitted value 62. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_ERROR_ERROR :: Word8
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_ON_ERROR_ERROR: original uint8 constant.
-- \@details Exact admitted value 62. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_ERROR_ERROR = 62
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_CALLBACK_SUCCESS: original uint8 constant.
-- \@details Exact admitted value 97. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_CALLBACK_SUCCESS :: Word8
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_CALLBACK_SUCCESS: original uint8 constant.
-- \@details Exact admitted value 97. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_CALLBACK_SUCCESS = 97
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_CALLBACK_FAILURE: original uint8 constant.
-- \@details Exact admitted value 98. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_CALLBACK_FAILURE :: Word8
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_CALLBACK_FAILURE: original uint8 constant.
-- \@details Exact admitted value 98. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_CALLBACK_FAILURE = 98
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_CALLBACK_ERROR: original uint8 constant.
-- \@details Exact admitted value 99. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_CALLBACK_ERROR :: Word8
-- | \@brief lifecycle_msgs/msg/Transition.TRANSITION_CALLBACK_ERROR: original uint8 constant.
-- \@details Exact admitted value 99. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsMsgTransition_TRANSITION_CALLBACK_ERROR = 99
-- | \@brief Encode one complete lifecycle_msgs/msg/Transition value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
-- Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Lifecycle_msgsMsgTransition :: Ros2Lifecycle_msgsMsgTransition -> Either Word32 B.ByteString
encodeRos2Lifecycle_msgsMsgTransition value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros2Lifecycle_msgsMsgTransition_id value))
  b1 <- W.encodeText 512 True (ros2Lifecycle_msgsMsgTransition_label value)
  W.bounded 517 [b0, b1]
-- | \@brief Read the ordered canonical fields of lifecycle_msgs/msg/Transition.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
readRos2Lifecycle_msgsMsgTransition :: W.Decoder Ros2Lifecycle_msgsMsgTransition
readRos2Lifecycle_msgsMsgTransition = do
  a0 <- fromIntegral <$> W.unsigned 1
  a1 <- W.text 512 True
  let value = Ros2Lifecycle_msgsMsgTransition a0 a1
  case encodeRos2Lifecycle_msgsMsgTransition value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete lifecycle_msgs/msg/Transition value.
-- \@details Require the complete 5..517-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Lifecycle_msgsMsgTransition :: B.ByteString -> Either Word32 Ros2Lifecycle_msgsMsgTransition
decodeRos2Lifecycle_msgsMsgTransition = W.runDecoder 517 readRos2Lifecycle_msgsMsgTransition
instance Canonical Ros2Lifecycle_msgsMsgTransition where
  maximumBytes _ = 517
  encodeValue = encodeRos2Lifecycle_msgsMsgTransition
  readValue = readRos2Lifecycle_msgsMsgTransition
-- | \@brief Complete ROS 2 lifecycle_msgs/srv/ChangeState_Request value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies 5..517 bytes
-- and is identified by UWVMROS1_b04270f03616b8e581036d327d18bde62d38627ae8acf88fb77d0ed7b3b3d3d1.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Lifecycle_msgsSrvChangeState_Request = Ros2Lifecycle_msgsSrvChangeState_Request
  {
    -- | \@brief lifecycle_msgs/srv/ChangeState_Request.transition: lifecycle_msgs/msg/Transition.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Lifecycle_msgsSrvChangeState_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Lifecycle_msgsSrvChangeState_Request_transition :: Ros2Lifecycle_msgsMsgTransition
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of lifecycle_msgs/srv/ChangeState_Request.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Lifecycle_msgsSrvChangeState_Request; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Lifecycle_msgsSrvChangeState_Request :: Ros2Lifecycle_msgsSrvChangeState_Request
defaultRos2Lifecycle_msgsSrvChangeState_Request =
    Ros2Lifecycle_msgsSrvChangeState_Request
        (defaultRos2Lifecycle_msgsMsgTransition)
-- | \@brief Canonical codec identity of lifecycle_msgs/srv/ChangeState_Request.
-- \@details Exact identity UWVMROS1_b04270f03616b8e581036d327d18bde62d38627ae8acf88fb77d0ed7b3b3d3d1 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Lifecycle_msgsSrvChangeState_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsSrvChangeState_RequestCodecIdentity :: String
-- | \@brief Canonical codec identity of lifecycle_msgs/srv/ChangeState_Request.
-- \@details Exact identity UWVMROS1_b04270f03616b8e581036d327d18bde62d38627ae8acf88fb77d0ed7b3b3d3d1 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Lifecycle_msgsSrvChangeState_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsSrvChangeState_RequestCodecIdentity =
    "UWVMROS1_b04270f03616b8e581036d327d18bde62d38627ae8acf88fb77d0ed7b3b3d3d1"
-- | \@brief Encode one complete lifecycle_msgs/srv/ChangeState_Request value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
-- Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Lifecycle_msgsSrvChangeState_Request; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Lifecycle_msgsSrvChangeState_Request :: Ros2Lifecycle_msgsSrvChangeState_Request -> Either Word32 B.ByteString
encodeRos2Lifecycle_msgsSrvChangeState_Request value = do
  b0 <- encodeRos2Lifecycle_msgsMsgTransition (ros2Lifecycle_msgsSrvChangeState_Request_transition value)
  W.bounded 517 [b0]
-- | \@brief Read the ordered canonical fields of lifecycle_msgs/srv/ChangeState_Request.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Lifecycle_msgsSrvChangeState_Request; share/platform/ros/haskell/API-CONTRACT.md
readRos2Lifecycle_msgsSrvChangeState_Request :: W.Decoder Ros2Lifecycle_msgsSrvChangeState_Request
readRos2Lifecycle_msgsSrvChangeState_Request = do
  a0 <- readRos2Lifecycle_msgsMsgTransition
  let value = Ros2Lifecycle_msgsSrvChangeState_Request a0
  case encodeRos2Lifecycle_msgsSrvChangeState_Request value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete lifecycle_msgs/srv/ChangeState_Request value.
-- \@details Require the complete 5..517-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Lifecycle_msgsSrvChangeState_Request; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Lifecycle_msgsSrvChangeState_Request :: B.ByteString -> Either Word32 Ros2Lifecycle_msgsSrvChangeState_Request
decodeRos2Lifecycle_msgsSrvChangeState_Request = W.runDecoder 517 readRos2Lifecycle_msgsSrvChangeState_Request
instance Canonical Ros2Lifecycle_msgsSrvChangeState_Request where
  maximumBytes _ = 517
  encodeValue = encodeRos2Lifecycle_msgsSrvChangeState_Request
  readValue = readRos2Lifecycle_msgsSrvChangeState_Request
-- | \@brief Complete ROS 2 lifecycle_msgs/srv/ChangeState_Response value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and
-- is identified by UWVMROS1_d2dc541d6995976a2a1a2c03d499aa9dccaf487736b11704d778c86fddaf5032.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Lifecycle_msgsSrvChangeState_Response = Ros2Lifecycle_msgsSrvChangeState_Response
  {
    -- | \@brief lifecycle_msgs/srv/ChangeState_Response.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Lifecycle_msgsSrvChangeState_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Lifecycle_msgsSrvChangeState_Response_success :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of lifecycle_msgs/srv/ChangeState_Response.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Lifecycle_msgsSrvChangeState_Response; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Lifecycle_msgsSrvChangeState_Response :: Ros2Lifecycle_msgsSrvChangeState_Response
defaultRos2Lifecycle_msgsSrvChangeState_Response = Ros2Lifecycle_msgsSrvChangeState_Response (False)
-- | \@brief Canonical codec identity of lifecycle_msgs/srv/ChangeState_Response.
-- \@details Exact identity UWVMROS1_d2dc541d6995976a2a1a2c03d499aa9dccaf487736b11704d778c86fddaf5032 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Lifecycle_msgsSrvChangeState_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsSrvChangeState_ResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of lifecycle_msgs/srv/ChangeState_Response.
-- \@details Exact identity UWVMROS1_d2dc541d6995976a2a1a2c03d499aa9dccaf487736b11704d778c86fddaf5032 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Lifecycle_msgsSrvChangeState_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsSrvChangeState_ResponseCodecIdentity =
    "UWVMROS1_d2dc541d6995976a2a1a2c03d499aa9dccaf487736b11704d778c86fddaf5032"
-- | \@brief Encode one complete lifecycle_msgs/srv/ChangeState_Response value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
-- Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Lifecycle_msgsSrvChangeState_Response; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Lifecycle_msgsSrvChangeState_Response :: Ros2Lifecycle_msgsSrvChangeState_Response -> Either Word32 B.ByteString
encodeRos2Lifecycle_msgsSrvChangeState_Response value = do
  b0 <- W.encodeBool (ros2Lifecycle_msgsSrvChangeState_Response_success value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of lifecycle_msgs/srv/ChangeState_Response.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Lifecycle_msgsSrvChangeState_Response; share/platform/ros/haskell/API-CONTRACT.md
readRos2Lifecycle_msgsSrvChangeState_Response :: W.Decoder Ros2Lifecycle_msgsSrvChangeState_Response
readRos2Lifecycle_msgsSrvChangeState_Response = do
  a0 <- W.boolean
  let value = Ros2Lifecycle_msgsSrvChangeState_Response a0
  case encodeRos2Lifecycle_msgsSrvChangeState_Response value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete lifecycle_msgs/srv/ChangeState_Response value.
-- \@details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Lifecycle_msgsSrvChangeState_Response; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Lifecycle_msgsSrvChangeState_Response :: B.ByteString -> Either Word32 Ros2Lifecycle_msgsSrvChangeState_Response
decodeRos2Lifecycle_msgsSrvChangeState_Response = W.runDecoder 1 readRos2Lifecycle_msgsSrvChangeState_Response
instance Canonical Ros2Lifecycle_msgsSrvChangeState_Response where
  maximumBytes _ = 1
  encodeValue = encodeRos2Lifecycle_msgsSrvChangeState_Response
  readValue = readRos2Lifecycle_msgsSrvChangeState_Response
-- | \@brief Complete ROS 2 lifecycle_msgs/srv/GetState_Request value.
-- \@details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and
-- is identified by UWVMROS1_86a3d813de32971a271e062acfaf201eb718aff8d68a4e343d6fceaae2b5098d.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Lifecycle_msgsSrvGetState_Request = Ros2Lifecycle_msgsSrvGetState_Request deriving (Eq, Show)
-- | \@brief Construct the declared defaults of lifecycle_msgs/srv/GetState_Request.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Lifecycle_msgsSrvGetState_Request; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Lifecycle_msgsSrvGetState_Request :: Ros2Lifecycle_msgsSrvGetState_Request
defaultRos2Lifecycle_msgsSrvGetState_Request = Ros2Lifecycle_msgsSrvGetState_Request 
-- | \@brief Canonical codec identity of lifecycle_msgs/srv/GetState_Request.
-- \@details Exact identity UWVMROS1_86a3d813de32971a271e062acfaf201eb718aff8d68a4e343d6fceaae2b5098d binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Lifecycle_msgsSrvGetState_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsSrvGetState_RequestCodecIdentity :: String
-- | \@brief Canonical codec identity of lifecycle_msgs/srv/GetState_Request.
-- \@details Exact identity UWVMROS1_86a3d813de32971a271e062acfaf201eb718aff8d68a4e343d6fceaae2b5098d binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Lifecycle_msgsSrvGetState_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsSrvGetState_RequestCodecIdentity =
    "UWVMROS1_86a3d813de32971a271e062acfaf201eb718aff8d68a4e343d6fceaae2b5098d"
-- | \@brief Encode one complete lifecycle_msgs/srv/GetState_Request value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
-- Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Lifecycle_msgsSrvGetState_Request; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Lifecycle_msgsSrvGetState_Request :: Ros2Lifecycle_msgsSrvGetState_Request -> Either Word32 B.ByteString
encodeRos2Lifecycle_msgsSrvGetState_Request value = do
  W.bounded 0 []
-- | \@brief Read the ordered canonical fields of lifecycle_msgs/srv/GetState_Request.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Lifecycle_msgsSrvGetState_Request; share/platform/ros/haskell/API-CONTRACT.md
readRos2Lifecycle_msgsSrvGetState_Request :: W.Decoder Ros2Lifecycle_msgsSrvGetState_Request
readRos2Lifecycle_msgsSrvGetState_Request = do
  let value = Ros2Lifecycle_msgsSrvGetState_Request 
  case encodeRos2Lifecycle_msgsSrvGetState_Request value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete lifecycle_msgs/srv/GetState_Request value.
-- \@details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Lifecycle_msgsSrvGetState_Request; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Lifecycle_msgsSrvGetState_Request :: B.ByteString -> Either Word32 Ros2Lifecycle_msgsSrvGetState_Request
decodeRos2Lifecycle_msgsSrvGetState_Request = W.runDecoder 0 readRos2Lifecycle_msgsSrvGetState_Request
instance Canonical Ros2Lifecycle_msgsSrvGetState_Request where
  maximumBytes _ = 0
  encodeValue = encodeRos2Lifecycle_msgsSrvGetState_Request
  readValue = readRos2Lifecycle_msgsSrvGetState_Request
-- | \@brief Complete ROS 2 lifecycle_msgs/srv/GetState_Response value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies 5..517 bytes
-- and is identified by UWVMROS1_697418ec4095e98c855b1f9d238a3bd74a59ccbbc3eb31981c4df3c3b829ea39.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Lifecycle_msgsSrvGetState_Response = Ros2Lifecycle_msgsSrvGetState_Response
  {
    -- | \@brief lifecycle_msgs/srv/GetState_Response.current_state: lifecycle_msgs/msg/State.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Lifecycle_msgsSrvGetState_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Lifecycle_msgsSrvGetState_Response_current_state :: Ros2Lifecycle_msgsMsgState
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of lifecycle_msgs/srv/GetState_Response.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Lifecycle_msgsSrvGetState_Response; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Lifecycle_msgsSrvGetState_Response :: Ros2Lifecycle_msgsSrvGetState_Response
defaultRos2Lifecycle_msgsSrvGetState_Response =
    Ros2Lifecycle_msgsSrvGetState_Response
        (defaultRos2Lifecycle_msgsMsgState)
-- | \@brief Canonical codec identity of lifecycle_msgs/srv/GetState_Response.
-- \@details Exact identity UWVMROS1_697418ec4095e98c855b1f9d238a3bd74a59ccbbc3eb31981c4df3c3b829ea39 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Lifecycle_msgsSrvGetState_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsSrvGetState_ResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of lifecycle_msgs/srv/GetState_Response.
-- \@details Exact identity UWVMROS1_697418ec4095e98c855b1f9d238a3bd74a59ccbbc3eb31981c4df3c3b829ea39 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Lifecycle_msgsSrvGetState_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Lifecycle_msgsSrvGetState_ResponseCodecIdentity =
    "UWVMROS1_697418ec4095e98c855b1f9d238a3bd74a59ccbbc3eb31981c4df3c3b829ea39"
-- | \@brief Encode one complete lifecycle_msgs/srv/GetState_Response value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
-- Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Lifecycle_msgsSrvGetState_Response; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Lifecycle_msgsSrvGetState_Response :: Ros2Lifecycle_msgsSrvGetState_Response -> Either Word32 B.ByteString
encodeRos2Lifecycle_msgsSrvGetState_Response value = do
  b0 <- encodeRos2Lifecycle_msgsMsgState (ros2Lifecycle_msgsSrvGetState_Response_current_state value)
  W.bounded 517 [b0]
-- | \@brief Read the ordered canonical fields of lifecycle_msgs/srv/GetState_Response.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Lifecycle_msgsSrvGetState_Response; share/platform/ros/haskell/API-CONTRACT.md
readRos2Lifecycle_msgsSrvGetState_Response :: W.Decoder Ros2Lifecycle_msgsSrvGetState_Response
readRos2Lifecycle_msgsSrvGetState_Response = do
  a0 <- readRos2Lifecycle_msgsMsgState
  let value = Ros2Lifecycle_msgsSrvGetState_Response a0
  case encodeRos2Lifecycle_msgsSrvGetState_Response value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete lifecycle_msgs/srv/GetState_Response value.
-- \@details Require the complete 5..517-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Lifecycle_msgsSrvGetState_Response; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Lifecycle_msgsSrvGetState_Response :: B.ByteString -> Either Word32 Ros2Lifecycle_msgsSrvGetState_Response
decodeRos2Lifecycle_msgsSrvGetState_Response = W.runDecoder 517 readRos2Lifecycle_msgsSrvGetState_Response
instance Canonical Ros2Lifecycle_msgsSrvGetState_Response where
  maximumBytes _ = 517
  encodeValue = encodeRos2Lifecycle_msgsSrvGetState_Response
  readValue = readRos2Lifecycle_msgsSrvGetState_Response
-- | \@brief Complete ROS 2 sensor_msgs/msg/JointState value.
-- \@details All 5 declared fields are retained in source order. The canonical representation occupies 28..1196 bytes
-- and is identified by UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Sensor_msgsMsgJointState = Ros2Sensor_msgsMsgJointState
  {
    -- | \@brief sensor_msgs/msg/JointState.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgJointState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Sensor_msgsMsgJointState_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief sensor_msgs/msg/JointState.name: string; 0..12 elements; each string is 0..64 bytes; strict UTF-8 with
    -- no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgJointState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Sensor_msgsMsgJointState_name :: [T.Text]
  ,
    -- | \@brief sensor_msgs/msg/JointState.position: float64; 0..12 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgJointState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Sensor_msgsMsgJointState_position :: [Double]
  ,
    -- | \@brief sensor_msgs/msg/JointState.velocity: float64; 0..12 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgJointState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Sensor_msgsMsgJointState_velocity :: [Double]
  ,
    -- | \@brief sensor_msgs/msg/JointState.effort: float64; 0..12 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgJointState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Sensor_msgsMsgJointState_effort :: [Double]
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of sensor_msgs/msg/JointState.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Sensor_msgsMsgJointState; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Sensor_msgsMsgJointState :: Ros2Sensor_msgsMsgJointState
defaultRos2Sensor_msgsMsgJointState = Ros2Sensor_msgsMsgJointState (defaultRos2Std_msgsMsgHeader) ([]) ([]) ([]) ([])
-- | \@brief Canonical codec identity of sensor_msgs/msg/JointState.
-- \@details Exact identity UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Sensor_msgsMsgJointState; share/platform/ros/haskell/API-CONTRACT.md
ros2Sensor_msgsMsgJointStateCodecIdentity :: String
-- | \@brief Canonical codec identity of sensor_msgs/msg/JointState.
-- \@details Exact identity UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Sensor_msgsMsgJointState; share/platform/ros/haskell/API-CONTRACT.md
ros2Sensor_msgsMsgJointStateCodecIdentity = "UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884"
-- | \@brief Encode one complete sensor_msgs/msg/JointState value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
-- Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Sensor_msgsMsgJointState; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Sensor_msgsMsgJointState :: Ros2Sensor_msgsMsgJointState -> Either Word32 B.ByteString
encodeRos2Sensor_msgsMsgJointState value = do
  if (length (ros2Sensor_msgsMsgJointState_name value) /= 0
      && length (ros2Sensor_msgsMsgJointState_position value) /= 0
      && length (ros2Sensor_msgsMsgJointState_name value) /= length (ros2Sensor_msgsMsgJointState_position value))
      || (length (ros2Sensor_msgsMsgJointState_name value) /= 0
      && length (ros2Sensor_msgsMsgJointState_velocity value) /= 0
      && length (ros2Sensor_msgsMsgJointState_name value) /= length (ros2Sensor_msgsMsgJointState_velocity value))
      || (length (ros2Sensor_msgsMsgJointState_name value) /= 0
      && length (ros2Sensor_msgsMsgJointState_effort value) /= 0
      && length (ros2Sensor_msgsMsgJointState_name value) /= length (ros2Sensor_msgsMsgJointState_effort value))
      || (length (ros2Sensor_msgsMsgJointState_position value) /= 0
      && length (ros2Sensor_msgsMsgJointState_velocity value) /= 0
      && length (ros2Sensor_msgsMsgJointState_position value) /= length (ros2Sensor_msgsMsgJointState_velocity value))
      || (length (ros2Sensor_msgsMsgJointState_position value) /= 0
      && length (ros2Sensor_msgsMsgJointState_effort value) /= 0
      && length (ros2Sensor_msgsMsgJointState_position value) /= length (ros2Sensor_msgsMsgJointState_effort value))
      || (length (ros2Sensor_msgsMsgJointState_velocity value) /= 0
      && length (ros2Sensor_msgsMsgJointState_effort value) /= 0
      && length (ros2Sensor_msgsMsgJointState_velocity value) /= length (ros2Sensor_msgsMsgJointState_effort value))
      then Left 22
      else Right ()
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Sensor_msgsMsgJointState_header value)
  if length (ros2Sensor_msgsMsgJointState_name value) > 12 then Left 22 else Right ()
  prefix1 <- W.encodeCount 12 (length (ros2Sensor_msgsMsgJointState_name value))
  b1 <- B.concat <$> mapM (\e -> W.encodeText 64 True (e)) (ros2Sensor_msgsMsgJointState_name value)
  if length (ros2Sensor_msgsMsgJointState_position value) > 12 then Left 22 else Right ()
  prefix2 <- W.encodeCount 12 (length (ros2Sensor_msgsMsgJointState_position value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Sensor_msgsMsgJointState_position value)
  if length (ros2Sensor_msgsMsgJointState_velocity value) > 12 then Left 22 else Right ()
  prefix3 <- W.encodeCount 12 (length (ros2Sensor_msgsMsgJointState_velocity value))
  b3 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Sensor_msgsMsgJointState_velocity value)
  if length (ros2Sensor_msgsMsgJointState_effort value) > 12 then Left 22 else Right ()
  prefix4 <- W.encodeCount 12 (length (ros2Sensor_msgsMsgJointState_effort value))
  b4 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Sensor_msgsMsgJointState_effort value)
  W.bounded 1196 [b0, prefix1, b1, prefix2, b2, prefix3, b3, prefix4, b4]
-- | \@brief Read the ordered canonical fields of sensor_msgs/msg/JointState.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Sensor_msgsMsgJointState; share/platform/ros/haskell/API-CONTRACT.md
readRos2Sensor_msgsMsgJointState :: W.Decoder Ros2Sensor_msgsMsgJointState
readRos2Sensor_msgsMsgJointState = do
  a0 <- readRos2Std_msgsMsgHeader
  count1 <- W.count 12
  a1 <- replicateM count1 (W.text 64 True)
  count2 <- W.count 12
  a2 <- replicateM count2 (W.float64)
  count3 <- W.count 12
  a3 <- replicateM count3 (W.float64)
  count4 <- W.count 12
  a4 <- replicateM count4 (W.float64)
  let value = Ros2Sensor_msgsMsgJointState a0 a1 a2 a3 a4
  case encodeRos2Sensor_msgsMsgJointState value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete sensor_msgs/msg/JointState value.
-- \@details Require the complete 28..1196-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Sensor_msgsMsgJointState; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Sensor_msgsMsgJointState :: B.ByteString -> Either Word32 Ros2Sensor_msgsMsgJointState
decodeRos2Sensor_msgsMsgJointState = W.runDecoder 1196 readRos2Sensor_msgsMsgJointState
instance Canonical Ros2Sensor_msgsMsgJointState where
  maximumBytes _ = 1196
  encodeValue = encodeRos2Sensor_msgsMsgJointState
  readValue = readRos2Sensor_msgsMsgJointState
-- | \@brief Complete ROS 2 std_srvs/srv/Trigger_Request value.
-- \@details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and
-- is identified by UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Std_srvsSrvTrigger_Request = Ros2Std_srvsSrvTrigger_Request deriving (Eq, Show)
-- | \@brief Construct the declared defaults of std_srvs/srv/Trigger_Request.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Std_srvsSrvTrigger_Request; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Std_srvsSrvTrigger_Request :: Ros2Std_srvsSrvTrigger_Request
defaultRos2Std_srvsSrvTrigger_Request = Ros2Std_srvsSrvTrigger_Request 
-- | \@brief Canonical codec identity of std_srvs/srv/Trigger_Request.
-- \@details Exact identity UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Std_srvsSrvTrigger_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Std_srvsSrvTrigger_RequestCodecIdentity :: String
-- | \@brief Canonical codec identity of std_srvs/srv/Trigger_Request.
-- \@details Exact identity UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Std_srvsSrvTrigger_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Std_srvsSrvTrigger_RequestCodecIdentity =
    "UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77"
-- | \@brief Encode one complete std_srvs/srv/Trigger_Request value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
-- Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Std_srvsSrvTrigger_Request; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Std_srvsSrvTrigger_Request :: Ros2Std_srvsSrvTrigger_Request -> Either Word32 B.ByteString
encodeRos2Std_srvsSrvTrigger_Request value = do
  W.bounded 0 []
-- | \@brief Read the ordered canonical fields of std_srvs/srv/Trigger_Request.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Std_srvsSrvTrigger_Request; share/platform/ros/haskell/API-CONTRACT.md
readRos2Std_srvsSrvTrigger_Request :: W.Decoder Ros2Std_srvsSrvTrigger_Request
readRos2Std_srvsSrvTrigger_Request = do
  let value = Ros2Std_srvsSrvTrigger_Request 
  case encodeRos2Std_srvsSrvTrigger_Request value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete std_srvs/srv/Trigger_Request value.
-- \@details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Std_srvsSrvTrigger_Request; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Std_srvsSrvTrigger_Request :: B.ByteString -> Either Word32 Ros2Std_srvsSrvTrigger_Request
decodeRos2Std_srvsSrvTrigger_Request = W.runDecoder 0 readRos2Std_srvsSrvTrigger_Request
instance Canonical Ros2Std_srvsSrvTrigger_Request where
  maximumBytes _ = 0
  encodeValue = encodeRos2Std_srvsSrvTrigger_Request
  readValue = readRos2Std_srvsSrvTrigger_Request
-- | \@brief Complete ROS 2 std_srvs/srv/Trigger_Response value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 5..517 bytes
-- and is identified by UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Std_srvsSrvTrigger_Response = Ros2Std_srvsSrvTrigger_Response
  {
    -- | \@brief std_srvs/srv/Trigger_Response.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Std_srvsSrvTrigger_Response_success :: Bool
  ,
    -- | \@brief std_srvs/srv/Trigger_Response.message: string; each string is 0..512 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Std_srvsSrvTrigger_Response_message :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of std_srvs/srv/Trigger_Response.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Std_srvsSrvTrigger_Response :: Ros2Std_srvsSrvTrigger_Response
defaultRos2Std_srvsSrvTrigger_Response = Ros2Std_srvsSrvTrigger_Response (False) (T.empty)
-- | \@brief Canonical codec identity of std_srvs/srv/Trigger_Response.
-- \@details Exact identity UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Std_srvsSrvTrigger_ResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of std_srvs/srv/Trigger_Response.
-- \@details Exact identity UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Std_srvsSrvTrigger_ResponseCodecIdentity =
    "UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d"
-- | \@brief Encode one complete std_srvs/srv/Trigger_Response value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
-- Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Std_srvsSrvTrigger_Response :: Ros2Std_srvsSrvTrigger_Response -> Either Word32 B.ByteString
encodeRos2Std_srvsSrvTrigger_Response value = do
  b0 <- W.encodeBool (ros2Std_srvsSrvTrigger_Response_success value)
  b1 <- W.encodeText 512 True (ros2Std_srvsSrvTrigger_Response_message value)
  W.bounded 517 [b0, b1]
-- | \@brief Read the ordered canonical fields of std_srvs/srv/Trigger_Response.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/haskell/API-CONTRACT.md
readRos2Std_srvsSrvTrigger_Response :: W.Decoder Ros2Std_srvsSrvTrigger_Response
readRos2Std_srvsSrvTrigger_Response = do
  a0 <- W.boolean
  a1 <- W.text 512 True
  let value = Ros2Std_srvsSrvTrigger_Response a0 a1
  case encodeRos2Std_srvsSrvTrigger_Response value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete std_srvs/srv/Trigger_Response value.
-- \@details Require the complete 5..517-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Std_srvsSrvTrigger_Response :: B.ByteString -> Either Word32 Ros2Std_srvsSrvTrigger_Response
decodeRos2Std_srvsSrvTrigger_Response = W.runDecoder 517 readRos2Std_srvsSrvTrigger_Response
instance Canonical Ros2Std_srvsSrvTrigger_Response where
  maximumBytes _ = 517
  encodeValue = encodeRos2Std_srvsSrvTrigger_Response
  readValue = readRos2Std_srvsSrvTrigger_Response
