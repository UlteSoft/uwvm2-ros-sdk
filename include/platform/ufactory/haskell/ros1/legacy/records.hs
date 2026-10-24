-- | @file records.hs
-- | @brief Preserve the complete original ufactory/ros1_legacy canonical value domain.
-- | @details The selected domain contains 29 complete record/components and 67 original fields. Declared
-- | scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
-- | Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
-- | create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
-- | does not qualify a frontend, target ABI or native ROS transport.
-- | @see The platform's localized language guide and complete API-CATALOG.md.
-- Generated complete canonical values; all field selectors are record-qualified.
module Ufactory.Ros1Legacy.Records where
import Data.Int
import Data.Word
import qualified Data.ByteString as B
import qualified Data.Text as T
import GHC.Float
import Control.Monad (replicateM)
import qualified RosWasm.Wire as W
import RosWasm.Typed (Canonical(..))
-- | \@brief Complete ROS 1 geometry_msgs/Point value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies
-- 24..24 bytes and is identified by
-- UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Geometry_msgsPoint = Ros1Geometry_msgsPoint
  {
    -- | \@brief geometry_msgs/Point.x: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros1Geometry_msgsPoint_x :: Double
  ,
    -- | \@brief geometry_msgs/Point.y: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros1Geometry_msgsPoint_y :: Double
  ,
    -- | \@brief geometry_msgs/Point.z: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros1Geometry_msgsPoint_z :: Double
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of geometry_msgs/Point.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Geometry_msgsPoint; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Geometry_msgsPoint :: Ros1Geometry_msgsPoint
defaultRos1Geometry_msgsPoint = Ros1Geometry_msgsPoint (0) (0) (0)
-- | \@brief Canonical codec identity of geometry_msgs/Point.
-- \@details Exact identity UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Geometry_msgsPoint; share/platform/ros/haskell/API-CONTRACT.md
ros1Geometry_msgsPointCodecIdentity :: String
-- | \@brief Canonical codec identity of geometry_msgs/Point.
-- \@details Exact identity UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Geometry_msgsPoint; share/platform/ros/haskell/API-CONTRACT.md
ros1Geometry_msgsPointCodecIdentity = "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b"
-- | \@brief Encode one complete geometry_msgs/Point value.
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
-- \@see Ros1Geometry_msgsPoint; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Geometry_msgsPoint :: Ros1Geometry_msgsPoint -> Either Word32 B.ByteString
encodeRos1Geometry_msgsPoint value = do
  b0 <- W.encodeFloat64 (ros1Geometry_msgsPoint_x value)
  b1 <- W.encodeFloat64 (ros1Geometry_msgsPoint_y value)
  b2 <- W.encodeFloat64 (ros1Geometry_msgsPoint_z value)
  W.bounded 24 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of geometry_msgs/Point.
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
-- \@see Ros1Geometry_msgsPoint; share/platform/ros/haskell/API-CONTRACT.md
readRos1Geometry_msgsPoint :: W.Decoder Ros1Geometry_msgsPoint
readRos1Geometry_msgsPoint = do
  a0 <- W.float64
  a1 <- W.float64
  a2 <- W.float64
  let value = Ros1Geometry_msgsPoint a0 a1 a2
  case encodeRos1Geometry_msgsPoint value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete geometry_msgs/Point value.
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
-- \@see Ros1Geometry_msgsPoint; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Geometry_msgsPoint :: B.ByteString -> Either Word32 Ros1Geometry_msgsPoint
decodeRos1Geometry_msgsPoint = W.runDecoder 24 readRos1Geometry_msgsPoint
instance Canonical Ros1Geometry_msgsPoint where
  maximumBytes _ = 24
  encodeValue = encodeRos1Geometry_msgsPoint
  readValue = readRos1Geometry_msgsPoint
-- | \@brief Complete ROS 1 geometry_msgs/Quaternion value.
-- \@details All 4 declared fields are retained in source order. The canonical representation occupies
-- 32..32 bytes and is identified by
-- UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Geometry_msgsQuaternion = Ros1Geometry_msgsQuaternion
  {
    -- | \@brief geometry_msgs/Quaternion.x: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsQuaternion; share/platform/ros/haskell/API-CONTRACT.md
    ros1Geometry_msgsQuaternion_x :: Double
  ,
    -- | \@brief geometry_msgs/Quaternion.y: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsQuaternion; share/platform/ros/haskell/API-CONTRACT.md
    ros1Geometry_msgsQuaternion_y :: Double
  ,
    -- | \@brief geometry_msgs/Quaternion.z: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsQuaternion; share/platform/ros/haskell/API-CONTRACT.md
    ros1Geometry_msgsQuaternion_z :: Double
  ,
    -- | \@brief geometry_msgs/Quaternion.w: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsQuaternion; share/platform/ros/haskell/API-CONTRACT.md
    ros1Geometry_msgsQuaternion_w :: Double
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of geometry_msgs/Quaternion.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Geometry_msgsQuaternion; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Geometry_msgsQuaternion :: Ros1Geometry_msgsQuaternion
defaultRos1Geometry_msgsQuaternion = Ros1Geometry_msgsQuaternion (0) (0) (0) (0)
-- | \@brief Canonical codec identity of geometry_msgs/Quaternion.
-- \@details Exact identity UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Geometry_msgsQuaternion; share/platform/ros/haskell/API-CONTRACT.md
ros1Geometry_msgsQuaternionCodecIdentity :: String
-- | \@brief Canonical codec identity of geometry_msgs/Quaternion.
-- \@details Exact identity UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Geometry_msgsQuaternion; share/platform/ros/haskell/API-CONTRACT.md
ros1Geometry_msgsQuaternionCodecIdentity = "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934"
-- | \@brief Encode one complete geometry_msgs/Quaternion value.
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
-- \@see Ros1Geometry_msgsQuaternion; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Geometry_msgsQuaternion :: Ros1Geometry_msgsQuaternion -> Either Word32 B.ByteString
encodeRos1Geometry_msgsQuaternion value = do
  b0 <- W.encodeFloat64 (ros1Geometry_msgsQuaternion_x value)
  b1 <- W.encodeFloat64 (ros1Geometry_msgsQuaternion_y value)
  b2 <- W.encodeFloat64 (ros1Geometry_msgsQuaternion_z value)
  b3 <- W.encodeFloat64 (ros1Geometry_msgsQuaternion_w value)
  W.bounded 32 [b0, b1, b2, b3]
-- | \@brief Read the ordered canonical fields of geometry_msgs/Quaternion.
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
-- \@see Ros1Geometry_msgsQuaternion; share/platform/ros/haskell/API-CONTRACT.md
readRos1Geometry_msgsQuaternion :: W.Decoder Ros1Geometry_msgsQuaternion
readRos1Geometry_msgsQuaternion = do
  a0 <- W.float64
  a1 <- W.float64
  a2 <- W.float64
  a3 <- W.float64
  let value = Ros1Geometry_msgsQuaternion a0 a1 a2 a3
  case encodeRos1Geometry_msgsQuaternion value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete geometry_msgs/Quaternion value.
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
-- \@see Ros1Geometry_msgsQuaternion; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Geometry_msgsQuaternion :: B.ByteString -> Either Word32 Ros1Geometry_msgsQuaternion
decodeRos1Geometry_msgsQuaternion = W.runDecoder 32 readRos1Geometry_msgsQuaternion
instance Canonical Ros1Geometry_msgsQuaternion where
  maximumBytes _ = 32
  encodeValue = encodeRos1Geometry_msgsQuaternion
  readValue = readRos1Geometry_msgsQuaternion
-- | \@brief Complete ROS 1 geometry_msgs/Pose value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 56..56 bytes and is identified by
-- UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Geometry_msgsPose = Ros1Geometry_msgsPose
  {
    -- | \@brief geometry_msgs/Pose.position: geometry_msgs/Point.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPose; share/platform/ros/haskell/API-CONTRACT.md
    ros1Geometry_msgsPose_position :: Ros1Geometry_msgsPoint
  ,
    -- | \@brief geometry_msgs/Pose.orientation: geometry_msgs/Quaternion.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPose; share/platform/ros/haskell/API-CONTRACT.md
    ros1Geometry_msgsPose_orientation :: Ros1Geometry_msgsQuaternion
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of geometry_msgs/Pose.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Geometry_msgsPose; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Geometry_msgsPose :: Ros1Geometry_msgsPose
defaultRos1Geometry_msgsPose =
  Ros1Geometry_msgsPose
    (defaultRos1Geometry_msgsPoint)
    (defaultRos1Geometry_msgsQuaternion)
-- | \@brief Canonical codec identity of geometry_msgs/Pose.
-- \@details Exact identity UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Geometry_msgsPose; share/platform/ros/haskell/API-CONTRACT.md
ros1Geometry_msgsPoseCodecIdentity :: String
-- | \@brief Canonical codec identity of geometry_msgs/Pose.
-- \@details Exact identity UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Geometry_msgsPose; share/platform/ros/haskell/API-CONTRACT.md
ros1Geometry_msgsPoseCodecIdentity = "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471"
-- | \@brief Encode one complete geometry_msgs/Pose value.
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
-- \@see Ros1Geometry_msgsPose; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Geometry_msgsPose :: Ros1Geometry_msgsPose -> Either Word32 B.ByteString
encodeRos1Geometry_msgsPose value = do
  b0 <- encodeRos1Geometry_msgsPoint (ros1Geometry_msgsPose_position value)
  b1 <- encodeRos1Geometry_msgsQuaternion (ros1Geometry_msgsPose_orientation value)
  W.bounded 56 [b0, b1]
-- | \@brief Read the ordered canonical fields of geometry_msgs/Pose.
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
-- \@see Ros1Geometry_msgsPose; share/platform/ros/haskell/API-CONTRACT.md
readRos1Geometry_msgsPose :: W.Decoder Ros1Geometry_msgsPose
readRos1Geometry_msgsPose = do
  a0 <- readRos1Geometry_msgsPoint
  a1 <- readRos1Geometry_msgsQuaternion
  let value = Ros1Geometry_msgsPose a0 a1
  case encodeRos1Geometry_msgsPose value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete geometry_msgs/Pose value.
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
-- \@see Ros1Geometry_msgsPose; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Geometry_msgsPose :: B.ByteString -> Either Word32 Ros1Geometry_msgsPose
decodeRos1Geometry_msgsPose = W.runDecoder 56 readRos1Geometry_msgsPose
instance Canonical Ros1Geometry_msgsPose where
  maximumBytes _ = 56
  encodeValue = encodeRos1Geometry_msgsPose
  readValue = readRos1Geometry_msgsPose
-- | \@brief Complete ROS 1 xarm_msgs/IOState value.
-- \@details All 4 declared fields are retained in source order. The canonical representation occupies
-- 16..16 bytes and is identified by
-- UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsIOState = Ros1Xarm_msgsIOState
  {
    -- | \@brief xarm_msgs/IOState.digital_1: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsIOState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsIOState_digital_1 :: Int32
  ,
    -- | \@brief xarm_msgs/IOState.digital_2: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsIOState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsIOState_digital_2 :: Int32
  ,
    -- | \@brief xarm_msgs/IOState.analog_1: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsIOState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsIOState_analog_1 :: Float
  ,
    -- | \@brief xarm_msgs/IOState.analog_2: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsIOState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsIOState_analog_2 :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/IOState.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsIOState; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsIOState :: Ros1Xarm_msgsIOState
defaultRos1Xarm_msgsIOState = Ros1Xarm_msgsIOState (0) (0) (0) (0)
-- | \@brief Canonical codec identity of xarm_msgs/IOState.
-- \@details Exact identity UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsIOState; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsIOStateCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/IOState.
-- \@details Exact identity UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsIOState; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsIOStateCodecIdentity = "UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996"
-- | \@brief Encode one complete xarm_msgs/IOState value.
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
-- \@see Ros1Xarm_msgsIOState; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsIOState :: Ros1Xarm_msgsIOState -> Either Word32 B.ByteString
encodeRos1Xarm_msgsIOState value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros1Xarm_msgsIOState_digital_1 value))
  b1 <- W.encodeSigned 4 (fromIntegral (ros1Xarm_msgsIOState_digital_2 value))
  b2 <- W.encodeFloat32 (ros1Xarm_msgsIOState_analog_1 value)
  b3 <- W.encodeFloat32 (ros1Xarm_msgsIOState_analog_2 value)
  W.bounded 16 [b0, b1, b2, b3]
-- | \@brief Read the ordered canonical fields of xarm_msgs/IOState.
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
-- \@see Ros1Xarm_msgsIOState; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsIOState :: W.Decoder Ros1Xarm_msgsIOState
readRos1Xarm_msgsIOState = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- fromIntegral <$> W.signed 4
  a2 <- W.float32
  a3 <- W.float32
  let value = Ros1Xarm_msgsIOState a0 a1 a2 a3
  case encodeRos1Xarm_msgsIOState value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/IOState value.
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
-- \@see Ros1Xarm_msgsIOState; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsIOState :: B.ByteString -> Either Word32 Ros1Xarm_msgsIOState
decodeRos1Xarm_msgsIOState = W.runDecoder 16 readRos1Xarm_msgsIOState
instance Canonical Ros1Xarm_msgsIOState where
  maximumBytes _ = 16
  encodeValue = encodeRos1Xarm_msgsIOState
  readValue = readRos1Xarm_msgsIOState
-- | \@brief Complete ROS 1 xarm_msgs/RobotMsg value.
-- \@details All 10 declared fields are retained in source order. The canonical representation occupies
-- 66..94 bytes and is identified by
-- UWVMROS1_e5509a530075a638bfa1f09cf5fd78c4d609dccbd79ddd75ef50f5061f68b0f7.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsRobotMsg = Ros1Xarm_msgsRobotMsg
  {
    -- | \@brief xarm_msgs/RobotMsg.state: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsRobotMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsRobotMsg_state :: Int16
  ,
    -- | \@brief xarm_msgs/RobotMsg.mode: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsRobotMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsRobotMsg_mode :: Int16
  ,
    -- | \@brief xarm_msgs/RobotMsg.cmdnum: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsRobotMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsRobotMsg_cmdnum :: Int16
  ,
    -- | \@brief xarm_msgs/RobotMsg.mt_brake: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsRobotMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsRobotMsg_mt_brake :: Int16
  ,
    -- | \@brief xarm_msgs/RobotMsg.mt_able: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsRobotMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsRobotMsg_mt_able :: Int16
  ,
    -- | \@brief xarm_msgs/RobotMsg.err: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsRobotMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsRobotMsg_err :: Int16
  ,
    -- | \@brief xarm_msgs/RobotMsg.warn: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsRobotMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsRobotMsg_warn :: Int16
  ,
    -- | \@brief xarm_msgs/RobotMsg.angle: float32; 0..7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsRobotMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsRobotMsg_angle :: [Float]
  ,
    -- | \@brief xarm_msgs/RobotMsg.pose: float32; exactly 6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsRobotMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsRobotMsg_pose :: [Float]
  ,
    -- | \@brief xarm_msgs/RobotMsg.offset: float32; exactly 6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsRobotMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsRobotMsg_offset :: [Float]
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/RobotMsg.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsRobotMsg; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsRobotMsg :: Ros1Xarm_msgsRobotMsg
defaultRos1Xarm_msgsRobotMsg =
  Ros1Xarm_msgsRobotMsg
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
    ([])
    (replicate 6 (0))
    (replicate 6 (0))
-- | \@brief Canonical codec identity of xarm_msgs/RobotMsg.
-- \@details Exact identity UWVMROS1_e5509a530075a638bfa1f09cf5fd78c4d609dccbd79ddd75ef50f5061f68b0f7
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsRobotMsg; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsRobotMsgCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/RobotMsg.
-- \@details Exact identity UWVMROS1_e5509a530075a638bfa1f09cf5fd78c4d609dccbd79ddd75ef50f5061f68b0f7
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsRobotMsg; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsRobotMsgCodecIdentity = "UWVMROS1_e5509a530075a638bfa1f09cf5fd78c4d609dccbd79ddd75ef50f5061f68b0f7"
-- | \@brief Encode one complete xarm_msgs/RobotMsg value.
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
-- \@see Ros1Xarm_msgsRobotMsg; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsRobotMsg :: Ros1Xarm_msgsRobotMsg -> Either Word32 B.ByteString
encodeRos1Xarm_msgsRobotMsg value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsRobotMsg_state value))
  b1 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsRobotMsg_mode value))
  b2 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsRobotMsg_cmdnum value))
  b3 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsRobotMsg_mt_brake value))
  b4 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsRobotMsg_mt_able value))
  b5 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsRobotMsg_err value))
  b6 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsRobotMsg_warn value))
  if length (ros1Xarm_msgsRobotMsg_angle value) > 7 then Left 22 else Right ()
  prefix7 <- W.encodeCount 7 (length (ros1Xarm_msgsRobotMsg_angle value))
  b7 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros1Xarm_msgsRobotMsg_angle value)
  if length (ros1Xarm_msgsRobotMsg_pose value) /= 6 then Left 22 else Right ()
  b8 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros1Xarm_msgsRobotMsg_pose value)
  if length (ros1Xarm_msgsRobotMsg_offset value) /= 6 then Left 22 else Right ()
  b9 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros1Xarm_msgsRobotMsg_offset value)
  W.bounded 94 [b0, b1, b2, b3, b4, b5, b6, prefix7, b7, b8, b9]
-- | \@brief Read the ordered canonical fields of xarm_msgs/RobotMsg.
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
-- \@see Ros1Xarm_msgsRobotMsg; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsRobotMsg :: W.Decoder Ros1Xarm_msgsRobotMsg
readRos1Xarm_msgsRobotMsg = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- fromIntegral <$> W.signed 2
  a2 <- fromIntegral <$> W.signed 2
  a3 <- fromIntegral <$> W.signed 2
  a4 <- fromIntegral <$> W.signed 2
  a5 <- fromIntegral <$> W.signed 2
  a6 <- fromIntegral <$> W.signed 2
  count7 <- W.count 7
  a7 <- replicateM count7 (W.float32)
  a8 <- replicateM 6 (W.float32)
  a9 <- replicateM 6 (W.float32)
  let value = Ros1Xarm_msgsRobotMsg a0 a1 a2 a3 a4 a5 a6 a7 a8 a9
  case encodeRos1Xarm_msgsRobotMsg value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/RobotMsg value.
-- \@details Require the complete 66..94-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsRobotMsg; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsRobotMsg :: B.ByteString -> Either Word32 Ros1Xarm_msgsRobotMsg
decodeRos1Xarm_msgsRobotMsg = W.runDecoder 94 readRos1Xarm_msgsRobotMsg
instance Canonical Ros1Xarm_msgsRobotMsg where
  maximumBytes _ = 94
  encodeValue = encodeRos1Xarm_msgsRobotMsg
  readValue = readRos1Xarm_msgsRobotMsg
-- | \@brief Complete ROS 1 xarm_msgs/ClearErrRequest value.
-- \@details All 0 declared fields are retained in source order. The canonical representation occupies
-- 0..0 bytes and is identified by
-- UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsClearErrRequest = Ros1Xarm_msgsClearErrRequest deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/ClearErrRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsClearErrRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsClearErrRequest :: Ros1Xarm_msgsClearErrRequest
defaultRos1Xarm_msgsClearErrRequest = Ros1Xarm_msgsClearErrRequest 
-- | \@brief Canonical codec identity of xarm_msgs/ClearErrRequest.
-- \@details Exact identity UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsClearErrRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsClearErrRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/ClearErrRequest.
-- \@details Exact identity UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsClearErrRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsClearErrRequestCodecIdentity = "UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8"
-- | \@brief Encode one complete xarm_msgs/ClearErrRequest value.
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
-- \@see Ros1Xarm_msgsClearErrRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsClearErrRequest :: Ros1Xarm_msgsClearErrRequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsClearErrRequest value = do
  W.bounded 0 []
-- | \@brief Read the ordered canonical fields of xarm_msgs/ClearErrRequest.
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
-- \@see Ros1Xarm_msgsClearErrRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsClearErrRequest :: W.Decoder Ros1Xarm_msgsClearErrRequest
readRos1Xarm_msgsClearErrRequest = do
  let value = Ros1Xarm_msgsClearErrRequest 
  case encodeRos1Xarm_msgsClearErrRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/ClearErrRequest value.
-- \@details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsClearErrRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsClearErrRequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsClearErrRequest
decodeRos1Xarm_msgsClearErrRequest = W.runDecoder 0 readRos1Xarm_msgsClearErrRequest
instance Canonical Ros1Xarm_msgsClearErrRequest where
  maximumBytes _ = 0
  encodeValue = encodeRos1Xarm_msgsClearErrRequest
  readValue = readRos1Xarm_msgsClearErrRequest
-- | \@brief Complete ROS 1 xarm_msgs/ClearErrResponse value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 6..262 bytes and is identified by
-- UWVMROS1_33a2634f63b2881e08efe4031630e29743093d33cf0da846bad1551329243054.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsClearErrResponse = Ros1Xarm_msgsClearErrResponse
  {
    -- | \@brief xarm_msgs/ClearErrResponse.ret: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsClearErrResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsClearErrResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/ClearErrResponse.message: string; each string is 0..256 bytes; strict UTF-8
    -- | with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsClearErrResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsClearErrResponse_message :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/ClearErrResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsClearErrResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsClearErrResponse :: Ros1Xarm_msgsClearErrResponse
defaultRos1Xarm_msgsClearErrResponse = Ros1Xarm_msgsClearErrResponse (0) (T.empty)
-- | \@brief Canonical codec identity of xarm_msgs/ClearErrResponse.
-- \@details Exact identity UWVMROS1_33a2634f63b2881e08efe4031630e29743093d33cf0da846bad1551329243054
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsClearErrResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsClearErrResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/ClearErrResponse.
-- \@details Exact identity UWVMROS1_33a2634f63b2881e08efe4031630e29743093d33cf0da846bad1551329243054
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsClearErrResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsClearErrResponseCodecIdentity = "UWVMROS1_33a2634f63b2881e08efe4031630e29743093d33cf0da846bad1551329243054"
-- | \@brief Encode one complete xarm_msgs/ClearErrResponse value.
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
-- \@see Ros1Xarm_msgsClearErrResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsClearErrResponse :: Ros1Xarm_msgsClearErrResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsClearErrResponse value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsClearErrResponse_ret value))
  b1 <- W.encodeText 256 True (ros1Xarm_msgsClearErrResponse_message value)
  W.bounded 262 [b0, b1]
-- | \@brief Read the ordered canonical fields of xarm_msgs/ClearErrResponse.
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
-- \@see Ros1Xarm_msgsClearErrResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsClearErrResponse :: W.Decoder Ros1Xarm_msgsClearErrResponse
readRos1Xarm_msgsClearErrResponse = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- W.text 256 True
  let value = Ros1Xarm_msgsClearErrResponse a0 a1
  case encodeRos1Xarm_msgsClearErrResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/ClearErrResponse value.
-- \@details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsClearErrResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsClearErrResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsClearErrResponse
decodeRos1Xarm_msgsClearErrResponse = W.runDecoder 262 readRos1Xarm_msgsClearErrResponse
instance Canonical Ros1Xarm_msgsClearErrResponse where
  maximumBytes _ = 262
  encodeValue = encodeRos1Xarm_msgsClearErrResponse
  readValue = readRos1Xarm_msgsClearErrResponse
-- | \@brief Complete ROS 1 xarm_msgs/GetAnalogIORequest value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 2..2 bytes and is identified by
-- UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsGetAnalogIORequest = Ros1Xarm_msgsGetAnalogIORequest
  {
    -- | \@brief xarm_msgs/GetAnalogIORequest.port_num: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGetAnalogIORequest_port_num :: Int16
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/GetAnalogIORequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsGetAnalogIORequest :: Ros1Xarm_msgsGetAnalogIORequest
defaultRos1Xarm_msgsGetAnalogIORequest = Ros1Xarm_msgsGetAnalogIORequest (0)
-- | \@brief Canonical codec identity of xarm_msgs/GetAnalogIORequest.
-- \@details Exact identity UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGetAnalogIORequestCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/GetAnalogIORequest.
-- \@details Exact identity UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGetAnalogIORequestCodecIdentity = "UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8"
-- | \@brief Encode one complete xarm_msgs/GetAnalogIORequest value.
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
-- \@see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsGetAnalogIORequest :: Ros1Xarm_msgsGetAnalogIORequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsGetAnalogIORequest value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsGetAnalogIORequest_port_num value))
  W.bounded 2 [b0]
-- | \@brief Read the ordered canonical fields of xarm_msgs/GetAnalogIORequest.
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
-- \@see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsGetAnalogIORequest :: W.Decoder Ros1Xarm_msgsGetAnalogIORequest
readRos1Xarm_msgsGetAnalogIORequest = do
  a0 <- fromIntegral <$> W.signed 2
  let value = Ros1Xarm_msgsGetAnalogIORequest a0
  case encodeRos1Xarm_msgsGetAnalogIORequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/GetAnalogIORequest value.
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
-- \@see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsGetAnalogIORequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsGetAnalogIORequest
decodeRos1Xarm_msgsGetAnalogIORequest = W.runDecoder 2 readRos1Xarm_msgsGetAnalogIORequest
instance Canonical Ros1Xarm_msgsGetAnalogIORequest where
  maximumBytes _ = 2
  encodeValue = encodeRos1Xarm_msgsGetAnalogIORequest
  readValue = readRos1Xarm_msgsGetAnalogIORequest
-- | \@brief Complete ROS 1 xarm_msgs/GetAnalogIOResponse value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies
-- 10..266 bytes and is identified by
-- UWVMROS1_137ef1f1e94ed2e165023544043960031650f0848512d81afc97a2725144b835.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsGetAnalogIOResponse = Ros1Xarm_msgsGetAnalogIOResponse
  {
    -- | \@brief xarm_msgs/GetAnalogIOResponse.analog_value: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGetAnalogIOResponse_analog_value :: Float
  ,
    -- | \@brief xarm_msgs/GetAnalogIOResponse.ret: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGetAnalogIOResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/GetAnalogIOResponse.message: string; each string is 0..256 bytes; strict UTF-8
    -- | with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGetAnalogIOResponse_message :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/GetAnalogIOResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsGetAnalogIOResponse :: Ros1Xarm_msgsGetAnalogIOResponse
defaultRos1Xarm_msgsGetAnalogIOResponse = Ros1Xarm_msgsGetAnalogIOResponse (0) (0) (T.empty)
-- | \@brief Canonical codec identity of xarm_msgs/GetAnalogIOResponse.
-- \@details Exact identity UWVMROS1_137ef1f1e94ed2e165023544043960031650f0848512d81afc97a2725144b835
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGetAnalogIOResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/GetAnalogIOResponse.
-- \@details Exact identity UWVMROS1_137ef1f1e94ed2e165023544043960031650f0848512d81afc97a2725144b835
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGetAnalogIOResponseCodecIdentity = "UWVMROS1_137ef1f1e94ed2e165023544043960031650f0848512d81afc97a2725144b835"
-- | \@brief Encode one complete xarm_msgs/GetAnalogIOResponse value.
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
-- \@see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsGetAnalogIOResponse :: Ros1Xarm_msgsGetAnalogIOResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsGetAnalogIOResponse value = do
  b0 <- W.encodeFloat32 (ros1Xarm_msgsGetAnalogIOResponse_analog_value value)
  b1 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsGetAnalogIOResponse_ret value))
  b2 <- W.encodeText 256 True (ros1Xarm_msgsGetAnalogIOResponse_message value)
  W.bounded 266 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of xarm_msgs/GetAnalogIOResponse.
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
-- \@see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsGetAnalogIOResponse :: W.Decoder Ros1Xarm_msgsGetAnalogIOResponse
readRos1Xarm_msgsGetAnalogIOResponse = do
  a0 <- W.float32
  a1 <- fromIntegral <$> W.signed 2
  a2 <- W.text 256 True
  let value = Ros1Xarm_msgsGetAnalogIOResponse a0 a1 a2
  case encodeRos1Xarm_msgsGetAnalogIOResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/GetAnalogIOResponse value.
-- \@details Require the complete 10..266-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsGetAnalogIOResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsGetAnalogIOResponse
decodeRos1Xarm_msgsGetAnalogIOResponse = W.runDecoder 266 readRos1Xarm_msgsGetAnalogIOResponse
instance Canonical Ros1Xarm_msgsGetAnalogIOResponse where
  maximumBytes _ = 266
  encodeValue = encodeRos1Xarm_msgsGetAnalogIOResponse
  readValue = readRos1Xarm_msgsGetAnalogIOResponse
-- | \@brief Complete ROS 1 xarm_msgs/GetDigitalIORequest value.
-- \@details All 0 declared fields are retained in source order. The canonical representation occupies
-- 0..0 bytes and is identified by
-- UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsGetDigitalIORequest = Ros1Xarm_msgsGetDigitalIORequest deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/GetDigitalIORequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsGetDigitalIORequest :: Ros1Xarm_msgsGetDigitalIORequest
defaultRos1Xarm_msgsGetDigitalIORequest = Ros1Xarm_msgsGetDigitalIORequest 
-- | \@brief Canonical codec identity of xarm_msgs/GetDigitalIORequest.
-- \@details Exact identity UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGetDigitalIORequestCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/GetDigitalIORequest.
-- \@details Exact identity UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGetDigitalIORequestCodecIdentity = "UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da"
-- | \@brief Encode one complete xarm_msgs/GetDigitalIORequest value.
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
-- \@see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsGetDigitalIORequest :: Ros1Xarm_msgsGetDigitalIORequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsGetDigitalIORequest value = do
  W.bounded 0 []
-- | \@brief Read the ordered canonical fields of xarm_msgs/GetDigitalIORequest.
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
-- \@see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsGetDigitalIORequest :: W.Decoder Ros1Xarm_msgsGetDigitalIORequest
readRos1Xarm_msgsGetDigitalIORequest = do
  let value = Ros1Xarm_msgsGetDigitalIORequest 
  case encodeRos1Xarm_msgsGetDigitalIORequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/GetDigitalIORequest value.
-- \@details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsGetDigitalIORequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsGetDigitalIORequest
decodeRos1Xarm_msgsGetDigitalIORequest = W.runDecoder 0 readRos1Xarm_msgsGetDigitalIORequest
instance Canonical Ros1Xarm_msgsGetDigitalIORequest where
  maximumBytes _ = 0
  encodeValue = encodeRos1Xarm_msgsGetDigitalIORequest
  readValue = readRos1Xarm_msgsGetDigitalIORequest
-- | \@brief Complete ROS 1 xarm_msgs/GetDigitalIOResponse value.
-- \@details All 4 declared fields are retained in source order. The canonical representation occupies
-- 14..270 bytes and is identified by
-- UWVMROS1_7af72b4f19e23493c4b4c2cf7c88076549e34ed741a04ee758db31de11457498.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsGetDigitalIOResponse = Ros1Xarm_msgsGetDigitalIOResponse
  {
    -- | \@brief xarm_msgs/GetDigitalIOResponse.digital_1: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGetDigitalIOResponse_digital_1 :: Int32
  ,
    -- | \@brief xarm_msgs/GetDigitalIOResponse.digital_2: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGetDigitalIOResponse_digital_2 :: Int32
  ,
    -- | \@brief xarm_msgs/GetDigitalIOResponse.ret: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGetDigitalIOResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/GetDigitalIOResponse.message: string; each string is 0..256 bytes; strict UTF-8
    -- | with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGetDigitalIOResponse_message :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/GetDigitalIOResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsGetDigitalIOResponse :: Ros1Xarm_msgsGetDigitalIOResponse
defaultRos1Xarm_msgsGetDigitalIOResponse = Ros1Xarm_msgsGetDigitalIOResponse (0) (0) (0) (T.empty)
-- | \@brief Canonical codec identity of xarm_msgs/GetDigitalIOResponse.
-- \@details Exact identity UWVMROS1_7af72b4f19e23493c4b4c2cf7c88076549e34ed741a04ee758db31de11457498
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGetDigitalIOResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/GetDigitalIOResponse.
-- \@details Exact identity UWVMROS1_7af72b4f19e23493c4b4c2cf7c88076549e34ed741a04ee758db31de11457498
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGetDigitalIOResponseCodecIdentity = "UWVMROS1_7af72b4f19e23493c4b4c2cf7c88076549e34ed741a04ee758db31de11457498"
-- | \@brief Encode one complete xarm_msgs/GetDigitalIOResponse value.
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
-- \@see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsGetDigitalIOResponse :: Ros1Xarm_msgsGetDigitalIOResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsGetDigitalIOResponse value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros1Xarm_msgsGetDigitalIOResponse_digital_1 value))
  b1 <- W.encodeSigned 4 (fromIntegral (ros1Xarm_msgsGetDigitalIOResponse_digital_2 value))
  b2 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsGetDigitalIOResponse_ret value))
  b3 <- W.encodeText 256 True (ros1Xarm_msgsGetDigitalIOResponse_message value)
  W.bounded 270 [b0, b1, b2, b3]
-- | \@brief Read the ordered canonical fields of xarm_msgs/GetDigitalIOResponse.
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
-- \@see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsGetDigitalIOResponse :: W.Decoder Ros1Xarm_msgsGetDigitalIOResponse
readRos1Xarm_msgsGetDigitalIOResponse = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- fromIntegral <$> W.signed 4
  a2 <- fromIntegral <$> W.signed 2
  a3 <- W.text 256 True
  let value = Ros1Xarm_msgsGetDigitalIOResponse a0 a1 a2 a3
  case encodeRos1Xarm_msgsGetDigitalIOResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/GetDigitalIOResponse value.
-- \@details Require the complete 14..270-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsGetDigitalIOResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsGetDigitalIOResponse
decodeRos1Xarm_msgsGetDigitalIOResponse = W.runDecoder 270 readRos1Xarm_msgsGetDigitalIOResponse
instance Canonical Ros1Xarm_msgsGetDigitalIOResponse where
  maximumBytes _ = 270
  encodeValue = encodeRos1Xarm_msgsGetDigitalIOResponse
  readValue = readRos1Xarm_msgsGetDigitalIOResponse
-- | \@brief Complete ROS 1 xarm_msgs/MoveRequest value.
-- \@details All 5 declared fields are retained in source order. The canonical representation occupies
-- 20..148 bytes and is identified by
-- UWVMROS1_9bfae5d05a608fb8f020e0cdb251b7e3b00e50ff610a26b70093837f365d4ced.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsMoveRequest = Ros1Xarm_msgsMoveRequest
  {
    -- | \@brief xarm_msgs/MoveRequest.pose: float32; 0..32 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsMoveRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsMoveRequest_pose :: [Float]
  ,
    -- | \@brief xarm_msgs/MoveRequest.mvvelo: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsMoveRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsMoveRequest_mvvelo :: Float
  ,
    -- | \@brief xarm_msgs/MoveRequest.mvacc: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsMoveRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsMoveRequest_mvacc :: Float
  ,
    -- | \@brief xarm_msgs/MoveRequest.mvtime: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsMoveRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsMoveRequest_mvtime :: Float
  ,
    -- | \@brief xarm_msgs/MoveRequest.mvradii: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsMoveRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsMoveRequest_mvradii :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/MoveRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsMoveRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsMoveRequest :: Ros1Xarm_msgsMoveRequest
defaultRos1Xarm_msgsMoveRequest = Ros1Xarm_msgsMoveRequest ([]) (0) (0) (0) (0)
-- | \@brief Canonical codec identity of xarm_msgs/MoveRequest.
-- \@details Exact identity UWVMROS1_9bfae5d05a608fb8f020e0cdb251b7e3b00e50ff610a26b70093837f365d4ced
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsMoveRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsMoveRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/MoveRequest.
-- \@details Exact identity UWVMROS1_9bfae5d05a608fb8f020e0cdb251b7e3b00e50ff610a26b70093837f365d4ced
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsMoveRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsMoveRequestCodecIdentity = "UWVMROS1_9bfae5d05a608fb8f020e0cdb251b7e3b00e50ff610a26b70093837f365d4ced"
-- | \@brief Encode one complete xarm_msgs/MoveRequest value.
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
-- \@see Ros1Xarm_msgsMoveRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsMoveRequest :: Ros1Xarm_msgsMoveRequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsMoveRequest value = do
  if length (ros1Xarm_msgsMoveRequest_pose value) > 32 then Left 22 else Right ()
  prefix0 <- W.encodeCount 32 (length (ros1Xarm_msgsMoveRequest_pose value))
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros1Xarm_msgsMoveRequest_pose value)
  b1 <- W.encodeFloat32 (ros1Xarm_msgsMoveRequest_mvvelo value)
  b2 <- W.encodeFloat32 (ros1Xarm_msgsMoveRequest_mvacc value)
  b3 <- W.encodeFloat32 (ros1Xarm_msgsMoveRequest_mvtime value)
  b4 <- W.encodeFloat32 (ros1Xarm_msgsMoveRequest_mvradii value)
  W.bounded 148 [prefix0, b0, b1, b2, b3, b4]
-- | \@brief Read the ordered canonical fields of xarm_msgs/MoveRequest.
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
-- \@see Ros1Xarm_msgsMoveRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsMoveRequest :: W.Decoder Ros1Xarm_msgsMoveRequest
readRos1Xarm_msgsMoveRequest = do
  count0 <- W.count 32
  a0 <- replicateM count0 (W.float32)
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  let value = Ros1Xarm_msgsMoveRequest a0 a1 a2 a3 a4
  case encodeRos1Xarm_msgsMoveRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/MoveRequest value.
-- \@details Require the complete 20..148-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsMoveRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsMoveRequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsMoveRequest
decodeRos1Xarm_msgsMoveRequest = W.runDecoder 148 readRos1Xarm_msgsMoveRequest
instance Canonical Ros1Xarm_msgsMoveRequest where
  maximumBytes _ = 148
  encodeValue = encodeRos1Xarm_msgsMoveRequest
  readValue = readRos1Xarm_msgsMoveRequest
-- | \@brief Complete ROS 1 xarm_msgs/MoveResponse value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 6..262 bytes and is identified by
-- UWVMROS1_6081579d8a79f052cbb7616c0d366bad3948ac3b1380b118ad5b03e4123ce53d.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsMoveResponse = Ros1Xarm_msgsMoveResponse
  {
    -- | \@brief xarm_msgs/MoveResponse.ret: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsMoveResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsMoveResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/MoveResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no
    -- | embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsMoveResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsMoveResponse_message :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/MoveResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsMoveResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsMoveResponse :: Ros1Xarm_msgsMoveResponse
defaultRos1Xarm_msgsMoveResponse = Ros1Xarm_msgsMoveResponse (0) (T.empty)
-- | \@brief Canonical codec identity of xarm_msgs/MoveResponse.
-- \@details Exact identity UWVMROS1_6081579d8a79f052cbb7616c0d366bad3948ac3b1380b118ad5b03e4123ce53d
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsMoveResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsMoveResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/MoveResponse.
-- \@details Exact identity UWVMROS1_6081579d8a79f052cbb7616c0d366bad3948ac3b1380b118ad5b03e4123ce53d
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsMoveResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsMoveResponseCodecIdentity = "UWVMROS1_6081579d8a79f052cbb7616c0d366bad3948ac3b1380b118ad5b03e4123ce53d"
-- | \@brief Encode one complete xarm_msgs/MoveResponse value.
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
-- \@see Ros1Xarm_msgsMoveResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsMoveResponse :: Ros1Xarm_msgsMoveResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsMoveResponse value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsMoveResponse_ret value))
  b1 <- W.encodeText 256 True (ros1Xarm_msgsMoveResponse_message value)
  W.bounded 262 [b0, b1]
-- | \@brief Read the ordered canonical fields of xarm_msgs/MoveResponse.
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
-- \@see Ros1Xarm_msgsMoveResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsMoveResponse :: W.Decoder Ros1Xarm_msgsMoveResponse
readRos1Xarm_msgsMoveResponse = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- W.text 256 True
  let value = Ros1Xarm_msgsMoveResponse a0 a1
  case encodeRos1Xarm_msgsMoveResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/MoveResponse value.
-- \@details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsMoveResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsMoveResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsMoveResponse
decodeRos1Xarm_msgsMoveResponse = W.runDecoder 262 readRos1Xarm_msgsMoveResponse
instance Canonical Ros1Xarm_msgsMoveResponse where
  maximumBytes _ = 262
  encodeValue = encodeRos1Xarm_msgsMoveResponse
  readValue = readRos1Xarm_msgsMoveResponse
-- | \@brief Complete ROS 1 xarm_msgs/SetAxisRequest value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 4..4 bytes and is identified by
-- UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsSetAxisRequest = Ros1Xarm_msgsSetAxisRequest
  {
    -- | \@brief xarm_msgs/SetAxisRequest.id: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetAxisRequest_id :: Int16
  ,
    -- | \@brief xarm_msgs/SetAxisRequest.data: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetAxisRequest_data :: Int16
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/SetAxisRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsSetAxisRequest :: Ros1Xarm_msgsSetAxisRequest
defaultRos1Xarm_msgsSetAxisRequest = Ros1Xarm_msgsSetAxisRequest (0) (0)
-- | \@brief Canonical codec identity of xarm_msgs/SetAxisRequest.
-- \@details Exact identity UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetAxisRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/SetAxisRequest.
-- \@details Exact identity UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetAxisRequestCodecIdentity = "UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6"
-- | \@brief Encode one complete xarm_msgs/SetAxisRequest value.
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
-- \@see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsSetAxisRequest :: Ros1Xarm_msgsSetAxisRequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsSetAxisRequest value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsSetAxisRequest_id value))
  b1 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsSetAxisRequest_data value))
  W.bounded 4 [b0, b1]
-- | \@brief Read the ordered canonical fields of xarm_msgs/SetAxisRequest.
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
-- \@see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsSetAxisRequest :: W.Decoder Ros1Xarm_msgsSetAxisRequest
readRos1Xarm_msgsSetAxisRequest = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- fromIntegral <$> W.signed 2
  let value = Ros1Xarm_msgsSetAxisRequest a0 a1
  case encodeRos1Xarm_msgsSetAxisRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/SetAxisRequest value.
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
-- \@see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsSetAxisRequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsSetAxisRequest
decodeRos1Xarm_msgsSetAxisRequest = W.runDecoder 4 readRos1Xarm_msgsSetAxisRequest
instance Canonical Ros1Xarm_msgsSetAxisRequest where
  maximumBytes _ = 4
  encodeValue = encodeRos1Xarm_msgsSetAxisRequest
  readValue = readRos1Xarm_msgsSetAxisRequest
-- | \@brief Complete ROS 1 xarm_msgs/SetAxisResponse value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 6..262 bytes and is identified by
-- UWVMROS1_f4de9fe78f1ee22ef7c06a47de4dfd6dbd0d4f9d25021ee58779a1f241304a27.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsSetAxisResponse = Ros1Xarm_msgsSetAxisResponse
  {
    -- | \@brief xarm_msgs/SetAxisResponse.ret: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetAxisResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/SetAxisResponse.message: string; each string is 0..256 bytes; strict UTF-8 with
    -- | no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetAxisResponse_message :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/SetAxisResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsSetAxisResponse :: Ros1Xarm_msgsSetAxisResponse
defaultRos1Xarm_msgsSetAxisResponse = Ros1Xarm_msgsSetAxisResponse (0) (T.empty)
-- | \@brief Canonical codec identity of xarm_msgs/SetAxisResponse.
-- \@details Exact identity UWVMROS1_f4de9fe78f1ee22ef7c06a47de4dfd6dbd0d4f9d25021ee58779a1f241304a27
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetAxisResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/SetAxisResponse.
-- \@details Exact identity UWVMROS1_f4de9fe78f1ee22ef7c06a47de4dfd6dbd0d4f9d25021ee58779a1f241304a27
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetAxisResponseCodecIdentity = "UWVMROS1_f4de9fe78f1ee22ef7c06a47de4dfd6dbd0d4f9d25021ee58779a1f241304a27"
-- | \@brief Encode one complete xarm_msgs/SetAxisResponse value.
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
-- \@see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsSetAxisResponse :: Ros1Xarm_msgsSetAxisResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsSetAxisResponse value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsSetAxisResponse_ret value))
  b1 <- W.encodeText 256 True (ros1Xarm_msgsSetAxisResponse_message value)
  W.bounded 262 [b0, b1]
-- | \@brief Read the ordered canonical fields of xarm_msgs/SetAxisResponse.
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
-- \@see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsSetAxisResponse :: W.Decoder Ros1Xarm_msgsSetAxisResponse
readRos1Xarm_msgsSetAxisResponse = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- W.text 256 True
  let value = Ros1Xarm_msgsSetAxisResponse a0 a1
  case encodeRos1Xarm_msgsSetAxisResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/SetAxisResponse value.
-- \@details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsSetAxisResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsSetAxisResponse
decodeRos1Xarm_msgsSetAxisResponse = W.runDecoder 262 readRos1Xarm_msgsSetAxisResponse
instance Canonical Ros1Xarm_msgsSetAxisResponse where
  maximumBytes _ = 262
  encodeValue = encodeRos1Xarm_msgsSetAxisResponse
  readValue = readRos1Xarm_msgsSetAxisResponse
-- | \@brief Complete ROS 1 xarm_msgs/SetDigitalIORequest value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 4..4 bytes and is identified by
-- UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsSetDigitalIORequest = Ros1Xarm_msgsSetDigitalIORequest
  {
    -- | \@brief xarm_msgs/SetDigitalIORequest.io_num: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetDigitalIORequest_io_num :: Int16
  ,
    -- | \@brief xarm_msgs/SetDigitalIORequest.value: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetDigitalIORequest_value :: Int16
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/SetDigitalIORequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsSetDigitalIORequest :: Ros1Xarm_msgsSetDigitalIORequest
defaultRos1Xarm_msgsSetDigitalIORequest = Ros1Xarm_msgsSetDigitalIORequest (0) (0)
-- | \@brief Canonical codec identity of xarm_msgs/SetDigitalIORequest.
-- \@details Exact identity UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetDigitalIORequestCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/SetDigitalIORequest.
-- \@details Exact identity UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetDigitalIORequestCodecIdentity = "UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959"
-- | \@brief Encode one complete xarm_msgs/SetDigitalIORequest value.
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
-- \@see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsSetDigitalIORequest :: Ros1Xarm_msgsSetDigitalIORequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsSetDigitalIORequest value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsSetDigitalIORequest_io_num value))
  b1 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsSetDigitalIORequest_value value))
  W.bounded 4 [b0, b1]
-- | \@brief Read the ordered canonical fields of xarm_msgs/SetDigitalIORequest.
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
-- \@see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsSetDigitalIORequest :: W.Decoder Ros1Xarm_msgsSetDigitalIORequest
readRos1Xarm_msgsSetDigitalIORequest = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- fromIntegral <$> W.signed 2
  let value = Ros1Xarm_msgsSetDigitalIORequest a0 a1
  case encodeRos1Xarm_msgsSetDigitalIORequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/SetDigitalIORequest value.
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
-- \@see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsSetDigitalIORequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsSetDigitalIORequest
decodeRos1Xarm_msgsSetDigitalIORequest = W.runDecoder 4 readRos1Xarm_msgsSetDigitalIORequest
instance Canonical Ros1Xarm_msgsSetDigitalIORequest where
  maximumBytes _ = 4
  encodeValue = encodeRos1Xarm_msgsSetDigitalIORequest
  readValue = readRos1Xarm_msgsSetDigitalIORequest
-- | \@brief Complete ROS 1 xarm_msgs/SetDigitalIOResponse value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 6..262 bytes and is identified by
-- UWVMROS1_7f3aa4fdf4749d20e4ef13a51ecaa589df1a9a470ff3658ebb7c343e5940046a.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsSetDigitalIOResponse = Ros1Xarm_msgsSetDigitalIOResponse
  {
    -- | \@brief xarm_msgs/SetDigitalIOResponse.ret: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetDigitalIOResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/SetDigitalIOResponse.message: string; each string is 0..256 bytes; strict UTF-8
    -- | with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetDigitalIOResponse_message :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/SetDigitalIOResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsSetDigitalIOResponse :: Ros1Xarm_msgsSetDigitalIOResponse
defaultRos1Xarm_msgsSetDigitalIOResponse = Ros1Xarm_msgsSetDigitalIOResponse (0) (T.empty)
-- | \@brief Canonical codec identity of xarm_msgs/SetDigitalIOResponse.
-- \@details Exact identity UWVMROS1_7f3aa4fdf4749d20e4ef13a51ecaa589df1a9a470ff3658ebb7c343e5940046a
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetDigitalIOResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/SetDigitalIOResponse.
-- \@details Exact identity UWVMROS1_7f3aa4fdf4749d20e4ef13a51ecaa589df1a9a470ff3658ebb7c343e5940046a
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetDigitalIOResponseCodecIdentity = "UWVMROS1_7f3aa4fdf4749d20e4ef13a51ecaa589df1a9a470ff3658ebb7c343e5940046a"
-- | \@brief Encode one complete xarm_msgs/SetDigitalIOResponse value.
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
-- \@see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsSetDigitalIOResponse :: Ros1Xarm_msgsSetDigitalIOResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsSetDigitalIOResponse value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsSetDigitalIOResponse_ret value))
  b1 <- W.encodeText 256 True (ros1Xarm_msgsSetDigitalIOResponse_message value)
  W.bounded 262 [b0, b1]
-- | \@brief Read the ordered canonical fields of xarm_msgs/SetDigitalIOResponse.
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
-- \@see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsSetDigitalIOResponse :: W.Decoder Ros1Xarm_msgsSetDigitalIOResponse
readRos1Xarm_msgsSetDigitalIOResponse = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- W.text 256 True
  let value = Ros1Xarm_msgsSetDigitalIOResponse a0 a1
  case encodeRos1Xarm_msgsSetDigitalIOResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/SetDigitalIOResponse value.
-- \@details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsSetDigitalIOResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsSetDigitalIOResponse
decodeRos1Xarm_msgsSetDigitalIOResponse = W.runDecoder 262 readRos1Xarm_msgsSetDigitalIOResponse
instance Canonical Ros1Xarm_msgsSetDigitalIOResponse where
  maximumBytes _ = 262
  encodeValue = encodeRos1Xarm_msgsSetDigitalIOResponse
  readValue = readRos1Xarm_msgsSetDigitalIOResponse
-- | \@brief Complete ROS 1 xarm_msgs/SetInt16Request value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 2..2 bytes and is identified by
-- UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsSetInt16Request = Ros1Xarm_msgsSetInt16Request
  {
    -- | \@brief xarm_msgs/SetInt16Request.data: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetInt16Request; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetInt16Request_data :: Int16
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/SetInt16Request.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsSetInt16Request; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsSetInt16Request :: Ros1Xarm_msgsSetInt16Request
defaultRos1Xarm_msgsSetInt16Request = Ros1Xarm_msgsSetInt16Request (0)
-- | \@brief Canonical codec identity of xarm_msgs/SetInt16Request.
-- \@details Exact identity UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetInt16Request; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetInt16RequestCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/SetInt16Request.
-- \@details Exact identity UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetInt16Request; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetInt16RequestCodecIdentity = "UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7"
-- | \@brief Encode one complete xarm_msgs/SetInt16Request value.
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
-- \@see Ros1Xarm_msgsSetInt16Request; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsSetInt16Request :: Ros1Xarm_msgsSetInt16Request -> Either Word32 B.ByteString
encodeRos1Xarm_msgsSetInt16Request value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsSetInt16Request_data value))
  W.bounded 2 [b0]
-- | \@brief Read the ordered canonical fields of xarm_msgs/SetInt16Request.
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
-- \@see Ros1Xarm_msgsSetInt16Request; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsSetInt16Request :: W.Decoder Ros1Xarm_msgsSetInt16Request
readRos1Xarm_msgsSetInt16Request = do
  a0 <- fromIntegral <$> W.signed 2
  let value = Ros1Xarm_msgsSetInt16Request a0
  case encodeRos1Xarm_msgsSetInt16Request value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/SetInt16Request value.
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
-- \@see Ros1Xarm_msgsSetInt16Request; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsSetInt16Request :: B.ByteString -> Either Word32 Ros1Xarm_msgsSetInt16Request
decodeRos1Xarm_msgsSetInt16Request = W.runDecoder 2 readRos1Xarm_msgsSetInt16Request
instance Canonical Ros1Xarm_msgsSetInt16Request where
  maximumBytes _ = 2
  encodeValue = encodeRos1Xarm_msgsSetInt16Request
  readValue = readRos1Xarm_msgsSetInt16Request
-- | \@brief Complete ROS 1 xarm_msgs/SetInt16Response value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 6..262 bytes and is identified by
-- UWVMROS1_8df1192ff5ed3fc5eaaadf33980726b8764a541d30d062293d378d261367d656.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsSetInt16Response = Ros1Xarm_msgsSetInt16Response
  {
    -- | \@brief xarm_msgs/SetInt16Response.ret: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetInt16Response; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetInt16Response_ret :: Int16
  ,
    -- | \@brief xarm_msgs/SetInt16Response.message: string; each string is 0..256 bytes; strict UTF-8
    -- | with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetInt16Response; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetInt16Response_message :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/SetInt16Response.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsSetInt16Response; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsSetInt16Response :: Ros1Xarm_msgsSetInt16Response
defaultRos1Xarm_msgsSetInt16Response = Ros1Xarm_msgsSetInt16Response (0) (T.empty)
-- | \@brief Canonical codec identity of xarm_msgs/SetInt16Response.
-- \@details Exact identity UWVMROS1_8df1192ff5ed3fc5eaaadf33980726b8764a541d30d062293d378d261367d656
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetInt16Response; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetInt16ResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/SetInt16Response.
-- \@details Exact identity UWVMROS1_8df1192ff5ed3fc5eaaadf33980726b8764a541d30d062293d378d261367d656
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetInt16Response; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetInt16ResponseCodecIdentity = "UWVMROS1_8df1192ff5ed3fc5eaaadf33980726b8764a541d30d062293d378d261367d656"
-- | \@brief Encode one complete xarm_msgs/SetInt16Response value.
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
-- \@see Ros1Xarm_msgsSetInt16Response; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsSetInt16Response :: Ros1Xarm_msgsSetInt16Response -> Either Word32 B.ByteString
encodeRos1Xarm_msgsSetInt16Response value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsSetInt16Response_ret value))
  b1 <- W.encodeText 256 True (ros1Xarm_msgsSetInt16Response_message value)
  W.bounded 262 [b0, b1]
-- | \@brief Read the ordered canonical fields of xarm_msgs/SetInt16Response.
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
-- \@see Ros1Xarm_msgsSetInt16Response; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsSetInt16Response :: W.Decoder Ros1Xarm_msgsSetInt16Response
readRos1Xarm_msgsSetInt16Response = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- W.text 256 True
  let value = Ros1Xarm_msgsSetInt16Response a0 a1
  case encodeRos1Xarm_msgsSetInt16Response value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/SetInt16Response value.
-- \@details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsSetInt16Response; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsSetInt16Response :: B.ByteString -> Either Word32 Ros1Xarm_msgsSetInt16Response
decodeRos1Xarm_msgsSetInt16Response = W.runDecoder 262 readRos1Xarm_msgsSetInt16Response
instance Canonical Ros1Xarm_msgsSetInt16Response where
  maximumBytes _ = 262
  encodeValue = encodeRos1Xarm_msgsSetInt16Response
  readValue = readRos1Xarm_msgsSetInt16Response
-- | \@brief Complete ROS 1 xarm_msgs/TCPOffsetRequest value.
-- \@details All 6 declared fields are retained in source order. The canonical representation occupies
-- 24..24 bytes and is identified by
-- UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsTCPOffsetRequest = Ros1Xarm_msgsTCPOffsetRequest
  {
    -- | \@brief xarm_msgs/TCPOffsetRequest.x: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsTCPOffsetRequest_x :: Float
  ,
    -- | \@brief xarm_msgs/TCPOffsetRequest.y: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsTCPOffsetRequest_y :: Float
  ,
    -- | \@brief xarm_msgs/TCPOffsetRequest.z: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsTCPOffsetRequest_z :: Float
  ,
    -- | \@brief xarm_msgs/TCPOffsetRequest.roll: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsTCPOffsetRequest_roll :: Float
  ,
    -- | \@brief xarm_msgs/TCPOffsetRequest.pitch: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsTCPOffsetRequest_pitch :: Float
  ,
    -- | \@brief xarm_msgs/TCPOffsetRequest.yaw: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsTCPOffsetRequest_yaw :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/TCPOffsetRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsTCPOffsetRequest :: Ros1Xarm_msgsTCPOffsetRequest
defaultRos1Xarm_msgsTCPOffsetRequest = Ros1Xarm_msgsTCPOffsetRequest (0) (0) (0) (0) (0) (0)
-- | \@brief Canonical codec identity of xarm_msgs/TCPOffsetRequest.
-- \@details Exact identity UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsTCPOffsetRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/TCPOffsetRequest.
-- \@details Exact identity UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsTCPOffsetRequestCodecIdentity = "UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd"
-- | \@brief Encode one complete xarm_msgs/TCPOffsetRequest value.
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
-- \@see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsTCPOffsetRequest :: Ros1Xarm_msgsTCPOffsetRequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsTCPOffsetRequest value = do
  b0 <- W.encodeFloat32 (ros1Xarm_msgsTCPOffsetRequest_x value)
  b1 <- W.encodeFloat32 (ros1Xarm_msgsTCPOffsetRequest_y value)
  b2 <- W.encodeFloat32 (ros1Xarm_msgsTCPOffsetRequest_z value)
  b3 <- W.encodeFloat32 (ros1Xarm_msgsTCPOffsetRequest_roll value)
  b4 <- W.encodeFloat32 (ros1Xarm_msgsTCPOffsetRequest_pitch value)
  b5 <- W.encodeFloat32 (ros1Xarm_msgsTCPOffsetRequest_yaw value)
  W.bounded 24 [b0, b1, b2, b3, b4, b5]
-- | \@brief Read the ordered canonical fields of xarm_msgs/TCPOffsetRequest.
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
-- \@see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsTCPOffsetRequest :: W.Decoder Ros1Xarm_msgsTCPOffsetRequest
readRos1Xarm_msgsTCPOffsetRequest = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  let value = Ros1Xarm_msgsTCPOffsetRequest a0 a1 a2 a3 a4 a5
  case encodeRos1Xarm_msgsTCPOffsetRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/TCPOffsetRequest value.
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
-- \@see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsTCPOffsetRequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsTCPOffsetRequest
decodeRos1Xarm_msgsTCPOffsetRequest = W.runDecoder 24 readRos1Xarm_msgsTCPOffsetRequest
instance Canonical Ros1Xarm_msgsTCPOffsetRequest where
  maximumBytes _ = 24
  encodeValue = encodeRos1Xarm_msgsTCPOffsetRequest
  readValue = readRos1Xarm_msgsTCPOffsetRequest
-- | \@brief Complete ROS 1 xarm_msgs/TCPOffsetResponse value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 6..262 bytes and is identified by
-- UWVMROS1_2f06deb14c2f0acce41ada4fecefd70e32bda4bc84b82354dffe333d2337464d.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsTCPOffsetResponse = Ros1Xarm_msgsTCPOffsetResponse
  {
    -- | \@brief xarm_msgs/TCPOffsetResponse.ret: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsTCPOffsetResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/TCPOffsetResponse.message: string; each string is 0..256 bytes; strict UTF-8
    -- | with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsTCPOffsetResponse_message :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/TCPOffsetResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsTCPOffsetResponse :: Ros1Xarm_msgsTCPOffsetResponse
defaultRos1Xarm_msgsTCPOffsetResponse = Ros1Xarm_msgsTCPOffsetResponse (0) (T.empty)
-- | \@brief Canonical codec identity of xarm_msgs/TCPOffsetResponse.
-- \@details Exact identity UWVMROS1_2f06deb14c2f0acce41ada4fecefd70e32bda4bc84b82354dffe333d2337464d
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsTCPOffsetResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/TCPOffsetResponse.
-- \@details Exact identity UWVMROS1_2f06deb14c2f0acce41ada4fecefd70e32bda4bc84b82354dffe333d2337464d
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsTCPOffsetResponseCodecIdentity = "UWVMROS1_2f06deb14c2f0acce41ada4fecefd70e32bda4bc84b82354dffe333d2337464d"
-- | \@brief Encode one complete xarm_msgs/TCPOffsetResponse value.
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
-- \@see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsTCPOffsetResponse :: Ros1Xarm_msgsTCPOffsetResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsTCPOffsetResponse value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsTCPOffsetResponse_ret value))
  b1 <- W.encodeText 256 True (ros1Xarm_msgsTCPOffsetResponse_message value)
  W.bounded 262 [b0, b1]
-- | \@brief Read the ordered canonical fields of xarm_msgs/TCPOffsetResponse.
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
-- \@see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsTCPOffsetResponse :: W.Decoder Ros1Xarm_msgsTCPOffsetResponse
readRos1Xarm_msgsTCPOffsetResponse = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- W.text 256 True
  let value = Ros1Xarm_msgsTCPOffsetResponse a0 a1
  case encodeRos1Xarm_msgsTCPOffsetResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/TCPOffsetResponse value.
-- \@details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsTCPOffsetResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsTCPOffsetResponse
decodeRos1Xarm_msgsTCPOffsetResponse = W.runDecoder 262 readRos1Xarm_msgsTCPOffsetResponse
instance Canonical Ros1Xarm_msgsTCPOffsetResponse where
  maximumBytes _ = 262
  encodeValue = encodeRos1Xarm_msgsTCPOffsetResponse
  readValue = readRos1Xarm_msgsTCPOffsetResponse
-- | \@brief Complete ROS 1 xarm_planner/exec_planRequest value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_f7c4c0d95453c6a7cfdc7726b003a63745ad0e533ced368d6422c5cb2c3d21f3.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_plannerExec_planRequest = Ros1Xarm_plannerExec_planRequest
  {
    -- | \@brief xarm_planner/exec_planRequest.exec: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_plannerExec_planRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_plannerExec_planRequest_exec :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_planner/exec_planRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_plannerExec_planRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_plannerExec_planRequest :: Ros1Xarm_plannerExec_planRequest
defaultRos1Xarm_plannerExec_planRequest = Ros1Xarm_plannerExec_planRequest (False)
-- | \@brief Canonical codec identity of xarm_planner/exec_planRequest.
-- \@details Exact identity UWVMROS1_f7c4c0d95453c6a7cfdc7726b003a63745ad0e533ced368d6422c5cb2c3d21f3
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_plannerExec_planRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_plannerExec_planRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_planner/exec_planRequest.
-- \@details Exact identity UWVMROS1_f7c4c0d95453c6a7cfdc7726b003a63745ad0e533ced368d6422c5cb2c3d21f3
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_plannerExec_planRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_plannerExec_planRequestCodecIdentity = "UWVMROS1_f7c4c0d95453c6a7cfdc7726b003a63745ad0e533ced368d6422c5cb2c3d21f3"
-- | \@brief Encode one complete xarm_planner/exec_planRequest value.
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
-- \@see Ros1Xarm_plannerExec_planRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_plannerExec_planRequest :: Ros1Xarm_plannerExec_planRequest -> Either Word32 B.ByteString
encodeRos1Xarm_plannerExec_planRequest value = do
  b0 <- W.encodeBool (ros1Xarm_plannerExec_planRequest_exec value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of xarm_planner/exec_planRequest.
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
-- \@see Ros1Xarm_plannerExec_planRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_plannerExec_planRequest :: W.Decoder Ros1Xarm_plannerExec_planRequest
readRos1Xarm_plannerExec_planRequest = do
  a0 <- W.boolean
  let value = Ros1Xarm_plannerExec_planRequest a0
  case encodeRos1Xarm_plannerExec_planRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_planner/exec_planRequest value.
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
-- \@see Ros1Xarm_plannerExec_planRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_plannerExec_planRequest :: B.ByteString -> Either Word32 Ros1Xarm_plannerExec_planRequest
decodeRos1Xarm_plannerExec_planRequest = W.runDecoder 1 readRos1Xarm_plannerExec_planRequest
instance Canonical Ros1Xarm_plannerExec_planRequest where
  maximumBytes _ = 1
  encodeValue = encodeRos1Xarm_plannerExec_planRequest
  readValue = readRos1Xarm_plannerExec_planRequest
-- | \@brief Complete ROS 1 xarm_planner/exec_planResponse value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_7e265ca343aa21c5f0dc043d8662e82ed8e57f56c4eaf7f15733162c1029a625.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_plannerExec_planResponse = Ros1Xarm_plannerExec_planResponse
  {
    -- | \@brief xarm_planner/exec_planResponse.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_plannerExec_planResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_plannerExec_planResponse_success :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_planner/exec_planResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_plannerExec_planResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_plannerExec_planResponse :: Ros1Xarm_plannerExec_planResponse
defaultRos1Xarm_plannerExec_planResponse = Ros1Xarm_plannerExec_planResponse (False)
-- | \@brief Canonical codec identity of xarm_planner/exec_planResponse.
-- \@details Exact identity UWVMROS1_7e265ca343aa21c5f0dc043d8662e82ed8e57f56c4eaf7f15733162c1029a625
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_plannerExec_planResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_plannerExec_planResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_planner/exec_planResponse.
-- \@details Exact identity UWVMROS1_7e265ca343aa21c5f0dc043d8662e82ed8e57f56c4eaf7f15733162c1029a625
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_plannerExec_planResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_plannerExec_planResponseCodecIdentity = "UWVMROS1_7e265ca343aa21c5f0dc043d8662e82ed8e57f56c4eaf7f15733162c1029a625"
-- | \@brief Encode one complete xarm_planner/exec_planResponse value.
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
-- \@see Ros1Xarm_plannerExec_planResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_plannerExec_planResponse :: Ros1Xarm_plannerExec_planResponse -> Either Word32 B.ByteString
encodeRos1Xarm_plannerExec_planResponse value = do
  b0 <- W.encodeBool (ros1Xarm_plannerExec_planResponse_success value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of xarm_planner/exec_planResponse.
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
-- \@see Ros1Xarm_plannerExec_planResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_plannerExec_planResponse :: W.Decoder Ros1Xarm_plannerExec_planResponse
readRos1Xarm_plannerExec_planResponse = do
  a0 <- W.boolean
  let value = Ros1Xarm_plannerExec_planResponse a0
  case encodeRos1Xarm_plannerExec_planResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_planner/exec_planResponse value.
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
-- \@see Ros1Xarm_plannerExec_planResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_plannerExec_planResponse :: B.ByteString -> Either Word32 Ros1Xarm_plannerExec_planResponse
decodeRos1Xarm_plannerExec_planResponse = W.runDecoder 1 readRos1Xarm_plannerExec_planResponse
instance Canonical Ros1Xarm_plannerExec_planResponse where
  maximumBytes _ = 1
  encodeValue = encodeRos1Xarm_plannerExec_planResponse
  readValue = readRos1Xarm_plannerExec_planResponse
-- | \@brief Complete ROS 1 xarm_planner/joint_planRequest value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 4..260 bytes and is identified by
-- UWVMROS1_8a531cf6d8b62366b63ef2f7c6fd2314211a3043b2da3f050c20080cf4ec8fd9.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_plannerJoint_planRequest = Ros1Xarm_plannerJoint_planRequest
  {
    -- | \@brief xarm_planner/joint_planRequest.target: float64; 0..32 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_plannerJoint_planRequest_target :: [Double]
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_planner/joint_planRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_plannerJoint_planRequest :: Ros1Xarm_plannerJoint_planRequest
defaultRos1Xarm_plannerJoint_planRequest = Ros1Xarm_plannerJoint_planRequest ([])
-- | \@brief Canonical codec identity of xarm_planner/joint_planRequest.
-- \@details Exact identity UWVMROS1_8a531cf6d8b62366b63ef2f7c6fd2314211a3043b2da3f050c20080cf4ec8fd9
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_plannerJoint_planRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_planner/joint_planRequest.
-- \@details Exact identity UWVMROS1_8a531cf6d8b62366b63ef2f7c6fd2314211a3043b2da3f050c20080cf4ec8fd9
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_plannerJoint_planRequestCodecIdentity = "UWVMROS1_8a531cf6d8b62366b63ef2f7c6fd2314211a3043b2da3f050c20080cf4ec8fd9"
-- | \@brief Encode one complete xarm_planner/joint_planRequest value.
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
-- \@see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_plannerJoint_planRequest :: Ros1Xarm_plannerJoint_planRequest -> Either Word32 B.ByteString
encodeRos1Xarm_plannerJoint_planRequest value = do
  if length (ros1Xarm_plannerJoint_planRequest_target value) > 32 then Left 22 else Right ()
  prefix0 <- W.encodeCount 32 (length (ros1Xarm_plannerJoint_planRequest_target value))
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Xarm_plannerJoint_planRequest_target value)
  W.bounded 260 [prefix0, b0]
-- | \@brief Read the ordered canonical fields of xarm_planner/joint_planRequest.
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
-- \@see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_plannerJoint_planRequest :: W.Decoder Ros1Xarm_plannerJoint_planRequest
readRos1Xarm_plannerJoint_planRequest = do
  count0 <- W.count 32
  a0 <- replicateM count0 (W.float64)
  let value = Ros1Xarm_plannerJoint_planRequest a0
  case encodeRos1Xarm_plannerJoint_planRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_planner/joint_planRequest value.
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
-- \@see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_plannerJoint_planRequest :: B.ByteString -> Either Word32 Ros1Xarm_plannerJoint_planRequest
decodeRos1Xarm_plannerJoint_planRequest = W.runDecoder 260 readRos1Xarm_plannerJoint_planRequest
instance Canonical Ros1Xarm_plannerJoint_planRequest where
  maximumBytes _ = 260
  encodeValue = encodeRos1Xarm_plannerJoint_planRequest
  readValue = readRos1Xarm_plannerJoint_planRequest
-- | \@brief Complete ROS 1 xarm_planner/joint_planResponse value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_46925f1a9e54d9d74604a2f12457a97394e4ec30aa2832b7a66ae3da2782d668.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_plannerJoint_planResponse = Ros1Xarm_plannerJoint_planResponse
  {
    -- | \@brief xarm_planner/joint_planResponse.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_plannerJoint_planResponse_success :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_planner/joint_planResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_plannerJoint_planResponse :: Ros1Xarm_plannerJoint_planResponse
defaultRos1Xarm_plannerJoint_planResponse = Ros1Xarm_plannerJoint_planResponse (False)
-- | \@brief Canonical codec identity of xarm_planner/joint_planResponse.
-- \@details Exact identity UWVMROS1_46925f1a9e54d9d74604a2f12457a97394e4ec30aa2832b7a66ae3da2782d668
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_plannerJoint_planResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_planner/joint_planResponse.
-- \@details Exact identity UWVMROS1_46925f1a9e54d9d74604a2f12457a97394e4ec30aa2832b7a66ae3da2782d668
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_plannerJoint_planResponseCodecIdentity = "UWVMROS1_46925f1a9e54d9d74604a2f12457a97394e4ec30aa2832b7a66ae3da2782d668"
-- | \@brief Encode one complete xarm_planner/joint_planResponse value.
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
-- \@see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_plannerJoint_planResponse :: Ros1Xarm_plannerJoint_planResponse -> Either Word32 B.ByteString
encodeRos1Xarm_plannerJoint_planResponse value = do
  b0 <- W.encodeBool (ros1Xarm_plannerJoint_planResponse_success value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of xarm_planner/joint_planResponse.
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
-- \@see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_plannerJoint_planResponse :: W.Decoder Ros1Xarm_plannerJoint_planResponse
readRos1Xarm_plannerJoint_planResponse = do
  a0 <- W.boolean
  let value = Ros1Xarm_plannerJoint_planResponse a0
  case encodeRos1Xarm_plannerJoint_planResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_planner/joint_planResponse value.
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
-- \@see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_plannerJoint_planResponse :: B.ByteString -> Either Word32 Ros1Xarm_plannerJoint_planResponse
decodeRos1Xarm_plannerJoint_planResponse = W.runDecoder 1 readRos1Xarm_plannerJoint_planResponse
instance Canonical Ros1Xarm_plannerJoint_planResponse where
  maximumBytes _ = 1
  encodeValue = encodeRos1Xarm_plannerJoint_planResponse
  readValue = readRos1Xarm_plannerJoint_planResponse
-- | \@brief Complete ROS 1 xarm_planner/pose_planRequest value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 56..56 bytes and is identified by
-- UWVMROS1_4ef40b7333ab897b974b0d800d68ed65ab28d52fc3b5dbe0561f799c7818cf22.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_plannerPose_planRequest = Ros1Xarm_plannerPose_planRequest
  {
    -- | \@brief xarm_planner/pose_planRequest.target: geometry_msgs/Pose.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_plannerPose_planRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_plannerPose_planRequest_target :: Ros1Geometry_msgsPose
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_planner/pose_planRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_plannerPose_planRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_plannerPose_planRequest :: Ros1Xarm_plannerPose_planRequest
defaultRos1Xarm_plannerPose_planRequest = Ros1Xarm_plannerPose_planRequest (defaultRos1Geometry_msgsPose)
-- | \@brief Canonical codec identity of xarm_planner/pose_planRequest.
-- \@details Exact identity UWVMROS1_4ef40b7333ab897b974b0d800d68ed65ab28d52fc3b5dbe0561f799c7818cf22
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_plannerPose_planRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_plannerPose_planRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_planner/pose_planRequest.
-- \@details Exact identity UWVMROS1_4ef40b7333ab897b974b0d800d68ed65ab28d52fc3b5dbe0561f799c7818cf22
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_plannerPose_planRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_plannerPose_planRequestCodecIdentity = "UWVMROS1_4ef40b7333ab897b974b0d800d68ed65ab28d52fc3b5dbe0561f799c7818cf22"
-- | \@brief Encode one complete xarm_planner/pose_planRequest value.
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
-- \@see Ros1Xarm_plannerPose_planRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_plannerPose_planRequest :: Ros1Xarm_plannerPose_planRequest -> Either Word32 B.ByteString
encodeRos1Xarm_plannerPose_planRequest value = do
  b0 <- encodeRos1Geometry_msgsPose (ros1Xarm_plannerPose_planRequest_target value)
  W.bounded 56 [b0]
-- | \@brief Read the ordered canonical fields of xarm_planner/pose_planRequest.
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
-- \@see Ros1Xarm_plannerPose_planRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_plannerPose_planRequest :: W.Decoder Ros1Xarm_plannerPose_planRequest
readRos1Xarm_plannerPose_planRequest = do
  a0 <- readRos1Geometry_msgsPose
  let value = Ros1Xarm_plannerPose_planRequest a0
  case encodeRos1Xarm_plannerPose_planRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_planner/pose_planRequest value.
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
-- \@see Ros1Xarm_plannerPose_planRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_plannerPose_planRequest :: B.ByteString -> Either Word32 Ros1Xarm_plannerPose_planRequest
decodeRos1Xarm_plannerPose_planRequest = W.runDecoder 56 readRos1Xarm_plannerPose_planRequest
instance Canonical Ros1Xarm_plannerPose_planRequest where
  maximumBytes _ = 56
  encodeValue = encodeRos1Xarm_plannerPose_planRequest
  readValue = readRos1Xarm_plannerPose_planRequest
-- | \@brief Complete ROS 1 xarm_planner/pose_planResponse value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_d8eb8efb60382e22f7c357dbfd8391a3c6608358522718dadaeb36a46b985113.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_plannerPose_planResponse = Ros1Xarm_plannerPose_planResponse
  {
    -- | \@brief xarm_planner/pose_planResponse.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_plannerPose_planResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_plannerPose_planResponse_success :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_planner/pose_planResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_plannerPose_planResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_plannerPose_planResponse :: Ros1Xarm_plannerPose_planResponse
defaultRos1Xarm_plannerPose_planResponse = Ros1Xarm_plannerPose_planResponse (False)
-- | \@brief Canonical codec identity of xarm_planner/pose_planResponse.
-- \@details Exact identity UWVMROS1_d8eb8efb60382e22f7c357dbfd8391a3c6608358522718dadaeb36a46b985113
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_plannerPose_planResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_plannerPose_planResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_planner/pose_planResponse.
-- \@details Exact identity UWVMROS1_d8eb8efb60382e22f7c357dbfd8391a3c6608358522718dadaeb36a46b985113
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_plannerPose_planResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_plannerPose_planResponseCodecIdentity = "UWVMROS1_d8eb8efb60382e22f7c357dbfd8391a3c6608358522718dadaeb36a46b985113"
-- | \@brief Encode one complete xarm_planner/pose_planResponse value.
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
-- \@see Ros1Xarm_plannerPose_planResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_plannerPose_planResponse :: Ros1Xarm_plannerPose_planResponse -> Either Word32 B.ByteString
encodeRos1Xarm_plannerPose_planResponse value = do
  b0 <- W.encodeBool (ros1Xarm_plannerPose_planResponse_success value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of xarm_planner/pose_planResponse.
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
-- \@see Ros1Xarm_plannerPose_planResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_plannerPose_planResponse :: W.Decoder Ros1Xarm_plannerPose_planResponse
readRos1Xarm_plannerPose_planResponse = do
  a0 <- W.boolean
  let value = Ros1Xarm_plannerPose_planResponse a0
  case encodeRos1Xarm_plannerPose_planResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_planner/pose_planResponse value.
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
-- \@see Ros1Xarm_plannerPose_planResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_plannerPose_planResponse :: B.ByteString -> Either Word32 Ros1Xarm_plannerPose_planResponse
decodeRos1Xarm_plannerPose_planResponse = W.runDecoder 1 readRos1Xarm_plannerPose_planResponse
instance Canonical Ros1Xarm_plannerPose_planResponse where
  maximumBytes _ = 1
  encodeValue = encodeRos1Xarm_plannerPose_planResponse
  readValue = readRos1Xarm_plannerPose_planResponse
-- | \@brief Complete ROS 1 xarm_planner/single_straight_planRequest value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 56..56 bytes and is identified by
-- UWVMROS1_1a6d7a443bf5aa7120d9595f93f922319b473efe007c59700a3b70ed7907809f.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_plannerSingle_straight_planRequest = Ros1Xarm_plannerSingle_straight_planRequest
  {
    -- | \@brief xarm_planner/single_straight_planRequest.target: geometry_msgs/Pose.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_plannerSingle_straight_planRequest_target :: Ros1Geometry_msgsPose
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_planner/single_straight_planRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_plannerSingle_straight_planRequest :: Ros1Xarm_plannerSingle_straight_planRequest
defaultRos1Xarm_plannerSingle_straight_planRequest =
  Ros1Xarm_plannerSingle_straight_planRequest
    (defaultRos1Geometry_msgsPose)
-- | \@brief Canonical codec identity of xarm_planner/single_straight_planRequest.
-- \@details Exact identity UWVMROS1_1a6d7a443bf5aa7120d9595f93f922319b473efe007c59700a3b70ed7907809f
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_plannerSingle_straight_planRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_planner/single_straight_planRequest.
-- \@details Exact identity UWVMROS1_1a6d7a443bf5aa7120d9595f93f922319b473efe007c59700a3b70ed7907809f
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_plannerSingle_straight_planRequestCodecIdentity = "UWVMROS1_1a6d7a443bf5aa7120d9595f93f922319b473efe007c59700a3b70ed7907809f"
-- | \@brief Encode one complete xarm_planner/single_straight_planRequest value.
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
-- \@see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_plannerSingle_straight_planRequest :: Ros1Xarm_plannerSingle_straight_planRequest -> Either Word32 B.ByteString
encodeRos1Xarm_plannerSingle_straight_planRequest value = do
  b0 <- encodeRos1Geometry_msgsPose (ros1Xarm_plannerSingle_straight_planRequest_target value)
  W.bounded 56 [b0]
-- | \@brief Read the ordered canonical fields of xarm_planner/single_straight_planRequest.
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
-- \@see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_plannerSingle_straight_planRequest :: W.Decoder Ros1Xarm_plannerSingle_straight_planRequest
readRos1Xarm_plannerSingle_straight_planRequest = do
  a0 <- readRos1Geometry_msgsPose
  let value = Ros1Xarm_plannerSingle_straight_planRequest a0
  case encodeRos1Xarm_plannerSingle_straight_planRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_planner/single_straight_planRequest value.
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
-- \@see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_plannerSingle_straight_planRequest :: B.ByteString -> Either Word32 Ros1Xarm_plannerSingle_straight_planRequest
decodeRos1Xarm_plannerSingle_straight_planRequest = W.runDecoder 56 readRos1Xarm_plannerSingle_straight_planRequest
instance Canonical Ros1Xarm_plannerSingle_straight_planRequest where
  maximumBytes _ = 56
  encodeValue = encodeRos1Xarm_plannerSingle_straight_planRequest
  readValue = readRos1Xarm_plannerSingle_straight_planRequest
-- | \@brief Complete ROS 1 xarm_planner/single_straight_planResponse value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_91dfc3564ce446deb95d1e7a9d080b597b426a13c16f0af6d0452af21c3697dd.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_plannerSingle_straight_planResponse = Ros1Xarm_plannerSingle_straight_planResponse
  {
    -- | \@brief xarm_planner/single_straight_planResponse.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_plannerSingle_straight_planResponse_success :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_planner/single_straight_planResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_plannerSingle_straight_planResponse :: Ros1Xarm_plannerSingle_straight_planResponse
defaultRos1Xarm_plannerSingle_straight_planResponse = Ros1Xarm_plannerSingle_straight_planResponse (False)
-- | \@brief Canonical codec identity of xarm_planner/single_straight_planResponse.
-- \@details Exact identity UWVMROS1_91dfc3564ce446deb95d1e7a9d080b597b426a13c16f0af6d0452af21c3697dd
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_plannerSingle_straight_planResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_planner/single_straight_planResponse.
-- \@details Exact identity UWVMROS1_91dfc3564ce446deb95d1e7a9d080b597b426a13c16f0af6d0452af21c3697dd
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_plannerSingle_straight_planResponseCodecIdentity = "UWVMROS1_91dfc3564ce446deb95d1e7a9d080b597b426a13c16f0af6d0452af21c3697dd"
-- | \@brief Encode one complete xarm_planner/single_straight_planResponse value.
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
-- \@see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_plannerSingle_straight_planResponse :: Ros1Xarm_plannerSingle_straight_planResponse -> Either Word32 B.ByteString
encodeRos1Xarm_plannerSingle_straight_planResponse value = do
  b0 <- W.encodeBool (ros1Xarm_plannerSingle_straight_planResponse_success value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of xarm_planner/single_straight_planResponse.
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
-- \@see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_plannerSingle_straight_planResponse :: W.Decoder Ros1Xarm_plannerSingle_straight_planResponse
readRos1Xarm_plannerSingle_straight_planResponse = do
  a0 <- W.boolean
  let value = Ros1Xarm_plannerSingle_straight_planResponse a0
  case encodeRos1Xarm_plannerSingle_straight_planResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_planner/single_straight_planResponse value.
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
-- \@see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_plannerSingle_straight_planResponse :: B.ByteString -> Either Word32 Ros1Xarm_plannerSingle_straight_planResponse
decodeRos1Xarm_plannerSingle_straight_planResponse = W.runDecoder 1 readRos1Xarm_plannerSingle_straight_planResponse
instance Canonical Ros1Xarm_plannerSingle_straight_planResponse where
  maximumBytes _ = 1
  encodeValue = encodeRos1Xarm_plannerSingle_straight_planResponse
  readValue = readRos1Xarm_plannerSingle_straight_planResponse
