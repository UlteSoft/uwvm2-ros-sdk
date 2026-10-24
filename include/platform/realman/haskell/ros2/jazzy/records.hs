-- | @file records.hs
-- | @brief Preserve the complete original realman/ros2_jazzy canonical value domain.
-- | @details The selected domain contains 80 complete record/components and 339 original fields. Declared
-- | scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
-- | Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
-- | create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
-- | does not qualify a frontend, target ABI or native ROS transport.
-- | @see The platform's localized language guide and complete API-CATALOG.md.
-- Generated complete canonical values; all field selectors are record-qualified.
module Realman.Ros2Jazzy.Records where
import Data.Int
import Data.Word
import qualified Data.ByteString as B
import qualified Data.Text as T
import GHC.Float
import Control.Monad (replicateM)
import qualified RosWasm.Wire as W
import RosWasm.Typed (Canonical(..))
-- | \@brief Complete ROS 2 geometry_msgs/msg/Point value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies
-- 24..24 bytes and is identified by
-- UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Geometry_msgsMsgPoint = Ros2Geometry_msgsMsgPoint
  {
    -- | \@brief geometry_msgs/msg/Point.x: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgPoint_x :: Double
  ,
    -- | \@brief geometry_msgs/msg/Point.y: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgPoint_y :: Double
  ,
    -- | \@brief geometry_msgs/msg/Point.z: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgPoint_z :: Double
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of geometry_msgs/msg/Point.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Geometry_msgsMsgPoint; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Geometry_msgsMsgPoint :: Ros2Geometry_msgsMsgPoint
defaultRos2Geometry_msgsMsgPoint = Ros2Geometry_msgsMsgPoint (0) (0) (0)
-- | \@brief Canonical codec identity of geometry_msgs/msg/Point.
-- \@details Exact identity UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Geometry_msgsMsgPoint; share/platform/ros/haskell/API-CONTRACT.md
ros2Geometry_msgsMsgPointCodecIdentity :: String
-- | \@brief Canonical codec identity of geometry_msgs/msg/Point.
-- \@details Exact identity UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Geometry_msgsMsgPoint; share/platform/ros/haskell/API-CONTRACT.md
ros2Geometry_msgsMsgPointCodecIdentity = "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616"
-- | \@brief Encode one complete geometry_msgs/msg/Point value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Geometry_msgsMsgPoint; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Geometry_msgsMsgPoint :: Ros2Geometry_msgsMsgPoint -> Either Word32 B.ByteString
encodeRos2Geometry_msgsMsgPoint value = do
  b0 <- W.encodeFloat64 (ros2Geometry_msgsMsgPoint_x value)
  b1 <- W.encodeFloat64 (ros2Geometry_msgsMsgPoint_y value)
  b2 <- W.encodeFloat64 (ros2Geometry_msgsMsgPoint_z value)
  W.bounded 24 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of geometry_msgs/msg/Point.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
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
-- \@details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Geometry_msgsMsgPoint; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Geometry_msgsMsgPoint :: B.ByteString -> Either Word32 Ros2Geometry_msgsMsgPoint
decodeRos2Geometry_msgsMsgPoint = W.runDecoder 24 readRos2Geometry_msgsMsgPoint
instance Canonical Ros2Geometry_msgsMsgPoint where
  maximumBytes _ = 24
  encodeValue = encodeRos2Geometry_msgsMsgPoint
  readValue = readRos2Geometry_msgsMsgPoint
-- | \@brief Complete ROS 2 geometry_msgs/msg/Quaternion value.
-- \@details All 4 declared fields are retained in source order. The canonical representation occupies
-- 32..32 bytes and is identified by
-- UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Geometry_msgsMsgQuaternion = Ros2Geometry_msgsMsgQuaternion
  {
    -- | \@brief geometry_msgs/msg/Quaternion.x: float64.
    -- \@details Schema default 0.0. Encoding preserves the original field position and signedness;
    -- invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgQuaternion_x :: Double
  ,
    -- | \@brief geometry_msgs/msg/Quaternion.y: float64.
    -- \@details Schema default 0.0. Encoding preserves the original field position and signedness;
    -- invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgQuaternion_y :: Double
  ,
    -- | \@brief geometry_msgs/msg/Quaternion.z: float64.
    -- \@details Schema default 0.0. Encoding preserves the original field position and signedness;
    -- invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgQuaternion_z :: Double
  ,
    -- | \@brief geometry_msgs/msg/Quaternion.w: float64.
    -- \@details Schema default 1.0. Encoding preserves the original field position and signedness;
    -- invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgQuaternion_w :: Double
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of geometry_msgs/msg/Quaternion.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
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
-- \@details Exact identity UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/haskell/API-CONTRACT.md
ros2Geometry_msgsMsgQuaternionCodecIdentity :: String
-- | \@brief Canonical codec identity of geometry_msgs/msg/Quaternion.
-- \@details Exact identity UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/haskell/API-CONTRACT.md
ros2Geometry_msgsMsgQuaternionCodecIdentity = "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672"
-- | \@brief Encode one complete geometry_msgs/msg/Quaternion value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
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
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
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
-- \@details Require the complete 32..32-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Geometry_msgsMsgQuaternion :: B.ByteString -> Either Word32 Ros2Geometry_msgsMsgQuaternion
decodeRos2Geometry_msgsMsgQuaternion = W.runDecoder 32 readRos2Geometry_msgsMsgQuaternion
instance Canonical Ros2Geometry_msgsMsgQuaternion where
  maximumBytes _ = 32
  encodeValue = encodeRos2Geometry_msgsMsgQuaternion
  readValue = readRos2Geometry_msgsMsgQuaternion
-- | \@brief Complete ROS 2 geometry_msgs/msg/Pose value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 56..56 bytes and is identified by
-- UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Geometry_msgsMsgPose = Ros2Geometry_msgsMsgPose
  {
    -- | \@brief geometry_msgs/msg/Pose.position: geometry_msgs/msg/Point.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgPose; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgPose_position :: Ros2Geometry_msgsMsgPoint
  ,
    -- | \@brief geometry_msgs/msg/Pose.orientation: geometry_msgs/msg/Quaternion.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgPose; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgPose_orientation :: Ros2Geometry_msgsMsgQuaternion
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of geometry_msgs/msg/Pose.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Geometry_msgsMsgPose; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Geometry_msgsMsgPose :: Ros2Geometry_msgsMsgPose
defaultRos2Geometry_msgsMsgPose =
  Ros2Geometry_msgsMsgPose
    (defaultRos2Geometry_msgsMsgPoint)
    (defaultRos2Geometry_msgsMsgQuaternion)
-- | \@brief Canonical codec identity of geometry_msgs/msg/Pose.
-- \@details Exact identity UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Geometry_msgsMsgPose; share/platform/ros/haskell/API-CONTRACT.md
ros2Geometry_msgsMsgPoseCodecIdentity :: String
-- | \@brief Canonical codec identity of geometry_msgs/msg/Pose.
-- \@details Exact identity UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Geometry_msgsMsgPose; share/platform/ros/haskell/API-CONTRACT.md
ros2Geometry_msgsMsgPoseCodecIdentity = "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777"
-- | \@brief Encode one complete geometry_msgs/msg/Pose value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Geometry_msgsMsgPose; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Geometry_msgsMsgPose :: Ros2Geometry_msgsMsgPose -> Either Word32 B.ByteString
encodeRos2Geometry_msgsMsgPose value = do
  b0 <- encodeRos2Geometry_msgsMsgPoint (ros2Geometry_msgsMsgPose_position value)
  b1 <- encodeRos2Geometry_msgsMsgQuaternion (ros2Geometry_msgsMsgPose_orientation value)
  W.bounded 56 [b0, b1]
-- | \@brief Read the ordered canonical fields of geometry_msgs/msg/Pose.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
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
-- \@details Require the complete 56..56-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Geometry_msgsMsgPose; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Geometry_msgsMsgPose :: B.ByteString -> Either Word32 Ros2Geometry_msgsMsgPose
decodeRos2Geometry_msgsMsgPose = W.runDecoder 56 readRos2Geometry_msgsMsgPose
instance Canonical Ros2Geometry_msgsMsgPose where
  maximumBytes _ = 56
  encodeValue = encodeRos2Geometry_msgsMsgPose
  readValue = readRos2Geometry_msgsMsgPose
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Alohastate value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 4..4 bytes and is identified by
-- UWVMROS1_b7a68ce1f12539a9373d1f0247bf4ea39a109525ae650c23c027103d071cf8ab.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgAlohastate = Ros2Rm_ros_interfacesMsgAlohastate
  {
    -- | \@brief rm_ros_interfaces/msg/Alohastate.io1_state: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgAlohastate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgAlohastate_io1_state :: Int16
  ,
    -- | \@brief rm_ros_interfaces/msg/Alohastate.io2_state: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgAlohastate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgAlohastate_io2_state :: Int16
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Alohastate.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgAlohastate; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgAlohastate :: Ros2Rm_ros_interfacesMsgAlohastate
defaultRos2Rm_ros_interfacesMsgAlohastate = Ros2Rm_ros_interfacesMsgAlohastate (0) (0)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Alohastate.
-- \@details Exact identity UWVMROS1_b7a68ce1f12539a9373d1f0247bf4ea39a109525ae650c23c027103d071cf8ab
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgAlohastate; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgAlohastateCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Alohastate.
-- \@details Exact identity UWVMROS1_b7a68ce1f12539a9373d1f0247bf4ea39a109525ae650c23c027103d071cf8ab
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgAlohastate; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgAlohastateCodecIdentity = "UWVMROS1_b7a68ce1f12539a9373d1f0247bf4ea39a109525ae650c23c027103d071cf8ab"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Alohastate value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgAlohastate; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgAlohastate :: Ros2Rm_ros_interfacesMsgAlohastate -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgAlohastate value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgAlohastate_io1_state value))
  b1 <- W.encodeSigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgAlohastate_io2_state value))
  W.bounded 4 [b0, b1]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Alohastate.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgAlohastate; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgAlohastate :: W.Decoder Ros2Rm_ros_interfacesMsgAlohastate
readRos2Rm_ros_interfacesMsgAlohastate = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- fromIntegral <$> W.signed 2
  let value = Ros2Rm_ros_interfacesMsgAlohastate a0 a1
  case encodeRos2Rm_ros_interfacesMsgAlohastate value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Alohastate value.
-- \@details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgAlohastate; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgAlohastate :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgAlohastate
decodeRos2Rm_ros_interfacesMsgAlohastate = W.runDecoder 4 readRos2Rm_ros_interfacesMsgAlohastate
instance Canonical Ros2Rm_ros_interfacesMsgAlohastate where
  maximumBytes _ = 4
  encodeValue = encodeRos2Rm_ros_interfacesMsgAlohastate
  readValue = readRos2Rm_ros_interfacesMsgAlohastate
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Armcurrentstatus value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 2..2 bytes and is identified by
-- UWVMROS1_b7a53dc8378d2b76cf8a1872289030302e994f37f026f44da38d2a53a974b3dc.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgArmcurrentstatus = Ros2Rm_ros_interfacesMsgArmcurrentstatus
  {
    -- | \@brief rm_ros_interfaces/msg/Armcurrentstatus.arm_current_status: uint16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmcurrentstatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmcurrentstatus_arm_current_status :: Word16
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Armcurrentstatus.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgArmcurrentstatus; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgArmcurrentstatus :: Ros2Rm_ros_interfacesMsgArmcurrentstatus
defaultRos2Rm_ros_interfacesMsgArmcurrentstatus = Ros2Rm_ros_interfacesMsgArmcurrentstatus (0)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Armcurrentstatus.
-- \@details Exact identity UWVMROS1_b7a53dc8378d2b76cf8a1872289030302e994f37f026f44da38d2a53a974b3dc
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgArmcurrentstatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgArmcurrentstatusCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Armcurrentstatus.
-- \@details Exact identity UWVMROS1_b7a53dc8378d2b76cf8a1872289030302e994f37f026f44da38d2a53a974b3dc
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgArmcurrentstatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgArmcurrentstatusCodecIdentity = "UWVMROS1_b7a53dc8378d2b76cf8a1872289030302e994f37f026f44da38d2a53a974b3dc"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Armcurrentstatus value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgArmcurrentstatus; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgArmcurrentstatus :: Ros2Rm_ros_interfacesMsgArmcurrentstatus -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgArmcurrentstatus value = do
  b0 <- W.encodeUnsigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgArmcurrentstatus_arm_current_status value))
  W.bounded 2 [b0]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Armcurrentstatus.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgArmcurrentstatus; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgArmcurrentstatus :: W.Decoder Ros2Rm_ros_interfacesMsgArmcurrentstatus
readRos2Rm_ros_interfacesMsgArmcurrentstatus = do
  a0 <- fromIntegral <$> W.unsigned 2
  let value = Ros2Rm_ros_interfacesMsgArmcurrentstatus a0
  case encodeRos2Rm_ros_interfacesMsgArmcurrentstatus value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Armcurrentstatus value.
-- \@details Require the complete 2..2-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgArmcurrentstatus; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgArmcurrentstatus :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgArmcurrentstatus
decodeRos2Rm_ros_interfacesMsgArmcurrentstatus = W.runDecoder 2 readRos2Rm_ros_interfacesMsgArmcurrentstatus
instance Canonical Ros2Rm_ros_interfacesMsgArmcurrentstatus where
  maximumBytes _ = 2
  encodeValue = encodeRos2Rm_ros_interfacesMsgArmcurrentstatus
  readValue = readRos2Rm_ros_interfacesMsgArmcurrentstatus
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Armoriginalstate value.
-- \@details All 5 declared fields are retained in source order. The canonical representation occupies
-- 32..96 bytes and is identified by
-- UWVMROS1_72f48f6c5542e0c0eed997cfd22554b16a8936ff3376dd1d60cb9aae274c8d2c.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgArmoriginalstate = Ros2Rm_ros_interfacesMsgArmoriginalstate
  {
    -- | \@brief rm_ros_interfaces/msg/Armoriginalstate.joint: float32; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmoriginalstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmoriginalstate_joint :: [Float]
  ,
    -- | \@brief rm_ros_interfaces/msg/Armoriginalstate.pose: float32; exactly 6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmoriginalstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmoriginalstate_pose :: [Float]
  ,
    -- | \@brief rm_ros_interfaces/msg/Armoriginalstate.err: uint16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmoriginalstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmoriginalstate_err :: Word16
  ,
    -- | \@brief rm_ros_interfaces/msg/Armoriginalstate.err_len: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmoriginalstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmoriginalstate_err_len :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Armoriginalstate.dof: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmoriginalstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmoriginalstate_dof :: Word8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Armoriginalstate.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgArmoriginalstate; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgArmoriginalstate :: Ros2Rm_ros_interfacesMsgArmoriginalstate
defaultRos2Rm_ros_interfacesMsgArmoriginalstate =
  Ros2Rm_ros_interfacesMsgArmoriginalstate
    ([])
    (replicate 6 (0))
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Armoriginalstate.
-- \@details Exact identity UWVMROS1_72f48f6c5542e0c0eed997cfd22554b16a8936ff3376dd1d60cb9aae274c8d2c
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgArmoriginalstate; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgArmoriginalstateCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Armoriginalstate.
-- \@details Exact identity UWVMROS1_72f48f6c5542e0c0eed997cfd22554b16a8936ff3376dd1d60cb9aae274c8d2c
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgArmoriginalstate; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgArmoriginalstateCodecIdentity = "UWVMROS1_72f48f6c5542e0c0eed997cfd22554b16a8936ff3376dd1d60cb9aae274c8d2c"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Armoriginalstate value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgArmoriginalstate; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgArmoriginalstate :: Ros2Rm_ros_interfacesMsgArmoriginalstate -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgArmoriginalstate value = do
  if length (ros2Rm_ros_interfacesMsgArmoriginalstate_joint value) > 16 then Left 22 else Right ()
  prefix0 <- W.encodeCount 16 (length (ros2Rm_ros_interfacesMsgArmoriginalstate_joint value))
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros2Rm_ros_interfacesMsgArmoriginalstate_joint value)
  if length (ros2Rm_ros_interfacesMsgArmoriginalstate_pose value) /= 6 then Left 22 else Right ()
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros2Rm_ros_interfacesMsgArmoriginalstate_pose value)
  b2 <- W.encodeUnsigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgArmoriginalstate_err value))
  b3 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgArmoriginalstate_err_len value))
  b4 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgArmoriginalstate_dof value))
  W.bounded 96 [prefix0, b0, b1, b2, b3, b4]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Armoriginalstate.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgArmoriginalstate; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgArmoriginalstate :: W.Decoder Ros2Rm_ros_interfacesMsgArmoriginalstate
readRos2Rm_ros_interfacesMsgArmoriginalstate = do
  count0 <- W.count 16
  a0 <- replicateM count0 (W.float32)
  a1 <- replicateM 6 (W.float32)
  a2 <- fromIntegral <$> W.unsigned 2
  a3 <- fromIntegral <$> W.unsigned 1
  a4 <- fromIntegral <$> W.unsigned 1
  let value = Ros2Rm_ros_interfacesMsgArmoriginalstate a0 a1 a2 a3 a4
  case encodeRos2Rm_ros_interfacesMsgArmoriginalstate value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Armoriginalstate value.
-- \@details Require the complete 32..96-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgArmoriginalstate; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgArmoriginalstate :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgArmoriginalstate
decodeRos2Rm_ros_interfacesMsgArmoriginalstate = W.runDecoder 96 readRos2Rm_ros_interfacesMsgArmoriginalstate
instance Canonical Ros2Rm_ros_interfacesMsgArmoriginalstate where
  maximumBytes _ = 96
  encodeValue = encodeRos2Rm_ros_interfacesMsgArmoriginalstate
  readValue = readRos2Rm_ros_interfacesMsgArmoriginalstate
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Softwarebuildinfo value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 8..520 bytes and is identified by
-- UWVMROS1_d84d8da289dce8e1735e963b652e574a78f5dcf7549ffe3a84a870c30f6901bc.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgSoftwarebuildinfo = Ros2Rm_ros_interfacesMsgSoftwarebuildinfo
  {
    -- | \@brief rm_ros_interfaces/msg/Softwarebuildinfo.build_time: string; each string is 0..256 bytes;
    -- | strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgSoftwarebuildinfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgSoftwarebuildinfo_build_time :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Softwarebuildinfo.version: string; each string is 0..256 bytes;
    -- | strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgSoftwarebuildinfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgSoftwarebuildinfo_version :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Softwarebuildinfo.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgSoftwarebuildinfo; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgSoftwarebuildinfo :: Ros2Rm_ros_interfacesMsgSoftwarebuildinfo
defaultRos2Rm_ros_interfacesMsgSoftwarebuildinfo =
  Ros2Rm_ros_interfacesMsgSoftwarebuildinfo
    (T.empty)
    (T.empty)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Softwarebuildinfo.
-- \@details Exact identity UWVMROS1_d84d8da289dce8e1735e963b652e574a78f5dcf7549ffe3a84a870c30f6901bc
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgSoftwarebuildinfo; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgSoftwarebuildinfoCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Softwarebuildinfo.
-- \@details Exact identity UWVMROS1_d84d8da289dce8e1735e963b652e574a78f5dcf7549ffe3a84a870c30f6901bc
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgSoftwarebuildinfo; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgSoftwarebuildinfoCodecIdentity = "UWVMROS1_d84d8da289dce8e1735e963b652e574a78f5dcf7549ffe3a84a870c30f6901bc"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Softwarebuildinfo value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgSoftwarebuildinfo; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgSoftwarebuildinfo :: Ros2Rm_ros_interfacesMsgSoftwarebuildinfo -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgSoftwarebuildinfo value = do
  b0 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgSoftwarebuildinfo_build_time value)
  b1 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgSoftwarebuildinfo_version value)
  W.bounded 520 [b0, b1]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Softwarebuildinfo.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgSoftwarebuildinfo; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgSoftwarebuildinfo :: W.Decoder Ros2Rm_ros_interfacesMsgSoftwarebuildinfo
readRos2Rm_ros_interfacesMsgSoftwarebuildinfo = do
  a0 <- W.text 256 True
  a1 <- W.text 256 True
  let value = Ros2Rm_ros_interfacesMsgSoftwarebuildinfo a0 a1
  case encodeRos2Rm_ros_interfacesMsgSoftwarebuildinfo value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Softwarebuildinfo value.
-- \@details Require the complete 8..520-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgSoftwarebuildinfo; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgSoftwarebuildinfo :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgSoftwarebuildinfo
decodeRos2Rm_ros_interfacesMsgSoftwarebuildinfo = W.runDecoder 520 readRos2Rm_ros_interfacesMsgSoftwarebuildinfo
instance Canonical Ros2Rm_ros_interfacesMsgSoftwarebuildinfo where
  maximumBytes _ = 520
  encodeValue = encodeRos2Rm_ros_interfacesMsgSoftwarebuildinfo
  readValue = readRos2Rm_ros_interfacesMsgSoftwarebuildinfo
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Armsoftversion value.
-- \@details All 14 declared fields are retained in source order. The canonical representation occupies
-- 69..4421 bytes and is identified by
-- UWVMROS1_3b92125820667f7d207022aa8b2d078c9e70724c037c261b1e9dd07764e14d9c.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgArmsoftversion = Ros2Rm_ros_interfacesMsgArmsoftversion
  {
    -- | \@brief rm_ros_interfaces/msg/Armsoftversion.product_version: string; each string is 0..256
    -- | bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmsoftversion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmsoftversion_product_version :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Armsoftversion.controller_version: string; each string is 0..256
    -- | bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmsoftversion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmsoftversion_controller_version :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Armsoftversion.algorithm_info: string; each string is 0..256 bytes;
    -- | strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmsoftversion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmsoftversion_algorithm_info :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Armsoftversion.ctrl_info: rm_ros_interfaces/msg/Softwarebuildinfo.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmsoftversion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmsoftversion_ctrl_info :: Ros2Rm_ros_interfacesMsgSoftwarebuildinfo
  ,
    -- | \@brief rm_ros_interfaces/msg/Armsoftversion.dynamic_info: string; each string is 0..256 bytes;
    -- | strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmsoftversion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmsoftversion_dynamic_info :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Armsoftversion.plan_info: rm_ros_interfaces/msg/Softwarebuildinfo.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmsoftversion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmsoftversion_plan_info :: Ros2Rm_ros_interfacesMsgSoftwarebuildinfo
  ,
    -- | \@brief rm_ros_interfaces/msg/Armsoftversion.com_info: rm_ros_interfaces/msg/Softwarebuildinfo.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmsoftversion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmsoftversion_com_info :: Ros2Rm_ros_interfacesMsgSoftwarebuildinfo
  ,
    -- | \@brief rm_ros_interfaces/msg/Armsoftversion.program_info: rm_ros_interfaces/msg/Softwarebuildinfo.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmsoftversion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmsoftversion_program_info :: Ros2Rm_ros_interfacesMsgSoftwarebuildinfo
  ,
    -- | \@brief rm_ros_interfaces/msg/Armsoftversion.state: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmsoftversion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmsoftversion_state :: Bool
  ,
    -- | \@brief rm_ros_interfaces/msg/Armsoftversion.planversion: string; each string is 0..256 bytes;
    -- | strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmsoftversion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmsoftversion_planversion :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Armsoftversion.ctrlversion: string; each string is 0..256 bytes;
    -- | strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmsoftversion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmsoftversion_ctrlversion :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Armsoftversion.kernal1: string; each string is 0..256 bytes; strict
    -- | UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmsoftversion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmsoftversion_kernal1 :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Armsoftversion.kernal2: string; each string is 0..256 bytes; strict
    -- | UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmsoftversion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmsoftversion_kernal2 :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Armsoftversion.productversion: string; each string is 0..256 bytes;
    -- | strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmsoftversion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmsoftversion_productversion :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Armsoftversion.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgArmsoftversion; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgArmsoftversion :: Ros2Rm_ros_interfacesMsgArmsoftversion
defaultRos2Rm_ros_interfacesMsgArmsoftversion =
  Ros2Rm_ros_interfacesMsgArmsoftversion
    (T.empty)
    (T.empty)
    (T.empty)
    (defaultRos2Rm_ros_interfacesMsgSoftwarebuildinfo)
    (T.empty)
    (defaultRos2Rm_ros_interfacesMsgSoftwarebuildinfo)
    (defaultRos2Rm_ros_interfacesMsgSoftwarebuildinfo)
    (defaultRos2Rm_ros_interfacesMsgSoftwarebuildinfo)
    (False)
    (T.empty)
    (T.empty)
    (T.empty)
    (T.empty)
    (T.empty)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Armsoftversion.
-- \@details Exact identity UWVMROS1_3b92125820667f7d207022aa8b2d078c9e70724c037c261b1e9dd07764e14d9c
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgArmsoftversion; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgArmsoftversionCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Armsoftversion.
-- \@details Exact identity UWVMROS1_3b92125820667f7d207022aa8b2d078c9e70724c037c261b1e9dd07764e14d9c
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgArmsoftversion; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgArmsoftversionCodecIdentity = "UWVMROS1_3b92125820667f7d207022aa8b2d078c9e70724c037c261b1e9dd07764e14d9c"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Armsoftversion value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgArmsoftversion; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgArmsoftversion :: Ros2Rm_ros_interfacesMsgArmsoftversion -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgArmsoftversion value = do
  b0 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgArmsoftversion_product_version value)
  b1 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgArmsoftversion_controller_version value)
  b2 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgArmsoftversion_algorithm_info value)
  b3 <- encodeRos2Rm_ros_interfacesMsgSoftwarebuildinfo (ros2Rm_ros_interfacesMsgArmsoftversion_ctrl_info value)
  b4 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgArmsoftversion_dynamic_info value)
  b5 <- encodeRos2Rm_ros_interfacesMsgSoftwarebuildinfo (ros2Rm_ros_interfacesMsgArmsoftversion_plan_info value)
  b6 <- encodeRos2Rm_ros_interfacesMsgSoftwarebuildinfo (ros2Rm_ros_interfacesMsgArmsoftversion_com_info value)
  b7 <- encodeRos2Rm_ros_interfacesMsgSoftwarebuildinfo (ros2Rm_ros_interfacesMsgArmsoftversion_program_info value)
  b8 <- W.encodeBool (ros2Rm_ros_interfacesMsgArmsoftversion_state value)
  b9 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgArmsoftversion_planversion value)
  b10 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgArmsoftversion_ctrlversion value)
  b11 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgArmsoftversion_kernal1 value)
  b12 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgArmsoftversion_kernal2 value)
  b13 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgArmsoftversion_productversion value)
  W.bounded 4421 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Armsoftversion.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgArmsoftversion; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgArmsoftversion :: W.Decoder Ros2Rm_ros_interfacesMsgArmsoftversion
readRos2Rm_ros_interfacesMsgArmsoftversion = do
  a0 <- W.text 256 True
  a1 <- W.text 256 True
  a2 <- W.text 256 True
  a3 <- readRos2Rm_ros_interfacesMsgSoftwarebuildinfo
  a4 <- W.text 256 True
  a5 <- readRos2Rm_ros_interfacesMsgSoftwarebuildinfo
  a6 <- readRos2Rm_ros_interfacesMsgSoftwarebuildinfo
  a7 <- readRos2Rm_ros_interfacesMsgSoftwarebuildinfo
  a8 <- W.boolean
  a9 <- W.text 256 True
  a10 <- W.text 256 True
  a11 <- W.text 256 True
  a12 <- W.text 256 True
  a13 <- W.text 256 True
  let value = Ros2Rm_ros_interfacesMsgArmsoftversion a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13
  case encodeRos2Rm_ros_interfacesMsgArmsoftversion value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Armsoftversion value.
-- \@details Require the complete 69..4421-byte canonical representation. Reject truncation, invalid
-- fields and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgArmsoftversion; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgArmsoftversion :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgArmsoftversion
decodeRos2Rm_ros_interfacesMsgArmsoftversion = W.runDecoder 4421 readRos2Rm_ros_interfacesMsgArmsoftversion
instance Canonical Ros2Rm_ros_interfacesMsgArmsoftversion where
  maximumBytes _ = 4421
  encodeValue = encodeRos2Rm_ros_interfacesMsgArmsoftversion
  readValue = readRos2Rm_ros_interfacesMsgArmsoftversion
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Armsoftversionv3 value.
-- \@details All 6 declared fields are retained in source order. The canonical representation occupies
-- 32..2080 bytes and is identified by
-- UWVMROS1_ea5589dc88dc36fc961682ec2d46be8a9909d28c3c26372614cfa6b153b76e8b.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgArmsoftversionv3 = Ros2Rm_ros_interfacesMsgArmsoftversionv3
  {
    -- | \@brief rm_ros_interfaces/msg/Armsoftversionv3.product_version: string; each string is 0..256
    -- | bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmsoftversionv3; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmsoftversionv3_product_version :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Armsoftversionv3.controller_version: string; each string is 0..256
    -- | bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmsoftversionv3; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmsoftversionv3_controller_version :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Armsoftversionv3.algorithm_info: string; each string is 0..256
    -- | bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmsoftversionv3; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmsoftversionv3_algorithm_info :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Armsoftversionv3.ctrl_info: rm_ros_interfaces/msg/Softwarebuildinfo.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmsoftversionv3; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmsoftversionv3_ctrl_info :: Ros2Rm_ros_interfacesMsgSoftwarebuildinfo
  ,
    -- | \@brief rm_ros_interfaces/msg/Armsoftversionv3.dynamic_info: string; each string is 0..256 bytes;
    -- | strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmsoftversionv3; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmsoftversionv3_dynamic_info :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Armsoftversionv3.plan_info: rm_ros_interfaces/msg/Softwarebuildinfo.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmsoftversionv3; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmsoftversionv3_plan_info :: Ros2Rm_ros_interfacesMsgSoftwarebuildinfo
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Armsoftversionv3.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgArmsoftversionv3; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgArmsoftversionv3 :: Ros2Rm_ros_interfacesMsgArmsoftversionv3
defaultRos2Rm_ros_interfacesMsgArmsoftversionv3 =
  Ros2Rm_ros_interfacesMsgArmsoftversionv3
    (T.empty)
    (T.empty)
    (T.empty)
    (defaultRos2Rm_ros_interfacesMsgSoftwarebuildinfo)
    (T.empty)
    (defaultRos2Rm_ros_interfacesMsgSoftwarebuildinfo)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Armsoftversionv3.
-- \@details Exact identity UWVMROS1_ea5589dc88dc36fc961682ec2d46be8a9909d28c3c26372614cfa6b153b76e8b
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgArmsoftversionv3; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgArmsoftversionv3CodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Armsoftversionv3.
-- \@details Exact identity UWVMROS1_ea5589dc88dc36fc961682ec2d46be8a9909d28c3c26372614cfa6b153b76e8b
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgArmsoftversionv3; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgArmsoftversionv3CodecIdentity = "UWVMROS1_ea5589dc88dc36fc961682ec2d46be8a9909d28c3c26372614cfa6b153b76e8b"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Armsoftversionv3 value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgArmsoftversionv3; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgArmsoftversionv3 :: Ros2Rm_ros_interfacesMsgArmsoftversionv3 -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgArmsoftversionv3 value = do
  b0 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgArmsoftversionv3_product_version value)
  b1 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgArmsoftversionv3_controller_version value)
  b2 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgArmsoftversionv3_algorithm_info value)
  b3 <- encodeRos2Rm_ros_interfacesMsgSoftwarebuildinfo (ros2Rm_ros_interfacesMsgArmsoftversionv3_ctrl_info value)
  b4 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgArmsoftversionv3_dynamic_info value)
  b5 <- encodeRos2Rm_ros_interfacesMsgSoftwarebuildinfo (ros2Rm_ros_interfacesMsgArmsoftversionv3_plan_info value)
  W.bounded 2080 [b0, b1, b2, b3, b4, b5]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Armsoftversionv3.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgArmsoftversionv3; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgArmsoftversionv3 :: W.Decoder Ros2Rm_ros_interfacesMsgArmsoftversionv3
readRos2Rm_ros_interfacesMsgArmsoftversionv3 = do
  a0 <- W.text 256 True
  a1 <- W.text 256 True
  a2 <- W.text 256 True
  a3 <- readRos2Rm_ros_interfacesMsgSoftwarebuildinfo
  a4 <- W.text 256 True
  a5 <- readRos2Rm_ros_interfacesMsgSoftwarebuildinfo
  let value = Ros2Rm_ros_interfacesMsgArmsoftversionv3 a0 a1 a2 a3 a4 a5
  case encodeRos2Rm_ros_interfacesMsgArmsoftversionv3 value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Armsoftversionv3 value.
-- \@details Require the complete 32..2080-byte canonical representation. Reject truncation, invalid
-- fields and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgArmsoftversionv3; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgArmsoftversionv3 :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgArmsoftversionv3
decodeRos2Rm_ros_interfacesMsgArmsoftversionv3 = W.runDecoder 2080 readRos2Rm_ros_interfacesMsgArmsoftversionv3
instance Canonical Ros2Rm_ros_interfacesMsgArmsoftversionv3 where
  maximumBytes _ = 2080
  encodeValue = encodeRos2Rm_ros_interfacesMsgArmsoftversionv3
  readValue = readRos2Rm_ros_interfacesMsgArmsoftversionv3
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Armsoftversionv4 value.
-- \@details All 6 declared fields are retained in source order. The canonical representation occupies
-- 36..2340 bytes and is identified by
-- UWVMROS1_b496d4a867605c13dbc7387895bd4f333ec435ed10a3b5a82c246c7f99d6de0d.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgArmsoftversionv4 = Ros2Rm_ros_interfacesMsgArmsoftversionv4
  {
    -- | \@brief rm_ros_interfaces/msg/Armsoftversionv4.product_version: string; each string is 0..256
    -- | bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmsoftversionv4; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmsoftversionv4_product_version :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Armsoftversionv4.controller_version: string; each string is 0..256
    -- | bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmsoftversionv4; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmsoftversionv4_controller_version :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Armsoftversionv4.algorithm_info: string; each string is 0..256
    -- | bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmsoftversionv4; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmsoftversionv4_algorithm_info :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Armsoftversionv4.ctrl_info: rm_ros_interfaces/msg/Softwarebuildinfo.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmsoftversionv4; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmsoftversionv4_ctrl_info :: Ros2Rm_ros_interfacesMsgSoftwarebuildinfo
  ,
    -- | \@brief rm_ros_interfaces/msg/Armsoftversionv4.com_info: rm_ros_interfaces/msg/Softwarebuildinfo.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmsoftversionv4; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmsoftversionv4_com_info :: Ros2Rm_ros_interfacesMsgSoftwarebuildinfo
  ,
    -- | \@brief rm_ros_interfaces/msg/Armsoftversionv4.program_info: rm_ros_interfaces/msg/Softwarebuildinfo.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmsoftversionv4; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmsoftversionv4_program_info :: Ros2Rm_ros_interfacesMsgSoftwarebuildinfo
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Armsoftversionv4.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgArmsoftversionv4; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgArmsoftversionv4 :: Ros2Rm_ros_interfacesMsgArmsoftversionv4
defaultRos2Rm_ros_interfacesMsgArmsoftversionv4 =
  Ros2Rm_ros_interfacesMsgArmsoftversionv4
    (T.empty)
    (T.empty)
    (T.empty)
    (defaultRos2Rm_ros_interfacesMsgSoftwarebuildinfo)
    (defaultRos2Rm_ros_interfacesMsgSoftwarebuildinfo)
    (defaultRos2Rm_ros_interfacesMsgSoftwarebuildinfo)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Armsoftversionv4.
-- \@details Exact identity UWVMROS1_b496d4a867605c13dbc7387895bd4f333ec435ed10a3b5a82c246c7f99d6de0d
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgArmsoftversionv4; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgArmsoftversionv4CodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Armsoftversionv4.
-- \@details Exact identity UWVMROS1_b496d4a867605c13dbc7387895bd4f333ec435ed10a3b5a82c246c7f99d6de0d
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgArmsoftversionv4; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgArmsoftversionv4CodecIdentity = "UWVMROS1_b496d4a867605c13dbc7387895bd4f333ec435ed10a3b5a82c246c7f99d6de0d"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Armsoftversionv4 value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgArmsoftversionv4; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgArmsoftversionv4 :: Ros2Rm_ros_interfacesMsgArmsoftversionv4 -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgArmsoftversionv4 value = do
  b0 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgArmsoftversionv4_product_version value)
  b1 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgArmsoftversionv4_controller_version value)
  b2 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgArmsoftversionv4_algorithm_info value)
  b3 <- encodeRos2Rm_ros_interfacesMsgSoftwarebuildinfo (ros2Rm_ros_interfacesMsgArmsoftversionv4_ctrl_info value)
  b4 <- encodeRos2Rm_ros_interfacesMsgSoftwarebuildinfo (ros2Rm_ros_interfacesMsgArmsoftversionv4_com_info value)
  b5 <- encodeRos2Rm_ros_interfacesMsgSoftwarebuildinfo (ros2Rm_ros_interfacesMsgArmsoftversionv4_program_info value)
  W.bounded 2340 [b0, b1, b2, b3, b4, b5]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Armsoftversionv4.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgArmsoftversionv4; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgArmsoftversionv4 :: W.Decoder Ros2Rm_ros_interfacesMsgArmsoftversionv4
readRos2Rm_ros_interfacesMsgArmsoftversionv4 = do
  a0 <- W.text 256 True
  a1 <- W.text 256 True
  a2 <- W.text 256 True
  a3 <- readRos2Rm_ros_interfacesMsgSoftwarebuildinfo
  a4 <- readRos2Rm_ros_interfacesMsgSoftwarebuildinfo
  a5 <- readRos2Rm_ros_interfacesMsgSoftwarebuildinfo
  let value = Ros2Rm_ros_interfacesMsgArmsoftversionv4 a0 a1 a2 a3 a4 a5
  case encodeRos2Rm_ros_interfacesMsgArmsoftversionv4 value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Armsoftversionv4 value.
-- \@details Require the complete 36..2340-byte canonical representation. Reject truncation, invalid
-- fields and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgArmsoftversionv4; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgArmsoftversionv4 :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgArmsoftversionv4
decodeRos2Rm_ros_interfacesMsgArmsoftversionv4 = W.runDecoder 2340 readRos2Rm_ros_interfacesMsgArmsoftversionv4
instance Canonical Ros2Rm_ros_interfacesMsgArmsoftversionv4 where
  maximumBytes _ = 2340
  encodeValue = encodeRos2Rm_ros_interfacesMsgArmsoftversionv4
  readValue = readRos2Rm_ros_interfacesMsgArmsoftversionv4
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Armstate value.
-- \@details All 5 declared fields are retained in source order. The canonical representation occupies
-- 64..128 bytes and is identified by
-- UWVMROS1_00bcb934e0cb6bd35e60269a9620381834adf8e33234bafa6f678ecf59ffdde7.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgArmstate = Ros2Rm_ros_interfacesMsgArmstate
  {
    -- | \@brief rm_ros_interfaces/msg/Armstate.joint: float32; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmstate_joint :: [Float]
  ,
    -- | \@brief rm_ros_interfaces/msg/Armstate.pose: geometry_msgs/msg/Pose.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmstate_pose :: Ros2Geometry_msgsMsgPose
  ,
    -- | \@brief rm_ros_interfaces/msg/Armstate.err: uint16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmstate_err :: Word16
  ,
    -- | \@brief rm_ros_interfaces/msg/Armstate.err_len: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmstate_err_len :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Armstate.dof: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgArmstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgArmstate_dof :: Word8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Armstate.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgArmstate; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgArmstate :: Ros2Rm_ros_interfacesMsgArmstate
defaultRos2Rm_ros_interfacesMsgArmstate =
  Ros2Rm_ros_interfacesMsgArmstate
    ([])
    (defaultRos2Geometry_msgsMsgPose)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Armstate.
-- \@details Exact identity UWVMROS1_00bcb934e0cb6bd35e60269a9620381834adf8e33234bafa6f678ecf59ffdde7
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgArmstate; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgArmstateCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Armstate.
-- \@details Exact identity UWVMROS1_00bcb934e0cb6bd35e60269a9620381834adf8e33234bafa6f678ecf59ffdde7
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgArmstate; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgArmstateCodecIdentity = "UWVMROS1_00bcb934e0cb6bd35e60269a9620381834adf8e33234bafa6f678ecf59ffdde7"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Armstate value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgArmstate; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgArmstate :: Ros2Rm_ros_interfacesMsgArmstate -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgArmstate value = do
  if length (ros2Rm_ros_interfacesMsgArmstate_joint value) > 16 then Left 22 else Right ()
  prefix0 <- W.encodeCount 16 (length (ros2Rm_ros_interfacesMsgArmstate_joint value))
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros2Rm_ros_interfacesMsgArmstate_joint value)
  b1 <- encodeRos2Geometry_msgsMsgPose (ros2Rm_ros_interfacesMsgArmstate_pose value)
  b2 <- W.encodeUnsigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgArmstate_err value))
  b3 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgArmstate_err_len value))
  b4 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgArmstate_dof value))
  W.bounded 128 [prefix0, b0, b1, b2, b3, b4]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Armstate.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgArmstate; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgArmstate :: W.Decoder Ros2Rm_ros_interfacesMsgArmstate
readRos2Rm_ros_interfacesMsgArmstate = do
  count0 <- W.count 16
  a0 <- replicateM count0 (W.float32)
  a1 <- readRos2Geometry_msgsMsgPose
  a2 <- fromIntegral <$> W.unsigned 2
  a3 <- fromIntegral <$> W.unsigned 1
  a4 <- fromIntegral <$> W.unsigned 1
  let value = Ros2Rm_ros_interfacesMsgArmstate a0 a1 a2 a3 a4
  case encodeRos2Rm_ros_interfacesMsgArmstate value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Armstate value.
-- \@details Require the complete 64..128-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgArmstate; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgArmstate :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgArmstate
decodeRos2Rm_ros_interfacesMsgArmstate = W.runDecoder 128 readRos2Rm_ros_interfacesMsgArmstate
instance Canonical Ros2Rm_ros_interfacesMsgArmstate where
  maximumBytes _ = 128
  encodeValue = encodeRos2Rm_ros_interfacesMsgArmstate
  readValue = readRos2Rm_ros_interfacesMsgArmstate
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Cartepos value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 57..57 bytes and is identified by
-- UWVMROS1_378453679d2951117a929eb7c976fc94961c57c93ef3444fbea04fe1a6f35b13.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgCartepos = Ros2Rm_ros_interfacesMsgCartepos
  {
    -- | \@brief rm_ros_interfaces/msg/Cartepos.pose: geometry_msgs/msg/Pose.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgCartepos; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgCartepos_pose :: Ros2Geometry_msgsMsgPose
  ,
    -- | \@brief rm_ros_interfaces/msg/Cartepos.follow: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgCartepos; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgCartepos_follow :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Cartepos.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgCartepos; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgCartepos :: Ros2Rm_ros_interfacesMsgCartepos
defaultRos2Rm_ros_interfacesMsgCartepos =
  Ros2Rm_ros_interfacesMsgCartepos
    (defaultRos2Geometry_msgsMsgPose)
    (False)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Cartepos.
-- \@details Exact identity UWVMROS1_378453679d2951117a929eb7c976fc94961c57c93ef3444fbea04fe1a6f35b13
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgCartepos; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgCarteposCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Cartepos.
-- \@details Exact identity UWVMROS1_378453679d2951117a929eb7c976fc94961c57c93ef3444fbea04fe1a6f35b13
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgCartepos; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgCarteposCodecIdentity = "UWVMROS1_378453679d2951117a929eb7c976fc94961c57c93ef3444fbea04fe1a6f35b13"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Cartepos value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgCartepos; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgCartepos :: Ros2Rm_ros_interfacesMsgCartepos -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgCartepos value = do
  b0 <- encodeRos2Geometry_msgsMsgPose (ros2Rm_ros_interfacesMsgCartepos_pose value)
  b1 <- W.encodeBool (ros2Rm_ros_interfacesMsgCartepos_follow value)
  W.bounded 57 [b0, b1]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Cartepos.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgCartepos; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgCartepos :: W.Decoder Ros2Rm_ros_interfacesMsgCartepos
readRos2Rm_ros_interfacesMsgCartepos = do
  a0 <- readRos2Geometry_msgsMsgPose
  a1 <- W.boolean
  let value = Ros2Rm_ros_interfacesMsgCartepos a0 a1
  case encodeRos2Rm_ros_interfacesMsgCartepos value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Cartepos value.
-- \@details Require the complete 57..57-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgCartepos; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgCartepos :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgCartepos
decodeRos2Rm_ros_interfacesMsgCartepos = W.runDecoder 57 readRos2Rm_ros_interfacesMsgCartepos
instance Canonical Ros2Rm_ros_interfacesMsgCartepos where
  maximumBytes _ = 57
  encodeValue = encodeRos2Rm_ros_interfacesMsgCartepos
  readValue = readRos2Rm_ros_interfacesMsgCartepos
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Carteposcustom value.
-- \@details All 4 declared fields are retained in source order. The canonical representation occupies
-- 59..59 bytes and is identified by
-- UWVMROS1_6d61e6f37210c02d518a084147de131bc437839101278c95653814d2bb32d67c.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgCarteposcustom = Ros2Rm_ros_interfacesMsgCarteposcustom
  {
    -- | \@brief rm_ros_interfaces/msg/Carteposcustom.pose: geometry_msgs/msg/Pose.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgCarteposcustom; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgCarteposcustom_pose :: Ros2Geometry_msgsMsgPose
  ,
    -- | \@brief rm_ros_interfaces/msg/Carteposcustom.follow: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgCarteposcustom; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgCarteposcustom_follow :: Bool
  ,
    -- | \@brief rm_ros_interfaces/msg/Carteposcustom.trajectory_mode: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgCarteposcustom; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgCarteposcustom_trajectory_mode :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Carteposcustom.radio: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgCarteposcustom; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgCarteposcustom_radio :: Word8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Carteposcustom.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgCarteposcustom; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgCarteposcustom :: Ros2Rm_ros_interfacesMsgCarteposcustom
defaultRos2Rm_ros_interfacesMsgCarteposcustom =
  Ros2Rm_ros_interfacesMsgCarteposcustom
    (defaultRos2Geometry_msgsMsgPose)
    (False)
    (0)
    (0)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Carteposcustom.
-- \@details Exact identity UWVMROS1_6d61e6f37210c02d518a084147de131bc437839101278c95653814d2bb32d67c
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgCarteposcustom; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgCarteposcustomCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Carteposcustom.
-- \@details Exact identity UWVMROS1_6d61e6f37210c02d518a084147de131bc437839101278c95653814d2bb32d67c
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgCarteposcustom; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgCarteposcustomCodecIdentity = "UWVMROS1_6d61e6f37210c02d518a084147de131bc437839101278c95653814d2bb32d67c"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Carteposcustom value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgCarteposcustom; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgCarteposcustom :: Ros2Rm_ros_interfacesMsgCarteposcustom -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgCarteposcustom value = do
  b0 <- encodeRos2Geometry_msgsMsgPose (ros2Rm_ros_interfacesMsgCarteposcustom_pose value)
  b1 <- W.encodeBool (ros2Rm_ros_interfacesMsgCarteposcustom_follow value)
  b2 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgCarteposcustom_trajectory_mode value))
  b3 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgCarteposcustom_radio value))
  W.bounded 59 [b0, b1, b2, b3]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Carteposcustom.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgCarteposcustom; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgCarteposcustom :: W.Decoder Ros2Rm_ros_interfacesMsgCarteposcustom
readRos2Rm_ros_interfacesMsgCarteposcustom = do
  a0 <- readRos2Geometry_msgsMsgPose
  a1 <- W.boolean
  a2 <- fromIntegral <$> W.unsigned 1
  a3 <- fromIntegral <$> W.unsigned 1
  let value = Ros2Rm_ros_interfacesMsgCarteposcustom a0 a1 a2 a3
  case encodeRos2Rm_ros_interfacesMsgCarteposcustom value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Carteposcustom value.
-- \@details Require the complete 59..59-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgCarteposcustom; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgCarteposcustom :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgCarteposcustom
decodeRos2Rm_ros_interfacesMsgCarteposcustom = W.runDecoder 59 readRos2Rm_ros_interfacesMsgCarteposcustom
instance Canonical Ros2Rm_ros_interfacesMsgCarteposcustom where
  maximumBytes _ = 59
  encodeValue = encodeRos2Rm_ros_interfacesMsgCarteposcustom
  readValue = readRos2Rm_ros_interfacesMsgCarteposcustom
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Expandpos value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies
-- 7..7 bytes and is identified by
-- UWVMROS1_0e0290c8170fde709b7208f29a8711e103283040e3447d0d68a03e5cf0762f6c.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgExpandpos = Ros2Rm_ros_interfacesMsgExpandpos
  {
    -- | \@brief rm_ros_interfaces/msg/Expandpos.pos: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgExpandpos; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgExpandpos_pos :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Expandpos.speed: uint16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgExpandpos; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgExpandpos_speed :: Word16
  ,
    -- | \@brief rm_ros_interfaces/msg/Expandpos.block: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgExpandpos; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgExpandpos_block :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Expandpos.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgExpandpos; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgExpandpos :: Ros2Rm_ros_interfacesMsgExpandpos
defaultRos2Rm_ros_interfacesMsgExpandpos = Ros2Rm_ros_interfacesMsgExpandpos (0) (0) (False)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Expandpos.
-- \@details Exact identity UWVMROS1_0e0290c8170fde709b7208f29a8711e103283040e3447d0d68a03e5cf0762f6c
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgExpandpos; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgExpandposCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Expandpos.
-- \@details Exact identity UWVMROS1_0e0290c8170fde709b7208f29a8711e103283040e3447d0d68a03e5cf0762f6c
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgExpandpos; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgExpandposCodecIdentity = "UWVMROS1_0e0290c8170fde709b7208f29a8711e103283040e3447d0d68a03e5cf0762f6c"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Expandpos value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgExpandpos; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgExpandpos :: Ros2Rm_ros_interfacesMsgExpandpos -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgExpandpos value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgExpandpos_pos value))
  b1 <- W.encodeUnsigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgExpandpos_speed value))
  b2 <- W.encodeBool (ros2Rm_ros_interfacesMsgExpandpos_block value)
  W.bounded 7 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Expandpos.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgExpandpos; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgExpandpos :: W.Decoder Ros2Rm_ros_interfacesMsgExpandpos
readRos2Rm_ros_interfacesMsgExpandpos = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- fromIntegral <$> W.unsigned 2
  a2 <- W.boolean
  let value = Ros2Rm_ros_interfacesMsgExpandpos a0 a1 a2
  case encodeRos2Rm_ros_interfacesMsgExpandpos value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Expandpos value.
-- \@details Require the complete 7..7-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgExpandpos; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgExpandpos :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgExpandpos
decodeRos2Rm_ros_interfacesMsgExpandpos = W.runDecoder 7 readRos2Rm_ros_interfacesMsgExpandpos
instance Canonical Ros2Rm_ros_interfacesMsgExpandpos where
  maximumBytes _ = 7
  encodeValue = encodeRos2Rm_ros_interfacesMsgExpandpos
  readValue = readRos2Rm_ros_interfacesMsgExpandpos
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Expandstate value.
-- \@details All 4 declared fields are retained in source order. The canonical representation occupies
-- 12..12 bytes and is identified by
-- UWVMROS1_3f4b075ae44707e2ce086829663fb4d774d74e0c40be23a0a6e73f2da07249e4.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgExpandstate = Ros2Rm_ros_interfacesMsgExpandstate
  {
    -- | \@brief rm_ros_interfaces/msg/Expandstate.pos: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgExpandstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgExpandstate_pos :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Expandstate.current: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgExpandstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgExpandstate_current :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Expandstate.err_flag: uint16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgExpandstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgExpandstate_err_flag :: Word16
  ,
    -- | \@brief rm_ros_interfaces/msg/Expandstate.mode: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgExpandstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgExpandstate_mode :: Int16
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Expandstate.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgExpandstate; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgExpandstate :: Ros2Rm_ros_interfacesMsgExpandstate
defaultRos2Rm_ros_interfacesMsgExpandstate = Ros2Rm_ros_interfacesMsgExpandstate (0) (0) (0) (0)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Expandstate.
-- \@details Exact identity UWVMROS1_3f4b075ae44707e2ce086829663fb4d774d74e0c40be23a0a6e73f2da07249e4
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgExpandstate; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgExpandstateCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Expandstate.
-- \@details Exact identity UWVMROS1_3f4b075ae44707e2ce086829663fb4d774d74e0c40be23a0a6e73f2da07249e4
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgExpandstate; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgExpandstateCodecIdentity = "UWVMROS1_3f4b075ae44707e2ce086829663fb4d774d74e0c40be23a0a6e73f2da07249e4"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Expandstate value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgExpandstate; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgExpandstate :: Ros2Rm_ros_interfacesMsgExpandstate -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgExpandstate value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgExpandstate_pos value))
  b1 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgExpandstate_current value))
  b2 <- W.encodeUnsigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgExpandstate_err_flag value))
  b3 <- W.encodeSigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgExpandstate_mode value))
  W.bounded 12 [b0, b1, b2, b3]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Expandstate.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgExpandstate; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgExpandstate :: W.Decoder Ros2Rm_ros_interfacesMsgExpandstate
readRos2Rm_ros_interfacesMsgExpandstate = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- fromIntegral <$> W.signed 4
  a2 <- fromIntegral <$> W.unsigned 2
  a3 <- fromIntegral <$> W.signed 2
  let value = Ros2Rm_ros_interfacesMsgExpandstate a0 a1 a2 a3
  case encodeRos2Rm_ros_interfacesMsgExpandstate value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Expandstate value.
-- \@details Require the complete 12..12-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgExpandstate; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgExpandstate :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgExpandstate
decodeRos2Rm_ros_interfacesMsgExpandstate = W.runDecoder 12 readRos2Rm_ros_interfacesMsgExpandstate
instance Canonical Ros2Rm_ros_interfacesMsgExpandstate where
  maximumBytes _ = 12
  encodeValue = encodeRos2Rm_ros_interfacesMsgExpandstate
  readValue = readRos2Rm_ros_interfacesMsgExpandstate
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Flowchartrunstate value.
-- \@details All 7 declared fields are retained in source order. The canonical representation occupies
-- 13..525 bytes and is identified by
-- UWVMROS1_61b4e904b5818c2eca883f9842bd69695c8b47737cb8066aefefd24fb9f6422f.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgFlowchartrunstate = Ros2Rm_ros_interfacesMsgFlowchartrunstate
  {
    -- | \@brief rm_ros_interfaces/msg/Flowchartrunstate.run_state: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgFlowchartrunstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgFlowchartrunstate_run_state :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Flowchartrunstate.id: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgFlowchartrunstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgFlowchartrunstate_id :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Flowchartrunstate.name: string; each string is 0..256 bytes; strict
    -- | UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgFlowchartrunstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgFlowchartrunstate_name :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Flowchartrunstate.plan_speed: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgFlowchartrunstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgFlowchartrunstate_plan_speed :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Flowchartrunstate.step_mode: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgFlowchartrunstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgFlowchartrunstate_step_mode :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Flowchartrunstate.modal_id: string; each string is 0..256 bytes;
    -- | strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgFlowchartrunstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgFlowchartrunstate_modal_id :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Flowchartrunstate.state: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgFlowchartrunstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgFlowchartrunstate_state :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Flowchartrunstate.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgFlowchartrunstate; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgFlowchartrunstate :: Ros2Rm_ros_interfacesMsgFlowchartrunstate
defaultRos2Rm_ros_interfacesMsgFlowchartrunstate =
  Ros2Rm_ros_interfacesMsgFlowchartrunstate
    (0)
    (0)
    (T.empty)
    (0)
    (0)
    (T.empty)
    (False)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Flowchartrunstate.
-- \@details Exact identity UWVMROS1_61b4e904b5818c2eca883f9842bd69695c8b47737cb8066aefefd24fb9f6422f
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgFlowchartrunstate; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgFlowchartrunstateCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Flowchartrunstate.
-- \@details Exact identity UWVMROS1_61b4e904b5818c2eca883f9842bd69695c8b47737cb8066aefefd24fb9f6422f
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgFlowchartrunstate; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgFlowchartrunstateCodecIdentity = "UWVMROS1_61b4e904b5818c2eca883f9842bd69695c8b47737cb8066aefefd24fb9f6422f"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Flowchartrunstate value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgFlowchartrunstate; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgFlowchartrunstate :: Ros2Rm_ros_interfacesMsgFlowchartrunstate -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgFlowchartrunstate value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgFlowchartrunstate_run_state value))
  b1 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgFlowchartrunstate_id value))
  b2 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgFlowchartrunstate_name value)
  b3 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgFlowchartrunstate_plan_speed value))
  b4 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgFlowchartrunstate_step_mode value))
  b5 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgFlowchartrunstate_modal_id value)
  b6 <- W.encodeBool (ros2Rm_ros_interfacesMsgFlowchartrunstate_state value)
  W.bounded 525 [b0, b1, b2, b3, b4, b5, b6]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Flowchartrunstate.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgFlowchartrunstate; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgFlowchartrunstate :: W.Decoder Ros2Rm_ros_interfacesMsgFlowchartrunstate
readRos2Rm_ros_interfacesMsgFlowchartrunstate = do
  a0 <- fromIntegral <$> W.unsigned 1
  a1 <- fromIntegral <$> W.unsigned 1
  a2 <- W.text 256 True
  a3 <- fromIntegral <$> W.unsigned 1
  a4 <- fromIntegral <$> W.unsigned 1
  a5 <- W.text 256 True
  a6 <- W.boolean
  let value = Ros2Rm_ros_interfacesMsgFlowchartrunstate a0 a1 a2 a3 a4 a5 a6
  case encodeRos2Rm_ros_interfacesMsgFlowchartrunstate value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Flowchartrunstate value.
-- \@details Require the complete 13..525-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgFlowchartrunstate; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgFlowchartrunstate :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgFlowchartrunstate
decodeRos2Rm_ros_interfacesMsgFlowchartrunstate = W.runDecoder 525 readRos2Rm_ros_interfacesMsgFlowchartrunstate
instance Canonical Ros2Rm_ros_interfacesMsgFlowchartrunstate where
  maximumBytes _ = 525
  encodeValue = encodeRos2Rm_ros_interfacesMsgFlowchartrunstate
  readValue = readRos2Rm_ros_interfacesMsgFlowchartrunstate
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Force_Position_State value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies
-- 30..30 bytes and is identified by
-- UWVMROS1_98c23957f0547ada86fa7d65a0c53a1d4f994995541d821e38e7d8e6e86678c7.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgForce_Position_State = Ros2Rm_ros_interfacesMsgForce_Position_State
  {
    -- | \@brief rm_ros_interfaces/msg/Force_Position_State.joint: float32; exactly 6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgForce_Position_State; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgForce_Position_State_joint :: [Float]
  ,
    -- | \@brief rm_ros_interfaces/msg/Force_Position_State.force: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgForce_Position_State; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgForce_Position_State_force :: Float
  ,
    -- | \@brief rm_ros_interfaces/msg/Force_Position_State.arm_err: uint16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgForce_Position_State; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgForce_Position_State_arm_err :: Word16
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Force_Position_State.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgForce_Position_State; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgForce_Position_State :: Ros2Rm_ros_interfacesMsgForce_Position_State
defaultRos2Rm_ros_interfacesMsgForce_Position_State =
  Ros2Rm_ros_interfacesMsgForce_Position_State
    (replicate 6 (0))
    (0)
    (0)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Force_Position_State.
-- \@details Exact identity UWVMROS1_98c23957f0547ada86fa7d65a0c53a1d4f994995541d821e38e7d8e6e86678c7
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgForce_Position_State; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgForce_Position_StateCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Force_Position_State.
-- \@details Exact identity UWVMROS1_98c23957f0547ada86fa7d65a0c53a1d4f994995541d821e38e7d8e6e86678c7
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgForce_Position_State; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgForce_Position_StateCodecIdentity = "UWVMROS1_98c23957f0547ada86fa7d65a0c53a1d4f994995541d821e38e7d8e6e86678c7"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Force_Position_State value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgForce_Position_State; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgForce_Position_State :: Ros2Rm_ros_interfacesMsgForce_Position_State -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgForce_Position_State value = do
  if length (ros2Rm_ros_interfacesMsgForce_Position_State_joint value) /= 6 then Left 22 else Right ()
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros2Rm_ros_interfacesMsgForce_Position_State_joint value)
  b1 <- W.encodeFloat32 (ros2Rm_ros_interfacesMsgForce_Position_State_force value)
  b2 <- W.encodeUnsigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgForce_Position_State_arm_err value))
  W.bounded 30 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Force_Position_State.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgForce_Position_State; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgForce_Position_State :: W.Decoder Ros2Rm_ros_interfacesMsgForce_Position_State
readRos2Rm_ros_interfacesMsgForce_Position_State = do
  a0 <- replicateM 6 (W.float32)
  a1 <- W.float32
  a2 <- fromIntegral <$> W.unsigned 2
  let value = Ros2Rm_ros_interfacesMsgForce_Position_State a0 a1 a2
  case encodeRos2Rm_ros_interfacesMsgForce_Position_State value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Force_Position_State value.
-- \@details Require the complete 30..30-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgForce_Position_State; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgForce_Position_State :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgForce_Position_State
decodeRos2Rm_ros_interfacesMsgForce_Position_State = W.runDecoder 30 readRos2Rm_ros_interfacesMsgForce_Position_State
instance Canonical Ros2Rm_ros_interfacesMsgForce_Position_State where
  maximumBytes _ = 30
  encodeValue = encodeRos2Rm_ros_interfacesMsgForce_Position_State
  readValue = readRos2Rm_ros_interfacesMsgForce_Position_State
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Forcepositionmove value.
-- \@details All 11 declared fields are retained in source order. The canonical representation occupies
-- 121..185 bytes and is identified by
-- UWVMROS1_ff24ba9bda14e6d5a9ddafa24b3e8d72f5de5b99ba1161416fe2d8a8140fc224.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgForcepositionmove = Ros2Rm_ros_interfacesMsgForcepositionmove
  {
    -- | \@brief rm_ros_interfaces/msg/Forcepositionmove.pose: geometry_msgs/msg/Pose.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgForcepositionmove; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgForcepositionmove_pose :: Ros2Geometry_msgsMsgPose
  ,
    -- | \@brief rm_ros_interfaces/msg/Forcepositionmove.joint: float32; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgForcepositionmove; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgForcepositionmove_joint :: [Float]
  ,
    -- | \@brief rm_ros_interfaces/msg/Forcepositionmove.flag: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgForcepositionmove; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgForcepositionmove_flag :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Forcepositionmove.sensor: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgForcepositionmove; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgForcepositionmove_sensor :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Forcepositionmove.mode: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgForcepositionmove; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgForcepositionmove_mode :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Forcepositionmove.control_mode: uint8; exactly 6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgForcepositionmove; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgForcepositionmove_control_mode :: [Word8]
  ,
    -- | \@brief rm_ros_interfaces/msg/Forcepositionmove.follow: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgForcepositionmove; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgForcepositionmove_follow :: Bool
  ,
    -- | \@brief rm_ros_interfaces/msg/Forcepositionmove.desired_force: float32; exactly 6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgForcepositionmove; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgForcepositionmove_desired_force :: [Float]
  ,
    -- | \@brief rm_ros_interfaces/msg/Forcepositionmove.limit_vel: float32; exactly 6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgForcepositionmove; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgForcepositionmove_limit_vel :: [Float]
  ,
    -- | \@brief rm_ros_interfaces/msg/Forcepositionmove.trajectory_mode: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgForcepositionmove; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgForcepositionmove_trajectory_mode :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Forcepositionmove.radio: uint16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgForcepositionmove; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgForcepositionmove_radio :: Word16
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Forcepositionmove.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgForcepositionmove; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgForcepositionmove :: Ros2Rm_ros_interfacesMsgForcepositionmove
defaultRos2Rm_ros_interfacesMsgForcepositionmove =
  Ros2Rm_ros_interfacesMsgForcepositionmove
    (defaultRos2Geometry_msgsMsgPose)
    ([])
    (0)
    (0)
    (0)
    (replicate 6 (0))
    (False)
    (replicate 6 (0))
    (replicate 6 (0))
    (0)
    (0)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Forcepositionmove.
-- \@details Exact identity UWVMROS1_ff24ba9bda14e6d5a9ddafa24b3e8d72f5de5b99ba1161416fe2d8a8140fc224
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgForcepositionmove; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgForcepositionmoveCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Forcepositionmove.
-- \@details Exact identity UWVMROS1_ff24ba9bda14e6d5a9ddafa24b3e8d72f5de5b99ba1161416fe2d8a8140fc224
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgForcepositionmove; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgForcepositionmoveCodecIdentity = "UWVMROS1_ff24ba9bda14e6d5a9ddafa24b3e8d72f5de5b99ba1161416fe2d8a8140fc224"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Forcepositionmove value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgForcepositionmove; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgForcepositionmove :: Ros2Rm_ros_interfacesMsgForcepositionmove -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgForcepositionmove value = do
  b0 <- encodeRos2Geometry_msgsMsgPose (ros2Rm_ros_interfacesMsgForcepositionmove_pose value)
  if length (ros2Rm_ros_interfacesMsgForcepositionmove_joint value) > 16 then Left 22 else Right ()
  prefix1 <- W.encodeCount 16 (length (ros2Rm_ros_interfacesMsgForcepositionmove_joint value))
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros2Rm_ros_interfacesMsgForcepositionmove_joint value)
  b2 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgForcepositionmove_flag value))
  b3 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgForcepositionmove_sensor value))
  b4 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgForcepositionmove_mode value))
  if length (ros2Rm_ros_interfacesMsgForcepositionmove_control_mode value) /= 6 then Left 22 else Right ()
  b5 <- B.concat <$> mapM (\e -> W.encodeUnsigned 1 (fromIntegral (e))) (ros2Rm_ros_interfacesMsgForcepositionmove_control_mode value)
  b6 <- W.encodeBool (ros2Rm_ros_interfacesMsgForcepositionmove_follow value)
  if length (ros2Rm_ros_interfacesMsgForcepositionmove_desired_force value) /= 6 then Left 22 else Right ()
  b7 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros2Rm_ros_interfacesMsgForcepositionmove_desired_force value)
  if length (ros2Rm_ros_interfacesMsgForcepositionmove_limit_vel value) /= 6 then Left 22 else Right ()
  b8 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros2Rm_ros_interfacesMsgForcepositionmove_limit_vel value)
  b9 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgForcepositionmove_trajectory_mode value))
  b10 <- W.encodeUnsigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgForcepositionmove_radio value))
  W.bounded 185 [b0, prefix1, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Forcepositionmove.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgForcepositionmove; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgForcepositionmove :: W.Decoder Ros2Rm_ros_interfacesMsgForcepositionmove
readRos2Rm_ros_interfacesMsgForcepositionmove = do
  a0 <- readRos2Geometry_msgsMsgPose
  count1 <- W.count 16
  a1 <- replicateM count1 (W.float32)
  a2 <- fromIntegral <$> W.unsigned 1
  a3 <- fromIntegral <$> W.unsigned 1
  a4 <- fromIntegral <$> W.unsigned 1
  a5 <- replicateM 6 (fromIntegral <$> W.unsigned 1)
  a6 <- W.boolean
  a7 <- replicateM 6 (W.float32)
  a8 <- replicateM 6 (W.float32)
  a9 <- fromIntegral <$> W.unsigned 1
  a10 <- fromIntegral <$> W.unsigned 2
  let value = Ros2Rm_ros_interfacesMsgForcepositionmove a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10
  case encodeRos2Rm_ros_interfacesMsgForcepositionmove value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Forcepositionmove value.
-- \@details Require the complete 121..185-byte canonical representation. Reject truncation, invalid
-- fields and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgForcepositionmove; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgForcepositionmove :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgForcepositionmove
decodeRos2Rm_ros_interfacesMsgForcepositionmove = W.runDecoder 185 readRos2Rm_ros_interfacesMsgForcepositionmove
instance Canonical Ros2Rm_ros_interfacesMsgForcepositionmove where
  maximumBytes _ = 185
  encodeValue = encodeRos2Rm_ros_interfacesMsgForcepositionmove
  readValue = readRos2Rm_ros_interfacesMsgForcepositionmove
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Forcepositionmovejoint value.
-- \@details All 7 declared fields are retained in source order. The canonical representation occupies
-- 14..78 bytes and is identified by
-- UWVMROS1_1a8435bfb309f07ef73c7ec8295b87918d6182fb718ebdf0c24ade35895d1bed.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgForcepositionmovejoint = Ros2Rm_ros_interfacesMsgForcepositionmovejoint
  {
    -- | \@brief rm_ros_interfaces/msg/Forcepositionmovejoint.joint: float32; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgForcepositionmovejoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgForcepositionmovejoint_joint :: [Float]
  ,
    -- | \@brief rm_ros_interfaces/msg/Forcepositionmovejoint.sensor: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgForcepositionmovejoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgForcepositionmovejoint_sensor :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Forcepositionmovejoint.mode: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgForcepositionmovejoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgForcepositionmovejoint_mode :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Forcepositionmovejoint.dir: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgForcepositionmovejoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgForcepositionmovejoint_dir :: Int16
  ,
    -- | \@brief rm_ros_interfaces/msg/Forcepositionmovejoint.force: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgForcepositionmovejoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgForcepositionmovejoint_force :: Float
  ,
    -- | \@brief rm_ros_interfaces/msg/Forcepositionmovejoint.follow: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgForcepositionmovejoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgForcepositionmovejoint_follow :: Bool
  ,
    -- | \@brief rm_ros_interfaces/msg/Forcepositionmovejoint.dof: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgForcepositionmovejoint; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgForcepositionmovejoint_dof :: Word8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Forcepositionmovejoint.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgForcepositionmovejoint; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgForcepositionmovejoint :: Ros2Rm_ros_interfacesMsgForcepositionmovejoint
defaultRos2Rm_ros_interfacesMsgForcepositionmovejoint =
  Ros2Rm_ros_interfacesMsgForcepositionmovejoint
    ([])
    (0)
    (0)
    (0)
    (0)
    (False)
    (0)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Forcepositionmovejoint.
-- \@details Exact identity UWVMROS1_1a8435bfb309f07ef73c7ec8295b87918d6182fb718ebdf0c24ade35895d1bed
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgForcepositionmovejoint; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgForcepositionmovejointCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Forcepositionmovejoint.
-- \@details Exact identity UWVMROS1_1a8435bfb309f07ef73c7ec8295b87918d6182fb718ebdf0c24ade35895d1bed
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgForcepositionmovejoint; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgForcepositionmovejointCodecIdentity = "UWVMROS1_1a8435bfb309f07ef73c7ec8295b87918d6182fb718ebdf0c24ade35895d1bed"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Forcepositionmovejoint value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgForcepositionmovejoint; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgForcepositionmovejoint :: Ros2Rm_ros_interfacesMsgForcepositionmovejoint -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgForcepositionmovejoint value = do
  if length (ros2Rm_ros_interfacesMsgForcepositionmovejoint_joint value) > 16 then Left 22 else Right ()
  prefix0 <- W.encodeCount 16 (length (ros2Rm_ros_interfacesMsgForcepositionmovejoint_joint value))
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros2Rm_ros_interfacesMsgForcepositionmovejoint_joint value)
  b1 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgForcepositionmovejoint_sensor value))
  b2 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgForcepositionmovejoint_mode value))
  b3 <- W.encodeSigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgForcepositionmovejoint_dir value))
  b4 <- W.encodeFloat32 (ros2Rm_ros_interfacesMsgForcepositionmovejoint_force value)
  b5 <- W.encodeBool (ros2Rm_ros_interfacesMsgForcepositionmovejoint_follow value)
  b6 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgForcepositionmovejoint_dof value))
  W.bounded 78 [prefix0, b0, b1, b2, b3, b4, b5, b6]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Forcepositionmovejoint.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgForcepositionmovejoint; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgForcepositionmovejoint :: W.Decoder Ros2Rm_ros_interfacesMsgForcepositionmovejoint
readRos2Rm_ros_interfacesMsgForcepositionmovejoint = do
  count0 <- W.count 16
  a0 <- replicateM count0 (W.float32)
  a1 <- fromIntegral <$> W.unsigned 1
  a2 <- fromIntegral <$> W.unsigned 1
  a3 <- fromIntegral <$> W.signed 2
  a4 <- W.float32
  a5 <- W.boolean
  a6 <- fromIntegral <$> W.unsigned 1
  let value = Ros2Rm_ros_interfacesMsgForcepositionmovejoint a0 a1 a2 a3 a4 a5 a6
  case encodeRos2Rm_ros_interfacesMsgForcepositionmovejoint value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Forcepositionmovejoint value.
-- \@details Require the complete 14..78-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgForcepositionmovejoint; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgForcepositionmovejoint :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgForcepositionmovejoint
decodeRos2Rm_ros_interfacesMsgForcepositionmovejoint = W.runDecoder 78 readRos2Rm_ros_interfacesMsgForcepositionmovejoint
instance Canonical Ros2Rm_ros_interfacesMsgForcepositionmovejoint where
  maximumBytes _ = 78
  encodeValue = encodeRos2Rm_ros_interfacesMsgForcepositionmovejoint
  readValue = readRos2Rm_ros_interfacesMsgForcepositionmovejoint
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Forcepositionmovepose value.
-- \@details All 6 declared fields are retained in source order. The canonical representation occupies
-- 62..62 bytes and is identified by
-- UWVMROS1_1440c6075db6349d807d6a57247bd59711eb72afe9ba4d6c4a3c809e15a8f8a3.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgForcepositionmovepose = Ros2Rm_ros_interfacesMsgForcepositionmovepose
  {
    -- | \@brief rm_ros_interfaces/msg/Forcepositionmovepose.pose: geometry_msgs/msg/Pose.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgForcepositionmovepose; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgForcepositionmovepose_pose :: Ros2Geometry_msgsMsgPose
  ,
    -- | \@brief rm_ros_interfaces/msg/Forcepositionmovepose.sensor: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgForcepositionmovepose; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgForcepositionmovepose_sensor :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Forcepositionmovepose.mode: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgForcepositionmovepose; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgForcepositionmovepose_mode :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Forcepositionmovepose.dir: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgForcepositionmovepose; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgForcepositionmovepose_dir :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Forcepositionmovepose.force: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgForcepositionmovepose; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgForcepositionmovepose_force :: Int16
  ,
    -- | \@brief rm_ros_interfaces/msg/Forcepositionmovepose.follow: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgForcepositionmovepose; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgForcepositionmovepose_follow :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Forcepositionmovepose.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgForcepositionmovepose; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgForcepositionmovepose :: Ros2Rm_ros_interfacesMsgForcepositionmovepose
defaultRos2Rm_ros_interfacesMsgForcepositionmovepose =
  Ros2Rm_ros_interfacesMsgForcepositionmovepose
    (defaultRos2Geometry_msgsMsgPose)
    (0)
    (0)
    (0)
    (0)
    (False)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Forcepositionmovepose.
-- \@details Exact identity UWVMROS1_1440c6075db6349d807d6a57247bd59711eb72afe9ba4d6c4a3c809e15a8f8a3
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgForcepositionmovepose; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgForcepositionmoveposeCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Forcepositionmovepose.
-- \@details Exact identity UWVMROS1_1440c6075db6349d807d6a57247bd59711eb72afe9ba4d6c4a3c809e15a8f8a3
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgForcepositionmovepose; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgForcepositionmoveposeCodecIdentity = "UWVMROS1_1440c6075db6349d807d6a57247bd59711eb72afe9ba4d6c4a3c809e15a8f8a3"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Forcepositionmovepose value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgForcepositionmovepose; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgForcepositionmovepose :: Ros2Rm_ros_interfacesMsgForcepositionmovepose -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgForcepositionmovepose value = do
  b0 <- encodeRos2Geometry_msgsMsgPose (ros2Rm_ros_interfacesMsgForcepositionmovepose_pose value)
  b1 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgForcepositionmovepose_sensor value))
  b2 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgForcepositionmovepose_mode value))
  b3 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgForcepositionmovepose_dir value))
  b4 <- W.encodeSigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgForcepositionmovepose_force value))
  b5 <- W.encodeBool (ros2Rm_ros_interfacesMsgForcepositionmovepose_follow value)
  W.bounded 62 [b0, b1, b2, b3, b4, b5]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Forcepositionmovepose.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgForcepositionmovepose; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgForcepositionmovepose :: W.Decoder Ros2Rm_ros_interfacesMsgForcepositionmovepose
readRos2Rm_ros_interfacesMsgForcepositionmovepose = do
  a0 <- readRos2Geometry_msgsMsgPose
  a1 <- fromIntegral <$> W.unsigned 1
  a2 <- fromIntegral <$> W.unsigned 1
  a3 <- fromIntegral <$> W.unsigned 1
  a4 <- fromIntegral <$> W.signed 2
  a5 <- W.boolean
  let value = Ros2Rm_ros_interfacesMsgForcepositionmovepose a0 a1 a2 a3 a4 a5
  case encodeRos2Rm_ros_interfacesMsgForcepositionmovepose value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Forcepositionmovepose value.
-- \@details Require the complete 62..62-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgForcepositionmovepose; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgForcepositionmovepose :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgForcepositionmovepose
decodeRos2Rm_ros_interfacesMsgForcepositionmovepose = W.runDecoder 62 readRos2Rm_ros_interfacesMsgForcepositionmovepose
instance Canonical Ros2Rm_ros_interfacesMsgForcepositionmovepose where
  maximumBytes _ = 62
  encodeValue = encodeRos2Rm_ros_interfacesMsgForcepositionmovepose
  readValue = readRos2Rm_ros_interfacesMsgForcepositionmovepose
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/GetArmState_Command value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 4..260 bytes and is identified by
-- UWVMROS1_8e1d91f4b8d1801b92f1b8b2c2e2d6fa07b32ade96a6984d692be1fde986cb30.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgGetArmState_Command = Ros2Rm_ros_interfacesMsgGetArmState_Command
  {
    -- | \@brief rm_ros_interfaces/msg/GetArmState_Command.command: string; each string is 0..256 bytes;
    -- | strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgGetArmState_Command; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgGetArmState_Command_command :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/GetArmState_Command.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgGetArmState_Command; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgGetArmState_Command :: Ros2Rm_ros_interfacesMsgGetArmState_Command
defaultRos2Rm_ros_interfacesMsgGetArmState_Command = Ros2Rm_ros_interfacesMsgGetArmState_Command (T.empty)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/GetArmState_Command.
-- \@details Exact identity UWVMROS1_8e1d91f4b8d1801b92f1b8b2c2e2d6fa07b32ade96a6984d692be1fde986cb30
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgGetArmState_Command; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgGetArmState_CommandCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/GetArmState_Command.
-- \@details Exact identity UWVMROS1_8e1d91f4b8d1801b92f1b8b2c2e2d6fa07b32ade96a6984d692be1fde986cb30
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgGetArmState_Command; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgGetArmState_CommandCodecIdentity = "UWVMROS1_8e1d91f4b8d1801b92f1b8b2c2e2d6fa07b32ade96a6984d692be1fde986cb30"
-- | \@brief Encode one complete rm_ros_interfaces/msg/GetArmState_Command value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgGetArmState_Command; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgGetArmState_Command :: Ros2Rm_ros_interfacesMsgGetArmState_Command -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgGetArmState_Command value = do
  b0 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgGetArmState_Command_command value)
  W.bounded 260 [b0]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/GetArmState_Command.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgGetArmState_Command; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgGetArmState_Command :: W.Decoder Ros2Rm_ros_interfacesMsgGetArmState_Command
readRos2Rm_ros_interfacesMsgGetArmState_Command = do
  a0 <- W.text 256 True
  let value = Ros2Rm_ros_interfacesMsgGetArmState_Command a0
  case encodeRos2Rm_ros_interfacesMsgGetArmState_Command value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/GetArmState_Command value.
-- \@details Require the complete 4..260-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgGetArmState_Command; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgGetArmState_Command :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgGetArmState_Command
decodeRos2Rm_ros_interfacesMsgGetArmState_Command = W.runDecoder 260 readRos2Rm_ros_interfacesMsgGetArmState_Command
instance Canonical Ros2Rm_ros_interfacesMsgGetArmState_Command where
  maximumBytes _ = 260
  encodeValue = encodeRos2Rm_ros_interfacesMsgGetArmState_Command
  readValue = readRos2Rm_ros_interfacesMsgGetArmState_Command
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Getallframe value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 40..2600 bytes and is identified by
-- UWVMROS1_f63c4069d35368010998526b3db41b2ccedab8adb990d3b4e7214edfc4c566ef.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgGetallframe = Ros2Rm_ros_interfacesMsgGetallframe
  {
    -- | \@brief rm_ros_interfaces/msg/Getallframe.frame_name: string; exactly 10 elements; each string is
    -- | 0..256 bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgGetallframe; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgGetallframe_frame_name :: [T.Text]
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Getallframe.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgGetallframe; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgGetallframe :: Ros2Rm_ros_interfacesMsgGetallframe
defaultRos2Rm_ros_interfacesMsgGetallframe = Ros2Rm_ros_interfacesMsgGetallframe (replicate 10 (T.empty))
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Getallframe.
-- \@details Exact identity UWVMROS1_f63c4069d35368010998526b3db41b2ccedab8adb990d3b4e7214edfc4c566ef
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgGetallframe; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgGetallframeCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Getallframe.
-- \@details Exact identity UWVMROS1_f63c4069d35368010998526b3db41b2ccedab8adb990d3b4e7214edfc4c566ef
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgGetallframe; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgGetallframeCodecIdentity = "UWVMROS1_f63c4069d35368010998526b3db41b2ccedab8adb990d3b4e7214edfc4c566ef"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Getallframe value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgGetallframe; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgGetallframe :: Ros2Rm_ros_interfacesMsgGetallframe -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgGetallframe value = do
  if length (ros2Rm_ros_interfacesMsgGetallframe_frame_name value) /= 10 then Left 22 else Right ()
  b0 <- B.concat <$> mapM (\e -> W.encodeText 256 True (e)) (ros2Rm_ros_interfacesMsgGetallframe_frame_name value)
  W.bounded 2600 [b0]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Getallframe.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgGetallframe; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgGetallframe :: W.Decoder Ros2Rm_ros_interfacesMsgGetallframe
readRos2Rm_ros_interfacesMsgGetallframe = do
  a0 <- replicateM 10 (W.text 256 True)
  let value = Ros2Rm_ros_interfacesMsgGetallframe a0
  case encodeRos2Rm_ros_interfacesMsgGetallframe value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Getallframe value.
-- \@details Require the complete 40..2600-byte canonical representation. Reject truncation, invalid
-- fields and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgGetallframe; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgGetallframe :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgGetallframe
decodeRos2Rm_ros_interfacesMsgGetallframe = W.runDecoder 2600 readRos2Rm_ros_interfacesMsgGetallframe
instance Canonical Ros2Rm_ros_interfacesMsgGetallframe where
  maximumBytes _ = 2600
  encodeValue = encodeRos2Rm_ros_interfacesMsgGetallframe
  readValue = readRos2Rm_ros_interfacesMsgGetallframe
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Getmodbustcpmasterlist value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies
-- 12..268 bytes and is identified by
-- UWVMROS1_09604efe1f3cef804f05d3f5c7cc8db9c468fa17e2343675e96920f1555a9686.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist = Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist
  {
    -- | \@brief rm_ros_interfaces/msg/Getmodbustcpmasterlist.page_num: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist_page_num :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Getmodbustcpmasterlist.page_size: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist_page_size :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Getmodbustcpmasterlist.vague_search: string; each string is 0..256
    -- | bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist_vague_search :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Getmodbustcpmasterlist.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgGetmodbustcpmasterlist :: Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist
defaultRos2Rm_ros_interfacesMsgGetmodbustcpmasterlist =
  Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist
    (0)
    (0)
    (T.empty)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Getmodbustcpmasterlist.
-- \@details Exact identity UWVMROS1_09604efe1f3cef804f05d3f5c7cc8db9c468fa17e2343675e96920f1555a9686
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgGetmodbustcpmasterlistCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Getmodbustcpmasterlist.
-- \@details Exact identity UWVMROS1_09604efe1f3cef804f05d3f5c7cc8db9c468fa17e2343675e96920f1555a9686
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgGetmodbustcpmasterlistCodecIdentity = "UWVMROS1_09604efe1f3cef804f05d3f5c7cc8db9c468fa17e2343675e96920f1555a9686"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Getmodbustcpmasterlist value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgGetmodbustcpmasterlist :: Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgGetmodbustcpmasterlist value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist_page_num value))
  b1 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist_page_size value))
  b2 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist_vague_search value)
  W.bounded 268 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Getmodbustcpmasterlist.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgGetmodbustcpmasterlist :: W.Decoder Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist
readRos2Rm_ros_interfacesMsgGetmodbustcpmasterlist = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- fromIntegral <$> W.signed 4
  a2 <- W.text 256 True
  let value = Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist a0 a1 a2
  case encodeRos2Rm_ros_interfacesMsgGetmodbustcpmasterlist value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Getmodbustcpmasterlist value.
-- \@details Require the complete 12..268-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgGetmodbustcpmasterlist :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist
decodeRos2Rm_ros_interfacesMsgGetmodbustcpmasterlist = W.runDecoder 268 readRos2Rm_ros_interfacesMsgGetmodbustcpmasterlist
instance Canonical Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist where
  maximumBytes _ = 268
  encodeValue = encodeRos2Rm_ros_interfacesMsgGetmodbustcpmasterlist
  readValue = readRos2Rm_ros_interfacesMsgGetmodbustcpmasterlist
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Gettrajectorylist value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies
-- 12..268 bytes and is identified by
-- UWVMROS1_58b7256031125746972a86fabed4beaf76a44b780cdd76908697169ae909cf8b.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgGettrajectorylist = Ros2Rm_ros_interfacesMsgGettrajectorylist
  {
    -- | \@brief rm_ros_interfaces/msg/Gettrajectorylist.page_num: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgGettrajectorylist; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgGettrajectorylist_page_num :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Gettrajectorylist.page_size: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgGettrajectorylist; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgGettrajectorylist_page_size :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Gettrajectorylist.vague_search: string; each string is 0..256
    -- | bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgGettrajectorylist; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgGettrajectorylist_vague_search :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Gettrajectorylist.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgGettrajectorylist; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgGettrajectorylist :: Ros2Rm_ros_interfacesMsgGettrajectorylist
defaultRos2Rm_ros_interfacesMsgGettrajectorylist = Ros2Rm_ros_interfacesMsgGettrajectorylist (0) (0) (T.empty)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Gettrajectorylist.
-- \@details Exact identity UWVMROS1_58b7256031125746972a86fabed4beaf76a44b780cdd76908697169ae909cf8b
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgGettrajectorylist; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgGettrajectorylistCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Gettrajectorylist.
-- \@details Exact identity UWVMROS1_58b7256031125746972a86fabed4beaf76a44b780cdd76908697169ae909cf8b
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgGettrajectorylist; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgGettrajectorylistCodecIdentity = "UWVMROS1_58b7256031125746972a86fabed4beaf76a44b780cdd76908697169ae909cf8b"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Gettrajectorylist value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgGettrajectorylist; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgGettrajectorylist :: Ros2Rm_ros_interfacesMsgGettrajectorylist -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgGettrajectorylist value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgGettrajectorylist_page_num value))
  b1 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgGettrajectorylist_page_size value))
  b2 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgGettrajectorylist_vague_search value)
  W.bounded 268 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Gettrajectorylist.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgGettrajectorylist; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgGettrajectorylist :: W.Decoder Ros2Rm_ros_interfacesMsgGettrajectorylist
readRos2Rm_ros_interfacesMsgGettrajectorylist = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- fromIntegral <$> W.signed 4
  a2 <- W.text 256 True
  let value = Ros2Rm_ros_interfacesMsgGettrajectorylist a0 a1 a2
  case encodeRos2Rm_ros_interfacesMsgGettrajectorylist value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Gettrajectorylist value.
-- \@details Require the complete 12..268-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgGettrajectorylist; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgGettrajectorylist :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgGettrajectorylist
decodeRos2Rm_ros_interfacesMsgGettrajectorylist = W.runDecoder 268 readRos2Rm_ros_interfacesMsgGettrajectorylist
instance Canonical Ros2Rm_ros_interfacesMsgGettrajectorylist where
  maximumBytes _ = 268
  encodeValue = encodeRos2Rm_ros_interfacesMsgGettrajectorylist
  readValue = readRos2Rm_ros_interfacesMsgGettrajectorylist
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Gripperpick value.
-- \@details All 4 declared fields are retained in source order. The canonical representation occupies
-- 7..7 bytes and is identified by
-- UWVMROS1_fa6da630bd224eff4924d45c471eefae227314781b28c271ff34295d60616ce2.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgGripperpick = Ros2Rm_ros_interfacesMsgGripperpick
  {
    -- | \@brief rm_ros_interfaces/msg/Gripperpick.speed: uint16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgGripperpick; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgGripperpick_speed :: Word16
  ,
    -- | \@brief rm_ros_interfaces/msg/Gripperpick.force: uint16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgGripperpick; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgGripperpick_force :: Word16
  ,
    -- | \@brief rm_ros_interfaces/msg/Gripperpick.block: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgGripperpick; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgGripperpick_block :: Bool
  ,
    -- | \@brief rm_ros_interfaces/msg/Gripperpick.timeout: uint16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgGripperpick; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgGripperpick_timeout :: Word16
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Gripperpick.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgGripperpick; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgGripperpick :: Ros2Rm_ros_interfacesMsgGripperpick
defaultRos2Rm_ros_interfacesMsgGripperpick = Ros2Rm_ros_interfacesMsgGripperpick (0) (0) (False) (0)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Gripperpick.
-- \@details Exact identity UWVMROS1_fa6da630bd224eff4924d45c471eefae227314781b28c271ff34295d60616ce2
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgGripperpick; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgGripperpickCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Gripperpick.
-- \@details Exact identity UWVMROS1_fa6da630bd224eff4924d45c471eefae227314781b28c271ff34295d60616ce2
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgGripperpick; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgGripperpickCodecIdentity = "UWVMROS1_fa6da630bd224eff4924d45c471eefae227314781b28c271ff34295d60616ce2"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Gripperpick value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgGripperpick; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgGripperpick :: Ros2Rm_ros_interfacesMsgGripperpick -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgGripperpick value = do
  b0 <- W.encodeUnsigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgGripperpick_speed value))
  b1 <- W.encodeUnsigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgGripperpick_force value))
  b2 <- W.encodeBool (ros2Rm_ros_interfacesMsgGripperpick_block value)
  b3 <- W.encodeUnsigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgGripperpick_timeout value))
  W.bounded 7 [b0, b1, b2, b3]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Gripperpick.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgGripperpick; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgGripperpick :: W.Decoder Ros2Rm_ros_interfacesMsgGripperpick
readRos2Rm_ros_interfacesMsgGripperpick = do
  a0 <- fromIntegral <$> W.unsigned 2
  a1 <- fromIntegral <$> W.unsigned 2
  a2 <- W.boolean
  a3 <- fromIntegral <$> W.unsigned 2
  let value = Ros2Rm_ros_interfacesMsgGripperpick a0 a1 a2 a3
  case encodeRos2Rm_ros_interfacesMsgGripperpick value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Gripperpick value.
-- \@details Require the complete 7..7-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgGripperpick; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgGripperpick :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgGripperpick
decodeRos2Rm_ros_interfacesMsgGripperpick = W.runDecoder 7 readRos2Rm_ros_interfacesMsgGripperpick
instance Canonical Ros2Rm_ros_interfacesMsgGripperpick where
  maximumBytes _ = 7
  encodeValue = encodeRos2Rm_ros_interfacesMsgGripperpick
  readValue = readRos2Rm_ros_interfacesMsgGripperpick
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Gripperset value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies
-- 5..5 bytes and is identified by
-- UWVMROS1_71e19bd655b84b8e1cb948c0180331b23e1cabfc02b6f8883209113d0fa8626b.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgGripperset = Ros2Rm_ros_interfacesMsgGripperset
  {
    -- | \@brief rm_ros_interfaces/msg/Gripperset.position: uint16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgGripperset; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgGripperset_position :: Word16
  ,
    -- | \@brief rm_ros_interfaces/msg/Gripperset.block: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgGripperset; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgGripperset_block :: Bool
  ,
    -- | \@brief rm_ros_interfaces/msg/Gripperset.timeout: uint16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgGripperset; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgGripperset_timeout :: Word16
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Gripperset.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgGripperset; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgGripperset :: Ros2Rm_ros_interfacesMsgGripperset
defaultRos2Rm_ros_interfacesMsgGripperset = Ros2Rm_ros_interfacesMsgGripperset (0) (False) (0)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Gripperset.
-- \@details Exact identity UWVMROS1_71e19bd655b84b8e1cb948c0180331b23e1cabfc02b6f8883209113d0fa8626b
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgGripperset; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgGrippersetCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Gripperset.
-- \@details Exact identity UWVMROS1_71e19bd655b84b8e1cb948c0180331b23e1cabfc02b6f8883209113d0fa8626b
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgGripperset; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgGrippersetCodecIdentity = "UWVMROS1_71e19bd655b84b8e1cb948c0180331b23e1cabfc02b6f8883209113d0fa8626b"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Gripperset value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgGripperset; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgGripperset :: Ros2Rm_ros_interfacesMsgGripperset -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgGripperset value = do
  b0 <- W.encodeUnsigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgGripperset_position value))
  b1 <- W.encodeBool (ros2Rm_ros_interfacesMsgGripperset_block value)
  b2 <- W.encodeUnsigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgGripperset_timeout value))
  W.bounded 5 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Gripperset.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgGripperset; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgGripperset :: W.Decoder Ros2Rm_ros_interfacesMsgGripperset
readRos2Rm_ros_interfacesMsgGripperset = do
  a0 <- fromIntegral <$> W.unsigned 2
  a1 <- W.boolean
  a2 <- fromIntegral <$> W.unsigned 2
  let value = Ros2Rm_ros_interfacesMsgGripperset a0 a1 a2
  case encodeRos2Rm_ros_interfacesMsgGripperset value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Gripperset value.
-- \@details Require the complete 5..5-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgGripperset; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgGripperset :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgGripperset
decodeRos2Rm_ros_interfacesMsgGripperset = W.runDecoder 5 readRos2Rm_ros_interfacesMsgGripperset
instance Canonical Ros2Rm_ros_interfacesMsgGripperset where
  maximumBytes _ = 5
  encodeValue = encodeRos2Rm_ros_interfacesMsgGripperset
  readValue = readRos2Rm_ros_interfacesMsgGripperset
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Handangle value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 13..13 bytes and is identified by
-- UWVMROS1_a213f476b5734891798b4e19c4200fdf496486b913fb4f43808905f087b1cabf.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgHandangle = Ros2Rm_ros_interfacesMsgHandangle
  {
    -- | \@brief rm_ros_interfaces/msg/Handangle.hand_angle: int16; exactly 6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgHandangle; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgHandangle_hand_angle :: [Int16]
  ,
    -- | \@brief rm_ros_interfaces/msg/Handangle.block: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgHandangle; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgHandangle_block :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Handangle.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgHandangle; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgHandangle :: Ros2Rm_ros_interfacesMsgHandangle
defaultRos2Rm_ros_interfacesMsgHandangle = Ros2Rm_ros_interfacesMsgHandangle (replicate 6 (0)) (False)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Handangle.
-- \@details Exact identity UWVMROS1_a213f476b5734891798b4e19c4200fdf496486b913fb4f43808905f087b1cabf
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgHandangle; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgHandangleCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Handangle.
-- \@details Exact identity UWVMROS1_a213f476b5734891798b4e19c4200fdf496486b913fb4f43808905f087b1cabf
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgHandangle; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgHandangleCodecIdentity = "UWVMROS1_a213f476b5734891798b4e19c4200fdf496486b913fb4f43808905f087b1cabf"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Handangle value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgHandangle; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgHandangle :: Ros2Rm_ros_interfacesMsgHandangle -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgHandangle value = do
  if length (ros2Rm_ros_interfacesMsgHandangle_hand_angle value) /= 6 then Left 22 else Right ()
  b0 <- B.concat <$> mapM (\e -> W.encodeSigned 2 (fromIntegral (e))) (ros2Rm_ros_interfacesMsgHandangle_hand_angle value)
  b1 <- W.encodeBool (ros2Rm_ros_interfacesMsgHandangle_block value)
  W.bounded 13 [b0, b1]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Handangle.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgHandangle; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgHandangle :: W.Decoder Ros2Rm_ros_interfacesMsgHandangle
readRos2Rm_ros_interfacesMsgHandangle = do
  a0 <- replicateM 6 (fromIntegral <$> W.signed 2)
  a1 <- W.boolean
  let value = Ros2Rm_ros_interfacesMsgHandangle a0 a1
  case encodeRos2Rm_ros_interfacesMsgHandangle value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Handangle value.
-- \@details Require the complete 13..13-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgHandangle; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgHandangle :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgHandangle
decodeRos2Rm_ros_interfacesMsgHandangle = W.runDecoder 13 readRos2Rm_ros_interfacesMsgHandangle
instance Canonical Ros2Rm_ros_interfacesMsgHandangle where
  maximumBytes _ = 13
  encodeValue = encodeRos2Rm_ros_interfacesMsgHandangle
  readValue = readRos2Rm_ros_interfacesMsgHandangle
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Handforce value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 2..2 bytes and is identified by
-- UWVMROS1_910b9c8f264852d96c22d01fd2e38471ec596fe0be4dbab44c93f495061dfab2.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgHandforce = Ros2Rm_ros_interfacesMsgHandforce
  {
    -- | \@brief rm_ros_interfaces/msg/Handforce.hand_force: uint16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgHandforce; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgHandforce_hand_force :: Word16
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Handforce.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgHandforce; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgHandforce :: Ros2Rm_ros_interfacesMsgHandforce
defaultRos2Rm_ros_interfacesMsgHandforce = Ros2Rm_ros_interfacesMsgHandforce (0)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Handforce.
-- \@details Exact identity UWVMROS1_910b9c8f264852d96c22d01fd2e38471ec596fe0be4dbab44c93f495061dfab2
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgHandforce; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgHandforceCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Handforce.
-- \@details Exact identity UWVMROS1_910b9c8f264852d96c22d01fd2e38471ec596fe0be4dbab44c93f495061dfab2
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgHandforce; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgHandforceCodecIdentity = "UWVMROS1_910b9c8f264852d96c22d01fd2e38471ec596fe0be4dbab44c93f495061dfab2"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Handforce value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgHandforce; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgHandforce :: Ros2Rm_ros_interfacesMsgHandforce -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgHandforce value = do
  b0 <- W.encodeUnsigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgHandforce_hand_force value))
  W.bounded 2 [b0]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Handforce.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgHandforce; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgHandforce :: W.Decoder Ros2Rm_ros_interfacesMsgHandforce
readRos2Rm_ros_interfacesMsgHandforce = do
  a0 <- fromIntegral <$> W.unsigned 2
  let value = Ros2Rm_ros_interfacesMsgHandforce a0
  case encodeRos2Rm_ros_interfacesMsgHandforce value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Handforce value.
-- \@details Require the complete 2..2-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgHandforce; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgHandforce :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgHandforce
decodeRos2Rm_ros_interfacesMsgHandforce = W.runDecoder 2 readRos2Rm_ros_interfacesMsgHandforce
instance Canonical Ros2Rm_ros_interfacesMsgHandforce where
  maximumBytes _ = 2
  encodeValue = encodeRos2Rm_ros_interfacesMsgHandforce
  readValue = readRos2Rm_ros_interfacesMsgHandforce
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Handposture value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies
-- 5..5 bytes and is identified by
-- UWVMROS1_78080b4fd20c87b0f05ce5cb42983ccc0242c3e114c7ba984398aa00f60c204f.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgHandposture = Ros2Rm_ros_interfacesMsgHandposture
  {
    -- | \@brief rm_ros_interfaces/msg/Handposture.posture_num: uint16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgHandposture; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgHandposture_posture_num :: Word16
  ,
    -- | \@brief rm_ros_interfaces/msg/Handposture.block: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgHandposture; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgHandposture_block :: Bool
  ,
    -- | \@brief rm_ros_interfaces/msg/Handposture.timeout: uint16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgHandposture; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgHandposture_timeout :: Word16
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Handposture.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgHandposture; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgHandposture :: Ros2Rm_ros_interfacesMsgHandposture
defaultRos2Rm_ros_interfacesMsgHandposture = Ros2Rm_ros_interfacesMsgHandposture (0) (False) (0)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Handposture.
-- \@details Exact identity UWVMROS1_78080b4fd20c87b0f05ce5cb42983ccc0242c3e114c7ba984398aa00f60c204f
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgHandposture; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgHandpostureCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Handposture.
-- \@details Exact identity UWVMROS1_78080b4fd20c87b0f05ce5cb42983ccc0242c3e114c7ba984398aa00f60c204f
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgHandposture; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgHandpostureCodecIdentity = "UWVMROS1_78080b4fd20c87b0f05ce5cb42983ccc0242c3e114c7ba984398aa00f60c204f"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Handposture value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgHandposture; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgHandposture :: Ros2Rm_ros_interfacesMsgHandposture -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgHandposture value = do
  b0 <- W.encodeUnsigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgHandposture_posture_num value))
  b1 <- W.encodeBool (ros2Rm_ros_interfacesMsgHandposture_block value)
  b2 <- W.encodeUnsigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgHandposture_timeout value))
  W.bounded 5 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Handposture.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgHandposture; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgHandposture :: W.Decoder Ros2Rm_ros_interfacesMsgHandposture
readRos2Rm_ros_interfacesMsgHandposture = do
  a0 <- fromIntegral <$> W.unsigned 2
  a1 <- W.boolean
  a2 <- fromIntegral <$> W.unsigned 2
  let value = Ros2Rm_ros_interfacesMsgHandposture a0 a1 a2
  case encodeRos2Rm_ros_interfacesMsgHandposture value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Handposture value.
-- \@details Require the complete 5..5-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgHandposture; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgHandposture :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgHandposture
decodeRos2Rm_ros_interfacesMsgHandposture = W.runDecoder 5 readRos2Rm_ros_interfacesMsgHandposture
instance Canonical Ros2Rm_ros_interfacesMsgHandposture where
  maximumBytes _ = 5
  encodeValue = encodeRos2Rm_ros_interfacesMsgHandposture
  readValue = readRos2Rm_ros_interfacesMsgHandposture
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Handseq value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies
-- 5..5 bytes and is identified by
-- UWVMROS1_29f300b4608a4ea140cfb38eeb316c376002638012efc5b9e6b19f95788ba842.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgHandseq = Ros2Rm_ros_interfacesMsgHandseq
  {
    -- | \@brief rm_ros_interfaces/msg/Handseq.seq_num: uint16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgHandseq; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgHandseq_seq_num :: Word16
  ,
    -- | \@brief rm_ros_interfaces/msg/Handseq.block: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgHandseq; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgHandseq_block :: Bool
  ,
    -- | \@brief rm_ros_interfaces/msg/Handseq.timeout: uint16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgHandseq; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgHandseq_timeout :: Word16
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Handseq.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgHandseq; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgHandseq :: Ros2Rm_ros_interfacesMsgHandseq
defaultRos2Rm_ros_interfacesMsgHandseq = Ros2Rm_ros_interfacesMsgHandseq (0) (False) (0)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Handseq.
-- \@details Exact identity UWVMROS1_29f300b4608a4ea140cfb38eeb316c376002638012efc5b9e6b19f95788ba842
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgHandseq; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgHandseqCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Handseq.
-- \@details Exact identity UWVMROS1_29f300b4608a4ea140cfb38eeb316c376002638012efc5b9e6b19f95788ba842
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgHandseq; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgHandseqCodecIdentity = "UWVMROS1_29f300b4608a4ea140cfb38eeb316c376002638012efc5b9e6b19f95788ba842"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Handseq value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgHandseq; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgHandseq :: Ros2Rm_ros_interfacesMsgHandseq -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgHandseq value = do
  b0 <- W.encodeUnsigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgHandseq_seq_num value))
  b1 <- W.encodeBool (ros2Rm_ros_interfacesMsgHandseq_block value)
  b2 <- W.encodeUnsigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgHandseq_timeout value))
  W.bounded 5 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Handseq.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgHandseq; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgHandseq :: W.Decoder Ros2Rm_ros_interfacesMsgHandseq
readRos2Rm_ros_interfacesMsgHandseq = do
  a0 <- fromIntegral <$> W.unsigned 2
  a1 <- W.boolean
  a2 <- fromIntegral <$> W.unsigned 2
  let value = Ros2Rm_ros_interfacesMsgHandseq a0 a1 a2
  case encodeRos2Rm_ros_interfacesMsgHandseq value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Handseq value.
-- \@details Require the complete 5..5-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgHandseq; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgHandseq :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgHandseq
decodeRos2Rm_ros_interfacesMsgHandseq = W.runDecoder 5 readRos2Rm_ros_interfacesMsgHandseq
instance Canonical Ros2Rm_ros_interfacesMsgHandseq where
  maximumBytes _ = 5
  encodeValue = encodeRos2Rm_ros_interfacesMsgHandseq
  readValue = readRos2Rm_ros_interfacesMsgHandseq
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Handspeed value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 2..2 bytes and is identified by
-- UWVMROS1_85e90353ad0e2d1c14b390080d13d447de9acfa563f046ab7a89929183dbc684.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgHandspeed = Ros2Rm_ros_interfacesMsgHandspeed
  {
    -- | \@brief rm_ros_interfaces/msg/Handspeed.hand_speed: uint16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgHandspeed; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgHandspeed_hand_speed :: Word16
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Handspeed.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgHandspeed; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgHandspeed :: Ros2Rm_ros_interfacesMsgHandspeed
defaultRos2Rm_ros_interfacesMsgHandspeed = Ros2Rm_ros_interfacesMsgHandspeed (0)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Handspeed.
-- \@details Exact identity UWVMROS1_85e90353ad0e2d1c14b390080d13d447de9acfa563f046ab7a89929183dbc684
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgHandspeed; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgHandspeedCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Handspeed.
-- \@details Exact identity UWVMROS1_85e90353ad0e2d1c14b390080d13d447de9acfa563f046ab7a89929183dbc684
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgHandspeed; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgHandspeedCodecIdentity = "UWVMROS1_85e90353ad0e2d1c14b390080d13d447de9acfa563f046ab7a89929183dbc684"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Handspeed value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgHandspeed; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgHandspeed :: Ros2Rm_ros_interfacesMsgHandspeed -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgHandspeed value = do
  b0 <- W.encodeUnsigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgHandspeed_hand_speed value))
  W.bounded 2 [b0]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Handspeed.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgHandspeed; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgHandspeed :: W.Decoder Ros2Rm_ros_interfacesMsgHandspeed
readRos2Rm_ros_interfacesMsgHandspeed = do
  a0 <- fromIntegral <$> W.unsigned 2
  let value = Ros2Rm_ros_interfacesMsgHandspeed a0
  case encodeRos2Rm_ros_interfacesMsgHandspeed value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Handspeed value.
-- \@details Require the complete 2..2-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgHandspeed; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgHandspeed :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgHandspeed
decodeRos2Rm_ros_interfacesMsgHandspeed = W.runDecoder 2 readRos2Rm_ros_interfacesMsgHandspeed
instance Canonical Ros2Rm_ros_interfacesMsgHandspeed where
  maximumBytes _ = 2
  encodeValue = encodeRos2Rm_ros_interfacesMsgHandspeed
  readValue = readRos2Rm_ros_interfacesMsgHandspeed
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Handstatus value.
-- \@details All 5 declared fields are retained in source order. The canonical representation occupies
-- 50..50 bytes and is identified by
-- UWVMROS1_1f7a21721b551df6853b1ce4166cabf2058b705f854bacda8fe692f7544688f3.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgHandstatus = Ros2Rm_ros_interfacesMsgHandstatus
  {
    -- | \@brief rm_ros_interfaces/msg/Handstatus.hand_angle: uint16; exactly 6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgHandstatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgHandstatus_hand_angle :: [Word16]
  ,
    -- | \@brief rm_ros_interfaces/msg/Handstatus.hand_pos: uint16; exactly 6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgHandstatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgHandstatus_hand_pos :: [Word16]
  ,
    -- | \@brief rm_ros_interfaces/msg/Handstatus.hand_state: uint16; exactly 6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgHandstatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgHandstatus_hand_state :: [Word16]
  ,
    -- | \@brief rm_ros_interfaces/msg/Handstatus.hand_force: uint16; exactly 6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgHandstatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgHandstatus_hand_force :: [Word16]
  ,
    -- | \@brief rm_ros_interfaces/msg/Handstatus.hand_err: uint16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgHandstatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgHandstatus_hand_err :: Word16
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Handstatus.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgHandstatus; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgHandstatus :: Ros2Rm_ros_interfacesMsgHandstatus
defaultRos2Rm_ros_interfacesMsgHandstatus =
  Ros2Rm_ros_interfacesMsgHandstatus
    (replicate 6 (0))
    (replicate 6 (0))
    (replicate 6 (0))
    (replicate 6 (0))
    (0)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Handstatus.
-- \@details Exact identity UWVMROS1_1f7a21721b551df6853b1ce4166cabf2058b705f854bacda8fe692f7544688f3
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgHandstatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgHandstatusCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Handstatus.
-- \@details Exact identity UWVMROS1_1f7a21721b551df6853b1ce4166cabf2058b705f854bacda8fe692f7544688f3
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgHandstatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgHandstatusCodecIdentity = "UWVMROS1_1f7a21721b551df6853b1ce4166cabf2058b705f854bacda8fe692f7544688f3"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Handstatus value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgHandstatus; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgHandstatus :: Ros2Rm_ros_interfacesMsgHandstatus -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgHandstatus value = do
  if length (ros2Rm_ros_interfacesMsgHandstatus_hand_angle value) /= 6 then Left 22 else Right ()
  b0 <- B.concat <$> mapM (\e -> W.encodeUnsigned 2 (fromIntegral (e))) (ros2Rm_ros_interfacesMsgHandstatus_hand_angle value)
  if length (ros2Rm_ros_interfacesMsgHandstatus_hand_pos value) /= 6 then Left 22 else Right ()
  b1 <- B.concat <$> mapM (\e -> W.encodeUnsigned 2 (fromIntegral (e))) (ros2Rm_ros_interfacesMsgHandstatus_hand_pos value)
  if length (ros2Rm_ros_interfacesMsgHandstatus_hand_state value) /= 6 then Left 22 else Right ()
  b2 <- B.concat <$> mapM (\e -> W.encodeUnsigned 2 (fromIntegral (e))) (ros2Rm_ros_interfacesMsgHandstatus_hand_state value)
  if length (ros2Rm_ros_interfacesMsgHandstatus_hand_force value) /= 6 then Left 22 else Right ()
  b3 <- B.concat <$> mapM (\e -> W.encodeUnsigned 2 (fromIntegral (e))) (ros2Rm_ros_interfacesMsgHandstatus_hand_force value)
  b4 <- W.encodeUnsigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgHandstatus_hand_err value))
  W.bounded 50 [b0, b1, b2, b3, b4]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Handstatus.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgHandstatus; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgHandstatus :: W.Decoder Ros2Rm_ros_interfacesMsgHandstatus
readRos2Rm_ros_interfacesMsgHandstatus = do
  a0 <- replicateM 6 (fromIntegral <$> W.unsigned 2)
  a1 <- replicateM 6 (fromIntegral <$> W.unsigned 2)
  a2 <- replicateM 6 (fromIntegral <$> W.unsigned 2)
  a3 <- replicateM 6 (fromIntegral <$> W.unsigned 2)
  a4 <- fromIntegral <$> W.unsigned 2
  let value = Ros2Rm_ros_interfacesMsgHandstatus a0 a1 a2 a3 a4
  case encodeRos2Rm_ros_interfacesMsgHandstatus value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Handstatus value.
-- \@details Require the complete 50..50-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgHandstatus; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgHandstatus :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgHandstatus
decodeRos2Rm_ros_interfacesMsgHandstatus = W.runDecoder 50 readRos2Rm_ros_interfacesMsgHandstatus
instance Canonical Ros2Rm_ros_interfacesMsgHandstatus where
  maximumBytes _ = 50
  encodeValue = encodeRos2Rm_ros_interfacesMsgHandstatus
  readValue = readRos2Rm_ros_interfacesMsgHandstatus
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Jointcurrent value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 4..68 bytes and is identified by
-- UWVMROS1_0e7a72e78bd556b1ea6fc796b88097b8c03c612de0cc7e5063d722eee2bdef91.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgJointcurrent = Ros2Rm_ros_interfacesMsgJointcurrent
  {
    -- | \@brief rm_ros_interfaces/msg/Jointcurrent.joint_current: float32; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgJointcurrent; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgJointcurrent_joint_current :: [Float]
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Jointcurrent.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointcurrent; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgJointcurrent :: Ros2Rm_ros_interfacesMsgJointcurrent
defaultRos2Rm_ros_interfacesMsgJointcurrent = Ros2Rm_ros_interfacesMsgJointcurrent ([])
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Jointcurrent.
-- \@details Exact identity UWVMROS1_0e7a72e78bd556b1ea6fc796b88097b8c03c612de0cc7e5063d722eee2bdef91
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgJointcurrent; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgJointcurrentCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Jointcurrent.
-- \@details Exact identity UWVMROS1_0e7a72e78bd556b1ea6fc796b88097b8c03c612de0cc7e5063d722eee2bdef91
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgJointcurrent; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgJointcurrentCodecIdentity = "UWVMROS1_0e7a72e78bd556b1ea6fc796b88097b8c03c612de0cc7e5063d722eee2bdef91"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Jointcurrent value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointcurrent; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgJointcurrent :: Ros2Rm_ros_interfacesMsgJointcurrent -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgJointcurrent value = do
  if length (ros2Rm_ros_interfacesMsgJointcurrent_joint_current value) > 16 then Left 22 else Right ()
  prefix0 <- W.encodeCount 16 (length (ros2Rm_ros_interfacesMsgJointcurrent_joint_current value))
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros2Rm_ros_interfacesMsgJointcurrent_joint_current value)
  W.bounded 68 [prefix0, b0]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Jointcurrent.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointcurrent; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgJointcurrent :: W.Decoder Ros2Rm_ros_interfacesMsgJointcurrent
readRos2Rm_ros_interfacesMsgJointcurrent = do
  count0 <- W.count 16
  a0 <- replicateM count0 (W.float32)
  let value = Ros2Rm_ros_interfacesMsgJointcurrent a0
  case encodeRos2Rm_ros_interfacesMsgJointcurrent value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Jointcurrent value.
-- \@details Require the complete 4..68-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointcurrent; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgJointcurrent :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgJointcurrent
decodeRos2Rm_ros_interfacesMsgJointcurrent = W.runDecoder 68 readRos2Rm_ros_interfacesMsgJointcurrent
instance Canonical Ros2Rm_ros_interfacesMsgJointcurrent where
  maximumBytes _ = 68
  encodeValue = encodeRos2Rm_ros_interfacesMsgJointcurrent
  readValue = readRos2Rm_ros_interfacesMsgJointcurrent
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Jointenflag value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 4..20 bytes and is identified by
-- UWVMROS1_ffa9e21886e47f6af286452c886cc0f0dd7be24dabd373e05866a675962c6187.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgJointenflag = Ros2Rm_ros_interfacesMsgJointenflag
  {
    -- | \@brief rm_ros_interfaces/msg/Jointenflag.joint_en_flag: bool; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgJointenflag; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgJointenflag_joint_en_flag :: [Bool]
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Jointenflag.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointenflag; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgJointenflag :: Ros2Rm_ros_interfacesMsgJointenflag
defaultRos2Rm_ros_interfacesMsgJointenflag = Ros2Rm_ros_interfacesMsgJointenflag ([])
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Jointenflag.
-- \@details Exact identity UWVMROS1_ffa9e21886e47f6af286452c886cc0f0dd7be24dabd373e05866a675962c6187
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgJointenflag; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgJointenflagCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Jointenflag.
-- \@details Exact identity UWVMROS1_ffa9e21886e47f6af286452c886cc0f0dd7be24dabd373e05866a675962c6187
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgJointenflag; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgJointenflagCodecIdentity = "UWVMROS1_ffa9e21886e47f6af286452c886cc0f0dd7be24dabd373e05866a675962c6187"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Jointenflag value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointenflag; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgJointenflag :: Ros2Rm_ros_interfacesMsgJointenflag -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgJointenflag value = do
  if length (ros2Rm_ros_interfacesMsgJointenflag_joint_en_flag value) > 16 then Left 22 else Right ()
  prefix0 <- W.encodeCount 16 (length (ros2Rm_ros_interfacesMsgJointenflag_joint_en_flag value))
  b0 <- B.concat <$> mapM (\e -> W.encodeBool (e)) (ros2Rm_ros_interfacesMsgJointenflag_joint_en_flag value)
  W.bounded 20 [prefix0, b0]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Jointenflag.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointenflag; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgJointenflag :: W.Decoder Ros2Rm_ros_interfacesMsgJointenflag
readRos2Rm_ros_interfacesMsgJointenflag = do
  count0 <- W.count 16
  a0 <- replicateM count0 (W.boolean)
  let value = Ros2Rm_ros_interfacesMsgJointenflag a0
  case encodeRos2Rm_ros_interfacesMsgJointenflag value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Jointenflag value.
-- \@details Require the complete 4..20-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointenflag; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgJointenflag :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgJointenflag
decodeRos2Rm_ros_interfacesMsgJointenflag = W.runDecoder 20 readRos2Rm_ros_interfacesMsgJointenflag
instance Canonical Ros2Rm_ros_interfacesMsgJointenflag where
  maximumBytes _ = 20
  encodeValue = encodeRos2Rm_ros_interfacesMsgJointenflag
  readValue = readRos2Rm_ros_interfacesMsgJointenflag
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Jointerrclear value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_c575447e4110836ee8d0ffa2833ab702379cb0c1cd5f7bd87be315edb85cff45.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgJointerrclear = Ros2Rm_ros_interfacesMsgJointerrclear
  {
    -- | \@brief rm_ros_interfaces/msg/Jointerrclear.joint_num: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgJointerrclear; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgJointerrclear_joint_num :: Word8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Jointerrclear.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointerrclear; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgJointerrclear :: Ros2Rm_ros_interfacesMsgJointerrclear
defaultRos2Rm_ros_interfacesMsgJointerrclear = Ros2Rm_ros_interfacesMsgJointerrclear (0)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Jointerrclear.
-- \@details Exact identity UWVMROS1_c575447e4110836ee8d0ffa2833ab702379cb0c1cd5f7bd87be315edb85cff45
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgJointerrclear; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgJointerrclearCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Jointerrclear.
-- \@details Exact identity UWVMROS1_c575447e4110836ee8d0ffa2833ab702379cb0c1cd5f7bd87be315edb85cff45
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgJointerrclear; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgJointerrclearCodecIdentity = "UWVMROS1_c575447e4110836ee8d0ffa2833ab702379cb0c1cd5f7bd87be315edb85cff45"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Jointerrclear value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointerrclear; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgJointerrclear :: Ros2Rm_ros_interfacesMsgJointerrclear -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgJointerrclear value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgJointerrclear_joint_num value))
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Jointerrclear.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointerrclear; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgJointerrclear :: W.Decoder Ros2Rm_ros_interfacesMsgJointerrclear
readRos2Rm_ros_interfacesMsgJointerrclear = do
  a0 <- fromIntegral <$> W.unsigned 1
  let value = Ros2Rm_ros_interfacesMsgJointerrclear a0
  case encodeRos2Rm_ros_interfacesMsgJointerrclear value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Jointerrclear value.
-- \@details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointerrclear; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgJointerrclear :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgJointerrclear
decodeRos2Rm_ros_interfacesMsgJointerrclear = W.runDecoder 1 readRos2Rm_ros_interfacesMsgJointerrclear
instance Canonical Ros2Rm_ros_interfacesMsgJointerrclear where
  maximumBytes _ = 1
  encodeValue = encodeRos2Rm_ros_interfacesMsgJointerrclear
  readValue = readRos2Rm_ros_interfacesMsgJointerrclear
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Jointerrorcode value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 5..37 bytes and is identified by
-- UWVMROS1_78839a57795d363e53861265202facab5c8bc8ee6c21ba7548af68e49abbd99b.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgJointerrorcode = Ros2Rm_ros_interfacesMsgJointerrorcode
  {
    -- | \@brief rm_ros_interfaces/msg/Jointerrorcode.joint_error: uint16; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgJointerrorcode; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgJointerrorcode_joint_error :: [Word16]
  ,
    -- | \@brief rm_ros_interfaces/msg/Jointerrorcode.dof: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgJointerrorcode; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgJointerrorcode_dof :: Word8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Jointerrorcode.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointerrorcode; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgJointerrorcode :: Ros2Rm_ros_interfacesMsgJointerrorcode
defaultRos2Rm_ros_interfacesMsgJointerrorcode = Ros2Rm_ros_interfacesMsgJointerrorcode ([]) (0)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Jointerrorcode.
-- \@details Exact identity UWVMROS1_78839a57795d363e53861265202facab5c8bc8ee6c21ba7548af68e49abbd99b
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgJointerrorcode; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgJointerrorcodeCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Jointerrorcode.
-- \@details Exact identity UWVMROS1_78839a57795d363e53861265202facab5c8bc8ee6c21ba7548af68e49abbd99b
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgJointerrorcode; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgJointerrorcodeCodecIdentity = "UWVMROS1_78839a57795d363e53861265202facab5c8bc8ee6c21ba7548af68e49abbd99b"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Jointerrorcode value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointerrorcode; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgJointerrorcode :: Ros2Rm_ros_interfacesMsgJointerrorcode -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgJointerrorcode value = do
  if length (ros2Rm_ros_interfacesMsgJointerrorcode_joint_error value) > 16 then Left 22 else Right ()
  prefix0 <- W.encodeCount 16 (length (ros2Rm_ros_interfacesMsgJointerrorcode_joint_error value))
  b0 <- B.concat <$> mapM (\e -> W.encodeUnsigned 2 (fromIntegral (e))) (ros2Rm_ros_interfacesMsgJointerrorcode_joint_error value)
  b1 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgJointerrorcode_dof value))
  W.bounded 37 [prefix0, b0, b1]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Jointerrorcode.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointerrorcode; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgJointerrorcode :: W.Decoder Ros2Rm_ros_interfacesMsgJointerrorcode
readRos2Rm_ros_interfacesMsgJointerrorcode = do
  count0 <- W.count 16
  a0 <- replicateM count0 (fromIntegral <$> W.unsigned 2)
  a1 <- fromIntegral <$> W.unsigned 1
  let value = Ros2Rm_ros_interfacesMsgJointerrorcode a0 a1
  case encodeRos2Rm_ros_interfacesMsgJointerrorcode value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Jointerrorcode value.
-- \@details Require the complete 5..37-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointerrorcode; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgJointerrorcode :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgJointerrorcode
decodeRos2Rm_ros_interfacesMsgJointerrorcode = W.runDecoder 37 readRos2Rm_ros_interfacesMsgJointerrorcode
instance Canonical Ros2Rm_ros_interfacesMsgJointerrorcode where
  maximumBytes _ = 37
  encodeValue = encodeRos2Rm_ros_interfacesMsgJointerrorcode
  readValue = readRos2Rm_ros_interfacesMsgJointerrorcode
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Jointpos value.
-- \@details All 4 declared fields are retained in source order. The canonical representation occupies
-- 10..74 bytes and is identified by
-- UWVMROS1_f093835b430211359eca6939f16762efb33ebbd732878a54d60c405355c2cae9.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgJointpos = Ros2Rm_ros_interfacesMsgJointpos
  {
    -- | \@brief rm_ros_interfaces/msg/Jointpos.joint: float32; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgJointpos; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgJointpos_joint :: [Float]
  ,
    -- | \@brief rm_ros_interfaces/msg/Jointpos.follow: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgJointpos; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgJointpos_follow :: Bool
  ,
    -- | \@brief rm_ros_interfaces/msg/Jointpos.expand: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgJointpos; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgJointpos_expand :: Float
  ,
    -- | \@brief rm_ros_interfaces/msg/Jointpos.dof: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgJointpos; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgJointpos_dof :: Word8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Jointpos.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointpos; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgJointpos :: Ros2Rm_ros_interfacesMsgJointpos
defaultRos2Rm_ros_interfacesMsgJointpos = Ros2Rm_ros_interfacesMsgJointpos ([]) (False) (0) (0)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Jointpos.
-- \@details Exact identity UWVMROS1_f093835b430211359eca6939f16762efb33ebbd732878a54d60c405355c2cae9
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgJointpos; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgJointposCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Jointpos.
-- \@details Exact identity UWVMROS1_f093835b430211359eca6939f16762efb33ebbd732878a54d60c405355c2cae9
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgJointpos; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgJointposCodecIdentity = "UWVMROS1_f093835b430211359eca6939f16762efb33ebbd732878a54d60c405355c2cae9"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Jointpos value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointpos; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgJointpos :: Ros2Rm_ros_interfacesMsgJointpos -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgJointpos value = do
  if length (ros2Rm_ros_interfacesMsgJointpos_joint value) > 16 then Left 22 else Right ()
  prefix0 <- W.encodeCount 16 (length (ros2Rm_ros_interfacesMsgJointpos_joint value))
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros2Rm_ros_interfacesMsgJointpos_joint value)
  b1 <- W.encodeBool (ros2Rm_ros_interfacesMsgJointpos_follow value)
  b2 <- W.encodeFloat32 (ros2Rm_ros_interfacesMsgJointpos_expand value)
  b3 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgJointpos_dof value))
  W.bounded 74 [prefix0, b0, b1, b2, b3]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Jointpos.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointpos; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgJointpos :: W.Decoder Ros2Rm_ros_interfacesMsgJointpos
readRos2Rm_ros_interfacesMsgJointpos = do
  count0 <- W.count 16
  a0 <- replicateM count0 (W.float32)
  a1 <- W.boolean
  a2 <- W.float32
  a3 <- fromIntegral <$> W.unsigned 1
  let value = Ros2Rm_ros_interfacesMsgJointpos a0 a1 a2 a3
  case encodeRos2Rm_ros_interfacesMsgJointpos value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Jointpos value.
-- \@details Require the complete 10..74-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointpos; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgJointpos :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgJointpos
decodeRos2Rm_ros_interfacesMsgJointpos = W.runDecoder 74 readRos2Rm_ros_interfacesMsgJointpos
instance Canonical Ros2Rm_ros_interfacesMsgJointpos where
  maximumBytes _ = 74
  encodeValue = encodeRos2Rm_ros_interfacesMsgJointpos
  readValue = readRos2Rm_ros_interfacesMsgJointpos
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Jointposcustom value.
-- \@details All 6 declared fields are retained in source order. The canonical representation occupies
-- 12..76 bytes and is identified by
-- UWVMROS1_a8342c466e6de5036f06f8eb54492af807c2c72478bc9c613c45ef0f36d43128.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgJointposcustom = Ros2Rm_ros_interfacesMsgJointposcustom
  {
    -- | \@brief rm_ros_interfaces/msg/Jointposcustom.joint: float32; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgJointposcustom; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgJointposcustom_joint :: [Float]
  ,
    -- | \@brief rm_ros_interfaces/msg/Jointposcustom.follow: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgJointposcustom; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgJointposcustom_follow :: Bool
  ,
    -- | \@brief rm_ros_interfaces/msg/Jointposcustom.expand: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgJointposcustom; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgJointposcustom_expand :: Float
  ,
    -- | \@brief rm_ros_interfaces/msg/Jointposcustom.dof: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgJointposcustom; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgJointposcustom_dof :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Jointposcustom.trajectory_mode: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgJointposcustom; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgJointposcustom_trajectory_mode :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Jointposcustom.radio: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgJointposcustom; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgJointposcustom_radio :: Word8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Jointposcustom.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointposcustom; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgJointposcustom :: Ros2Rm_ros_interfacesMsgJointposcustom
defaultRos2Rm_ros_interfacesMsgJointposcustom =
  Ros2Rm_ros_interfacesMsgJointposcustom
    ([])
    (False)
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Jointposcustom.
-- \@details Exact identity UWVMROS1_a8342c466e6de5036f06f8eb54492af807c2c72478bc9c613c45ef0f36d43128
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgJointposcustom; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgJointposcustomCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Jointposcustom.
-- \@details Exact identity UWVMROS1_a8342c466e6de5036f06f8eb54492af807c2c72478bc9c613c45ef0f36d43128
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgJointposcustom; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgJointposcustomCodecIdentity = "UWVMROS1_a8342c466e6de5036f06f8eb54492af807c2c72478bc9c613c45ef0f36d43128"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Jointposcustom value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointposcustom; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgJointposcustom :: Ros2Rm_ros_interfacesMsgJointposcustom -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgJointposcustom value = do
  if length (ros2Rm_ros_interfacesMsgJointposcustom_joint value) > 16 then Left 22 else Right ()
  prefix0 <- W.encodeCount 16 (length (ros2Rm_ros_interfacesMsgJointposcustom_joint value))
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros2Rm_ros_interfacesMsgJointposcustom_joint value)
  b1 <- W.encodeBool (ros2Rm_ros_interfacesMsgJointposcustom_follow value)
  b2 <- W.encodeFloat32 (ros2Rm_ros_interfacesMsgJointposcustom_expand value)
  b3 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgJointposcustom_dof value))
  b4 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgJointposcustom_trajectory_mode value))
  b5 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgJointposcustom_radio value))
  W.bounded 76 [prefix0, b0, b1, b2, b3, b4, b5]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Jointposcustom.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointposcustom; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgJointposcustom :: W.Decoder Ros2Rm_ros_interfacesMsgJointposcustom
readRos2Rm_ros_interfacesMsgJointposcustom = do
  count0 <- W.count 16
  a0 <- replicateM count0 (W.float32)
  a1 <- W.boolean
  a2 <- W.float32
  a3 <- fromIntegral <$> W.unsigned 1
  a4 <- fromIntegral <$> W.unsigned 1
  a5 <- fromIntegral <$> W.unsigned 1
  let value = Ros2Rm_ros_interfacesMsgJointposcustom a0 a1 a2 a3 a4 a5
  case encodeRos2Rm_ros_interfacesMsgJointposcustom value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Jointposcustom value.
-- \@details Require the complete 12..76-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointposcustom; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgJointposcustom :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgJointposcustom
decodeRos2Rm_ros_interfacesMsgJointposcustom = W.runDecoder 76 readRos2Rm_ros_interfacesMsgJointposcustom
instance Canonical Ros2Rm_ros_interfacesMsgJointposcustom where
  maximumBytes _ = 76
  encodeValue = encodeRos2Rm_ros_interfacesMsgJointposcustom
  readValue = readRos2Rm_ros_interfacesMsgJointposcustom
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Jointposeeuler value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 24..24 bytes and is identified by
-- UWVMROS1_f629f726ea37ea8117468b93977e518cd14b15e0ba59db57baaccc7645563a61.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgJointposeeuler = Ros2Rm_ros_interfacesMsgJointposeeuler
  {
    -- | \@brief rm_ros_interfaces/msg/Jointposeeuler.euler: float32; exactly 3 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgJointposeeuler; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgJointposeeuler_euler :: [Float]
  ,
    -- | \@brief rm_ros_interfaces/msg/Jointposeeuler.position: float32; exactly 3 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgJointposeeuler; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgJointposeeuler_position :: [Float]
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Jointposeeuler.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointposeeuler; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgJointposeeuler :: Ros2Rm_ros_interfacesMsgJointposeeuler
defaultRos2Rm_ros_interfacesMsgJointposeeuler =
  Ros2Rm_ros_interfacesMsgJointposeeuler
    (replicate 3 (0))
    (replicate 3 (0))
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Jointposeeuler.
-- \@details Exact identity UWVMROS1_f629f726ea37ea8117468b93977e518cd14b15e0ba59db57baaccc7645563a61
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgJointposeeuler; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgJointposeeulerCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Jointposeeuler.
-- \@details Exact identity UWVMROS1_f629f726ea37ea8117468b93977e518cd14b15e0ba59db57baaccc7645563a61
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgJointposeeuler; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgJointposeeulerCodecIdentity = "UWVMROS1_f629f726ea37ea8117468b93977e518cd14b15e0ba59db57baaccc7645563a61"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Jointposeeuler value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointposeeuler; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgJointposeeuler :: Ros2Rm_ros_interfacesMsgJointposeeuler -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgJointposeeuler value = do
  if length (ros2Rm_ros_interfacesMsgJointposeeuler_euler value) /= 3 then Left 22 else Right ()
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros2Rm_ros_interfacesMsgJointposeeuler_euler value)
  if length (ros2Rm_ros_interfacesMsgJointposeeuler_position value) /= 3 then Left 22 else Right ()
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros2Rm_ros_interfacesMsgJointposeeuler_position value)
  W.bounded 24 [b0, b1]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Jointposeeuler.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointposeeuler; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgJointposeeuler :: W.Decoder Ros2Rm_ros_interfacesMsgJointposeeuler
readRos2Rm_ros_interfacesMsgJointposeeuler = do
  a0 <- replicateM 3 (W.float32)
  a1 <- replicateM 3 (W.float32)
  let value = Ros2Rm_ros_interfacesMsgJointposeeuler a0 a1
  case encodeRos2Rm_ros_interfacesMsgJointposeeuler value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Jointposeeuler value.
-- \@details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointposeeuler; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgJointposeeuler :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgJointposeeuler
decodeRos2Rm_ros_interfacesMsgJointposeeuler = W.runDecoder 24 readRos2Rm_ros_interfacesMsgJointposeeuler
instance Canonical Ros2Rm_ros_interfacesMsgJointposeeuler where
  maximumBytes _ = 24
  encodeValue = encodeRos2Rm_ros_interfacesMsgJointposeeuler
  readValue = readRos2Rm_ros_interfacesMsgJointposeeuler
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Jointspeed value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 4..68 bytes and is identified by
-- UWVMROS1_fe8c4201f8ce64b32defc98be2c587cce8c4ced032a8d9d4ab5f40849ae8855f.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgJointspeed = Ros2Rm_ros_interfacesMsgJointspeed
  {
    -- | \@brief rm_ros_interfaces/msg/Jointspeed.joint_speed: float32; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgJointspeed; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgJointspeed_joint_speed :: [Float]
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Jointspeed.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointspeed; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgJointspeed :: Ros2Rm_ros_interfacesMsgJointspeed
defaultRos2Rm_ros_interfacesMsgJointspeed = Ros2Rm_ros_interfacesMsgJointspeed ([])
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Jointspeed.
-- \@details Exact identity UWVMROS1_fe8c4201f8ce64b32defc98be2c587cce8c4ced032a8d9d4ab5f40849ae8855f
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgJointspeed; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgJointspeedCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Jointspeed.
-- \@details Exact identity UWVMROS1_fe8c4201f8ce64b32defc98be2c587cce8c4ced032a8d9d4ab5f40849ae8855f
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgJointspeed; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgJointspeedCodecIdentity = "UWVMROS1_fe8c4201f8ce64b32defc98be2c587cce8c4ced032a8d9d4ab5f40849ae8855f"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Jointspeed value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointspeed; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgJointspeed :: Ros2Rm_ros_interfacesMsgJointspeed -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgJointspeed value = do
  if length (ros2Rm_ros_interfacesMsgJointspeed_joint_speed value) > 16 then Left 22 else Right ()
  prefix0 <- W.encodeCount 16 (length (ros2Rm_ros_interfacesMsgJointspeed_joint_speed value))
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros2Rm_ros_interfacesMsgJointspeed_joint_speed value)
  W.bounded 68 [prefix0, b0]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Jointspeed.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointspeed; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgJointspeed :: W.Decoder Ros2Rm_ros_interfacesMsgJointspeed
readRos2Rm_ros_interfacesMsgJointspeed = do
  count0 <- W.count 16
  a0 <- replicateM count0 (W.float32)
  let value = Ros2Rm_ros_interfacesMsgJointspeed a0
  case encodeRos2Rm_ros_interfacesMsgJointspeed value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Jointspeed value.
-- \@details Require the complete 4..68-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointspeed; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgJointspeed :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgJointspeed
decodeRos2Rm_ros_interfacesMsgJointspeed = W.runDecoder 68 readRos2Rm_ros_interfacesMsgJointspeed
instance Canonical Ros2Rm_ros_interfacesMsgJointspeed where
  maximumBytes _ = 68
  encodeValue = encodeRos2Rm_ros_interfacesMsgJointspeed
  readValue = readRos2Rm_ros_interfacesMsgJointspeed
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Jointteach value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies
-- 3..3 bytes and is identified by
-- UWVMROS1_ec3fa3fab05b88842b98fe91feab43fd24883090b27c7d791c77044df2ec7795.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgJointteach = Ros2Rm_ros_interfacesMsgJointteach
  {
    -- | \@brief rm_ros_interfaces/msg/Jointteach.num: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgJointteach; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgJointteach_num :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Jointteach.direction: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgJointteach; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgJointteach_direction :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Jointteach.speed: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgJointteach; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgJointteach_speed :: Word8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Jointteach.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointteach; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgJointteach :: Ros2Rm_ros_interfacesMsgJointteach
defaultRos2Rm_ros_interfacesMsgJointteach = Ros2Rm_ros_interfacesMsgJointteach (0) (0) (0)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Jointteach.
-- \@details Exact identity UWVMROS1_ec3fa3fab05b88842b98fe91feab43fd24883090b27c7d791c77044df2ec7795
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgJointteach; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgJointteachCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Jointteach.
-- \@details Exact identity UWVMROS1_ec3fa3fab05b88842b98fe91feab43fd24883090b27c7d791c77044df2ec7795
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgJointteach; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgJointteachCodecIdentity = "UWVMROS1_ec3fa3fab05b88842b98fe91feab43fd24883090b27c7d791c77044df2ec7795"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Jointteach value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointteach; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgJointteach :: Ros2Rm_ros_interfacesMsgJointteach -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgJointteach value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgJointteach_num value))
  b1 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgJointteach_direction value))
  b2 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgJointteach_speed value))
  W.bounded 3 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Jointteach.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointteach; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgJointteach :: W.Decoder Ros2Rm_ros_interfacesMsgJointteach
readRos2Rm_ros_interfacesMsgJointteach = do
  a0 <- fromIntegral <$> W.unsigned 1
  a1 <- fromIntegral <$> W.unsigned 1
  a2 <- fromIntegral <$> W.unsigned 1
  let value = Ros2Rm_ros_interfacesMsgJointteach a0 a1 a2
  case encodeRos2Rm_ros_interfacesMsgJointteach value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Jointteach value.
-- \@details Require the complete 3..3-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointteach; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgJointteach :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgJointteach
decodeRos2Rm_ros_interfacesMsgJointteach = W.runDecoder 3 readRos2Rm_ros_interfacesMsgJointteach
instance Canonical Ros2Rm_ros_interfacesMsgJointteach where
  maximumBytes _ = 3
  encodeValue = encodeRos2Rm_ros_interfacesMsgJointteach
  readValue = readRos2Rm_ros_interfacesMsgJointteach
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Jointtemperature value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 4..68 bytes and is identified by
-- UWVMROS1_cd4f782ab0c44d6542411d0e27612ad69a5607797634fdf106695a37fee355d9.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgJointtemperature = Ros2Rm_ros_interfacesMsgJointtemperature
  {
    -- | \@brief rm_ros_interfaces/msg/Jointtemperature.joint_temperature: float32; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgJointtemperature; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgJointtemperature_joint_temperature :: [Float]
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Jointtemperature.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointtemperature; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgJointtemperature :: Ros2Rm_ros_interfacesMsgJointtemperature
defaultRos2Rm_ros_interfacesMsgJointtemperature = Ros2Rm_ros_interfacesMsgJointtemperature ([])
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Jointtemperature.
-- \@details Exact identity UWVMROS1_cd4f782ab0c44d6542411d0e27612ad69a5607797634fdf106695a37fee355d9
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgJointtemperature; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgJointtemperatureCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Jointtemperature.
-- \@details Exact identity UWVMROS1_cd4f782ab0c44d6542411d0e27612ad69a5607797634fdf106695a37fee355d9
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgJointtemperature; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgJointtemperatureCodecIdentity = "UWVMROS1_cd4f782ab0c44d6542411d0e27612ad69a5607797634fdf106695a37fee355d9"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Jointtemperature value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointtemperature; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgJointtemperature :: Ros2Rm_ros_interfacesMsgJointtemperature -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgJointtemperature value = do
  if length (ros2Rm_ros_interfacesMsgJointtemperature_joint_temperature value) > 16 then Left 22 else Right ()
  prefix0 <- W.encodeCount 16 (length (ros2Rm_ros_interfacesMsgJointtemperature_joint_temperature value))
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros2Rm_ros_interfacesMsgJointtemperature_joint_temperature value)
  W.bounded 68 [prefix0, b0]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Jointtemperature.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointtemperature; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgJointtemperature :: W.Decoder Ros2Rm_ros_interfacesMsgJointtemperature
readRos2Rm_ros_interfacesMsgJointtemperature = do
  count0 <- W.count 16
  a0 <- replicateM count0 (W.float32)
  let value = Ros2Rm_ros_interfacesMsgJointtemperature a0
  case encodeRos2Rm_ros_interfacesMsgJointtemperature value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Jointtemperature value.
-- \@details Require the complete 4..68-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointtemperature; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgJointtemperature :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgJointtemperature
decodeRos2Rm_ros_interfacesMsgJointtemperature = W.runDecoder 68 readRos2Rm_ros_interfacesMsgJointtemperature
instance Canonical Ros2Rm_ros_interfacesMsgJointtemperature where
  maximumBytes _ = 68
  encodeValue = encodeRos2Rm_ros_interfacesMsgJointtemperature
  readValue = readRos2Rm_ros_interfacesMsgJointtemperature
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Jointversion value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 5..4165 bytes and is identified by
-- UWVMROS1_ec4c6257d44d793efb960169834aa5364d28d874e1e82c68867ad39927bcb962.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgJointversion = Ros2Rm_ros_interfacesMsgJointversion
  {
    -- | \@brief rm_ros_interfaces/msg/Jointversion.joint_version: string; 0..16 elements; each string is
    -- | 0..256 bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgJointversion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgJointversion_joint_version :: [T.Text]
  ,
    -- | \@brief rm_ros_interfaces/msg/Jointversion.state: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgJointversion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgJointversion_state :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Jointversion.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointversion; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgJointversion :: Ros2Rm_ros_interfacesMsgJointversion
defaultRos2Rm_ros_interfacesMsgJointversion = Ros2Rm_ros_interfacesMsgJointversion ([]) (False)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Jointversion.
-- \@details Exact identity UWVMROS1_ec4c6257d44d793efb960169834aa5364d28d874e1e82c68867ad39927bcb962
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgJointversion; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgJointversionCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Jointversion.
-- \@details Exact identity UWVMROS1_ec4c6257d44d793efb960169834aa5364d28d874e1e82c68867ad39927bcb962
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgJointversion; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgJointversionCodecIdentity = "UWVMROS1_ec4c6257d44d793efb960169834aa5364d28d874e1e82c68867ad39927bcb962"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Jointversion value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointversion; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgJointversion :: Ros2Rm_ros_interfacesMsgJointversion -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgJointversion value = do
  if length (ros2Rm_ros_interfacesMsgJointversion_joint_version value) > 16 then Left 22 else Right ()
  prefix0 <- W.encodeCount 16 (length (ros2Rm_ros_interfacesMsgJointversion_joint_version value))
  b0 <- B.concat <$> mapM (\e -> W.encodeText 256 True (e)) (ros2Rm_ros_interfacesMsgJointversion_joint_version value)
  b1 <- W.encodeBool (ros2Rm_ros_interfacesMsgJointversion_state value)
  W.bounded 4165 [prefix0, b0, b1]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Jointversion.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointversion; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgJointversion :: W.Decoder Ros2Rm_ros_interfacesMsgJointversion
readRos2Rm_ros_interfacesMsgJointversion = do
  count0 <- W.count 16
  a0 <- replicateM count0 (W.text 256 True)
  a1 <- W.boolean
  let value = Ros2Rm_ros_interfacesMsgJointversion a0 a1
  case encodeRos2Rm_ros_interfacesMsgJointversion value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Jointversion value.
-- \@details Require the complete 5..4165-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointversion; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgJointversion :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgJointversion
decodeRos2Rm_ros_interfacesMsgJointversion = W.runDecoder 4165 readRos2Rm_ros_interfacesMsgJointversion
instance Canonical Ros2Rm_ros_interfacesMsgJointversion where
  maximumBytes _ = 4165
  encodeValue = encodeRos2Rm_ros_interfacesMsgJointversion
  readValue = readRos2Rm_ros_interfacesMsgJointversion
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Jointvoltage value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 4..68 bytes and is identified by
-- UWVMROS1_db1925898d4173459af2cd3006f9b16d058ea1dac52ba3fa3daad369af77d791.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgJointvoltage = Ros2Rm_ros_interfacesMsgJointvoltage
  {
    -- | \@brief rm_ros_interfaces/msg/Jointvoltage.joint_voltage: float32; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgJointvoltage; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgJointvoltage_joint_voltage :: [Float]
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Jointvoltage.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointvoltage; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgJointvoltage :: Ros2Rm_ros_interfacesMsgJointvoltage
defaultRos2Rm_ros_interfacesMsgJointvoltage = Ros2Rm_ros_interfacesMsgJointvoltage ([])
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Jointvoltage.
-- \@details Exact identity UWVMROS1_db1925898d4173459af2cd3006f9b16d058ea1dac52ba3fa3daad369af77d791
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgJointvoltage; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgJointvoltageCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Jointvoltage.
-- \@details Exact identity UWVMROS1_db1925898d4173459af2cd3006f9b16d058ea1dac52ba3fa3daad369af77d791
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgJointvoltage; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgJointvoltageCodecIdentity = "UWVMROS1_db1925898d4173459af2cd3006f9b16d058ea1dac52ba3fa3daad369af77d791"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Jointvoltage value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointvoltage; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgJointvoltage :: Ros2Rm_ros_interfacesMsgJointvoltage -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgJointvoltage value = do
  if length (ros2Rm_ros_interfacesMsgJointvoltage_joint_voltage value) > 16 then Left 22 else Right ()
  prefix0 <- W.encodeCount 16 (length (ros2Rm_ros_interfacesMsgJointvoltage_joint_voltage value))
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros2Rm_ros_interfacesMsgJointvoltage_joint_voltage value)
  W.bounded 68 [prefix0, b0]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Jointvoltage.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointvoltage; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgJointvoltage :: W.Decoder Ros2Rm_ros_interfacesMsgJointvoltage
readRos2Rm_ros_interfacesMsgJointvoltage = do
  count0 <- W.count 16
  a0 <- replicateM count0 (W.float32)
  let value = Ros2Rm_ros_interfacesMsgJointvoltage a0
  case encodeRos2Rm_ros_interfacesMsgJointvoltage value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Jointvoltage value.
-- \@details Require the complete 4..68-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgJointvoltage; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgJointvoltage :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgJointvoltage
decodeRos2Rm_ros_interfacesMsgJointvoltage = W.runDecoder 68 readRos2Rm_ros_interfacesMsgJointvoltage
instance Canonical Ros2Rm_ros_interfacesMsgJointvoltage where
  maximumBytes _ = 68
  encodeValue = encodeRos2Rm_ros_interfacesMsgJointvoltage
  readValue = readRos2Rm_ros_interfacesMsgJointvoltage
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Liftheight value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies
-- 5..5 bytes and is identified by
-- UWVMROS1_069897e24e5d2ab8792f17309fd78237ef749275aa7ce8002c10745effbaf5c2.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgLiftheight = Ros2Rm_ros_interfacesMsgLiftheight
  {
    -- | \@brief rm_ros_interfaces/msg/Liftheight.height: uint16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgLiftheight; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgLiftheight_height :: Word16
  ,
    -- | \@brief rm_ros_interfaces/msg/Liftheight.speed: uint16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgLiftheight; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgLiftheight_speed :: Word16
  ,
    -- | \@brief rm_ros_interfaces/msg/Liftheight.block: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgLiftheight; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgLiftheight_block :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Liftheight.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgLiftheight; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgLiftheight :: Ros2Rm_ros_interfacesMsgLiftheight
defaultRos2Rm_ros_interfacesMsgLiftheight = Ros2Rm_ros_interfacesMsgLiftheight (0) (0) (False)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Liftheight.
-- \@details Exact identity UWVMROS1_069897e24e5d2ab8792f17309fd78237ef749275aa7ce8002c10745effbaf5c2
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgLiftheight; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgLiftheightCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Liftheight.
-- \@details Exact identity UWVMROS1_069897e24e5d2ab8792f17309fd78237ef749275aa7ce8002c10745effbaf5c2
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgLiftheight; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgLiftheightCodecIdentity = "UWVMROS1_069897e24e5d2ab8792f17309fd78237ef749275aa7ce8002c10745effbaf5c2"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Liftheight value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgLiftheight; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgLiftheight :: Ros2Rm_ros_interfacesMsgLiftheight -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgLiftheight value = do
  b0 <- W.encodeUnsigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgLiftheight_height value))
  b1 <- W.encodeUnsigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgLiftheight_speed value))
  b2 <- W.encodeBool (ros2Rm_ros_interfacesMsgLiftheight_block value)
  W.bounded 5 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Liftheight.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgLiftheight; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgLiftheight :: W.Decoder Ros2Rm_ros_interfacesMsgLiftheight
readRos2Rm_ros_interfacesMsgLiftheight = do
  a0 <- fromIntegral <$> W.unsigned 2
  a1 <- fromIntegral <$> W.unsigned 2
  a2 <- W.boolean
  let value = Ros2Rm_ros_interfacesMsgLiftheight a0 a1 a2
  case encodeRos2Rm_ros_interfacesMsgLiftheight value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Liftheight value.
-- \@details Require the complete 5..5-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgLiftheight; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgLiftheight :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgLiftheight
decodeRos2Rm_ros_interfacesMsgLiftheight = W.runDecoder 5 readRos2Rm_ros_interfacesMsgLiftheight
instance Canonical Ros2Rm_ros_interfacesMsgLiftheight where
  maximumBytes _ = 5
  encodeValue = encodeRos2Rm_ros_interfacesMsgLiftheight
  readValue = readRos2Rm_ros_interfacesMsgLiftheight
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Liftspeed value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 2..2 bytes and is identified by
-- UWVMROS1_a2dffb64c850113dbf21eadc10be768ca45895b848d718dfa51a639832c26b29.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgLiftspeed = Ros2Rm_ros_interfacesMsgLiftspeed
  {
    -- | \@brief rm_ros_interfaces/msg/Liftspeed.speed: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgLiftspeed; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgLiftspeed_speed :: Int16
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Liftspeed.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgLiftspeed; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgLiftspeed :: Ros2Rm_ros_interfacesMsgLiftspeed
defaultRos2Rm_ros_interfacesMsgLiftspeed = Ros2Rm_ros_interfacesMsgLiftspeed (0)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Liftspeed.
-- \@details Exact identity UWVMROS1_a2dffb64c850113dbf21eadc10be768ca45895b848d718dfa51a639832c26b29
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgLiftspeed; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgLiftspeedCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Liftspeed.
-- \@details Exact identity UWVMROS1_a2dffb64c850113dbf21eadc10be768ca45895b848d718dfa51a639832c26b29
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgLiftspeed; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgLiftspeedCodecIdentity = "UWVMROS1_a2dffb64c850113dbf21eadc10be768ca45895b848d718dfa51a639832c26b29"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Liftspeed value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgLiftspeed; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgLiftspeed :: Ros2Rm_ros_interfacesMsgLiftspeed -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgLiftspeed value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgLiftspeed_speed value))
  W.bounded 2 [b0]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Liftspeed.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgLiftspeed; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgLiftspeed :: W.Decoder Ros2Rm_ros_interfacesMsgLiftspeed
readRos2Rm_ros_interfacesMsgLiftspeed = do
  a0 <- fromIntegral <$> W.signed 2
  let value = Ros2Rm_ros_interfacesMsgLiftspeed a0
  case encodeRos2Rm_ros_interfacesMsgLiftspeed value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Liftspeed value.
-- \@details Require the complete 2..2-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgLiftspeed; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgLiftspeed :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgLiftspeed
decodeRos2Rm_ros_interfacesMsgLiftspeed = W.runDecoder 2 readRos2Rm_ros_interfacesMsgLiftspeed
instance Canonical Ros2Rm_ros_interfacesMsgLiftspeed where
  maximumBytes _ = 2
  encodeValue = encodeRos2Rm_ros_interfacesMsgLiftspeed
  readValue = readRos2Rm_ros_interfacesMsgLiftspeed
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Liftstate value.
-- \@details All 4 declared fields are retained in source order. The canonical representation occupies
-- 8..8 bytes and is identified by
-- UWVMROS1_3d4d81e28af889981b06f0876afd85f9552495f97f9cb2c0ca497106f3481d87.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgLiftstate = Ros2Rm_ros_interfacesMsgLiftstate
  {
    -- | \@brief rm_ros_interfaces/msg/Liftstate.height: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgLiftstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgLiftstate_height :: Int16
  ,
    -- | \@brief rm_ros_interfaces/msg/Liftstate.current: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgLiftstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgLiftstate_current :: Int16
  ,
    -- | \@brief rm_ros_interfaces/msg/Liftstate.err_flag: uint16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgLiftstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgLiftstate_err_flag :: Word16
  ,
    -- | \@brief rm_ros_interfaces/msg/Liftstate.mode: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgLiftstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgLiftstate_mode :: Int16
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Liftstate.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgLiftstate; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgLiftstate :: Ros2Rm_ros_interfacesMsgLiftstate
defaultRos2Rm_ros_interfacesMsgLiftstate = Ros2Rm_ros_interfacesMsgLiftstate (0) (0) (0) (0)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Liftstate.
-- \@details Exact identity UWVMROS1_3d4d81e28af889981b06f0876afd85f9552495f97f9cb2c0ca497106f3481d87
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgLiftstate; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgLiftstateCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Liftstate.
-- \@details Exact identity UWVMROS1_3d4d81e28af889981b06f0876afd85f9552495f97f9cb2c0ca497106f3481d87
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgLiftstate; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgLiftstateCodecIdentity = "UWVMROS1_3d4d81e28af889981b06f0876afd85f9552495f97f9cb2c0ca497106f3481d87"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Liftstate value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgLiftstate; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgLiftstate :: Ros2Rm_ros_interfacesMsgLiftstate -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgLiftstate value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgLiftstate_height value))
  b1 <- W.encodeSigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgLiftstate_current value))
  b2 <- W.encodeUnsigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgLiftstate_err_flag value))
  b3 <- W.encodeSigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgLiftstate_mode value))
  W.bounded 8 [b0, b1, b2, b3]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Liftstate.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgLiftstate; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgLiftstate :: W.Decoder Ros2Rm_ros_interfacesMsgLiftstate
readRos2Rm_ros_interfacesMsgLiftstate = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- fromIntegral <$> W.signed 2
  a2 <- fromIntegral <$> W.unsigned 2
  a3 <- fromIntegral <$> W.signed 2
  let value = Ros2Rm_ros_interfacesMsgLiftstate a0 a1 a2 a3
  case encodeRos2Rm_ros_interfacesMsgLiftstate value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Liftstate value.
-- \@details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgLiftstate; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgLiftstate :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgLiftstate
decodeRos2Rm_ros_interfacesMsgLiftstate = W.runDecoder 8 readRos2Rm_ros_interfacesMsgLiftstate
instance Canonical Ros2Rm_ros_interfacesMsgLiftstate where
  maximumBytes _ = 8
  encodeValue = encodeRos2Rm_ros_interfacesMsgLiftstate
  readValue = readRos2Rm_ros_interfacesMsgLiftstate
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Mastername value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 4..260 bytes and is identified by
-- UWVMROS1_139229cd2fb36838100463930d44a9451f9325fc0ab30386d86695fc6a6fd7e6.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgMastername = Ros2Rm_ros_interfacesMsgMastername
  {
    -- | \@brief rm_ros_interfaces/msg/Mastername.master_name: string; each string is 0..256 bytes; strict
    -- | UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgMastername; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgMastername_master_name :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Mastername.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgMastername; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgMastername :: Ros2Rm_ros_interfacesMsgMastername
defaultRos2Rm_ros_interfacesMsgMastername = Ros2Rm_ros_interfacesMsgMastername (T.empty)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Mastername.
-- \@details Exact identity UWVMROS1_139229cd2fb36838100463930d44a9451f9325fc0ab30386d86695fc6a6fd7e6
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgMastername; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgMasternameCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Mastername.
-- \@details Exact identity UWVMROS1_139229cd2fb36838100463930d44a9451f9325fc0ab30386d86695fc6a6fd7e6
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgMastername; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgMasternameCodecIdentity = "UWVMROS1_139229cd2fb36838100463930d44a9451f9325fc0ab30386d86695fc6a6fd7e6"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Mastername value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgMastername; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgMastername :: Ros2Rm_ros_interfacesMsgMastername -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgMastername value = do
  b0 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgMastername_master_name value)
  W.bounded 260 [b0]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Mastername.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgMastername; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgMastername :: W.Decoder Ros2Rm_ros_interfacesMsgMastername
readRos2Rm_ros_interfacesMsgMastername = do
  a0 <- W.text 256 True
  let value = Ros2Rm_ros_interfacesMsgMastername a0
  case encodeRos2Rm_ros_interfacesMsgMastername value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Mastername value.
-- \@details Require the complete 4..260-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgMastername; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgMastername :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgMastername
decodeRos2Rm_ros_interfacesMsgMastername = W.runDecoder 260 readRos2Rm_ros_interfacesMsgMastername
instance Canonical Ros2Rm_ros_interfacesMsgMastername where
  maximumBytes _ = 260
  encodeValue = encodeRos2Rm_ros_interfacesMsgMastername
  readValue = readRos2Rm_ros_interfacesMsgMastername
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Modbusreaddata value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 5..69 bytes and is identified by
-- UWVMROS1_a2305fd01b5801de653361a6a8423c175b5a09619510d6fc52d3c6b6efcc61a4.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgModbusreaddata = Ros2Rm_ros_interfacesMsgModbusreaddata
  {
    -- | \@brief rm_ros_interfaces/msg/Modbusreaddata.read_data: int32; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgModbusreaddata; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgModbusreaddata_read_data :: [Int32]
  ,
    -- | \@brief rm_ros_interfaces/msg/Modbusreaddata.state: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgModbusreaddata; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgModbusreaddata_state :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Modbusreaddata.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgModbusreaddata; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgModbusreaddata :: Ros2Rm_ros_interfacesMsgModbusreaddata
defaultRos2Rm_ros_interfacesMsgModbusreaddata = Ros2Rm_ros_interfacesMsgModbusreaddata ([]) (False)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Modbusreaddata.
-- \@details Exact identity UWVMROS1_a2305fd01b5801de653361a6a8423c175b5a09619510d6fc52d3c6b6efcc61a4
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgModbusreaddata; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgModbusreaddataCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Modbusreaddata.
-- \@details Exact identity UWVMROS1_a2305fd01b5801de653361a6a8423c175b5a09619510d6fc52d3c6b6efcc61a4
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgModbusreaddata; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgModbusreaddataCodecIdentity = "UWVMROS1_a2305fd01b5801de653361a6a8423c175b5a09619510d6fc52d3c6b6efcc61a4"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Modbusreaddata value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgModbusreaddata; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgModbusreaddata :: Ros2Rm_ros_interfacesMsgModbusreaddata -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgModbusreaddata value = do
  if length (ros2Rm_ros_interfacesMsgModbusreaddata_read_data value) > 16 then Left 22 else Right ()
  prefix0 <- W.encodeCount 16 (length (ros2Rm_ros_interfacesMsgModbusreaddata_read_data value))
  b0 <- B.concat <$> mapM (\e -> W.encodeSigned 4 (fromIntegral (e))) (ros2Rm_ros_interfacesMsgModbusreaddata_read_data value)
  b1 <- W.encodeBool (ros2Rm_ros_interfacesMsgModbusreaddata_state value)
  W.bounded 69 [prefix0, b0, b1]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Modbusreaddata.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgModbusreaddata; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgModbusreaddata :: W.Decoder Ros2Rm_ros_interfacesMsgModbusreaddata
readRos2Rm_ros_interfacesMsgModbusreaddata = do
  count0 <- W.count 16
  a0 <- replicateM count0 (fromIntegral <$> W.signed 4)
  a1 <- W.boolean
  let value = Ros2Rm_ros_interfacesMsgModbusreaddata a0 a1
  case encodeRos2Rm_ros_interfacesMsgModbusreaddata value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Modbusreaddata value.
-- \@details Require the complete 5..69-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgModbusreaddata; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgModbusreaddata :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgModbusreaddata
decodeRos2Rm_ros_interfacesMsgModbusreaddata = W.runDecoder 69 readRos2Rm_ros_interfacesMsgModbusreaddata
instance Canonical Ros2Rm_ros_interfacesMsgModbusreaddata where
  maximumBytes _ = 69
  encodeValue = encodeRos2Rm_ros_interfacesMsgModbusreaddata
  readValue = readRos2Rm_ros_interfacesMsgModbusreaddata
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Modbusrtureadparams value.
-- \@details All 4 declared fields are retained in source order. The canonical representation occupies
-- 16..16 bytes and is identified by
-- UWVMROS1_693c1477a64d83682ffe6c3e3b74ab774880599b01a5e7cd476ac815aa75347d.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgModbusrtureadparams = Ros2Rm_ros_interfacesMsgModbusrtureadparams
  {
    -- | \@brief rm_ros_interfaces/msg/Modbusrtureadparams.address: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgModbusrtureadparams; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgModbusrtureadparams_address :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Modbusrtureadparams.device: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgModbusrtureadparams; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgModbusrtureadparams_device :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Modbusrtureadparams.type: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgModbusrtureadparams; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgModbusrtureadparams_type :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Modbusrtureadparams.num: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgModbusrtureadparams; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgModbusrtureadparams_num :: Int32
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Modbusrtureadparams.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgModbusrtureadparams; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgModbusrtureadparams :: Ros2Rm_ros_interfacesMsgModbusrtureadparams
defaultRos2Rm_ros_interfacesMsgModbusrtureadparams =
  Ros2Rm_ros_interfacesMsgModbusrtureadparams
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Modbusrtureadparams.
-- \@details Exact identity UWVMROS1_693c1477a64d83682ffe6c3e3b74ab774880599b01a5e7cd476ac815aa75347d
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgModbusrtureadparams; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgModbusrtureadparamsCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Modbusrtureadparams.
-- \@details Exact identity UWVMROS1_693c1477a64d83682ffe6c3e3b74ab774880599b01a5e7cd476ac815aa75347d
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgModbusrtureadparams; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgModbusrtureadparamsCodecIdentity = "UWVMROS1_693c1477a64d83682ffe6c3e3b74ab774880599b01a5e7cd476ac815aa75347d"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Modbusrtureadparams value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgModbusrtureadparams; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgModbusrtureadparams :: Ros2Rm_ros_interfacesMsgModbusrtureadparams -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgModbusrtureadparams value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgModbusrtureadparams_address value))
  b1 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgModbusrtureadparams_device value))
  b2 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgModbusrtureadparams_type value))
  b3 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgModbusrtureadparams_num value))
  W.bounded 16 [b0, b1, b2, b3]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Modbusrtureadparams.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgModbusrtureadparams; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgModbusrtureadparams :: W.Decoder Ros2Rm_ros_interfacesMsgModbusrtureadparams
readRos2Rm_ros_interfacesMsgModbusrtureadparams = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- fromIntegral <$> W.signed 4
  a2 <- fromIntegral <$> W.signed 4
  a3 <- fromIntegral <$> W.signed 4
  let value = Ros2Rm_ros_interfacesMsgModbusrtureadparams a0 a1 a2 a3
  case encodeRos2Rm_ros_interfacesMsgModbusrtureadparams value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Modbusrtureadparams value.
-- \@details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgModbusrtureadparams; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgModbusrtureadparams :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgModbusrtureadparams
decodeRos2Rm_ros_interfacesMsgModbusrtureadparams = W.runDecoder 16 readRos2Rm_ros_interfacesMsgModbusrtureadparams
instance Canonical Ros2Rm_ros_interfacesMsgModbusrtureadparams where
  maximumBytes _ = 16
  encodeValue = encodeRos2Rm_ros_interfacesMsgModbusrtureadparams
  readValue = readRos2Rm_ros_interfacesMsgModbusrtureadparams
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Modbusrtuwriteparams value.
-- \@details All 5 declared fields are retained in source order. The canonical representation occupies
-- 20..84 bytes and is identified by
-- UWVMROS1_01403c6213c6c470c16c3c2b8b249db85ab20700c15f46f3a96561d6aab6cb18.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgModbusrtuwriteparams = Ros2Rm_ros_interfacesMsgModbusrtuwriteparams
  {
    -- | \@brief rm_ros_interfaces/msg/Modbusrtuwriteparams.address: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgModbusrtuwriteparams; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgModbusrtuwriteparams_address :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Modbusrtuwriteparams.device: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgModbusrtuwriteparams; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgModbusrtuwriteparams_device :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Modbusrtuwriteparams.type: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgModbusrtuwriteparams; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgModbusrtuwriteparams_type :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Modbusrtuwriteparams.num: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgModbusrtuwriteparams; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgModbusrtuwriteparams_num :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Modbusrtuwriteparams.data: int32; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgModbusrtuwriteparams; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgModbusrtuwriteparams_data :: [Int32]
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Modbusrtuwriteparams.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgModbusrtuwriteparams; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgModbusrtuwriteparams :: Ros2Rm_ros_interfacesMsgModbusrtuwriteparams
defaultRos2Rm_ros_interfacesMsgModbusrtuwriteparams =
  Ros2Rm_ros_interfacesMsgModbusrtuwriteparams
    (0)
    (0)
    (0)
    (0)
    ([])
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Modbusrtuwriteparams.
-- \@details Exact identity UWVMROS1_01403c6213c6c470c16c3c2b8b249db85ab20700c15f46f3a96561d6aab6cb18
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgModbusrtuwriteparams; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgModbusrtuwriteparamsCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Modbusrtuwriteparams.
-- \@details Exact identity UWVMROS1_01403c6213c6c470c16c3c2b8b249db85ab20700c15f46f3a96561d6aab6cb18
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgModbusrtuwriteparams; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgModbusrtuwriteparamsCodecIdentity = "UWVMROS1_01403c6213c6c470c16c3c2b8b249db85ab20700c15f46f3a96561d6aab6cb18"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Modbusrtuwriteparams value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgModbusrtuwriteparams; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgModbusrtuwriteparams :: Ros2Rm_ros_interfacesMsgModbusrtuwriteparams -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgModbusrtuwriteparams value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgModbusrtuwriteparams_address value))
  b1 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgModbusrtuwriteparams_device value))
  b2 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgModbusrtuwriteparams_type value))
  b3 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgModbusrtuwriteparams_num value))
  if length (ros2Rm_ros_interfacesMsgModbusrtuwriteparams_data value) > 16 then Left 22 else Right ()
  prefix4 <- W.encodeCount 16 (length (ros2Rm_ros_interfacesMsgModbusrtuwriteparams_data value))
  b4 <- B.concat <$> mapM (\e -> W.encodeSigned 4 (fromIntegral (e))) (ros2Rm_ros_interfacesMsgModbusrtuwriteparams_data value)
  W.bounded 84 [b0, b1, b2, b3, prefix4, b4]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Modbusrtuwriteparams.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgModbusrtuwriteparams; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgModbusrtuwriteparams :: W.Decoder Ros2Rm_ros_interfacesMsgModbusrtuwriteparams
readRos2Rm_ros_interfacesMsgModbusrtuwriteparams = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- fromIntegral <$> W.signed 4
  a2 <- fromIntegral <$> W.signed 4
  a3 <- fromIntegral <$> W.signed 4
  count4 <- W.count 16
  a4 <- replicateM count4 (fromIntegral <$> W.signed 4)
  let value = Ros2Rm_ros_interfacesMsgModbusrtuwriteparams a0 a1 a2 a3 a4
  case encodeRos2Rm_ros_interfacesMsgModbusrtuwriteparams value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Modbusrtuwriteparams value.
-- \@details Require the complete 20..84-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgModbusrtuwriteparams; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgModbusrtuwriteparams :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgModbusrtuwriteparams
decodeRos2Rm_ros_interfacesMsgModbusrtuwriteparams = W.runDecoder 84 readRos2Rm_ros_interfacesMsgModbusrtuwriteparams
instance Canonical Ros2Rm_ros_interfacesMsgModbusrtuwriteparams where
  maximumBytes _ = 84
  encodeValue = encodeRos2Rm_ros_interfacesMsgModbusrtuwriteparams
  readValue = readRos2Rm_ros_interfacesMsgModbusrtuwriteparams
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Modbustcpmasterinfo value.
-- \@details All 4 declared fields are retained in source order. The canonical representation occupies
-- 13..525 bytes and is identified by
-- UWVMROS1_6b81b28c45a124529e96888975b122b33c869fd74368d64f60d43cd56698e8aa.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgModbustcpmasterinfo = Ros2Rm_ros_interfacesMsgModbustcpmasterinfo
  {
    -- | \@brief rm_ros_interfaces/msg/Modbustcpmasterinfo.master_name: string; each string is 0..256
    -- | bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgModbustcpmasterinfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgModbustcpmasterinfo_master_name :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Modbustcpmasterinfo.ip: string; each string is 0..256 bytes; strict
    -- | UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgModbustcpmasterinfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgModbustcpmasterinfo_ip :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Modbustcpmasterinfo.port: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgModbustcpmasterinfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgModbustcpmasterinfo_port :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Modbustcpmasterinfo.state: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgModbustcpmasterinfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgModbustcpmasterinfo_state :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Modbustcpmasterinfo.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgModbustcpmasterinfo; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgModbustcpmasterinfo :: Ros2Rm_ros_interfacesMsgModbustcpmasterinfo
defaultRos2Rm_ros_interfacesMsgModbustcpmasterinfo =
  Ros2Rm_ros_interfacesMsgModbustcpmasterinfo
    (T.empty)
    (T.empty)
    (0)
    (False)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Modbustcpmasterinfo.
-- \@details Exact identity UWVMROS1_6b81b28c45a124529e96888975b122b33c869fd74368d64f60d43cd56698e8aa
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgModbustcpmasterinfo; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgModbustcpmasterinfoCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Modbustcpmasterinfo.
-- \@details Exact identity UWVMROS1_6b81b28c45a124529e96888975b122b33c869fd74368d64f60d43cd56698e8aa
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgModbustcpmasterinfo; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgModbustcpmasterinfoCodecIdentity = "UWVMROS1_6b81b28c45a124529e96888975b122b33c869fd74368d64f60d43cd56698e8aa"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Modbustcpmasterinfo value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgModbustcpmasterinfo; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgModbustcpmasterinfo :: Ros2Rm_ros_interfacesMsgModbustcpmasterinfo -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgModbustcpmasterinfo value = do
  b0 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgModbustcpmasterinfo_master_name value)
  b1 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgModbustcpmasterinfo_ip value)
  b2 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgModbustcpmasterinfo_port value))
  b3 <- W.encodeBool (ros2Rm_ros_interfacesMsgModbustcpmasterinfo_state value)
  W.bounded 525 [b0, b1, b2, b3]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Modbustcpmasterinfo.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgModbustcpmasterinfo; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgModbustcpmasterinfo :: W.Decoder Ros2Rm_ros_interfacesMsgModbustcpmasterinfo
readRos2Rm_ros_interfacesMsgModbustcpmasterinfo = do
  a0 <- W.text 256 True
  a1 <- W.text 256 True
  a2 <- fromIntegral <$> W.signed 4
  a3 <- W.boolean
  let value = Ros2Rm_ros_interfacesMsgModbustcpmasterinfo a0 a1 a2 a3
  case encodeRos2Rm_ros_interfacesMsgModbustcpmasterinfo value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Modbustcpmasterinfo value.
-- \@details Require the complete 13..525-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgModbustcpmasterinfo; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgModbustcpmasterinfo :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgModbustcpmasterinfo
decodeRos2Rm_ros_interfacesMsgModbustcpmasterinfo = W.runDecoder 525 readRos2Rm_ros_interfacesMsgModbustcpmasterinfo
instance Canonical Ros2Rm_ros_interfacesMsgModbustcpmasterinfo where
  maximumBytes _ = 525
  encodeValue = encodeRos2Rm_ros_interfacesMsgModbustcpmasterinfo
  readValue = readRos2Rm_ros_interfacesMsgModbustcpmasterinfo
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Modbustcpmasterlist value.
-- \@details All 6 declared fields are retained in source order. The canonical representation occupies
-- 12..8668 bytes and is identified by
-- UWVMROS1_79e01c84e9ca23b339485c5720ea9c973161d03944ec0c74079840d04f9774a1.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgModbustcpmasterlist = Ros2Rm_ros_interfacesMsgModbustcpmasterlist
  {
    -- | \@brief rm_ros_interfaces/msg/Modbustcpmasterlist.page_num: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgModbustcpmasterlist; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgModbustcpmasterlist_page_num :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Modbustcpmasterlist.page_size: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgModbustcpmasterlist; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgModbustcpmasterlist_page_size :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Modbustcpmasterlist.total_size: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgModbustcpmasterlist; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgModbustcpmasterlist_total_size :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Modbustcpmasterlist.vague_search: string; each string is 0..256
    -- | bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgModbustcpmasterlist; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgModbustcpmasterlist_vague_search :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Modbustcpmasterlist.master_list:
    -- | rm_ros_interfaces/msg/Modbustcpmasterinfo; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgModbustcpmasterlist; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgModbustcpmasterlist_master_list :: [Ros2Rm_ros_interfacesMsgModbustcpmasterinfo]
  ,
    -- | \@brief rm_ros_interfaces/msg/Modbustcpmasterlist.state: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgModbustcpmasterlist; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgModbustcpmasterlist_state :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Modbustcpmasterlist.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgModbustcpmasterlist; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgModbustcpmasterlist :: Ros2Rm_ros_interfacesMsgModbustcpmasterlist
defaultRos2Rm_ros_interfacesMsgModbustcpmasterlist =
  Ros2Rm_ros_interfacesMsgModbustcpmasterlist
    (0)
    (0)
    (0)
    (T.empty)
    ([])
    (False)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Modbustcpmasterlist.
-- \@details Exact identity UWVMROS1_79e01c84e9ca23b339485c5720ea9c973161d03944ec0c74079840d04f9774a1
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgModbustcpmasterlist; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgModbustcpmasterlistCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Modbustcpmasterlist.
-- \@details Exact identity UWVMROS1_79e01c84e9ca23b339485c5720ea9c973161d03944ec0c74079840d04f9774a1
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgModbustcpmasterlist; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgModbustcpmasterlistCodecIdentity = "UWVMROS1_79e01c84e9ca23b339485c5720ea9c973161d03944ec0c74079840d04f9774a1"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Modbustcpmasterlist value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgModbustcpmasterlist; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgModbustcpmasterlist :: Ros2Rm_ros_interfacesMsgModbustcpmasterlist -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgModbustcpmasterlist value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgModbustcpmasterlist_page_num value))
  b1 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgModbustcpmasterlist_page_size value))
  b2 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgModbustcpmasterlist_total_size value))
  b3 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgModbustcpmasterlist_vague_search value)
  if length (ros2Rm_ros_interfacesMsgModbustcpmasterlist_master_list value) > 16 then Left 22 else Right ()
  prefix4 <- W.encodeCount 16 (length (ros2Rm_ros_interfacesMsgModbustcpmasterlist_master_list value))
  b4 <- B.concat <$> mapM (\e -> encodeRos2Rm_ros_interfacesMsgModbustcpmasterinfo (e)) (ros2Rm_ros_interfacesMsgModbustcpmasterlist_master_list value)
  b5 <- W.encodeBool (ros2Rm_ros_interfacesMsgModbustcpmasterlist_state value)
  W.bounded 8668 [b0, b1, b2, b3, prefix4, b4, b5]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Modbustcpmasterlist.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgModbustcpmasterlist; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgModbustcpmasterlist :: W.Decoder Ros2Rm_ros_interfacesMsgModbustcpmasterlist
readRos2Rm_ros_interfacesMsgModbustcpmasterlist = do
  a0 <- fromIntegral <$> W.unsigned 1
  a1 <- fromIntegral <$> W.unsigned 1
  a2 <- fromIntegral <$> W.unsigned 1
  a3 <- W.text 256 True
  count4 <- W.count 16
  a4 <- replicateM count4 (readRos2Rm_ros_interfacesMsgModbustcpmasterinfo)
  a5 <- W.boolean
  let value = Ros2Rm_ros_interfacesMsgModbustcpmasterlist a0 a1 a2 a3 a4 a5
  case encodeRos2Rm_ros_interfacesMsgModbustcpmasterlist value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Modbustcpmasterlist value.
-- \@details Require the complete 12..8668-byte canonical representation. Reject truncation, invalid
-- fields and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgModbustcpmasterlist; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgModbustcpmasterlist :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgModbustcpmasterlist
decodeRos2Rm_ros_interfacesMsgModbustcpmasterlist = W.runDecoder 8668 readRos2Rm_ros_interfacesMsgModbustcpmasterlist
instance Canonical Ros2Rm_ros_interfacesMsgModbustcpmasterlist where
  maximumBytes _ = 8668
  encodeValue = encodeRos2Rm_ros_interfacesMsgModbustcpmasterlist
  readValue = readRos2Rm_ros_interfacesMsgModbustcpmasterlist
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Modbustcpmasterupdata value.
-- \@details All 4 declared fields are retained in source order. The canonical representation occupies
-- 16..784 bytes and is identified by
-- UWVMROS1_0b2b3932e2862e95368c47f6a94ec604f12b76d5c8098808a23de6b2f9df68ad.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgModbustcpmasterupdata = Ros2Rm_ros_interfacesMsgModbustcpmasterupdata
  {
    -- | \@brief rm_ros_interfaces/msg/Modbustcpmasterupdata.master_name: string; each string is 0..256
    -- | bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgModbustcpmasterupdata; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgModbustcpmasterupdata_master_name :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Modbustcpmasterupdata.new_master_name: string; each string is
    -- | 0..256 bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgModbustcpmasterupdata; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgModbustcpmasterupdata_new_master_name :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Modbustcpmasterupdata.ip: string; each string is 0..256 bytes;
    -- | strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgModbustcpmasterupdata; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgModbustcpmasterupdata_ip :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Modbustcpmasterupdata.port: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgModbustcpmasterupdata; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgModbustcpmasterupdata_port :: Int32
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Modbustcpmasterupdata.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgModbustcpmasterupdata; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgModbustcpmasterupdata :: Ros2Rm_ros_interfacesMsgModbustcpmasterupdata
defaultRos2Rm_ros_interfacesMsgModbustcpmasterupdata =
  Ros2Rm_ros_interfacesMsgModbustcpmasterupdata
    (T.empty)
    (T.empty)
    (T.empty)
    (0)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Modbustcpmasterupdata.
-- \@details Exact identity UWVMROS1_0b2b3932e2862e95368c47f6a94ec604f12b76d5c8098808a23de6b2f9df68ad
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgModbustcpmasterupdata; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgModbustcpmasterupdataCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Modbustcpmasterupdata.
-- \@details Exact identity UWVMROS1_0b2b3932e2862e95368c47f6a94ec604f12b76d5c8098808a23de6b2f9df68ad
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgModbustcpmasterupdata; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgModbustcpmasterupdataCodecIdentity = "UWVMROS1_0b2b3932e2862e95368c47f6a94ec604f12b76d5c8098808a23de6b2f9df68ad"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Modbustcpmasterupdata value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgModbustcpmasterupdata; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgModbustcpmasterupdata :: Ros2Rm_ros_interfacesMsgModbustcpmasterupdata -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgModbustcpmasterupdata value = do
  b0 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgModbustcpmasterupdata_master_name value)
  b1 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgModbustcpmasterupdata_new_master_name value)
  b2 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgModbustcpmasterupdata_ip value)
  b3 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgModbustcpmasterupdata_port value))
  W.bounded 784 [b0, b1, b2, b3]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Modbustcpmasterupdata.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgModbustcpmasterupdata; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgModbustcpmasterupdata :: W.Decoder Ros2Rm_ros_interfacesMsgModbustcpmasterupdata
readRos2Rm_ros_interfacesMsgModbustcpmasterupdata = do
  a0 <- W.text 256 True
  a1 <- W.text 256 True
  a2 <- W.text 256 True
  a3 <- fromIntegral <$> W.signed 4
  let value = Ros2Rm_ros_interfacesMsgModbustcpmasterupdata a0 a1 a2 a3
  case encodeRos2Rm_ros_interfacesMsgModbustcpmasterupdata value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Modbustcpmasterupdata value.
-- \@details Require the complete 16..784-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgModbustcpmasterupdata; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgModbustcpmasterupdata :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgModbustcpmasterupdata
decodeRos2Rm_ros_interfacesMsgModbustcpmasterupdata = W.runDecoder 784 readRos2Rm_ros_interfacesMsgModbustcpmasterupdata
instance Canonical Ros2Rm_ros_interfacesMsgModbustcpmasterupdata where
  maximumBytes _ = 784
  encodeValue = encodeRos2Rm_ros_interfacesMsgModbustcpmasterupdata
  readValue = readRos2Rm_ros_interfacesMsgModbustcpmasterupdata
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Modbustcpreadparams value.
-- \@details All 5 declared fields are retained in source order. The canonical representation occupies
-- 20..532 bytes and is identified by
-- UWVMROS1_091439cacdc77a5c2d9087a75e112cb174b255a8bd6776a79800a69146e4b7e7.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgModbustcpreadparams = Ros2Rm_ros_interfacesMsgModbustcpreadparams
  {
    -- | \@brief rm_ros_interfaces/msg/Modbustcpreadparams.address: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgModbustcpreadparams; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgModbustcpreadparams_address :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Modbustcpreadparams.master_name: string; each string is 0..256
    -- | bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgModbustcpreadparams; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgModbustcpreadparams_master_name :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Modbustcpreadparams.ip: string; each string is 0..256 bytes; strict
    -- | UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgModbustcpreadparams; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgModbustcpreadparams_ip :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Modbustcpreadparams.port: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgModbustcpreadparams; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgModbustcpreadparams_port :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Modbustcpreadparams.num: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgModbustcpreadparams; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgModbustcpreadparams_num :: Int32
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Modbustcpreadparams.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgModbustcpreadparams; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgModbustcpreadparams :: Ros2Rm_ros_interfacesMsgModbustcpreadparams
defaultRos2Rm_ros_interfacesMsgModbustcpreadparams =
  Ros2Rm_ros_interfacesMsgModbustcpreadparams
    (0)
    (T.empty)
    (T.empty)
    (0)
    (0)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Modbustcpreadparams.
-- \@details Exact identity UWVMROS1_091439cacdc77a5c2d9087a75e112cb174b255a8bd6776a79800a69146e4b7e7
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgModbustcpreadparams; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgModbustcpreadparamsCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Modbustcpreadparams.
-- \@details Exact identity UWVMROS1_091439cacdc77a5c2d9087a75e112cb174b255a8bd6776a79800a69146e4b7e7
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgModbustcpreadparams; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgModbustcpreadparamsCodecIdentity = "UWVMROS1_091439cacdc77a5c2d9087a75e112cb174b255a8bd6776a79800a69146e4b7e7"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Modbustcpreadparams value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgModbustcpreadparams; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgModbustcpreadparams :: Ros2Rm_ros_interfacesMsgModbustcpreadparams -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgModbustcpreadparams value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgModbustcpreadparams_address value))
  b1 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgModbustcpreadparams_master_name value)
  b2 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgModbustcpreadparams_ip value)
  b3 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgModbustcpreadparams_port value))
  b4 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgModbustcpreadparams_num value))
  W.bounded 532 [b0, b1, b2, b3, b4]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Modbustcpreadparams.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgModbustcpreadparams; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgModbustcpreadparams :: W.Decoder Ros2Rm_ros_interfacesMsgModbustcpreadparams
readRos2Rm_ros_interfacesMsgModbustcpreadparams = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- W.text 256 True
  a2 <- W.text 256 True
  a3 <- fromIntegral <$> W.signed 4
  a4 <- fromIntegral <$> W.signed 4
  let value = Ros2Rm_ros_interfacesMsgModbustcpreadparams a0 a1 a2 a3 a4
  case encodeRos2Rm_ros_interfacesMsgModbustcpreadparams value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Modbustcpreadparams value.
-- \@details Require the complete 20..532-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgModbustcpreadparams; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgModbustcpreadparams :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgModbustcpreadparams
decodeRos2Rm_ros_interfacesMsgModbustcpreadparams = W.runDecoder 532 readRos2Rm_ros_interfacesMsgModbustcpreadparams
instance Canonical Ros2Rm_ros_interfacesMsgModbustcpreadparams where
  maximumBytes _ = 532
  encodeValue = encodeRos2Rm_ros_interfacesMsgModbustcpreadparams
  readValue = readRos2Rm_ros_interfacesMsgModbustcpreadparams
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Modbustcpwriteparams value.
-- \@details All 6 declared fields are retained in source order. The canonical representation occupies
-- 24..600 bytes and is identified by
-- UWVMROS1_4a64e731b883a1dde6928a5f16a5760b7f6ac64eaf578066d859d8b5a8c0f59b.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgModbustcpwriteparams = Ros2Rm_ros_interfacesMsgModbustcpwriteparams
  {
    -- | \@brief rm_ros_interfaces/msg/Modbustcpwriteparams.address: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgModbustcpwriteparams; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgModbustcpwriteparams_address :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Modbustcpwriteparams.master_name: string; each string is 0..256
    -- | bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgModbustcpwriteparams; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgModbustcpwriteparams_master_name :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Modbustcpwriteparams.ip: string; each string is 0..256 bytes;
    -- | strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgModbustcpwriteparams; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgModbustcpwriteparams_ip :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Modbustcpwriteparams.port: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgModbustcpwriteparams; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgModbustcpwriteparams_port :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Modbustcpwriteparams.num: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgModbustcpwriteparams; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgModbustcpwriteparams_num :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Modbustcpwriteparams.data: int32; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgModbustcpwriteparams; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgModbustcpwriteparams_data :: [Int32]
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Modbustcpwriteparams.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgModbustcpwriteparams; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgModbustcpwriteparams :: Ros2Rm_ros_interfacesMsgModbustcpwriteparams
defaultRos2Rm_ros_interfacesMsgModbustcpwriteparams =
  Ros2Rm_ros_interfacesMsgModbustcpwriteparams
    (0)
    (T.empty)
    (T.empty)
    (0)
    (0)
    ([])
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Modbustcpwriteparams.
-- \@details Exact identity UWVMROS1_4a64e731b883a1dde6928a5f16a5760b7f6ac64eaf578066d859d8b5a8c0f59b
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgModbustcpwriteparams; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgModbustcpwriteparamsCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Modbustcpwriteparams.
-- \@details Exact identity UWVMROS1_4a64e731b883a1dde6928a5f16a5760b7f6ac64eaf578066d859d8b5a8c0f59b
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgModbustcpwriteparams; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgModbustcpwriteparamsCodecIdentity = "UWVMROS1_4a64e731b883a1dde6928a5f16a5760b7f6ac64eaf578066d859d8b5a8c0f59b"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Modbustcpwriteparams value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgModbustcpwriteparams; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgModbustcpwriteparams :: Ros2Rm_ros_interfacesMsgModbustcpwriteparams -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgModbustcpwriteparams value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgModbustcpwriteparams_address value))
  b1 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgModbustcpwriteparams_master_name value)
  b2 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgModbustcpwriteparams_ip value)
  b3 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgModbustcpwriteparams_port value))
  b4 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgModbustcpwriteparams_num value))
  if length (ros2Rm_ros_interfacesMsgModbustcpwriteparams_data value) > 16 then Left 22 else Right ()
  prefix5 <- W.encodeCount 16 (length (ros2Rm_ros_interfacesMsgModbustcpwriteparams_data value))
  b5 <- B.concat <$> mapM (\e -> W.encodeSigned 4 (fromIntegral (e))) (ros2Rm_ros_interfacesMsgModbustcpwriteparams_data value)
  W.bounded 600 [b0, b1, b2, b3, b4, prefix5, b5]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Modbustcpwriteparams.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgModbustcpwriteparams; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgModbustcpwriteparams :: W.Decoder Ros2Rm_ros_interfacesMsgModbustcpwriteparams
readRos2Rm_ros_interfacesMsgModbustcpwriteparams = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- W.text 256 True
  a2 <- W.text 256 True
  a3 <- fromIntegral <$> W.signed 4
  a4 <- fromIntegral <$> W.signed 4
  count5 <- W.count 16
  a5 <- replicateM count5 (fromIntegral <$> W.signed 4)
  let value = Ros2Rm_ros_interfacesMsgModbustcpwriteparams a0 a1 a2 a3 a4 a5
  case encodeRos2Rm_ros_interfacesMsgModbustcpwriteparams value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Modbustcpwriteparams value.
-- \@details Require the complete 24..600-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgModbustcpwriteparams; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgModbustcpwriteparams :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgModbustcpwriteparams
decodeRos2Rm_ros_interfacesMsgModbustcpwriteparams = W.runDecoder 600 readRos2Rm_ros_interfacesMsgModbustcpwriteparams
instance Canonical Ros2Rm_ros_interfacesMsgModbustcpwriteparams where
  maximumBytes _ = 600
  encodeValue = encodeRos2Rm_ros_interfacesMsgModbustcpwriteparams
  readValue = readRos2Rm_ros_interfacesMsgModbustcpwriteparams
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Movec value.
-- \@details All 6 declared fields are retained in source order. The canonical representation occupies
-- 116..116 bytes and is identified by
-- UWVMROS1_38ff7f7728a8e7dbf41a13933af66970695ea84b7f574103e4787164bf4c139b.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgMovec = Ros2Rm_ros_interfacesMsgMovec
  {
    -- | \@brief rm_ros_interfaces/msg/Movec.pose_mid: geometry_msgs/msg/Pose.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgMovec; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgMovec_pose_mid :: Ros2Geometry_msgsMsgPose
  ,
    -- | \@brief rm_ros_interfaces/msg/Movec.pose_end: geometry_msgs/msg/Pose.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgMovec; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgMovec_pose_end :: Ros2Geometry_msgsMsgPose
  ,
    -- | \@brief rm_ros_interfaces/msg/Movec.speed: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgMovec; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgMovec_speed :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Movec.trajectory_connect: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgMovec; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgMovec_trajectory_connect :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Movec.block: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgMovec; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgMovec_block :: Bool
  ,
    -- | \@brief rm_ros_interfaces/msg/Movec.loop: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgMovec; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgMovec_loop :: Word8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Movec.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgMovec; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgMovec :: Ros2Rm_ros_interfacesMsgMovec
defaultRos2Rm_ros_interfacesMsgMovec =
  Ros2Rm_ros_interfacesMsgMovec
    (defaultRos2Geometry_msgsMsgPose)
    (defaultRos2Geometry_msgsMsgPose)
    (0)
    (0)
    (False)
    (0)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Movec.
-- \@details Exact identity UWVMROS1_38ff7f7728a8e7dbf41a13933af66970695ea84b7f574103e4787164bf4c139b
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgMovec; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgMovecCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Movec.
-- \@details Exact identity UWVMROS1_38ff7f7728a8e7dbf41a13933af66970695ea84b7f574103e4787164bf4c139b
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgMovec; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgMovecCodecIdentity = "UWVMROS1_38ff7f7728a8e7dbf41a13933af66970695ea84b7f574103e4787164bf4c139b"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Movec value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgMovec; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgMovec :: Ros2Rm_ros_interfacesMsgMovec -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgMovec value = do
  b0 <- encodeRos2Geometry_msgsMsgPose (ros2Rm_ros_interfacesMsgMovec_pose_mid value)
  b1 <- encodeRos2Geometry_msgsMsgPose (ros2Rm_ros_interfacesMsgMovec_pose_end value)
  b2 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgMovec_speed value))
  b3 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgMovec_trajectory_connect value))
  b4 <- W.encodeBool (ros2Rm_ros_interfacesMsgMovec_block value)
  b5 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgMovec_loop value))
  W.bounded 116 [b0, b1, b2, b3, b4, b5]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Movec.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgMovec; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgMovec :: W.Decoder Ros2Rm_ros_interfacesMsgMovec
readRos2Rm_ros_interfacesMsgMovec = do
  a0 <- readRos2Geometry_msgsMsgPose
  a1 <- readRos2Geometry_msgsMsgPose
  a2 <- fromIntegral <$> W.unsigned 1
  a3 <- fromIntegral <$> W.unsigned 1
  a4 <- W.boolean
  a5 <- fromIntegral <$> W.unsigned 1
  let value = Ros2Rm_ros_interfacesMsgMovec a0 a1 a2 a3 a4 a5
  case encodeRos2Rm_ros_interfacesMsgMovec value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Movec value.
-- \@details Require the complete 116..116-byte canonical representation. Reject truncation, invalid
-- fields and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgMovec; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgMovec :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgMovec
decodeRos2Rm_ros_interfacesMsgMovec = W.runDecoder 116 readRos2Rm_ros_interfacesMsgMovec
instance Canonical Ros2Rm_ros_interfacesMsgMovec where
  maximumBytes _ = 116
  encodeValue = encodeRos2Rm_ros_interfacesMsgMovec
  readValue = readRos2Rm_ros_interfacesMsgMovec
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Movej value.
-- \@details All 5 declared fields are retained in source order. The canonical representation occupies
-- 8..72 bytes and is identified by
-- UWVMROS1_312993173527a5b6dde9ea4a53329acb4db998fd018e48571d5fe67cfd41b37b.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgMovej = Ros2Rm_ros_interfacesMsgMovej
  {
    -- | \@brief rm_ros_interfaces/msg/Movej.joint: float32; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgMovej; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgMovej_joint :: [Float]
  ,
    -- | \@brief rm_ros_interfaces/msg/Movej.speed: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgMovej; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgMovej_speed :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Movej.block: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgMovej; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgMovej_block :: Bool
  ,
    -- | \@brief rm_ros_interfaces/msg/Movej.trajectory_connect: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgMovej; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgMovej_trajectory_connect :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Movej.dof: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgMovej; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgMovej_dof :: Word8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Movej.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgMovej; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgMovej :: Ros2Rm_ros_interfacesMsgMovej
defaultRos2Rm_ros_interfacesMsgMovej = Ros2Rm_ros_interfacesMsgMovej ([]) (0) (False) (0) (0)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Movej.
-- \@details Exact identity UWVMROS1_312993173527a5b6dde9ea4a53329acb4db998fd018e48571d5fe67cfd41b37b
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgMovej; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgMovejCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Movej.
-- \@details Exact identity UWVMROS1_312993173527a5b6dde9ea4a53329acb4db998fd018e48571d5fe67cfd41b37b
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgMovej; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgMovejCodecIdentity = "UWVMROS1_312993173527a5b6dde9ea4a53329acb4db998fd018e48571d5fe67cfd41b37b"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Movej value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgMovej; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgMovej :: Ros2Rm_ros_interfacesMsgMovej -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgMovej value = do
  if length (ros2Rm_ros_interfacesMsgMovej_joint value) > 16 then Left 22 else Right ()
  prefix0 <- W.encodeCount 16 (length (ros2Rm_ros_interfacesMsgMovej_joint value))
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros2Rm_ros_interfacesMsgMovej_joint value)
  b1 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgMovej_speed value))
  b2 <- W.encodeBool (ros2Rm_ros_interfacesMsgMovej_block value)
  b3 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgMovej_trajectory_connect value))
  b4 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgMovej_dof value))
  W.bounded 72 [prefix0, b0, b1, b2, b3, b4]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Movej.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgMovej; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgMovej :: W.Decoder Ros2Rm_ros_interfacesMsgMovej
readRos2Rm_ros_interfacesMsgMovej = do
  count0 <- W.count 16
  a0 <- replicateM count0 (W.float32)
  a1 <- fromIntegral <$> W.unsigned 1
  a2 <- W.boolean
  a3 <- fromIntegral <$> W.unsigned 1
  a4 <- fromIntegral <$> W.unsigned 1
  let value = Ros2Rm_ros_interfacesMsgMovej a0 a1 a2 a3 a4
  case encodeRos2Rm_ros_interfacesMsgMovej value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Movej value.
-- \@details Require the complete 8..72-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgMovej; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgMovej :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgMovej
decodeRos2Rm_ros_interfacesMsgMovej = W.runDecoder 72 readRos2Rm_ros_interfacesMsgMovej
instance Canonical Ros2Rm_ros_interfacesMsgMovej where
  maximumBytes _ = 72
  encodeValue = encodeRos2Rm_ros_interfacesMsgMovej
  readValue = readRos2Rm_ros_interfacesMsgMovej
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Movejp value.
-- \@details All 4 declared fields are retained in source order. The canonical representation occupies
-- 59..59 bytes and is identified by
-- UWVMROS1_582d06c87282798190aadeffec820a654c3eb6d4cdb7dd600acff05aa0be5d72.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgMovejp = Ros2Rm_ros_interfacesMsgMovejp
  {
    -- | \@brief rm_ros_interfaces/msg/Movejp.pose: geometry_msgs/msg/Pose.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgMovejp; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgMovejp_pose :: Ros2Geometry_msgsMsgPose
  ,
    -- | \@brief rm_ros_interfaces/msg/Movejp.speed: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgMovejp; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgMovejp_speed :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Movejp.trajectory_connect: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgMovejp; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgMovejp_trajectory_connect :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Movejp.block: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgMovejp; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgMovejp_block :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Movejp.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgMovejp; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgMovejp :: Ros2Rm_ros_interfacesMsgMovejp
defaultRos2Rm_ros_interfacesMsgMovejp =
  Ros2Rm_ros_interfacesMsgMovejp
    (defaultRos2Geometry_msgsMsgPose)
    (0)
    (0)
    (False)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Movejp.
-- \@details Exact identity UWVMROS1_582d06c87282798190aadeffec820a654c3eb6d4cdb7dd600acff05aa0be5d72
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgMovejp; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgMovejpCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Movejp.
-- \@details Exact identity UWVMROS1_582d06c87282798190aadeffec820a654c3eb6d4cdb7dd600acff05aa0be5d72
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgMovejp; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgMovejpCodecIdentity = "UWVMROS1_582d06c87282798190aadeffec820a654c3eb6d4cdb7dd600acff05aa0be5d72"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Movejp value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgMovejp; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgMovejp :: Ros2Rm_ros_interfacesMsgMovejp -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgMovejp value = do
  b0 <- encodeRos2Geometry_msgsMsgPose (ros2Rm_ros_interfacesMsgMovejp_pose value)
  b1 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgMovejp_speed value))
  b2 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgMovejp_trajectory_connect value))
  b3 <- W.encodeBool (ros2Rm_ros_interfacesMsgMovejp_block value)
  W.bounded 59 [b0, b1, b2, b3]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Movejp.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgMovejp; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgMovejp :: W.Decoder Ros2Rm_ros_interfacesMsgMovejp
readRos2Rm_ros_interfacesMsgMovejp = do
  a0 <- readRos2Geometry_msgsMsgPose
  a1 <- fromIntegral <$> W.unsigned 1
  a2 <- fromIntegral <$> W.unsigned 1
  a3 <- W.boolean
  let value = Ros2Rm_ros_interfacesMsgMovejp a0 a1 a2 a3
  case encodeRos2Rm_ros_interfacesMsgMovejp value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Movejp value.
-- \@details Require the complete 59..59-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgMovejp; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgMovejp :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgMovejp
decodeRos2Rm_ros_interfacesMsgMovejp = W.runDecoder 59 readRos2Rm_ros_interfacesMsgMovejp
instance Canonical Ros2Rm_ros_interfacesMsgMovejp where
  maximumBytes _ = 59
  encodeValue = encodeRos2Rm_ros_interfacesMsgMovejp
  readValue = readRos2Rm_ros_interfacesMsgMovejp
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Movel value.
-- \@details All 4 declared fields are retained in source order. The canonical representation occupies
-- 59..59 bytes and is identified by
-- UWVMROS1_bedd323ae798e9ee8c9bdfd37723bcd04da6d4ea2be2ea3b135617b9896fa5e8.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgMovel = Ros2Rm_ros_interfacesMsgMovel
  {
    -- | \@brief rm_ros_interfaces/msg/Movel.pose: geometry_msgs/msg/Pose.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgMovel; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgMovel_pose :: Ros2Geometry_msgsMsgPose
  ,
    -- | \@brief rm_ros_interfaces/msg/Movel.speed: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgMovel; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgMovel_speed :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Movel.trajectory_connect: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgMovel; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgMovel_trajectory_connect :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Movel.block: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgMovel; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgMovel_block :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Movel.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgMovel; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgMovel :: Ros2Rm_ros_interfacesMsgMovel
defaultRos2Rm_ros_interfacesMsgMovel =
  Ros2Rm_ros_interfacesMsgMovel
    (defaultRos2Geometry_msgsMsgPose)
    (0)
    (0)
    (False)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Movel.
-- \@details Exact identity UWVMROS1_bedd323ae798e9ee8c9bdfd37723bcd04da6d4ea2be2ea3b135617b9896fa5e8
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgMovel; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgMovelCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Movel.
-- \@details Exact identity UWVMROS1_bedd323ae798e9ee8c9bdfd37723bcd04da6d4ea2be2ea3b135617b9896fa5e8
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgMovel; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgMovelCodecIdentity = "UWVMROS1_bedd323ae798e9ee8c9bdfd37723bcd04da6d4ea2be2ea3b135617b9896fa5e8"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Movel value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgMovel; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgMovel :: Ros2Rm_ros_interfacesMsgMovel -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgMovel value = do
  b0 <- encodeRos2Geometry_msgsMsgPose (ros2Rm_ros_interfacesMsgMovel_pose value)
  b1 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgMovel_speed value))
  b2 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgMovel_trajectory_connect value))
  b3 <- W.encodeBool (ros2Rm_ros_interfacesMsgMovel_block value)
  W.bounded 59 [b0, b1, b2, b3]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Movel.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgMovel; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgMovel :: W.Decoder Ros2Rm_ros_interfacesMsgMovel
readRos2Rm_ros_interfacesMsgMovel = do
  a0 <- readRos2Geometry_msgsMsgPose
  a1 <- fromIntegral <$> W.unsigned 1
  a2 <- fromIntegral <$> W.unsigned 1
  a3 <- W.boolean
  let value = Ros2Rm_ros_interfacesMsgMovel a0 a1 a2 a3
  case encodeRos2Rm_ros_interfacesMsgMovel value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Movel value.
-- \@details Require the complete 59..59-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgMovel; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgMovel :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgMovel
decodeRos2Rm_ros_interfacesMsgMovel = W.runDecoder 59 readRos2Rm_ros_interfacesMsgMovel
instance Canonical Ros2Rm_ros_interfacesMsgMovel where
  maximumBytes _ = 59
  encodeValue = encodeRos2Rm_ros_interfacesMsgMovel
  readValue = readRos2Rm_ros_interfacesMsgMovel
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Moveloffset value.
-- \@details All 6 declared fields are retained in source order. The canonical representation occupies
-- 67..67 bytes and is identified by
-- UWVMROS1_8db628a7aa137fd0a632e9a613158da09b3f8c779d3bd626cd6fc66c1b926493.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgMoveloffset = Ros2Rm_ros_interfacesMsgMoveloffset
  {
    -- | \@brief rm_ros_interfaces/msg/Moveloffset.pose: geometry_msgs/msg/Pose.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgMoveloffset; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgMoveloffset_pose :: Ros2Geometry_msgsMsgPose
  ,
    -- | \@brief rm_ros_interfaces/msg/Moveloffset.speed: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgMoveloffset; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgMoveloffset_speed :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Moveloffset.r: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgMoveloffset; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgMoveloffset_r :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Moveloffset.trajectory_connect: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgMoveloffset; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgMoveloffset_trajectory_connect :: Bool
  ,
    -- | \@brief rm_ros_interfaces/msg/Moveloffset.frame_type: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgMoveloffset; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgMoveloffset_frame_type :: Bool
  ,
    -- | \@brief rm_ros_interfaces/msg/Moveloffset.block: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgMoveloffset; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgMoveloffset_block :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Moveloffset.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgMoveloffset; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgMoveloffset :: Ros2Rm_ros_interfacesMsgMoveloffset
defaultRos2Rm_ros_interfacesMsgMoveloffset =
  Ros2Rm_ros_interfacesMsgMoveloffset
    (defaultRos2Geometry_msgsMsgPose)
    (0)
    (0)
    (False)
    (False)
    (False)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Moveloffset.
-- \@details Exact identity UWVMROS1_8db628a7aa137fd0a632e9a613158da09b3f8c779d3bd626cd6fc66c1b926493
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgMoveloffset; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgMoveloffsetCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Moveloffset.
-- \@details Exact identity UWVMROS1_8db628a7aa137fd0a632e9a613158da09b3f8c779d3bd626cd6fc66c1b926493
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgMoveloffset; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgMoveloffsetCodecIdentity = "UWVMROS1_8db628a7aa137fd0a632e9a613158da09b3f8c779d3bd626cd6fc66c1b926493"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Moveloffset value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgMoveloffset; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgMoveloffset :: Ros2Rm_ros_interfacesMsgMoveloffset -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgMoveloffset value = do
  b0 <- encodeRos2Geometry_msgsMsgPose (ros2Rm_ros_interfacesMsgMoveloffset_pose value)
  b1 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgMoveloffset_speed value))
  b2 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgMoveloffset_r value))
  b3 <- W.encodeBool (ros2Rm_ros_interfacesMsgMoveloffset_trajectory_connect value)
  b4 <- W.encodeBool (ros2Rm_ros_interfacesMsgMoveloffset_frame_type value)
  b5 <- W.encodeBool (ros2Rm_ros_interfacesMsgMoveloffset_block value)
  W.bounded 67 [b0, b1, b2, b3, b4, b5]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Moveloffset.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgMoveloffset; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgMoveloffset :: W.Decoder Ros2Rm_ros_interfacesMsgMoveloffset
readRos2Rm_ros_interfacesMsgMoveloffset = do
  a0 <- readRos2Geometry_msgsMsgPose
  a1 <- fromIntegral <$> W.signed 4
  a2 <- fromIntegral <$> W.signed 4
  a3 <- W.boolean
  a4 <- W.boolean
  a5 <- W.boolean
  let value = Ros2Rm_ros_interfacesMsgMoveloffset a0 a1 a2 a3 a4 a5
  case encodeRos2Rm_ros_interfacesMsgMoveloffset value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Moveloffset value.
-- \@details Require the complete 67..67-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgMoveloffset; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgMoveloffset :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgMoveloffset
decodeRos2Rm_ros_interfacesMsgMoveloffset = W.runDecoder 67 readRos2Rm_ros_interfacesMsgMoveloffset
instance Canonical Ros2Rm_ros_interfacesMsgMoveloffset where
  maximumBytes _ = 67
  encodeValue = encodeRos2Rm_ros_interfacesMsgMoveloffset
  readValue = readRos2Rm_ros_interfacesMsgMoveloffset
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Ortteach value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies
-- 3..3 bytes and is identified by
-- UWVMROS1_828e6ff29149aa578dcf551d9ad3e97087a267dd0bbe20f8da158ea9dff2a7e3.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgOrtteach = Ros2Rm_ros_interfacesMsgOrtteach
  {
    -- | \@brief rm_ros_interfaces/msg/Ortteach.type: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgOrtteach; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgOrtteach_type :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Ortteach.direction: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgOrtteach; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgOrtteach_direction :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Ortteach.speed: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgOrtteach; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgOrtteach_speed :: Word8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Ortteach.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgOrtteach; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgOrtteach :: Ros2Rm_ros_interfacesMsgOrtteach
defaultRos2Rm_ros_interfacesMsgOrtteach = Ros2Rm_ros_interfacesMsgOrtteach (0) (0) (0)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Ortteach.
-- \@details Exact identity UWVMROS1_828e6ff29149aa578dcf551d9ad3e97087a267dd0bbe20f8da158ea9dff2a7e3
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgOrtteach; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgOrtteachCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Ortteach.
-- \@details Exact identity UWVMROS1_828e6ff29149aa578dcf551d9ad3e97087a267dd0bbe20f8da158ea9dff2a7e3
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgOrtteach; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgOrtteachCodecIdentity = "UWVMROS1_828e6ff29149aa578dcf551d9ad3e97087a267dd0bbe20f8da158ea9dff2a7e3"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Ortteach value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgOrtteach; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgOrtteach :: Ros2Rm_ros_interfacesMsgOrtteach -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgOrtteach value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgOrtteach_type value))
  b1 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgOrtteach_direction value))
  b2 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgOrtteach_speed value))
  W.bounded 3 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Ortteach.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgOrtteach; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgOrtteach :: W.Decoder Ros2Rm_ros_interfacesMsgOrtteach
readRos2Rm_ros_interfacesMsgOrtteach = do
  a0 <- fromIntegral <$> W.unsigned 1
  a1 <- fromIntegral <$> W.unsigned 1
  a2 <- fromIntegral <$> W.unsigned 1
  let value = Ros2Rm_ros_interfacesMsgOrtteach a0 a1 a2
  case encodeRos2Rm_ros_interfacesMsgOrtteach value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Ortteach value.
-- \@details Require the complete 3..3-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgOrtteach; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgOrtteach :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgOrtteach
decodeRos2Rm_ros_interfacesMsgOrtteach = W.runDecoder 3 readRos2Rm_ros_interfacesMsgOrtteach
instance Canonical Ros2Rm_ros_interfacesMsgOrtteach where
  maximumBytes _ = 3
  encodeValue = encodeRos2Rm_ros_interfacesMsgOrtteach
  readValue = readRos2Rm_ros_interfacesMsgOrtteach
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Posteach value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies
-- 3..3 bytes and is identified by
-- UWVMROS1_bc647691f20ce4406973651c48148a74c7e080ec9916ab10fc85087b16ab9439.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgPosteach = Ros2Rm_ros_interfacesMsgPosteach
  {
    -- | \@brief rm_ros_interfaces/msg/Posteach.type: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgPosteach; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgPosteach_type :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Posteach.direction: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgPosteach; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgPosteach_direction :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Posteach.speed: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgPosteach; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgPosteach_speed :: Word8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Posteach.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgPosteach; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgPosteach :: Ros2Rm_ros_interfacesMsgPosteach
defaultRos2Rm_ros_interfacesMsgPosteach = Ros2Rm_ros_interfacesMsgPosteach (0) (0) (0)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Posteach.
-- \@details Exact identity UWVMROS1_bc647691f20ce4406973651c48148a74c7e080ec9916ab10fc85087b16ab9439
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgPosteach; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgPosteachCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Posteach.
-- \@details Exact identity UWVMROS1_bc647691f20ce4406973651c48148a74c7e080ec9916ab10fc85087b16ab9439
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgPosteach; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgPosteachCodecIdentity = "UWVMROS1_bc647691f20ce4406973651c48148a74c7e080ec9916ab10fc85087b16ab9439"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Posteach value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgPosteach; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgPosteach :: Ros2Rm_ros_interfacesMsgPosteach -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgPosteach value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgPosteach_type value))
  b1 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgPosteach_direction value))
  b2 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgPosteach_speed value))
  W.bounded 3 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Posteach.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgPosteach; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgPosteach :: W.Decoder Ros2Rm_ros_interfacesMsgPosteach
readRos2Rm_ros_interfacesMsgPosteach = do
  a0 <- fromIntegral <$> W.unsigned 1
  a1 <- fromIntegral <$> W.unsigned 1
  a2 <- fromIntegral <$> W.unsigned 1
  let value = Ros2Rm_ros_interfacesMsgPosteach a0 a1 a2
  case encodeRos2Rm_ros_interfacesMsgPosteach value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Posteach value.
-- \@details Require the complete 3..3-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgPosteach; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgPosteach :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgPosteach
decodeRos2Rm_ros_interfacesMsgPosteach = W.runDecoder 3 readRos2Rm_ros_interfacesMsgPosteach
instance Canonical Ros2Rm_ros_interfacesMsgPosteach where
  maximumBytes _ = 3
  encodeValue = encodeRos2Rm_ros_interfacesMsgPosteach
  readValue = readRos2Rm_ros_interfacesMsgPosteach
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Programrunstate value.
-- \@details All 10 declared fields are retained in source order. The canonical representation occupies
-- 37..165 bytes and is identified by
-- UWVMROS1_8177293c0a3c1aeee271d02ae322c7ae3494084d37ada682224566ec830f2964.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgProgramrunstate = Ros2Rm_ros_interfacesMsgProgramrunstate
  {
    -- | \@brief rm_ros_interfaces/msg/Programrunstate.run_state: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgProgramrunstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgProgramrunstate_run_state :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Programrunstate.id: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgProgramrunstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgProgramrunstate_id :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Programrunstate.edit_id: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgProgramrunstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgProgramrunstate_edit_id :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Programrunstate.plan_num: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgProgramrunstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgProgramrunstate_plan_num :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Programrunstate.total_loop: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgProgramrunstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgProgramrunstate_total_loop :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Programrunstate.step_mode: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgProgramrunstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgProgramrunstate_step_mode :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Programrunstate.plan_speed: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgProgramrunstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgProgramrunstate_plan_speed :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Programrunstate.loop_num: int32; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgProgramrunstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgProgramrunstate_loop_num :: [Int32]
  ,
    -- | \@brief rm_ros_interfaces/msg/Programrunstate.loop_cont: int32; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgProgramrunstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgProgramrunstate_loop_cont :: [Int32]
  ,
    -- | \@brief rm_ros_interfaces/msg/Programrunstate.state: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgProgramrunstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgProgramrunstate_state :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Programrunstate.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgProgramrunstate; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgProgramrunstate :: Ros2Rm_ros_interfacesMsgProgramrunstate
defaultRos2Rm_ros_interfacesMsgProgramrunstate =
  Ros2Rm_ros_interfacesMsgProgramrunstate
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
    ([])
    ([])
    (False)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Programrunstate.
-- \@details Exact identity UWVMROS1_8177293c0a3c1aeee271d02ae322c7ae3494084d37ada682224566ec830f2964
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgProgramrunstate; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgProgramrunstateCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Programrunstate.
-- \@details Exact identity UWVMROS1_8177293c0a3c1aeee271d02ae322c7ae3494084d37ada682224566ec830f2964
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgProgramrunstate; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgProgramrunstateCodecIdentity = "UWVMROS1_8177293c0a3c1aeee271d02ae322c7ae3494084d37ada682224566ec830f2964"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Programrunstate value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgProgramrunstate; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgProgramrunstate :: Ros2Rm_ros_interfacesMsgProgramrunstate -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgProgramrunstate value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgProgramrunstate_run_state value))
  b1 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgProgramrunstate_id value))
  b2 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgProgramrunstate_edit_id value))
  b3 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgProgramrunstate_plan_num value))
  b4 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgProgramrunstate_total_loop value))
  b5 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgProgramrunstate_step_mode value))
  b6 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgProgramrunstate_plan_speed value))
  if length (ros2Rm_ros_interfacesMsgProgramrunstate_loop_num value) > 16 then Left 22 else Right ()
  prefix7 <- W.encodeCount 16 (length (ros2Rm_ros_interfacesMsgProgramrunstate_loop_num value))
  b7 <- B.concat <$> mapM (\e -> W.encodeSigned 4 (fromIntegral (e))) (ros2Rm_ros_interfacesMsgProgramrunstate_loop_num value)
  if length (ros2Rm_ros_interfacesMsgProgramrunstate_loop_cont value) > 16 then Left 22 else Right ()
  prefix8 <- W.encodeCount 16 (length (ros2Rm_ros_interfacesMsgProgramrunstate_loop_cont value))
  b8 <- B.concat <$> mapM (\e -> W.encodeSigned 4 (fromIntegral (e))) (ros2Rm_ros_interfacesMsgProgramrunstate_loop_cont value)
  b9 <- W.encodeBool (ros2Rm_ros_interfacesMsgProgramrunstate_state value)
  W.bounded 165 [b0, b1, b2, b3, b4, b5, b6, prefix7, b7, prefix8, b8, b9]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Programrunstate.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgProgramrunstate; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgProgramrunstate :: W.Decoder Ros2Rm_ros_interfacesMsgProgramrunstate
readRos2Rm_ros_interfacesMsgProgramrunstate = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- fromIntegral <$> W.signed 4
  a2 <- fromIntegral <$> W.signed 4
  a3 <- fromIntegral <$> W.signed 4
  a4 <- fromIntegral <$> W.signed 4
  a5 <- fromIntegral <$> W.signed 4
  a6 <- fromIntegral <$> W.signed 4
  count7 <- W.count 16
  a7 <- replicateM count7 (fromIntegral <$> W.signed 4)
  count8 <- W.count 16
  a8 <- replicateM count8 (fromIntegral <$> W.signed 4)
  a9 <- W.boolean
  let value = Ros2Rm_ros_interfacesMsgProgramrunstate a0 a1 a2 a3 a4 a5 a6 a7 a8 a9
  case encodeRos2Rm_ros_interfacesMsgProgramrunstate value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Programrunstate value.
-- \@details Require the complete 37..165-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgProgramrunstate; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgProgramrunstate :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgProgramrunstate
decodeRos2Rm_ros_interfacesMsgProgramrunstate = W.runDecoder 165 readRos2Rm_ros_interfacesMsgProgramrunstate
instance Canonical Ros2Rm_ros_interfacesMsgProgramrunstate where
  maximumBytes _ = 165
  encodeValue = encodeRos2Rm_ros_interfacesMsgProgramrunstate
  readValue = readRos2Rm_ros_interfacesMsgProgramrunstate
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/RS485params value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies
-- 9..9 bytes and is identified by
-- UWVMROS1_232cdd997f067a79a7b7fb4f80fcf650de9da72f55545aeb786b45f281a5d5d7.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgRS485params = Ros2Rm_ros_interfacesMsgRS485params
  {
    -- | \@brief rm_ros_interfaces/msg/RS485params.mode: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRS485params; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRS485params_mode :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/RS485params.baudrate: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRS485params; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRS485params_baudrate :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/RS485params.state: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRS485params; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRS485params_state :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/RS485params.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgRS485params; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgRS485params :: Ros2Rm_ros_interfacesMsgRS485params
defaultRos2Rm_ros_interfacesMsgRS485params = Ros2Rm_ros_interfacesMsgRS485params (0) (0) (False)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/RS485params.
-- \@details Exact identity UWVMROS1_232cdd997f067a79a7b7fb4f80fcf650de9da72f55545aeb786b45f281a5d5d7
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgRS485params; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgRS485paramsCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/RS485params.
-- \@details Exact identity UWVMROS1_232cdd997f067a79a7b7fb4f80fcf650de9da72f55545aeb786b45f281a5d5d7
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgRS485params; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgRS485paramsCodecIdentity = "UWVMROS1_232cdd997f067a79a7b7fb4f80fcf650de9da72f55545aeb786b45f281a5d5d7"
-- | \@brief Encode one complete rm_ros_interfaces/msg/RS485params value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgRS485params; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgRS485params :: Ros2Rm_ros_interfacesMsgRS485params -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgRS485params value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgRS485params_mode value))
  b1 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgRS485params_baudrate value))
  b2 <- W.encodeBool (ros2Rm_ros_interfacesMsgRS485params_state value)
  W.bounded 9 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/RS485params.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgRS485params; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgRS485params :: W.Decoder Ros2Rm_ros_interfacesMsgRS485params
readRos2Rm_ros_interfacesMsgRS485params = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- fromIntegral <$> W.signed 4
  a2 <- W.boolean
  let value = Ros2Rm_ros_interfacesMsgRS485params a0 a1 a2
  case encodeRos2Rm_ros_interfacesMsgRS485params value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/RS485params value.
-- \@details Require the complete 9..9-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgRS485params; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgRS485params :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgRS485params
decodeRos2Rm_ros_interfacesMsgRS485params = W.runDecoder 9 readRos2Rm_ros_interfacesMsgRS485params
instance Canonical Ros2Rm_ros_interfacesMsgRS485params where
  maximumBytes _ = 9
  encodeValue = encodeRos2Rm_ros_interfacesMsgRS485params
  readValue = readRos2Rm_ros_interfacesMsgRS485params
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Rmerr value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 5..69 bytes and is identified by
-- UWVMROS1_0214f854e52c466ae60250c310e46d762242fe3a0ae85bf7b266949c8d10c74b.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgRmerr = Ros2Rm_ros_interfacesMsgRmerr
  {
    -- | \@brief rm_ros_interfaces/msg/Rmerr.err_len: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmerr; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmerr_err_len :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Rmerr.err: int32; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmerr; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmerr_err :: [Int32]
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Rmerr.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgRmerr; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgRmerr :: Ros2Rm_ros_interfacesMsgRmerr
defaultRos2Rm_ros_interfacesMsgRmerr = Ros2Rm_ros_interfacesMsgRmerr (0) ([])
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Rmerr.
-- \@details Exact identity UWVMROS1_0214f854e52c466ae60250c310e46d762242fe3a0ae85bf7b266949c8d10c74b
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgRmerr; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgRmerrCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Rmerr.
-- \@details Exact identity UWVMROS1_0214f854e52c466ae60250c310e46d762242fe3a0ae85bf7b266949c8d10c74b
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgRmerr; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgRmerrCodecIdentity = "UWVMROS1_0214f854e52c466ae60250c310e46d762242fe3a0ae85bf7b266949c8d10c74b"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Rmerr value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgRmerr; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgRmerr :: Ros2Rm_ros_interfacesMsgRmerr -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgRmerr value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgRmerr_err_len value))
  if length (ros2Rm_ros_interfacesMsgRmerr_err value) > 16 then Left 22 else Right ()
  prefix1 <- W.encodeCount 16 (length (ros2Rm_ros_interfacesMsgRmerr_err value))
  b1 <- B.concat <$> mapM (\e -> W.encodeSigned 4 (fromIntegral (e))) (ros2Rm_ros_interfacesMsgRmerr_err value)
  W.bounded 69 [b0, prefix1, b1]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Rmerr.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgRmerr; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgRmerr :: W.Decoder Ros2Rm_ros_interfacesMsgRmerr
readRos2Rm_ros_interfacesMsgRmerr = do
  a0 <- fromIntegral <$> W.unsigned 1
  count1 <- W.count 16
  a1 <- replicateM count1 (fromIntegral <$> W.signed 4)
  let value = Ros2Rm_ros_interfacesMsgRmerr a0 a1
  case encodeRos2Rm_ros_interfacesMsgRmerr value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Rmerr value.
-- \@details Require the complete 5..69-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgRmerr; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgRmerr :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgRmerr
decodeRos2Rm_ros_interfacesMsgRmerr = W.runDecoder 69 readRos2Rm_ros_interfacesMsgRmerr
instance Canonical Ros2Rm_ros_interfacesMsgRmerr where
  maximumBytes _ = 69
  encodeValue = encodeRos2Rm_ros_interfacesMsgRmerr
  readValue = readRos2Rm_ros_interfacesMsgRmerr
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Rmplusbase value.
-- \@details All 22 declared fields are retained in source order. The canonical representation occupies
-- 413..1437 bytes and is identified by
-- UWVMROS1_624630b927c67066221f379ec58ca895880e86576a803448636fdfe0b4f2f3d6.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgRmplusbase = Ros2Rm_ros_interfacesMsgRmplusbase
  {
    -- | \@brief rm_ros_interfaces/msg/Rmplusbase.manu: string; each string is 0..256 bytes; strict UTF-8
    -- | with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmplusbase; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmplusbase_manu :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Rmplusbase.type: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmplusbase; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmplusbase_type :: Int8
  ,
    -- | \@brief rm_ros_interfaces/msg/Rmplusbase.hv: string; each string is 0..256 bytes; strict UTF-8
    -- | with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmplusbase; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmplusbase_hv :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Rmplusbase.sv: string; each string is 0..256 bytes; strict UTF-8
    -- | with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmplusbase; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmplusbase_sv :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Rmplusbase.bv: string; each string is 0..256 bytes; strict UTF-8
    -- | with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmplusbase; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmplusbase_bv :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Rmplusbase.id: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmplusbase; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmplusbase_id :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Rmplusbase.dof: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmplusbase; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmplusbase_dof :: Int8
  ,
    -- | \@brief rm_ros_interfaces/msg/Rmplusbase.check: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmplusbase; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmplusbase_check :: Int8
  ,
    -- | \@brief rm_ros_interfaces/msg/Rmplusbase.bee: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmplusbase; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmplusbase_bee :: Int8
  ,
    -- | \@brief rm_ros_interfaces/msg/Rmplusbase.force: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmplusbase; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmplusbase_force :: Bool
  ,
    -- | \@brief rm_ros_interfaces/msg/Rmplusbase.touch: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmplusbase; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmplusbase_touch :: Bool
  ,
    -- | \@brief rm_ros_interfaces/msg/Rmplusbase.touch_num: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmplusbase; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmplusbase_touch_num :: Int8
  ,
    -- | \@brief rm_ros_interfaces/msg/Rmplusbase.touch_sw: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmplusbase; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmplusbase_touch_sw :: Int8
  ,
    -- | \@brief rm_ros_interfaces/msg/Rmplusbase.hand: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmplusbase; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmplusbase_hand :: Int8
  ,
    -- | \@brief rm_ros_interfaces/msg/Rmplusbase.pos_up: int32; exactly 12 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmplusbase; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmplusbase_pos_up :: [Int32]
  ,
    -- | \@brief rm_ros_interfaces/msg/Rmplusbase.pos_low: int32; exactly 12 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmplusbase; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmplusbase_pos_low :: [Int32]
  ,
    -- | \@brief rm_ros_interfaces/msg/Rmplusbase.angle_up: int32; exactly 12 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmplusbase; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmplusbase_angle_up :: [Int32]
  ,
    -- | \@brief rm_ros_interfaces/msg/Rmplusbase.angle_low: int32; exactly 12 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmplusbase; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmplusbase_angle_low :: [Int32]
  ,
    -- | \@brief rm_ros_interfaces/msg/Rmplusbase.speed_up: int32; exactly 12 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmplusbase; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmplusbase_speed_up :: [Int32]
  ,
    -- | \@brief rm_ros_interfaces/msg/Rmplusbase.speed_low: int32; exactly 12 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmplusbase; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmplusbase_speed_low :: [Int32]
  ,
    -- | \@brief rm_ros_interfaces/msg/Rmplusbase.force_up: int32; exactly 12 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmplusbase; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmplusbase_force_up :: [Int32]
  ,
    -- | \@brief rm_ros_interfaces/msg/Rmplusbase.force_low: int32; exactly 12 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmplusbase; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmplusbase_force_low :: [Int32]
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Rmplusbase.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgRmplusbase; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgRmplusbase :: Ros2Rm_ros_interfacesMsgRmplusbase
defaultRos2Rm_ros_interfacesMsgRmplusbase =
  Ros2Rm_ros_interfacesMsgRmplusbase
    (T.empty)
    (0)
    (T.empty)
    (T.empty)
    (T.empty)
    (0)
    (0)
    (0)
    (0)
    (False)
    (False)
    (0)
    (0)
    (0)
    (replicate 12 (0))
    (replicate 12 (0))
    (replicate 12 (0))
    (replicate 12 (0))
    (replicate 12 (0))
    (replicate 12 (0))
    (replicate 12 (0))
    (replicate 12 (0))
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Rmplusbase.
-- \@details Exact identity UWVMROS1_624630b927c67066221f379ec58ca895880e86576a803448636fdfe0b4f2f3d6
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgRmplusbase; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgRmplusbaseCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Rmplusbase.
-- \@details Exact identity UWVMROS1_624630b927c67066221f379ec58ca895880e86576a803448636fdfe0b4f2f3d6
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgRmplusbase; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgRmplusbaseCodecIdentity = "UWVMROS1_624630b927c67066221f379ec58ca895880e86576a803448636fdfe0b4f2f3d6"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Rmplusbase value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgRmplusbase; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgRmplusbase :: Ros2Rm_ros_interfacesMsgRmplusbase -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgRmplusbase value = do
  b0 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgRmplusbase_manu value)
  b1 <- W.encodeSigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgRmplusbase_type value))
  b2 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgRmplusbase_hv value)
  b3 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgRmplusbase_sv value)
  b4 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgRmplusbase_bv value)
  b5 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgRmplusbase_id value))
  b6 <- W.encodeSigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgRmplusbase_dof value))
  b7 <- W.encodeSigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgRmplusbase_check value))
  b8 <- W.encodeSigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgRmplusbase_bee value))
  b9 <- W.encodeBool (ros2Rm_ros_interfacesMsgRmplusbase_force value)
  b10 <- W.encodeBool (ros2Rm_ros_interfacesMsgRmplusbase_touch value)
  b11 <- W.encodeSigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgRmplusbase_touch_num value))
  b12 <- W.encodeSigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgRmplusbase_touch_sw value))
  b13 <- W.encodeSigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgRmplusbase_hand value))
  if length (ros2Rm_ros_interfacesMsgRmplusbase_pos_up value) /= 12 then Left 22 else Right ()
  b14 <- B.concat <$> mapM (\e -> W.encodeSigned 4 (fromIntegral (e))) (ros2Rm_ros_interfacesMsgRmplusbase_pos_up value)
  if length (ros2Rm_ros_interfacesMsgRmplusbase_pos_low value) /= 12 then Left 22 else Right ()
  b15 <- B.concat <$> mapM (\e -> W.encodeSigned 4 (fromIntegral (e))) (ros2Rm_ros_interfacesMsgRmplusbase_pos_low value)
  if length (ros2Rm_ros_interfacesMsgRmplusbase_angle_up value) /= 12 then Left 22 else Right ()
  b16 <- B.concat <$> mapM (\e -> W.encodeSigned 4 (fromIntegral (e))) (ros2Rm_ros_interfacesMsgRmplusbase_angle_up value)
  if length (ros2Rm_ros_interfacesMsgRmplusbase_angle_low value) /= 12 then Left 22 else Right ()
  b17 <- B.concat <$> mapM (\e -> W.encodeSigned 4 (fromIntegral (e))) (ros2Rm_ros_interfacesMsgRmplusbase_angle_low value)
  if length (ros2Rm_ros_interfacesMsgRmplusbase_speed_up value) /= 12 then Left 22 else Right ()
  b18 <- B.concat <$> mapM (\e -> W.encodeSigned 4 (fromIntegral (e))) (ros2Rm_ros_interfacesMsgRmplusbase_speed_up value)
  if length (ros2Rm_ros_interfacesMsgRmplusbase_speed_low value) /= 12 then Left 22 else Right ()
  b19 <- B.concat <$> mapM (\e -> W.encodeSigned 4 (fromIntegral (e))) (ros2Rm_ros_interfacesMsgRmplusbase_speed_low value)
  if length (ros2Rm_ros_interfacesMsgRmplusbase_force_up value) /= 12 then Left 22 else Right ()
  b20 <- B.concat <$> mapM (\e -> W.encodeSigned 4 (fromIntegral (e))) (ros2Rm_ros_interfacesMsgRmplusbase_force_up value)
  if length (ros2Rm_ros_interfacesMsgRmplusbase_force_low value) /= 12 then Left 22 else Right ()
  b21 <- B.concat <$> mapM (\e -> W.encodeSigned 4 (fromIntegral (e))) (ros2Rm_ros_interfacesMsgRmplusbase_force_low value)
  W.bounded 1437
    [ b0
    , b1
    , b2
    , b3
    , b4
    , b5
    , b6
    , b7
    , b8
    , b9
    , b10
    , b11
    , b12
    , b13
    , b14
    , b15
    , b16
    , b17
    , b18
    , b19
    , b20
    , b21
    ]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Rmplusbase.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgRmplusbase; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgRmplusbase :: W.Decoder Ros2Rm_ros_interfacesMsgRmplusbase
readRos2Rm_ros_interfacesMsgRmplusbase = do
  a0 <- W.text 256 True
  a1 <- fromIntegral <$> W.signed 1
  a2 <- W.text 256 True
  a3 <- W.text 256 True
  a4 <- W.text 256 True
  a5 <- fromIntegral <$> W.signed 4
  a6 <- fromIntegral <$> W.signed 1
  a7 <- fromIntegral <$> W.signed 1
  a8 <- fromIntegral <$> W.signed 1
  a9 <- W.boolean
  a10 <- W.boolean
  a11 <- fromIntegral <$> W.signed 1
  a12 <- fromIntegral <$> W.signed 1
  a13 <- fromIntegral <$> W.signed 1
  a14 <- replicateM 12 (fromIntegral <$> W.signed 4)
  a15 <- replicateM 12 (fromIntegral <$> W.signed 4)
  a16 <- replicateM 12 (fromIntegral <$> W.signed 4)
  a17 <- replicateM 12 (fromIntegral <$> W.signed 4)
  a18 <- replicateM 12 (fromIntegral <$> W.signed 4)
  a19 <- replicateM 12 (fromIntegral <$> W.signed 4)
  a20 <- replicateM 12 (fromIntegral <$> W.signed 4)
  a21 <- replicateM 12 (fromIntegral <$> W.signed 4)
  let value = Ros2Rm_ros_interfacesMsgRmplusbase a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21
  case encodeRos2Rm_ros_interfacesMsgRmplusbase value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Rmplusbase value.
-- \@details Require the complete 413..1437-byte canonical representation. Reject truncation, invalid
-- fields and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgRmplusbase; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgRmplusbase :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgRmplusbase
decodeRos2Rm_ros_interfacesMsgRmplusbase = W.runDecoder 1437 readRos2Rm_ros_interfacesMsgRmplusbase
instance Canonical Ros2Rm_ros_interfacesMsgRmplusbase where
  maximumBytes _ = 1437
  encodeValue = encodeRos2Rm_ros_interfacesMsgRmplusbase
  readValue = readRos2Rm_ros_interfacesMsgRmplusbase
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Rmplusstate value.
-- \@details All 14 declared fields are retained in source order. The canonical representation occupies
-- 724..724 bytes and is identified by
-- UWVMROS1_d01da3123f147e3c5eb51c8ea9e08c56b224d49ea8a41afa60d81af99cf894a1.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgRmplusstate = Ros2Rm_ros_interfacesMsgRmplusstate
  {
    -- | \@brief rm_ros_interfaces/msg/Rmplusstate.sys_state: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmplusstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmplusstate_sys_state :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Rmplusstate.dof_state: int32; exactly 12 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmplusstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmplusstate_dof_state :: [Int32]
  ,
    -- | \@brief rm_ros_interfaces/msg/Rmplusstate.dof_err: int32; exactly 12 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmplusstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmplusstate_dof_err :: [Int32]
  ,
    -- | \@brief rm_ros_interfaces/msg/Rmplusstate.pos: int32; exactly 12 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmplusstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmplusstate_pos :: [Int32]
  ,
    -- | \@brief rm_ros_interfaces/msg/Rmplusstate.speed: int32; exactly 12 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmplusstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmplusstate_speed :: [Int32]
  ,
    -- | \@brief rm_ros_interfaces/msg/Rmplusstate.angle: int32; exactly 12 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmplusstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmplusstate_angle :: [Int32]
  ,
    -- | \@brief rm_ros_interfaces/msg/Rmplusstate.current: int32; exactly 12 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmplusstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmplusstate_current :: [Int32]
  ,
    -- | \@brief rm_ros_interfaces/msg/Rmplusstate.normal_force: int32; exactly 18 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmplusstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmplusstate_normal_force :: [Int32]
  ,
    -- | \@brief rm_ros_interfaces/msg/Rmplusstate.tangential_force: int32; exactly 18 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmplusstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmplusstate_tangential_force :: [Int32]
  ,
    -- | \@brief rm_ros_interfaces/msg/Rmplusstate.tangential_force_dir: int32; exactly 18 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmplusstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmplusstate_tangential_force_dir :: [Int32]
  ,
    -- | \@brief rm_ros_interfaces/msg/Rmplusstate.tsa: uint32; exactly 12 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmplusstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmplusstate_tsa :: [Word32]
  ,
    -- | \@brief rm_ros_interfaces/msg/Rmplusstate.tma: uint32; exactly 12 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmplusstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmplusstate_tma :: [Word32]
  ,
    -- | \@brief rm_ros_interfaces/msg/Rmplusstate.touch_data: int32; exactly 18 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmplusstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmplusstate_touch_data :: [Int32]
  ,
    -- | \@brief rm_ros_interfaces/msg/Rmplusstate.force: int32; exactly 12 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmplusstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmplusstate_force :: [Int32]
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Rmplusstate.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgRmplusstate; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgRmplusstate :: Ros2Rm_ros_interfacesMsgRmplusstate
defaultRos2Rm_ros_interfacesMsgRmplusstate =
  Ros2Rm_ros_interfacesMsgRmplusstate
    (0)
    (replicate 12 (0))
    (replicate 12 (0))
    (replicate 12 (0))
    (replicate 12 (0))
    (replicate 12 (0))
    (replicate 12 (0))
    (replicate 18 (0))
    (replicate 18 (0))
    (replicate 18 (0))
    (replicate 12 (0))
    (replicate 12 (0))
    (replicate 18 (0))
    (replicate 12 (0))
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Rmplusstate.
-- \@details Exact identity UWVMROS1_d01da3123f147e3c5eb51c8ea9e08c56b224d49ea8a41afa60d81af99cf894a1
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgRmplusstate; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgRmplusstateCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Rmplusstate.
-- \@details Exact identity UWVMROS1_d01da3123f147e3c5eb51c8ea9e08c56b224d49ea8a41afa60d81af99cf894a1
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgRmplusstate; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgRmplusstateCodecIdentity = "UWVMROS1_d01da3123f147e3c5eb51c8ea9e08c56b224d49ea8a41afa60d81af99cf894a1"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Rmplusstate value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgRmplusstate; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgRmplusstate :: Ros2Rm_ros_interfacesMsgRmplusstate -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgRmplusstate value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgRmplusstate_sys_state value))
  if length (ros2Rm_ros_interfacesMsgRmplusstate_dof_state value) /= 12 then Left 22 else Right ()
  b1 <- B.concat <$> mapM (\e -> W.encodeSigned 4 (fromIntegral (e))) (ros2Rm_ros_interfacesMsgRmplusstate_dof_state value)
  if length (ros2Rm_ros_interfacesMsgRmplusstate_dof_err value) /= 12 then Left 22 else Right ()
  b2 <- B.concat <$> mapM (\e -> W.encodeSigned 4 (fromIntegral (e))) (ros2Rm_ros_interfacesMsgRmplusstate_dof_err value)
  if length (ros2Rm_ros_interfacesMsgRmplusstate_pos value) /= 12 then Left 22 else Right ()
  b3 <- B.concat <$> mapM (\e -> W.encodeSigned 4 (fromIntegral (e))) (ros2Rm_ros_interfacesMsgRmplusstate_pos value)
  if length (ros2Rm_ros_interfacesMsgRmplusstate_speed value) /= 12 then Left 22 else Right ()
  b4 <- B.concat <$> mapM (\e -> W.encodeSigned 4 (fromIntegral (e))) (ros2Rm_ros_interfacesMsgRmplusstate_speed value)
  if length (ros2Rm_ros_interfacesMsgRmplusstate_angle value) /= 12 then Left 22 else Right ()
  b5 <- B.concat <$> mapM (\e -> W.encodeSigned 4 (fromIntegral (e))) (ros2Rm_ros_interfacesMsgRmplusstate_angle value)
  if length (ros2Rm_ros_interfacesMsgRmplusstate_current value) /= 12 then Left 22 else Right ()
  b6 <- B.concat <$> mapM (\e -> W.encodeSigned 4 (fromIntegral (e))) (ros2Rm_ros_interfacesMsgRmplusstate_current value)
  if length (ros2Rm_ros_interfacesMsgRmplusstate_normal_force value) /= 18 then Left 22 else Right ()
  b7 <- B.concat <$> mapM (\e -> W.encodeSigned 4 (fromIntegral (e))) (ros2Rm_ros_interfacesMsgRmplusstate_normal_force value)
  if length (ros2Rm_ros_interfacesMsgRmplusstate_tangential_force value) /= 18 then Left 22 else Right ()
  b8 <- B.concat <$> mapM (\e -> W.encodeSigned 4 (fromIntegral (e))) (ros2Rm_ros_interfacesMsgRmplusstate_tangential_force value)
  if length (ros2Rm_ros_interfacesMsgRmplusstate_tangential_force_dir value) /= 18 then Left 22 else Right ()
  b9 <- B.concat <$> mapM (\e -> W.encodeSigned 4 (fromIntegral (e))) (ros2Rm_ros_interfacesMsgRmplusstate_tangential_force_dir value)
  if length (ros2Rm_ros_interfacesMsgRmplusstate_tsa value) /= 12 then Left 22 else Right ()
  b10 <- B.concat <$> mapM (\e -> W.encodeUnsigned 4 (fromIntegral (e))) (ros2Rm_ros_interfacesMsgRmplusstate_tsa value)
  if length (ros2Rm_ros_interfacesMsgRmplusstate_tma value) /= 12 then Left 22 else Right ()
  b11 <- B.concat <$> mapM (\e -> W.encodeUnsigned 4 (fromIntegral (e))) (ros2Rm_ros_interfacesMsgRmplusstate_tma value)
  if length (ros2Rm_ros_interfacesMsgRmplusstate_touch_data value) /= 18 then Left 22 else Right ()
  b12 <- B.concat <$> mapM (\e -> W.encodeSigned 4 (fromIntegral (e))) (ros2Rm_ros_interfacesMsgRmplusstate_touch_data value)
  if length (ros2Rm_ros_interfacesMsgRmplusstate_force value) /= 12 then Left 22 else Right ()
  b13 <- B.concat <$> mapM (\e -> W.encodeSigned 4 (fromIntegral (e))) (ros2Rm_ros_interfacesMsgRmplusstate_force value)
  W.bounded 724 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Rmplusstate.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgRmplusstate; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgRmplusstate :: W.Decoder Ros2Rm_ros_interfacesMsgRmplusstate
readRos2Rm_ros_interfacesMsgRmplusstate = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- replicateM 12 (fromIntegral <$> W.signed 4)
  a2 <- replicateM 12 (fromIntegral <$> W.signed 4)
  a3 <- replicateM 12 (fromIntegral <$> W.signed 4)
  a4 <- replicateM 12 (fromIntegral <$> W.signed 4)
  a5 <- replicateM 12 (fromIntegral <$> W.signed 4)
  a6 <- replicateM 12 (fromIntegral <$> W.signed 4)
  a7 <- replicateM 18 (fromIntegral <$> W.signed 4)
  a8 <- replicateM 18 (fromIntegral <$> W.signed 4)
  a9 <- replicateM 18 (fromIntegral <$> W.signed 4)
  a10 <- replicateM 12 (fromIntegral <$> W.unsigned 4)
  a11 <- replicateM 12 (fromIntegral <$> W.unsigned 4)
  a12 <- replicateM 18 (fromIntegral <$> W.signed 4)
  a13 <- replicateM 12 (fromIntegral <$> W.signed 4)
  let value = Ros2Rm_ros_interfacesMsgRmplusstate a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13
  case encodeRos2Rm_ros_interfacesMsgRmplusstate value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Rmplusstate value.
-- \@details Require the complete 724..724-byte canonical representation. Reject truncation, invalid
-- fields and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgRmplusstate; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgRmplusstate :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgRmplusstate
decodeRos2Rm_ros_interfacesMsgRmplusstate = W.runDecoder 724 readRos2Rm_ros_interfacesMsgRmplusstate
instance Canonical Ros2Rm_ros_interfacesMsgRmplusstate where
  maximumBytes _ = 724
  encodeValue = encodeRos2Rm_ros_interfacesMsgRmplusstate
  readValue = readRos2Rm_ros_interfacesMsgRmplusstate
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Rmversion value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 4..260 bytes and is identified by
-- UWVMROS1_74ea4fcf0c1b128d73ea1b321af8bc72f281eec2755d43969497d34295484eff.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgRmversion = Ros2Rm_ros_interfacesMsgRmversion
  {
    -- | \@brief rm_ros_interfaces/msg/Rmversion.version: string; each string is 0..256 bytes; strict
    -- | UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRmversion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRmversion_version :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Rmversion.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgRmversion; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgRmversion :: Ros2Rm_ros_interfacesMsgRmversion
defaultRos2Rm_ros_interfacesMsgRmversion = Ros2Rm_ros_interfacesMsgRmversion (T.empty)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Rmversion.
-- \@details Exact identity UWVMROS1_74ea4fcf0c1b128d73ea1b321af8bc72f281eec2755d43969497d34295484eff
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgRmversion; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgRmversionCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Rmversion.
-- \@details Exact identity UWVMROS1_74ea4fcf0c1b128d73ea1b321af8bc72f281eec2755d43969497d34295484eff
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgRmversion; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgRmversionCodecIdentity = "UWVMROS1_74ea4fcf0c1b128d73ea1b321af8bc72f281eec2755d43969497d34295484eff"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Rmversion value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgRmversion; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgRmversion :: Ros2Rm_ros_interfacesMsgRmversion -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgRmversion value = do
  b0 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgRmversion_version value)
  W.bounded 260 [b0]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Rmversion.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgRmversion; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgRmversion :: W.Decoder Ros2Rm_ros_interfacesMsgRmversion
readRos2Rm_ros_interfacesMsgRmversion = do
  a0 <- W.text 256 True
  let value = Ros2Rm_ros_interfacesMsgRmversion a0
  case encodeRos2Rm_ros_interfacesMsgRmversion value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Rmversion value.
-- \@details Require the complete 4..260-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgRmversion; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgRmversion :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgRmversion
decodeRos2Rm_ros_interfacesMsgRmversion = W.runDecoder 260 readRos2Rm_ros_interfacesMsgRmversion
instance Canonical Ros2Rm_ros_interfacesMsgRmversion where
  maximumBytes _ = 260
  encodeValue = encodeRos2Rm_ros_interfacesMsgRmversion
  readValue = readRos2Rm_ros_interfacesMsgRmversion
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/RobotInfo value.
-- \@details All 5 declared fields are retained in source order. The canonical representation occupies
-- 5..5 bytes and is identified by
-- UWVMROS1_cfe5e9cc7c94b43607d08a463a12d3f15b2a91f9a35ed5c77e9fb333bed3a2d2.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgRobotInfo = Ros2Rm_ros_interfacesMsgRobotInfo
  {
    -- | \@brief rm_ros_interfaces/msg/RobotInfo.arm_dof: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRobotInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRobotInfo_arm_dof :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/RobotInfo.arm_model: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRobotInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRobotInfo_arm_model :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/RobotInfo.force_type: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRobotInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRobotInfo_force_type :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/RobotInfo.robot_controller_version: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRobotInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRobotInfo_robot_controller_version :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/RobotInfo.state: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgRobotInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgRobotInfo_state :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/RobotInfo.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgRobotInfo; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgRobotInfo :: Ros2Rm_ros_interfacesMsgRobotInfo
defaultRos2Rm_ros_interfacesMsgRobotInfo = Ros2Rm_ros_interfacesMsgRobotInfo (0) (0) (0) (0) (False)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/RobotInfo.
-- \@details Exact identity UWVMROS1_cfe5e9cc7c94b43607d08a463a12d3f15b2a91f9a35ed5c77e9fb333bed3a2d2
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgRobotInfo; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgRobotInfoCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/RobotInfo.
-- \@details Exact identity UWVMROS1_cfe5e9cc7c94b43607d08a463a12d3f15b2a91f9a35ed5c77e9fb333bed3a2d2
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgRobotInfo; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgRobotInfoCodecIdentity = "UWVMROS1_cfe5e9cc7c94b43607d08a463a12d3f15b2a91f9a35ed5c77e9fb333bed3a2d2"
-- | \@brief Encode one complete rm_ros_interfaces/msg/RobotInfo value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgRobotInfo; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgRobotInfo :: Ros2Rm_ros_interfacesMsgRobotInfo -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgRobotInfo value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgRobotInfo_arm_dof value))
  b1 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgRobotInfo_arm_model value))
  b2 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgRobotInfo_force_type value))
  b3 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgRobotInfo_robot_controller_version value))
  b4 <- W.encodeBool (ros2Rm_ros_interfacesMsgRobotInfo_state value)
  W.bounded 5 [b0, b1, b2, b3, b4]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/RobotInfo.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgRobotInfo; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgRobotInfo :: W.Decoder Ros2Rm_ros_interfacesMsgRobotInfo
readRos2Rm_ros_interfacesMsgRobotInfo = do
  a0 <- fromIntegral <$> W.unsigned 1
  a1 <- fromIntegral <$> W.unsigned 1
  a2 <- fromIntegral <$> W.unsigned 1
  a3 <- fromIntegral <$> W.unsigned 1
  a4 <- W.boolean
  let value = Ros2Rm_ros_interfacesMsgRobotInfo a0 a1 a2 a3 a4
  case encodeRos2Rm_ros_interfacesMsgRobotInfo value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/RobotInfo value.
-- \@details Require the complete 5..5-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgRobotInfo; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgRobotInfo :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgRobotInfo
decodeRos2Rm_ros_interfacesMsgRobotInfo = W.runDecoder 5 readRos2Rm_ros_interfacesMsgRobotInfo
instance Canonical Ros2Rm_ros_interfacesMsgRobotInfo where
  maximumBytes _ = 5
  encodeValue = encodeRos2Rm_ros_interfacesMsgRobotInfo
  readValue = readRos2Rm_ros_interfacesMsgRobotInfo
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Sendproject value.
-- \@details All 8 declared fields are retained in source order. The canonical representation occupies
-- 32..288 bytes and is identified by
-- UWVMROS1_625ceba69efce5e5797055d9139300b83f9c8c506b49c55d0ce45f22e022f330.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgSendproject = Ros2Rm_ros_interfacesMsgSendproject
  {
    -- | \@brief rm_ros_interfaces/msg/Sendproject.project_path: string; each string is 0..256 bytes;
    -- | strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgSendproject; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgSendproject_project_path :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Sendproject.project_path_len: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgSendproject; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgSendproject_project_path_len :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Sendproject.plan_speed: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgSendproject; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgSendproject_plan_speed :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Sendproject.only_save: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgSendproject; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgSendproject_only_save :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Sendproject.save_id: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgSendproject; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgSendproject_save_id :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Sendproject.step_flag: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgSendproject; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgSendproject_step_flag :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Sendproject.auto_start: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgSendproject; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgSendproject_auto_start :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Sendproject.project_type: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgSendproject; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgSendproject_project_type :: Int32
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Sendproject.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgSendproject; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgSendproject :: Ros2Rm_ros_interfacesMsgSendproject
defaultRos2Rm_ros_interfacesMsgSendproject =
  Ros2Rm_ros_interfacesMsgSendproject
    (T.empty)
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Sendproject.
-- \@details Exact identity UWVMROS1_625ceba69efce5e5797055d9139300b83f9c8c506b49c55d0ce45f22e022f330
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgSendproject; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgSendprojectCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Sendproject.
-- \@details Exact identity UWVMROS1_625ceba69efce5e5797055d9139300b83f9c8c506b49c55d0ce45f22e022f330
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgSendproject; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgSendprojectCodecIdentity = "UWVMROS1_625ceba69efce5e5797055d9139300b83f9c8c506b49c55d0ce45f22e022f330"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Sendproject value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgSendproject; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgSendproject :: Ros2Rm_ros_interfacesMsgSendproject -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgSendproject value = do
  b0 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgSendproject_project_path value)
  b1 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgSendproject_project_path_len value))
  b2 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgSendproject_plan_speed value))
  b3 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgSendproject_only_save value))
  b4 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgSendproject_save_id value))
  b5 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgSendproject_step_flag value))
  b6 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgSendproject_auto_start value))
  b7 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgSendproject_project_type value))
  W.bounded 288 [b0, b1, b2, b3, b4, b5, b6, b7]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Sendproject.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgSendproject; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgSendproject :: W.Decoder Ros2Rm_ros_interfacesMsgSendproject
readRos2Rm_ros_interfacesMsgSendproject = do
  a0 <- W.text 256 True
  a1 <- fromIntegral <$> W.signed 4
  a2 <- fromIntegral <$> W.signed 4
  a3 <- fromIntegral <$> W.signed 4
  a4 <- fromIntegral <$> W.signed 4
  a5 <- fromIntegral <$> W.signed 4
  a6 <- fromIntegral <$> W.signed 4
  a7 <- fromIntegral <$> W.signed 4
  let value = Ros2Rm_ros_interfacesMsgSendproject a0 a1 a2 a3 a4 a5 a6 a7
  case encodeRos2Rm_ros_interfacesMsgSendproject value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Sendproject value.
-- \@details Require the complete 32..288-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgSendproject; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgSendproject :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgSendproject
decodeRos2Rm_ros_interfacesMsgSendproject = W.runDecoder 288 readRos2Rm_ros_interfacesMsgSendproject
instance Canonical Ros2Rm_ros_interfacesMsgSendproject where
  maximumBytes _ = 288
  encodeValue = encodeRos2Rm_ros_interfacesMsgSendproject
  readValue = readRos2Rm_ros_interfacesMsgSendproject
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Setforceposition value.
-- \@details All 4 declared fields are retained in source order. The canonical representation occupies
-- 5..5 bytes and is identified by
-- UWVMROS1_5789fffaac8dbc81a98dba271defe524caa2400ed010026b1236a1635d0af157.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgSetforceposition = Ros2Rm_ros_interfacesMsgSetforceposition
  {
    -- | \@brief rm_ros_interfaces/msg/Setforceposition.sensor: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgSetforceposition; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgSetforceposition_sensor :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Setforceposition.mode: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgSetforceposition; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgSetforceposition_mode :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Setforceposition.direction: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgSetforceposition; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgSetforceposition_direction :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Setforceposition.n: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgSetforceposition; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgSetforceposition_n :: Int16
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Setforceposition.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgSetforceposition; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgSetforceposition :: Ros2Rm_ros_interfacesMsgSetforceposition
defaultRos2Rm_ros_interfacesMsgSetforceposition = Ros2Rm_ros_interfacesMsgSetforceposition (0) (0) (0) (0)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Setforceposition.
-- \@details Exact identity UWVMROS1_5789fffaac8dbc81a98dba271defe524caa2400ed010026b1236a1635d0af157
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgSetforceposition; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgSetforcepositionCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Setforceposition.
-- \@details Exact identity UWVMROS1_5789fffaac8dbc81a98dba271defe524caa2400ed010026b1236a1635d0af157
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgSetforceposition; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgSetforcepositionCodecIdentity = "UWVMROS1_5789fffaac8dbc81a98dba271defe524caa2400ed010026b1236a1635d0af157"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Setforceposition value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgSetforceposition; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgSetforceposition :: Ros2Rm_ros_interfacesMsgSetforceposition -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgSetforceposition value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgSetforceposition_sensor value))
  b1 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgSetforceposition_mode value))
  b2 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgSetforceposition_direction value))
  b3 <- W.encodeSigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgSetforceposition_n value))
  W.bounded 5 [b0, b1, b2, b3]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Setforceposition.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgSetforceposition; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgSetforceposition :: W.Decoder Ros2Rm_ros_interfacesMsgSetforceposition
readRos2Rm_ros_interfacesMsgSetforceposition = do
  a0 <- fromIntegral <$> W.unsigned 1
  a1 <- fromIntegral <$> W.unsigned 1
  a2 <- fromIntegral <$> W.unsigned 1
  a3 <- fromIntegral <$> W.signed 2
  let value = Ros2Rm_ros_interfacesMsgSetforceposition a0 a1 a2 a3
  case encodeRos2Rm_ros_interfacesMsgSetforceposition value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Setforceposition value.
-- \@details Require the complete 5..5-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgSetforceposition; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgSetforceposition :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgSetforceposition
decodeRos2Rm_ros_interfacesMsgSetforceposition = W.runDecoder 5 readRos2Rm_ros_interfacesMsgSetforceposition
instance Canonical Ros2Rm_ros_interfacesMsgSetforceposition where
  maximumBytes _ = 5
  encodeValue = encodeRos2Rm_ros_interfacesMsgSetforceposition
  readValue = readRos2Rm_ros_interfacesMsgSetforceposition
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Setrealtimepush value.
-- \@details All 12 declared fields are retained in source order. The canonical representation occupies
-- 18..274 bytes and is identified by
-- UWVMROS1_ce4398bb4bc2a30a854b9f2e610ce31867b4b01d1979bb1ca7c27ee8e0356368.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgSetrealtimepush = Ros2Rm_ros_interfacesMsgSetrealtimepush
  {
    -- | \@brief rm_ros_interfaces/msg/Setrealtimepush.cycle: uint16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgSetrealtimepush; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgSetrealtimepush_cycle :: Word16
  ,
    -- | \@brief rm_ros_interfaces/msg/Setrealtimepush.port: uint16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgSetrealtimepush; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgSetrealtimepush_port :: Word16
  ,
    -- | \@brief rm_ros_interfaces/msg/Setrealtimepush.force_coordinate: uint16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgSetrealtimepush; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgSetrealtimepush_force_coordinate :: Word16
  ,
    -- | \@brief rm_ros_interfaces/msg/Setrealtimepush.ip: string; each string is 0..256 bytes; strict
    -- | UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgSetrealtimepush; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgSetrealtimepush_ip :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Setrealtimepush.aloha_state_enable: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgSetrealtimepush; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgSetrealtimepush_aloha_state_enable :: Bool
  ,
    -- | \@brief rm_ros_interfaces/msg/Setrealtimepush.arm_current_status_enable: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgSetrealtimepush; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgSetrealtimepush_arm_current_status_enable :: Bool
  ,
    -- | \@brief rm_ros_interfaces/msg/Setrealtimepush.expand_state_enable: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgSetrealtimepush; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgSetrealtimepush_expand_state_enable :: Bool
  ,
    -- | \@brief rm_ros_interfaces/msg/Setrealtimepush.hand_enable: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgSetrealtimepush; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgSetrealtimepush_hand_enable :: Bool
  ,
    -- | \@brief rm_ros_interfaces/msg/Setrealtimepush.joint_speed_enable: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgSetrealtimepush; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgSetrealtimepush_joint_speed_enable :: Bool
  ,
    -- | \@brief rm_ros_interfaces/msg/Setrealtimepush.lift_state_enable: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgSetrealtimepush; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgSetrealtimepush_lift_state_enable :: Bool
  ,
    -- | \@brief rm_ros_interfaces/msg/Setrealtimepush.plus_base_enable: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgSetrealtimepush; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgSetrealtimepush_plus_base_enable :: Bool
  ,
    -- | \@brief rm_ros_interfaces/msg/Setrealtimepush.plus_state_enable: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgSetrealtimepush; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgSetrealtimepush_plus_state_enable :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Setrealtimepush.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgSetrealtimepush; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgSetrealtimepush :: Ros2Rm_ros_interfacesMsgSetrealtimepush
defaultRos2Rm_ros_interfacesMsgSetrealtimepush =
  Ros2Rm_ros_interfacesMsgSetrealtimepush
    (0)
    (0)
    (0)
    (T.empty)
    (False)
    (False)
    (False)
    (False)
    (False)
    (False)
    (False)
    (False)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Setrealtimepush.
-- \@details Exact identity UWVMROS1_ce4398bb4bc2a30a854b9f2e610ce31867b4b01d1979bb1ca7c27ee8e0356368
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgSetrealtimepush; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgSetrealtimepushCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Setrealtimepush.
-- \@details Exact identity UWVMROS1_ce4398bb4bc2a30a854b9f2e610ce31867b4b01d1979bb1ca7c27ee8e0356368
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgSetrealtimepush; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgSetrealtimepushCodecIdentity = "UWVMROS1_ce4398bb4bc2a30a854b9f2e610ce31867b4b01d1979bb1ca7c27ee8e0356368"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Setrealtimepush value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgSetrealtimepush; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgSetrealtimepush :: Ros2Rm_ros_interfacesMsgSetrealtimepush -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgSetrealtimepush value = do
  b0 <- W.encodeUnsigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgSetrealtimepush_cycle value))
  b1 <- W.encodeUnsigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgSetrealtimepush_port value))
  b2 <- W.encodeUnsigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgSetrealtimepush_force_coordinate value))
  b3 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgSetrealtimepush_ip value)
  b4 <- W.encodeBool (ros2Rm_ros_interfacesMsgSetrealtimepush_aloha_state_enable value)
  b5 <- W.encodeBool (ros2Rm_ros_interfacesMsgSetrealtimepush_arm_current_status_enable value)
  b6 <- W.encodeBool (ros2Rm_ros_interfacesMsgSetrealtimepush_expand_state_enable value)
  b7 <- W.encodeBool (ros2Rm_ros_interfacesMsgSetrealtimepush_hand_enable value)
  b8 <- W.encodeBool (ros2Rm_ros_interfacesMsgSetrealtimepush_joint_speed_enable value)
  b9 <- W.encodeBool (ros2Rm_ros_interfacesMsgSetrealtimepush_lift_state_enable value)
  b10 <- W.encodeBool (ros2Rm_ros_interfacesMsgSetrealtimepush_plus_base_enable value)
  b11 <- W.encodeBool (ros2Rm_ros_interfacesMsgSetrealtimepush_plus_state_enable value)
  W.bounded 274 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Setrealtimepush.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgSetrealtimepush; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgSetrealtimepush :: W.Decoder Ros2Rm_ros_interfacesMsgSetrealtimepush
readRos2Rm_ros_interfacesMsgSetrealtimepush = do
  a0 <- fromIntegral <$> W.unsigned 2
  a1 <- fromIntegral <$> W.unsigned 2
  a2 <- fromIntegral <$> W.unsigned 2
  a3 <- W.text 256 True
  a4 <- W.boolean
  a5 <- W.boolean
  a6 <- W.boolean
  a7 <- W.boolean
  a8 <- W.boolean
  a9 <- W.boolean
  a10 <- W.boolean
  a11 <- W.boolean
  let value = Ros2Rm_ros_interfacesMsgSetrealtimepush a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11
  case encodeRos2Rm_ros_interfacesMsgSetrealtimepush value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Setrealtimepush value.
-- \@details Require the complete 18..274-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgSetrealtimepush; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgSetrealtimepush :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgSetrealtimepush
decodeRos2Rm_ros_interfacesMsgSetrealtimepush = W.runDecoder 274 readRos2Rm_ros_interfacesMsgSetrealtimepush
instance Canonical Ros2Rm_ros_interfacesMsgSetrealtimepush where
  maximumBytes _ = 274
  encodeValue = encodeRos2Rm_ros_interfacesMsgSetrealtimepush
  readValue = readRos2Rm_ros_interfacesMsgSetrealtimepush
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Sixforce value.
-- \@details All 6 declared fields are retained in source order. The canonical representation occupies
-- 24..24 bytes and is identified by
-- UWVMROS1_004ddf4ebf23f01c921ea38e652f7ab45bf6b17e747ac33e55f08838b760a288.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgSixforce = Ros2Rm_ros_interfacesMsgSixforce
  {
    -- | \@brief rm_ros_interfaces/msg/Sixforce.force_fx: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgSixforce; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgSixforce_force_fx :: Float
  ,
    -- | \@brief rm_ros_interfaces/msg/Sixforce.force_fy: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgSixforce; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgSixforce_force_fy :: Float
  ,
    -- | \@brief rm_ros_interfaces/msg/Sixforce.force_fz: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgSixforce; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgSixforce_force_fz :: Float
  ,
    -- | \@brief rm_ros_interfaces/msg/Sixforce.force_mx: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgSixforce; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgSixforce_force_mx :: Float
  ,
    -- | \@brief rm_ros_interfaces/msg/Sixforce.force_my: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgSixforce; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgSixforce_force_my :: Float
  ,
    -- | \@brief rm_ros_interfaces/msg/Sixforce.force_mz: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgSixforce; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgSixforce_force_mz :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Sixforce.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgSixforce; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgSixforce :: Ros2Rm_ros_interfacesMsgSixforce
defaultRos2Rm_ros_interfacesMsgSixforce = Ros2Rm_ros_interfacesMsgSixforce (0) (0) (0) (0) (0) (0)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Sixforce.
-- \@details Exact identity UWVMROS1_004ddf4ebf23f01c921ea38e652f7ab45bf6b17e747ac33e55f08838b760a288
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgSixforce; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgSixforceCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Sixforce.
-- \@details Exact identity UWVMROS1_004ddf4ebf23f01c921ea38e652f7ab45bf6b17e747ac33e55f08838b760a288
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgSixforce; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgSixforceCodecIdentity = "UWVMROS1_004ddf4ebf23f01c921ea38e652f7ab45bf6b17e747ac33e55f08838b760a288"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Sixforce value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgSixforce; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgSixforce :: Ros2Rm_ros_interfacesMsgSixforce -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgSixforce value = do
  b0 <- W.encodeFloat32 (ros2Rm_ros_interfacesMsgSixforce_force_fx value)
  b1 <- W.encodeFloat32 (ros2Rm_ros_interfacesMsgSixforce_force_fy value)
  b2 <- W.encodeFloat32 (ros2Rm_ros_interfacesMsgSixforce_force_fz value)
  b3 <- W.encodeFloat32 (ros2Rm_ros_interfacesMsgSixforce_force_mx value)
  b4 <- W.encodeFloat32 (ros2Rm_ros_interfacesMsgSixforce_force_my value)
  b5 <- W.encodeFloat32 (ros2Rm_ros_interfacesMsgSixforce_force_mz value)
  W.bounded 24 [b0, b1, b2, b3, b4, b5]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Sixforce.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgSixforce; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgSixforce :: W.Decoder Ros2Rm_ros_interfacesMsgSixforce
readRos2Rm_ros_interfacesMsgSixforce = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  let value = Ros2Rm_ros_interfacesMsgSixforce a0 a1 a2 a3 a4 a5
  case encodeRos2Rm_ros_interfacesMsgSixforce value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Sixforce value.
-- \@details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgSixforce; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgSixforce :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgSixforce
decodeRos2Rm_ros_interfacesMsgSixforce = W.runDecoder 24 readRos2Rm_ros_interfacesMsgSixforce
instance Canonical Ros2Rm_ros_interfacesMsgSixforce where
  maximumBytes _ = 24
  encodeValue = encodeRos2Rm_ros_interfacesMsgSixforce
  readValue = readRos2Rm_ros_interfacesMsgSixforce
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Stop value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_b515c85f83dde19caf6ae3e504952314ba9be77064556d3aed9fbab6ee8d778a.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgStop = Ros2Rm_ros_interfacesMsgStop
  {
    -- | \@brief rm_ros_interfaces/msg/Stop.state: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgStop; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgStop_state :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Stop.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgStop; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgStop :: Ros2Rm_ros_interfacesMsgStop
defaultRos2Rm_ros_interfacesMsgStop = Ros2Rm_ros_interfacesMsgStop (False)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Stop.
-- \@details Exact identity UWVMROS1_b515c85f83dde19caf6ae3e504952314ba9be77064556d3aed9fbab6ee8d778a
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgStop; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgStopCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Stop.
-- \@details Exact identity UWVMROS1_b515c85f83dde19caf6ae3e504952314ba9be77064556d3aed9fbab6ee8d778a
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgStop; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgStopCodecIdentity = "UWVMROS1_b515c85f83dde19caf6ae3e504952314ba9be77064556d3aed9fbab6ee8d778a"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Stop value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgStop; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgStop :: Ros2Rm_ros_interfacesMsgStop -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgStop value = do
  b0 <- W.encodeBool (ros2Rm_ros_interfacesMsgStop_state value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Stop.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgStop; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgStop :: W.Decoder Ros2Rm_ros_interfacesMsgStop
readRos2Rm_ros_interfacesMsgStop = do
  a0 <- W.boolean
  let value = Ros2Rm_ros_interfacesMsgStop a0
  case encodeRos2Rm_ros_interfacesMsgStop value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Stop value.
-- \@details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgStop; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgStop :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgStop
decodeRos2Rm_ros_interfacesMsgStop = W.runDecoder 1 readRos2Rm_ros_interfacesMsgStop
instance Canonical Ros2Rm_ros_interfacesMsgStop where
  maximumBytes _ = 1
  encodeValue = encodeRos2Rm_ros_interfacesMsgStop
  readValue = readRos2Rm_ros_interfacesMsgStop
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Toolsoftwareversionv4 value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 5..261 bytes and is identified by
-- UWVMROS1_ab5015e1cb20be291a6a66c7e169b79f59b41558b05095438fc8fb9f14e44991.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgToolsoftwareversionv4 = Ros2Rm_ros_interfacesMsgToolsoftwareversionv4
  {
    -- | \@brief rm_ros_interfaces/msg/Toolsoftwareversionv4.tool_version: string; each string is 0..256
    -- | bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgToolsoftwareversionv4; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgToolsoftwareversionv4_tool_version :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Toolsoftwareversionv4.state: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgToolsoftwareversionv4; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgToolsoftwareversionv4_state :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Toolsoftwareversionv4.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgToolsoftwareversionv4; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgToolsoftwareversionv4 :: Ros2Rm_ros_interfacesMsgToolsoftwareversionv4
defaultRos2Rm_ros_interfacesMsgToolsoftwareversionv4 =
  Ros2Rm_ros_interfacesMsgToolsoftwareversionv4
    (T.empty)
    (False)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Toolsoftwareversionv4.
-- \@details Exact identity UWVMROS1_ab5015e1cb20be291a6a66c7e169b79f59b41558b05095438fc8fb9f14e44991
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgToolsoftwareversionv4; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgToolsoftwareversionv4CodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Toolsoftwareversionv4.
-- \@details Exact identity UWVMROS1_ab5015e1cb20be291a6a66c7e169b79f59b41558b05095438fc8fb9f14e44991
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgToolsoftwareversionv4; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgToolsoftwareversionv4CodecIdentity = "UWVMROS1_ab5015e1cb20be291a6a66c7e169b79f59b41558b05095438fc8fb9f14e44991"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Toolsoftwareversionv4 value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgToolsoftwareversionv4; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgToolsoftwareversionv4 :: Ros2Rm_ros_interfacesMsgToolsoftwareversionv4 -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgToolsoftwareversionv4 value = do
  b0 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgToolsoftwareversionv4_tool_version value)
  b1 <- W.encodeBool (ros2Rm_ros_interfacesMsgToolsoftwareversionv4_state value)
  W.bounded 261 [b0, b1]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Toolsoftwareversionv4.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgToolsoftwareversionv4; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgToolsoftwareversionv4 :: W.Decoder Ros2Rm_ros_interfacesMsgToolsoftwareversionv4
readRos2Rm_ros_interfacesMsgToolsoftwareversionv4 = do
  a0 <- W.text 256 True
  a1 <- W.boolean
  let value = Ros2Rm_ros_interfacesMsgToolsoftwareversionv4 a0 a1
  case encodeRos2Rm_ros_interfacesMsgToolsoftwareversionv4 value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Toolsoftwareversionv4 value.
-- \@details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgToolsoftwareversionv4; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgToolsoftwareversionv4 :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgToolsoftwareversionv4
decodeRos2Rm_ros_interfacesMsgToolsoftwareversionv4 = W.runDecoder 261 readRos2Rm_ros_interfacesMsgToolsoftwareversionv4
instance Canonical Ros2Rm_ros_interfacesMsgToolsoftwareversionv4 where
  maximumBytes _ = 261
  encodeValue = encodeRos2Rm_ros_interfacesMsgToolsoftwareversionv4
  readValue = readRos2Rm_ros_interfacesMsgToolsoftwareversionv4
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Trajectoryinfo value.
-- \@details All 4 declared fields are retained in source order. The canonical representation occupies
-- 13..525 bytes and is identified by
-- UWVMROS1_99a949e7baea68f6d2c4e2811bb45e47ce4c3e49fd572429adf1bb5501753af1.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgTrajectoryinfo = Ros2Rm_ros_interfacesMsgTrajectoryinfo
  {
    -- | \@brief rm_ros_interfaces/msg/Trajectoryinfo.name: string; each string is 0..256 bytes; strict
    -- | UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgTrajectoryinfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgTrajectoryinfo_name :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Trajectoryinfo.create_time: string; each string is 0..256 bytes;
    -- | strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgTrajectoryinfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgTrajectoryinfo_create_time :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Trajectoryinfo.point_num: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgTrajectoryinfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgTrajectoryinfo_point_num :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Trajectoryinfo.state: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgTrajectoryinfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgTrajectoryinfo_state :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Trajectoryinfo.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgTrajectoryinfo; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgTrajectoryinfo :: Ros2Rm_ros_interfacesMsgTrajectoryinfo
defaultRos2Rm_ros_interfacesMsgTrajectoryinfo =
  Ros2Rm_ros_interfacesMsgTrajectoryinfo
    (T.empty)
    (T.empty)
    (0)
    (False)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Trajectoryinfo.
-- \@details Exact identity UWVMROS1_99a949e7baea68f6d2c4e2811bb45e47ce4c3e49fd572429adf1bb5501753af1
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgTrajectoryinfo; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgTrajectoryinfoCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Trajectoryinfo.
-- \@details Exact identity UWVMROS1_99a949e7baea68f6d2c4e2811bb45e47ce4c3e49fd572429adf1bb5501753af1
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgTrajectoryinfo; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgTrajectoryinfoCodecIdentity = "UWVMROS1_99a949e7baea68f6d2c4e2811bb45e47ce4c3e49fd572429adf1bb5501753af1"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Trajectoryinfo value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgTrajectoryinfo; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgTrajectoryinfo :: Ros2Rm_ros_interfacesMsgTrajectoryinfo -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgTrajectoryinfo value = do
  b0 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgTrajectoryinfo_name value)
  b1 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgTrajectoryinfo_create_time value)
  b2 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgTrajectoryinfo_point_num value))
  b3 <- W.encodeBool (ros2Rm_ros_interfacesMsgTrajectoryinfo_state value)
  W.bounded 525 [b0, b1, b2, b3]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Trajectoryinfo.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgTrajectoryinfo; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgTrajectoryinfo :: W.Decoder Ros2Rm_ros_interfacesMsgTrajectoryinfo
readRos2Rm_ros_interfacesMsgTrajectoryinfo = do
  a0 <- W.text 256 True
  a1 <- W.text 256 True
  a2 <- fromIntegral <$> W.signed 4
  a3 <- W.boolean
  let value = Ros2Rm_ros_interfacesMsgTrajectoryinfo a0 a1 a2 a3
  case encodeRos2Rm_ros_interfacesMsgTrajectoryinfo value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Trajectoryinfo value.
-- \@details Require the complete 13..525-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgTrajectoryinfo; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgTrajectoryinfo :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgTrajectoryinfo
decodeRos2Rm_ros_interfacesMsgTrajectoryinfo = W.runDecoder 525 readRos2Rm_ros_interfacesMsgTrajectoryinfo
instance Canonical Ros2Rm_ros_interfacesMsgTrajectoryinfo where
  maximumBytes _ = 525
  encodeValue = encodeRos2Rm_ros_interfacesMsgTrajectoryinfo
  readValue = readRos2Rm_ros_interfacesMsgTrajectoryinfo
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Trajectorylist value.
-- \@details All 6 declared fields are retained in source order. The canonical representation occupies
-- 21..8677 bytes and is identified by
-- UWVMROS1_9498185ae3b53a6877f05feb80b72a7471f52105f7c394fd7ee091798391dc9f.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgTrajectorylist = Ros2Rm_ros_interfacesMsgTrajectorylist
  {
    -- | \@brief rm_ros_interfaces/msg/Trajectorylist.page_num: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgTrajectorylist; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgTrajectorylist_page_num :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Trajectorylist.page_size: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgTrajectorylist; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgTrajectorylist_page_size :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Trajectorylist.total_size: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgTrajectorylist; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgTrajectorylist_total_size :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Trajectorylist.vague_search: string; each string is 0..256 bytes;
    -- | strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgTrajectorylist; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgTrajectorylist_vague_search :: T.Text
  ,
    -- | \@brief rm_ros_interfaces/msg/Trajectorylist.tra_list: rm_ros_interfaces/msg/Trajectoryinfo;
    -- | 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgTrajectorylist; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgTrajectorylist_tra_list :: [Ros2Rm_ros_interfacesMsgTrajectoryinfo]
  ,
    -- | \@brief rm_ros_interfaces/msg/Trajectorylist.state: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgTrajectorylist; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgTrajectorylist_state :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Trajectorylist.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgTrajectorylist; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgTrajectorylist :: Ros2Rm_ros_interfacesMsgTrajectorylist
defaultRos2Rm_ros_interfacesMsgTrajectorylist =
  Ros2Rm_ros_interfacesMsgTrajectorylist
    (0)
    (0)
    (0)
    (T.empty)
    ([])
    (False)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Trajectorylist.
-- \@details Exact identity UWVMROS1_9498185ae3b53a6877f05feb80b72a7471f52105f7c394fd7ee091798391dc9f
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgTrajectorylist; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgTrajectorylistCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Trajectorylist.
-- \@details Exact identity UWVMROS1_9498185ae3b53a6877f05feb80b72a7471f52105f7c394fd7ee091798391dc9f
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgTrajectorylist; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgTrajectorylistCodecIdentity = "UWVMROS1_9498185ae3b53a6877f05feb80b72a7471f52105f7c394fd7ee091798391dc9f"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Trajectorylist value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgTrajectorylist; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgTrajectorylist :: Ros2Rm_ros_interfacesMsgTrajectorylist -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgTrajectorylist value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgTrajectorylist_page_num value))
  b1 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgTrajectorylist_page_size value))
  b2 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgTrajectorylist_total_size value))
  b3 <- W.encodeText 256 True (ros2Rm_ros_interfacesMsgTrajectorylist_vague_search value)
  if length (ros2Rm_ros_interfacesMsgTrajectorylist_tra_list value) > 16 then Left 22 else Right ()
  prefix4 <- W.encodeCount 16 (length (ros2Rm_ros_interfacesMsgTrajectorylist_tra_list value))
  b4 <- B.concat <$> mapM (\e -> encodeRos2Rm_ros_interfacesMsgTrajectoryinfo (e)) (ros2Rm_ros_interfacesMsgTrajectorylist_tra_list value)
  b5 <- W.encodeBool (ros2Rm_ros_interfacesMsgTrajectorylist_state value)
  W.bounded 8677 [b0, b1, b2, b3, prefix4, b4, b5]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Trajectorylist.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgTrajectorylist; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgTrajectorylist :: W.Decoder Ros2Rm_ros_interfacesMsgTrajectorylist
readRos2Rm_ros_interfacesMsgTrajectorylist = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- fromIntegral <$> W.signed 4
  a2 <- fromIntegral <$> W.signed 4
  a3 <- W.text 256 True
  count4 <- W.count 16
  a4 <- replicateM count4 (readRos2Rm_ros_interfacesMsgTrajectoryinfo)
  a5 <- W.boolean
  let value = Ros2Rm_ros_interfacesMsgTrajectorylist a0 a1 a2 a3 a4 a5
  case encodeRos2Rm_ros_interfacesMsgTrajectorylist value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Trajectorylist value.
-- \@details Require the complete 21..8677-byte canonical representation. Reject truncation, invalid
-- fields and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgTrajectorylist; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgTrajectorylist :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgTrajectorylist
decodeRos2Rm_ros_interfacesMsgTrajectorylist = W.runDecoder 8677 readRos2Rm_ros_interfacesMsgTrajectorylist
instance Canonical Ros2Rm_ros_interfacesMsgTrajectorylist where
  maximumBytes _ = 8677
  encodeValue = encodeRos2Rm_ros_interfacesMsgTrajectorylist
  readValue = readRos2Rm_ros_interfacesMsgTrajectorylist
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Udpexpandstate value.
-- \@details All 6 declared fields are retained in source order. The canonical representation occupies
-- 14..14 bytes and is identified by
-- UWVMROS1_d3704bef2217ad73435bc3b958f185335ecdcd9ba3112d99f5dd29664a76a7c5.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgUdpexpandstate = Ros2Rm_ros_interfacesMsgUdpexpandstate
  {
    -- | \@brief rm_ros_interfaces/msg/Udpexpandstate.pos: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgUdpexpandstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgUdpexpandstate_pos :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Udpexpandstate.current: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgUdpexpandstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgUdpexpandstate_current :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Udpexpandstate.err_flag: uint16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgUdpexpandstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgUdpexpandstate_err_flag :: Word16
  ,
    -- | \@brief rm_ros_interfaces/msg/Udpexpandstate.en_flag: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgUdpexpandstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgUdpexpandstate_en_flag :: Bool
  ,
    -- | \@brief rm_ros_interfaces/msg/Udpexpandstate.joint_id: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgUdpexpandstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgUdpexpandstate_joint_id :: Word8
  ,
    -- | \@brief rm_ros_interfaces/msg/Udpexpandstate.mode: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgUdpexpandstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgUdpexpandstate_mode :: Int16
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Udpexpandstate.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgUdpexpandstate; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgUdpexpandstate :: Ros2Rm_ros_interfacesMsgUdpexpandstate
defaultRos2Rm_ros_interfacesMsgUdpexpandstate =
  Ros2Rm_ros_interfacesMsgUdpexpandstate
    (0)
    (0)
    (0)
    (False)
    (0)
    (0)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Udpexpandstate.
-- \@details Exact identity UWVMROS1_d3704bef2217ad73435bc3b958f185335ecdcd9ba3112d99f5dd29664a76a7c5
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgUdpexpandstate; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgUdpexpandstateCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Udpexpandstate.
-- \@details Exact identity UWVMROS1_d3704bef2217ad73435bc3b958f185335ecdcd9ba3112d99f5dd29664a76a7c5
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgUdpexpandstate; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgUdpexpandstateCodecIdentity = "UWVMROS1_d3704bef2217ad73435bc3b958f185335ecdcd9ba3112d99f5dd29664a76a7c5"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Udpexpandstate value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgUdpexpandstate; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgUdpexpandstate :: Ros2Rm_ros_interfacesMsgUdpexpandstate -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgUdpexpandstate value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgUdpexpandstate_pos value))
  b1 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgUdpexpandstate_current value))
  b2 <- W.encodeUnsigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgUdpexpandstate_err_flag value))
  b3 <- W.encodeBool (ros2Rm_ros_interfacesMsgUdpexpandstate_en_flag value)
  b4 <- W.encodeUnsigned 1 (fromIntegral (ros2Rm_ros_interfacesMsgUdpexpandstate_joint_id value))
  b5 <- W.encodeSigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgUdpexpandstate_mode value))
  W.bounded 14 [b0, b1, b2, b3, b4, b5]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Udpexpandstate.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgUdpexpandstate; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgUdpexpandstate :: W.Decoder Ros2Rm_ros_interfacesMsgUdpexpandstate
readRos2Rm_ros_interfacesMsgUdpexpandstate = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- fromIntegral <$> W.signed 4
  a2 <- fromIntegral <$> W.unsigned 2
  a3 <- W.boolean
  a4 <- fromIntegral <$> W.unsigned 1
  a5 <- fromIntegral <$> W.signed 2
  let value = Ros2Rm_ros_interfacesMsgUdpexpandstate a0 a1 a2 a3 a4 a5
  case encodeRos2Rm_ros_interfacesMsgUdpexpandstate value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Udpexpandstate value.
-- \@details Require the complete 14..14-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgUdpexpandstate; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgUdpexpandstate :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgUdpexpandstate
decodeRos2Rm_ros_interfacesMsgUdpexpandstate = W.runDecoder 14 readRos2Rm_ros_interfacesMsgUdpexpandstate
instance Canonical Ros2Rm_ros_interfacesMsgUdpexpandstate where
  maximumBytes _ = 14
  encodeValue = encodeRos2Rm_ros_interfacesMsgUdpexpandstate
  readValue = readRos2Rm_ros_interfacesMsgUdpexpandstate
-- | \@brief Complete ROS 2 rm_ros_interfaces/msg/Udpliftstate value.
-- \@details All 5 declared fields are retained in source order. The canonical representation occupies
-- 13..13 bytes and is identified by
-- UWVMROS1_8ba0450948ef53ead53ed721c81f39548616ee59820b96c7e7d5b3385edc8817.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Rm_ros_interfacesMsgUdpliftstate = Ros2Rm_ros_interfacesMsgUdpliftstate
  {
    -- | \@brief rm_ros_interfaces/msg/Udpliftstate.height: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgUdpliftstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgUdpliftstate_height :: Int32
  ,
    -- | \@brief rm_ros_interfaces/msg/Udpliftstate.pos: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgUdpliftstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgUdpliftstate_pos :: Float
  ,
    -- | \@brief rm_ros_interfaces/msg/Udpliftstate.current: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgUdpliftstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgUdpliftstate_current :: Int16
  ,
    -- | \@brief rm_ros_interfaces/msg/Udpliftstate.en_flag: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgUdpliftstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgUdpliftstate_en_flag :: Bool
  ,
    -- | \@brief rm_ros_interfaces/msg/Udpliftstate.err_flag: uint16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Rm_ros_interfacesMsgUdpliftstate; share/platform/ros/haskell/API-CONTRACT.md
    ros2Rm_ros_interfacesMsgUdpliftstate_err_flag :: Word16
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of rm_ros_interfaces/msg/Udpliftstate.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgUdpliftstate; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Rm_ros_interfacesMsgUdpliftstate :: Ros2Rm_ros_interfacesMsgUdpliftstate
defaultRos2Rm_ros_interfacesMsgUdpliftstate = Ros2Rm_ros_interfacesMsgUdpliftstate (0) (0) (0) (False) (0)
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Udpliftstate.
-- \@details Exact identity UWVMROS1_8ba0450948ef53ead53ed721c81f39548616ee59820b96c7e7d5b3385edc8817
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgUdpliftstate; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgUdpliftstateCodecIdentity :: String
-- | \@brief Canonical codec identity of rm_ros_interfaces/msg/Udpliftstate.
-- \@details Exact identity UWVMROS1_8ba0450948ef53ead53ed721c81f39548616ee59820b96c7e7d5b3385edc8817
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Rm_ros_interfacesMsgUdpliftstate; share/platform/ros/haskell/API-CONTRACT.md
ros2Rm_ros_interfacesMsgUdpliftstateCodecIdentity = "UWVMROS1_8ba0450948ef53ead53ed721c81f39548616ee59820b96c7e7d5b3385edc8817"
-- | \@brief Encode one complete rm_ros_interfaces/msg/Udpliftstate value.
-- \@details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
-- profile. Validate all finite bounds; never silently truncate or issue a Host call.
-- \@param[in] value Complete selected record; retain all field storage unchanged during encoding.
-- \@return Owned complete canonical bytes through the native language result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgUdpliftstate; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Rm_ros_interfacesMsgUdpliftstate :: Ros2Rm_ros_interfacesMsgUdpliftstate -> Either Word32 B.ByteString
encodeRos2Rm_ros_interfacesMsgUdpliftstate value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros2Rm_ros_interfacesMsgUdpliftstate_height value))
  b1 <- W.encodeFloat32 (ros2Rm_ros_interfacesMsgUdpliftstate_pos value)
  b2 <- W.encodeSigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgUdpliftstate_current value))
  b3 <- W.encodeBool (ros2Rm_ros_interfacesMsgUdpliftstate_en_flag value)
  b4 <- W.encodeUnsigned 2 (fromIntegral (ros2Rm_ros_interfacesMsgUdpliftstate_err_flag value))
  W.bounded 13 [b0, b1, b2, b3, b4]
-- | \@brief Read the ordered canonical fields of rm_ros_interfaces/msg/Udpliftstate.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately
-- leaves subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned
-- refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgUdpliftstate; share/platform/ros/haskell/API-CONTRACT.md
readRos2Rm_ros_interfacesMsgUdpliftstate :: W.Decoder Ros2Rm_ros_interfacesMsgUdpliftstate
readRos2Rm_ros_interfacesMsgUdpliftstate = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- W.float32
  a2 <- fromIntegral <$> W.signed 2
  a3 <- W.boolean
  a4 <- fromIntegral <$> W.unsigned 2
  let value = Ros2Rm_ros_interfacesMsgUdpliftstate a0 a1 a2 a3 a4
  case encodeRos2Rm_ros_interfacesMsgUdpliftstate value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete rm_ros_interfaces/msg/Udpliftstate value.
-- \@details Require the complete 13..13-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Rm_ros_interfacesMsgUdpliftstate; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Rm_ros_interfacesMsgUdpliftstate :: B.ByteString -> Either Word32 Ros2Rm_ros_interfacesMsgUdpliftstate
decodeRos2Rm_ros_interfacesMsgUdpliftstate = W.runDecoder 13 readRos2Rm_ros_interfacesMsgUdpliftstate
instance Canonical Ros2Rm_ros_interfacesMsgUdpliftstate where
  maximumBytes _ = 13
  encodeValue = encodeRos2Rm_ros_interfacesMsgUdpliftstate
  readValue = readRos2Rm_ros_interfacesMsgUdpliftstate
