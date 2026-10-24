-- @file Records.hs
-- @brief Complete universal_robots values and adapters for the selected original interface catalog.
-- @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
-- defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
-- roles require the separately admitted SDK owner.
-- @see share/platform/universal_robots/domains/universal-robots-polyscopex-complete.ir.json
-- @see document/platform/universal_robots/en_US/README.md

-- Generated complete canonical values; all field selectors are record-qualified.
module UniversalRobots.Records.UniversalRobotsPolyscopexComplete where
import Data.Int
import Data.Word
import qualified Data.ByteString as B
import qualified Data.Text as T
import GHC.Float
import Control.Monad (replicateM)
import qualified RosWasm.Wire as W
import RosWasm.Typed (Canonical(..))
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
-- | \@brief Complete ROS 2 geometry_msgs/msg/Point value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies 24..24 bytes
-- and is identified by UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Geometry_msgsMsgPoint = Ros2Geometry_msgsMsgPoint
  {
    -- | \@brief geometry_msgs/msg/Point.x: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgPoint_x :: Double
  ,
    -- | \@brief geometry_msgs/msg/Point.y: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgPoint_y :: Double
  ,
    -- | \@brief geometry_msgs/msg/Point.z: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgPoint_z :: Double
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of geometry_msgs/msg/Point.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Geometry_msgsMsgPoint; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Geometry_msgsMsgPoint :: Ros2Geometry_msgsMsgPoint
defaultRos2Geometry_msgsMsgPoint = Ros2Geometry_msgsMsgPoint (0) (0) (0)
-- | \@brief Canonical codec identity of geometry_msgs/msg/Point.
-- \@details Exact identity UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Geometry_msgsMsgPoint; share/platform/ros/haskell/API-CONTRACT.md
ros2Geometry_msgsMsgPointCodecIdentity :: String
-- | \@brief Canonical codec identity of geometry_msgs/msg/Point.
-- \@details Exact identity UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Geometry_msgsMsgPoint; share/platform/ros/haskell/API-CONTRACT.md
ros2Geometry_msgsMsgPointCodecIdentity = "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616"
-- | \@brief Encode one complete geometry_msgs/msg/Point value.
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
-- \@see Ros2Geometry_msgsMsgPoint; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Geometry_msgsMsgPoint :: Ros2Geometry_msgsMsgPoint -> Either Word32 B.ByteString
encodeRos2Geometry_msgsMsgPoint value = do
  b0 <- W.encodeFloat64 (ros2Geometry_msgsMsgPoint_x value)
  b1 <- W.encodeFloat64 (ros2Geometry_msgsMsgPoint_y value)
  b2 <- W.encodeFloat64 (ros2Geometry_msgsMsgPoint_z value)
  W.bounded 24 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of geometry_msgs/msg/Point.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Geometry_msgsMsgPoint; share/platform/ros/haskell/API-CONTRACT.md
readRos2Geometry_msgsMsgPoint :: W.Decoder Ros2Geometry_msgsMsgPoint
readRos2Geometry_msgsMsgPoint = do
  a0 <- W.float64
  a1 <- W.float64
  a2 <- W.float64
  let value = Ros2Geometry_msgsMsgPoint a0 a1 a2
  case encodeRos2Geometry_msgsMsgPoint value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete geometry_msgs/msg/Point value.
-- \@details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Geometry_msgsMsgPoint; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Geometry_msgsMsgPoint :: B.ByteString -> Either Word32 Ros2Geometry_msgsMsgPoint
decodeRos2Geometry_msgsMsgPoint = W.runDecoder 24 readRos2Geometry_msgsMsgPoint
instance Canonical Ros2Geometry_msgsMsgPoint where
  maximumBytes _ = 24
  encodeValue = encodeRos2Geometry_msgsMsgPoint
  readValue = readRos2Geometry_msgsMsgPoint
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
-- | \@brief Complete ROS 2 geometry_msgs/msg/Pose value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 56..56 bytes
-- and is identified by UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Geometry_msgsMsgPose = Ros2Geometry_msgsMsgPose
  {
    -- | \@brief geometry_msgs/msg/Pose.position: geometry_msgs/msg/Point.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgPose; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgPose_position :: Ros2Geometry_msgsMsgPoint
  ,
    -- | \@brief geometry_msgs/msg/Pose.orientation: geometry_msgs/msg/Quaternion.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgPose; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgPose_orientation :: Ros2Geometry_msgsMsgQuaternion
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of geometry_msgs/msg/Pose.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Geometry_msgsMsgPose; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Geometry_msgsMsgPose :: Ros2Geometry_msgsMsgPose
defaultRos2Geometry_msgsMsgPose =
    Ros2Geometry_msgsMsgPose
        (defaultRos2Geometry_msgsMsgPoint)
        (defaultRos2Geometry_msgsMsgQuaternion)
-- | \@brief Canonical codec identity of geometry_msgs/msg/Pose.
-- \@details Exact identity UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Geometry_msgsMsgPose; share/platform/ros/haskell/API-CONTRACT.md
ros2Geometry_msgsMsgPoseCodecIdentity :: String
-- | \@brief Canonical codec identity of geometry_msgs/msg/Pose.
-- \@details Exact identity UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Geometry_msgsMsgPose; share/platform/ros/haskell/API-CONTRACT.md
ros2Geometry_msgsMsgPoseCodecIdentity = "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777"
-- | \@brief Encode one complete geometry_msgs/msg/Pose value.
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
-- \@see Ros2Geometry_msgsMsgPose; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Geometry_msgsMsgPose :: Ros2Geometry_msgsMsgPose -> Either Word32 B.ByteString
encodeRos2Geometry_msgsMsgPose value = do
  b0 <- encodeRos2Geometry_msgsMsgPoint (ros2Geometry_msgsMsgPose_position value)
  b1 <- encodeRos2Geometry_msgsMsgQuaternion (ros2Geometry_msgsMsgPose_orientation value)
  W.bounded 56 [b0, b1]
-- | \@brief Read the ordered canonical fields of geometry_msgs/msg/Pose.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Geometry_msgsMsgPose; share/platform/ros/haskell/API-CONTRACT.md
readRos2Geometry_msgsMsgPose :: W.Decoder Ros2Geometry_msgsMsgPose
readRos2Geometry_msgsMsgPose = do
  a0 <- readRos2Geometry_msgsMsgPoint
  a1 <- readRos2Geometry_msgsMsgQuaternion
  let value = Ros2Geometry_msgsMsgPose a0 a1
  case encodeRos2Geometry_msgsMsgPose value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete geometry_msgs/msg/Pose value.
-- \@details Require the complete 56..56-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Geometry_msgsMsgPose; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Geometry_msgsMsgPose :: B.ByteString -> Either Word32 Ros2Geometry_msgsMsgPose
decodeRos2Geometry_msgsMsgPose = W.runDecoder 56 readRos2Geometry_msgsMsgPose
instance Canonical Ros2Geometry_msgsMsgPose where
  maximumBytes _ = 56
  encodeValue = encodeRos2Geometry_msgsMsgPose
  readValue = readRos2Geometry_msgsMsgPose
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
-- | \@brief Complete ROS 2 std_msgs/msg/Header value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 12..140 bytes
-- and is identified by UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96.
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
    -- | \@brief std_msgs/msg/Header.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
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
-- \@details Exact identity UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Std_msgsMsgHeader; share/platform/ros/haskell/API-CONTRACT.md
ros2Std_msgsMsgHeaderCodecIdentity :: String
-- | \@brief Canonical codec identity of std_msgs/msg/Header.
-- \@details Exact identity UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Std_msgsMsgHeader; share/platform/ros/haskell/API-CONTRACT.md
ros2Std_msgsMsgHeaderCodecIdentity = "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96"
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
  b1 <- W.encodeText 128 True (ros2Std_msgsMsgHeader_frame_id value)
  W.bounded 140 [b0, b1]
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
  a1 <- W.text 128 True
  let value = Ros2Std_msgsMsgHeader a0 a1
  case encodeRos2Std_msgsMsgHeader value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete std_msgs/msg/Header value.
-- \@details Require the complete 12..140-byte canonical representation. Reject truncation, invalid fields and
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
decodeRos2Std_msgsMsgHeader = W.runDecoder 140 readRos2Std_msgsMsgHeader
instance Canonical Ros2Std_msgsMsgHeader where
  maximumBytes _ = 140
  encodeValue = encodeRos2Std_msgsMsgHeader
  readValue = readRos2Std_msgsMsgHeader
-- | \@brief Complete ROS 2 std_msgs/msg/String value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies 4..1028 bytes
-- and is identified by UWVMROS1_c48b5497cbf487f56eb073a982b93acd501c6bb72f0e9ef9dce2175ce7ac15c5.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Std_msgsMsgString = Ros2Std_msgsMsgString
  {
    -- | \@brief std_msgs/msg/String.data: string; each string is 0..1024 bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Std_msgsMsgString; share/platform/ros/haskell/API-CONTRACT.md
    ros2Std_msgsMsgString_data :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of std_msgs/msg/String.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Std_msgsMsgString; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Std_msgsMsgString :: Ros2Std_msgsMsgString
defaultRos2Std_msgsMsgString = Ros2Std_msgsMsgString (T.empty)
-- | \@brief Canonical codec identity of std_msgs/msg/String.
-- \@details Exact identity UWVMROS1_c48b5497cbf487f56eb073a982b93acd501c6bb72f0e9ef9dce2175ce7ac15c5 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Std_msgsMsgString; share/platform/ros/haskell/API-CONTRACT.md
ros2Std_msgsMsgStringCodecIdentity :: String
-- | \@brief Canonical codec identity of std_msgs/msg/String.
-- \@details Exact identity UWVMROS1_c48b5497cbf487f56eb073a982b93acd501c6bb72f0e9ef9dce2175ce7ac15c5 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Std_msgsMsgString; share/platform/ros/haskell/API-CONTRACT.md
ros2Std_msgsMsgStringCodecIdentity = "UWVMROS1_c48b5497cbf487f56eb073a982b93acd501c6bb72f0e9ef9dce2175ce7ac15c5"
-- | \@brief Encode one complete std_msgs/msg/String value.
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
-- \@see Ros2Std_msgsMsgString; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Std_msgsMsgString :: Ros2Std_msgsMsgString -> Either Word32 B.ByteString
encodeRos2Std_msgsMsgString value = do
  b0 <- W.encodeText 1024 True (ros2Std_msgsMsgString_data value)
  W.bounded 1028 [b0]
-- | \@brief Read the ordered canonical fields of std_msgs/msg/String.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Std_msgsMsgString; share/platform/ros/haskell/API-CONTRACT.md
readRos2Std_msgsMsgString :: W.Decoder Ros2Std_msgsMsgString
readRos2Std_msgsMsgString = do
  a0 <- W.text 1024 True
  let value = Ros2Std_msgsMsgString a0
  case encodeRos2Std_msgsMsgString value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete std_msgs/msg/String value.
-- \@details Require the complete 4..1028-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Std_msgsMsgString; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Std_msgsMsgString :: B.ByteString -> Either Word32 Ros2Std_msgsMsgString
decodeRos2Std_msgsMsgString = W.runDecoder 1028 readRos2Std_msgsMsgString
instance Canonical Ros2Std_msgsMsgString where
  maximumBytes _ = 1028
  encodeValue = encodeRos2Std_msgsMsgString
  readValue = readRos2Std_msgsMsgString
-- | \@brief Complete ROS 2 urinterfaces/msg/RobotMode value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 13..141 bytes
-- and is identified by UWVMROS1_a16ec0ed8caa1a2b48cd4116d88877911921848469cd139f4783e4f2c549e7ea.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesMsgRobotMode = Ros2UrinterfacesMsgRobotMode
  {
    -- | \@brief urinterfaces/msg/RobotMode.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgRobotMode; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgRobotMode_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief urinterfaces/msg/RobotMode.data: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgRobotMode; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgRobotMode_data :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/msg/RobotMode.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgRobotMode; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesMsgRobotMode :: Ros2UrinterfacesMsgRobotMode
defaultRos2UrinterfacesMsgRobotMode = Ros2UrinterfacesMsgRobotMode (defaultRos2Std_msgsMsgHeader) (0)
-- | \@brief Canonical codec identity of urinterfaces/msg/RobotMode.
-- \@details Exact identity UWVMROS1_a16ec0ed8caa1a2b48cd4116d88877911921848469cd139f4783e4f2c549e7ea binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRobotModeCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/msg/RobotMode.
-- \@details Exact identity UWVMROS1_a16ec0ed8caa1a2b48cd4116d88877911921848469cd139f4783e4f2c549e7ea binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRobotModeCodecIdentity = "UWVMROS1_a16ec0ed8caa1a2b48cd4116d88877911921848469cd139f4783e4f2c549e7ea"
-- | \@brief urinterfaces/msg/RobotMode.DISCONNECTED: original int8 constant.
-- \@details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRobotMode_DISCONNECTED :: Int8
-- | \@brief urinterfaces/msg/RobotMode.DISCONNECTED: original int8 constant.
-- \@details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRobotMode_DISCONNECTED = 0
-- | \@brief urinterfaces/msg/RobotMode.CONFIRM_SAFETY: original int8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRobotMode_CONFIRM_SAFETY :: Int8
-- | \@brief urinterfaces/msg/RobotMode.CONFIRM_SAFETY: original int8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRobotMode_CONFIRM_SAFETY = 1
-- | \@brief urinterfaces/msg/RobotMode.BOOTING: original int8 constant.
-- \@details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRobotMode_BOOTING :: Int8
-- | \@brief urinterfaces/msg/RobotMode.BOOTING: original int8 constant.
-- \@details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRobotMode_BOOTING = 2
-- | \@brief urinterfaces/msg/RobotMode.POWER_OFF: original int8 constant.
-- \@details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRobotMode_POWER_OFF :: Int8
-- | \@brief urinterfaces/msg/RobotMode.POWER_OFF: original int8 constant.
-- \@details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRobotMode_POWER_OFF = 3
-- | \@brief urinterfaces/msg/RobotMode.POWER_ON: original int8 constant.
-- \@details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRobotMode_POWER_ON :: Int8
-- | \@brief urinterfaces/msg/RobotMode.POWER_ON: original int8 constant.
-- \@details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRobotMode_POWER_ON = 4
-- | \@brief urinterfaces/msg/RobotMode.IDLE: original int8 constant.
-- \@details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRobotMode_IDLE :: Int8
-- | \@brief urinterfaces/msg/RobotMode.IDLE: original int8 constant.
-- \@details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRobotMode_IDLE = 5
-- | \@brief urinterfaces/msg/RobotMode.BACKDRIVE: original int8 constant.
-- \@details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRobotMode_BACKDRIVE :: Int8
-- | \@brief urinterfaces/msg/RobotMode.BACKDRIVE: original int8 constant.
-- \@details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRobotMode_BACKDRIVE = 6
-- | \@brief urinterfaces/msg/RobotMode.RUNNING: original int8 constant.
-- \@details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRobotMode_RUNNING :: Int8
-- | \@brief urinterfaces/msg/RobotMode.RUNNING: original int8 constant.
-- \@details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRobotMode_RUNNING = 7
-- | \@brief urinterfaces/msg/RobotMode.UPDATING_FIRMWARE: original int8 constant.
-- \@details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRobotMode_UPDATING_FIRMWARE :: Int8
-- | \@brief urinterfaces/msg/RobotMode.UPDATING_FIRMWARE: original int8 constant.
-- \@details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRobotMode_UPDATING_FIRMWARE = 8
-- | \@brief Encode one complete urinterfaces/msg/RobotMode value.
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
-- \@see Ros2UrinterfacesMsgRobotMode; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesMsgRobotMode :: Ros2UrinterfacesMsgRobotMode -> Either Word32 B.ByteString
encodeRos2UrinterfacesMsgRobotMode value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2UrinterfacesMsgRobotMode_header value)
  b1 <- W.encodeSigned 1 (fromIntegral (ros2UrinterfacesMsgRobotMode_data value))
  W.bounded 141 [b0, b1]
-- | \@brief Read the ordered canonical fields of urinterfaces/msg/RobotMode.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgRobotMode; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesMsgRobotMode :: W.Decoder Ros2UrinterfacesMsgRobotMode
readRos2UrinterfacesMsgRobotMode = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- fromIntegral <$> W.signed 1
  let value = Ros2UrinterfacesMsgRobotMode a0 a1
  case encodeRos2UrinterfacesMsgRobotMode value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/msg/RobotMode value.
-- \@details Require the complete 13..141-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgRobotMode; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesMsgRobotMode :: B.ByteString -> Either Word32 Ros2UrinterfacesMsgRobotMode
decodeRos2UrinterfacesMsgRobotMode = W.runDecoder 141 readRos2UrinterfacesMsgRobotMode
instance Canonical Ros2UrinterfacesMsgRobotMode where
  maximumBytes _ = 141
  encodeValue = encodeRos2UrinterfacesMsgRobotMode
  readValue = readRos2UrinterfacesMsgRobotMode
-- | \@brief Complete ROS 2 urinterfaces/action/SetMode_Goal value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies 15..143 bytes
-- and is identified by UWVMROS1_d1d998e217d6f3d3eefd8ffccecff8463580346150a59a1c7a2dac8d609e0e09.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesActionSetMode_Goal = Ros2UrinterfacesActionSetMode_Goal
  {
    -- | \@brief urinterfaces/action/SetMode_Goal.target_robot_mode: urinterfaces/msg/RobotMode.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesActionSetMode_Goal_target_robot_mode :: Ros2UrinterfacesMsgRobotMode
  ,
    -- | \@brief urinterfaces/action/SetMode_Goal.stop_program: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesActionSetMode_Goal_stop_program :: Bool
  ,
    -- | \@brief urinterfaces/action/SetMode_Goal.play_program: bool.
    -- \@details Schema default False. Encoding preserves the original field position and signedness; invalid bounds
    -- fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesActionSetMode_Goal_play_program :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/action/SetMode_Goal.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesActionSetMode_Goal :: Ros2UrinterfacesActionSetMode_Goal
defaultRos2UrinterfacesActionSetMode_Goal =
    Ros2UrinterfacesActionSetMode_Goal
        (defaultRos2UrinterfacesMsgRobotMode)
        (False)
        (False)
-- | \@brief Canonical codec identity of urinterfaces/action/SetMode_Goal.
-- \@details Exact identity UWVMROS1_d1d998e217d6f3d3eefd8ffccecff8463580346150a59a1c7a2dac8d609e0e09 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesActionSetMode_GoalCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/action/SetMode_Goal.
-- \@details Exact identity UWVMROS1_d1d998e217d6f3d3eefd8ffccecff8463580346150a59a1c7a2dac8d609e0e09 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesActionSetMode_GoalCodecIdentity =
    "UWVMROS1_d1d998e217d6f3d3eefd8ffccecff8463580346150a59a1c7a2dac8d609e0e09"
-- | \@brief Encode one complete urinterfaces/action/SetMode_Goal value.
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
-- \@see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesActionSetMode_Goal :: Ros2UrinterfacesActionSetMode_Goal -> Either Word32 B.ByteString
encodeRos2UrinterfacesActionSetMode_Goal value = do
  b0 <- encodeRos2UrinterfacesMsgRobotMode (ros2UrinterfacesActionSetMode_Goal_target_robot_mode value)
  b1 <- W.encodeBool (ros2UrinterfacesActionSetMode_Goal_stop_program value)
  b2 <- W.encodeBool (ros2UrinterfacesActionSetMode_Goal_play_program value)
  W.bounded 143 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of urinterfaces/action/SetMode_Goal.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesActionSetMode_Goal :: W.Decoder Ros2UrinterfacesActionSetMode_Goal
readRos2UrinterfacesActionSetMode_Goal = do
  a0 <- readRos2UrinterfacesMsgRobotMode
  a1 <- W.boolean
  a2 <- W.boolean
  let value = Ros2UrinterfacesActionSetMode_Goal a0 a1 a2
  case encodeRos2UrinterfacesActionSetMode_Goal value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/action/SetMode_Goal value.
-- \@details Require the complete 15..143-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesActionSetMode_Goal :: B.ByteString -> Either Word32 Ros2UrinterfacesActionSetMode_Goal
decodeRos2UrinterfacesActionSetMode_Goal = W.runDecoder 143 readRos2UrinterfacesActionSetMode_Goal
instance Canonical Ros2UrinterfacesActionSetMode_Goal where
  maximumBytes _ = 143
  encodeValue = encodeRos2UrinterfacesActionSetMode_Goal
  readValue = readRos2UrinterfacesActionSetMode_Goal
-- | \@brief Complete ROS 2 urinterfaces/action/SetMode_Result value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes
-- and is identified by UWVMROS1_500243a508824c42fe2da424040aa60bf2426ac607f2f6016fab014f81518af7.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesActionSetMode_Result = Ros2UrinterfacesActionSetMode_Result
  {
    -- | \@brief urinterfaces/action/SetMode_Result.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesActionSetMode_Result_success :: Bool
  ,
    -- | \@brief urinterfaces/action/SetMode_Result.message: string; each string is 0..256 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesActionSetMode_Result_message :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/action/SetMode_Result.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesActionSetMode_Result :: Ros2UrinterfacesActionSetMode_Result
defaultRos2UrinterfacesActionSetMode_Result = Ros2UrinterfacesActionSetMode_Result (False) (T.empty)
-- | \@brief Canonical codec identity of urinterfaces/action/SetMode_Result.
-- \@details Exact identity UWVMROS1_500243a508824c42fe2da424040aa60bf2426ac607f2f6016fab014f81518af7 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesActionSetMode_ResultCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/action/SetMode_Result.
-- \@details Exact identity UWVMROS1_500243a508824c42fe2da424040aa60bf2426ac607f2f6016fab014f81518af7 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesActionSetMode_ResultCodecIdentity =
    "UWVMROS1_500243a508824c42fe2da424040aa60bf2426ac607f2f6016fab014f81518af7"
-- | \@brief Encode one complete urinterfaces/action/SetMode_Result value.
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
-- \@see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesActionSetMode_Result :: Ros2UrinterfacesActionSetMode_Result -> Either Word32 B.ByteString
encodeRos2UrinterfacesActionSetMode_Result value = do
  b0 <- W.encodeBool (ros2UrinterfacesActionSetMode_Result_success value)
  b1 <- W.encodeText 256 True (ros2UrinterfacesActionSetMode_Result_message value)
  W.bounded 261 [b0, b1]
-- | \@brief Read the ordered canonical fields of urinterfaces/action/SetMode_Result.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesActionSetMode_Result :: W.Decoder Ros2UrinterfacesActionSetMode_Result
readRos2UrinterfacesActionSetMode_Result = do
  a0 <- W.boolean
  a1 <- W.text 256 True
  let value = Ros2UrinterfacesActionSetMode_Result a0 a1
  case encodeRos2UrinterfacesActionSetMode_Result value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/action/SetMode_Result value.
-- \@details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesActionSetMode_Result :: B.ByteString -> Either Word32 Ros2UrinterfacesActionSetMode_Result
decodeRos2UrinterfacesActionSetMode_Result = W.runDecoder 261 readRos2UrinterfacesActionSetMode_Result
instance Canonical Ros2UrinterfacesActionSetMode_Result where
  maximumBytes _ = 261
  encodeValue = encodeRos2UrinterfacesActionSetMode_Result
  readValue = readRos2UrinterfacesActionSetMode_Result
-- | \@brief Complete ROS 2 urinterfaces/action/SetMode_Feedback value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 2..2 bytes and
-- is identified by UWVMROS1_22fb71c17066829bd66c98bc631c82b2bfef3c501e08960a6bfad3d902f76537.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesActionSetMode_Feedback = Ros2UrinterfacesActionSetMode_Feedback
  {
    -- | \@brief urinterfaces/action/SetMode_Feedback.current_robot_mode: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesActionSetMode_Feedback_current_robot_mode :: Int8
  ,
    -- | \@brief urinterfaces/action/SetMode_Feedback.current_safety_mode: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesActionSetMode_Feedback_current_safety_mode :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/action/SetMode_Feedback.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesActionSetMode_Feedback :: Ros2UrinterfacesActionSetMode_Feedback
defaultRos2UrinterfacesActionSetMode_Feedback = Ros2UrinterfacesActionSetMode_Feedback (0) (0)
-- | \@brief Canonical codec identity of urinterfaces/action/SetMode_Feedback.
-- \@details Exact identity UWVMROS1_22fb71c17066829bd66c98bc631c82b2bfef3c501e08960a6bfad3d902f76537 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesActionSetMode_FeedbackCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/action/SetMode_Feedback.
-- \@details Exact identity UWVMROS1_22fb71c17066829bd66c98bc631c82b2bfef3c501e08960a6bfad3d902f76537 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesActionSetMode_FeedbackCodecIdentity =
    "UWVMROS1_22fb71c17066829bd66c98bc631c82b2bfef3c501e08960a6bfad3d902f76537"
-- | \@brief Encode one complete urinterfaces/action/SetMode_Feedback value.
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
-- \@see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesActionSetMode_Feedback :: Ros2UrinterfacesActionSetMode_Feedback -> Either Word32 B.ByteString
encodeRos2UrinterfacesActionSetMode_Feedback value = do
  b0 <- W.encodeSigned 1 (fromIntegral (ros2UrinterfacesActionSetMode_Feedback_current_robot_mode value))
  b1 <- W.encodeSigned 1 (fromIntegral (ros2UrinterfacesActionSetMode_Feedback_current_safety_mode value))
  W.bounded 2 [b0, b1]
-- | \@brief Read the ordered canonical fields of urinterfaces/action/SetMode_Feedback.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesActionSetMode_Feedback :: W.Decoder Ros2UrinterfacesActionSetMode_Feedback
readRos2UrinterfacesActionSetMode_Feedback = do
  a0 <- fromIntegral <$> W.signed 1
  a1 <- fromIntegral <$> W.signed 1
  let value = Ros2UrinterfacesActionSetMode_Feedback a0 a1
  case encodeRos2UrinterfacesActionSetMode_Feedback value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/action/SetMode_Feedback value.
-- \@details Require the complete 2..2-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesActionSetMode_Feedback :: B.ByteString -> Either Word32 Ros2UrinterfacesActionSetMode_Feedback
decodeRos2UrinterfacesActionSetMode_Feedback = W.runDecoder 2 readRos2UrinterfacesActionSetMode_Feedback
instance Canonical Ros2UrinterfacesActionSetMode_Feedback where
  maximumBytes _ = 2
  encodeValue = encodeRos2UrinterfacesActionSetMode_Feedback
  readValue = readRos2UrinterfacesActionSetMode_Feedback
-- | \@brief Complete ROS 2 urinterfaces/msg/ActiveTCP value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 16..400 bytes
-- and is identified by UWVMROS1_e62d31728eca201dee256d88d1d268bf2ecb9607ed5c48783432f966edf459ae.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesMsgActiveTCP = Ros2UrinterfacesMsgActiveTCP
  {
    -- | \@brief urinterfaces/msg/ActiveTCP.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgActiveTCP_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief urinterfaces/msg/ActiveTCP.data: string; each string is 0..256 bytes; strict UTF-8 with no embedded
    -- NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgActiveTCP_data :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/msg/ActiveTCP.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesMsgActiveTCP :: Ros2UrinterfacesMsgActiveTCP
defaultRos2UrinterfacesMsgActiveTCP = Ros2UrinterfacesMsgActiveTCP (defaultRos2Std_msgsMsgHeader) (T.empty)
-- | \@brief Canonical codec identity of urinterfaces/msg/ActiveTCP.
-- \@details Exact identity UWVMROS1_e62d31728eca201dee256d88d1d268bf2ecb9607ed5c48783432f966edf459ae binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgActiveTCPCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/msg/ActiveTCP.
-- \@details Exact identity UWVMROS1_e62d31728eca201dee256d88d1d268bf2ecb9607ed5c48783432f966edf459ae binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgActiveTCPCodecIdentity = "UWVMROS1_e62d31728eca201dee256d88d1d268bf2ecb9607ed5c48783432f966edf459ae"
-- | \@brief Encode one complete urinterfaces/msg/ActiveTCP value.
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
-- \@see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesMsgActiveTCP :: Ros2UrinterfacesMsgActiveTCP -> Either Word32 B.ByteString
encodeRos2UrinterfacesMsgActiveTCP value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2UrinterfacesMsgActiveTCP_header value)
  b1 <- W.encodeText 256 True (ros2UrinterfacesMsgActiveTCP_data value)
  W.bounded 400 [b0, b1]
-- | \@brief Read the ordered canonical fields of urinterfaces/msg/ActiveTCP.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesMsgActiveTCP :: W.Decoder Ros2UrinterfacesMsgActiveTCP
readRos2UrinterfacesMsgActiveTCP = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- W.text 256 True
  let value = Ros2UrinterfacesMsgActiveTCP a0 a1
  case encodeRos2UrinterfacesMsgActiveTCP value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/msg/ActiveTCP value.
-- \@details Require the complete 16..400-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesMsgActiveTCP :: B.ByteString -> Either Word32 Ros2UrinterfacesMsgActiveTCP
decodeRos2UrinterfacesMsgActiveTCP = W.runDecoder 400 readRos2UrinterfacesMsgActiveTCP
instance Canonical Ros2UrinterfacesMsgActiveTCP where
  maximumBytes _ = 400
  encodeValue = encodeRos2UrinterfacesMsgActiveTCP
  readValue = readRos2UrinterfacesMsgActiveTCP
-- | \@brief Complete ROS 2 urinterfaces/msg/Analog value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies 6..6 bytes and
-- is identified by UWVMROS1_e81cffd909f3bc387ee00c37537434341ef93fd160e465be033aa9bc412b979b.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesMsgAnalog = Ros2UrinterfacesMsgAnalog
  {
    -- | \@brief urinterfaces/msg/Analog.pin: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgAnalog; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgAnalog_pin :: Word8
  ,
    -- | \@brief urinterfaces/msg/Analog.domain: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgAnalog; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgAnalog_domain :: Word8
  ,
    -- | \@brief urinterfaces/msg/Analog.value: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgAnalog; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgAnalog_value :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/msg/Analog.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgAnalog; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesMsgAnalog :: Ros2UrinterfacesMsgAnalog
defaultRos2UrinterfacesMsgAnalog = Ros2UrinterfacesMsgAnalog (0) (0) (0)
-- | \@brief Canonical codec identity of urinterfaces/msg/Analog.
-- \@details Exact identity UWVMROS1_e81cffd909f3bc387ee00c37537434341ef93fd160e465be033aa9bc412b979b binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgAnalog; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgAnalogCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/msg/Analog.
-- \@details Exact identity UWVMROS1_e81cffd909f3bc387ee00c37537434341ef93fd160e465be033aa9bc412b979b binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgAnalog; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgAnalogCodecIdentity = "UWVMROS1_e81cffd909f3bc387ee00c37537434341ef93fd160e465be033aa9bc412b979b"
-- | \@brief urinterfaces/msg/Analog.CURRENT: original uint8 constant.
-- \@details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgAnalog; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgAnalog_CURRENT :: Word8
-- | \@brief urinterfaces/msg/Analog.CURRENT: original uint8 constant.
-- \@details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgAnalog; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgAnalog_CURRENT = 0
-- | \@brief urinterfaces/msg/Analog.VOLTAGE: original uint8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgAnalog; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgAnalog_VOLTAGE :: Word8
-- | \@brief urinterfaces/msg/Analog.VOLTAGE: original uint8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgAnalog; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgAnalog_VOLTAGE = 1
-- | \@brief Encode one complete urinterfaces/msg/Analog value.
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
-- \@see Ros2UrinterfacesMsgAnalog; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesMsgAnalog :: Ros2UrinterfacesMsgAnalog -> Either Word32 B.ByteString
encodeRos2UrinterfacesMsgAnalog value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros2UrinterfacesMsgAnalog_pin value))
  b1 <- W.encodeUnsigned 1 (fromIntegral (ros2UrinterfacesMsgAnalog_domain value))
  b2 <- W.encodeFloat32 (ros2UrinterfacesMsgAnalog_value value)
  W.bounded 6 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of urinterfaces/msg/Analog.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgAnalog; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesMsgAnalog :: W.Decoder Ros2UrinterfacesMsgAnalog
readRos2UrinterfacesMsgAnalog = do
  a0 <- fromIntegral <$> W.unsigned 1
  a1 <- fromIntegral <$> W.unsigned 1
  a2 <- W.float32
  let value = Ros2UrinterfacesMsgAnalog a0 a1 a2
  case encodeRos2UrinterfacesMsgAnalog value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/msg/Analog value.
-- \@details Require the complete 6..6-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgAnalog; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesMsgAnalog :: B.ByteString -> Either Word32 Ros2UrinterfacesMsgAnalog
decodeRos2UrinterfacesMsgAnalog = W.runDecoder 6 readRos2UrinterfacesMsgAnalog
instance Canonical Ros2UrinterfacesMsgAnalog where
  maximumBytes _ = 6
  encodeValue = encodeRos2UrinterfacesMsgAnalog
  readValue = readRos2UrinterfacesMsgAnalog
-- | \@brief Complete ROS 2 urinterfaces/msg/AnalogIO value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 8..200 bytes
-- and is identified by UWVMROS1_3130f3e3857f21bab5092d9c6abea8c45965c07ebb9c1ab14b28fa51b7d71e0c.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesMsgAnalogIO = Ros2UrinterfacesMsgAnalogIO
  {
    -- | \@brief urinterfaces/msg/AnalogIO.analog_inputs: urinterfaces/msg/Analog; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgAnalogIO_analog_inputs :: [Ros2UrinterfacesMsgAnalog]
  ,
    -- | \@brief urinterfaces/msg/AnalogIO.analog_outputs: urinterfaces/msg/Analog; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgAnalogIO_analog_outputs :: [Ros2UrinterfacesMsgAnalog]
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/msg/AnalogIO.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesMsgAnalogIO :: Ros2UrinterfacesMsgAnalogIO
defaultRos2UrinterfacesMsgAnalogIO = Ros2UrinterfacesMsgAnalogIO ([]) ([])
-- | \@brief Canonical codec identity of urinterfaces/msg/AnalogIO.
-- \@details Exact identity UWVMROS1_3130f3e3857f21bab5092d9c6abea8c45965c07ebb9c1ab14b28fa51b7d71e0c binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgAnalogIOCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/msg/AnalogIO.
-- \@details Exact identity UWVMROS1_3130f3e3857f21bab5092d9c6abea8c45965c07ebb9c1ab14b28fa51b7d71e0c binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgAnalogIOCodecIdentity = "UWVMROS1_3130f3e3857f21bab5092d9c6abea8c45965c07ebb9c1ab14b28fa51b7d71e0c"
-- | \@brief Encode one complete urinterfaces/msg/AnalogIO value.
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
-- \@see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesMsgAnalogIO :: Ros2UrinterfacesMsgAnalogIO -> Either Word32 B.ByteString
encodeRos2UrinterfacesMsgAnalogIO value = do
  if length (ros2UrinterfacesMsgAnalogIO_analog_inputs value) > 16 then Left 22 else Right ()
  prefix0 <- W.encodeCount 16 (length (ros2UrinterfacesMsgAnalogIO_analog_inputs value))
  b0 <- B.concat <$> mapM (\e -> encodeRos2UrinterfacesMsgAnalog (e)) (ros2UrinterfacesMsgAnalogIO_analog_inputs value)
  if length (ros2UrinterfacesMsgAnalogIO_analog_outputs value) > 16 then Left 22 else Right ()
  prefix1 <- W.encodeCount 16 (length (ros2UrinterfacesMsgAnalogIO_analog_outputs value))
  b1 <- B.concat <$> mapM (\e -> encodeRos2UrinterfacesMsgAnalog (e)) (ros2UrinterfacesMsgAnalogIO_analog_outputs value)
  W.bounded 200 [prefix0, b0, prefix1, b1]
-- | \@brief Read the ordered canonical fields of urinterfaces/msg/AnalogIO.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesMsgAnalogIO :: W.Decoder Ros2UrinterfacesMsgAnalogIO
readRos2UrinterfacesMsgAnalogIO = do
  count0 <- W.count 16
  a0 <- replicateM count0 (readRos2UrinterfacesMsgAnalog)
  count1 <- W.count 16
  a1 <- replicateM count1 (readRos2UrinterfacesMsgAnalog)
  let value = Ros2UrinterfacesMsgAnalogIO a0 a1
  case encodeRos2UrinterfacesMsgAnalogIO value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/msg/AnalogIO value.
-- \@details Require the complete 8..200-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesMsgAnalogIO :: B.ByteString -> Either Word32 Ros2UrinterfacesMsgAnalogIO
decodeRos2UrinterfacesMsgAnalogIO = W.runDecoder 200 readRos2UrinterfacesMsgAnalogIO
instance Canonical Ros2UrinterfacesMsgAnalogIO where
  maximumBytes _ = 200
  encodeValue = encodeRos2UrinterfacesMsgAnalogIO
  readValue = readRos2UrinterfacesMsgAnalogIO
-- | \@brief Complete ROS 2 urinterfaces/msg/AnalogIOStateStamped value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 20..340 bytes
-- and is identified by UWVMROS1_a40e839bb4acfcb26503c79f01216b7aea9ab8ff25c50dca42578b206ab40a89.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesMsgAnalogIOStateStamped = Ros2UrinterfacesMsgAnalogIOStateStamped
  {
    -- | \@brief urinterfaces/msg/AnalogIOStateStamped.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgAnalogIOStateStamped_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief urinterfaces/msg/AnalogIOStateStamped.io_state: urinterfaces/msg/AnalogIO.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgAnalogIOStateStamped_io_state :: Ros2UrinterfacesMsgAnalogIO
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/msg/AnalogIOStateStamped.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesMsgAnalogIOStateStamped :: Ros2UrinterfacesMsgAnalogIOStateStamped
defaultRos2UrinterfacesMsgAnalogIOStateStamped =
    Ros2UrinterfacesMsgAnalogIOStateStamped
        (defaultRos2Std_msgsMsgHeader)
        (defaultRos2UrinterfacesMsgAnalogIO)
-- | \@brief Canonical codec identity of urinterfaces/msg/AnalogIOStateStamped.
-- \@details Exact identity UWVMROS1_a40e839bb4acfcb26503c79f01216b7aea9ab8ff25c50dca42578b206ab40a89 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgAnalogIOStateStampedCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/msg/AnalogIOStateStamped.
-- \@details Exact identity UWVMROS1_a40e839bb4acfcb26503c79f01216b7aea9ab8ff25c50dca42578b206ab40a89 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgAnalogIOStateStampedCodecIdentity =
    "UWVMROS1_a40e839bb4acfcb26503c79f01216b7aea9ab8ff25c50dca42578b206ab40a89"
-- | \@brief Encode one complete urinterfaces/msg/AnalogIOStateStamped value.
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
-- \@see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesMsgAnalogIOStateStamped :: Ros2UrinterfacesMsgAnalogIOStateStamped -> Either Word32 B.ByteString
encodeRos2UrinterfacesMsgAnalogIOStateStamped value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2UrinterfacesMsgAnalogIOStateStamped_header value)
  b1 <- encodeRos2UrinterfacesMsgAnalogIO (ros2UrinterfacesMsgAnalogIOStateStamped_io_state value)
  W.bounded 340 [b0, b1]
-- | \@brief Read the ordered canonical fields of urinterfaces/msg/AnalogIOStateStamped.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesMsgAnalogIOStateStamped :: W.Decoder Ros2UrinterfacesMsgAnalogIOStateStamped
readRos2UrinterfacesMsgAnalogIOStateStamped = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- readRos2UrinterfacesMsgAnalogIO
  let value = Ros2UrinterfacesMsgAnalogIOStateStamped a0 a1
  case encodeRos2UrinterfacesMsgAnalogIOStateStamped value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/msg/AnalogIOStateStamped value.
-- \@details Require the complete 20..340-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesMsgAnalogIOStateStamped :: B.ByteString -> Either Word32 Ros2UrinterfacesMsgAnalogIOStateStamped
decodeRos2UrinterfacesMsgAnalogIOStateStamped = W.runDecoder 340 readRos2UrinterfacesMsgAnalogIOStateStamped
instance Canonical Ros2UrinterfacesMsgAnalogIOStateStamped where
  maximumBytes _ = 340
  encodeValue = encodeRos2UrinterfacesMsgAnalogIOStateStamped
  readValue = readRos2UrinterfacesMsgAnalogIOStateStamped
-- | \@brief Complete ROS 2 urinterfaces/msg/AnalogStamped value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 18..146 bytes
-- and is identified by UWVMROS1_749557c6e79b882385927c62d3c45963797ce116d7be6235bd9f186a7b4da76c.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesMsgAnalogStamped = Ros2UrinterfacesMsgAnalogStamped
  {
    -- | \@brief urinterfaces/msg/AnalogStamped.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgAnalogStamped_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief urinterfaces/msg/AnalogStamped.data: urinterfaces/msg/Analog.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgAnalogStamped_data :: Ros2UrinterfacesMsgAnalog
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/msg/AnalogStamped.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesMsgAnalogStamped :: Ros2UrinterfacesMsgAnalogStamped
defaultRos2UrinterfacesMsgAnalogStamped =
    Ros2UrinterfacesMsgAnalogStamped
        (defaultRos2Std_msgsMsgHeader)
        (defaultRos2UrinterfacesMsgAnalog)
-- | \@brief Canonical codec identity of urinterfaces/msg/AnalogStamped.
-- \@details Exact identity UWVMROS1_749557c6e79b882385927c62d3c45963797ce116d7be6235bd9f186a7b4da76c binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgAnalogStampedCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/msg/AnalogStamped.
-- \@details Exact identity UWVMROS1_749557c6e79b882385927c62d3c45963797ce116d7be6235bd9f186a7b4da76c binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgAnalogStampedCodecIdentity =
    "UWVMROS1_749557c6e79b882385927c62d3c45963797ce116d7be6235bd9f186a7b4da76c"
-- | \@brief Encode one complete urinterfaces/msg/AnalogStamped value.
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
-- \@see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesMsgAnalogStamped :: Ros2UrinterfacesMsgAnalogStamped -> Either Word32 B.ByteString
encodeRos2UrinterfacesMsgAnalogStamped value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2UrinterfacesMsgAnalogStamped_header value)
  b1 <- encodeRos2UrinterfacesMsgAnalog (ros2UrinterfacesMsgAnalogStamped_data value)
  W.bounded 146 [b0, b1]
-- | \@brief Read the ordered canonical fields of urinterfaces/msg/AnalogStamped.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesMsgAnalogStamped :: W.Decoder Ros2UrinterfacesMsgAnalogStamped
readRos2UrinterfacesMsgAnalogStamped = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- readRos2UrinterfacesMsgAnalog
  let value = Ros2UrinterfacesMsgAnalogStamped a0 a1
  case encodeRos2UrinterfacesMsgAnalogStamped value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/msg/AnalogStamped value.
-- \@details Require the complete 18..146-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesMsgAnalogStamped :: B.ByteString -> Either Word32 Ros2UrinterfacesMsgAnalogStamped
decodeRos2UrinterfacesMsgAnalogStamped = W.runDecoder 146 readRos2UrinterfacesMsgAnalogStamped
instance Canonical Ros2UrinterfacesMsgAnalogStamped where
  maximumBytes _ = 146
  encodeValue = encodeRos2UrinterfacesMsgAnalogStamped
  readValue = readRos2UrinterfacesMsgAnalogStamped
-- | \@brief Complete ROS 2 urinterfaces/msg/BoolStamped value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 13..141 bytes
-- and is identified by UWVMROS1_1a4128638df10bd9a8d33af0ed3c2ee9b4deb771d45dfe83f2a9a75c7f77de66.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesMsgBoolStamped = Ros2UrinterfacesMsgBoolStamped
  {
    -- | \@brief urinterfaces/msg/BoolStamped.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgBoolStamped_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief urinterfaces/msg/BoolStamped.data: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgBoolStamped_data :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/msg/BoolStamped.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesMsgBoolStamped :: Ros2UrinterfacesMsgBoolStamped
defaultRos2UrinterfacesMsgBoolStamped = Ros2UrinterfacesMsgBoolStamped (defaultRos2Std_msgsMsgHeader) (False)
-- | \@brief Canonical codec identity of urinterfaces/msg/BoolStamped.
-- \@details Exact identity UWVMROS1_1a4128638df10bd9a8d33af0ed3c2ee9b4deb771d45dfe83f2a9a75c7f77de66 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgBoolStampedCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/msg/BoolStamped.
-- \@details Exact identity UWVMROS1_1a4128638df10bd9a8d33af0ed3c2ee9b4deb771d45dfe83f2a9a75c7f77de66 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgBoolStampedCodecIdentity =
    "UWVMROS1_1a4128638df10bd9a8d33af0ed3c2ee9b4deb771d45dfe83f2a9a75c7f77de66"
-- | \@brief Encode one complete urinterfaces/msg/BoolStamped value.
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
-- \@see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesMsgBoolStamped :: Ros2UrinterfacesMsgBoolStamped -> Either Word32 B.ByteString
encodeRos2UrinterfacesMsgBoolStamped value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2UrinterfacesMsgBoolStamped_header value)
  b1 <- W.encodeBool (ros2UrinterfacesMsgBoolStamped_data value)
  W.bounded 141 [b0, b1]
-- | \@brief Read the ordered canonical fields of urinterfaces/msg/BoolStamped.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesMsgBoolStamped :: W.Decoder Ros2UrinterfacesMsgBoolStamped
readRos2UrinterfacesMsgBoolStamped = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- W.boolean
  let value = Ros2UrinterfacesMsgBoolStamped a0 a1
  case encodeRos2UrinterfacesMsgBoolStamped value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/msg/BoolStamped value.
-- \@details Require the complete 13..141-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesMsgBoolStamped :: B.ByteString -> Either Word32 Ros2UrinterfacesMsgBoolStamped
decodeRos2UrinterfacesMsgBoolStamped = W.runDecoder 141 readRos2UrinterfacesMsgBoolStamped
instance Canonical Ros2UrinterfacesMsgBoolStamped where
  maximumBytes _ = 141
  encodeValue = encodeRos2UrinterfacesMsgBoolStamped
  readValue = readRos2UrinterfacesMsgBoolStamped
-- | \@brief Complete ROS 2 urinterfaces/msg/ControlCycle value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 20..148 bytes
-- and is identified by UWVMROS1_99a4d96e5673f5ac49eab13cd8b28af55ac83e1626c39ed20ff46655df4d6278.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesMsgControlCycle = Ros2UrinterfacesMsgControlCycle
  {
    -- | \@brief urinterfaces/msg/ControlCycle.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgControlCycle; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgControlCycle_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief urinterfaces/msg/ControlCycle.data: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgControlCycle; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgControlCycle_data :: Word64
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/msg/ControlCycle.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgControlCycle; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesMsgControlCycle :: Ros2UrinterfacesMsgControlCycle
defaultRos2UrinterfacesMsgControlCycle = Ros2UrinterfacesMsgControlCycle (defaultRos2Std_msgsMsgHeader) (0)
-- | \@brief Canonical codec identity of urinterfaces/msg/ControlCycle.
-- \@details Exact identity UWVMROS1_99a4d96e5673f5ac49eab13cd8b28af55ac83e1626c39ed20ff46655df4d6278 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgControlCycle; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgControlCycleCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/msg/ControlCycle.
-- \@details Exact identity UWVMROS1_99a4d96e5673f5ac49eab13cd8b28af55ac83e1626c39ed20ff46655df4d6278 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgControlCycle; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgControlCycleCodecIdentity =
    "UWVMROS1_99a4d96e5673f5ac49eab13cd8b28af55ac83e1626c39ed20ff46655df4d6278"
-- | \@brief Encode one complete urinterfaces/msg/ControlCycle value.
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
-- \@see Ros2UrinterfacesMsgControlCycle; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesMsgControlCycle :: Ros2UrinterfacesMsgControlCycle -> Either Word32 B.ByteString
encodeRos2UrinterfacesMsgControlCycle value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2UrinterfacesMsgControlCycle_header value)
  b1 <- W.encodeUnsigned 8 (fromIntegral (ros2UrinterfacesMsgControlCycle_data value))
  W.bounded 148 [b0, b1]
-- | \@brief Read the ordered canonical fields of urinterfaces/msg/ControlCycle.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgControlCycle; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesMsgControlCycle :: W.Decoder Ros2UrinterfacesMsgControlCycle
readRos2UrinterfacesMsgControlCycle = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- fromIntegral <$> W.unsigned 8
  let value = Ros2UrinterfacesMsgControlCycle a0 a1
  case encodeRos2UrinterfacesMsgControlCycle value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/msg/ControlCycle value.
-- \@details Require the complete 20..148-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgControlCycle; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesMsgControlCycle :: B.ByteString -> Either Word32 Ros2UrinterfacesMsgControlCycle
decodeRos2UrinterfacesMsgControlCycle = W.runDecoder 148 readRos2UrinterfacesMsgControlCycle
instance Canonical Ros2UrinterfacesMsgControlCycle where
  maximumBytes _ = 148
  encodeValue = encodeRos2UrinterfacesMsgControlCycle
  readValue = readRos2UrinterfacesMsgControlCycle
-- | \@brief Complete ROS 2 urinterfaces/msg/Current value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 16..144 bytes
-- and is identified by UWVMROS1_759f2139335bcb720f7f4a38cd8b1413f203f2dd2b72149fa0de0fb7a0a778df.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesMsgCurrent = Ros2UrinterfacesMsgCurrent
  {
    -- | \@brief urinterfaces/msg/Current.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgCurrent; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgCurrent_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief urinterfaces/msg/Current.data: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgCurrent; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgCurrent_data :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/msg/Current.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgCurrent; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesMsgCurrent :: Ros2UrinterfacesMsgCurrent
defaultRos2UrinterfacesMsgCurrent = Ros2UrinterfacesMsgCurrent (defaultRos2Std_msgsMsgHeader) (0)
-- | \@brief Canonical codec identity of urinterfaces/msg/Current.
-- \@details Exact identity UWVMROS1_759f2139335bcb720f7f4a38cd8b1413f203f2dd2b72149fa0de0fb7a0a778df binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgCurrent; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgCurrentCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/msg/Current.
-- \@details Exact identity UWVMROS1_759f2139335bcb720f7f4a38cd8b1413f203f2dd2b72149fa0de0fb7a0a778df binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgCurrent; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgCurrentCodecIdentity = "UWVMROS1_759f2139335bcb720f7f4a38cd8b1413f203f2dd2b72149fa0de0fb7a0a778df"
-- | \@brief Encode one complete urinterfaces/msg/Current value.
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
-- \@see Ros2UrinterfacesMsgCurrent; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesMsgCurrent :: Ros2UrinterfacesMsgCurrent -> Either Word32 B.ByteString
encodeRos2UrinterfacesMsgCurrent value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2UrinterfacesMsgCurrent_header value)
  b1 <- W.encodeFloat32 (ros2UrinterfacesMsgCurrent_data value)
  W.bounded 144 [b0, b1]
-- | \@brief Read the ordered canonical fields of urinterfaces/msg/Current.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgCurrent; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesMsgCurrent :: W.Decoder Ros2UrinterfacesMsgCurrent
readRos2UrinterfacesMsgCurrent = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- W.float32
  let value = Ros2UrinterfacesMsgCurrent a0 a1
  case encodeRos2UrinterfacesMsgCurrent value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/msg/Current value.
-- \@details Require the complete 16..144-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgCurrent; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesMsgCurrent :: B.ByteString -> Either Word32 Ros2UrinterfacesMsgCurrent
decodeRos2UrinterfacesMsgCurrent = W.runDecoder 144 readRos2UrinterfacesMsgCurrent
instance Canonical Ros2UrinterfacesMsgCurrent where
  maximumBytes _ = 144
  encodeValue = encodeRos2UrinterfacesMsgCurrent
  readValue = readRos2UrinterfacesMsgCurrent
-- | \@brief Complete ROS 2 urinterfaces/msg/Digital value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 2..2 bytes and
-- is identified by UWVMROS1_c60c73df0383bb9a3e23ae3148cff9d6eb49b88c2d10add0af6a86ec9af54512.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesMsgDigital = Ros2UrinterfacesMsgDigital
  {
    -- | \@brief urinterfaces/msg/Digital.pin: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgDigital; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgDigital_pin :: Word8
  ,
    -- | \@brief urinterfaces/msg/Digital.state: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgDigital; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgDigital_state :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/msg/Digital.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgDigital; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesMsgDigital :: Ros2UrinterfacesMsgDigital
defaultRos2UrinterfacesMsgDigital = Ros2UrinterfacesMsgDigital (0) (False)
-- | \@brief Canonical codec identity of urinterfaces/msg/Digital.
-- \@details Exact identity UWVMROS1_c60c73df0383bb9a3e23ae3148cff9d6eb49b88c2d10add0af6a86ec9af54512 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgDigital; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgDigitalCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/msg/Digital.
-- \@details Exact identity UWVMROS1_c60c73df0383bb9a3e23ae3148cff9d6eb49b88c2d10add0af6a86ec9af54512 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgDigital; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgDigitalCodecIdentity = "UWVMROS1_c60c73df0383bb9a3e23ae3148cff9d6eb49b88c2d10add0af6a86ec9af54512"
-- | \@brief Encode one complete urinterfaces/msg/Digital value.
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
-- \@see Ros2UrinterfacesMsgDigital; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesMsgDigital :: Ros2UrinterfacesMsgDigital -> Either Word32 B.ByteString
encodeRos2UrinterfacesMsgDigital value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros2UrinterfacesMsgDigital_pin value))
  b1 <- W.encodeBool (ros2UrinterfacesMsgDigital_state value)
  W.bounded 2 [b0, b1]
-- | \@brief Read the ordered canonical fields of urinterfaces/msg/Digital.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgDigital; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesMsgDigital :: W.Decoder Ros2UrinterfacesMsgDigital
readRos2UrinterfacesMsgDigital = do
  a0 <- fromIntegral <$> W.unsigned 1
  a1 <- W.boolean
  let value = Ros2UrinterfacesMsgDigital a0 a1
  case encodeRos2UrinterfacesMsgDigital value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/msg/Digital value.
-- \@details Require the complete 2..2-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgDigital; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesMsgDigital :: B.ByteString -> Either Word32 Ros2UrinterfacesMsgDigital
decodeRos2UrinterfacesMsgDigital = W.runDecoder 2 readRos2UrinterfacesMsgDigital
instance Canonical Ros2UrinterfacesMsgDigital where
  maximumBytes _ = 2
  encodeValue = encodeRos2UrinterfacesMsgDigital
  readValue = readRos2UrinterfacesMsgDigital
-- | \@brief Complete ROS 2 urinterfaces/msg/DigitalIO value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 8..136 bytes
-- and is identified by UWVMROS1_11235b6010feb7e3e5e6c2be8acd3fbba1c25ecbf97ae5e0c899a0e3de3c4e4a.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesMsgDigitalIO = Ros2UrinterfacesMsgDigitalIO
  {
    -- | \@brief urinterfaces/msg/DigitalIO.digital_inputs: urinterfaces/msg/Digital; 0..32 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgDigitalIO_digital_inputs :: [Ros2UrinterfacesMsgDigital]
  ,
    -- | \@brief urinterfaces/msg/DigitalIO.digital_outputs: urinterfaces/msg/Digital; 0..32 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgDigitalIO_digital_outputs :: [Ros2UrinterfacesMsgDigital]
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/msg/DigitalIO.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesMsgDigitalIO :: Ros2UrinterfacesMsgDigitalIO
defaultRos2UrinterfacesMsgDigitalIO = Ros2UrinterfacesMsgDigitalIO ([]) ([])
-- | \@brief Canonical codec identity of urinterfaces/msg/DigitalIO.
-- \@details Exact identity UWVMROS1_11235b6010feb7e3e5e6c2be8acd3fbba1c25ecbf97ae5e0c899a0e3de3c4e4a binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgDigitalIOCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/msg/DigitalIO.
-- \@details Exact identity UWVMROS1_11235b6010feb7e3e5e6c2be8acd3fbba1c25ecbf97ae5e0c899a0e3de3c4e4a binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgDigitalIOCodecIdentity = "UWVMROS1_11235b6010feb7e3e5e6c2be8acd3fbba1c25ecbf97ae5e0c899a0e3de3c4e4a"
-- | \@brief Encode one complete urinterfaces/msg/DigitalIO value.
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
-- \@see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesMsgDigitalIO :: Ros2UrinterfacesMsgDigitalIO -> Either Word32 B.ByteString
encodeRos2UrinterfacesMsgDigitalIO value = do
  if length (ros2UrinterfacesMsgDigitalIO_digital_inputs value) > 32 then Left 22 else Right ()
  prefix0 <- W.encodeCount 32 (length (ros2UrinterfacesMsgDigitalIO_digital_inputs value))
  b0 <- B.concat <$> mapM (\e -> encodeRos2UrinterfacesMsgDigital (e)) (ros2UrinterfacesMsgDigitalIO_digital_inputs value)
  if length (ros2UrinterfacesMsgDigitalIO_digital_outputs value) > 32 then Left 22 else Right ()
  prefix1 <- W.encodeCount 32 (length (ros2UrinterfacesMsgDigitalIO_digital_outputs value))
  b1 <- B.concat <$> mapM (\e -> encodeRos2UrinterfacesMsgDigital (e)) (ros2UrinterfacesMsgDigitalIO_digital_outputs value)
  W.bounded 136 [prefix0, b0, prefix1, b1]
-- | \@brief Read the ordered canonical fields of urinterfaces/msg/DigitalIO.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesMsgDigitalIO :: W.Decoder Ros2UrinterfacesMsgDigitalIO
readRos2UrinterfacesMsgDigitalIO = do
  count0 <- W.count 32
  a0 <- replicateM count0 (readRos2UrinterfacesMsgDigital)
  count1 <- W.count 32
  a1 <- replicateM count1 (readRos2UrinterfacesMsgDigital)
  let value = Ros2UrinterfacesMsgDigitalIO a0 a1
  case encodeRos2UrinterfacesMsgDigitalIO value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/msg/DigitalIO value.
-- \@details Require the complete 8..136-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesMsgDigitalIO :: B.ByteString -> Either Word32 Ros2UrinterfacesMsgDigitalIO
decodeRos2UrinterfacesMsgDigitalIO = W.runDecoder 136 readRos2UrinterfacesMsgDigitalIO
instance Canonical Ros2UrinterfacesMsgDigitalIO where
  maximumBytes _ = 136
  encodeValue = encodeRos2UrinterfacesMsgDigitalIO
  readValue = readRos2UrinterfacesMsgDigitalIO
-- | \@brief Complete ROS 2 urinterfaces/msg/DigitalIOStateStamped value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies 28..412 bytes
-- and is identified by UWVMROS1_542db76916f234e79216804426dc4e8d386a0ef547907391c921f51ed45e64c9.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesMsgDigitalIOStateStamped = Ros2UrinterfacesMsgDigitalIOStateStamped
  {
    -- | \@brief urinterfaces/msg/DigitalIOStateStamped.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgDigitalIOStateStamped_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief urinterfaces/msg/DigitalIOStateStamped.configurable_io: urinterfaces/msg/DigitalIO.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgDigitalIOStateStamped_configurable_io :: Ros2UrinterfacesMsgDigitalIO
  ,
    -- | \@brief urinterfaces/msg/DigitalIOStateStamped.standard_io: urinterfaces/msg/DigitalIO.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgDigitalIOStateStamped_standard_io :: Ros2UrinterfacesMsgDigitalIO
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/msg/DigitalIOStateStamped.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesMsgDigitalIOStateStamped :: Ros2UrinterfacesMsgDigitalIOStateStamped
defaultRos2UrinterfacesMsgDigitalIOStateStamped =
    Ros2UrinterfacesMsgDigitalIOStateStamped
        (defaultRos2Std_msgsMsgHeader)
        (defaultRos2UrinterfacesMsgDigitalIO)
        (defaultRos2UrinterfacesMsgDigitalIO)
-- | \@brief Canonical codec identity of urinterfaces/msg/DigitalIOStateStamped.
-- \@details Exact identity UWVMROS1_542db76916f234e79216804426dc4e8d386a0ef547907391c921f51ed45e64c9 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgDigitalIOStateStampedCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/msg/DigitalIOStateStamped.
-- \@details Exact identity UWVMROS1_542db76916f234e79216804426dc4e8d386a0ef547907391c921f51ed45e64c9 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgDigitalIOStateStampedCodecIdentity =
    "UWVMROS1_542db76916f234e79216804426dc4e8d386a0ef547907391c921f51ed45e64c9"
-- | \@brief Encode one complete urinterfaces/msg/DigitalIOStateStamped value.
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
-- \@see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesMsgDigitalIOStateStamped :: Ros2UrinterfacesMsgDigitalIOStateStamped -> Either Word32 B.ByteString
encodeRos2UrinterfacesMsgDigitalIOStateStamped value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2UrinterfacesMsgDigitalIOStateStamped_header value)
  b1 <- encodeRos2UrinterfacesMsgDigitalIO (ros2UrinterfacesMsgDigitalIOStateStamped_configurable_io value)
  b2 <- encodeRos2UrinterfacesMsgDigitalIO (ros2UrinterfacesMsgDigitalIOStateStamped_standard_io value)
  W.bounded 412 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of urinterfaces/msg/DigitalIOStateStamped.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesMsgDigitalIOStateStamped :: W.Decoder Ros2UrinterfacesMsgDigitalIOStateStamped
readRos2UrinterfacesMsgDigitalIOStateStamped = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- readRos2UrinterfacesMsgDigitalIO
  a2 <- readRos2UrinterfacesMsgDigitalIO
  let value = Ros2UrinterfacesMsgDigitalIOStateStamped a0 a1 a2
  case encodeRos2UrinterfacesMsgDigitalIOStateStamped value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/msg/DigitalIOStateStamped value.
-- \@details Require the complete 28..412-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesMsgDigitalIOStateStamped :: B.ByteString -> Either Word32 Ros2UrinterfacesMsgDigitalIOStateStamped
decodeRos2UrinterfacesMsgDigitalIOStateStamped = W.runDecoder 412 readRos2UrinterfacesMsgDigitalIOStateStamped
instance Canonical Ros2UrinterfacesMsgDigitalIOStateStamped where
  maximumBytes _ = 412
  encodeValue = encodeRos2UrinterfacesMsgDigitalIOStateStamped
  readValue = readRos2UrinterfacesMsgDigitalIOStateStamped
-- | \@brief Complete ROS 2 urinterfaces/msg/DigitalStamped value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 14..142 bytes
-- and is identified by UWVMROS1_dc86d5a04c0801089ddf6b61b5fd33d63df8b5599550c6a0e84e19bbff375865.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesMsgDigitalStamped = Ros2UrinterfacesMsgDigitalStamped
  {
    -- | \@brief urinterfaces/msg/DigitalStamped.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgDigitalStamped_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief urinterfaces/msg/DigitalStamped.data: urinterfaces/msg/Digital.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgDigitalStamped_data :: Ros2UrinterfacesMsgDigital
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/msg/DigitalStamped.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesMsgDigitalStamped :: Ros2UrinterfacesMsgDigitalStamped
defaultRos2UrinterfacesMsgDigitalStamped =
    Ros2UrinterfacesMsgDigitalStamped
        (defaultRos2Std_msgsMsgHeader)
        (defaultRos2UrinterfacesMsgDigital)
-- | \@brief Canonical codec identity of urinterfaces/msg/DigitalStamped.
-- \@details Exact identity UWVMROS1_dc86d5a04c0801089ddf6b61b5fd33d63df8b5599550c6a0e84e19bbff375865 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgDigitalStampedCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/msg/DigitalStamped.
-- \@details Exact identity UWVMROS1_dc86d5a04c0801089ddf6b61b5fd33d63df8b5599550c6a0e84e19bbff375865 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgDigitalStampedCodecIdentity =
    "UWVMROS1_dc86d5a04c0801089ddf6b61b5fd33d63df8b5599550c6a0e84e19bbff375865"
-- | \@brief Encode one complete urinterfaces/msg/DigitalStamped value.
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
-- \@see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesMsgDigitalStamped :: Ros2UrinterfacesMsgDigitalStamped -> Either Word32 B.ByteString
encodeRos2UrinterfacesMsgDigitalStamped value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2UrinterfacesMsgDigitalStamped_header value)
  b1 <- encodeRos2UrinterfacesMsgDigital (ros2UrinterfacesMsgDigitalStamped_data value)
  W.bounded 142 [b0, b1]
-- | \@brief Read the ordered canonical fields of urinterfaces/msg/DigitalStamped.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesMsgDigitalStamped :: W.Decoder Ros2UrinterfacesMsgDigitalStamped
readRos2UrinterfacesMsgDigitalStamped = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- readRos2UrinterfacesMsgDigital
  let value = Ros2UrinterfacesMsgDigitalStamped a0 a1
  case encodeRos2UrinterfacesMsgDigitalStamped value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/msg/DigitalStamped value.
-- \@details Require the complete 14..142-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesMsgDigitalStamped :: B.ByteString -> Either Word32 Ros2UrinterfacesMsgDigitalStamped
decodeRos2UrinterfacesMsgDigitalStamped = W.runDecoder 142 readRos2UrinterfacesMsgDigitalStamped
instance Canonical Ros2UrinterfacesMsgDigitalStamped where
  maximumBytes _ = 142
  encodeValue = encodeRos2UrinterfacesMsgDigitalStamped
  readValue = readRos2UrinterfacesMsgDigitalStamped
-- | \@brief Complete ROS 2 urinterfaces/msg/DoubleMultiArrayStamped value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 16..272 bytes
-- and is identified by UWVMROS1_82b52f88248ea8d6cd7b809d1fd5aa55b4bbe1618044e739998a7ec74a23a8ae.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesMsgDoubleMultiArrayStamped = Ros2UrinterfacesMsgDoubleMultiArrayStamped
  {
    -- | \@brief urinterfaces/msg/DoubleMultiArrayStamped.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgDoubleMultiArrayStamped_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief urinterfaces/msg/DoubleMultiArrayStamped.data: float64; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgDoubleMultiArrayStamped_data :: [Double]
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/msg/DoubleMultiArrayStamped.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesMsgDoubleMultiArrayStamped :: Ros2UrinterfacesMsgDoubleMultiArrayStamped
defaultRos2UrinterfacesMsgDoubleMultiArrayStamped =
    Ros2UrinterfacesMsgDoubleMultiArrayStamped
        (defaultRos2Std_msgsMsgHeader)
        ([])
-- | \@brief Canonical codec identity of urinterfaces/msg/DoubleMultiArrayStamped.
-- \@details Exact identity UWVMROS1_82b52f88248ea8d6cd7b809d1fd5aa55b4bbe1618044e739998a7ec74a23a8ae binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgDoubleMultiArrayStampedCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/msg/DoubleMultiArrayStamped.
-- \@details Exact identity UWVMROS1_82b52f88248ea8d6cd7b809d1fd5aa55b4bbe1618044e739998a7ec74a23a8ae binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgDoubleMultiArrayStampedCodecIdentity =
    "UWVMROS1_82b52f88248ea8d6cd7b809d1fd5aa55b4bbe1618044e739998a7ec74a23a8ae"
-- | \@brief Encode one complete urinterfaces/msg/DoubleMultiArrayStamped value.
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
-- \@see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesMsgDoubleMultiArrayStamped :: Ros2UrinterfacesMsgDoubleMultiArrayStamped -> Either Word32 B.ByteString
encodeRos2UrinterfacesMsgDoubleMultiArrayStamped value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2UrinterfacesMsgDoubleMultiArrayStamped_header value)
  if length (ros2UrinterfacesMsgDoubleMultiArrayStamped_data value) > 16 then Left 22 else Right ()
  prefix1 <- W.encodeCount 16 (length (ros2UrinterfacesMsgDoubleMultiArrayStamped_data value))
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2UrinterfacesMsgDoubleMultiArrayStamped_data value)
  W.bounded 272 [b0, prefix1, b1]
-- | \@brief Read the ordered canonical fields of urinterfaces/msg/DoubleMultiArrayStamped.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesMsgDoubleMultiArrayStamped :: W.Decoder Ros2UrinterfacesMsgDoubleMultiArrayStamped
readRos2UrinterfacesMsgDoubleMultiArrayStamped = do
  a0 <- readRos2Std_msgsMsgHeader
  count1 <- W.count 16
  a1 <- replicateM count1 (W.float64)
  let value = Ros2UrinterfacesMsgDoubleMultiArrayStamped a0 a1
  case encodeRos2UrinterfacesMsgDoubleMultiArrayStamped value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/msg/DoubleMultiArrayStamped value.
-- \@details Require the complete 16..272-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesMsgDoubleMultiArrayStamped :: B.ByteString -> Either Word32 Ros2UrinterfacesMsgDoubleMultiArrayStamped
decodeRos2UrinterfacesMsgDoubleMultiArrayStamped = W.runDecoder 272 readRos2UrinterfacesMsgDoubleMultiArrayStamped
instance Canonical Ros2UrinterfacesMsgDoubleMultiArrayStamped where
  maximumBytes _ = 272
  encodeValue = encodeRos2UrinterfacesMsgDoubleMultiArrayStamped
  readValue = readRos2UrinterfacesMsgDoubleMultiArrayStamped
-- | \@brief Complete ROS 2 urinterfaces/msg/Float32Stamped value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 16..144 bytes
-- and is identified by UWVMROS1_5989940d19890b6d3b78172e9920708745b78e35c1c4fb238412c37a813d30d3.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesMsgFloat32Stamped = Ros2UrinterfacesMsgFloat32Stamped
  {
    -- | \@brief urinterfaces/msg/Float32Stamped.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgFloat32Stamped_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief urinterfaces/msg/Float32Stamped.data: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgFloat32Stamped_data :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/msg/Float32Stamped.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesMsgFloat32Stamped :: Ros2UrinterfacesMsgFloat32Stamped
defaultRos2UrinterfacesMsgFloat32Stamped = Ros2UrinterfacesMsgFloat32Stamped (defaultRos2Std_msgsMsgHeader) (0)
-- | \@brief Canonical codec identity of urinterfaces/msg/Float32Stamped.
-- \@details Exact identity UWVMROS1_5989940d19890b6d3b78172e9920708745b78e35c1c4fb238412c37a813d30d3 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgFloat32StampedCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/msg/Float32Stamped.
-- \@details Exact identity UWVMROS1_5989940d19890b6d3b78172e9920708745b78e35c1c4fb238412c37a813d30d3 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgFloat32StampedCodecIdentity =
    "UWVMROS1_5989940d19890b6d3b78172e9920708745b78e35c1c4fb238412c37a813d30d3"
-- | \@brief Encode one complete urinterfaces/msg/Float32Stamped value.
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
-- \@see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesMsgFloat32Stamped :: Ros2UrinterfacesMsgFloat32Stamped -> Either Word32 B.ByteString
encodeRos2UrinterfacesMsgFloat32Stamped value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2UrinterfacesMsgFloat32Stamped_header value)
  b1 <- W.encodeFloat32 (ros2UrinterfacesMsgFloat32Stamped_data value)
  W.bounded 144 [b0, b1]
-- | \@brief Read the ordered canonical fields of urinterfaces/msg/Float32Stamped.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesMsgFloat32Stamped :: W.Decoder Ros2UrinterfacesMsgFloat32Stamped
readRos2UrinterfacesMsgFloat32Stamped = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- W.float32
  let value = Ros2UrinterfacesMsgFloat32Stamped a0 a1
  case encodeRos2UrinterfacesMsgFloat32Stamped value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/msg/Float32Stamped value.
-- \@details Require the complete 16..144-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesMsgFloat32Stamped :: B.ByteString -> Either Word32 Ros2UrinterfacesMsgFloat32Stamped
decodeRos2UrinterfacesMsgFloat32Stamped = W.runDecoder 144 readRos2UrinterfacesMsgFloat32Stamped
instance Canonical Ros2UrinterfacesMsgFloat32Stamped where
  maximumBytes _ = 144
  encodeValue = encodeRos2UrinterfacesMsgFloat32Stamped
  readValue = readRos2UrinterfacesMsgFloat32Stamped
-- | \@brief Complete ROS 2 urinterfaces/msg/Float64Stamped value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 20..148 bytes
-- and is identified by UWVMROS1_4f8950feff6f20dbdbf9cac1f01168824be3698a4bd90355a470b580930edb21.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesMsgFloat64Stamped = Ros2UrinterfacesMsgFloat64Stamped
  {
    -- | \@brief urinterfaces/msg/Float64Stamped.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgFloat64Stamped_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief urinterfaces/msg/Float64Stamped.data: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgFloat64Stamped_data :: Double
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/msg/Float64Stamped.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesMsgFloat64Stamped :: Ros2UrinterfacesMsgFloat64Stamped
defaultRos2UrinterfacesMsgFloat64Stamped = Ros2UrinterfacesMsgFloat64Stamped (defaultRos2Std_msgsMsgHeader) (0)
-- | \@brief Canonical codec identity of urinterfaces/msg/Float64Stamped.
-- \@details Exact identity UWVMROS1_4f8950feff6f20dbdbf9cac1f01168824be3698a4bd90355a470b580930edb21 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgFloat64StampedCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/msg/Float64Stamped.
-- \@details Exact identity UWVMROS1_4f8950feff6f20dbdbf9cac1f01168824be3698a4bd90355a470b580930edb21 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgFloat64StampedCodecIdentity =
    "UWVMROS1_4f8950feff6f20dbdbf9cac1f01168824be3698a4bd90355a470b580930edb21"
-- | \@brief Encode one complete urinterfaces/msg/Float64Stamped value.
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
-- \@see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesMsgFloat64Stamped :: Ros2UrinterfacesMsgFloat64Stamped -> Either Word32 B.ByteString
encodeRos2UrinterfacesMsgFloat64Stamped value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2UrinterfacesMsgFloat64Stamped_header value)
  b1 <- W.encodeFloat64 (ros2UrinterfacesMsgFloat64Stamped_data value)
  W.bounded 148 [b0, b1]
-- | \@brief Read the ordered canonical fields of urinterfaces/msg/Float64Stamped.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesMsgFloat64Stamped :: W.Decoder Ros2UrinterfacesMsgFloat64Stamped
readRos2UrinterfacesMsgFloat64Stamped = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- W.float64
  let value = Ros2UrinterfacesMsgFloat64Stamped a0 a1
  case encodeRos2UrinterfacesMsgFloat64Stamped value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/msg/Float64Stamped value.
-- \@details Require the complete 20..148-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesMsgFloat64Stamped :: B.ByteString -> Either Word32 Ros2UrinterfacesMsgFloat64Stamped
decodeRos2UrinterfacesMsgFloat64Stamped = W.runDecoder 148 readRos2UrinterfacesMsgFloat64Stamped
instance Canonical Ros2UrinterfacesMsgFloat64Stamped where
  maximumBytes _ = 148
  encodeValue = encodeRos2UrinterfacesMsgFloat64Stamped
  readValue = readRos2UrinterfacesMsgFloat64Stamped
-- | \@brief Complete ROS 2 urinterfaces/msg/JointMode value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies 19..147 bytes
-- and is identified by UWVMROS1_6d766192096ced3c8568a98fb286c309e00cfb97e34b2611fff70e5bb1eaa95c.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesMsgJointMode = Ros2UrinterfacesMsgJointMode
  {
    -- | \@brief urinterfaces/msg/JointMode.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgJointMode_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief urinterfaces/msg/JointMode.joint_modes: uint8; exactly 6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgJointMode_joint_modes :: [Word8]
  ,
    -- | \@brief urinterfaces/msg/JointMode.tool_mode: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgJointMode_tool_mode :: Word8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/msg/JointMode.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesMsgJointMode :: Ros2UrinterfacesMsgJointMode
defaultRos2UrinterfacesMsgJointMode = Ros2UrinterfacesMsgJointMode (defaultRos2Std_msgsMsgHeader) (replicate 6 (0)) (0)
-- | \@brief Canonical codec identity of urinterfaces/msg/JointMode.
-- \@details Exact identity UWVMROS1_6d766192096ced3c8568a98fb286c309e00cfb97e34b2611fff70e5bb1eaa95c binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointModeCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/msg/JointMode.
-- \@details Exact identity UWVMROS1_6d766192096ced3c8568a98fb286c309e00cfb97e34b2611fff70e5bb1eaa95c binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointModeCodecIdentity = "UWVMROS1_6d766192096ced3c8568a98fb286c309e00cfb97e34b2611fff70e5bb1eaa95c"
-- | \@brief urinterfaces/msg/JointMode.JOINT_MODE_RESET: original uint8 constant.
-- \@details Exact admitted value 235. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointMode_JOINT_MODE_RESET :: Word8
-- | \@brief urinterfaces/msg/JointMode.JOINT_MODE_RESET: original uint8 constant.
-- \@details Exact admitted value 235. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointMode_JOINT_MODE_RESET = 235
-- | \@brief urinterfaces/msg/JointMode.JOINT_MODE_SHUTTING_DOWN: original uint8 constant.
-- \@details Exact admitted value 236. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointMode_JOINT_MODE_SHUTTING_DOWN :: Word8
-- | \@brief urinterfaces/msg/JointMode.JOINT_MODE_SHUTTING_DOWN: original uint8 constant.
-- \@details Exact admitted value 236. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointMode_JOINT_MODE_SHUTTING_DOWN = 236
-- | \@brief urinterfaces/msg/JointMode.JOINT_MODE_PART_D_CALIBRATION: original uint8 constant.
-- \@details Exact admitted value 237. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointMode_JOINT_MODE_PART_D_CALIBRATION :: Word8
-- | \@brief urinterfaces/msg/JointMode.JOINT_MODE_PART_D_CALIBRATION: original uint8 constant.
-- \@details Exact admitted value 237. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointMode_JOINT_MODE_PART_D_CALIBRATION = 237
-- | \@brief urinterfaces/msg/JointMode.JOINT_MODE_BACKDRIVE: original uint8 constant.
-- \@details Exact admitted value 238. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointMode_JOINT_MODE_BACKDRIVE :: Word8
-- | \@brief urinterfaces/msg/JointMode.JOINT_MODE_BACKDRIVE: original uint8 constant.
-- \@details Exact admitted value 238. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointMode_JOINT_MODE_BACKDRIVE = 238
-- | \@brief urinterfaces/msg/JointMode.JOINT_MODE_POWER_OFF: original uint8 constant.
-- \@details Exact admitted value 239. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointMode_JOINT_MODE_POWER_OFF :: Word8
-- | \@brief urinterfaces/msg/JointMode.JOINT_MODE_POWER_OFF: original uint8 constant.
-- \@details Exact admitted value 239. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointMode_JOINT_MODE_POWER_OFF = 239
-- | \@brief urinterfaces/msg/JointMode.JOINT_MODE_READY_FOR_POWER_OFF: original uint8 constant.
-- \@details Exact admitted value 240. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointMode_JOINT_MODE_READY_FOR_POWER_OFF :: Word8
-- | \@brief urinterfaces/msg/JointMode.JOINT_MODE_READY_FOR_POWER_OFF: original uint8 constant.
-- \@details Exact admitted value 240. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointMode_JOINT_MODE_READY_FOR_POWER_OFF = 240
-- | \@brief urinterfaces/msg/JointMode.JOINT_MODE_NOT_RESPONDING: original uint8 constant.
-- \@details Exact admitted value 245. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointMode_JOINT_MODE_NOT_RESPONDING :: Word8
-- | \@brief urinterfaces/msg/JointMode.JOINT_MODE_NOT_RESPONDING: original uint8 constant.
-- \@details Exact admitted value 245. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointMode_JOINT_MODE_NOT_RESPONDING = 245
-- | \@brief urinterfaces/msg/JointMode.JOINT_MODE_MOTOR_INITIALISATION: original uint8 constant.
-- \@details Exact admitted value 246. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointMode_JOINT_MODE_MOTOR_INITIALISATION :: Word8
-- | \@brief urinterfaces/msg/JointMode.JOINT_MODE_MOTOR_INITIALISATION: original uint8 constant.
-- \@details Exact admitted value 246. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointMode_JOINT_MODE_MOTOR_INITIALISATION = 246
-- | \@brief urinterfaces/msg/JointMode.JOINT_MODE_BOOTING: original uint8 constant.
-- \@details Exact admitted value 247. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointMode_JOINT_MODE_BOOTING :: Word8
-- | \@brief urinterfaces/msg/JointMode.JOINT_MODE_BOOTING: original uint8 constant.
-- \@details Exact admitted value 247. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointMode_JOINT_MODE_BOOTING = 247
-- | \@brief urinterfaces/msg/JointMode.JOINT_MODE_PART_D_CALIBRATION_ERROR: original uint8 constant.
-- \@details Exact admitted value 248. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointMode_JOINT_MODE_PART_D_CALIBRATION_ERROR :: Word8
-- | \@brief urinterfaces/msg/JointMode.JOINT_MODE_PART_D_CALIBRATION_ERROR: original uint8 constant.
-- \@details Exact admitted value 248. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointMode_JOINT_MODE_PART_D_CALIBRATION_ERROR = 248
-- | \@brief urinterfaces/msg/JointMode.JOINT_MODE_BOOTLOADER: original uint8 constant.
-- \@details Exact admitted value 249. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointMode_JOINT_MODE_BOOTLOADER :: Word8
-- | \@brief urinterfaces/msg/JointMode.JOINT_MODE_BOOTLOADER: original uint8 constant.
-- \@details Exact admitted value 249. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointMode_JOINT_MODE_BOOTLOADER = 249
-- | \@brief urinterfaces/msg/JointMode.JOINT_MODE_CALIBRATION: original uint8 constant.
-- \@details Exact admitted value 250. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointMode_JOINT_MODE_CALIBRATION :: Word8
-- | \@brief urinterfaces/msg/JointMode.JOINT_MODE_CALIBRATION: original uint8 constant.
-- \@details Exact admitted value 250. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointMode_JOINT_MODE_CALIBRATION = 250
-- | \@brief urinterfaces/msg/JointMode.JOINT_MODE_VIOLATION: original uint8 constant.
-- \@details Exact admitted value 251. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointMode_JOINT_MODE_VIOLATION :: Word8
-- | \@brief urinterfaces/msg/JointMode.JOINT_MODE_VIOLATION: original uint8 constant.
-- \@details Exact admitted value 251. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointMode_JOINT_MODE_VIOLATION = 251
-- | \@brief urinterfaces/msg/JointMode.JOINT_MODE_FAULT: original uint8 constant.
-- \@details Exact admitted value 252. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointMode_JOINT_MODE_FAULT :: Word8
-- | \@brief urinterfaces/msg/JointMode.JOINT_MODE_FAULT: original uint8 constant.
-- \@details Exact admitted value 252. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointMode_JOINT_MODE_FAULT = 252
-- | \@brief urinterfaces/msg/JointMode.JOINT_MODE_RUNNING: original uint8 constant.
-- \@details Exact admitted value 253. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointMode_JOINT_MODE_RUNNING :: Word8
-- | \@brief urinterfaces/msg/JointMode.JOINT_MODE_RUNNING: original uint8 constant.
-- \@details Exact admitted value 253. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointMode_JOINT_MODE_RUNNING = 253
-- | \@brief urinterfaces/msg/JointMode.JOINT_MODE_IDLE: original uint8 constant.
-- \@details Exact admitted value 255. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointMode_JOINT_MODE_IDLE :: Word8
-- | \@brief urinterfaces/msg/JointMode.JOINT_MODE_IDLE: original uint8 constant.
-- \@details Exact admitted value 255. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointMode_JOINT_MODE_IDLE = 255
-- | \@brief Encode one complete urinterfaces/msg/JointMode value.
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
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesMsgJointMode :: Ros2UrinterfacesMsgJointMode -> Either Word32 B.ByteString
encodeRos2UrinterfacesMsgJointMode value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2UrinterfacesMsgJointMode_header value)
  if length (ros2UrinterfacesMsgJointMode_joint_modes value) /= 6 then Left 22 else Right ()
  b1 <- B.concat <$> mapM (\e -> W.encodeUnsigned 1 (fromIntegral (e))) (ros2UrinterfacesMsgJointMode_joint_modes value)
  b2 <- W.encodeUnsigned 1 (fromIntegral (ros2UrinterfacesMsgJointMode_tool_mode value))
  W.bounded 147 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of urinterfaces/msg/JointMode.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesMsgJointMode :: W.Decoder Ros2UrinterfacesMsgJointMode
readRos2UrinterfacesMsgJointMode = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- replicateM 6 (fromIntegral <$> W.unsigned 1)
  a2 <- fromIntegral <$> W.unsigned 1
  let value = Ros2UrinterfacesMsgJointMode a0 a1 a2
  case encodeRos2UrinterfacesMsgJointMode value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/msg/JointMode value.
-- \@details Require the complete 19..147-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgJointMode; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesMsgJointMode :: B.ByteString -> Either Word32 Ros2UrinterfacesMsgJointMode
decodeRos2UrinterfacesMsgJointMode = W.runDecoder 147 readRos2UrinterfacesMsgJointMode
instance Canonical Ros2UrinterfacesMsgJointMode where
  maximumBytes _ = 147
  encodeValue = encodeRos2UrinterfacesMsgJointMode
  readValue = readRos2UrinterfacesMsgJointMode
-- | \@brief Complete ROS 2 urinterfaces/msg/JointTemperature value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 36..164 bytes
-- and is identified by UWVMROS1_af77f1ec4c6b4d71e6387315d2388e7493c229dbf216848e61d5638cb308d017.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesMsgJointTemperature = Ros2UrinterfacesMsgJointTemperature
  {
    -- | \@brief urinterfaces/msg/JointTemperature.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgJointTemperature_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief urinterfaces/msg/JointTemperature.data: float32; exactly 6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgJointTemperature_data :: [Float]
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/msg/JointTemperature.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesMsgJointTemperature :: Ros2UrinterfacesMsgJointTemperature
defaultRos2UrinterfacesMsgJointTemperature =
    Ros2UrinterfacesMsgJointTemperature
        (defaultRos2Std_msgsMsgHeader)
        (replicate 6 (0))
-- | \@brief Canonical codec identity of urinterfaces/msg/JointTemperature.
-- \@details Exact identity UWVMROS1_af77f1ec4c6b4d71e6387315d2388e7493c229dbf216848e61d5638cb308d017 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointTemperatureCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/msg/JointTemperature.
-- \@details Exact identity UWVMROS1_af77f1ec4c6b4d71e6387315d2388e7493c229dbf216848e61d5638cb308d017 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointTemperatureCodecIdentity =
    "UWVMROS1_af77f1ec4c6b4d71e6387315d2388e7493c229dbf216848e61d5638cb308d017"
-- | \@brief Encode one complete urinterfaces/msg/JointTemperature value.
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
-- \@see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesMsgJointTemperature :: Ros2UrinterfacesMsgJointTemperature -> Either Word32 B.ByteString
encodeRos2UrinterfacesMsgJointTemperature value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2UrinterfacesMsgJointTemperature_header value)
  if length (ros2UrinterfacesMsgJointTemperature_data value) /= 6 then Left 22 else Right ()
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros2UrinterfacesMsgJointTemperature_data value)
  W.bounded 164 [b0, b1]
-- | \@brief Read the ordered canonical fields of urinterfaces/msg/JointTemperature.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesMsgJointTemperature :: W.Decoder Ros2UrinterfacesMsgJointTemperature
readRos2UrinterfacesMsgJointTemperature = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- replicateM 6 (W.float32)
  let value = Ros2UrinterfacesMsgJointTemperature a0 a1
  case encodeRos2UrinterfacesMsgJointTemperature value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/msg/JointTemperature value.
-- \@details Require the complete 36..164-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesMsgJointTemperature :: B.ByteString -> Either Word32 Ros2UrinterfacesMsgJointTemperature
decodeRos2UrinterfacesMsgJointTemperature = W.runDecoder 164 readRos2UrinterfacesMsgJointTemperature
instance Canonical Ros2UrinterfacesMsgJointTemperature where
  maximumBytes _ = 164
  encodeValue = encodeRos2UrinterfacesMsgJointTemperature
  readValue = readRos2UrinterfacesMsgJointTemperature
-- | \@brief Complete ROS 2 urinterfaces/msg/JointVoltage value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 60..188 bytes
-- and is identified by UWVMROS1_9fa2179402b5dc29b898ac1321c1f6f86676300939776a6e32de4529f3776b61.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesMsgJointVoltage = Ros2UrinterfacesMsgJointVoltage
  {
    -- | \@brief urinterfaces/msg/JointVoltage.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgJointVoltage_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief urinterfaces/msg/JointVoltage.data: float64; exactly 6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgJointVoltage_data :: [Double]
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/msg/JointVoltage.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesMsgJointVoltage :: Ros2UrinterfacesMsgJointVoltage
defaultRos2UrinterfacesMsgJointVoltage =
    Ros2UrinterfacesMsgJointVoltage
        (defaultRos2Std_msgsMsgHeader)
        (replicate 6 (0))
-- | \@brief Canonical codec identity of urinterfaces/msg/JointVoltage.
-- \@details Exact identity UWVMROS1_9fa2179402b5dc29b898ac1321c1f6f86676300939776a6e32de4529f3776b61 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointVoltageCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/msg/JointVoltage.
-- \@details Exact identity UWVMROS1_9fa2179402b5dc29b898ac1321c1f6f86676300939776a6e32de4529f3776b61 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJointVoltageCodecIdentity =
    "UWVMROS1_9fa2179402b5dc29b898ac1321c1f6f86676300939776a6e32de4529f3776b61"
-- | \@brief Encode one complete urinterfaces/msg/JointVoltage value.
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
-- \@see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesMsgJointVoltage :: Ros2UrinterfacesMsgJointVoltage -> Either Word32 B.ByteString
encodeRos2UrinterfacesMsgJointVoltage value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2UrinterfacesMsgJointVoltage_header value)
  if length (ros2UrinterfacesMsgJointVoltage_data value) /= 6 then Left 22 else Right ()
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2UrinterfacesMsgJointVoltage_data value)
  W.bounded 188 [b0, b1]
-- | \@brief Read the ordered canonical fields of urinterfaces/msg/JointVoltage.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesMsgJointVoltage :: W.Decoder Ros2UrinterfacesMsgJointVoltage
readRos2UrinterfacesMsgJointVoltage = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- replicateM 6 (W.float64)
  let value = Ros2UrinterfacesMsgJointVoltage a0 a1
  case encodeRos2UrinterfacesMsgJointVoltage value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/msg/JointVoltage value.
-- \@details Require the complete 60..188-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesMsgJointVoltage :: B.ByteString -> Either Word32 Ros2UrinterfacesMsgJointVoltage
decodeRos2UrinterfacesMsgJointVoltage = W.runDecoder 188 readRos2UrinterfacesMsgJointVoltage
instance Canonical Ros2UrinterfacesMsgJointVoltage where
  maximumBytes _ = 188
  encodeValue = encodeRos2UrinterfacesMsgJointVoltage
  readValue = readRos2UrinterfacesMsgJointVoltage
-- | \@brief Complete ROS 2 urinterfaces/msg/JsonStringType value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies 4..1028 bytes
-- and is identified by UWVMROS1_05da0dcf2728cd73f875421c457804a146ceffe76e9d4619be71c2c92efdd728.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesMsgJsonStringType = Ros2UrinterfacesMsgJsonStringType
  {
    -- | \@brief urinterfaces/msg/JsonStringType.json_string: std_msgs/msg/String.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgJsonStringType; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgJsonStringType_json_string :: Ros2Std_msgsMsgString
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/msg/JsonStringType.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgJsonStringType; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesMsgJsonStringType :: Ros2UrinterfacesMsgJsonStringType
defaultRos2UrinterfacesMsgJsonStringType = Ros2UrinterfacesMsgJsonStringType (defaultRos2Std_msgsMsgString)
-- | \@brief Canonical codec identity of urinterfaces/msg/JsonStringType.
-- \@details Exact identity UWVMROS1_05da0dcf2728cd73f875421c457804a146ceffe76e9d4619be71c2c92efdd728 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgJsonStringType; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJsonStringTypeCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/msg/JsonStringType.
-- \@details Exact identity UWVMROS1_05da0dcf2728cd73f875421c457804a146ceffe76e9d4619be71c2c92efdd728 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgJsonStringType; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgJsonStringTypeCodecIdentity =
    "UWVMROS1_05da0dcf2728cd73f875421c457804a146ceffe76e9d4619be71c2c92efdd728"
-- | \@brief Encode one complete urinterfaces/msg/JsonStringType value.
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
-- \@see Ros2UrinterfacesMsgJsonStringType; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesMsgJsonStringType :: Ros2UrinterfacesMsgJsonStringType -> Either Word32 B.ByteString
encodeRos2UrinterfacesMsgJsonStringType value = do
  b0 <- encodeRos2Std_msgsMsgString (ros2UrinterfacesMsgJsonStringType_json_string value)
  W.bounded 1028 [b0]
-- | \@brief Read the ordered canonical fields of urinterfaces/msg/JsonStringType.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgJsonStringType; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesMsgJsonStringType :: W.Decoder Ros2UrinterfacesMsgJsonStringType
readRos2UrinterfacesMsgJsonStringType = do
  a0 <- readRos2Std_msgsMsgString
  let value = Ros2UrinterfacesMsgJsonStringType a0
  case encodeRos2UrinterfacesMsgJsonStringType value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/msg/JsonStringType value.
-- \@details Require the complete 4..1028-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgJsonStringType; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesMsgJsonStringType :: B.ByteString -> Either Word32 Ros2UrinterfacesMsgJsonStringType
decodeRos2UrinterfacesMsgJsonStringType = W.runDecoder 1028 readRos2UrinterfacesMsgJsonStringType
instance Canonical Ros2UrinterfacesMsgJsonStringType where
  maximumBytes _ = 1028
  encodeValue = encodeRos2UrinterfacesMsgJsonStringType
  readValue = readRos2UrinterfacesMsgJsonStringType
-- | \@brief Complete ROS 2 urinterfaces/msg/RuntimeState value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 13..141 bytes
-- and is identified by UWVMROS1_711ca0e324cbeb36fcedea4881b8658a4b453402c410c8d3efaa57205aaf74b6.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesMsgRuntimeState = Ros2UrinterfacesMsgRuntimeState
  {
    -- | \@brief urinterfaces/msg/RuntimeState.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgRuntimeState_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief urinterfaces/msg/RuntimeState.data: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgRuntimeState_data :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/msg/RuntimeState.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesMsgRuntimeState :: Ros2UrinterfacesMsgRuntimeState
defaultRos2UrinterfacesMsgRuntimeState = Ros2UrinterfacesMsgRuntimeState (defaultRos2Std_msgsMsgHeader) (0)
-- | \@brief Canonical codec identity of urinterfaces/msg/RuntimeState.
-- \@details Exact identity UWVMROS1_711ca0e324cbeb36fcedea4881b8658a4b453402c410c8d3efaa57205aaf74b6 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRuntimeStateCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/msg/RuntimeState.
-- \@details Exact identity UWVMROS1_711ca0e324cbeb36fcedea4881b8658a4b453402c410c8d3efaa57205aaf74b6 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRuntimeStateCodecIdentity =
    "UWVMROS1_711ca0e324cbeb36fcedea4881b8658a4b453402c410c8d3efaa57205aaf74b6"
-- | \@brief urinterfaces/msg/RuntimeState.PROGRAM_STATE_UNDEFINED: original int8 constant.
-- \@details Exact admitted value -1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRuntimeState_PROGRAM_STATE_UNDEFINED :: Int8
-- | \@brief urinterfaces/msg/RuntimeState.PROGRAM_STATE_UNDEFINED: original int8 constant.
-- \@details Exact admitted value -1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRuntimeState_PROGRAM_STATE_UNDEFINED = -1
-- | \@brief urinterfaces/msg/RuntimeState.PROGRAM_STATE_STOPPING: original int8 constant.
-- \@details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRuntimeState_PROGRAM_STATE_STOPPING :: Int8
-- | \@brief urinterfaces/msg/RuntimeState.PROGRAM_STATE_STOPPING: original int8 constant.
-- \@details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRuntimeState_PROGRAM_STATE_STOPPING = 0
-- | \@brief urinterfaces/msg/RuntimeState.PROGRAM_STATE_STOPPED: original int8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRuntimeState_PROGRAM_STATE_STOPPED :: Int8
-- | \@brief urinterfaces/msg/RuntimeState.PROGRAM_STATE_STOPPED: original int8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRuntimeState_PROGRAM_STATE_STOPPED = 1
-- | \@brief urinterfaces/msg/RuntimeState.PROGRAM_STATE_RUNNING: original int8 constant.
-- \@details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRuntimeState_PROGRAM_STATE_RUNNING :: Int8
-- | \@brief urinterfaces/msg/RuntimeState.PROGRAM_STATE_RUNNING: original int8 constant.
-- \@details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRuntimeState_PROGRAM_STATE_RUNNING = 2
-- | \@brief urinterfaces/msg/RuntimeState.PROGRAM_STATE_PAUSING: original int8 constant.
-- \@details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRuntimeState_PROGRAM_STATE_PAUSING :: Int8
-- | \@brief urinterfaces/msg/RuntimeState.PROGRAM_STATE_PAUSING: original int8 constant.
-- \@details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRuntimeState_PROGRAM_STATE_PAUSING = 3
-- | \@brief urinterfaces/msg/RuntimeState.PROGRAM_STATE_PAUSED: original int8 constant.
-- \@details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRuntimeState_PROGRAM_STATE_PAUSED :: Int8
-- | \@brief urinterfaces/msg/RuntimeState.PROGRAM_STATE_PAUSED: original int8 constant.
-- \@details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRuntimeState_PROGRAM_STATE_PAUSED = 4
-- | \@brief urinterfaces/msg/RuntimeState.PROGRAM_STATE_RESUMING: original int8 constant.
-- \@details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRuntimeState_PROGRAM_STATE_RESUMING :: Int8
-- | \@brief urinterfaces/msg/RuntimeState.PROGRAM_STATE_RESUMING: original int8 constant.
-- \@details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRuntimeState_PROGRAM_STATE_RESUMING = 5
-- | \@brief urinterfaces/msg/RuntimeState.PROGRAM_STATE_RETRACTING: original int8 constant.
-- \@details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRuntimeState_PROGRAM_STATE_RETRACTING :: Int8
-- | \@brief urinterfaces/msg/RuntimeState.PROGRAM_STATE_RETRACTING: original int8 constant.
-- \@details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgRuntimeState_PROGRAM_STATE_RETRACTING = 6
-- | \@brief Encode one complete urinterfaces/msg/RuntimeState value.
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
-- \@see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesMsgRuntimeState :: Ros2UrinterfacesMsgRuntimeState -> Either Word32 B.ByteString
encodeRos2UrinterfacesMsgRuntimeState value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2UrinterfacesMsgRuntimeState_header value)
  b1 <- W.encodeSigned 1 (fromIntegral (ros2UrinterfacesMsgRuntimeState_data value))
  W.bounded 141 [b0, b1]
-- | \@brief Read the ordered canonical fields of urinterfaces/msg/RuntimeState.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesMsgRuntimeState :: W.Decoder Ros2UrinterfacesMsgRuntimeState
readRos2UrinterfacesMsgRuntimeState = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- fromIntegral <$> W.signed 1
  let value = Ros2UrinterfacesMsgRuntimeState a0 a1
  case encodeRos2UrinterfacesMsgRuntimeState value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/msg/RuntimeState value.
-- \@details Require the complete 13..141-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesMsgRuntimeState :: B.ByteString -> Either Word32 Ros2UrinterfacesMsgRuntimeState
decodeRos2UrinterfacesMsgRuntimeState = W.runDecoder 141 readRos2UrinterfacesMsgRuntimeState
instance Canonical Ros2UrinterfacesMsgRuntimeState where
  maximumBytes _ = 141
  encodeValue = encodeRos2UrinterfacesMsgRuntimeState
  readValue = readRos2UrinterfacesMsgRuntimeState
-- | \@brief Complete ROS 2 urinterfaces/msg/SafetyStatus value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 13..141 bytes
-- and is identified by UWVMROS1_8f266e1ee8ab2ee9791ff4b52f9dae8ef982844c8d24a0bdfb4bb93cc55b78d4.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesMsgSafetyStatus = Ros2UrinterfacesMsgSafetyStatus
  {
    -- | \@brief urinterfaces/msg/SafetyStatus.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgSafetyStatus_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief urinterfaces/msg/SafetyStatus.data: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgSafetyStatus_data :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/msg/SafetyStatus.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesMsgSafetyStatus :: Ros2UrinterfacesMsgSafetyStatus
defaultRos2UrinterfacesMsgSafetyStatus = Ros2UrinterfacesMsgSafetyStatus (defaultRos2Std_msgsMsgHeader) (0)
-- | \@brief Canonical codec identity of urinterfaces/msg/SafetyStatus.
-- \@details Exact identity UWVMROS1_8f266e1ee8ab2ee9791ff4b52f9dae8ef982844c8d24a0bdfb4bb93cc55b78d4 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatusCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/msg/SafetyStatus.
-- \@details Exact identity UWVMROS1_8f266e1ee8ab2ee9791ff4b52f9dae8ef982844c8d24a0bdfb4bb93cc55b78d4 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatusCodecIdentity =
    "UWVMROS1_8f266e1ee8ab2ee9791ff4b52f9dae8ef982844c8d24a0bdfb4bb93cc55b78d4"
-- | \@brief urinterfaces/msg/SafetyStatus.NORMAL: original int8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_NORMAL :: Int8
-- | \@brief urinterfaces/msg/SafetyStatus.NORMAL: original int8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_NORMAL = 1
-- | \@brief urinterfaces/msg/SafetyStatus.REDUCED: original int8 constant.
-- \@details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_REDUCED :: Int8
-- | \@brief urinterfaces/msg/SafetyStatus.REDUCED: original int8 constant.
-- \@details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_REDUCED = 2
-- | \@brief urinterfaces/msg/SafetyStatus.PROTECTIVE_STOP: original int8 constant.
-- \@details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_PROTECTIVE_STOP :: Int8
-- | \@brief urinterfaces/msg/SafetyStatus.PROTECTIVE_STOP: original int8 constant.
-- \@details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_PROTECTIVE_STOP = 3
-- | \@brief urinterfaces/msg/SafetyStatus.RECOVERY: original int8 constant.
-- \@details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_RECOVERY :: Int8
-- | \@brief urinterfaces/msg/SafetyStatus.RECOVERY: original int8 constant.
-- \@details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_RECOVERY = 4
-- | \@brief urinterfaces/msg/SafetyStatus.SAFEGUARD_STOP: original int8 constant.
-- \@details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_SAFEGUARD_STOP :: Int8
-- | \@brief urinterfaces/msg/SafetyStatus.SAFEGUARD_STOP: original int8 constant.
-- \@details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_SAFEGUARD_STOP = 5
-- | \@brief urinterfaces/msg/SafetyStatus.SYSTEM_EMERGENCY_STOP: original int8 constant.
-- \@details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_SYSTEM_EMERGENCY_STOP :: Int8
-- | \@brief urinterfaces/msg/SafetyStatus.SYSTEM_EMERGENCY_STOP: original int8 constant.
-- \@details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_SYSTEM_EMERGENCY_STOP = 6
-- | \@brief urinterfaces/msg/SafetyStatus.ROBOT_EMERGENCY_STOP: original int8 constant.
-- \@details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_ROBOT_EMERGENCY_STOP :: Int8
-- | \@brief urinterfaces/msg/SafetyStatus.ROBOT_EMERGENCY_STOP: original int8 constant.
-- \@details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_ROBOT_EMERGENCY_STOP = 7
-- | \@brief urinterfaces/msg/SafetyStatus.VIOLATION: original int8 constant.
-- \@details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_VIOLATION :: Int8
-- | \@brief urinterfaces/msg/SafetyStatus.VIOLATION: original int8 constant.
-- \@details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_VIOLATION = 8
-- | \@brief urinterfaces/msg/SafetyStatus.FAULT: original int8 constant.
-- \@details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_FAULT :: Int8
-- | \@brief urinterfaces/msg/SafetyStatus.FAULT: original int8 constant.
-- \@details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_FAULT = 9
-- | \@brief urinterfaces/msg/SafetyStatus.VALIDATE_JOINT_ID: original int8 constant.
-- \@details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_VALIDATE_JOINT_ID :: Int8
-- | \@brief urinterfaces/msg/SafetyStatus.VALIDATE_JOINT_ID: original int8 constant.
-- \@details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_VALIDATE_JOINT_ID = 10
-- | \@brief urinterfaces/msg/SafetyStatus.UNDEFINED_SAFETY_MODE: original int8 constant.
-- \@details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_UNDEFINED_SAFETY_MODE :: Int8
-- | \@brief urinterfaces/msg/SafetyStatus.UNDEFINED_SAFETY_MODE: original int8 constant.
-- \@details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_UNDEFINED_SAFETY_MODE = 11
-- | \@brief urinterfaces/msg/SafetyStatus.AUTOMATIC_MODE_SAFEGUARD_STOP: original int8 constant.
-- \@details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_AUTOMATIC_MODE_SAFEGUARD_STOP :: Int8
-- | \@brief urinterfaces/msg/SafetyStatus.AUTOMATIC_MODE_SAFEGUARD_STOP: original int8 constant.
-- \@details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_AUTOMATIC_MODE_SAFEGUARD_STOP = 12
-- | \@brief urinterfaces/msg/SafetyStatus.SYSTEM_THREE_POSITION_ENABLING_STOP: original int8 constant.
-- \@details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_SYSTEM_THREE_POSITION_ENABLING_STOP :: Int8
-- | \@brief urinterfaces/msg/SafetyStatus.SYSTEM_THREE_POSITION_ENABLING_STOP: original int8 constant.
-- \@details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_SYSTEM_THREE_POSITION_ENABLING_STOP = 13
-- | \@brief urinterfaces/msg/SafetyStatus.TP_THREE_POSITION_ENABLING_STOP: original int8 constant.
-- \@details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_TP_THREE_POSITION_ENABLING_STOP :: Int8
-- | \@brief urinterfaces/msg/SafetyStatus.TP_THREE_POSITION_ENABLING_STOP: original int8 constant.
-- \@details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_TP_THREE_POSITION_ENABLING_STOP = 14
-- | \@brief urinterfaces/msg/SafetyStatus.IMMI_EMERGENCY_STOP: original int8 constant.
-- \@details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_IMMI_EMERGENCY_STOP :: Int8
-- | \@brief urinterfaces/msg/SafetyStatus.IMMI_EMERGENCY_STOP: original int8 constant.
-- \@details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_IMMI_EMERGENCY_STOP = 15
-- | \@brief urinterfaces/msg/SafetyStatus.IMMI_SAFEGUARD_STOP: original int8 constant.
-- \@details Exact admitted value 16. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_IMMI_SAFEGUARD_STOP :: Int8
-- | \@brief urinterfaces/msg/SafetyStatus.IMMI_SAFEGUARD_STOP: original int8 constant.
-- \@details Exact admitted value 16. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_IMMI_SAFEGUARD_STOP = 16
-- | \@brief urinterfaces/msg/SafetyStatus.PROFISAFE_WAITING_FOR_PARAMETERS: original int8 constant.
-- \@details Exact admitted value 17. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_PROFISAFE_WAITING_FOR_PARAMETERS :: Int8
-- | \@brief urinterfaces/msg/SafetyStatus.PROFISAFE_WAITING_FOR_PARAMETERS: original int8 constant.
-- \@details Exact admitted value 17. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_PROFISAFE_WAITING_FOR_PARAMETERS = 17
-- | \@brief urinterfaces/msg/SafetyStatus.PROFISAFE_AUTOMATIC_MODE_SAFEGUARD_STOP: original int8 constant.
-- \@details Exact admitted value 18. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_PROFISAFE_AUTOMATIC_MODE_SAFEGUARD_STOP :: Int8
-- | \@brief urinterfaces/msg/SafetyStatus.PROFISAFE_AUTOMATIC_MODE_SAFEGUARD_STOP: original int8 constant.
-- \@details Exact admitted value 18. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_PROFISAFE_AUTOMATIC_MODE_SAFEGUARD_STOP = 18
-- | \@brief urinterfaces/msg/SafetyStatus.PROFISAFE_SAFEGUARD_STOP: original int8 constant.
-- \@details Exact admitted value 19. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_PROFISAFE_SAFEGUARD_STOP :: Int8
-- | \@brief urinterfaces/msg/SafetyStatus.PROFISAFE_SAFEGUARD_STOP: original int8 constant.
-- \@details Exact admitted value 19. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_PROFISAFE_SAFEGUARD_STOP = 19
-- | \@brief urinterfaces/msg/SafetyStatus.PROFISAFE_EMERGENCY_STOP: original int8 constant.
-- \@details Exact admitted value 20. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_PROFISAFE_EMERGENCY_STOP :: Int8
-- | \@brief urinterfaces/msg/SafetyStatus.PROFISAFE_EMERGENCY_STOP: original int8 constant.
-- \@details Exact admitted value 20. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_PROFISAFE_EMERGENCY_STOP = 20
-- | \@brief urinterfaces/msg/SafetyStatus.SAFETY_API_SAFEGUARD_STOP: original int8 constant.
-- \@details Exact admitted value 22. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_SAFETY_API_SAFEGUARD_STOP :: Int8
-- | \@brief urinterfaces/msg/SafetyStatus.SAFETY_API_SAFEGUARD_STOP: original int8 constant.
-- \@details Exact admitted value 22. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_SAFETY_API_SAFEGUARD_STOP = 22
-- | \@brief urinterfaces/msg/SafetyStatus.IO_PLANE_STOP: original int8 constant.
-- \@details Exact admitted value 23. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_IO_PLANE_STOP :: Int8
-- | \@brief urinterfaces/msg/SafetyStatus.IO_PLANE_STOP: original int8 constant.
-- \@details Exact admitted value 23. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSafetyStatus_IO_PLANE_STOP = 23
-- | \@brief Encode one complete urinterfaces/msg/SafetyStatus value.
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
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesMsgSafetyStatus :: Ros2UrinterfacesMsgSafetyStatus -> Either Word32 B.ByteString
encodeRos2UrinterfacesMsgSafetyStatus value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2UrinterfacesMsgSafetyStatus_header value)
  b1 <- W.encodeSigned 1 (fromIntegral (ros2UrinterfacesMsgSafetyStatus_data value))
  W.bounded 141 [b0, b1]
-- | \@brief Read the ordered canonical fields of urinterfaces/msg/SafetyStatus.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesMsgSafetyStatus :: W.Decoder Ros2UrinterfacesMsgSafetyStatus
readRos2UrinterfacesMsgSafetyStatus = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- fromIntegral <$> W.signed 1
  let value = Ros2UrinterfacesMsgSafetyStatus a0 a1
  case encodeRos2UrinterfacesMsgSafetyStatus value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/msg/SafetyStatus value.
-- \@details Require the complete 13..141-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesMsgSafetyStatus :: B.ByteString -> Either Word32 Ros2UrinterfacesMsgSafetyStatus
decodeRos2UrinterfacesMsgSafetyStatus = W.runDecoder 141 readRos2UrinterfacesMsgSafetyStatus
instance Canonical Ros2UrinterfacesMsgSafetyStatus where
  maximumBytes _ = 141
  encodeValue = encodeRos2UrinterfacesMsgSafetyStatus
  readValue = readRos2UrinterfacesMsgSafetyStatus
-- | \@brief Complete ROS 2 urinterfaces/msg/SharedVariablesEditResponse value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 5..1029 bytes
-- and is identified by UWVMROS1_870ce8f649642b6edcce8ba5c7cb27818ec138d7afb2cde926638d21ea748212.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesMsgSharedVariablesEditResponse = Ros2UrinterfacesMsgSharedVariablesEditResponse
  {
    -- | \@brief urinterfaces/msg/SharedVariablesEditResponse.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgSharedVariablesEditResponse_success :: Bool
  ,
    -- | \@brief urinterfaces/msg/SharedVariablesEditResponse.result_message: std_msgs/msg/String.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgSharedVariablesEditResponse_result_message :: Ros2Std_msgsMsgString
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/msg/SharedVariablesEditResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesMsgSharedVariablesEditResponse :: Ros2UrinterfacesMsgSharedVariablesEditResponse
defaultRos2UrinterfacesMsgSharedVariablesEditResponse =
    Ros2UrinterfacesMsgSharedVariablesEditResponse
        (False)
        (defaultRos2Std_msgsMsgString)
-- | \@brief Canonical codec identity of urinterfaces/msg/SharedVariablesEditResponse.
-- \@details Exact identity UWVMROS1_870ce8f649642b6edcce8ba5c7cb27818ec138d7afb2cde926638d21ea748212 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSharedVariablesEditResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/msg/SharedVariablesEditResponse.
-- \@details Exact identity UWVMROS1_870ce8f649642b6edcce8ba5c7cb27818ec138d7afb2cde926638d21ea748212 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSharedVariablesEditResponseCodecIdentity =
    "UWVMROS1_870ce8f649642b6edcce8ba5c7cb27818ec138d7afb2cde926638d21ea748212"
-- | \@brief Encode one complete urinterfaces/msg/SharedVariablesEditResponse value.
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
-- \@see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesMsgSharedVariablesEditResponse :: Ros2UrinterfacesMsgSharedVariablesEditResponse -> Either Word32 B.ByteString
encodeRos2UrinterfacesMsgSharedVariablesEditResponse value = do
  b0 <- W.encodeBool (ros2UrinterfacesMsgSharedVariablesEditResponse_success value)
  b1 <- encodeRos2Std_msgsMsgString (ros2UrinterfacesMsgSharedVariablesEditResponse_result_message value)
  W.bounded 1029 [b0, b1]
-- | \@brief Read the ordered canonical fields of urinterfaces/msg/SharedVariablesEditResponse.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesMsgSharedVariablesEditResponse :: W.Decoder Ros2UrinterfacesMsgSharedVariablesEditResponse
readRos2UrinterfacesMsgSharedVariablesEditResponse = do
  a0 <- W.boolean
  a1 <- readRos2Std_msgsMsgString
  let value = Ros2UrinterfacesMsgSharedVariablesEditResponse a0 a1
  case encodeRos2UrinterfacesMsgSharedVariablesEditResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/msg/SharedVariablesEditResponse value.
-- \@details Require the complete 5..1029-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesMsgSharedVariablesEditResponse :: B.ByteString -> Either Word32 Ros2UrinterfacesMsgSharedVariablesEditResponse
decodeRos2UrinterfacesMsgSharedVariablesEditResponse = W.runDecoder 1029 readRos2UrinterfacesMsgSharedVariablesEditResponse
instance Canonical Ros2UrinterfacesMsgSharedVariablesEditResponse where
  maximumBytes _ = 1029
  encodeValue = encodeRos2UrinterfacesMsgSharedVariablesEditResponse
  readValue = readRos2UrinterfacesMsgSharedVariablesEditResponse
-- | \@brief Complete ROS 2 urinterfaces/msg/SpeedSliderFraction value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 20..148 bytes
-- and is identified by UWVMROS1_55158782c2bc4d4741e8f2850efddf09d27666f9c3aeeded762d8d8e4198fccd.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesMsgSpeedSliderFraction = Ros2UrinterfacesMsgSpeedSliderFraction
  {
    -- | \@brief urinterfaces/msg/SpeedSliderFraction.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgSpeedSliderFraction_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief urinterfaces/msg/SpeedSliderFraction.data: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgSpeedSliderFraction_data :: Double
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/msg/SpeedSliderFraction.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesMsgSpeedSliderFraction :: Ros2UrinterfacesMsgSpeedSliderFraction
defaultRos2UrinterfacesMsgSpeedSliderFraction =
    Ros2UrinterfacesMsgSpeedSliderFraction
        (defaultRos2Std_msgsMsgHeader)
        (0)
-- | \@brief Canonical codec identity of urinterfaces/msg/SpeedSliderFraction.
-- \@details Exact identity UWVMROS1_55158782c2bc4d4741e8f2850efddf09d27666f9c3aeeded762d8d8e4198fccd binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSpeedSliderFractionCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/msg/SpeedSliderFraction.
-- \@details Exact identity UWVMROS1_55158782c2bc4d4741e8f2850efddf09d27666f9c3aeeded762d8d8e4198fccd binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgSpeedSliderFractionCodecIdentity =
    "UWVMROS1_55158782c2bc4d4741e8f2850efddf09d27666f9c3aeeded762d8d8e4198fccd"
-- | \@brief Encode one complete urinterfaces/msg/SpeedSliderFraction value.
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
-- \@see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesMsgSpeedSliderFraction :: Ros2UrinterfacesMsgSpeedSliderFraction -> Either Word32 B.ByteString
encodeRos2UrinterfacesMsgSpeedSliderFraction value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2UrinterfacesMsgSpeedSliderFraction_header value)
  b1 <- W.encodeFloat64 (ros2UrinterfacesMsgSpeedSliderFraction_data value)
  W.bounded 148 [b0, b1]
-- | \@brief Read the ordered canonical fields of urinterfaces/msg/SpeedSliderFraction.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesMsgSpeedSliderFraction :: W.Decoder Ros2UrinterfacesMsgSpeedSliderFraction
readRos2UrinterfacesMsgSpeedSliderFraction = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- W.float64
  let value = Ros2UrinterfacesMsgSpeedSliderFraction a0 a1
  case encodeRos2UrinterfacesMsgSpeedSliderFraction value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/msg/SpeedSliderFraction value.
-- \@details Require the complete 20..148-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesMsgSpeedSliderFraction :: B.ByteString -> Either Word32 Ros2UrinterfacesMsgSpeedSliderFraction
decodeRos2UrinterfacesMsgSpeedSliderFraction = W.runDecoder 148 readRos2UrinterfacesMsgSpeedSliderFraction
instance Canonical Ros2UrinterfacesMsgSpeedSliderFraction where
  maximumBytes _ = 148
  encodeValue = encodeRos2UrinterfacesMsgSpeedSliderFraction
  readValue = readRos2UrinterfacesMsgSpeedSliderFraction
-- | \@brief Complete ROS 2 urinterfaces/msg/TCPState value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies 116..244 bytes
-- and is identified by UWVMROS1_49d8f678cc32669dd81528bb4c5d97f28019745159ef5e7267c8a076cd315b92.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesMsgTCPState = Ros2UrinterfacesMsgTCPState
  {
    -- | \@brief urinterfaces/msg/TCPState.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgTCPState; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgTCPState_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief urinterfaces/msg/TCPState.pose: geometry_msgs/msg/Pose.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgTCPState; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgTCPState_pose :: Ros2Geometry_msgsMsgPose
  ,
    -- | \@brief urinterfaces/msg/TCPState.speed: geometry_msgs/msg/Twist.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgTCPState; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgTCPState_speed :: Ros2Geometry_msgsMsgTwist
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/msg/TCPState.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgTCPState; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesMsgTCPState :: Ros2UrinterfacesMsgTCPState
defaultRos2UrinterfacesMsgTCPState =
    Ros2UrinterfacesMsgTCPState
        (defaultRos2Std_msgsMsgHeader)
        (defaultRos2Geometry_msgsMsgPose)
        (defaultRos2Geometry_msgsMsgTwist)
-- | \@brief Canonical codec identity of urinterfaces/msg/TCPState.
-- \@details Exact identity UWVMROS1_49d8f678cc32669dd81528bb4c5d97f28019745159ef5e7267c8a076cd315b92 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgTCPState; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgTCPStateCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/msg/TCPState.
-- \@details Exact identity UWVMROS1_49d8f678cc32669dd81528bb4c5d97f28019745159ef5e7267c8a076cd315b92 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgTCPState; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgTCPStateCodecIdentity = "UWVMROS1_49d8f678cc32669dd81528bb4c5d97f28019745159ef5e7267c8a076cd315b92"
-- | \@brief Encode one complete urinterfaces/msg/TCPState value.
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
-- \@see Ros2UrinterfacesMsgTCPState; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesMsgTCPState :: Ros2UrinterfacesMsgTCPState -> Either Word32 B.ByteString
encodeRos2UrinterfacesMsgTCPState value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2UrinterfacesMsgTCPState_header value)
  b1 <- encodeRos2Geometry_msgsMsgPose (ros2UrinterfacesMsgTCPState_pose value)
  b2 <- encodeRos2Geometry_msgsMsgTwist (ros2UrinterfacesMsgTCPState_speed value)
  W.bounded 244 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of urinterfaces/msg/TCPState.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgTCPState; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesMsgTCPState :: W.Decoder Ros2UrinterfacesMsgTCPState
readRos2UrinterfacesMsgTCPState = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- readRos2Geometry_msgsMsgPose
  a2 <- readRos2Geometry_msgsMsgTwist
  let value = Ros2UrinterfacesMsgTCPState a0 a1 a2
  case encodeRos2UrinterfacesMsgTCPState value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/msg/TCPState value.
-- \@details Require the complete 116..244-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgTCPState; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesMsgTCPState :: B.ByteString -> Either Word32 Ros2UrinterfacesMsgTCPState
decodeRos2UrinterfacesMsgTCPState = W.runDecoder 244 readRos2UrinterfacesMsgTCPState
instance Canonical Ros2UrinterfacesMsgTCPState where
  maximumBytes _ = 244
  encodeValue = encodeRos2UrinterfacesMsgTCPState
  readValue = readRos2UrinterfacesMsgTCPState
-- | \@brief Complete ROS 2 urinterfaces/msg/ToolOutputMode value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies 15..143 bytes
-- and is identified by UWVMROS1_21df545459050dc86de1fb111c9a4b2c8bb50c3729137b8d5c5134dd33b84660.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesMsgToolOutputMode = Ros2UrinterfacesMsgToolOutputMode
  {
    -- | \@brief urinterfaces/msg/ToolOutputMode.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgToolOutputMode_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief urinterfaces/msg/ToolOutputMode.output_mode: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgToolOutputMode_output_mode :: Word8
  ,
    -- | \@brief urinterfaces/msg/ToolOutputMode.output_pin_mode: uint8; exactly 2 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgToolOutputMode_output_pin_mode :: [Word8]
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/msg/ToolOutputMode.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesMsgToolOutputMode :: Ros2UrinterfacesMsgToolOutputMode
defaultRos2UrinterfacesMsgToolOutputMode =
    Ros2UrinterfacesMsgToolOutputMode
        (defaultRos2Std_msgsMsgHeader)
        (0)
        (replicate 2 (0))
-- | \@brief Canonical codec identity of urinterfaces/msg/ToolOutputMode.
-- \@details Exact identity UWVMROS1_21df545459050dc86de1fb111c9a4b2c8bb50c3729137b8d5c5134dd33b84660 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgToolOutputModeCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/msg/ToolOutputMode.
-- \@details Exact identity UWVMROS1_21df545459050dc86de1fb111c9a4b2c8bb50c3729137b8d5c5134dd33b84660 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgToolOutputModeCodecIdentity =
    "UWVMROS1_21df545459050dc86de1fb111c9a4b2c8bb50c3729137b8d5c5134dd33b84660"
-- | \@brief urinterfaces/msg/ToolOutputMode.TOOL_OUTPUT: original uint8 constant.
-- \@details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgToolOutputMode_TOOL_OUTPUT :: Word8
-- | \@brief urinterfaces/msg/ToolOutputMode.TOOL_OUTPUT: original uint8 constant.
-- \@details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgToolOutputMode_TOOL_OUTPUT = 0
-- | \@brief urinterfaces/msg/ToolOutputMode.TOOL_POWER: original uint8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgToolOutputMode_TOOL_POWER :: Word8
-- | \@brief urinterfaces/msg/ToolOutputMode.TOOL_POWER: original uint8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgToolOutputMode_TOOL_POWER = 1
-- | \@brief urinterfaces/msg/ToolOutputMode.TOOL_SAFE: original uint8 constant.
-- \@details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgToolOutputMode_TOOL_SAFE :: Word8
-- | \@brief urinterfaces/msg/ToolOutputMode.TOOL_SAFE: original uint8 constant.
-- \@details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgToolOutputMode_TOOL_SAFE = 2
-- | \@brief urinterfaces/msg/ToolOutputMode.OUTPUT_MODE_DISABLED: original uint8 constant.
-- \@details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgToolOutputMode_OUTPUT_MODE_DISABLED :: Word8
-- | \@brief urinterfaces/msg/ToolOutputMode.OUTPUT_MODE_DISABLED: original uint8 constant.
-- \@details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgToolOutputMode_OUTPUT_MODE_DISABLED = 0
-- | \@brief urinterfaces/msg/ToolOutputMode.OUTPUT_MODE_SINKING: original uint8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgToolOutputMode_OUTPUT_MODE_SINKING :: Word8
-- | \@brief urinterfaces/msg/ToolOutputMode.OUTPUT_MODE_SINKING: original uint8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgToolOutputMode_OUTPUT_MODE_SINKING = 1
-- | \@brief urinterfaces/msg/ToolOutputMode.OUTPUT_MODE_SOURCING: original uint8 constant.
-- \@details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgToolOutputMode_OUTPUT_MODE_SOURCING :: Word8
-- | \@brief urinterfaces/msg/ToolOutputMode.OUTPUT_MODE_SOURCING: original uint8 constant.
-- \@details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgToolOutputMode_OUTPUT_MODE_SOURCING = 2
-- | \@brief urinterfaces/msg/ToolOutputMode.OUTPUT_MODE_PUSH_PULL: original uint8 constant.
-- \@details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgToolOutputMode_OUTPUT_MODE_PUSH_PULL :: Word8
-- | \@brief urinterfaces/msg/ToolOutputMode.OUTPUT_MODE_PUSH_PULL: original uint8 constant.
-- \@details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgToolOutputMode_OUTPUT_MODE_PUSH_PULL = 3
-- | \@brief Encode one complete urinterfaces/msg/ToolOutputMode value.
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
-- \@see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesMsgToolOutputMode :: Ros2UrinterfacesMsgToolOutputMode -> Either Word32 B.ByteString
encodeRos2UrinterfacesMsgToolOutputMode value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2UrinterfacesMsgToolOutputMode_header value)
  b1 <- W.encodeUnsigned 1 (fromIntegral (ros2UrinterfacesMsgToolOutputMode_output_mode value))
  if length (ros2UrinterfacesMsgToolOutputMode_output_pin_mode value) /= 2 then Left 22 else Right ()
  b2 <- B.concat <$> mapM (\e -> W.encodeUnsigned 1 (fromIntegral (e))) (ros2UrinterfacesMsgToolOutputMode_output_pin_mode value)
  W.bounded 143 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of urinterfaces/msg/ToolOutputMode.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesMsgToolOutputMode :: W.Decoder Ros2UrinterfacesMsgToolOutputMode
readRos2UrinterfacesMsgToolOutputMode = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- fromIntegral <$> W.unsigned 1
  a2 <- replicateM 2 (fromIntegral <$> W.unsigned 1)
  let value = Ros2UrinterfacesMsgToolOutputMode a0 a1 a2
  case encodeRos2UrinterfacesMsgToolOutputMode value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/msg/ToolOutputMode value.
-- \@details Require the complete 15..143-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesMsgToolOutputMode :: B.ByteString -> Either Word32 Ros2UrinterfacesMsgToolOutputMode
decodeRos2UrinterfacesMsgToolOutputMode = W.runDecoder 143 readRos2UrinterfacesMsgToolOutputMode
instance Canonical Ros2UrinterfacesMsgToolOutputMode where
  maximumBytes _ = 143
  encodeValue = encodeRos2UrinterfacesMsgToolOutputMode
  readValue = readRos2UrinterfacesMsgToolOutputMode
-- | \@brief Complete ROS 2 urinterfaces/msg/VariableUpdate value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 16..1168 bytes
-- and is identified by UWVMROS1_7028ea5c674be886f4fac1d2ac0452167489f2c23d7ea759cdbec90feccbdb20.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesMsgVariableUpdate = Ros2UrinterfacesMsgVariableUpdate
  {
    -- | \@brief urinterfaces/msg/VariableUpdate.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgVariableUpdate_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief urinterfaces/msg/VariableUpdate.data: urinterfaces/msg/JsonStringType.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgVariableUpdate_data :: Ros2UrinterfacesMsgJsonStringType
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/msg/VariableUpdate.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesMsgVariableUpdate :: Ros2UrinterfacesMsgVariableUpdate
defaultRos2UrinterfacesMsgVariableUpdate =
    Ros2UrinterfacesMsgVariableUpdate
        (defaultRos2Std_msgsMsgHeader)
        (defaultRos2UrinterfacesMsgJsonStringType)
-- | \@brief Canonical codec identity of urinterfaces/msg/VariableUpdate.
-- \@details Exact identity UWVMROS1_7028ea5c674be886f4fac1d2ac0452167489f2c23d7ea759cdbec90feccbdb20 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgVariableUpdateCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/msg/VariableUpdate.
-- \@details Exact identity UWVMROS1_7028ea5c674be886f4fac1d2ac0452167489f2c23d7ea759cdbec90feccbdb20 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgVariableUpdateCodecIdentity =
    "UWVMROS1_7028ea5c674be886f4fac1d2ac0452167489f2c23d7ea759cdbec90feccbdb20"
-- | \@brief Encode one complete urinterfaces/msg/VariableUpdate value.
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
-- \@see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesMsgVariableUpdate :: Ros2UrinterfacesMsgVariableUpdate -> Either Word32 B.ByteString
encodeRos2UrinterfacesMsgVariableUpdate value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2UrinterfacesMsgVariableUpdate_header value)
  b1 <- encodeRos2UrinterfacesMsgJsonStringType (ros2UrinterfacesMsgVariableUpdate_data value)
  W.bounded 1168 [b0, b1]
-- | \@brief Read the ordered canonical fields of urinterfaces/msg/VariableUpdate.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesMsgVariableUpdate :: W.Decoder Ros2UrinterfacesMsgVariableUpdate
readRos2UrinterfacesMsgVariableUpdate = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- readRos2UrinterfacesMsgJsonStringType
  let value = Ros2UrinterfacesMsgVariableUpdate a0 a1
  case encodeRos2UrinterfacesMsgVariableUpdate value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/msg/VariableUpdate value.
-- \@details Require the complete 16..1168-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesMsgVariableUpdate :: B.ByteString -> Either Word32 Ros2UrinterfacesMsgVariableUpdate
decodeRos2UrinterfacesMsgVariableUpdate = W.runDecoder 1168 readRos2UrinterfacesMsgVariableUpdate
instance Canonical Ros2UrinterfacesMsgVariableUpdate where
  maximumBytes _ = 1168
  encodeValue = encodeRos2UrinterfacesMsgVariableUpdate
  readValue = readRos2UrinterfacesMsgVariableUpdate
-- | \@brief Complete ROS 2 urinterfaces/msg/VoltageCurrentStamped value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies 28..156 bytes
-- and is identified by UWVMROS1_bcc3f6871a7bf0ff691d0c9c1b6596a633597de795b486c2b82ac922ede76805.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesMsgVoltageCurrentStamped = Ros2UrinterfacesMsgVoltageCurrentStamped
  {
    -- | \@brief urinterfaces/msg/VoltageCurrentStamped.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgVoltageCurrentStamped_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief urinterfaces/msg/VoltageCurrentStamped.voltage: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgVoltageCurrentStamped_voltage :: Double
  ,
    -- | \@brief urinterfaces/msg/VoltageCurrentStamped.current: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgVoltageCurrentStamped_current :: Double
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/msg/VoltageCurrentStamped.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesMsgVoltageCurrentStamped :: Ros2UrinterfacesMsgVoltageCurrentStamped
defaultRos2UrinterfacesMsgVoltageCurrentStamped =
    Ros2UrinterfacesMsgVoltageCurrentStamped
        (defaultRos2Std_msgsMsgHeader)
        (0)
        (0)
-- | \@brief Canonical codec identity of urinterfaces/msg/VoltageCurrentStamped.
-- \@details Exact identity UWVMROS1_bcc3f6871a7bf0ff691d0c9c1b6596a633597de795b486c2b82ac922ede76805 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgVoltageCurrentStampedCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/msg/VoltageCurrentStamped.
-- \@details Exact identity UWVMROS1_bcc3f6871a7bf0ff691d0c9c1b6596a633597de795b486c2b82ac922ede76805 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgVoltageCurrentStampedCodecIdentity =
    "UWVMROS1_bcc3f6871a7bf0ff691d0c9c1b6596a633597de795b486c2b82ac922ede76805"
-- | \@brief Encode one complete urinterfaces/msg/VoltageCurrentStamped value.
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
-- \@see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesMsgVoltageCurrentStamped :: Ros2UrinterfacesMsgVoltageCurrentStamped -> Either Word32 B.ByteString
encodeRos2UrinterfacesMsgVoltageCurrentStamped value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2UrinterfacesMsgVoltageCurrentStamped_header value)
  b1 <- W.encodeFloat64 (ros2UrinterfacesMsgVoltageCurrentStamped_voltage value)
  b2 <- W.encodeFloat64 (ros2UrinterfacesMsgVoltageCurrentStamped_current value)
  W.bounded 156 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of urinterfaces/msg/VoltageCurrentStamped.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesMsgVoltageCurrentStamped :: W.Decoder Ros2UrinterfacesMsgVoltageCurrentStamped
readRos2UrinterfacesMsgVoltageCurrentStamped = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- W.float64
  a2 <- W.float64
  let value = Ros2UrinterfacesMsgVoltageCurrentStamped a0 a1 a2
  case encodeRos2UrinterfacesMsgVoltageCurrentStamped value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/msg/VoltageCurrentStamped value.
-- \@details Require the complete 28..156-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesMsgVoltageCurrentStamped :: B.ByteString -> Either Word32 Ros2UrinterfacesMsgVoltageCurrentStamped
decodeRos2UrinterfacesMsgVoltageCurrentStamped = W.runDecoder 156 readRos2UrinterfacesMsgVoltageCurrentStamped
instance Canonical Ros2UrinterfacesMsgVoltageCurrentStamped where
  maximumBytes _ = 156
  encodeValue = encodeRos2UrinterfacesMsgVoltageCurrentStamped
  readValue = readRos2UrinterfacesMsgVoltageCurrentStamped
-- | \@brief Complete ROS 2 urinterfaces/msg/WorldModelNames value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 16..16592
-- bytes and is identified by UWVMROS1_499f722fc97565bd0124888d7c20f4e9f8947893c49b1608dcf201fe3538d7a9.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesMsgWorldModelNames = Ros2UrinterfacesMsgWorldModelNames
  {
    -- | \@brief urinterfaces/msg/WorldModelNames.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgWorldModelNames_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief urinterfaces/msg/WorldModelNames.data: std_msgs/msg/String; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesMsgWorldModelNames_data :: [Ros2Std_msgsMsgString]
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/msg/WorldModelNames.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesMsgWorldModelNames :: Ros2UrinterfacesMsgWorldModelNames
defaultRos2UrinterfacesMsgWorldModelNames = Ros2UrinterfacesMsgWorldModelNames (defaultRos2Std_msgsMsgHeader) ([])
-- | \@brief Canonical codec identity of urinterfaces/msg/WorldModelNames.
-- \@details Exact identity UWVMROS1_499f722fc97565bd0124888d7c20f4e9f8947893c49b1608dcf201fe3538d7a9 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgWorldModelNamesCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/msg/WorldModelNames.
-- \@details Exact identity UWVMROS1_499f722fc97565bd0124888d7c20f4e9f8947893c49b1608dcf201fe3538d7a9 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesMsgWorldModelNamesCodecIdentity =
    "UWVMROS1_499f722fc97565bd0124888d7c20f4e9f8947893c49b1608dcf201fe3538d7a9"
-- | \@brief Encode one complete urinterfaces/msg/WorldModelNames value.
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
-- \@see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesMsgWorldModelNames :: Ros2UrinterfacesMsgWorldModelNames -> Either Word32 B.ByteString
encodeRos2UrinterfacesMsgWorldModelNames value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2UrinterfacesMsgWorldModelNames_header value)
  if length (ros2UrinterfacesMsgWorldModelNames_data value) > 16 then Left 22 else Right ()
  prefix1 <- W.encodeCount 16 (length (ros2UrinterfacesMsgWorldModelNames_data value))
  b1 <- B.concat <$> mapM (\e -> encodeRos2Std_msgsMsgString (e)) (ros2UrinterfacesMsgWorldModelNames_data value)
  W.bounded 16592 [b0, prefix1, b1]
-- | \@brief Read the ordered canonical fields of urinterfaces/msg/WorldModelNames.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesMsgWorldModelNames :: W.Decoder Ros2UrinterfacesMsgWorldModelNames
readRos2UrinterfacesMsgWorldModelNames = do
  a0 <- readRos2Std_msgsMsgHeader
  count1 <- W.count 16
  a1 <- replicateM count1 (readRos2Std_msgsMsgString)
  let value = Ros2UrinterfacesMsgWorldModelNames a0 a1
  case encodeRos2UrinterfacesMsgWorldModelNames value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/msg/WorldModelNames value.
-- \@details Require the complete 16..16592-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesMsgWorldModelNames :: B.ByteString -> Either Word32 Ros2UrinterfacesMsgWorldModelNames
decodeRos2UrinterfacesMsgWorldModelNames = W.runDecoder 16592 readRos2UrinterfacesMsgWorldModelNames
instance Canonical Ros2UrinterfacesMsgWorldModelNames where
  maximumBytes _ = 16592
  encodeValue = encodeRos2UrinterfacesMsgWorldModelNames
  readValue = readRos2UrinterfacesMsgWorldModelNames
-- | \@brief Complete ROS 2 urinterfaces/srv/SetAnalogOutput_Request value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies 4..100 bytes
-- and is identified by UWVMROS1_8be07a94dd334a03871180a9c73bab11377664e60500ac68d312398d51acd32d.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesSrvSetAnalogOutput_Request = Ros2UrinterfacesSrvSetAnalogOutput_Request
  {
    -- | \@brief urinterfaces/srv/SetAnalogOutput_Request.data: urinterfaces/msg/Analog; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesSrvSetAnalogOutput_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesSrvSetAnalogOutput_Request_data :: [Ros2UrinterfacesMsgAnalog]
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/srv/SetAnalogOutput_Request.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesSrvSetAnalogOutput_Request; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesSrvSetAnalogOutput_Request :: Ros2UrinterfacesSrvSetAnalogOutput_Request
defaultRos2UrinterfacesSrvSetAnalogOutput_Request = Ros2UrinterfacesSrvSetAnalogOutput_Request ([])
-- | \@brief Canonical codec identity of urinterfaces/srv/SetAnalogOutput_Request.
-- \@details Exact identity UWVMROS1_8be07a94dd334a03871180a9c73bab11377664e60500ac68d312398d51acd32d binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesSrvSetAnalogOutput_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesSrvSetAnalogOutput_RequestCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/srv/SetAnalogOutput_Request.
-- \@details Exact identity UWVMROS1_8be07a94dd334a03871180a9c73bab11377664e60500ac68d312398d51acd32d binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesSrvSetAnalogOutput_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesSrvSetAnalogOutput_RequestCodecIdentity =
    "UWVMROS1_8be07a94dd334a03871180a9c73bab11377664e60500ac68d312398d51acd32d"
-- | \@brief Encode one complete urinterfaces/srv/SetAnalogOutput_Request value.
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
-- \@see Ros2UrinterfacesSrvSetAnalogOutput_Request; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesSrvSetAnalogOutput_Request :: Ros2UrinterfacesSrvSetAnalogOutput_Request -> Either Word32 B.ByteString
encodeRos2UrinterfacesSrvSetAnalogOutput_Request value = do
  if length (ros2UrinterfacesSrvSetAnalogOutput_Request_data value) > 16 then Left 22 else Right ()
  prefix0 <- W.encodeCount 16 (length (ros2UrinterfacesSrvSetAnalogOutput_Request_data value))
  b0 <- B.concat <$> mapM (\e -> encodeRos2UrinterfacesMsgAnalog (e)) (ros2UrinterfacesSrvSetAnalogOutput_Request_data value)
  W.bounded 100 [prefix0, b0]
-- | \@brief Read the ordered canonical fields of urinterfaces/srv/SetAnalogOutput_Request.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesSrvSetAnalogOutput_Request; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesSrvSetAnalogOutput_Request :: W.Decoder Ros2UrinterfacesSrvSetAnalogOutput_Request
readRos2UrinterfacesSrvSetAnalogOutput_Request = do
  count0 <- W.count 16
  a0 <- replicateM count0 (readRos2UrinterfacesMsgAnalog)
  let value = Ros2UrinterfacesSrvSetAnalogOutput_Request a0
  case encodeRos2UrinterfacesSrvSetAnalogOutput_Request value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/srv/SetAnalogOutput_Request value.
-- \@details Require the complete 4..100-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesSrvSetAnalogOutput_Request; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesSrvSetAnalogOutput_Request :: B.ByteString -> Either Word32 Ros2UrinterfacesSrvSetAnalogOutput_Request
decodeRos2UrinterfacesSrvSetAnalogOutput_Request = W.runDecoder 100 readRos2UrinterfacesSrvSetAnalogOutput_Request
instance Canonical Ros2UrinterfacesSrvSetAnalogOutput_Request where
  maximumBytes _ = 100
  encodeValue = encodeRos2UrinterfacesSrvSetAnalogOutput_Request
  readValue = readRos2UrinterfacesSrvSetAnalogOutput_Request
-- | \@brief Complete ROS 2 urinterfaces/srv/SetAnalogOutput_Response value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and
-- is identified by UWVMROS1_14016138286129e4f155ac2f82f5573e8a4af7d7c5ede55ce57f3ad76cb82e4e.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesSrvSetAnalogOutput_Response = Ros2UrinterfacesSrvSetAnalogOutput_Response
  {
    -- | \@brief urinterfaces/srv/SetAnalogOutput_Response.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesSrvSetAnalogOutput_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesSrvSetAnalogOutput_Response_success :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/srv/SetAnalogOutput_Response.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesSrvSetAnalogOutput_Response; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesSrvSetAnalogOutput_Response :: Ros2UrinterfacesSrvSetAnalogOutput_Response
defaultRos2UrinterfacesSrvSetAnalogOutput_Response = Ros2UrinterfacesSrvSetAnalogOutput_Response (False)
-- | \@brief Canonical codec identity of urinterfaces/srv/SetAnalogOutput_Response.
-- \@details Exact identity UWVMROS1_14016138286129e4f155ac2f82f5573e8a4af7d7c5ede55ce57f3ad76cb82e4e binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesSrvSetAnalogOutput_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesSrvSetAnalogOutput_ResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/srv/SetAnalogOutput_Response.
-- \@details Exact identity UWVMROS1_14016138286129e4f155ac2f82f5573e8a4af7d7c5ede55ce57f3ad76cb82e4e binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesSrvSetAnalogOutput_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesSrvSetAnalogOutput_ResponseCodecIdentity =
    "UWVMROS1_14016138286129e4f155ac2f82f5573e8a4af7d7c5ede55ce57f3ad76cb82e4e"
-- | \@brief Encode one complete urinterfaces/srv/SetAnalogOutput_Response value.
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
-- \@see Ros2UrinterfacesSrvSetAnalogOutput_Response; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesSrvSetAnalogOutput_Response :: Ros2UrinterfacesSrvSetAnalogOutput_Response -> Either Word32 B.ByteString
encodeRos2UrinterfacesSrvSetAnalogOutput_Response value = do
  b0 <- W.encodeBool (ros2UrinterfacesSrvSetAnalogOutput_Response_success value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of urinterfaces/srv/SetAnalogOutput_Response.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesSrvSetAnalogOutput_Response; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesSrvSetAnalogOutput_Response :: W.Decoder Ros2UrinterfacesSrvSetAnalogOutput_Response
readRos2UrinterfacesSrvSetAnalogOutput_Response = do
  a0 <- W.boolean
  let value = Ros2UrinterfacesSrvSetAnalogOutput_Response a0
  case encodeRos2UrinterfacesSrvSetAnalogOutput_Response value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/srv/SetAnalogOutput_Response value.
-- \@details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesSrvSetAnalogOutput_Response; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesSrvSetAnalogOutput_Response :: B.ByteString -> Either Word32 Ros2UrinterfacesSrvSetAnalogOutput_Response
decodeRos2UrinterfacesSrvSetAnalogOutput_Response = W.runDecoder 1 readRos2UrinterfacesSrvSetAnalogOutput_Response
instance Canonical Ros2UrinterfacesSrvSetAnalogOutput_Response where
  maximumBytes _ = 1
  encodeValue = encodeRos2UrinterfacesSrvSetAnalogOutput_Response
  readValue = readRos2UrinterfacesSrvSetAnalogOutput_Response
-- | \@brief Complete ROS 2 urinterfaces/srv/SetDigitalOutput_Request value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies 4..36 bytes
-- and is identified by UWVMROS1_ec6c587810af7f3d04b10058e69c8095775e8b6feede5fc0f60ca1dfda0b5e47.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesSrvSetDigitalOutput_Request = Ros2UrinterfacesSrvSetDigitalOutput_Request
  {
    -- | \@brief urinterfaces/srv/SetDigitalOutput_Request.data: urinterfaces/msg/Digital; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesSrvSetDigitalOutput_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesSrvSetDigitalOutput_Request_data :: [Ros2UrinterfacesMsgDigital]
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/srv/SetDigitalOutput_Request.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesSrvSetDigitalOutput_Request; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesSrvSetDigitalOutput_Request :: Ros2UrinterfacesSrvSetDigitalOutput_Request
defaultRos2UrinterfacesSrvSetDigitalOutput_Request = Ros2UrinterfacesSrvSetDigitalOutput_Request ([])
-- | \@brief Canonical codec identity of urinterfaces/srv/SetDigitalOutput_Request.
-- \@details Exact identity UWVMROS1_ec6c587810af7f3d04b10058e69c8095775e8b6feede5fc0f60ca1dfda0b5e47 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesSrvSetDigitalOutput_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesSrvSetDigitalOutput_RequestCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/srv/SetDigitalOutput_Request.
-- \@details Exact identity UWVMROS1_ec6c587810af7f3d04b10058e69c8095775e8b6feede5fc0f60ca1dfda0b5e47 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesSrvSetDigitalOutput_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesSrvSetDigitalOutput_RequestCodecIdentity =
    "UWVMROS1_ec6c587810af7f3d04b10058e69c8095775e8b6feede5fc0f60ca1dfda0b5e47"
-- | \@brief Encode one complete urinterfaces/srv/SetDigitalOutput_Request value.
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
-- \@see Ros2UrinterfacesSrvSetDigitalOutput_Request; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesSrvSetDigitalOutput_Request :: Ros2UrinterfacesSrvSetDigitalOutput_Request -> Either Word32 B.ByteString
encodeRos2UrinterfacesSrvSetDigitalOutput_Request value = do
  if length (ros2UrinterfacesSrvSetDigitalOutput_Request_data value) > 16 then Left 22 else Right ()
  prefix0 <- W.encodeCount 16 (length (ros2UrinterfacesSrvSetDigitalOutput_Request_data value))
  b0 <- B.concat <$> mapM (\e -> encodeRos2UrinterfacesMsgDigital (e)) (ros2UrinterfacesSrvSetDigitalOutput_Request_data value)
  W.bounded 36 [prefix0, b0]
-- | \@brief Read the ordered canonical fields of urinterfaces/srv/SetDigitalOutput_Request.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesSrvSetDigitalOutput_Request; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesSrvSetDigitalOutput_Request :: W.Decoder Ros2UrinterfacesSrvSetDigitalOutput_Request
readRos2UrinterfacesSrvSetDigitalOutput_Request = do
  count0 <- W.count 16
  a0 <- replicateM count0 (readRos2UrinterfacesMsgDigital)
  let value = Ros2UrinterfacesSrvSetDigitalOutput_Request a0
  case encodeRos2UrinterfacesSrvSetDigitalOutput_Request value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/srv/SetDigitalOutput_Request value.
-- \@details Require the complete 4..36-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesSrvSetDigitalOutput_Request; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesSrvSetDigitalOutput_Request :: B.ByteString -> Either Word32 Ros2UrinterfacesSrvSetDigitalOutput_Request
decodeRos2UrinterfacesSrvSetDigitalOutput_Request = W.runDecoder 36 readRos2UrinterfacesSrvSetDigitalOutput_Request
instance Canonical Ros2UrinterfacesSrvSetDigitalOutput_Request where
  maximumBytes _ = 36
  encodeValue = encodeRos2UrinterfacesSrvSetDigitalOutput_Request
  readValue = readRos2UrinterfacesSrvSetDigitalOutput_Request
-- | \@brief Complete ROS 2 urinterfaces/srv/SetDigitalOutput_Response value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and
-- is identified by UWVMROS1_0c5f0b8a7f1d14c6223838c3a28cb2236848b81ecfda29d2b704557579e9162d.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesSrvSetDigitalOutput_Response = Ros2UrinterfacesSrvSetDigitalOutput_Response
  {
    -- | \@brief urinterfaces/srv/SetDigitalOutput_Response.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesSrvSetDigitalOutput_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesSrvSetDigitalOutput_Response_success :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/srv/SetDigitalOutput_Response.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesSrvSetDigitalOutput_Response; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesSrvSetDigitalOutput_Response :: Ros2UrinterfacesSrvSetDigitalOutput_Response
defaultRos2UrinterfacesSrvSetDigitalOutput_Response = Ros2UrinterfacesSrvSetDigitalOutput_Response (False)
-- | \@brief Canonical codec identity of urinterfaces/srv/SetDigitalOutput_Response.
-- \@details Exact identity UWVMROS1_0c5f0b8a7f1d14c6223838c3a28cb2236848b81ecfda29d2b704557579e9162d binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesSrvSetDigitalOutput_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesSrvSetDigitalOutput_ResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/srv/SetDigitalOutput_Response.
-- \@details Exact identity UWVMROS1_0c5f0b8a7f1d14c6223838c3a28cb2236848b81ecfda29d2b704557579e9162d binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesSrvSetDigitalOutput_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesSrvSetDigitalOutput_ResponseCodecIdentity =
    "UWVMROS1_0c5f0b8a7f1d14c6223838c3a28cb2236848b81ecfda29d2b704557579e9162d"
-- | \@brief Encode one complete urinterfaces/srv/SetDigitalOutput_Response value.
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
-- \@see Ros2UrinterfacesSrvSetDigitalOutput_Response; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesSrvSetDigitalOutput_Response :: Ros2UrinterfacesSrvSetDigitalOutput_Response -> Either Word32 B.ByteString
encodeRos2UrinterfacesSrvSetDigitalOutput_Response value = do
  b0 <- W.encodeBool (ros2UrinterfacesSrvSetDigitalOutput_Response_success value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of urinterfaces/srv/SetDigitalOutput_Response.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesSrvSetDigitalOutput_Response; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesSrvSetDigitalOutput_Response :: W.Decoder Ros2UrinterfacesSrvSetDigitalOutput_Response
readRos2UrinterfacesSrvSetDigitalOutput_Response = do
  a0 <- W.boolean
  let value = Ros2UrinterfacesSrvSetDigitalOutput_Response a0
  case encodeRos2UrinterfacesSrvSetDigitalOutput_Response value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/srv/SetDigitalOutput_Response value.
-- \@details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesSrvSetDigitalOutput_Response; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesSrvSetDigitalOutput_Response :: B.ByteString -> Either Word32 Ros2UrinterfacesSrvSetDigitalOutput_Response
decodeRos2UrinterfacesSrvSetDigitalOutput_Response = W.runDecoder 1 readRos2UrinterfacesSrvSetDigitalOutput_Response
instance Canonical Ros2UrinterfacesSrvSetDigitalOutput_Response where
  maximumBytes _ = 1
  encodeValue = encodeRos2UrinterfacesSrvSetDigitalOutput_Response
  readValue = readRos2UrinterfacesSrvSetDigitalOutput_Response
-- | \@brief Complete ROS 2 urinterfaces/srv/SetSpeedFraction_Request value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes and
-- is identified by UWVMROS1_21fca7e952e32f24c905094c09776968c8cd80b7712a03de7c2a693ea79a7d63.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesSrvSetSpeedFraction_Request = Ros2UrinterfacesSrvSetSpeedFraction_Request
  {
    -- | \@brief urinterfaces/srv/SetSpeedFraction_Request.value: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesSrvSetSpeedFraction_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesSrvSetSpeedFraction_Request_value :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/srv/SetSpeedFraction_Request.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesSrvSetSpeedFraction_Request; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesSrvSetSpeedFraction_Request :: Ros2UrinterfacesSrvSetSpeedFraction_Request
defaultRos2UrinterfacesSrvSetSpeedFraction_Request = Ros2UrinterfacesSrvSetSpeedFraction_Request (0)
-- | \@brief Canonical codec identity of urinterfaces/srv/SetSpeedFraction_Request.
-- \@details Exact identity UWVMROS1_21fca7e952e32f24c905094c09776968c8cd80b7712a03de7c2a693ea79a7d63 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesSrvSetSpeedFraction_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesSrvSetSpeedFraction_RequestCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/srv/SetSpeedFraction_Request.
-- \@details Exact identity UWVMROS1_21fca7e952e32f24c905094c09776968c8cd80b7712a03de7c2a693ea79a7d63 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesSrvSetSpeedFraction_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesSrvSetSpeedFraction_RequestCodecIdentity =
    "UWVMROS1_21fca7e952e32f24c905094c09776968c8cd80b7712a03de7c2a693ea79a7d63"
-- | \@brief Encode one complete urinterfaces/srv/SetSpeedFraction_Request value.
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
-- \@see Ros2UrinterfacesSrvSetSpeedFraction_Request; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesSrvSetSpeedFraction_Request :: Ros2UrinterfacesSrvSetSpeedFraction_Request -> Either Word32 B.ByteString
encodeRos2UrinterfacesSrvSetSpeedFraction_Request value = do
  b0 <- W.encodeFloat32 (ros2UrinterfacesSrvSetSpeedFraction_Request_value value)
  W.bounded 4 [b0]
-- | \@brief Read the ordered canonical fields of urinterfaces/srv/SetSpeedFraction_Request.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesSrvSetSpeedFraction_Request; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesSrvSetSpeedFraction_Request :: W.Decoder Ros2UrinterfacesSrvSetSpeedFraction_Request
readRos2UrinterfacesSrvSetSpeedFraction_Request = do
  a0 <- W.float32
  let value = Ros2UrinterfacesSrvSetSpeedFraction_Request a0
  case encodeRos2UrinterfacesSrvSetSpeedFraction_Request value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/srv/SetSpeedFraction_Request value.
-- \@details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesSrvSetSpeedFraction_Request; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesSrvSetSpeedFraction_Request :: B.ByteString -> Either Word32 Ros2UrinterfacesSrvSetSpeedFraction_Request
decodeRos2UrinterfacesSrvSetSpeedFraction_Request = W.runDecoder 4 readRos2UrinterfacesSrvSetSpeedFraction_Request
instance Canonical Ros2UrinterfacesSrvSetSpeedFraction_Request where
  maximumBytes _ = 4
  encodeValue = encodeRos2UrinterfacesSrvSetSpeedFraction_Request
  readValue = readRos2UrinterfacesSrvSetSpeedFraction_Request
-- | \@brief Complete ROS 2 urinterfaces/srv/SetSpeedFraction_Response value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and
-- is identified by UWVMROS1_386b067db70c17a88297d005650f6a05c0fb72eb5ee142a25c3e51c70b80c6e6.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesSrvSetSpeedFraction_Response = Ros2UrinterfacesSrvSetSpeedFraction_Response
  {
    -- | \@brief urinterfaces/srv/SetSpeedFraction_Response.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesSrvSetSpeedFraction_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesSrvSetSpeedFraction_Response_success :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/srv/SetSpeedFraction_Response.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesSrvSetSpeedFraction_Response; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesSrvSetSpeedFraction_Response :: Ros2UrinterfacesSrvSetSpeedFraction_Response
defaultRos2UrinterfacesSrvSetSpeedFraction_Response = Ros2UrinterfacesSrvSetSpeedFraction_Response (False)
-- | \@brief Canonical codec identity of urinterfaces/srv/SetSpeedFraction_Response.
-- \@details Exact identity UWVMROS1_386b067db70c17a88297d005650f6a05c0fb72eb5ee142a25c3e51c70b80c6e6 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesSrvSetSpeedFraction_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesSrvSetSpeedFraction_ResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/srv/SetSpeedFraction_Response.
-- \@details Exact identity UWVMROS1_386b067db70c17a88297d005650f6a05c0fb72eb5ee142a25c3e51c70b80c6e6 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesSrvSetSpeedFraction_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesSrvSetSpeedFraction_ResponseCodecIdentity =
    "UWVMROS1_386b067db70c17a88297d005650f6a05c0fb72eb5ee142a25c3e51c70b80c6e6"
-- | \@brief Encode one complete urinterfaces/srv/SetSpeedFraction_Response value.
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
-- \@see Ros2UrinterfacesSrvSetSpeedFraction_Response; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesSrvSetSpeedFraction_Response :: Ros2UrinterfacesSrvSetSpeedFraction_Response -> Either Word32 B.ByteString
encodeRos2UrinterfacesSrvSetSpeedFraction_Response value = do
  b0 <- W.encodeBool (ros2UrinterfacesSrvSetSpeedFraction_Response_success value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of urinterfaces/srv/SetSpeedFraction_Response.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesSrvSetSpeedFraction_Response; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesSrvSetSpeedFraction_Response :: W.Decoder Ros2UrinterfacesSrvSetSpeedFraction_Response
readRos2UrinterfacesSrvSetSpeedFraction_Response = do
  a0 <- W.boolean
  let value = Ros2UrinterfacesSrvSetSpeedFraction_Response a0
  case encodeRos2UrinterfacesSrvSetSpeedFraction_Response value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/srv/SetSpeedFraction_Response value.
-- \@details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesSrvSetSpeedFraction_Response; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesSrvSetSpeedFraction_Response :: B.ByteString -> Either Word32 Ros2UrinterfacesSrvSetSpeedFraction_Response
decodeRos2UrinterfacesSrvSetSpeedFraction_Response = W.runDecoder 1 readRos2UrinterfacesSrvSetSpeedFraction_Response
instance Canonical Ros2UrinterfacesSrvSetSpeedFraction_Response where
  maximumBytes _ = 1
  encodeValue = encodeRos2UrinterfacesSrvSetSpeedFraction_Response
  readValue = readRos2UrinterfacesSrvSetSpeedFraction_Response
-- | \@brief Complete ROS 2 urinterfaces/srv/SharedVariablesEditor_Request value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies 4..1028 bytes
-- and is identified by UWVMROS1_c32d00237370b2eeb596c76bd9cda1ccfcab7618c71dec77d273f712462f5fa3.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesSrvSharedVariablesEditor_Request = Ros2UrinterfacesSrvSharedVariablesEditor_Request
  {
    -- | \@brief urinterfaces/srv/SharedVariablesEditor_Request.request: urinterfaces/msg/JsonStringType.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesSrvSharedVariablesEditor_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesSrvSharedVariablesEditor_Request_request :: Ros2UrinterfacesMsgJsonStringType
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/srv/SharedVariablesEditor_Request.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesSrvSharedVariablesEditor_Request; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesSrvSharedVariablesEditor_Request :: Ros2UrinterfacesSrvSharedVariablesEditor_Request
defaultRos2UrinterfacesSrvSharedVariablesEditor_Request =
    Ros2UrinterfacesSrvSharedVariablesEditor_Request
        (defaultRos2UrinterfacesMsgJsonStringType)
-- | \@brief Canonical codec identity of urinterfaces/srv/SharedVariablesEditor_Request.
-- \@details Exact identity UWVMROS1_c32d00237370b2eeb596c76bd9cda1ccfcab7618c71dec77d273f712462f5fa3 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesSrvSharedVariablesEditor_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesSrvSharedVariablesEditor_RequestCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/srv/SharedVariablesEditor_Request.
-- \@details Exact identity UWVMROS1_c32d00237370b2eeb596c76bd9cda1ccfcab7618c71dec77d273f712462f5fa3 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesSrvSharedVariablesEditor_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesSrvSharedVariablesEditor_RequestCodecIdentity =
    "UWVMROS1_c32d00237370b2eeb596c76bd9cda1ccfcab7618c71dec77d273f712462f5fa3"
-- | \@brief Encode one complete urinterfaces/srv/SharedVariablesEditor_Request value.
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
-- \@see Ros2UrinterfacesSrvSharedVariablesEditor_Request; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesSrvSharedVariablesEditor_Request :: Ros2UrinterfacesSrvSharedVariablesEditor_Request -> Either Word32 B.ByteString
encodeRos2UrinterfacesSrvSharedVariablesEditor_Request value = do
  b0 <- encodeRos2UrinterfacesMsgJsonStringType (ros2UrinterfacesSrvSharedVariablesEditor_Request_request value)
  W.bounded 1028 [b0]
-- | \@brief Read the ordered canonical fields of urinterfaces/srv/SharedVariablesEditor_Request.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesSrvSharedVariablesEditor_Request; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesSrvSharedVariablesEditor_Request :: W.Decoder Ros2UrinterfacesSrvSharedVariablesEditor_Request
readRos2UrinterfacesSrvSharedVariablesEditor_Request = do
  a0 <- readRos2UrinterfacesMsgJsonStringType
  let value = Ros2UrinterfacesSrvSharedVariablesEditor_Request a0
  case encodeRos2UrinterfacesSrvSharedVariablesEditor_Request value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/srv/SharedVariablesEditor_Request value.
-- \@details Require the complete 4..1028-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesSrvSharedVariablesEditor_Request; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesSrvSharedVariablesEditor_Request :: B.ByteString -> Either Word32 Ros2UrinterfacesSrvSharedVariablesEditor_Request
decodeRos2UrinterfacesSrvSharedVariablesEditor_Request = W.runDecoder 1028 readRos2UrinterfacesSrvSharedVariablesEditor_Request
instance Canonical Ros2UrinterfacesSrvSharedVariablesEditor_Request where
  maximumBytes _ = 1028
  encodeValue = encodeRos2UrinterfacesSrvSharedVariablesEditor_Request
  readValue = readRos2UrinterfacesSrvSharedVariablesEditor_Request
-- | \@brief Complete ROS 2 urinterfaces/srv/SharedVariablesEditor_Response value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies 5..1029 bytes
-- and is identified by UWVMROS1_4134f7ed9715b3f6e3fd7ecca44fcae67cdd5dc2fa432b07ab75485901d1d5ea.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesSrvSharedVariablesEditor_Response = Ros2UrinterfacesSrvSharedVariablesEditor_Response
  {
    -- | \@brief urinterfaces/srv/SharedVariablesEditor_Response.response: urinterfaces/msg/SharedVariablesEditResponse.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesSrvSharedVariablesEditor_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesSrvSharedVariablesEditor_Response_response :: Ros2UrinterfacesMsgSharedVariablesEditResponse
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/srv/SharedVariablesEditor_Response.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesSrvSharedVariablesEditor_Response; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesSrvSharedVariablesEditor_Response :: Ros2UrinterfacesSrvSharedVariablesEditor_Response
defaultRos2UrinterfacesSrvSharedVariablesEditor_Response =
    Ros2UrinterfacesSrvSharedVariablesEditor_Response
        (defaultRos2UrinterfacesMsgSharedVariablesEditResponse)
-- | \@brief Canonical codec identity of urinterfaces/srv/SharedVariablesEditor_Response.
-- \@details Exact identity UWVMROS1_4134f7ed9715b3f6e3fd7ecca44fcae67cdd5dc2fa432b07ab75485901d1d5ea binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesSrvSharedVariablesEditor_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesSrvSharedVariablesEditor_ResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/srv/SharedVariablesEditor_Response.
-- \@details Exact identity UWVMROS1_4134f7ed9715b3f6e3fd7ecca44fcae67cdd5dc2fa432b07ab75485901d1d5ea binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesSrvSharedVariablesEditor_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesSrvSharedVariablesEditor_ResponseCodecIdentity =
    "UWVMROS1_4134f7ed9715b3f6e3fd7ecca44fcae67cdd5dc2fa432b07ab75485901d1d5ea"
-- | \@brief Encode one complete urinterfaces/srv/SharedVariablesEditor_Response value.
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
-- \@see Ros2UrinterfacesSrvSharedVariablesEditor_Response; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesSrvSharedVariablesEditor_Response :: Ros2UrinterfacesSrvSharedVariablesEditor_Response -> Either Word32 B.ByteString
encodeRos2UrinterfacesSrvSharedVariablesEditor_Response value = do
  b0 <- encodeRos2UrinterfacesMsgSharedVariablesEditResponse (ros2UrinterfacesSrvSharedVariablesEditor_Response_response value)
  W.bounded 1029 [b0]
-- | \@brief Read the ordered canonical fields of urinterfaces/srv/SharedVariablesEditor_Response.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesSrvSharedVariablesEditor_Response; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesSrvSharedVariablesEditor_Response :: W.Decoder Ros2UrinterfacesSrvSharedVariablesEditor_Response
readRos2UrinterfacesSrvSharedVariablesEditor_Response = do
  a0 <- readRos2UrinterfacesMsgSharedVariablesEditResponse
  let value = Ros2UrinterfacesSrvSharedVariablesEditor_Response a0
  case encodeRos2UrinterfacesSrvSharedVariablesEditor_Response value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/srv/SharedVariablesEditor_Response value.
-- \@details Require the complete 5..1029-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesSrvSharedVariablesEditor_Response; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesSrvSharedVariablesEditor_Response :: B.ByteString -> Either Word32 Ros2UrinterfacesSrvSharedVariablesEditor_Response
decodeRos2UrinterfacesSrvSharedVariablesEditor_Response = W.runDecoder 1029 readRos2UrinterfacesSrvSharedVariablesEditor_Response
instance Canonical Ros2UrinterfacesSrvSharedVariablesEditor_Response where
  maximumBytes _ = 1029
  encodeValue = encodeRos2UrinterfacesSrvSharedVariablesEditor_Response
  readValue = readRos2UrinterfacesSrvSharedVariablesEditor_Response
-- | \@brief Complete ROS 2 urinterfaces/srv/VariablesViewer_Request value.
-- \@details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and
-- is identified by UWVMROS1_6ecb0db6328d813bfb987ae987d3b7f2c6913dba2cf2a62f644a8eb2f760152a.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesSrvVariablesViewer_Request = Ros2UrinterfacesSrvVariablesViewer_Request deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/srv/VariablesViewer_Request.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesSrvVariablesViewer_Request; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesSrvVariablesViewer_Request :: Ros2UrinterfacesSrvVariablesViewer_Request
defaultRos2UrinterfacesSrvVariablesViewer_Request = Ros2UrinterfacesSrvVariablesViewer_Request 
-- | \@brief Canonical codec identity of urinterfaces/srv/VariablesViewer_Request.
-- \@details Exact identity UWVMROS1_6ecb0db6328d813bfb987ae987d3b7f2c6913dba2cf2a62f644a8eb2f760152a binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesSrvVariablesViewer_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesSrvVariablesViewer_RequestCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/srv/VariablesViewer_Request.
-- \@details Exact identity UWVMROS1_6ecb0db6328d813bfb987ae987d3b7f2c6913dba2cf2a62f644a8eb2f760152a binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesSrvVariablesViewer_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesSrvVariablesViewer_RequestCodecIdentity =
    "UWVMROS1_6ecb0db6328d813bfb987ae987d3b7f2c6913dba2cf2a62f644a8eb2f760152a"
-- | \@brief Encode one complete urinterfaces/srv/VariablesViewer_Request value.
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
-- \@see Ros2UrinterfacesSrvVariablesViewer_Request; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesSrvVariablesViewer_Request :: Ros2UrinterfacesSrvVariablesViewer_Request -> Either Word32 B.ByteString
encodeRos2UrinterfacesSrvVariablesViewer_Request value = do
  W.bounded 0 []
-- | \@brief Read the ordered canonical fields of urinterfaces/srv/VariablesViewer_Request.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesSrvVariablesViewer_Request; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesSrvVariablesViewer_Request :: W.Decoder Ros2UrinterfacesSrvVariablesViewer_Request
readRos2UrinterfacesSrvVariablesViewer_Request = do
  let value = Ros2UrinterfacesSrvVariablesViewer_Request 
  case encodeRos2UrinterfacesSrvVariablesViewer_Request value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/srv/VariablesViewer_Request value.
-- \@details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesSrvVariablesViewer_Request; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesSrvVariablesViewer_Request :: B.ByteString -> Either Word32 Ros2UrinterfacesSrvVariablesViewer_Request
decodeRos2UrinterfacesSrvVariablesViewer_Request = W.runDecoder 0 readRos2UrinterfacesSrvVariablesViewer_Request
instance Canonical Ros2UrinterfacesSrvVariablesViewer_Request where
  maximumBytes _ = 0
  encodeValue = encodeRos2UrinterfacesSrvVariablesViewer_Request
  readValue = readRos2UrinterfacesSrvVariablesViewer_Request
-- | \@brief Complete ROS 2 urinterfaces/srv/VariablesViewer_Response value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies 16..1168 bytes
-- and is identified by UWVMROS1_e8cb16ca847189ac38c0d972afbdd2208d8641c29a0ee0cce8284e9e0dd249a2.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2UrinterfacesSrvVariablesViewer_Response = Ros2UrinterfacesSrvVariablesViewer_Response
  {
    -- | \@brief urinterfaces/srv/VariablesViewer_Response.response: urinterfaces/msg/VariableUpdate.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2UrinterfacesSrvVariablesViewer_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2UrinterfacesSrvVariablesViewer_Response_response :: Ros2UrinterfacesMsgVariableUpdate
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of urinterfaces/srv/VariablesViewer_Response.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesSrvVariablesViewer_Response; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2UrinterfacesSrvVariablesViewer_Response :: Ros2UrinterfacesSrvVariablesViewer_Response
defaultRos2UrinterfacesSrvVariablesViewer_Response =
    Ros2UrinterfacesSrvVariablesViewer_Response
        (defaultRos2UrinterfacesMsgVariableUpdate)
-- | \@brief Canonical codec identity of urinterfaces/srv/VariablesViewer_Response.
-- \@details Exact identity UWVMROS1_e8cb16ca847189ac38c0d972afbdd2208d8641c29a0ee0cce8284e9e0dd249a2 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesSrvVariablesViewer_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesSrvVariablesViewer_ResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of urinterfaces/srv/VariablesViewer_Response.
-- \@details Exact identity UWVMROS1_e8cb16ca847189ac38c0d972afbdd2208d8641c29a0ee0cce8284e9e0dd249a2 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2UrinterfacesSrvVariablesViewer_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2UrinterfacesSrvVariablesViewer_ResponseCodecIdentity =
    "UWVMROS1_e8cb16ca847189ac38c0d972afbdd2208d8641c29a0ee0cce8284e9e0dd249a2"
-- | \@brief Encode one complete urinterfaces/srv/VariablesViewer_Response value.
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
-- \@see Ros2UrinterfacesSrvVariablesViewer_Response; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2UrinterfacesSrvVariablesViewer_Response :: Ros2UrinterfacesSrvVariablesViewer_Response -> Either Word32 B.ByteString
encodeRos2UrinterfacesSrvVariablesViewer_Response value = do
  b0 <- encodeRos2UrinterfacesMsgVariableUpdate (ros2UrinterfacesSrvVariablesViewer_Response_response value)
  W.bounded 1168 [b0]
-- | \@brief Read the ordered canonical fields of urinterfaces/srv/VariablesViewer_Response.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesSrvVariablesViewer_Response; share/platform/ros/haskell/API-CONTRACT.md
readRos2UrinterfacesSrvVariablesViewer_Response :: W.Decoder Ros2UrinterfacesSrvVariablesViewer_Response
readRos2UrinterfacesSrvVariablesViewer_Response = do
  a0 <- readRos2UrinterfacesMsgVariableUpdate
  let value = Ros2UrinterfacesSrvVariablesViewer_Response a0
  case encodeRos2UrinterfacesSrvVariablesViewer_Response value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete urinterfaces/srv/VariablesViewer_Response value.
-- \@details Require the complete 16..1168-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2UrinterfacesSrvVariablesViewer_Response; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2UrinterfacesSrvVariablesViewer_Response :: B.ByteString -> Either Word32 Ros2UrinterfacesSrvVariablesViewer_Response
decodeRos2UrinterfacesSrvVariablesViewer_Response = W.runDecoder 1168 readRos2UrinterfacesSrvVariablesViewer_Response
instance Canonical Ros2UrinterfacesSrvVariablesViewer_Response where
  maximumBytes _ = 1168
  encodeValue = encodeRos2UrinterfacesSrvVariablesViewer_Response
  readValue = readRos2UrinterfacesSrvVariablesViewer_Response
