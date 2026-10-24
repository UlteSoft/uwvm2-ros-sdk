-- @file Records.hs
-- @brief Complete universal_robots values and adapters for the selected original interface catalog.
-- @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
-- defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
-- roles require the separately admitted SDK owner.
-- @see share/platform/universal_robots/domains/universal-robots-ros1-complete.ir.json
-- @see document/platform/universal_robots/en_US/README.md

-- Generated complete canonical values; all field selectors are record-qualified.
module UniversalRobots.Records.UniversalRobotsRos1Complete where
import Data.Int
import Data.Word
import qualified Data.ByteString as B
import qualified Data.Text as T
import GHC.Float
import Control.Monad (replicateM)
import qualified RosWasm.Wire as W
import RosWasm.Typed (Canonical(..))
-- | \@brief Complete ROS 1 geometry_msgs/Point value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies 24..24 bytes
-- and is identified by UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Geometry_msgsPoint = Ros1Geometry_msgsPoint
  {
    -- | \@brief geometry_msgs/Point.x: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros1Geometry_msgsPoint_x :: Double
  ,
    -- | \@brief geometry_msgs/Point.y: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros1Geometry_msgsPoint_y :: Double
  ,
    -- | \@brief geometry_msgs/Point.z: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPoint; share/platform/ros/haskell/API-CONTRACT.md
    ros1Geometry_msgsPoint_z :: Double
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of geometry_msgs/Point.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Geometry_msgsPoint; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Geometry_msgsPoint :: Ros1Geometry_msgsPoint
defaultRos1Geometry_msgsPoint = Ros1Geometry_msgsPoint (0) (0) (0)
-- | \@brief Canonical codec identity of geometry_msgs/Point.
-- \@details Exact identity UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Geometry_msgsPoint; share/platform/ros/haskell/API-CONTRACT.md
ros1Geometry_msgsPointCodecIdentity :: String
-- | \@brief Canonical codec identity of geometry_msgs/Point.
-- \@details Exact identity UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Geometry_msgsPoint; share/platform/ros/haskell/API-CONTRACT.md
ros1Geometry_msgsPointCodecIdentity = "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b"
-- | \@brief Encode one complete geometry_msgs/Point value.
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
-- \@see Ros1Geometry_msgsPoint; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Geometry_msgsPoint :: Ros1Geometry_msgsPoint -> Either Word32 B.ByteString
encodeRos1Geometry_msgsPoint value = do
  b0 <- W.encodeFloat64 (ros1Geometry_msgsPoint_x value)
  b1 <- W.encodeFloat64 (ros1Geometry_msgsPoint_y value)
  b2 <- W.encodeFloat64 (ros1Geometry_msgsPoint_z value)
  W.bounded 24 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of geometry_msgs/Point.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
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
-- \@details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Geometry_msgsPoint; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Geometry_msgsPoint :: B.ByteString -> Either Word32 Ros1Geometry_msgsPoint
decodeRos1Geometry_msgsPoint = W.runDecoder 24 readRos1Geometry_msgsPoint
instance Canonical Ros1Geometry_msgsPoint where
  maximumBytes _ = 24
  encodeValue = encodeRos1Geometry_msgsPoint
  readValue = readRos1Geometry_msgsPoint
-- | \@brief Complete ROS 1 geometry_msgs/Quaternion value.
-- \@details All 4 declared fields are retained in source order. The canonical representation occupies 32..32 bytes
-- and is identified by UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Geometry_msgsQuaternion = Ros1Geometry_msgsQuaternion
  {
    -- | \@brief geometry_msgs/Quaternion.x: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsQuaternion; share/platform/ros/haskell/API-CONTRACT.md
    ros1Geometry_msgsQuaternion_x :: Double
  ,
    -- | \@brief geometry_msgs/Quaternion.y: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsQuaternion; share/platform/ros/haskell/API-CONTRACT.md
    ros1Geometry_msgsQuaternion_y :: Double
  ,
    -- | \@brief geometry_msgs/Quaternion.z: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsQuaternion; share/platform/ros/haskell/API-CONTRACT.md
    ros1Geometry_msgsQuaternion_z :: Double
  ,
    -- | \@brief geometry_msgs/Quaternion.w: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsQuaternion; share/platform/ros/haskell/API-CONTRACT.md
    ros1Geometry_msgsQuaternion_w :: Double
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of geometry_msgs/Quaternion.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Geometry_msgsQuaternion; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Geometry_msgsQuaternion :: Ros1Geometry_msgsQuaternion
defaultRos1Geometry_msgsQuaternion = Ros1Geometry_msgsQuaternion (0) (0) (0) (0)
-- | \@brief Canonical codec identity of geometry_msgs/Quaternion.
-- \@details Exact identity UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Geometry_msgsQuaternion; share/platform/ros/haskell/API-CONTRACT.md
ros1Geometry_msgsQuaternionCodecIdentity :: String
-- | \@brief Canonical codec identity of geometry_msgs/Quaternion.
-- \@details Exact identity UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Geometry_msgsQuaternion; share/platform/ros/haskell/API-CONTRACT.md
ros1Geometry_msgsQuaternionCodecIdentity = "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934"
-- | \@brief Encode one complete geometry_msgs/Quaternion value.
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
-- \@see Ros1Geometry_msgsQuaternion; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Geometry_msgsQuaternion :: Ros1Geometry_msgsQuaternion -> Either Word32 B.ByteString
encodeRos1Geometry_msgsQuaternion value = do
  b0 <- W.encodeFloat64 (ros1Geometry_msgsQuaternion_x value)
  b1 <- W.encodeFloat64 (ros1Geometry_msgsQuaternion_y value)
  b2 <- W.encodeFloat64 (ros1Geometry_msgsQuaternion_z value)
  b3 <- W.encodeFloat64 (ros1Geometry_msgsQuaternion_w value)
  W.bounded 32 [b0, b1, b2, b3]
-- | \@brief Read the ordered canonical fields of geometry_msgs/Quaternion.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
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
-- \@details Require the complete 32..32-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Geometry_msgsQuaternion; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Geometry_msgsQuaternion :: B.ByteString -> Either Word32 Ros1Geometry_msgsQuaternion
decodeRos1Geometry_msgsQuaternion = W.runDecoder 32 readRos1Geometry_msgsQuaternion
instance Canonical Ros1Geometry_msgsQuaternion where
  maximumBytes _ = 32
  encodeValue = encodeRos1Geometry_msgsQuaternion
  readValue = readRos1Geometry_msgsQuaternion
-- | \@brief Complete ROS 1 geometry_msgs/Pose value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 56..56 bytes
-- and is identified by UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Geometry_msgsPose = Ros1Geometry_msgsPose
  {
    -- | \@brief geometry_msgs/Pose.position: geometry_msgs/Point.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPose; share/platform/ros/haskell/API-CONTRACT.md
    ros1Geometry_msgsPose_position :: Ros1Geometry_msgsPoint
  ,
    -- | \@brief geometry_msgs/Pose.orientation: geometry_msgs/Quaternion.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPose; share/platform/ros/haskell/API-CONTRACT.md
    ros1Geometry_msgsPose_orientation :: Ros1Geometry_msgsQuaternion
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of geometry_msgs/Pose.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Geometry_msgsPose; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Geometry_msgsPose :: Ros1Geometry_msgsPose
defaultRos1Geometry_msgsPose =
    Ros1Geometry_msgsPose
        (defaultRos1Geometry_msgsPoint)
        (defaultRos1Geometry_msgsQuaternion)
-- | \@brief Canonical codec identity of geometry_msgs/Pose.
-- \@details Exact identity UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Geometry_msgsPose; share/platform/ros/haskell/API-CONTRACT.md
ros1Geometry_msgsPoseCodecIdentity :: String
-- | \@brief Canonical codec identity of geometry_msgs/Pose.
-- \@details Exact identity UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Geometry_msgsPose; share/platform/ros/haskell/API-CONTRACT.md
ros1Geometry_msgsPoseCodecIdentity = "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471"
-- | \@brief Encode one complete geometry_msgs/Pose value.
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
-- \@see Ros1Geometry_msgsPose; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Geometry_msgsPose :: Ros1Geometry_msgsPose -> Either Word32 B.ByteString
encodeRos1Geometry_msgsPose value = do
  b0 <- encodeRos1Geometry_msgsPoint (ros1Geometry_msgsPose_position value)
  b1 <- encodeRos1Geometry_msgsQuaternion (ros1Geometry_msgsPose_orientation value)
  W.bounded 56 [b0, b1]
-- | \@brief Read the ordered canonical fields of geometry_msgs/Pose.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
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
-- \@details Require the complete 56..56-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Geometry_msgsPose; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Geometry_msgsPose :: B.ByteString -> Either Word32 Ros1Geometry_msgsPose
decodeRos1Geometry_msgsPose = W.runDecoder 56 readRos1Geometry_msgsPose
instance Canonical Ros1Geometry_msgsPose where
  maximumBytes _ = 56
  encodeValue = encodeRos1Geometry_msgsPose
  readValue = readRos1Geometry_msgsPose
-- | \@brief Complete ROS 1 time value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
-- is identified by UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Time = Ros1Time
  {
    -- | \@brief time.sec: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Time; share/platform/ros/haskell/API-CONTRACT.md
    ros1Time_sec :: Word32
  ,
    -- | \@brief time.nsec: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Time; share/platform/ros/haskell/API-CONTRACT.md
    ros1Time_nsec :: Word32
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of time.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Time; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Time :: Ros1Time
defaultRos1Time = Ros1Time (0) (0)
-- | \@brief Canonical codec identity of time.
-- \@details Exact identity UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Time; share/platform/ros/haskell/API-CONTRACT.md
ros1TimeCodecIdentity :: String
-- | \@brief Canonical codec identity of time.
-- \@details Exact identity UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Time; share/platform/ros/haskell/API-CONTRACT.md
ros1TimeCodecIdentity = "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0"
-- | \@brief Encode one complete time value.
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
-- \@see Ros1Time; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Time :: Ros1Time -> Either Word32 B.ByteString
encodeRos1Time value = do
  if (ros1Time_nsec value) >= 1000000000 then Left 22 else Right ()
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Time_sec value))
  b1 <- W.encodeUnsigned 4 (fromIntegral (ros1Time_nsec value))
  W.bounded 8 [b0, b1]
-- | \@brief Read the ordered canonical fields of time.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Time; share/platform/ros/haskell/API-CONTRACT.md
readRos1Time :: W.Decoder Ros1Time
readRos1Time = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- fromIntegral <$> W.unsigned 4
  let value = Ros1Time a0 a1
  case encodeRos1Time value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete time value.
-- \@details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Time; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Time :: B.ByteString -> Either Word32 Ros1Time
decodeRos1Time = W.runDecoder 8 readRos1Time
instance Canonical Ros1Time where
  maximumBytes _ = 8
  encodeValue = encodeRos1Time
  readValue = readRos1Time
-- | \@brief Complete ROS 1 std_msgs/Header value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies 16..144 bytes
-- and is identified by UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Std_msgsHeader = Ros1Std_msgsHeader
  {
    -- | \@brief std_msgs/Header.seq: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Std_msgsHeader; share/platform/ros/haskell/API-CONTRACT.md
    ros1Std_msgsHeader_seq :: Word32
  ,
    -- | \@brief std_msgs/Header.stamp: time.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Std_msgsHeader; share/platform/ros/haskell/API-CONTRACT.md
    ros1Std_msgsHeader_stamp :: Ros1Time
  ,
    -- | \@brief std_msgs/Header.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Std_msgsHeader; share/platform/ros/haskell/API-CONTRACT.md
    ros1Std_msgsHeader_frame_id :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of std_msgs/Header.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Std_msgsHeader; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Std_msgsHeader :: Ros1Std_msgsHeader
defaultRos1Std_msgsHeader = Ros1Std_msgsHeader (0) (defaultRos1Time) (T.empty)
-- | \@brief Canonical codec identity of std_msgs/Header.
-- \@details Exact identity UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Std_msgsHeader; share/platform/ros/haskell/API-CONTRACT.md
ros1Std_msgsHeaderCodecIdentity :: String
-- | \@brief Canonical codec identity of std_msgs/Header.
-- \@details Exact identity UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Std_msgsHeader; share/platform/ros/haskell/API-CONTRACT.md
ros1Std_msgsHeaderCodecIdentity = "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435"
-- | \@brief Encode one complete std_msgs/Header value.
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
-- \@see Ros1Std_msgsHeader; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Std_msgsHeader :: Ros1Std_msgsHeader -> Either Word32 B.ByteString
encodeRos1Std_msgsHeader value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Std_msgsHeader_seq value))
  b1 <- encodeRos1Time (ros1Std_msgsHeader_stamp value)
  b2 <- W.encodeText 128 True (ros1Std_msgsHeader_frame_id value)
  W.bounded 144 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of std_msgs/Header.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Std_msgsHeader; share/platform/ros/haskell/API-CONTRACT.md
readRos1Std_msgsHeader :: W.Decoder Ros1Std_msgsHeader
readRos1Std_msgsHeader = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- readRos1Time
  a2 <- W.text 128 True
  let value = Ros1Std_msgsHeader a0 a1 a2
  case encodeRos1Std_msgsHeader value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete std_msgs/Header value.
-- \@details Require the complete 16..144-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Std_msgsHeader; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Std_msgsHeader :: B.ByteString -> Either Word32 Ros1Std_msgsHeader
decodeRos1Std_msgsHeader = W.runDecoder 144 readRos1Std_msgsHeader
instance Canonical Ros1Std_msgsHeader where
  maximumBytes _ = 144
  encodeValue = encodeRos1Std_msgsHeader
  readValue = readRos1Std_msgsHeader
-- | \@brief Complete ROS 1 geometry_msgs/PoseStamped value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 72..200 bytes
-- and is identified by UWVMROS1_bb59c4e82f561266c0f10500bfbbd1a809e9c1122ecbf559a812326af3eb2e95.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Geometry_msgsPoseStamped = Ros1Geometry_msgsPoseStamped
  {
    -- | \@brief geometry_msgs/PoseStamped.header: std_msgs/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPoseStamped; share/platform/ros/haskell/API-CONTRACT.md
    ros1Geometry_msgsPoseStamped_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief geometry_msgs/PoseStamped.pose: geometry_msgs/Pose.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPoseStamped; share/platform/ros/haskell/API-CONTRACT.md
    ros1Geometry_msgsPoseStamped_pose :: Ros1Geometry_msgsPose
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of geometry_msgs/PoseStamped.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Geometry_msgsPoseStamped; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Geometry_msgsPoseStamped :: Ros1Geometry_msgsPoseStamped
defaultRos1Geometry_msgsPoseStamped =
    Ros1Geometry_msgsPoseStamped
        (defaultRos1Std_msgsHeader)
        (defaultRos1Geometry_msgsPose)
-- | \@brief Canonical codec identity of geometry_msgs/PoseStamped.
-- \@details Exact identity UWVMROS1_bb59c4e82f561266c0f10500bfbbd1a809e9c1122ecbf559a812326af3eb2e95 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Geometry_msgsPoseStamped; share/platform/ros/haskell/API-CONTRACT.md
ros1Geometry_msgsPoseStampedCodecIdentity :: String
-- | \@brief Canonical codec identity of geometry_msgs/PoseStamped.
-- \@details Exact identity UWVMROS1_bb59c4e82f561266c0f10500bfbbd1a809e9c1122ecbf559a812326af3eb2e95 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Geometry_msgsPoseStamped; share/platform/ros/haskell/API-CONTRACT.md
ros1Geometry_msgsPoseStampedCodecIdentity = "UWVMROS1_bb59c4e82f561266c0f10500bfbbd1a809e9c1122ecbf559a812326af3eb2e95"
-- | \@brief Encode one complete geometry_msgs/PoseStamped value.
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
-- \@see Ros1Geometry_msgsPoseStamped; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Geometry_msgsPoseStamped :: Ros1Geometry_msgsPoseStamped -> Either Word32 B.ByteString
encodeRos1Geometry_msgsPoseStamped value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Geometry_msgsPoseStamped_header value)
  b1 <- encodeRos1Geometry_msgsPose (ros1Geometry_msgsPoseStamped_pose value)
  W.bounded 200 [b0, b1]
-- | \@brief Read the ordered canonical fields of geometry_msgs/PoseStamped.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Geometry_msgsPoseStamped; share/platform/ros/haskell/API-CONTRACT.md
readRos1Geometry_msgsPoseStamped :: W.Decoder Ros1Geometry_msgsPoseStamped
readRos1Geometry_msgsPoseStamped = do
  a0 <- readRos1Std_msgsHeader
  a1 <- readRos1Geometry_msgsPose
  let value = Ros1Geometry_msgsPoseStamped a0 a1
  case encodeRos1Geometry_msgsPoseStamped value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete geometry_msgs/PoseStamped value.
-- \@details Require the complete 72..200-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Geometry_msgsPoseStamped; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Geometry_msgsPoseStamped :: B.ByteString -> Either Word32 Ros1Geometry_msgsPoseStamped
decodeRos1Geometry_msgsPoseStamped = W.runDecoder 200 readRos1Geometry_msgsPoseStamped
instance Canonical Ros1Geometry_msgsPoseStamped where
  maximumBytes _ = 200
  encodeValue = encodeRos1Geometry_msgsPoseStamped
  readValue = readRos1Geometry_msgsPoseStamped
-- | \@brief Complete ROS 1 geometry_msgs/Vector3 value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies 24..24 bytes
-- and is identified by UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3
  {
    -- | \@brief geometry_msgs/Vector3.x: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsVector3; share/platform/ros/haskell/API-CONTRACT.md
    ros1Geometry_msgsVector3_x :: Double
  ,
    -- | \@brief geometry_msgs/Vector3.y: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsVector3; share/platform/ros/haskell/API-CONTRACT.md
    ros1Geometry_msgsVector3_y :: Double
  ,
    -- | \@brief geometry_msgs/Vector3.z: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsVector3; share/platform/ros/haskell/API-CONTRACT.md
    ros1Geometry_msgsVector3_z :: Double
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of geometry_msgs/Vector3.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Geometry_msgsVector3; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Geometry_msgsVector3 :: Ros1Geometry_msgsVector3
defaultRos1Geometry_msgsVector3 = Ros1Geometry_msgsVector3 (0) (0) (0)
-- | \@brief Canonical codec identity of geometry_msgs/Vector3.
-- \@details Exact identity UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Geometry_msgsVector3; share/platform/ros/haskell/API-CONTRACT.md
ros1Geometry_msgsVector3CodecIdentity :: String
-- | \@brief Canonical codec identity of geometry_msgs/Vector3.
-- \@details Exact identity UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Geometry_msgsVector3; share/platform/ros/haskell/API-CONTRACT.md
ros1Geometry_msgsVector3CodecIdentity = "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc"
-- | \@brief Encode one complete geometry_msgs/Vector3 value.
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
-- \@see Ros1Geometry_msgsVector3; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Geometry_msgsVector3 :: Ros1Geometry_msgsVector3 -> Either Word32 B.ByteString
encodeRos1Geometry_msgsVector3 value = do
  b0 <- W.encodeFloat64 (ros1Geometry_msgsVector3_x value)
  b1 <- W.encodeFloat64 (ros1Geometry_msgsVector3_y value)
  b2 <- W.encodeFloat64 (ros1Geometry_msgsVector3_z value)
  W.bounded 24 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of geometry_msgs/Vector3.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Geometry_msgsVector3; share/platform/ros/haskell/API-CONTRACT.md
readRos1Geometry_msgsVector3 :: W.Decoder Ros1Geometry_msgsVector3
readRos1Geometry_msgsVector3 = do
  a0 <- W.float64
  a1 <- W.float64
  a2 <- W.float64
  let value = Ros1Geometry_msgsVector3 a0 a1 a2
  case encodeRos1Geometry_msgsVector3 value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete geometry_msgs/Vector3 value.
-- \@details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Geometry_msgsVector3; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Geometry_msgsVector3 :: B.ByteString -> Either Word32 Ros1Geometry_msgsVector3
decodeRos1Geometry_msgsVector3 = W.runDecoder 24 readRos1Geometry_msgsVector3
instance Canonical Ros1Geometry_msgsVector3 where
  maximumBytes _ = 24
  encodeValue = encodeRos1Geometry_msgsVector3
  readValue = readRos1Geometry_msgsVector3
-- | \@brief Complete ROS 1 geometry_msgs/Twist value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 48..48 bytes
-- and is identified by UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Geometry_msgsTwist = Ros1Geometry_msgsTwist
  {
    -- | \@brief geometry_msgs/Twist.linear: geometry_msgs/Vector3.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsTwist; share/platform/ros/haskell/API-CONTRACT.md
    ros1Geometry_msgsTwist_linear :: Ros1Geometry_msgsVector3
  ,
    -- | \@brief geometry_msgs/Twist.angular: geometry_msgs/Vector3.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsTwist; share/platform/ros/haskell/API-CONTRACT.md
    ros1Geometry_msgsTwist_angular :: Ros1Geometry_msgsVector3
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of geometry_msgs/Twist.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Geometry_msgsTwist; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Geometry_msgsTwist :: Ros1Geometry_msgsTwist
defaultRos1Geometry_msgsTwist =
    Ros1Geometry_msgsTwist
        (defaultRos1Geometry_msgsVector3)
        (defaultRos1Geometry_msgsVector3)
-- | \@brief Canonical codec identity of geometry_msgs/Twist.
-- \@details Exact identity UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Geometry_msgsTwist; share/platform/ros/haskell/API-CONTRACT.md
ros1Geometry_msgsTwistCodecIdentity :: String
-- | \@brief Canonical codec identity of geometry_msgs/Twist.
-- \@details Exact identity UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Geometry_msgsTwist; share/platform/ros/haskell/API-CONTRACT.md
ros1Geometry_msgsTwistCodecIdentity = "UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921"
-- | \@brief Encode one complete geometry_msgs/Twist value.
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
-- \@see Ros1Geometry_msgsTwist; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Geometry_msgsTwist :: Ros1Geometry_msgsTwist -> Either Word32 B.ByteString
encodeRos1Geometry_msgsTwist value = do
  b0 <- encodeRos1Geometry_msgsVector3 (ros1Geometry_msgsTwist_linear value)
  b1 <- encodeRos1Geometry_msgsVector3 (ros1Geometry_msgsTwist_angular value)
  W.bounded 48 [b0, b1]
-- | \@brief Read the ordered canonical fields of geometry_msgs/Twist.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Geometry_msgsTwist; share/platform/ros/haskell/API-CONTRACT.md
readRos1Geometry_msgsTwist :: W.Decoder Ros1Geometry_msgsTwist
readRos1Geometry_msgsTwist = do
  a0 <- readRos1Geometry_msgsVector3
  a1 <- readRos1Geometry_msgsVector3
  let value = Ros1Geometry_msgsTwist a0 a1
  case encodeRos1Geometry_msgsTwist value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete geometry_msgs/Twist value.
-- \@details Require the complete 48..48-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Geometry_msgsTwist; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Geometry_msgsTwist :: B.ByteString -> Either Word32 Ros1Geometry_msgsTwist
decodeRos1Geometry_msgsTwist = W.runDecoder 48 readRos1Geometry_msgsTwist
instance Canonical Ros1Geometry_msgsTwist where
  maximumBytes _ = 48
  encodeValue = encodeRos1Geometry_msgsTwist
  readValue = readRos1Geometry_msgsTwist
-- | \@brief Complete ROS 1 geometry_msgs/Wrench value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 48..48 bytes
-- and is identified by UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Geometry_msgsWrench = Ros1Geometry_msgsWrench
  {
    -- | \@brief geometry_msgs/Wrench.force: geometry_msgs/Vector3.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsWrench; share/platform/ros/haskell/API-CONTRACT.md
    ros1Geometry_msgsWrench_force :: Ros1Geometry_msgsVector3
  ,
    -- | \@brief geometry_msgs/Wrench.torque: geometry_msgs/Vector3.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsWrench; share/platform/ros/haskell/API-CONTRACT.md
    ros1Geometry_msgsWrench_torque :: Ros1Geometry_msgsVector3
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of geometry_msgs/Wrench.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Geometry_msgsWrench; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Geometry_msgsWrench :: Ros1Geometry_msgsWrench
defaultRos1Geometry_msgsWrench =
    Ros1Geometry_msgsWrench
        (defaultRos1Geometry_msgsVector3)
        (defaultRos1Geometry_msgsVector3)
-- | \@brief Canonical codec identity of geometry_msgs/Wrench.
-- \@details Exact identity UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Geometry_msgsWrench; share/platform/ros/haskell/API-CONTRACT.md
ros1Geometry_msgsWrenchCodecIdentity :: String
-- | \@brief Canonical codec identity of geometry_msgs/Wrench.
-- \@details Exact identity UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Geometry_msgsWrench; share/platform/ros/haskell/API-CONTRACT.md
ros1Geometry_msgsWrenchCodecIdentity = "UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3"
-- | \@brief Encode one complete geometry_msgs/Wrench value.
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
-- \@see Ros1Geometry_msgsWrench; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Geometry_msgsWrench :: Ros1Geometry_msgsWrench -> Either Word32 B.ByteString
encodeRos1Geometry_msgsWrench value = do
  b0 <- encodeRos1Geometry_msgsVector3 (ros1Geometry_msgsWrench_force value)
  b1 <- encodeRos1Geometry_msgsVector3 (ros1Geometry_msgsWrench_torque value)
  W.bounded 48 [b0, b1]
-- | \@brief Read the ordered canonical fields of geometry_msgs/Wrench.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Geometry_msgsWrench; share/platform/ros/haskell/API-CONTRACT.md
readRos1Geometry_msgsWrench :: W.Decoder Ros1Geometry_msgsWrench
readRos1Geometry_msgsWrench = do
  a0 <- readRos1Geometry_msgsVector3
  a1 <- readRos1Geometry_msgsVector3
  let value = Ros1Geometry_msgsWrench a0 a1
  case encodeRos1Geometry_msgsWrench value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete geometry_msgs/Wrench value.
-- \@details Require the complete 48..48-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Geometry_msgsWrench; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Geometry_msgsWrench :: B.ByteString -> Either Word32 Ros1Geometry_msgsWrench
decodeRos1Geometry_msgsWrench = W.runDecoder 48 readRos1Geometry_msgsWrench
instance Canonical Ros1Geometry_msgsWrench where
  maximumBytes _ = 48
  encodeValue = encodeRos1Geometry_msgsWrench
  readValue = readRos1Geometry_msgsWrench
-- | \@brief Complete ROS 1 ur_dashboard_msgs/AddToLogRequest value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies 4..260 bytes
-- and is identified by UWVMROS1_faf6c1ab9c749a05ae3f4e6196cc1c3574560daae1463ebe8684bf13ea938ac4.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_dashboard_msgsAddToLogRequest = Ros1Ur_dashboard_msgsAddToLogRequest
  {
    -- | \@brief ur_dashboard_msgs/AddToLogRequest.message: string; each string is 0..256 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsAddToLogRequest_message :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_dashboard_msgs/AddToLogRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_dashboard_msgsAddToLogRequest :: Ros1Ur_dashboard_msgsAddToLogRequest
defaultRos1Ur_dashboard_msgsAddToLogRequest = Ros1Ur_dashboard_msgsAddToLogRequest (T.empty)
-- | \@brief Canonical codec identity of ur_dashboard_msgs/AddToLogRequest.
-- \@details Exact identity UWVMROS1_faf6c1ab9c749a05ae3f4e6196cc1c3574560daae1463ebe8684bf13ea938ac4 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsAddToLogRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_dashboard_msgs/AddToLogRequest.
-- \@details Exact identity UWVMROS1_faf6c1ab9c749a05ae3f4e6196cc1c3574560daae1463ebe8684bf13ea938ac4 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsAddToLogRequestCodecIdentity =
    "UWVMROS1_faf6c1ab9c749a05ae3f4e6196cc1c3574560daae1463ebe8684bf13ea938ac4"
-- | \@brief Encode one complete ur_dashboard_msgs/AddToLogRequest value.
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
-- \@see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_dashboard_msgsAddToLogRequest :: Ros1Ur_dashboard_msgsAddToLogRequest -> Either Word32 B.ByteString
encodeRos1Ur_dashboard_msgsAddToLogRequest value = do
  b0 <- W.encodeText 256 True (ros1Ur_dashboard_msgsAddToLogRequest_message value)
  W.bounded 260 [b0]
-- | \@brief Read the ordered canonical fields of ur_dashboard_msgs/AddToLogRequest.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_dashboard_msgsAddToLogRequest :: W.Decoder Ros1Ur_dashboard_msgsAddToLogRequest
readRos1Ur_dashboard_msgsAddToLogRequest = do
  a0 <- W.text 256 True
  let value = Ros1Ur_dashboard_msgsAddToLogRequest a0
  case encodeRos1Ur_dashboard_msgsAddToLogRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_dashboard_msgs/AddToLogRequest value.
-- \@details Require the complete 4..260-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_dashboard_msgsAddToLogRequest :: B.ByteString -> Either Word32 Ros1Ur_dashboard_msgsAddToLogRequest
decodeRos1Ur_dashboard_msgsAddToLogRequest = W.runDecoder 260 readRos1Ur_dashboard_msgsAddToLogRequest
instance Canonical Ros1Ur_dashboard_msgsAddToLogRequest where
  maximumBytes _ = 260
  encodeValue = encodeRos1Ur_dashboard_msgsAddToLogRequest
  readValue = readRos1Ur_dashboard_msgsAddToLogRequest
-- | \@brief Complete ROS 1 ur_dashboard_msgs/AddToLogResponse value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes
-- and is identified by UWVMROS1_d495f7609d04abde44cb35ec5114618a2875e0a30986d2f7cc62c8ce99354e7c.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_dashboard_msgsAddToLogResponse = Ros1Ur_dashboard_msgsAddToLogResponse
  {
    -- | \@brief ur_dashboard_msgs/AddToLogResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsAddToLogResponse_answer :: T.Text
  ,
    -- | \@brief ur_dashboard_msgs/AddToLogResponse.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsAddToLogResponse_success :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_dashboard_msgs/AddToLogResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_dashboard_msgsAddToLogResponse :: Ros1Ur_dashboard_msgsAddToLogResponse
defaultRos1Ur_dashboard_msgsAddToLogResponse = Ros1Ur_dashboard_msgsAddToLogResponse (T.empty) (False)
-- | \@brief Canonical codec identity of ur_dashboard_msgs/AddToLogResponse.
-- \@details Exact identity UWVMROS1_d495f7609d04abde44cb35ec5114618a2875e0a30986d2f7cc62c8ce99354e7c binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsAddToLogResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_dashboard_msgs/AddToLogResponse.
-- \@details Exact identity UWVMROS1_d495f7609d04abde44cb35ec5114618a2875e0a30986d2f7cc62c8ce99354e7c binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsAddToLogResponseCodecIdentity =
    "UWVMROS1_d495f7609d04abde44cb35ec5114618a2875e0a30986d2f7cc62c8ce99354e7c"
-- | \@brief Encode one complete ur_dashboard_msgs/AddToLogResponse value.
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
-- \@see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_dashboard_msgsAddToLogResponse :: Ros1Ur_dashboard_msgsAddToLogResponse -> Either Word32 B.ByteString
encodeRos1Ur_dashboard_msgsAddToLogResponse value = do
  b0 <- W.encodeText 256 True (ros1Ur_dashboard_msgsAddToLogResponse_answer value)
  b1 <- W.encodeBool (ros1Ur_dashboard_msgsAddToLogResponse_success value)
  W.bounded 261 [b0, b1]
-- | \@brief Read the ordered canonical fields of ur_dashboard_msgs/AddToLogResponse.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_dashboard_msgsAddToLogResponse :: W.Decoder Ros1Ur_dashboard_msgsAddToLogResponse
readRos1Ur_dashboard_msgsAddToLogResponse = do
  a0 <- W.text 256 True
  a1 <- W.boolean
  let value = Ros1Ur_dashboard_msgsAddToLogResponse a0 a1
  case encodeRos1Ur_dashboard_msgsAddToLogResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_dashboard_msgs/AddToLogResponse value.
-- \@details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_dashboard_msgsAddToLogResponse :: B.ByteString -> Either Word32 Ros1Ur_dashboard_msgsAddToLogResponse
decodeRos1Ur_dashboard_msgsAddToLogResponse = W.runDecoder 261 readRos1Ur_dashboard_msgsAddToLogResponse
instance Canonical Ros1Ur_dashboard_msgsAddToLogResponse where
  maximumBytes _ = 261
  encodeValue = encodeRos1Ur_dashboard_msgsAddToLogResponse
  readValue = readRos1Ur_dashboard_msgsAddToLogResponse
-- | \@brief Complete ROS 1 ur_dashboard_msgs/GetLoadedProgramRequest value.
-- \@details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and
-- is identified by UWVMROS1_54eecd0b652707f9c16dcbacbef05902112db993500404e1adaf26618e1d3a1a.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_dashboard_msgsGetLoadedProgramRequest = Ros1Ur_dashboard_msgsGetLoadedProgramRequest deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_dashboard_msgs/GetLoadedProgramRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_dashboard_msgsGetLoadedProgramRequest :: Ros1Ur_dashboard_msgsGetLoadedProgramRequest
defaultRos1Ur_dashboard_msgsGetLoadedProgramRequest = Ros1Ur_dashboard_msgsGetLoadedProgramRequest 
-- | \@brief Canonical codec identity of ur_dashboard_msgs/GetLoadedProgramRequest.
-- \@details Exact identity UWVMROS1_54eecd0b652707f9c16dcbacbef05902112db993500404e1adaf26618e1d3a1a binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsGetLoadedProgramRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_dashboard_msgs/GetLoadedProgramRequest.
-- \@details Exact identity UWVMROS1_54eecd0b652707f9c16dcbacbef05902112db993500404e1adaf26618e1d3a1a binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsGetLoadedProgramRequestCodecIdentity =
    "UWVMROS1_54eecd0b652707f9c16dcbacbef05902112db993500404e1adaf26618e1d3a1a"
-- | \@brief Encode one complete ur_dashboard_msgs/GetLoadedProgramRequest value.
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
-- \@see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_dashboard_msgsGetLoadedProgramRequest :: Ros1Ur_dashboard_msgsGetLoadedProgramRequest -> Either Word32 B.ByteString
encodeRos1Ur_dashboard_msgsGetLoadedProgramRequest value = do
  W.bounded 0 []
-- | \@brief Read the ordered canonical fields of ur_dashboard_msgs/GetLoadedProgramRequest.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_dashboard_msgsGetLoadedProgramRequest :: W.Decoder Ros1Ur_dashboard_msgsGetLoadedProgramRequest
readRos1Ur_dashboard_msgsGetLoadedProgramRequest = do
  let value = Ros1Ur_dashboard_msgsGetLoadedProgramRequest 
  case encodeRos1Ur_dashboard_msgsGetLoadedProgramRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_dashboard_msgs/GetLoadedProgramRequest value.
-- \@details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_dashboard_msgsGetLoadedProgramRequest :: B.ByteString -> Either Word32 Ros1Ur_dashboard_msgsGetLoadedProgramRequest
decodeRos1Ur_dashboard_msgsGetLoadedProgramRequest = W.runDecoder 0 readRos1Ur_dashboard_msgsGetLoadedProgramRequest
instance Canonical Ros1Ur_dashboard_msgsGetLoadedProgramRequest where
  maximumBytes _ = 0
  encodeValue = encodeRos1Ur_dashboard_msgsGetLoadedProgramRequest
  readValue = readRos1Ur_dashboard_msgsGetLoadedProgramRequest
-- | \@brief Complete ROS 1 ur_dashboard_msgs/GetLoadedProgramResponse value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies 9..521 bytes
-- and is identified by UWVMROS1_1680747345d40412a4731c48f08c402ac97fb12dd871fb320c2a9d002453f87a.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_dashboard_msgsGetLoadedProgramResponse = Ros1Ur_dashboard_msgsGetLoadedProgramResponse
  {
    -- | \@brief ur_dashboard_msgs/GetLoadedProgramResponse.answer: string; each string is 0..256 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsGetLoadedProgramResponse_answer :: T.Text
  ,
    -- | \@brief ur_dashboard_msgs/GetLoadedProgramResponse.program_name: string; each string is 0..256 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsGetLoadedProgramResponse_program_name :: T.Text
  ,
    -- | \@brief ur_dashboard_msgs/GetLoadedProgramResponse.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsGetLoadedProgramResponse_success :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_dashboard_msgs/GetLoadedProgramResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_dashboard_msgsGetLoadedProgramResponse :: Ros1Ur_dashboard_msgsGetLoadedProgramResponse
defaultRos1Ur_dashboard_msgsGetLoadedProgramResponse =
    Ros1Ur_dashboard_msgsGetLoadedProgramResponse
        (T.empty)
        (T.empty)
        (False)
-- | \@brief Canonical codec identity of ur_dashboard_msgs/GetLoadedProgramResponse.
-- \@details Exact identity UWVMROS1_1680747345d40412a4731c48f08c402ac97fb12dd871fb320c2a9d002453f87a binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsGetLoadedProgramResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_dashboard_msgs/GetLoadedProgramResponse.
-- \@details Exact identity UWVMROS1_1680747345d40412a4731c48f08c402ac97fb12dd871fb320c2a9d002453f87a binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsGetLoadedProgramResponseCodecIdentity =
    "UWVMROS1_1680747345d40412a4731c48f08c402ac97fb12dd871fb320c2a9d002453f87a"
-- | \@brief Encode one complete ur_dashboard_msgs/GetLoadedProgramResponse value.
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
-- \@see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_dashboard_msgsGetLoadedProgramResponse :: Ros1Ur_dashboard_msgsGetLoadedProgramResponse -> Either Word32 B.ByteString
encodeRos1Ur_dashboard_msgsGetLoadedProgramResponse value = do
  b0 <- W.encodeText 256 True (ros1Ur_dashboard_msgsGetLoadedProgramResponse_answer value)
  b1 <- W.encodeText 256 True (ros1Ur_dashboard_msgsGetLoadedProgramResponse_program_name value)
  b2 <- W.encodeBool (ros1Ur_dashboard_msgsGetLoadedProgramResponse_success value)
  W.bounded 521 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of ur_dashboard_msgs/GetLoadedProgramResponse.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_dashboard_msgsGetLoadedProgramResponse :: W.Decoder Ros1Ur_dashboard_msgsGetLoadedProgramResponse
readRos1Ur_dashboard_msgsGetLoadedProgramResponse = do
  a0 <- W.text 256 True
  a1 <- W.text 256 True
  a2 <- W.boolean
  let value = Ros1Ur_dashboard_msgsGetLoadedProgramResponse a0 a1 a2
  case encodeRos1Ur_dashboard_msgsGetLoadedProgramResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_dashboard_msgs/GetLoadedProgramResponse value.
-- \@details Require the complete 9..521-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_dashboard_msgsGetLoadedProgramResponse :: B.ByteString -> Either Word32 Ros1Ur_dashboard_msgsGetLoadedProgramResponse
decodeRos1Ur_dashboard_msgsGetLoadedProgramResponse = W.runDecoder 521 readRos1Ur_dashboard_msgsGetLoadedProgramResponse
instance Canonical Ros1Ur_dashboard_msgsGetLoadedProgramResponse where
  maximumBytes _ = 521
  encodeValue = encodeRos1Ur_dashboard_msgsGetLoadedProgramResponse
  readValue = readRos1Ur_dashboard_msgsGetLoadedProgramResponse
-- | \@brief Complete ROS 1 ur_dashboard_msgs/GetProgramStateRequest value.
-- \@details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and
-- is identified by UWVMROS1_cf14c6f86ef1904f80e88117dc2f2d29a003b52e21bc6569795771f04cf072a2.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_dashboard_msgsGetProgramStateRequest = Ros1Ur_dashboard_msgsGetProgramStateRequest deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_dashboard_msgs/GetProgramStateRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_dashboard_msgsGetProgramStateRequest :: Ros1Ur_dashboard_msgsGetProgramStateRequest
defaultRos1Ur_dashboard_msgsGetProgramStateRequest = Ros1Ur_dashboard_msgsGetProgramStateRequest 
-- | \@brief Canonical codec identity of ur_dashboard_msgs/GetProgramStateRequest.
-- \@details Exact identity UWVMROS1_cf14c6f86ef1904f80e88117dc2f2d29a003b52e21bc6569795771f04cf072a2 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsGetProgramStateRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_dashboard_msgs/GetProgramStateRequest.
-- \@details Exact identity UWVMROS1_cf14c6f86ef1904f80e88117dc2f2d29a003b52e21bc6569795771f04cf072a2 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsGetProgramStateRequestCodecIdentity =
    "UWVMROS1_cf14c6f86ef1904f80e88117dc2f2d29a003b52e21bc6569795771f04cf072a2"
-- | \@brief Encode one complete ur_dashboard_msgs/GetProgramStateRequest value.
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
-- \@see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_dashboard_msgsGetProgramStateRequest :: Ros1Ur_dashboard_msgsGetProgramStateRequest -> Either Word32 B.ByteString
encodeRos1Ur_dashboard_msgsGetProgramStateRequest value = do
  W.bounded 0 []
-- | \@brief Read the ordered canonical fields of ur_dashboard_msgs/GetProgramStateRequest.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_dashboard_msgsGetProgramStateRequest :: W.Decoder Ros1Ur_dashboard_msgsGetProgramStateRequest
readRos1Ur_dashboard_msgsGetProgramStateRequest = do
  let value = Ros1Ur_dashboard_msgsGetProgramStateRequest 
  case encodeRos1Ur_dashboard_msgsGetProgramStateRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_dashboard_msgs/GetProgramStateRequest value.
-- \@details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_dashboard_msgsGetProgramStateRequest :: B.ByteString -> Either Word32 Ros1Ur_dashboard_msgsGetProgramStateRequest
decodeRos1Ur_dashboard_msgsGetProgramStateRequest = W.runDecoder 0 readRos1Ur_dashboard_msgsGetProgramStateRequest
instance Canonical Ros1Ur_dashboard_msgsGetProgramStateRequest where
  maximumBytes _ = 0
  encodeValue = encodeRos1Ur_dashboard_msgsGetProgramStateRequest
  readValue = readRos1Ur_dashboard_msgsGetProgramStateRequest
-- | \@brief Complete ROS 1 ur_dashboard_msgs/ProgramState value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies 4..260 bytes
-- and is identified by UWVMROS1_97a57db64f20abcb9929b5296c75d66d994f2e9e26449810197c657694d3850e.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_dashboard_msgsProgramState = Ros1Ur_dashboard_msgsProgramState
  {
    -- | \@brief ur_dashboard_msgs/ProgramState.state: string; each string is 0..256 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsProgramState_state :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_dashboard_msgs/ProgramState.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_dashboard_msgsProgramState :: Ros1Ur_dashboard_msgsProgramState
defaultRos1Ur_dashboard_msgsProgramState = Ros1Ur_dashboard_msgsProgramState (T.empty)
-- | \@brief Canonical codec identity of ur_dashboard_msgs/ProgramState.
-- \@details Exact identity UWVMROS1_97a57db64f20abcb9929b5296c75d66d994f2e9e26449810197c657694d3850e binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsProgramStateCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_dashboard_msgs/ProgramState.
-- \@details Exact identity UWVMROS1_97a57db64f20abcb9929b5296c75d66d994f2e9e26449810197c657694d3850e binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsProgramStateCodecIdentity =
    "UWVMROS1_97a57db64f20abcb9929b5296c75d66d994f2e9e26449810197c657694d3850e"
-- | \@brief ur_dashboard_msgs/ProgramState.STOPPED: original string constant.
-- \@details Exact admitted value STOPPED. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsProgramState_STOPPED :: T.Text
-- | \@brief ur_dashboard_msgs/ProgramState.STOPPED: original string constant.
-- \@details Exact admitted value STOPPED. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsProgramState_STOPPED =
    T.pack
        [ toEnum 0x53
        , toEnum 0x54
        , toEnum 0x4f
        , toEnum 0x50
        , toEnum 0x50
        , toEnum 0x45
        , toEnum 0x44
        ]
-- | \@brief ur_dashboard_msgs/ProgramState.PLAYING: original string constant.
-- \@details Exact admitted value PLAYING. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsProgramState_PLAYING :: T.Text
-- | \@brief ur_dashboard_msgs/ProgramState.PLAYING: original string constant.
-- \@details Exact admitted value PLAYING. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsProgramState_PLAYING =
    T.pack
        [ toEnum 0x50
        , toEnum 0x4c
        , toEnum 0x41
        , toEnum 0x59
        , toEnum 0x49
        , toEnum 0x4e
        , toEnum 0x47
        ]
-- | \@brief ur_dashboard_msgs/ProgramState.PAUSED: original string constant.
-- \@details Exact admitted value PAUSED. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsProgramState_PAUSED :: T.Text
-- | \@brief ur_dashboard_msgs/ProgramState.PAUSED: original string constant.
-- \@details Exact admitted value PAUSED. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsProgramState_PAUSED =
    T.pack
        [ toEnum 0x50
        , toEnum 0x41
        , toEnum 0x55
        , toEnum 0x53
        , toEnum 0x45
        , toEnum 0x44
        ]
-- | \@brief Encode one complete ur_dashboard_msgs/ProgramState value.
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
-- \@see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_dashboard_msgsProgramState :: Ros1Ur_dashboard_msgsProgramState -> Either Word32 B.ByteString
encodeRos1Ur_dashboard_msgsProgramState value = do
  b0 <- W.encodeText 256 True (ros1Ur_dashboard_msgsProgramState_state value)
  W.bounded 260 [b0]
-- | \@brief Read the ordered canonical fields of ur_dashboard_msgs/ProgramState.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_dashboard_msgsProgramState :: W.Decoder Ros1Ur_dashboard_msgsProgramState
readRos1Ur_dashboard_msgsProgramState = do
  a0 <- W.text 256 True
  let value = Ros1Ur_dashboard_msgsProgramState a0
  case encodeRos1Ur_dashboard_msgsProgramState value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_dashboard_msgs/ProgramState value.
-- \@details Require the complete 4..260-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_dashboard_msgsProgramState :: B.ByteString -> Either Word32 Ros1Ur_dashboard_msgsProgramState
decodeRos1Ur_dashboard_msgsProgramState = W.runDecoder 260 readRos1Ur_dashboard_msgsProgramState
instance Canonical Ros1Ur_dashboard_msgsProgramState where
  maximumBytes _ = 260
  encodeValue = encodeRos1Ur_dashboard_msgsProgramState
  readValue = readRos1Ur_dashboard_msgsProgramState
-- | \@brief Complete ROS 1 ur_dashboard_msgs/GetProgramStateResponse value.
-- \@details All 4 declared fields are retained in source order. The canonical representation occupies 13..781 bytes
-- and is identified by UWVMROS1_366caf89303bfff48d3c0f89aa2a640c3d29af5a0c19d76ceccf26d50c3ab2ed.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_dashboard_msgsGetProgramStateResponse = Ros1Ur_dashboard_msgsGetProgramStateResponse
  {
    -- | \@brief ur_dashboard_msgs/GetProgramStateResponse.state: ur_dashboard_msgs/ProgramState.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsGetProgramStateResponse_state :: Ros1Ur_dashboard_msgsProgramState
  ,
    -- | \@brief ur_dashboard_msgs/GetProgramStateResponse.program_name: string; each string is 0..256 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsGetProgramStateResponse_program_name :: T.Text
  ,
    -- | \@brief ur_dashboard_msgs/GetProgramStateResponse.answer: string; each string is 0..256 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsGetProgramStateResponse_answer :: T.Text
  ,
    -- | \@brief ur_dashboard_msgs/GetProgramStateResponse.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsGetProgramStateResponse_success :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_dashboard_msgs/GetProgramStateResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_dashboard_msgsGetProgramStateResponse :: Ros1Ur_dashboard_msgsGetProgramStateResponse
defaultRos1Ur_dashboard_msgsGetProgramStateResponse =
    Ros1Ur_dashboard_msgsGetProgramStateResponse
        (defaultRos1Ur_dashboard_msgsProgramState)
        (T.empty)
        (T.empty)
        (False)
-- | \@brief Canonical codec identity of ur_dashboard_msgs/GetProgramStateResponse.
-- \@details Exact identity UWVMROS1_366caf89303bfff48d3c0f89aa2a640c3d29af5a0c19d76ceccf26d50c3ab2ed binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsGetProgramStateResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_dashboard_msgs/GetProgramStateResponse.
-- \@details Exact identity UWVMROS1_366caf89303bfff48d3c0f89aa2a640c3d29af5a0c19d76ceccf26d50c3ab2ed binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsGetProgramStateResponseCodecIdentity =
    "UWVMROS1_366caf89303bfff48d3c0f89aa2a640c3d29af5a0c19d76ceccf26d50c3ab2ed"
-- | \@brief Encode one complete ur_dashboard_msgs/GetProgramStateResponse value.
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
-- \@see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_dashboard_msgsGetProgramStateResponse :: Ros1Ur_dashboard_msgsGetProgramStateResponse -> Either Word32 B.ByteString
encodeRos1Ur_dashboard_msgsGetProgramStateResponse value = do
  b0 <- encodeRos1Ur_dashboard_msgsProgramState (ros1Ur_dashboard_msgsGetProgramStateResponse_state value)
  b1 <- W.encodeText 256 True (ros1Ur_dashboard_msgsGetProgramStateResponse_program_name value)
  b2 <- W.encodeText 256 True (ros1Ur_dashboard_msgsGetProgramStateResponse_answer value)
  b3 <- W.encodeBool (ros1Ur_dashboard_msgsGetProgramStateResponse_success value)
  W.bounded 781 [b0, b1, b2, b3]
-- | \@brief Read the ordered canonical fields of ur_dashboard_msgs/GetProgramStateResponse.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_dashboard_msgsGetProgramStateResponse :: W.Decoder Ros1Ur_dashboard_msgsGetProgramStateResponse
readRos1Ur_dashboard_msgsGetProgramStateResponse = do
  a0 <- readRos1Ur_dashboard_msgsProgramState
  a1 <- W.text 256 True
  a2 <- W.text 256 True
  a3 <- W.boolean
  let value = Ros1Ur_dashboard_msgsGetProgramStateResponse a0 a1 a2 a3
  case encodeRos1Ur_dashboard_msgsGetProgramStateResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_dashboard_msgs/GetProgramStateResponse value.
-- \@details Require the complete 13..781-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_dashboard_msgsGetProgramStateResponse :: B.ByteString -> Either Word32 Ros1Ur_dashboard_msgsGetProgramStateResponse
decodeRos1Ur_dashboard_msgsGetProgramStateResponse = W.runDecoder 781 readRos1Ur_dashboard_msgsGetProgramStateResponse
instance Canonical Ros1Ur_dashboard_msgsGetProgramStateResponse where
  maximumBytes _ = 781
  encodeValue = encodeRos1Ur_dashboard_msgsGetProgramStateResponse
  readValue = readRos1Ur_dashboard_msgsGetProgramStateResponse
-- | \@brief Complete ROS 1 ur_dashboard_msgs/GetRobotModeRequest value.
-- \@details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and
-- is identified by UWVMROS1_b9ffe283d7dbcb85879dbf6964d393f5d44661227bb26e1acc34308edb288609.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_dashboard_msgsGetRobotModeRequest = Ros1Ur_dashboard_msgsGetRobotModeRequest deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_dashboard_msgs/GetRobotModeRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_dashboard_msgsGetRobotModeRequest :: Ros1Ur_dashboard_msgsGetRobotModeRequest
defaultRos1Ur_dashboard_msgsGetRobotModeRequest = Ros1Ur_dashboard_msgsGetRobotModeRequest 
-- | \@brief Canonical codec identity of ur_dashboard_msgs/GetRobotModeRequest.
-- \@details Exact identity UWVMROS1_b9ffe283d7dbcb85879dbf6964d393f5d44661227bb26e1acc34308edb288609 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsGetRobotModeRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_dashboard_msgs/GetRobotModeRequest.
-- \@details Exact identity UWVMROS1_b9ffe283d7dbcb85879dbf6964d393f5d44661227bb26e1acc34308edb288609 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsGetRobotModeRequestCodecIdentity =
    "UWVMROS1_b9ffe283d7dbcb85879dbf6964d393f5d44661227bb26e1acc34308edb288609"
-- | \@brief Encode one complete ur_dashboard_msgs/GetRobotModeRequest value.
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
-- \@see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_dashboard_msgsGetRobotModeRequest :: Ros1Ur_dashboard_msgsGetRobotModeRequest -> Either Word32 B.ByteString
encodeRos1Ur_dashboard_msgsGetRobotModeRequest value = do
  W.bounded 0 []
-- | \@brief Read the ordered canonical fields of ur_dashboard_msgs/GetRobotModeRequest.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_dashboard_msgsGetRobotModeRequest :: W.Decoder Ros1Ur_dashboard_msgsGetRobotModeRequest
readRos1Ur_dashboard_msgsGetRobotModeRequest = do
  let value = Ros1Ur_dashboard_msgsGetRobotModeRequest 
  case encodeRos1Ur_dashboard_msgsGetRobotModeRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_dashboard_msgs/GetRobotModeRequest value.
-- \@details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_dashboard_msgsGetRobotModeRequest :: B.ByteString -> Either Word32 Ros1Ur_dashboard_msgsGetRobotModeRequest
decodeRos1Ur_dashboard_msgsGetRobotModeRequest = W.runDecoder 0 readRos1Ur_dashboard_msgsGetRobotModeRequest
instance Canonical Ros1Ur_dashboard_msgsGetRobotModeRequest where
  maximumBytes _ = 0
  encodeValue = encodeRos1Ur_dashboard_msgsGetRobotModeRequest
  readValue = readRos1Ur_dashboard_msgsGetRobotModeRequest
-- | \@brief Complete ROS 1 ur_dashboard_msgs/RobotMode value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and
-- is identified by UWVMROS1_b2772853eff2ec9b849b6de4a90ce98487a8eff49d1371283dce503908702066.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_dashboard_msgsRobotMode = Ros1Ur_dashboard_msgsRobotMode
  {
    -- | \@brief ur_dashboard_msgs/RobotMode.mode: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsRobotMode_mode :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_dashboard_msgs/RobotMode.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_dashboard_msgsRobotMode :: Ros1Ur_dashboard_msgsRobotMode
defaultRos1Ur_dashboard_msgsRobotMode = Ros1Ur_dashboard_msgsRobotMode (0)
-- | \@brief Canonical codec identity of ur_dashboard_msgs/RobotMode.
-- \@details Exact identity UWVMROS1_b2772853eff2ec9b849b6de4a90ce98487a8eff49d1371283dce503908702066 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsRobotModeCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_dashboard_msgs/RobotMode.
-- \@details Exact identity UWVMROS1_b2772853eff2ec9b849b6de4a90ce98487a8eff49d1371283dce503908702066 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsRobotModeCodecIdentity =
    "UWVMROS1_b2772853eff2ec9b849b6de4a90ce98487a8eff49d1371283dce503908702066"
-- | \@brief ur_dashboard_msgs/RobotMode.NO_CONTROLLER: original int8 constant.
-- \@details Exact admitted value -1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsRobotMode_NO_CONTROLLER :: Int8
-- | \@brief ur_dashboard_msgs/RobotMode.NO_CONTROLLER: original int8 constant.
-- \@details Exact admitted value -1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsRobotMode_NO_CONTROLLER = -1
-- | \@brief ur_dashboard_msgs/RobotMode.DISCONNECTED: original int8 constant.
-- \@details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsRobotMode_DISCONNECTED :: Int8
-- | \@brief ur_dashboard_msgs/RobotMode.DISCONNECTED: original int8 constant.
-- \@details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsRobotMode_DISCONNECTED = 0
-- | \@brief ur_dashboard_msgs/RobotMode.CONFIRM_SAFETY: original int8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsRobotMode_CONFIRM_SAFETY :: Int8
-- | \@brief ur_dashboard_msgs/RobotMode.CONFIRM_SAFETY: original int8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsRobotMode_CONFIRM_SAFETY = 1
-- | \@brief ur_dashboard_msgs/RobotMode.BOOTING: original int8 constant.
-- \@details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsRobotMode_BOOTING :: Int8
-- | \@brief ur_dashboard_msgs/RobotMode.BOOTING: original int8 constant.
-- \@details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsRobotMode_BOOTING = 2
-- | \@brief ur_dashboard_msgs/RobotMode.POWER_OFF: original int8 constant.
-- \@details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsRobotMode_POWER_OFF :: Int8
-- | \@brief ur_dashboard_msgs/RobotMode.POWER_OFF: original int8 constant.
-- \@details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsRobotMode_POWER_OFF = 3
-- | \@brief ur_dashboard_msgs/RobotMode.POWER_ON: original int8 constant.
-- \@details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsRobotMode_POWER_ON :: Int8
-- | \@brief ur_dashboard_msgs/RobotMode.POWER_ON: original int8 constant.
-- \@details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsRobotMode_POWER_ON = 4
-- | \@brief ur_dashboard_msgs/RobotMode.IDLE: original int8 constant.
-- \@details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsRobotMode_IDLE :: Int8
-- | \@brief ur_dashboard_msgs/RobotMode.IDLE: original int8 constant.
-- \@details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsRobotMode_IDLE = 5
-- | \@brief ur_dashboard_msgs/RobotMode.BACKDRIVE: original int8 constant.
-- \@details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsRobotMode_BACKDRIVE :: Int8
-- | \@brief ur_dashboard_msgs/RobotMode.BACKDRIVE: original int8 constant.
-- \@details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsRobotMode_BACKDRIVE = 6
-- | \@brief ur_dashboard_msgs/RobotMode.RUNNING: original int8 constant.
-- \@details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsRobotMode_RUNNING :: Int8
-- | \@brief ur_dashboard_msgs/RobotMode.RUNNING: original int8 constant.
-- \@details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsRobotMode_RUNNING = 7
-- | \@brief ur_dashboard_msgs/RobotMode.UPDATING_FIRMWARE: original int8 constant.
-- \@details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsRobotMode_UPDATING_FIRMWARE :: Int8
-- | \@brief ur_dashboard_msgs/RobotMode.UPDATING_FIRMWARE: original int8 constant.
-- \@details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsRobotMode_UPDATING_FIRMWARE = 8
-- | \@brief Encode one complete ur_dashboard_msgs/RobotMode value.
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
-- \@see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_dashboard_msgsRobotMode :: Ros1Ur_dashboard_msgsRobotMode -> Either Word32 B.ByteString
encodeRos1Ur_dashboard_msgsRobotMode value = do
  b0 <- W.encodeSigned 1 (fromIntegral (ros1Ur_dashboard_msgsRobotMode_mode value))
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of ur_dashboard_msgs/RobotMode.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_dashboard_msgsRobotMode :: W.Decoder Ros1Ur_dashboard_msgsRobotMode
readRos1Ur_dashboard_msgsRobotMode = do
  a0 <- fromIntegral <$> W.signed 1
  let value = Ros1Ur_dashboard_msgsRobotMode a0
  case encodeRos1Ur_dashboard_msgsRobotMode value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_dashboard_msgs/RobotMode value.
-- \@details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_dashboard_msgsRobotMode :: B.ByteString -> Either Word32 Ros1Ur_dashboard_msgsRobotMode
decodeRos1Ur_dashboard_msgsRobotMode = W.runDecoder 1 readRos1Ur_dashboard_msgsRobotMode
instance Canonical Ros1Ur_dashboard_msgsRobotMode where
  maximumBytes _ = 1
  encodeValue = encodeRos1Ur_dashboard_msgsRobotMode
  readValue = readRos1Ur_dashboard_msgsRobotMode
-- | \@brief Complete ROS 1 ur_dashboard_msgs/GetRobotModeResponse value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies 6..262 bytes
-- and is identified by UWVMROS1_f6c0d0d03a956a34b00fd63540226b6abb8b106e2a35cb912b4886a5c4cecc3f.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_dashboard_msgsGetRobotModeResponse = Ros1Ur_dashboard_msgsGetRobotModeResponse
  {
    -- | \@brief ur_dashboard_msgs/GetRobotModeResponse.robot_mode: ur_dashboard_msgs/RobotMode.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsGetRobotModeResponse_robot_mode :: Ros1Ur_dashboard_msgsRobotMode
  ,
    -- | \@brief ur_dashboard_msgs/GetRobotModeResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with
    -- no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsGetRobotModeResponse_answer :: T.Text
  ,
    -- | \@brief ur_dashboard_msgs/GetRobotModeResponse.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsGetRobotModeResponse_success :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_dashboard_msgs/GetRobotModeResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_dashboard_msgsGetRobotModeResponse :: Ros1Ur_dashboard_msgsGetRobotModeResponse
defaultRos1Ur_dashboard_msgsGetRobotModeResponse =
    Ros1Ur_dashboard_msgsGetRobotModeResponse
        (defaultRos1Ur_dashboard_msgsRobotMode)
        (T.empty)
        (False)
-- | \@brief Canonical codec identity of ur_dashboard_msgs/GetRobotModeResponse.
-- \@details Exact identity UWVMROS1_f6c0d0d03a956a34b00fd63540226b6abb8b106e2a35cb912b4886a5c4cecc3f binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsGetRobotModeResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_dashboard_msgs/GetRobotModeResponse.
-- \@details Exact identity UWVMROS1_f6c0d0d03a956a34b00fd63540226b6abb8b106e2a35cb912b4886a5c4cecc3f binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsGetRobotModeResponseCodecIdentity =
    "UWVMROS1_f6c0d0d03a956a34b00fd63540226b6abb8b106e2a35cb912b4886a5c4cecc3f"
-- | \@brief Encode one complete ur_dashboard_msgs/GetRobotModeResponse value.
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
-- \@see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_dashboard_msgsGetRobotModeResponse :: Ros1Ur_dashboard_msgsGetRobotModeResponse -> Either Word32 B.ByteString
encodeRos1Ur_dashboard_msgsGetRobotModeResponse value = do
  b0 <- encodeRos1Ur_dashboard_msgsRobotMode (ros1Ur_dashboard_msgsGetRobotModeResponse_robot_mode value)
  b1 <- W.encodeText 256 True (ros1Ur_dashboard_msgsGetRobotModeResponse_answer value)
  b2 <- W.encodeBool (ros1Ur_dashboard_msgsGetRobotModeResponse_success value)
  W.bounded 262 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of ur_dashboard_msgs/GetRobotModeResponse.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_dashboard_msgsGetRobotModeResponse :: W.Decoder Ros1Ur_dashboard_msgsGetRobotModeResponse
readRos1Ur_dashboard_msgsGetRobotModeResponse = do
  a0 <- readRos1Ur_dashboard_msgsRobotMode
  a1 <- W.text 256 True
  a2 <- W.boolean
  let value = Ros1Ur_dashboard_msgsGetRobotModeResponse a0 a1 a2
  case encodeRos1Ur_dashboard_msgsGetRobotModeResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_dashboard_msgs/GetRobotModeResponse value.
-- \@details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_dashboard_msgsGetRobotModeResponse :: B.ByteString -> Either Word32 Ros1Ur_dashboard_msgsGetRobotModeResponse
decodeRos1Ur_dashboard_msgsGetRobotModeResponse = W.runDecoder 262 readRos1Ur_dashboard_msgsGetRobotModeResponse
instance Canonical Ros1Ur_dashboard_msgsGetRobotModeResponse where
  maximumBytes _ = 262
  encodeValue = encodeRos1Ur_dashboard_msgsGetRobotModeResponse
  readValue = readRos1Ur_dashboard_msgsGetRobotModeResponse
-- | \@brief Complete ROS 1 ur_dashboard_msgs/GetSafetyModeRequest value.
-- \@details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and
-- is identified by UWVMROS1_f697e2ff2bcd56523563060a46bca2e1b7af487128f05562fcb18bfa73cbca8b.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_dashboard_msgsGetSafetyModeRequest = Ros1Ur_dashboard_msgsGetSafetyModeRequest deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_dashboard_msgs/GetSafetyModeRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_dashboard_msgsGetSafetyModeRequest :: Ros1Ur_dashboard_msgsGetSafetyModeRequest
defaultRos1Ur_dashboard_msgsGetSafetyModeRequest = Ros1Ur_dashboard_msgsGetSafetyModeRequest 
-- | \@brief Canonical codec identity of ur_dashboard_msgs/GetSafetyModeRequest.
-- \@details Exact identity UWVMROS1_f697e2ff2bcd56523563060a46bca2e1b7af487128f05562fcb18bfa73cbca8b binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsGetSafetyModeRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_dashboard_msgs/GetSafetyModeRequest.
-- \@details Exact identity UWVMROS1_f697e2ff2bcd56523563060a46bca2e1b7af487128f05562fcb18bfa73cbca8b binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsGetSafetyModeRequestCodecIdentity =
    "UWVMROS1_f697e2ff2bcd56523563060a46bca2e1b7af487128f05562fcb18bfa73cbca8b"
-- | \@brief Encode one complete ur_dashboard_msgs/GetSafetyModeRequest value.
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
-- \@see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_dashboard_msgsGetSafetyModeRequest :: Ros1Ur_dashboard_msgsGetSafetyModeRequest -> Either Word32 B.ByteString
encodeRos1Ur_dashboard_msgsGetSafetyModeRequest value = do
  W.bounded 0 []
-- | \@brief Read the ordered canonical fields of ur_dashboard_msgs/GetSafetyModeRequest.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_dashboard_msgsGetSafetyModeRequest :: W.Decoder Ros1Ur_dashboard_msgsGetSafetyModeRequest
readRos1Ur_dashboard_msgsGetSafetyModeRequest = do
  let value = Ros1Ur_dashboard_msgsGetSafetyModeRequest 
  case encodeRos1Ur_dashboard_msgsGetSafetyModeRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_dashboard_msgs/GetSafetyModeRequest value.
-- \@details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_dashboard_msgsGetSafetyModeRequest :: B.ByteString -> Either Word32 Ros1Ur_dashboard_msgsGetSafetyModeRequest
decodeRos1Ur_dashboard_msgsGetSafetyModeRequest = W.runDecoder 0 readRos1Ur_dashboard_msgsGetSafetyModeRequest
instance Canonical Ros1Ur_dashboard_msgsGetSafetyModeRequest where
  maximumBytes _ = 0
  encodeValue = encodeRos1Ur_dashboard_msgsGetSafetyModeRequest
  readValue = readRos1Ur_dashboard_msgsGetSafetyModeRequest
-- | \@brief Complete ROS 1 ur_dashboard_msgs/SafetyMode value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and
-- is identified by UWVMROS1_5a0c2737166cf2e2bd4c17b46c597f674b8d806b802d4e86ee0d76fc55f29cf7.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_dashboard_msgsSafetyMode = Ros1Ur_dashboard_msgsSafetyMode
  {
    -- | \@brief ur_dashboard_msgs/SafetyMode.mode: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsSafetyMode_mode :: Word8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_dashboard_msgs/SafetyMode.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_dashboard_msgsSafetyMode :: Ros1Ur_dashboard_msgsSafetyMode
defaultRos1Ur_dashboard_msgsSafetyMode = Ros1Ur_dashboard_msgsSafetyMode (0)
-- | \@brief Canonical codec identity of ur_dashboard_msgs/SafetyMode.
-- \@details Exact identity UWVMROS1_5a0c2737166cf2e2bd4c17b46c597f674b8d806b802d4e86ee0d76fc55f29cf7 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsSafetyModeCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_dashboard_msgs/SafetyMode.
-- \@details Exact identity UWVMROS1_5a0c2737166cf2e2bd4c17b46c597f674b8d806b802d4e86ee0d76fc55f29cf7 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsSafetyModeCodecIdentity =
    "UWVMROS1_5a0c2737166cf2e2bd4c17b46c597f674b8d806b802d4e86ee0d76fc55f29cf7"
-- | \@brief ur_dashboard_msgs/SafetyMode.NORMAL: original uint8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsSafetyMode_NORMAL :: Word8
-- | \@brief ur_dashboard_msgs/SafetyMode.NORMAL: original uint8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsSafetyMode_NORMAL = 1
-- | \@brief ur_dashboard_msgs/SafetyMode.REDUCED: original uint8 constant.
-- \@details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsSafetyMode_REDUCED :: Word8
-- | \@brief ur_dashboard_msgs/SafetyMode.REDUCED: original uint8 constant.
-- \@details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsSafetyMode_REDUCED = 2
-- | \@brief ur_dashboard_msgs/SafetyMode.PROTECTIVE_STOP: original uint8 constant.
-- \@details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsSafetyMode_PROTECTIVE_STOP :: Word8
-- | \@brief ur_dashboard_msgs/SafetyMode.PROTECTIVE_STOP: original uint8 constant.
-- \@details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsSafetyMode_PROTECTIVE_STOP = 3
-- | \@brief ur_dashboard_msgs/SafetyMode.RECOVERY: original uint8 constant.
-- \@details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsSafetyMode_RECOVERY :: Word8
-- | \@brief ur_dashboard_msgs/SafetyMode.RECOVERY: original uint8 constant.
-- \@details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsSafetyMode_RECOVERY = 4
-- | \@brief ur_dashboard_msgs/SafetyMode.SAFEGUARD_STOP: original uint8 constant.
-- \@details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsSafetyMode_SAFEGUARD_STOP :: Word8
-- | \@brief ur_dashboard_msgs/SafetyMode.SAFEGUARD_STOP: original uint8 constant.
-- \@details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsSafetyMode_SAFEGUARD_STOP = 5
-- | \@brief ur_dashboard_msgs/SafetyMode.SYSTEM_EMERGENCY_STOP: original uint8 constant.
-- \@details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsSafetyMode_SYSTEM_EMERGENCY_STOP :: Word8
-- | \@brief ur_dashboard_msgs/SafetyMode.SYSTEM_EMERGENCY_STOP: original uint8 constant.
-- \@details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsSafetyMode_SYSTEM_EMERGENCY_STOP = 6
-- | \@brief ur_dashboard_msgs/SafetyMode.ROBOT_EMERGENCY_STOP: original uint8 constant.
-- \@details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsSafetyMode_ROBOT_EMERGENCY_STOP :: Word8
-- | \@brief ur_dashboard_msgs/SafetyMode.ROBOT_EMERGENCY_STOP: original uint8 constant.
-- \@details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsSafetyMode_ROBOT_EMERGENCY_STOP = 7
-- | \@brief ur_dashboard_msgs/SafetyMode.VIOLATION: original uint8 constant.
-- \@details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsSafetyMode_VIOLATION :: Word8
-- | \@brief ur_dashboard_msgs/SafetyMode.VIOLATION: original uint8 constant.
-- \@details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsSafetyMode_VIOLATION = 8
-- | \@brief ur_dashboard_msgs/SafetyMode.FAULT: original uint8 constant.
-- \@details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsSafetyMode_FAULT :: Word8
-- | \@brief ur_dashboard_msgs/SafetyMode.FAULT: original uint8 constant.
-- \@details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsSafetyMode_FAULT = 9
-- | \@brief ur_dashboard_msgs/SafetyMode.VALIDATE_JOINT_ID: original uint8 constant.
-- \@details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsSafetyMode_VALIDATE_JOINT_ID :: Word8
-- | \@brief ur_dashboard_msgs/SafetyMode.VALIDATE_JOINT_ID: original uint8 constant.
-- \@details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsSafetyMode_VALIDATE_JOINT_ID = 10
-- | \@brief ur_dashboard_msgs/SafetyMode.UNDEFINED_SAFETY_MODE: original uint8 constant.
-- \@details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsSafetyMode_UNDEFINED_SAFETY_MODE :: Word8
-- | \@brief ur_dashboard_msgs/SafetyMode.UNDEFINED_SAFETY_MODE: original uint8 constant.
-- \@details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsSafetyMode_UNDEFINED_SAFETY_MODE = 11
-- | \@brief ur_dashboard_msgs/SafetyMode.AUTOMATIC_MODE_SAFEGUARD_STOP: original uint8 constant.
-- \@details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsSafetyMode_AUTOMATIC_MODE_SAFEGUARD_STOP :: Word8
-- | \@brief ur_dashboard_msgs/SafetyMode.AUTOMATIC_MODE_SAFEGUARD_STOP: original uint8 constant.
-- \@details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsSafetyMode_AUTOMATIC_MODE_SAFEGUARD_STOP = 12
-- | \@brief ur_dashboard_msgs/SafetyMode.SYSTEM_THREE_POSITION_ENABLING_STOP: original uint8 constant.
-- \@details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsSafetyMode_SYSTEM_THREE_POSITION_ENABLING_STOP :: Word8
-- | \@brief ur_dashboard_msgs/SafetyMode.SYSTEM_THREE_POSITION_ENABLING_STOP: original uint8 constant.
-- \@details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsSafetyMode_SYSTEM_THREE_POSITION_ENABLING_STOP = 13
-- | \@brief Encode one complete ur_dashboard_msgs/SafetyMode value.
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
-- \@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_dashboard_msgsSafetyMode :: Ros1Ur_dashboard_msgsSafetyMode -> Either Word32 B.ByteString
encodeRos1Ur_dashboard_msgsSafetyMode value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros1Ur_dashboard_msgsSafetyMode_mode value))
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of ur_dashboard_msgs/SafetyMode.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_dashboard_msgsSafetyMode :: W.Decoder Ros1Ur_dashboard_msgsSafetyMode
readRos1Ur_dashboard_msgsSafetyMode = do
  a0 <- fromIntegral <$> W.unsigned 1
  let value = Ros1Ur_dashboard_msgsSafetyMode a0
  case encodeRos1Ur_dashboard_msgsSafetyMode value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_dashboard_msgs/SafetyMode value.
-- \@details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_dashboard_msgsSafetyMode :: B.ByteString -> Either Word32 Ros1Ur_dashboard_msgsSafetyMode
decodeRos1Ur_dashboard_msgsSafetyMode = W.runDecoder 1 readRos1Ur_dashboard_msgsSafetyMode
instance Canonical Ros1Ur_dashboard_msgsSafetyMode where
  maximumBytes _ = 1
  encodeValue = encodeRos1Ur_dashboard_msgsSafetyMode
  readValue = readRos1Ur_dashboard_msgsSafetyMode
-- | \@brief Complete ROS 1 ur_dashboard_msgs/GetSafetyModeResponse value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies 6..262 bytes
-- and is identified by UWVMROS1_70121af922588eaab9a34855e3da0cde837b1449d2a2d6c28addc70916df1a15.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_dashboard_msgsGetSafetyModeResponse = Ros1Ur_dashboard_msgsGetSafetyModeResponse
  {
    -- | \@brief ur_dashboard_msgs/GetSafetyModeResponse.safety_mode: ur_dashboard_msgs/SafetyMode.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsGetSafetyModeResponse_safety_mode :: Ros1Ur_dashboard_msgsSafetyMode
  ,
    -- | \@brief ur_dashboard_msgs/GetSafetyModeResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with
    -- no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsGetSafetyModeResponse_answer :: T.Text
  ,
    -- | \@brief ur_dashboard_msgs/GetSafetyModeResponse.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsGetSafetyModeResponse_success :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_dashboard_msgs/GetSafetyModeResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_dashboard_msgsGetSafetyModeResponse :: Ros1Ur_dashboard_msgsGetSafetyModeResponse
defaultRos1Ur_dashboard_msgsGetSafetyModeResponse =
    Ros1Ur_dashboard_msgsGetSafetyModeResponse
        (defaultRos1Ur_dashboard_msgsSafetyMode)
        (T.empty)
        (False)
-- | \@brief Canonical codec identity of ur_dashboard_msgs/GetSafetyModeResponse.
-- \@details Exact identity UWVMROS1_70121af922588eaab9a34855e3da0cde837b1449d2a2d6c28addc70916df1a15 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsGetSafetyModeResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_dashboard_msgs/GetSafetyModeResponse.
-- \@details Exact identity UWVMROS1_70121af922588eaab9a34855e3da0cde837b1449d2a2d6c28addc70916df1a15 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsGetSafetyModeResponseCodecIdentity =
    "UWVMROS1_70121af922588eaab9a34855e3da0cde837b1449d2a2d6c28addc70916df1a15"
-- | \@brief Encode one complete ur_dashboard_msgs/GetSafetyModeResponse value.
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
-- \@see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_dashboard_msgsGetSafetyModeResponse :: Ros1Ur_dashboard_msgsGetSafetyModeResponse -> Either Word32 B.ByteString
encodeRos1Ur_dashboard_msgsGetSafetyModeResponse value = do
  b0 <- encodeRos1Ur_dashboard_msgsSafetyMode (ros1Ur_dashboard_msgsGetSafetyModeResponse_safety_mode value)
  b1 <- W.encodeText 256 True (ros1Ur_dashboard_msgsGetSafetyModeResponse_answer value)
  b2 <- W.encodeBool (ros1Ur_dashboard_msgsGetSafetyModeResponse_success value)
  W.bounded 262 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of ur_dashboard_msgs/GetSafetyModeResponse.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_dashboard_msgsGetSafetyModeResponse :: W.Decoder Ros1Ur_dashboard_msgsGetSafetyModeResponse
readRos1Ur_dashboard_msgsGetSafetyModeResponse = do
  a0 <- readRos1Ur_dashboard_msgsSafetyMode
  a1 <- W.text 256 True
  a2 <- W.boolean
  let value = Ros1Ur_dashboard_msgsGetSafetyModeResponse a0 a1 a2
  case encodeRos1Ur_dashboard_msgsGetSafetyModeResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_dashboard_msgs/GetSafetyModeResponse value.
-- \@details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_dashboard_msgsGetSafetyModeResponse :: B.ByteString -> Either Word32 Ros1Ur_dashboard_msgsGetSafetyModeResponse
decodeRos1Ur_dashboard_msgsGetSafetyModeResponse = W.runDecoder 262 readRos1Ur_dashboard_msgsGetSafetyModeResponse
instance Canonical Ros1Ur_dashboard_msgsGetSafetyModeResponse where
  maximumBytes _ = 262
  encodeValue = encodeRos1Ur_dashboard_msgsGetSafetyModeResponse
  readValue = readRos1Ur_dashboard_msgsGetSafetyModeResponse
-- | \@brief Complete ROS 1 ur_dashboard_msgs/IsInRemoteControlRequest value.
-- \@details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and
-- is identified by UWVMROS1_4b3c39f36f953904eb582d8c5f91161f2864782d4a4ab209a7dab32a117175da.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_dashboard_msgsIsInRemoteControlRequest = Ros1Ur_dashboard_msgsIsInRemoteControlRequest deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_dashboard_msgs/IsInRemoteControlRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_dashboard_msgsIsInRemoteControlRequest :: Ros1Ur_dashboard_msgsIsInRemoteControlRequest
defaultRos1Ur_dashboard_msgsIsInRemoteControlRequest = Ros1Ur_dashboard_msgsIsInRemoteControlRequest 
-- | \@brief Canonical codec identity of ur_dashboard_msgs/IsInRemoteControlRequest.
-- \@details Exact identity UWVMROS1_4b3c39f36f953904eb582d8c5f91161f2864782d4a4ab209a7dab32a117175da binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsIsInRemoteControlRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_dashboard_msgs/IsInRemoteControlRequest.
-- \@details Exact identity UWVMROS1_4b3c39f36f953904eb582d8c5f91161f2864782d4a4ab209a7dab32a117175da binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsIsInRemoteControlRequestCodecIdentity =
    "UWVMROS1_4b3c39f36f953904eb582d8c5f91161f2864782d4a4ab209a7dab32a117175da"
-- | \@brief Encode one complete ur_dashboard_msgs/IsInRemoteControlRequest value.
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
-- \@see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_dashboard_msgsIsInRemoteControlRequest :: Ros1Ur_dashboard_msgsIsInRemoteControlRequest -> Either Word32 B.ByteString
encodeRos1Ur_dashboard_msgsIsInRemoteControlRequest value = do
  W.bounded 0 []
-- | \@brief Read the ordered canonical fields of ur_dashboard_msgs/IsInRemoteControlRequest.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_dashboard_msgsIsInRemoteControlRequest :: W.Decoder Ros1Ur_dashboard_msgsIsInRemoteControlRequest
readRos1Ur_dashboard_msgsIsInRemoteControlRequest = do
  let value = Ros1Ur_dashboard_msgsIsInRemoteControlRequest 
  case encodeRos1Ur_dashboard_msgsIsInRemoteControlRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_dashboard_msgs/IsInRemoteControlRequest value.
-- \@details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_dashboard_msgsIsInRemoteControlRequest :: B.ByteString -> Either Word32 Ros1Ur_dashboard_msgsIsInRemoteControlRequest
decodeRos1Ur_dashboard_msgsIsInRemoteControlRequest = W.runDecoder 0 readRos1Ur_dashboard_msgsIsInRemoteControlRequest
instance Canonical Ros1Ur_dashboard_msgsIsInRemoteControlRequest where
  maximumBytes _ = 0
  encodeValue = encodeRos1Ur_dashboard_msgsIsInRemoteControlRequest
  readValue = readRos1Ur_dashboard_msgsIsInRemoteControlRequest
-- | \@brief Complete ROS 1 ur_dashboard_msgs/IsInRemoteControlResponse value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies 6..262 bytes
-- and is identified by UWVMROS1_6c4af27571b48a5b8e8f1f857b2c02a333e7b4b360f8f3645a39630594c1663a.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_dashboard_msgsIsInRemoteControlResponse = Ros1Ur_dashboard_msgsIsInRemoteControlResponse
  {
    -- | \@brief ur_dashboard_msgs/IsInRemoteControlResponse.answer: string; each string is 0..256 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsIsInRemoteControlResponse_answer :: T.Text
  ,
    -- | \@brief ur_dashboard_msgs/IsInRemoteControlResponse.in_remote_control: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsIsInRemoteControlResponse_in_remote_control :: Bool
  ,
    -- | \@brief ur_dashboard_msgs/IsInRemoteControlResponse.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsIsInRemoteControlResponse_success :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_dashboard_msgs/IsInRemoteControlResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_dashboard_msgsIsInRemoteControlResponse :: Ros1Ur_dashboard_msgsIsInRemoteControlResponse
defaultRos1Ur_dashboard_msgsIsInRemoteControlResponse =
    Ros1Ur_dashboard_msgsIsInRemoteControlResponse
        (T.empty)
        (False)
        (False)
-- | \@brief Canonical codec identity of ur_dashboard_msgs/IsInRemoteControlResponse.
-- \@details Exact identity UWVMROS1_6c4af27571b48a5b8e8f1f857b2c02a333e7b4b360f8f3645a39630594c1663a binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsIsInRemoteControlResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_dashboard_msgs/IsInRemoteControlResponse.
-- \@details Exact identity UWVMROS1_6c4af27571b48a5b8e8f1f857b2c02a333e7b4b360f8f3645a39630594c1663a binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsIsInRemoteControlResponseCodecIdentity =
    "UWVMROS1_6c4af27571b48a5b8e8f1f857b2c02a333e7b4b360f8f3645a39630594c1663a"
-- | \@brief Encode one complete ur_dashboard_msgs/IsInRemoteControlResponse value.
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
-- \@see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_dashboard_msgsIsInRemoteControlResponse :: Ros1Ur_dashboard_msgsIsInRemoteControlResponse -> Either Word32 B.ByteString
encodeRos1Ur_dashboard_msgsIsInRemoteControlResponse value = do
  b0 <- W.encodeText 256 True (ros1Ur_dashboard_msgsIsInRemoteControlResponse_answer value)
  b1 <- W.encodeBool (ros1Ur_dashboard_msgsIsInRemoteControlResponse_in_remote_control value)
  b2 <- W.encodeBool (ros1Ur_dashboard_msgsIsInRemoteControlResponse_success value)
  W.bounded 262 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of ur_dashboard_msgs/IsInRemoteControlResponse.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_dashboard_msgsIsInRemoteControlResponse :: W.Decoder Ros1Ur_dashboard_msgsIsInRemoteControlResponse
readRos1Ur_dashboard_msgsIsInRemoteControlResponse = do
  a0 <- W.text 256 True
  a1 <- W.boolean
  a2 <- W.boolean
  let value = Ros1Ur_dashboard_msgsIsInRemoteControlResponse a0 a1 a2
  case encodeRos1Ur_dashboard_msgsIsInRemoteControlResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_dashboard_msgs/IsInRemoteControlResponse value.
-- \@details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_dashboard_msgsIsInRemoteControlResponse :: B.ByteString -> Either Word32 Ros1Ur_dashboard_msgsIsInRemoteControlResponse
decodeRos1Ur_dashboard_msgsIsInRemoteControlResponse = W.runDecoder 262 readRos1Ur_dashboard_msgsIsInRemoteControlResponse
instance Canonical Ros1Ur_dashboard_msgsIsInRemoteControlResponse where
  maximumBytes _ = 262
  encodeValue = encodeRos1Ur_dashboard_msgsIsInRemoteControlResponse
  readValue = readRos1Ur_dashboard_msgsIsInRemoteControlResponse
-- | \@brief Complete ROS 1 ur_dashboard_msgs/IsProgramRunningRequest value.
-- \@details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and
-- is identified by UWVMROS1_0be481297028886e15f07ace4178ca0aec595724cd83ab01d0155e7c6aa6666f.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_dashboard_msgsIsProgramRunningRequest = Ros1Ur_dashboard_msgsIsProgramRunningRequest deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_dashboard_msgs/IsProgramRunningRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_dashboard_msgsIsProgramRunningRequest :: Ros1Ur_dashboard_msgsIsProgramRunningRequest
defaultRos1Ur_dashboard_msgsIsProgramRunningRequest = Ros1Ur_dashboard_msgsIsProgramRunningRequest 
-- | \@brief Canonical codec identity of ur_dashboard_msgs/IsProgramRunningRequest.
-- \@details Exact identity UWVMROS1_0be481297028886e15f07ace4178ca0aec595724cd83ab01d0155e7c6aa6666f binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsIsProgramRunningRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_dashboard_msgs/IsProgramRunningRequest.
-- \@details Exact identity UWVMROS1_0be481297028886e15f07ace4178ca0aec595724cd83ab01d0155e7c6aa6666f binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsIsProgramRunningRequestCodecIdentity =
    "UWVMROS1_0be481297028886e15f07ace4178ca0aec595724cd83ab01d0155e7c6aa6666f"
-- | \@brief Encode one complete ur_dashboard_msgs/IsProgramRunningRequest value.
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
-- \@see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_dashboard_msgsIsProgramRunningRequest :: Ros1Ur_dashboard_msgsIsProgramRunningRequest -> Either Word32 B.ByteString
encodeRos1Ur_dashboard_msgsIsProgramRunningRequest value = do
  W.bounded 0 []
-- | \@brief Read the ordered canonical fields of ur_dashboard_msgs/IsProgramRunningRequest.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_dashboard_msgsIsProgramRunningRequest :: W.Decoder Ros1Ur_dashboard_msgsIsProgramRunningRequest
readRos1Ur_dashboard_msgsIsProgramRunningRequest = do
  let value = Ros1Ur_dashboard_msgsIsProgramRunningRequest 
  case encodeRos1Ur_dashboard_msgsIsProgramRunningRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_dashboard_msgs/IsProgramRunningRequest value.
-- \@details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_dashboard_msgsIsProgramRunningRequest :: B.ByteString -> Either Word32 Ros1Ur_dashboard_msgsIsProgramRunningRequest
decodeRos1Ur_dashboard_msgsIsProgramRunningRequest = W.runDecoder 0 readRos1Ur_dashboard_msgsIsProgramRunningRequest
instance Canonical Ros1Ur_dashboard_msgsIsProgramRunningRequest where
  maximumBytes _ = 0
  encodeValue = encodeRos1Ur_dashboard_msgsIsProgramRunningRequest
  readValue = readRos1Ur_dashboard_msgsIsProgramRunningRequest
-- | \@brief Complete ROS 1 ur_dashboard_msgs/IsProgramRunningResponse value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies 6..262 bytes
-- and is identified by UWVMROS1_4d9de4f7e7071d142c09e3184d4a6f29d4044d003ad11ba3b72e1129ecf144ac.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_dashboard_msgsIsProgramRunningResponse = Ros1Ur_dashboard_msgsIsProgramRunningResponse
  {
    -- | \@brief ur_dashboard_msgs/IsProgramRunningResponse.answer: string; each string is 0..256 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsIsProgramRunningResponse_answer :: T.Text
  ,
    -- | \@brief ur_dashboard_msgs/IsProgramRunningResponse.program_running: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsIsProgramRunningResponse_program_running :: Bool
  ,
    -- | \@brief ur_dashboard_msgs/IsProgramRunningResponse.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsIsProgramRunningResponse_success :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_dashboard_msgs/IsProgramRunningResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_dashboard_msgsIsProgramRunningResponse :: Ros1Ur_dashboard_msgsIsProgramRunningResponse
defaultRos1Ur_dashboard_msgsIsProgramRunningResponse =
    Ros1Ur_dashboard_msgsIsProgramRunningResponse
        (T.empty)
        (False)
        (False)
-- | \@brief Canonical codec identity of ur_dashboard_msgs/IsProgramRunningResponse.
-- \@details Exact identity UWVMROS1_4d9de4f7e7071d142c09e3184d4a6f29d4044d003ad11ba3b72e1129ecf144ac binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsIsProgramRunningResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_dashboard_msgs/IsProgramRunningResponse.
-- \@details Exact identity UWVMROS1_4d9de4f7e7071d142c09e3184d4a6f29d4044d003ad11ba3b72e1129ecf144ac binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsIsProgramRunningResponseCodecIdentity =
    "UWVMROS1_4d9de4f7e7071d142c09e3184d4a6f29d4044d003ad11ba3b72e1129ecf144ac"
-- | \@brief Encode one complete ur_dashboard_msgs/IsProgramRunningResponse value.
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
-- \@see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_dashboard_msgsIsProgramRunningResponse :: Ros1Ur_dashboard_msgsIsProgramRunningResponse -> Either Word32 B.ByteString
encodeRos1Ur_dashboard_msgsIsProgramRunningResponse value = do
  b0 <- W.encodeText 256 True (ros1Ur_dashboard_msgsIsProgramRunningResponse_answer value)
  b1 <- W.encodeBool (ros1Ur_dashboard_msgsIsProgramRunningResponse_program_running value)
  b2 <- W.encodeBool (ros1Ur_dashboard_msgsIsProgramRunningResponse_success value)
  W.bounded 262 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of ur_dashboard_msgs/IsProgramRunningResponse.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_dashboard_msgsIsProgramRunningResponse :: W.Decoder Ros1Ur_dashboard_msgsIsProgramRunningResponse
readRos1Ur_dashboard_msgsIsProgramRunningResponse = do
  a0 <- W.text 256 True
  a1 <- W.boolean
  a2 <- W.boolean
  let value = Ros1Ur_dashboard_msgsIsProgramRunningResponse a0 a1 a2
  case encodeRos1Ur_dashboard_msgsIsProgramRunningResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_dashboard_msgs/IsProgramRunningResponse value.
-- \@details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_dashboard_msgsIsProgramRunningResponse :: B.ByteString -> Either Word32 Ros1Ur_dashboard_msgsIsProgramRunningResponse
decodeRos1Ur_dashboard_msgsIsProgramRunningResponse = W.runDecoder 262 readRos1Ur_dashboard_msgsIsProgramRunningResponse
instance Canonical Ros1Ur_dashboard_msgsIsProgramRunningResponse where
  maximumBytes _ = 262
  encodeValue = encodeRos1Ur_dashboard_msgsIsProgramRunningResponse
  readValue = readRos1Ur_dashboard_msgsIsProgramRunningResponse
-- | \@brief Complete ROS 1 ur_dashboard_msgs/IsProgramSavedRequest value.
-- \@details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and
-- is identified by UWVMROS1_45ce1466c35adc812096bfb8b2cd84dfa87940109831c9f797b5786afa14f5a8.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_dashboard_msgsIsProgramSavedRequest = Ros1Ur_dashboard_msgsIsProgramSavedRequest deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_dashboard_msgs/IsProgramSavedRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_dashboard_msgsIsProgramSavedRequest :: Ros1Ur_dashboard_msgsIsProgramSavedRequest
defaultRos1Ur_dashboard_msgsIsProgramSavedRequest = Ros1Ur_dashboard_msgsIsProgramSavedRequest 
-- | \@brief Canonical codec identity of ur_dashboard_msgs/IsProgramSavedRequest.
-- \@details Exact identity UWVMROS1_45ce1466c35adc812096bfb8b2cd84dfa87940109831c9f797b5786afa14f5a8 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsIsProgramSavedRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_dashboard_msgs/IsProgramSavedRequest.
-- \@details Exact identity UWVMROS1_45ce1466c35adc812096bfb8b2cd84dfa87940109831c9f797b5786afa14f5a8 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsIsProgramSavedRequestCodecIdentity =
    "UWVMROS1_45ce1466c35adc812096bfb8b2cd84dfa87940109831c9f797b5786afa14f5a8"
-- | \@brief Encode one complete ur_dashboard_msgs/IsProgramSavedRequest value.
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
-- \@see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_dashboard_msgsIsProgramSavedRequest :: Ros1Ur_dashboard_msgsIsProgramSavedRequest -> Either Word32 B.ByteString
encodeRos1Ur_dashboard_msgsIsProgramSavedRequest value = do
  W.bounded 0 []
-- | \@brief Read the ordered canonical fields of ur_dashboard_msgs/IsProgramSavedRequest.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_dashboard_msgsIsProgramSavedRequest :: W.Decoder Ros1Ur_dashboard_msgsIsProgramSavedRequest
readRos1Ur_dashboard_msgsIsProgramSavedRequest = do
  let value = Ros1Ur_dashboard_msgsIsProgramSavedRequest 
  case encodeRos1Ur_dashboard_msgsIsProgramSavedRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_dashboard_msgs/IsProgramSavedRequest value.
-- \@details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_dashboard_msgsIsProgramSavedRequest :: B.ByteString -> Either Word32 Ros1Ur_dashboard_msgsIsProgramSavedRequest
decodeRos1Ur_dashboard_msgsIsProgramSavedRequest = W.runDecoder 0 readRos1Ur_dashboard_msgsIsProgramSavedRequest
instance Canonical Ros1Ur_dashboard_msgsIsProgramSavedRequest where
  maximumBytes _ = 0
  encodeValue = encodeRos1Ur_dashboard_msgsIsProgramSavedRequest
  readValue = readRos1Ur_dashboard_msgsIsProgramSavedRequest
-- | \@brief Complete ROS 1 ur_dashboard_msgs/IsProgramSavedResponse value.
-- \@details All 4 declared fields are retained in source order. The canonical representation occupies 10..522 bytes
-- and is identified by UWVMROS1_eb53e077fe7b216e27fc57f838666a54a84e479e02e508d41df5cff9f0637a52.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_dashboard_msgsIsProgramSavedResponse = Ros1Ur_dashboard_msgsIsProgramSavedResponse
  {
    -- | \@brief ur_dashboard_msgs/IsProgramSavedResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with
    -- no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsIsProgramSavedResponse_answer :: T.Text
  ,
    -- | \@brief ur_dashboard_msgs/IsProgramSavedResponse.program_name: string; each string is 0..256 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsIsProgramSavedResponse_program_name :: T.Text
  ,
    -- | \@brief ur_dashboard_msgs/IsProgramSavedResponse.program_saved: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsIsProgramSavedResponse_program_saved :: Bool
  ,
    -- | \@brief ur_dashboard_msgs/IsProgramSavedResponse.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsIsProgramSavedResponse_success :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_dashboard_msgs/IsProgramSavedResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_dashboard_msgsIsProgramSavedResponse :: Ros1Ur_dashboard_msgsIsProgramSavedResponse
defaultRos1Ur_dashboard_msgsIsProgramSavedResponse =
    Ros1Ur_dashboard_msgsIsProgramSavedResponse
        (T.empty)
        (T.empty)
        (False)
        (False)
-- | \@brief Canonical codec identity of ur_dashboard_msgs/IsProgramSavedResponse.
-- \@details Exact identity UWVMROS1_eb53e077fe7b216e27fc57f838666a54a84e479e02e508d41df5cff9f0637a52 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsIsProgramSavedResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_dashboard_msgs/IsProgramSavedResponse.
-- \@details Exact identity UWVMROS1_eb53e077fe7b216e27fc57f838666a54a84e479e02e508d41df5cff9f0637a52 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsIsProgramSavedResponseCodecIdentity =
    "UWVMROS1_eb53e077fe7b216e27fc57f838666a54a84e479e02e508d41df5cff9f0637a52"
-- | \@brief Encode one complete ur_dashboard_msgs/IsProgramSavedResponse value.
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
-- \@see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_dashboard_msgsIsProgramSavedResponse :: Ros1Ur_dashboard_msgsIsProgramSavedResponse -> Either Word32 B.ByteString
encodeRos1Ur_dashboard_msgsIsProgramSavedResponse value = do
  b0 <- W.encodeText 256 True (ros1Ur_dashboard_msgsIsProgramSavedResponse_answer value)
  b1 <- W.encodeText 256 True (ros1Ur_dashboard_msgsIsProgramSavedResponse_program_name value)
  b2 <- W.encodeBool (ros1Ur_dashboard_msgsIsProgramSavedResponse_program_saved value)
  b3 <- W.encodeBool (ros1Ur_dashboard_msgsIsProgramSavedResponse_success value)
  W.bounded 522 [b0, b1, b2, b3]
-- | \@brief Read the ordered canonical fields of ur_dashboard_msgs/IsProgramSavedResponse.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_dashboard_msgsIsProgramSavedResponse :: W.Decoder Ros1Ur_dashboard_msgsIsProgramSavedResponse
readRos1Ur_dashboard_msgsIsProgramSavedResponse = do
  a0 <- W.text 256 True
  a1 <- W.text 256 True
  a2 <- W.boolean
  a3 <- W.boolean
  let value = Ros1Ur_dashboard_msgsIsProgramSavedResponse a0 a1 a2 a3
  case encodeRos1Ur_dashboard_msgsIsProgramSavedResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_dashboard_msgs/IsProgramSavedResponse value.
-- \@details Require the complete 10..522-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_dashboard_msgsIsProgramSavedResponse :: B.ByteString -> Either Word32 Ros1Ur_dashboard_msgsIsProgramSavedResponse
decodeRos1Ur_dashboard_msgsIsProgramSavedResponse = W.runDecoder 522 readRos1Ur_dashboard_msgsIsProgramSavedResponse
instance Canonical Ros1Ur_dashboard_msgsIsProgramSavedResponse where
  maximumBytes _ = 522
  encodeValue = encodeRos1Ur_dashboard_msgsIsProgramSavedResponse
  readValue = readRos1Ur_dashboard_msgsIsProgramSavedResponse
-- | \@brief Complete ROS 1 ur_dashboard_msgs/LoadRequest value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies 4..260 bytes
-- and is identified by UWVMROS1_dfbde7b2376c7c9ba3926e4803f16b22f7ade3b2f768a25886a1490656edd2bd.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_dashboard_msgsLoadRequest = Ros1Ur_dashboard_msgsLoadRequest
  {
    -- | \@brief ur_dashboard_msgs/LoadRequest.filename: string; each string is 0..256 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsLoadRequest_filename :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_dashboard_msgs/LoadRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_dashboard_msgsLoadRequest :: Ros1Ur_dashboard_msgsLoadRequest
defaultRos1Ur_dashboard_msgsLoadRequest = Ros1Ur_dashboard_msgsLoadRequest (T.empty)
-- | \@brief Canonical codec identity of ur_dashboard_msgs/LoadRequest.
-- \@details Exact identity UWVMROS1_dfbde7b2376c7c9ba3926e4803f16b22f7ade3b2f768a25886a1490656edd2bd binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsLoadRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_dashboard_msgs/LoadRequest.
-- \@details Exact identity UWVMROS1_dfbde7b2376c7c9ba3926e4803f16b22f7ade3b2f768a25886a1490656edd2bd binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsLoadRequestCodecIdentity =
    "UWVMROS1_dfbde7b2376c7c9ba3926e4803f16b22f7ade3b2f768a25886a1490656edd2bd"
-- | \@brief Encode one complete ur_dashboard_msgs/LoadRequest value.
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
-- \@see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_dashboard_msgsLoadRequest :: Ros1Ur_dashboard_msgsLoadRequest -> Either Word32 B.ByteString
encodeRos1Ur_dashboard_msgsLoadRequest value = do
  b0 <- W.encodeText 256 True (ros1Ur_dashboard_msgsLoadRequest_filename value)
  W.bounded 260 [b0]
-- | \@brief Read the ordered canonical fields of ur_dashboard_msgs/LoadRequest.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_dashboard_msgsLoadRequest :: W.Decoder Ros1Ur_dashboard_msgsLoadRequest
readRos1Ur_dashboard_msgsLoadRequest = do
  a0 <- W.text 256 True
  let value = Ros1Ur_dashboard_msgsLoadRequest a0
  case encodeRos1Ur_dashboard_msgsLoadRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_dashboard_msgs/LoadRequest value.
-- \@details Require the complete 4..260-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_dashboard_msgsLoadRequest :: B.ByteString -> Either Word32 Ros1Ur_dashboard_msgsLoadRequest
decodeRos1Ur_dashboard_msgsLoadRequest = W.runDecoder 260 readRos1Ur_dashboard_msgsLoadRequest
instance Canonical Ros1Ur_dashboard_msgsLoadRequest where
  maximumBytes _ = 260
  encodeValue = encodeRos1Ur_dashboard_msgsLoadRequest
  readValue = readRos1Ur_dashboard_msgsLoadRequest
-- | \@brief Complete ROS 1 ur_dashboard_msgs/LoadResponse value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes
-- and is identified by UWVMROS1_0ed3b3f2a0066248734e64c0706e52ebf07113569a98baf249a99adfff59be02.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_dashboard_msgsLoadResponse = Ros1Ur_dashboard_msgsLoadResponse
  {
    -- | \@brief ur_dashboard_msgs/LoadResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsLoadResponse_answer :: T.Text
  ,
    -- | \@brief ur_dashboard_msgs/LoadResponse.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsLoadResponse_success :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_dashboard_msgs/LoadResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_dashboard_msgsLoadResponse :: Ros1Ur_dashboard_msgsLoadResponse
defaultRos1Ur_dashboard_msgsLoadResponse = Ros1Ur_dashboard_msgsLoadResponse (T.empty) (False)
-- | \@brief Canonical codec identity of ur_dashboard_msgs/LoadResponse.
-- \@details Exact identity UWVMROS1_0ed3b3f2a0066248734e64c0706e52ebf07113569a98baf249a99adfff59be02 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsLoadResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_dashboard_msgs/LoadResponse.
-- \@details Exact identity UWVMROS1_0ed3b3f2a0066248734e64c0706e52ebf07113569a98baf249a99adfff59be02 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsLoadResponseCodecIdentity =
    "UWVMROS1_0ed3b3f2a0066248734e64c0706e52ebf07113569a98baf249a99adfff59be02"
-- | \@brief Encode one complete ur_dashboard_msgs/LoadResponse value.
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
-- \@see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_dashboard_msgsLoadResponse :: Ros1Ur_dashboard_msgsLoadResponse -> Either Word32 B.ByteString
encodeRos1Ur_dashboard_msgsLoadResponse value = do
  b0 <- W.encodeText 256 True (ros1Ur_dashboard_msgsLoadResponse_answer value)
  b1 <- W.encodeBool (ros1Ur_dashboard_msgsLoadResponse_success value)
  W.bounded 261 [b0, b1]
-- | \@brief Read the ordered canonical fields of ur_dashboard_msgs/LoadResponse.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_dashboard_msgsLoadResponse :: W.Decoder Ros1Ur_dashboard_msgsLoadResponse
readRos1Ur_dashboard_msgsLoadResponse = do
  a0 <- W.text 256 True
  a1 <- W.boolean
  let value = Ros1Ur_dashboard_msgsLoadResponse a0 a1
  case encodeRos1Ur_dashboard_msgsLoadResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_dashboard_msgs/LoadResponse value.
-- \@details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_dashboard_msgsLoadResponse :: B.ByteString -> Either Word32 Ros1Ur_dashboard_msgsLoadResponse
decodeRos1Ur_dashboard_msgsLoadResponse = W.runDecoder 261 readRos1Ur_dashboard_msgsLoadResponse
instance Canonical Ros1Ur_dashboard_msgsLoadResponse where
  maximumBytes _ = 261
  encodeValue = encodeRos1Ur_dashboard_msgsLoadResponse
  readValue = readRos1Ur_dashboard_msgsLoadResponse
-- | \@brief Complete ROS 1 ur_dashboard_msgs/PopupRequest value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies 4..260 bytes
-- and is identified by UWVMROS1_11556bfb811a28141b6c5e9c11720920a389d735b8c09ed1a8f47d05f293e90d.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_dashboard_msgsPopupRequest = Ros1Ur_dashboard_msgsPopupRequest
  {
    -- | \@brief ur_dashboard_msgs/PopupRequest.message: string; each string is 0..256 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsPopupRequest_message :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_dashboard_msgs/PopupRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_dashboard_msgsPopupRequest :: Ros1Ur_dashboard_msgsPopupRequest
defaultRos1Ur_dashboard_msgsPopupRequest = Ros1Ur_dashboard_msgsPopupRequest (T.empty)
-- | \@brief Canonical codec identity of ur_dashboard_msgs/PopupRequest.
-- \@details Exact identity UWVMROS1_11556bfb811a28141b6c5e9c11720920a389d735b8c09ed1a8f47d05f293e90d binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsPopupRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_dashboard_msgs/PopupRequest.
-- \@details Exact identity UWVMROS1_11556bfb811a28141b6c5e9c11720920a389d735b8c09ed1a8f47d05f293e90d binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsPopupRequestCodecIdentity =
    "UWVMROS1_11556bfb811a28141b6c5e9c11720920a389d735b8c09ed1a8f47d05f293e90d"
-- | \@brief Encode one complete ur_dashboard_msgs/PopupRequest value.
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
-- \@see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_dashboard_msgsPopupRequest :: Ros1Ur_dashboard_msgsPopupRequest -> Either Word32 B.ByteString
encodeRos1Ur_dashboard_msgsPopupRequest value = do
  b0 <- W.encodeText 256 True (ros1Ur_dashboard_msgsPopupRequest_message value)
  W.bounded 260 [b0]
-- | \@brief Read the ordered canonical fields of ur_dashboard_msgs/PopupRequest.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_dashboard_msgsPopupRequest :: W.Decoder Ros1Ur_dashboard_msgsPopupRequest
readRos1Ur_dashboard_msgsPopupRequest = do
  a0 <- W.text 256 True
  let value = Ros1Ur_dashboard_msgsPopupRequest a0
  case encodeRos1Ur_dashboard_msgsPopupRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_dashboard_msgs/PopupRequest value.
-- \@details Require the complete 4..260-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_dashboard_msgsPopupRequest :: B.ByteString -> Either Word32 Ros1Ur_dashboard_msgsPopupRequest
decodeRos1Ur_dashboard_msgsPopupRequest = W.runDecoder 260 readRos1Ur_dashboard_msgsPopupRequest
instance Canonical Ros1Ur_dashboard_msgsPopupRequest where
  maximumBytes _ = 260
  encodeValue = encodeRos1Ur_dashboard_msgsPopupRequest
  readValue = readRos1Ur_dashboard_msgsPopupRequest
-- | \@brief Complete ROS 1 ur_dashboard_msgs/PopupResponse value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes
-- and is identified by UWVMROS1_33ac5b2128d6e7c2e562af7e2b8a8e907c16c07034b377920cba4fbd04ca9e14.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_dashboard_msgsPopupResponse = Ros1Ur_dashboard_msgsPopupResponse
  {
    -- | \@brief ur_dashboard_msgs/PopupResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsPopupResponse_answer :: T.Text
  ,
    -- | \@brief ur_dashboard_msgs/PopupResponse.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsPopupResponse_success :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_dashboard_msgs/PopupResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_dashboard_msgsPopupResponse :: Ros1Ur_dashboard_msgsPopupResponse
defaultRos1Ur_dashboard_msgsPopupResponse = Ros1Ur_dashboard_msgsPopupResponse (T.empty) (False)
-- | \@brief Canonical codec identity of ur_dashboard_msgs/PopupResponse.
-- \@details Exact identity UWVMROS1_33ac5b2128d6e7c2e562af7e2b8a8e907c16c07034b377920cba4fbd04ca9e14 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsPopupResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_dashboard_msgs/PopupResponse.
-- \@details Exact identity UWVMROS1_33ac5b2128d6e7c2e562af7e2b8a8e907c16c07034b377920cba4fbd04ca9e14 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsPopupResponseCodecIdentity =
    "UWVMROS1_33ac5b2128d6e7c2e562af7e2b8a8e907c16c07034b377920cba4fbd04ca9e14"
-- | \@brief Encode one complete ur_dashboard_msgs/PopupResponse value.
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
-- \@see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_dashboard_msgsPopupResponse :: Ros1Ur_dashboard_msgsPopupResponse -> Either Word32 B.ByteString
encodeRos1Ur_dashboard_msgsPopupResponse value = do
  b0 <- W.encodeText 256 True (ros1Ur_dashboard_msgsPopupResponse_answer value)
  b1 <- W.encodeBool (ros1Ur_dashboard_msgsPopupResponse_success value)
  W.bounded 261 [b0, b1]
-- | \@brief Read the ordered canonical fields of ur_dashboard_msgs/PopupResponse.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_dashboard_msgsPopupResponse :: W.Decoder Ros1Ur_dashboard_msgsPopupResponse
readRos1Ur_dashboard_msgsPopupResponse = do
  a0 <- W.text 256 True
  a1 <- W.boolean
  let value = Ros1Ur_dashboard_msgsPopupResponse a0 a1
  case encodeRos1Ur_dashboard_msgsPopupResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_dashboard_msgs/PopupResponse value.
-- \@details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_dashboard_msgsPopupResponse :: B.ByteString -> Either Word32 Ros1Ur_dashboard_msgsPopupResponse
decodeRos1Ur_dashboard_msgsPopupResponse = W.runDecoder 261 readRos1Ur_dashboard_msgsPopupResponse
instance Canonical Ros1Ur_dashboard_msgsPopupResponse where
  maximumBytes _ = 261
  encodeValue = encodeRos1Ur_dashboard_msgsPopupResponse
  readValue = readRos1Ur_dashboard_msgsPopupResponse
-- | \@brief Complete ROS 1 ur_dashboard_msgs/RawRequestRequest value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies 4..260 bytes
-- and is identified by UWVMROS1_ca8e3fdb45888bf4feb3c0f4ed05b7b9499a74493aaa0a8727f9f513922adfb4.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_dashboard_msgsRawRequestRequest = Ros1Ur_dashboard_msgsRawRequestRequest
  {
    -- | \@brief ur_dashboard_msgs/RawRequestRequest.query: string; each string is 0..256 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsRawRequestRequest_query :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_dashboard_msgs/RawRequestRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_dashboard_msgsRawRequestRequest :: Ros1Ur_dashboard_msgsRawRequestRequest
defaultRos1Ur_dashboard_msgsRawRequestRequest = Ros1Ur_dashboard_msgsRawRequestRequest (T.empty)
-- | \@brief Canonical codec identity of ur_dashboard_msgs/RawRequestRequest.
-- \@details Exact identity UWVMROS1_ca8e3fdb45888bf4feb3c0f4ed05b7b9499a74493aaa0a8727f9f513922adfb4 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsRawRequestRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_dashboard_msgs/RawRequestRequest.
-- \@details Exact identity UWVMROS1_ca8e3fdb45888bf4feb3c0f4ed05b7b9499a74493aaa0a8727f9f513922adfb4 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsRawRequestRequestCodecIdentity =
    "UWVMROS1_ca8e3fdb45888bf4feb3c0f4ed05b7b9499a74493aaa0a8727f9f513922adfb4"
-- | \@brief Encode one complete ur_dashboard_msgs/RawRequestRequest value.
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
-- \@see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_dashboard_msgsRawRequestRequest :: Ros1Ur_dashboard_msgsRawRequestRequest -> Either Word32 B.ByteString
encodeRos1Ur_dashboard_msgsRawRequestRequest value = do
  b0 <- W.encodeText 256 True (ros1Ur_dashboard_msgsRawRequestRequest_query value)
  W.bounded 260 [b0]
-- | \@brief Read the ordered canonical fields of ur_dashboard_msgs/RawRequestRequest.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_dashboard_msgsRawRequestRequest :: W.Decoder Ros1Ur_dashboard_msgsRawRequestRequest
readRos1Ur_dashboard_msgsRawRequestRequest = do
  a0 <- W.text 256 True
  let value = Ros1Ur_dashboard_msgsRawRequestRequest a0
  case encodeRos1Ur_dashboard_msgsRawRequestRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_dashboard_msgs/RawRequestRequest value.
-- \@details Require the complete 4..260-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_dashboard_msgsRawRequestRequest :: B.ByteString -> Either Word32 Ros1Ur_dashboard_msgsRawRequestRequest
decodeRos1Ur_dashboard_msgsRawRequestRequest = W.runDecoder 260 readRos1Ur_dashboard_msgsRawRequestRequest
instance Canonical Ros1Ur_dashboard_msgsRawRequestRequest where
  maximumBytes _ = 260
  encodeValue = encodeRos1Ur_dashboard_msgsRawRequestRequest
  readValue = readRos1Ur_dashboard_msgsRawRequestRequest
-- | \@brief Complete ROS 1 ur_dashboard_msgs/RawRequestResponse value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies 4..260 bytes
-- and is identified by UWVMROS1_76dbb0c8d0143bd4d39bbf66c6866b0771013fe67fbad76887c6490c91f39e80.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_dashboard_msgsRawRequestResponse = Ros1Ur_dashboard_msgsRawRequestResponse
  {
    -- | \@brief ur_dashboard_msgs/RawRequestResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsRawRequestResponse_answer :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_dashboard_msgs/RawRequestResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_dashboard_msgsRawRequestResponse :: Ros1Ur_dashboard_msgsRawRequestResponse
defaultRos1Ur_dashboard_msgsRawRequestResponse = Ros1Ur_dashboard_msgsRawRequestResponse (T.empty)
-- | \@brief Canonical codec identity of ur_dashboard_msgs/RawRequestResponse.
-- \@details Exact identity UWVMROS1_76dbb0c8d0143bd4d39bbf66c6866b0771013fe67fbad76887c6490c91f39e80 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsRawRequestResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_dashboard_msgs/RawRequestResponse.
-- \@details Exact identity UWVMROS1_76dbb0c8d0143bd4d39bbf66c6866b0771013fe67fbad76887c6490c91f39e80 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsRawRequestResponseCodecIdentity =
    "UWVMROS1_76dbb0c8d0143bd4d39bbf66c6866b0771013fe67fbad76887c6490c91f39e80"
-- | \@brief Encode one complete ur_dashboard_msgs/RawRequestResponse value.
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
-- \@see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_dashboard_msgsRawRequestResponse :: Ros1Ur_dashboard_msgsRawRequestResponse -> Either Word32 B.ByteString
encodeRos1Ur_dashboard_msgsRawRequestResponse value = do
  b0 <- W.encodeText 256 True (ros1Ur_dashboard_msgsRawRequestResponse_answer value)
  W.bounded 260 [b0]
-- | \@brief Read the ordered canonical fields of ur_dashboard_msgs/RawRequestResponse.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_dashboard_msgsRawRequestResponse :: W.Decoder Ros1Ur_dashboard_msgsRawRequestResponse
readRos1Ur_dashboard_msgsRawRequestResponse = do
  a0 <- W.text 256 True
  let value = Ros1Ur_dashboard_msgsRawRequestResponse a0
  case encodeRos1Ur_dashboard_msgsRawRequestResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_dashboard_msgs/RawRequestResponse value.
-- \@details Require the complete 4..260-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_dashboard_msgsRawRequestResponse :: B.ByteString -> Either Word32 Ros1Ur_dashboard_msgsRawRequestResponse
decodeRos1Ur_dashboard_msgsRawRequestResponse = W.runDecoder 260 readRos1Ur_dashboard_msgsRawRequestResponse
instance Canonical Ros1Ur_dashboard_msgsRawRequestResponse where
  maximumBytes _ = 260
  encodeValue = encodeRos1Ur_dashboard_msgsRawRequestResponse
  readValue = readRos1Ur_dashboard_msgsRawRequestResponse
-- | \@brief Complete ROS 1 ur_dashboard_msgs/SetModeGoal value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies 3..3 bytes and
-- is identified by UWVMROS1_27ba58b57af47e8efff15a70fb0562d5904d019c17e39a499bf003730434a528.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_dashboard_msgsSetModeGoal = Ros1Ur_dashboard_msgsSetModeGoal
  {
    -- | \@brief ur_dashboard_msgs/SetModeGoal.target_robot_mode: ur_dashboard_msgs/RobotMode.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsSetModeGoal_target_robot_mode :: Ros1Ur_dashboard_msgsRobotMode
  ,
    -- | \@brief ur_dashboard_msgs/SetModeGoal.stop_program: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsSetModeGoal_stop_program :: Bool
  ,
    -- | \@brief ur_dashboard_msgs/SetModeGoal.play_program: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsSetModeGoal_play_program :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_dashboard_msgs/SetModeGoal.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_dashboard_msgsSetModeGoal :: Ros1Ur_dashboard_msgsSetModeGoal
defaultRos1Ur_dashboard_msgsSetModeGoal =
    Ros1Ur_dashboard_msgsSetModeGoal
        (defaultRos1Ur_dashboard_msgsRobotMode)
        (False)
        (False)
-- | \@brief Canonical codec identity of ur_dashboard_msgs/SetModeGoal.
-- \@details Exact identity UWVMROS1_27ba58b57af47e8efff15a70fb0562d5904d019c17e39a499bf003730434a528 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsSetModeGoalCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_dashboard_msgs/SetModeGoal.
-- \@details Exact identity UWVMROS1_27ba58b57af47e8efff15a70fb0562d5904d019c17e39a499bf003730434a528 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsSetModeGoalCodecIdentity =
    "UWVMROS1_27ba58b57af47e8efff15a70fb0562d5904d019c17e39a499bf003730434a528"
-- | \@brief Encode one complete ur_dashboard_msgs/SetModeGoal value.
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
-- \@see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_dashboard_msgsSetModeGoal :: Ros1Ur_dashboard_msgsSetModeGoal -> Either Word32 B.ByteString
encodeRos1Ur_dashboard_msgsSetModeGoal value = do
  b0 <- encodeRos1Ur_dashboard_msgsRobotMode (ros1Ur_dashboard_msgsSetModeGoal_target_robot_mode value)
  b1 <- W.encodeBool (ros1Ur_dashboard_msgsSetModeGoal_stop_program value)
  b2 <- W.encodeBool (ros1Ur_dashboard_msgsSetModeGoal_play_program value)
  W.bounded 3 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of ur_dashboard_msgs/SetModeGoal.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_dashboard_msgsSetModeGoal :: W.Decoder Ros1Ur_dashboard_msgsSetModeGoal
readRos1Ur_dashboard_msgsSetModeGoal = do
  a0 <- readRos1Ur_dashboard_msgsRobotMode
  a1 <- W.boolean
  a2 <- W.boolean
  let value = Ros1Ur_dashboard_msgsSetModeGoal a0 a1 a2
  case encodeRos1Ur_dashboard_msgsSetModeGoal value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_dashboard_msgs/SetModeGoal value.
-- \@details Require the complete 3..3-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_dashboard_msgsSetModeGoal :: B.ByteString -> Either Word32 Ros1Ur_dashboard_msgsSetModeGoal
decodeRos1Ur_dashboard_msgsSetModeGoal = W.runDecoder 3 readRos1Ur_dashboard_msgsSetModeGoal
instance Canonical Ros1Ur_dashboard_msgsSetModeGoal where
  maximumBytes _ = 3
  encodeValue = encodeRos1Ur_dashboard_msgsSetModeGoal
  readValue = readRos1Ur_dashboard_msgsSetModeGoal
-- | \@brief Complete ROS 1 ur_dashboard_msgs/SetModeResult value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes
-- and is identified by UWVMROS1_e558d01061183cabca7022bd66aeb1958e14dfc62226a701c86020e73ffa1114.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_dashboard_msgsSetModeResult = Ros1Ur_dashboard_msgsSetModeResult
  {
    -- | \@brief ur_dashboard_msgs/SetModeResult.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsSetModeResult_success :: Bool
  ,
    -- | \@brief ur_dashboard_msgs/SetModeResult.message: string; each string is 0..256 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsSetModeResult_message :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_dashboard_msgs/SetModeResult.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_dashboard_msgsSetModeResult :: Ros1Ur_dashboard_msgsSetModeResult
defaultRos1Ur_dashboard_msgsSetModeResult = Ros1Ur_dashboard_msgsSetModeResult (False) (T.empty)
-- | \@brief Canonical codec identity of ur_dashboard_msgs/SetModeResult.
-- \@details Exact identity UWVMROS1_e558d01061183cabca7022bd66aeb1958e14dfc62226a701c86020e73ffa1114 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsSetModeResultCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_dashboard_msgs/SetModeResult.
-- \@details Exact identity UWVMROS1_e558d01061183cabca7022bd66aeb1958e14dfc62226a701c86020e73ffa1114 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsSetModeResultCodecIdentity =
    "UWVMROS1_e558d01061183cabca7022bd66aeb1958e14dfc62226a701c86020e73ffa1114"
-- | \@brief Encode one complete ur_dashboard_msgs/SetModeResult value.
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
-- \@see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_dashboard_msgsSetModeResult :: Ros1Ur_dashboard_msgsSetModeResult -> Either Word32 B.ByteString
encodeRos1Ur_dashboard_msgsSetModeResult value = do
  b0 <- W.encodeBool (ros1Ur_dashboard_msgsSetModeResult_success value)
  b1 <- W.encodeText 256 True (ros1Ur_dashboard_msgsSetModeResult_message value)
  W.bounded 261 [b0, b1]
-- | \@brief Read the ordered canonical fields of ur_dashboard_msgs/SetModeResult.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_dashboard_msgsSetModeResult :: W.Decoder Ros1Ur_dashboard_msgsSetModeResult
readRos1Ur_dashboard_msgsSetModeResult = do
  a0 <- W.boolean
  a1 <- W.text 256 True
  let value = Ros1Ur_dashboard_msgsSetModeResult a0 a1
  case encodeRos1Ur_dashboard_msgsSetModeResult value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_dashboard_msgs/SetModeResult value.
-- \@details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_dashboard_msgsSetModeResult :: B.ByteString -> Either Word32 Ros1Ur_dashboard_msgsSetModeResult
decodeRos1Ur_dashboard_msgsSetModeResult = W.runDecoder 261 readRos1Ur_dashboard_msgsSetModeResult
instance Canonical Ros1Ur_dashboard_msgsSetModeResult where
  maximumBytes _ = 261
  encodeValue = encodeRos1Ur_dashboard_msgsSetModeResult
  readValue = readRos1Ur_dashboard_msgsSetModeResult
-- | \@brief Complete ROS 1 ur_dashboard_msgs/SetModeFeedback value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 2..2 bytes and
-- is identified by UWVMROS1_d29b507dcc5d72ee086c8a5a9a7a762d677ed408ec02dbe661abc17e2de5c7e2.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_dashboard_msgsSetModeFeedback = Ros1Ur_dashboard_msgsSetModeFeedback
  {
    -- | \@brief ur_dashboard_msgs/SetModeFeedback.current_robot_mode: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsSetModeFeedback_current_robot_mode :: Int8
  ,
    -- | \@brief ur_dashboard_msgs/SetModeFeedback.current_safety_mode: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_dashboard_msgsSetModeFeedback_current_safety_mode :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_dashboard_msgs/SetModeFeedback.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_dashboard_msgsSetModeFeedback :: Ros1Ur_dashboard_msgsSetModeFeedback
defaultRos1Ur_dashboard_msgsSetModeFeedback = Ros1Ur_dashboard_msgsSetModeFeedback (0) (0)
-- | \@brief Canonical codec identity of ur_dashboard_msgs/SetModeFeedback.
-- \@details Exact identity UWVMROS1_d29b507dcc5d72ee086c8a5a9a7a762d677ed408ec02dbe661abc17e2de5c7e2 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsSetModeFeedbackCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_dashboard_msgs/SetModeFeedback.
-- \@details Exact identity UWVMROS1_d29b507dcc5d72ee086c8a5a9a7a762d677ed408ec02dbe661abc17e2de5c7e2 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_dashboard_msgsSetModeFeedbackCodecIdentity =
    "UWVMROS1_d29b507dcc5d72ee086c8a5a9a7a762d677ed408ec02dbe661abc17e2de5c7e2"
-- | \@brief Encode one complete ur_dashboard_msgs/SetModeFeedback value.
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
-- \@see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_dashboard_msgsSetModeFeedback :: Ros1Ur_dashboard_msgsSetModeFeedback -> Either Word32 B.ByteString
encodeRos1Ur_dashboard_msgsSetModeFeedback value = do
  b0 <- W.encodeSigned 1 (fromIntegral (ros1Ur_dashboard_msgsSetModeFeedback_current_robot_mode value))
  b1 <- W.encodeSigned 1 (fromIntegral (ros1Ur_dashboard_msgsSetModeFeedback_current_safety_mode value))
  W.bounded 2 [b0, b1]
-- | \@brief Read the ordered canonical fields of ur_dashboard_msgs/SetModeFeedback.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_dashboard_msgsSetModeFeedback :: W.Decoder Ros1Ur_dashboard_msgsSetModeFeedback
readRos1Ur_dashboard_msgsSetModeFeedback = do
  a0 <- fromIntegral <$> W.signed 1
  a1 <- fromIntegral <$> W.signed 1
  let value = Ros1Ur_dashboard_msgsSetModeFeedback a0 a1
  case encodeRos1Ur_dashboard_msgsSetModeFeedback value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_dashboard_msgs/SetModeFeedback value.
-- \@details Require the complete 2..2-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_dashboard_msgsSetModeFeedback :: B.ByteString -> Either Word32 Ros1Ur_dashboard_msgsSetModeFeedback
decodeRos1Ur_dashboard_msgsSetModeFeedback = W.runDecoder 2 readRos1Ur_dashboard_msgsSetModeFeedback
instance Canonical Ros1Ur_dashboard_msgsSetModeFeedback where
  maximumBytes _ = 2
  encodeValue = encodeRos1Ur_dashboard_msgsSetModeFeedback
  readValue = readRos1Ur_dashboard_msgsSetModeFeedback
-- | \@brief Complete ROS 1 ur_msgs/Analog value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies 6..6 bytes and
-- is identified by UWVMROS1_638dc3b30def8193a501b4c1c778792a60c8c683a96880e9fa6db6c01774f6a7.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_msgsAnalog = Ros1Ur_msgsAnalog
  {
    -- | \@brief ur_msgs/Analog.pin: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsAnalog; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsAnalog_pin :: Word8
  ,
    -- | \@brief ur_msgs/Analog.domain: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsAnalog; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsAnalog_domain :: Word8
  ,
    -- | \@brief ur_msgs/Analog.state: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsAnalog; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsAnalog_state :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_msgs/Analog.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsAnalog; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_msgsAnalog :: Ros1Ur_msgsAnalog
defaultRos1Ur_msgsAnalog = Ros1Ur_msgsAnalog (0) (0) (0)
-- | \@brief Canonical codec identity of ur_msgs/Analog.
-- \@details Exact identity UWVMROS1_638dc3b30def8193a501b4c1c778792a60c8c683a96880e9fa6db6c01774f6a7 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsAnalog; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsAnalogCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_msgs/Analog.
-- \@details Exact identity UWVMROS1_638dc3b30def8193a501b4c1c778792a60c8c683a96880e9fa6db6c01774f6a7 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsAnalog; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsAnalogCodecIdentity = "UWVMROS1_638dc3b30def8193a501b4c1c778792a60c8c683a96880e9fa6db6c01774f6a7"
-- | \@brief ur_msgs/Analog.CURRENT: original uint8 constant.
-- \@details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsAnalog; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsAnalog_CURRENT :: Word8
-- | \@brief ur_msgs/Analog.CURRENT: original uint8 constant.
-- \@details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsAnalog; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsAnalog_CURRENT = 0
-- | \@brief ur_msgs/Analog.VOLTAGE: original uint8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsAnalog; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsAnalog_VOLTAGE :: Word8
-- | \@brief ur_msgs/Analog.VOLTAGE: original uint8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsAnalog; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsAnalog_VOLTAGE = 1
-- | \@brief Encode one complete ur_msgs/Analog value.
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
-- \@see Ros1Ur_msgsAnalog; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_msgsAnalog :: Ros1Ur_msgsAnalog -> Either Word32 B.ByteString
encodeRos1Ur_msgsAnalog value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros1Ur_msgsAnalog_pin value))
  b1 <- W.encodeUnsigned 1 (fromIntegral (ros1Ur_msgsAnalog_domain value))
  b2 <- W.encodeFloat32 (ros1Ur_msgsAnalog_state value)
  W.bounded 6 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of ur_msgs/Analog.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsAnalog; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_msgsAnalog :: W.Decoder Ros1Ur_msgsAnalog
readRos1Ur_msgsAnalog = do
  a0 <- fromIntegral <$> W.unsigned 1
  a1 <- fromIntegral <$> W.unsigned 1
  a2 <- W.float32
  let value = Ros1Ur_msgsAnalog a0 a1 a2
  case encodeRos1Ur_msgsAnalog value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_msgs/Analog value.
-- \@details Require the complete 6..6-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsAnalog; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_msgsAnalog :: B.ByteString -> Either Word32 Ros1Ur_msgsAnalog
decodeRos1Ur_msgsAnalog = W.runDecoder 6 readRos1Ur_msgsAnalog
instance Canonical Ros1Ur_msgsAnalog where
  maximumBytes _ = 6
  encodeValue = encodeRos1Ur_msgsAnalog
  readValue = readRos1Ur_msgsAnalog
-- | \@brief Complete ROS 1 ur_msgs/Digital value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 2..2 bytes and
-- is identified by UWVMROS1_c5840cfc5e26fe2f18817e46a0322a92e02ca21983920c71ebeb585769f5622c.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_msgsDigital = Ros1Ur_msgsDigital
  {
    -- | \@brief ur_msgs/Digital.pin: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsDigital; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsDigital_pin :: Word8
  ,
    -- | \@brief ur_msgs/Digital.state: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsDigital; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsDigital_state :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_msgs/Digital.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsDigital; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_msgsDigital :: Ros1Ur_msgsDigital
defaultRos1Ur_msgsDigital = Ros1Ur_msgsDigital (0) (False)
-- | \@brief Canonical codec identity of ur_msgs/Digital.
-- \@details Exact identity UWVMROS1_c5840cfc5e26fe2f18817e46a0322a92e02ca21983920c71ebeb585769f5622c binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsDigital; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsDigitalCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_msgs/Digital.
-- \@details Exact identity UWVMROS1_c5840cfc5e26fe2f18817e46a0322a92e02ca21983920c71ebeb585769f5622c binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsDigital; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsDigitalCodecIdentity = "UWVMROS1_c5840cfc5e26fe2f18817e46a0322a92e02ca21983920c71ebeb585769f5622c"
-- | \@brief Encode one complete ur_msgs/Digital value.
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
-- \@see Ros1Ur_msgsDigital; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_msgsDigital :: Ros1Ur_msgsDigital -> Either Word32 B.ByteString
encodeRos1Ur_msgsDigital value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros1Ur_msgsDigital_pin value))
  b1 <- W.encodeBool (ros1Ur_msgsDigital_state value)
  W.bounded 2 [b0, b1]
-- | \@brief Read the ordered canonical fields of ur_msgs/Digital.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsDigital; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_msgsDigital :: W.Decoder Ros1Ur_msgsDigital
readRos1Ur_msgsDigital = do
  a0 <- fromIntegral <$> W.unsigned 1
  a1 <- W.boolean
  let value = Ros1Ur_msgsDigital a0 a1
  case encodeRos1Ur_msgsDigital value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_msgs/Digital value.
-- \@details Require the complete 2..2-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsDigital; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_msgsDigital :: B.ByteString -> Either Word32 Ros1Ur_msgsDigital
decodeRos1Ur_msgsDigital = W.runDecoder 2 readRos1Ur_msgsDigital
instance Canonical Ros1Ur_msgsDigital where
  maximumBytes _ = 2
  encodeValue = encodeRos1Ur_msgsDigital
  readValue = readRos1Ur_msgsDigital
-- | \@brief Complete ROS 1 ur_msgs/GetRobotSoftwareVersionRequest value.
-- \@details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and
-- is identified by UWVMROS1_bbcdd98ee8d951a8a4fa873ad1c755f16c5cce14ceb7a614343dd44ccf84b9c8.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_msgsGetRobotSoftwareVersionRequest = Ros1Ur_msgsGetRobotSoftwareVersionRequest deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_msgs/GetRobotSoftwareVersionRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_msgsGetRobotSoftwareVersionRequest :: Ros1Ur_msgsGetRobotSoftwareVersionRequest
defaultRos1Ur_msgsGetRobotSoftwareVersionRequest = Ros1Ur_msgsGetRobotSoftwareVersionRequest 
-- | \@brief Canonical codec identity of ur_msgs/GetRobotSoftwareVersionRequest.
-- \@details Exact identity UWVMROS1_bbcdd98ee8d951a8a4fa873ad1c755f16c5cce14ceb7a614343dd44ccf84b9c8 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsGetRobotSoftwareVersionRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_msgs/GetRobotSoftwareVersionRequest.
-- \@details Exact identity UWVMROS1_bbcdd98ee8d951a8a4fa873ad1c755f16c5cce14ceb7a614343dd44ccf84b9c8 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsGetRobotSoftwareVersionRequestCodecIdentity =
    "UWVMROS1_bbcdd98ee8d951a8a4fa873ad1c755f16c5cce14ceb7a614343dd44ccf84b9c8"
-- | \@brief Encode one complete ur_msgs/GetRobotSoftwareVersionRequest value.
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
-- \@see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_msgsGetRobotSoftwareVersionRequest :: Ros1Ur_msgsGetRobotSoftwareVersionRequest -> Either Word32 B.ByteString
encodeRos1Ur_msgsGetRobotSoftwareVersionRequest value = do
  W.bounded 0 []
-- | \@brief Read the ordered canonical fields of ur_msgs/GetRobotSoftwareVersionRequest.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_msgsGetRobotSoftwareVersionRequest :: W.Decoder Ros1Ur_msgsGetRobotSoftwareVersionRequest
readRos1Ur_msgsGetRobotSoftwareVersionRequest = do
  let value = Ros1Ur_msgsGetRobotSoftwareVersionRequest 
  case encodeRos1Ur_msgsGetRobotSoftwareVersionRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_msgs/GetRobotSoftwareVersionRequest value.
-- \@details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_msgsGetRobotSoftwareVersionRequest :: B.ByteString -> Either Word32 Ros1Ur_msgsGetRobotSoftwareVersionRequest
decodeRos1Ur_msgsGetRobotSoftwareVersionRequest = W.runDecoder 0 readRos1Ur_msgsGetRobotSoftwareVersionRequest
instance Canonical Ros1Ur_msgsGetRobotSoftwareVersionRequest where
  maximumBytes _ = 0
  encodeValue = encodeRos1Ur_msgsGetRobotSoftwareVersionRequest
  readValue = readRos1Ur_msgsGetRobotSoftwareVersionRequest
-- | \@brief Complete ROS 1 ur_msgs/GetRobotSoftwareVersionResponse value.
-- \@details All 4 declared fields are retained in source order. The canonical representation occupies 16..16 bytes
-- and is identified by UWVMROS1_36ab51ce55e3630f8ca71f364f4c5cc1f4b010f678777e4fd7b03dd480f92e64.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_msgsGetRobotSoftwareVersionResponse = Ros1Ur_msgsGetRobotSoftwareVersionResponse
  {
    -- | \@brief ur_msgs/GetRobotSoftwareVersionResponse.major: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsGetRobotSoftwareVersionResponse_major :: Word32
  ,
    -- | \@brief ur_msgs/GetRobotSoftwareVersionResponse.minor: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsGetRobotSoftwareVersionResponse_minor :: Word32
  ,
    -- | \@brief ur_msgs/GetRobotSoftwareVersionResponse.bugfix: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsGetRobotSoftwareVersionResponse_bugfix :: Word32
  ,
    -- | \@brief ur_msgs/GetRobotSoftwareVersionResponse.build: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsGetRobotSoftwareVersionResponse_build :: Word32
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_msgs/GetRobotSoftwareVersionResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_msgsGetRobotSoftwareVersionResponse :: Ros1Ur_msgsGetRobotSoftwareVersionResponse
defaultRos1Ur_msgsGetRobotSoftwareVersionResponse = Ros1Ur_msgsGetRobotSoftwareVersionResponse (0) (0) (0) (0)
-- | \@brief Canonical codec identity of ur_msgs/GetRobotSoftwareVersionResponse.
-- \@details Exact identity UWVMROS1_36ab51ce55e3630f8ca71f364f4c5cc1f4b010f678777e4fd7b03dd480f92e64 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsGetRobotSoftwareVersionResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_msgs/GetRobotSoftwareVersionResponse.
-- \@details Exact identity UWVMROS1_36ab51ce55e3630f8ca71f364f4c5cc1f4b010f678777e4fd7b03dd480f92e64 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsGetRobotSoftwareVersionResponseCodecIdentity =
    "UWVMROS1_36ab51ce55e3630f8ca71f364f4c5cc1f4b010f678777e4fd7b03dd480f92e64"
-- | \@brief Encode one complete ur_msgs/GetRobotSoftwareVersionResponse value.
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
-- \@see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_msgsGetRobotSoftwareVersionResponse :: Ros1Ur_msgsGetRobotSoftwareVersionResponse -> Either Word32 B.ByteString
encodeRos1Ur_msgsGetRobotSoftwareVersionResponse value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Ur_msgsGetRobotSoftwareVersionResponse_major value))
  b1 <- W.encodeUnsigned 4 (fromIntegral (ros1Ur_msgsGetRobotSoftwareVersionResponse_minor value))
  b2 <- W.encodeUnsigned 4 (fromIntegral (ros1Ur_msgsGetRobotSoftwareVersionResponse_bugfix value))
  b3 <- W.encodeUnsigned 4 (fromIntegral (ros1Ur_msgsGetRobotSoftwareVersionResponse_build value))
  W.bounded 16 [b0, b1, b2, b3]
-- | \@brief Read the ordered canonical fields of ur_msgs/GetRobotSoftwareVersionResponse.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_msgsGetRobotSoftwareVersionResponse :: W.Decoder Ros1Ur_msgsGetRobotSoftwareVersionResponse
readRos1Ur_msgsGetRobotSoftwareVersionResponse = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- fromIntegral <$> W.unsigned 4
  a2 <- fromIntegral <$> W.unsigned 4
  a3 <- fromIntegral <$> W.unsigned 4
  let value = Ros1Ur_msgsGetRobotSoftwareVersionResponse a0 a1 a2 a3
  case encodeRos1Ur_msgsGetRobotSoftwareVersionResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_msgs/GetRobotSoftwareVersionResponse value.
-- \@details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_msgsGetRobotSoftwareVersionResponse :: B.ByteString -> Either Word32 Ros1Ur_msgsGetRobotSoftwareVersionResponse
decodeRos1Ur_msgsGetRobotSoftwareVersionResponse = W.runDecoder 16 readRos1Ur_msgsGetRobotSoftwareVersionResponse
instance Canonical Ros1Ur_msgsGetRobotSoftwareVersionResponse where
  maximumBytes _ = 16
  encodeValue = encodeRos1Ur_msgsGetRobotSoftwareVersionResponse
  readValue = readRos1Ur_msgsGetRobotSoftwareVersionResponse
-- | \@brief Complete ROS 1 ur_msgs/IOStates value.
-- \@details All 5 declared fields are retained in source order. The canonical representation occupies 20..404 bytes
-- and is identified by UWVMROS1_4b10f6efdd2f129267c407bc1f8caed03776fef6d49f0a1b9dfbf2451ad8f033.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_msgsIOStates = Ros1Ur_msgsIOStates
  {
    -- | \@brief ur_msgs/IOStates.digital_in_states: ur_msgs/Digital; 0..32 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsIOStates; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsIOStates_digital_in_states :: [Ros1Ur_msgsDigital]
  ,
    -- | \@brief ur_msgs/IOStates.digital_out_states: ur_msgs/Digital; 0..32 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsIOStates; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsIOStates_digital_out_states :: [Ros1Ur_msgsDigital]
  ,
    -- | \@brief ur_msgs/IOStates.flag_states: ur_msgs/Digital; 0..32 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsIOStates; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsIOStates_flag_states :: [Ros1Ur_msgsDigital]
  ,
    -- | \@brief ur_msgs/IOStates.analog_in_states: ur_msgs/Analog; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsIOStates; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsIOStates_analog_in_states :: [Ros1Ur_msgsAnalog]
  ,
    -- | \@brief ur_msgs/IOStates.analog_out_states: ur_msgs/Analog; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsIOStates; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsIOStates_analog_out_states :: [Ros1Ur_msgsAnalog]
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_msgs/IOStates.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsIOStates; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_msgsIOStates :: Ros1Ur_msgsIOStates
defaultRos1Ur_msgsIOStates = Ros1Ur_msgsIOStates ([]) ([]) ([]) ([]) ([])
-- | \@brief Canonical codec identity of ur_msgs/IOStates.
-- \@details Exact identity UWVMROS1_4b10f6efdd2f129267c407bc1f8caed03776fef6d49f0a1b9dfbf2451ad8f033 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsIOStates; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsIOStatesCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_msgs/IOStates.
-- \@details Exact identity UWVMROS1_4b10f6efdd2f129267c407bc1f8caed03776fef6d49f0a1b9dfbf2451ad8f033 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsIOStates; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsIOStatesCodecIdentity = "UWVMROS1_4b10f6efdd2f129267c407bc1f8caed03776fef6d49f0a1b9dfbf2451ad8f033"
-- | \@brief Encode one complete ur_msgs/IOStates value.
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
-- \@see Ros1Ur_msgsIOStates; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_msgsIOStates :: Ros1Ur_msgsIOStates -> Either Word32 B.ByteString
encodeRos1Ur_msgsIOStates value = do
  if length (ros1Ur_msgsIOStates_digital_in_states value) > 32 then Left 22 else Right ()
  prefix0 <- W.encodeCount 32 (length (ros1Ur_msgsIOStates_digital_in_states value))
  b0 <- B.concat <$> mapM (\e -> encodeRos1Ur_msgsDigital (e)) (ros1Ur_msgsIOStates_digital_in_states value)
  if length (ros1Ur_msgsIOStates_digital_out_states value) > 32 then Left 22 else Right ()
  prefix1 <- W.encodeCount 32 (length (ros1Ur_msgsIOStates_digital_out_states value))
  b1 <- B.concat <$> mapM (\e -> encodeRos1Ur_msgsDigital (e)) (ros1Ur_msgsIOStates_digital_out_states value)
  if length (ros1Ur_msgsIOStates_flag_states value) > 32 then Left 22 else Right ()
  prefix2 <- W.encodeCount 32 (length (ros1Ur_msgsIOStates_flag_states value))
  b2 <- B.concat <$> mapM (\e -> encodeRos1Ur_msgsDigital (e)) (ros1Ur_msgsIOStates_flag_states value)
  if length (ros1Ur_msgsIOStates_analog_in_states value) > 16 then Left 22 else Right ()
  prefix3 <- W.encodeCount 16 (length (ros1Ur_msgsIOStates_analog_in_states value))
  b3 <- B.concat <$> mapM (\e -> encodeRos1Ur_msgsAnalog (e)) (ros1Ur_msgsIOStates_analog_in_states value)
  if length (ros1Ur_msgsIOStates_analog_out_states value) > 16 then Left 22 else Right ()
  prefix4 <- W.encodeCount 16 (length (ros1Ur_msgsIOStates_analog_out_states value))
  b4 <- B.concat <$> mapM (\e -> encodeRos1Ur_msgsAnalog (e)) (ros1Ur_msgsIOStates_analog_out_states value)
  W.bounded 404 [prefix0, b0, prefix1, b1, prefix2, b2, prefix3, b3, prefix4, b4]
-- | \@brief Read the ordered canonical fields of ur_msgs/IOStates.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsIOStates; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_msgsIOStates :: W.Decoder Ros1Ur_msgsIOStates
readRos1Ur_msgsIOStates = do
  count0 <- W.count 32
  a0 <- replicateM count0 (readRos1Ur_msgsDigital)
  count1 <- W.count 32
  a1 <- replicateM count1 (readRos1Ur_msgsDigital)
  count2 <- W.count 32
  a2 <- replicateM count2 (readRos1Ur_msgsDigital)
  count3 <- W.count 16
  a3 <- replicateM count3 (readRos1Ur_msgsAnalog)
  count4 <- W.count 16
  a4 <- replicateM count4 (readRos1Ur_msgsAnalog)
  let value = Ros1Ur_msgsIOStates a0 a1 a2 a3 a4
  case encodeRos1Ur_msgsIOStates value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_msgs/IOStates value.
-- \@details Require the complete 20..404-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsIOStates; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_msgsIOStates :: B.ByteString -> Either Word32 Ros1Ur_msgsIOStates
decodeRos1Ur_msgsIOStates = W.runDecoder 404 readRos1Ur_msgsIOStates
instance Canonical Ros1Ur_msgsIOStates where
  maximumBytes _ = 404
  encodeValue = encodeRos1Ur_msgsIOStates
  readValue = readRos1Ur_msgsIOStates
-- | \@brief Complete ROS 1 ur_msgs/MasterboardDataMsg value.
-- \@details All 16 declared fields are retained in source order. The canonical representation occupies 62..62 bytes
-- and is identified by UWVMROS1_f80f92b90cb33dd5b118df81447dfcc33c1ab230a91bb915a1be684401da265f.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_msgsMasterboardDataMsg = Ros1Ur_msgsMasterboardDataMsg
  {
    -- | \@brief ur_msgs/MasterboardDataMsg.digital_input_bits: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsMasterboardDataMsg_digital_input_bits :: Word32
  ,
    -- | \@brief ur_msgs/MasterboardDataMsg.digital_output_bits: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsMasterboardDataMsg_digital_output_bits :: Word32
  ,
    -- | \@brief ur_msgs/MasterboardDataMsg.analog_input_range0: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsMasterboardDataMsg_analog_input_range0 :: Int8
  ,
    -- | \@brief ur_msgs/MasterboardDataMsg.analog_input_range1: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsMasterboardDataMsg_analog_input_range1 :: Int8
  ,
    -- | \@brief ur_msgs/MasterboardDataMsg.analog_input0: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsMasterboardDataMsg_analog_input0 :: Double
  ,
    -- | \@brief ur_msgs/MasterboardDataMsg.analog_input1: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsMasterboardDataMsg_analog_input1 :: Double
  ,
    -- | \@brief ur_msgs/MasterboardDataMsg.analog_output_domain0: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsMasterboardDataMsg_analog_output_domain0 :: Int8
  ,
    -- | \@brief ur_msgs/MasterboardDataMsg.analog_output_domain1: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsMasterboardDataMsg_analog_output_domain1 :: Int8
  ,
    -- | \@brief ur_msgs/MasterboardDataMsg.analog_output0: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsMasterboardDataMsg_analog_output0 :: Double
  ,
    -- | \@brief ur_msgs/MasterboardDataMsg.analog_output1: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsMasterboardDataMsg_analog_output1 :: Double
  ,
    -- | \@brief ur_msgs/MasterboardDataMsg.masterboard_temperature: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsMasterboardDataMsg_masterboard_temperature :: Float
  ,
    -- | \@brief ur_msgs/MasterboardDataMsg.robot_voltage_48V: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsMasterboardDataMsg_robot_voltage_48V :: Float
  ,
    -- | \@brief ur_msgs/MasterboardDataMsg.robot_current: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsMasterboardDataMsg_robot_current :: Float
  ,
    -- | \@brief ur_msgs/MasterboardDataMsg.master_io_current: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsMasterboardDataMsg_master_io_current :: Float
  ,
    -- | \@brief ur_msgs/MasterboardDataMsg.master_safety_state: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsMasterboardDataMsg_master_safety_state :: Word8
  ,
    -- | \@brief ur_msgs/MasterboardDataMsg.master_onoff_state: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsMasterboardDataMsg_master_onoff_state :: Word8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_msgs/MasterboardDataMsg.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_msgsMasterboardDataMsg :: Ros1Ur_msgsMasterboardDataMsg
defaultRos1Ur_msgsMasterboardDataMsg =
    Ros1Ur_msgsMasterboardDataMsg
        (0)
        (0)
        (0)
        (0)
        (0)
        (0)
        (0)
        (0)
        (0)
        (0)
        (0)
        (0)
        (0)
        (0)
        (0)
        (0)
-- | \@brief Canonical codec identity of ur_msgs/MasterboardDataMsg.
-- \@details Exact identity UWVMROS1_f80f92b90cb33dd5b118df81447dfcc33c1ab230a91bb915a1be684401da265f binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsMasterboardDataMsgCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_msgs/MasterboardDataMsg.
-- \@details Exact identity UWVMROS1_f80f92b90cb33dd5b118df81447dfcc33c1ab230a91bb915a1be684401da265f binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsMasterboardDataMsgCodecIdentity = "UWVMROS1_f80f92b90cb33dd5b118df81447dfcc33c1ab230a91bb915a1be684401da265f"
-- | \@brief Encode one complete ur_msgs/MasterboardDataMsg value.
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
-- \@see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_msgsMasterboardDataMsg :: Ros1Ur_msgsMasterboardDataMsg -> Either Word32 B.ByteString
encodeRos1Ur_msgsMasterboardDataMsg value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Ur_msgsMasterboardDataMsg_digital_input_bits value))
  b1 <- W.encodeUnsigned 4 (fromIntegral (ros1Ur_msgsMasterboardDataMsg_digital_output_bits value))
  b2 <- W.encodeSigned 1 (fromIntegral (ros1Ur_msgsMasterboardDataMsg_analog_input_range0 value))
  b3 <- W.encodeSigned 1 (fromIntegral (ros1Ur_msgsMasterboardDataMsg_analog_input_range1 value))
  b4 <- W.encodeFloat64 (ros1Ur_msgsMasterboardDataMsg_analog_input0 value)
  b5 <- W.encodeFloat64 (ros1Ur_msgsMasterboardDataMsg_analog_input1 value)
  b6 <- W.encodeSigned 1 (fromIntegral (ros1Ur_msgsMasterboardDataMsg_analog_output_domain0 value))
  b7 <- W.encodeSigned 1 (fromIntegral (ros1Ur_msgsMasterboardDataMsg_analog_output_domain1 value))
  b8 <- W.encodeFloat64 (ros1Ur_msgsMasterboardDataMsg_analog_output0 value)
  b9 <- W.encodeFloat64 (ros1Ur_msgsMasterboardDataMsg_analog_output1 value)
  b10 <- W.encodeFloat32 (ros1Ur_msgsMasterboardDataMsg_masterboard_temperature value)
  b11 <- W.encodeFloat32 (ros1Ur_msgsMasterboardDataMsg_robot_voltage_48V value)
  b12 <- W.encodeFloat32 (ros1Ur_msgsMasterboardDataMsg_robot_current value)
  b13 <- W.encodeFloat32 (ros1Ur_msgsMasterboardDataMsg_master_io_current value)
  b14 <- W.encodeUnsigned 1 (fromIntegral (ros1Ur_msgsMasterboardDataMsg_master_safety_state value))
  b15 <- W.encodeUnsigned 1 (fromIntegral (ros1Ur_msgsMasterboardDataMsg_master_onoff_state value))
  W.bounded 62 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15]
-- | \@brief Read the ordered canonical fields of ur_msgs/MasterboardDataMsg.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_msgsMasterboardDataMsg :: W.Decoder Ros1Ur_msgsMasterboardDataMsg
readRos1Ur_msgsMasterboardDataMsg = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- fromIntegral <$> W.unsigned 4
  a2 <- fromIntegral <$> W.signed 1
  a3 <- fromIntegral <$> W.signed 1
  a4 <- W.float64
  a5 <- W.float64
  a6 <- fromIntegral <$> W.signed 1
  a7 <- fromIntegral <$> W.signed 1
  a8 <- W.float64
  a9 <- W.float64
  a10 <- W.float32
  a11 <- W.float32
  a12 <- W.float32
  a13 <- W.float32
  a14 <- fromIntegral <$> W.unsigned 1
  a15 <- fromIntegral <$> W.unsigned 1
  let value = Ros1Ur_msgsMasterboardDataMsg a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15
  case encodeRos1Ur_msgsMasterboardDataMsg value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_msgs/MasterboardDataMsg value.
-- \@details Require the complete 62..62-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_msgsMasterboardDataMsg :: B.ByteString -> Either Word32 Ros1Ur_msgsMasterboardDataMsg
decodeRos1Ur_msgsMasterboardDataMsg = W.runDecoder 62 readRos1Ur_msgsMasterboardDataMsg
instance Canonical Ros1Ur_msgsMasterboardDataMsg where
  maximumBytes _ = 62
  encodeValue = encodeRos1Ur_msgsMasterboardDataMsg
  readValue = readRos1Ur_msgsMasterboardDataMsg
-- | \@brief Complete ROS 1 ur_msgs/RobotModeDataMsg value.
-- \@details All 8 declared fields are retained in source order. The canonical representation occupies 15..15 bytes
-- and is identified by UWVMROS1_64c4247d865e0731b13ca13ce2e355df664cabf7f3d646051d9d3ef48b05a231.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_msgsRobotModeDataMsg = Ros1Ur_msgsRobotModeDataMsg
  {
    -- | \@brief ur_msgs/RobotModeDataMsg.timestamp: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsRobotModeDataMsg_timestamp :: Word64
  ,
    -- | \@brief ur_msgs/RobotModeDataMsg.is_robot_connected: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsRobotModeDataMsg_is_robot_connected :: Bool
  ,
    -- | \@brief ur_msgs/RobotModeDataMsg.is_real_robot_enabled: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsRobotModeDataMsg_is_real_robot_enabled :: Bool
  ,
    -- | \@brief ur_msgs/RobotModeDataMsg.is_power_on_robot: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsRobotModeDataMsg_is_power_on_robot :: Bool
  ,
    -- | \@brief ur_msgs/RobotModeDataMsg.is_emergency_stopped: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsRobotModeDataMsg_is_emergency_stopped :: Bool
  ,
    -- | \@brief ur_msgs/RobotModeDataMsg.is_protective_stopped: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsRobotModeDataMsg_is_protective_stopped :: Bool
  ,
    -- | \@brief ur_msgs/RobotModeDataMsg.is_program_running: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsRobotModeDataMsg_is_program_running :: Bool
  ,
    -- | \@brief ur_msgs/RobotModeDataMsg.is_program_paused: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsRobotModeDataMsg_is_program_paused :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_msgs/RobotModeDataMsg.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_msgsRobotModeDataMsg :: Ros1Ur_msgsRobotModeDataMsg
defaultRos1Ur_msgsRobotModeDataMsg =
    Ros1Ur_msgsRobotModeDataMsg
        (0)
        (False)
        (False)
        (False)
        (False)
        (False)
        (False)
        (False)
-- | \@brief Canonical codec identity of ur_msgs/RobotModeDataMsg.
-- \@details Exact identity UWVMROS1_64c4247d865e0731b13ca13ce2e355df664cabf7f3d646051d9d3ef48b05a231 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsRobotModeDataMsgCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_msgs/RobotModeDataMsg.
-- \@details Exact identity UWVMROS1_64c4247d865e0731b13ca13ce2e355df664cabf7f3d646051d9d3ef48b05a231 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsRobotModeDataMsgCodecIdentity = "UWVMROS1_64c4247d865e0731b13ca13ce2e355df664cabf7f3d646051d9d3ef48b05a231"
-- | \@brief Encode one complete ur_msgs/RobotModeDataMsg value.
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
-- \@see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_msgsRobotModeDataMsg :: Ros1Ur_msgsRobotModeDataMsg -> Either Word32 B.ByteString
encodeRos1Ur_msgsRobotModeDataMsg value = do
  b0 <- W.encodeUnsigned 8 (fromIntegral (ros1Ur_msgsRobotModeDataMsg_timestamp value))
  b1 <- W.encodeBool (ros1Ur_msgsRobotModeDataMsg_is_robot_connected value)
  b2 <- W.encodeBool (ros1Ur_msgsRobotModeDataMsg_is_real_robot_enabled value)
  b3 <- W.encodeBool (ros1Ur_msgsRobotModeDataMsg_is_power_on_robot value)
  b4 <- W.encodeBool (ros1Ur_msgsRobotModeDataMsg_is_emergency_stopped value)
  b5 <- W.encodeBool (ros1Ur_msgsRobotModeDataMsg_is_protective_stopped value)
  b6 <- W.encodeBool (ros1Ur_msgsRobotModeDataMsg_is_program_running value)
  b7 <- W.encodeBool (ros1Ur_msgsRobotModeDataMsg_is_program_paused value)
  W.bounded 15 [b0, b1, b2, b3, b4, b5, b6, b7]
-- | \@brief Read the ordered canonical fields of ur_msgs/RobotModeDataMsg.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_msgsRobotModeDataMsg :: W.Decoder Ros1Ur_msgsRobotModeDataMsg
readRos1Ur_msgsRobotModeDataMsg = do
  a0 <- fromIntegral <$> W.unsigned 8
  a1 <- W.boolean
  a2 <- W.boolean
  a3 <- W.boolean
  a4 <- W.boolean
  a5 <- W.boolean
  a6 <- W.boolean
  a7 <- W.boolean
  let value = Ros1Ur_msgsRobotModeDataMsg a0 a1 a2 a3 a4 a5 a6 a7
  case encodeRos1Ur_msgsRobotModeDataMsg value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_msgs/RobotModeDataMsg value.
-- \@details Require the complete 15..15-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_msgsRobotModeDataMsg :: B.ByteString -> Either Word32 Ros1Ur_msgsRobotModeDataMsg
decodeRos1Ur_msgsRobotModeDataMsg = W.runDecoder 15 readRos1Ur_msgsRobotModeDataMsg
instance Canonical Ros1Ur_msgsRobotModeDataMsg where
  maximumBytes _ = 15
  encodeValue = encodeRos1Ur_msgsRobotModeDataMsg
  readValue = readRos1Ur_msgsRobotModeDataMsg
-- | \@brief Complete ROS 1 ur_msgs/RobotStateRTMsg value.
-- \@details All 19 declared fields are retained in source order. The canonical representation occupies 96..768 bytes
-- and is identified by UWVMROS1_e3d93b6141f749b93c229d8eabebbeb2782a16621fea4d7d39096794e7a67ce7.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_msgsRobotStateRTMsg = Ros1Ur_msgsRobotStateRTMsg
  {
    -- | \@brief ur_msgs/RobotStateRTMsg.time: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsRobotStateRTMsg_time :: Double
  ,
    -- | \@brief ur_msgs/RobotStateRTMsg.q_target: float64; 0..6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsRobotStateRTMsg_q_target :: [Double]
  ,
    -- | \@brief ur_msgs/RobotStateRTMsg.qd_target: float64; 0..6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsRobotStateRTMsg_qd_target :: [Double]
  ,
    -- | \@brief ur_msgs/RobotStateRTMsg.qdd_target: float64; 0..6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsRobotStateRTMsg_qdd_target :: [Double]
  ,
    -- | \@brief ur_msgs/RobotStateRTMsg.i_target: float64; 0..6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsRobotStateRTMsg_i_target :: [Double]
  ,
    -- | \@brief ur_msgs/RobotStateRTMsg.m_target: float64; 0..6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsRobotStateRTMsg_m_target :: [Double]
  ,
    -- | \@brief ur_msgs/RobotStateRTMsg.q_actual: float64; 0..6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsRobotStateRTMsg_q_actual :: [Double]
  ,
    -- | \@brief ur_msgs/RobotStateRTMsg.qd_actual: float64; 0..6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsRobotStateRTMsg_qd_actual :: [Double]
  ,
    -- | \@brief ur_msgs/RobotStateRTMsg.i_actual: float64; 0..6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsRobotStateRTMsg_i_actual :: [Double]
  ,
    -- | \@brief ur_msgs/RobotStateRTMsg.tool_acc_values: float64; 0..6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsRobotStateRTMsg_tool_acc_values :: [Double]
  ,
    -- | \@brief ur_msgs/RobotStateRTMsg.tcp_force: float64; 0..6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsRobotStateRTMsg_tcp_force :: [Double]
  ,
    -- | \@brief ur_msgs/RobotStateRTMsg.tool_vector: float64; 0..6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsRobotStateRTMsg_tool_vector :: [Double]
  ,
    -- | \@brief ur_msgs/RobotStateRTMsg.tcp_speed: float64; 0..6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsRobotStateRTMsg_tcp_speed :: [Double]
  ,
    -- | \@brief ur_msgs/RobotStateRTMsg.digital_input_bits: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsRobotStateRTMsg_digital_input_bits :: Double
  ,
    -- | \@brief ur_msgs/RobotStateRTMsg.motor_temperatures: float64; 0..6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsRobotStateRTMsg_motor_temperatures :: [Double]
  ,
    -- | \@brief ur_msgs/RobotStateRTMsg.controller_timer: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsRobotStateRTMsg_controller_timer :: Double
  ,
    -- | \@brief ur_msgs/RobotStateRTMsg.test_value: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsRobotStateRTMsg_test_value :: Double
  ,
    -- | \@brief ur_msgs/RobotStateRTMsg.robot_mode: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsRobotStateRTMsg_robot_mode :: Double
  ,
    -- | \@brief ur_msgs/RobotStateRTMsg.joint_modes: float64; 0..6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsRobotStateRTMsg_joint_modes :: [Double]
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_msgs/RobotStateRTMsg.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_msgsRobotStateRTMsg :: Ros1Ur_msgsRobotStateRTMsg
defaultRos1Ur_msgsRobotStateRTMsg =
    Ros1Ur_msgsRobotStateRTMsg
        (0)
        ([])
        ([])
        ([])
        ([])
        ([])
        ([])
        ([])
        ([])
        ([])
        ([])
        ([])
        ([])
        (0)
        ([])
        (0)
        (0)
        (0)
        ([])
-- | \@brief Canonical codec identity of ur_msgs/RobotStateRTMsg.
-- \@details Exact identity UWVMROS1_e3d93b6141f749b93c229d8eabebbeb2782a16621fea4d7d39096794e7a67ce7 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsRobotStateRTMsgCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_msgs/RobotStateRTMsg.
-- \@details Exact identity UWVMROS1_e3d93b6141f749b93c229d8eabebbeb2782a16621fea4d7d39096794e7a67ce7 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsRobotStateRTMsgCodecIdentity = "UWVMROS1_e3d93b6141f749b93c229d8eabebbeb2782a16621fea4d7d39096794e7a67ce7"
-- | \@brief Encode one complete ur_msgs/RobotStateRTMsg value.
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
-- \@see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_msgsRobotStateRTMsg :: Ros1Ur_msgsRobotStateRTMsg -> Either Word32 B.ByteString
encodeRos1Ur_msgsRobotStateRTMsg value = do
  b0 <- W.encodeFloat64 (ros1Ur_msgsRobotStateRTMsg_time value)
  if length (ros1Ur_msgsRobotStateRTMsg_q_target value) > 6 then Left 22 else Right ()
  prefix1 <- W.encodeCount 6 (length (ros1Ur_msgsRobotStateRTMsg_q_target value))
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Ur_msgsRobotStateRTMsg_q_target value)
  if length (ros1Ur_msgsRobotStateRTMsg_qd_target value) > 6 then Left 22 else Right ()
  prefix2 <- W.encodeCount 6 (length (ros1Ur_msgsRobotStateRTMsg_qd_target value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Ur_msgsRobotStateRTMsg_qd_target value)
  if length (ros1Ur_msgsRobotStateRTMsg_qdd_target value) > 6 then Left 22 else Right ()
  prefix3 <- W.encodeCount 6 (length (ros1Ur_msgsRobotStateRTMsg_qdd_target value))
  b3 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Ur_msgsRobotStateRTMsg_qdd_target value)
  if length (ros1Ur_msgsRobotStateRTMsg_i_target value) > 6 then Left 22 else Right ()
  prefix4 <- W.encodeCount 6 (length (ros1Ur_msgsRobotStateRTMsg_i_target value))
  b4 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Ur_msgsRobotStateRTMsg_i_target value)
  if length (ros1Ur_msgsRobotStateRTMsg_m_target value) > 6 then Left 22 else Right ()
  prefix5 <- W.encodeCount 6 (length (ros1Ur_msgsRobotStateRTMsg_m_target value))
  b5 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Ur_msgsRobotStateRTMsg_m_target value)
  if length (ros1Ur_msgsRobotStateRTMsg_q_actual value) > 6 then Left 22 else Right ()
  prefix6 <- W.encodeCount 6 (length (ros1Ur_msgsRobotStateRTMsg_q_actual value))
  b6 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Ur_msgsRobotStateRTMsg_q_actual value)
  if length (ros1Ur_msgsRobotStateRTMsg_qd_actual value) > 6 then Left 22 else Right ()
  prefix7 <- W.encodeCount 6 (length (ros1Ur_msgsRobotStateRTMsg_qd_actual value))
  b7 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Ur_msgsRobotStateRTMsg_qd_actual value)
  if length (ros1Ur_msgsRobotStateRTMsg_i_actual value) > 6 then Left 22 else Right ()
  prefix8 <- W.encodeCount 6 (length (ros1Ur_msgsRobotStateRTMsg_i_actual value))
  b8 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Ur_msgsRobotStateRTMsg_i_actual value)
  if length (ros1Ur_msgsRobotStateRTMsg_tool_acc_values value) > 6 then Left 22 else Right ()
  prefix9 <- W.encodeCount 6 (length (ros1Ur_msgsRobotStateRTMsg_tool_acc_values value))
  b9 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Ur_msgsRobotStateRTMsg_tool_acc_values value)
  if length (ros1Ur_msgsRobotStateRTMsg_tcp_force value) > 6 then Left 22 else Right ()
  prefix10 <- W.encodeCount 6 (length (ros1Ur_msgsRobotStateRTMsg_tcp_force value))
  b10 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Ur_msgsRobotStateRTMsg_tcp_force value)
  if length (ros1Ur_msgsRobotStateRTMsg_tool_vector value) > 6 then Left 22 else Right ()
  prefix11 <- W.encodeCount 6 (length (ros1Ur_msgsRobotStateRTMsg_tool_vector value))
  b11 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Ur_msgsRobotStateRTMsg_tool_vector value)
  if length (ros1Ur_msgsRobotStateRTMsg_tcp_speed value) > 6 then Left 22 else Right ()
  prefix12 <- W.encodeCount 6 (length (ros1Ur_msgsRobotStateRTMsg_tcp_speed value))
  b12 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Ur_msgsRobotStateRTMsg_tcp_speed value)
  b13 <- W.encodeFloat64 (ros1Ur_msgsRobotStateRTMsg_digital_input_bits value)
  if length (ros1Ur_msgsRobotStateRTMsg_motor_temperatures value) > 6 then Left 22 else Right ()
  prefix14 <- W.encodeCount 6 (length (ros1Ur_msgsRobotStateRTMsg_motor_temperatures value))
  b14 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Ur_msgsRobotStateRTMsg_motor_temperatures value)
  b15 <- W.encodeFloat64 (ros1Ur_msgsRobotStateRTMsg_controller_timer value)
  b16 <- W.encodeFloat64 (ros1Ur_msgsRobotStateRTMsg_test_value value)
  b17 <- W.encodeFloat64 (ros1Ur_msgsRobotStateRTMsg_robot_mode value)
  if length (ros1Ur_msgsRobotStateRTMsg_joint_modes value) > 6 then Left 22 else Right ()
  prefix18 <- W.encodeCount 6 (length (ros1Ur_msgsRobotStateRTMsg_joint_modes value))
  b18 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Ur_msgsRobotStateRTMsg_joint_modes value)
  W.bounded 768
      [ b0
      , prefix1
      , b1
      , prefix2
      , b2
      , prefix3
      , b3
      , prefix4
      , b4
      , prefix5
      , b5
      , prefix6
      , b6
      , prefix7
      , b7
      , prefix8
      , b8
      , prefix9
      , b9
      , prefix10
      , b10
      , prefix11
      , b11
      , prefix12
      , b12
      , b13
      , prefix14
      , b14
      , b15
      , b16
      , b17
      , prefix18
      , b18
      ]
-- | \@brief Read the ordered canonical fields of ur_msgs/RobotStateRTMsg.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_msgsRobotStateRTMsg :: W.Decoder Ros1Ur_msgsRobotStateRTMsg
readRos1Ur_msgsRobotStateRTMsg = do
  a0 <- W.float64
  count1 <- W.count 6
  a1 <- replicateM count1 (W.float64)
  count2 <- W.count 6
  a2 <- replicateM count2 (W.float64)
  count3 <- W.count 6
  a3 <- replicateM count3 (W.float64)
  count4 <- W.count 6
  a4 <- replicateM count4 (W.float64)
  count5 <- W.count 6
  a5 <- replicateM count5 (W.float64)
  count6 <- W.count 6
  a6 <- replicateM count6 (W.float64)
  count7 <- W.count 6
  a7 <- replicateM count7 (W.float64)
  count8 <- W.count 6
  a8 <- replicateM count8 (W.float64)
  count9 <- W.count 6
  a9 <- replicateM count9 (W.float64)
  count10 <- W.count 6
  a10 <- replicateM count10 (W.float64)
  count11 <- W.count 6
  a11 <- replicateM count11 (W.float64)
  count12 <- W.count 6
  a12 <- replicateM count12 (W.float64)
  a13 <- W.float64
  count14 <- W.count 6
  a14 <- replicateM count14 (W.float64)
  a15 <- W.float64
  a16 <- W.float64
  a17 <- W.float64
  count18 <- W.count 6
  a18 <- replicateM count18 (W.float64)
  let value = Ros1Ur_msgsRobotStateRTMsg a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18
  case encodeRos1Ur_msgsRobotStateRTMsg value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_msgs/RobotStateRTMsg value.
-- \@details Require the complete 96..768-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_msgsRobotStateRTMsg :: B.ByteString -> Either Word32 Ros1Ur_msgsRobotStateRTMsg
decodeRos1Ur_msgsRobotStateRTMsg = W.runDecoder 768 readRos1Ur_msgsRobotStateRTMsg
instance Canonical Ros1Ur_msgsRobotStateRTMsg where
  maximumBytes _ = 768
  encodeValue = encodeRos1Ur_msgsRobotStateRTMsg
  readValue = readRos1Ur_msgsRobotStateRTMsg
-- | \@brief Complete ROS 1 ur_msgs/SetAnalogOutputRequest value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies 6..6 bytes and
-- is identified by UWVMROS1_1830a63c8853ebe8842f0e8e6870fbdee136dfe78726ba581fd1c54f910c4789.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_msgsSetAnalogOutputRequest = Ros1Ur_msgsSetAnalogOutputRequest
  {
    -- | \@brief ur_msgs/SetAnalogOutputRequest.data: ur_msgs/Analog.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsSetAnalogOutputRequest_data :: Ros1Ur_msgsAnalog
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_msgs/SetAnalogOutputRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_msgsSetAnalogOutputRequest :: Ros1Ur_msgsSetAnalogOutputRequest
defaultRos1Ur_msgsSetAnalogOutputRequest = Ros1Ur_msgsSetAnalogOutputRequest (defaultRos1Ur_msgsAnalog)
-- | \@brief Canonical codec identity of ur_msgs/SetAnalogOutputRequest.
-- \@details Exact identity UWVMROS1_1830a63c8853ebe8842f0e8e6870fbdee136dfe78726ba581fd1c54f910c4789 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetAnalogOutputRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_msgs/SetAnalogOutputRequest.
-- \@details Exact identity UWVMROS1_1830a63c8853ebe8842f0e8e6870fbdee136dfe78726ba581fd1c54f910c4789 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetAnalogOutputRequestCodecIdentity =
    "UWVMROS1_1830a63c8853ebe8842f0e8e6870fbdee136dfe78726ba581fd1c54f910c4789"
-- | \@brief Encode one complete ur_msgs/SetAnalogOutputRequest value.
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
-- \@see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_msgsSetAnalogOutputRequest :: Ros1Ur_msgsSetAnalogOutputRequest -> Either Word32 B.ByteString
encodeRos1Ur_msgsSetAnalogOutputRequest value = do
  b0 <- encodeRos1Ur_msgsAnalog (ros1Ur_msgsSetAnalogOutputRequest_data value)
  W.bounded 6 [b0]
-- | \@brief Read the ordered canonical fields of ur_msgs/SetAnalogOutputRequest.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_msgsSetAnalogOutputRequest :: W.Decoder Ros1Ur_msgsSetAnalogOutputRequest
readRos1Ur_msgsSetAnalogOutputRequest = do
  a0 <- readRos1Ur_msgsAnalog
  let value = Ros1Ur_msgsSetAnalogOutputRequest a0
  case encodeRos1Ur_msgsSetAnalogOutputRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_msgs/SetAnalogOutputRequest value.
-- \@details Require the complete 6..6-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_msgsSetAnalogOutputRequest :: B.ByteString -> Either Word32 Ros1Ur_msgsSetAnalogOutputRequest
decodeRos1Ur_msgsSetAnalogOutputRequest = W.runDecoder 6 readRos1Ur_msgsSetAnalogOutputRequest
instance Canonical Ros1Ur_msgsSetAnalogOutputRequest where
  maximumBytes _ = 6
  encodeValue = encodeRos1Ur_msgsSetAnalogOutputRequest
  readValue = readRos1Ur_msgsSetAnalogOutputRequest
-- | \@brief Complete ROS 1 ur_msgs/SetAnalogOutputResponse value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and
-- is identified by UWVMROS1_bb84c969f904082699f67d385b093b0c6de97bfacc33eab86932f4564a823580.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_msgsSetAnalogOutputResponse = Ros1Ur_msgsSetAnalogOutputResponse
  {
    -- | \@brief ur_msgs/SetAnalogOutputResponse.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsSetAnalogOutputResponse_success :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_msgs/SetAnalogOutputResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_msgsSetAnalogOutputResponse :: Ros1Ur_msgsSetAnalogOutputResponse
defaultRos1Ur_msgsSetAnalogOutputResponse = Ros1Ur_msgsSetAnalogOutputResponse (False)
-- | \@brief Canonical codec identity of ur_msgs/SetAnalogOutputResponse.
-- \@details Exact identity UWVMROS1_bb84c969f904082699f67d385b093b0c6de97bfacc33eab86932f4564a823580 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetAnalogOutputResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_msgs/SetAnalogOutputResponse.
-- \@details Exact identity UWVMROS1_bb84c969f904082699f67d385b093b0c6de97bfacc33eab86932f4564a823580 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetAnalogOutputResponseCodecIdentity =
    "UWVMROS1_bb84c969f904082699f67d385b093b0c6de97bfacc33eab86932f4564a823580"
-- | \@brief Encode one complete ur_msgs/SetAnalogOutputResponse value.
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
-- \@see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_msgsSetAnalogOutputResponse :: Ros1Ur_msgsSetAnalogOutputResponse -> Either Word32 B.ByteString
encodeRos1Ur_msgsSetAnalogOutputResponse value = do
  b0 <- W.encodeBool (ros1Ur_msgsSetAnalogOutputResponse_success value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of ur_msgs/SetAnalogOutputResponse.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_msgsSetAnalogOutputResponse :: W.Decoder Ros1Ur_msgsSetAnalogOutputResponse
readRos1Ur_msgsSetAnalogOutputResponse = do
  a0 <- W.boolean
  let value = Ros1Ur_msgsSetAnalogOutputResponse a0
  case encodeRos1Ur_msgsSetAnalogOutputResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_msgs/SetAnalogOutputResponse value.
-- \@details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_msgsSetAnalogOutputResponse :: B.ByteString -> Either Word32 Ros1Ur_msgsSetAnalogOutputResponse
decodeRos1Ur_msgsSetAnalogOutputResponse = W.runDecoder 1 readRos1Ur_msgsSetAnalogOutputResponse
instance Canonical Ros1Ur_msgsSetAnalogOutputResponse where
  maximumBytes _ = 1
  encodeValue = encodeRos1Ur_msgsSetAnalogOutputResponse
  readValue = readRos1Ur_msgsSetAnalogOutputResponse
-- | \@brief Complete ROS 1 ur_msgs/SetForceModeRequest value.
-- \@details All 13 declared fields are retained in source order. The canonical representation occupies 207..335
-- bytes and is identified by UWVMROS1_c148d6eb37258e10f5d16e76e41c334fc57a3d751c0c35c47be4cabf4c015a6b.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_msgsSetForceModeRequest = Ros1Ur_msgsSetForceModeRequest
  {
    -- | \@brief ur_msgs/SetForceModeRequest.task_frame: geometry_msgs/PoseStamped.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsSetForceModeRequest_task_frame :: Ros1Geometry_msgsPoseStamped
  ,
    -- | \@brief ur_msgs/SetForceModeRequest.selection_vector_x: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsSetForceModeRequest_selection_vector_x :: Bool
  ,
    -- | \@brief ur_msgs/SetForceModeRequest.selection_vector_y: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsSetForceModeRequest_selection_vector_y :: Bool
  ,
    -- | \@brief ur_msgs/SetForceModeRequest.selection_vector_z: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsSetForceModeRequest_selection_vector_z :: Bool
  ,
    -- | \@brief ur_msgs/SetForceModeRequest.selection_vector_rx: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsSetForceModeRequest_selection_vector_rx :: Bool
  ,
    -- | \@brief ur_msgs/SetForceModeRequest.selection_vector_ry: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsSetForceModeRequest_selection_vector_ry :: Bool
  ,
    -- | \@brief ur_msgs/SetForceModeRequest.selection_vector_rz: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsSetForceModeRequest_selection_vector_rz :: Bool
  ,
    -- | \@brief ur_msgs/SetForceModeRequest.wrench: geometry_msgs/Wrench.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsSetForceModeRequest_wrench :: Ros1Geometry_msgsWrench
  ,
    -- | \@brief ur_msgs/SetForceModeRequest.type: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsSetForceModeRequest_type :: Word8
  ,
    -- | \@brief ur_msgs/SetForceModeRequest.speed_limits: geometry_msgs/Twist.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsSetForceModeRequest_speed_limits :: Ros1Geometry_msgsTwist
  ,
    -- | \@brief ur_msgs/SetForceModeRequest.deviation_limits: float32; exactly 6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsSetForceModeRequest_deviation_limits :: [Float]
  ,
    -- | \@brief ur_msgs/SetForceModeRequest.damping_factor: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsSetForceModeRequest_damping_factor :: Float
  ,
    -- | \@brief ur_msgs/SetForceModeRequest.gain_scaling: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsSetForceModeRequest_gain_scaling :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_msgs/SetForceModeRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_msgsSetForceModeRequest :: Ros1Ur_msgsSetForceModeRequest
defaultRos1Ur_msgsSetForceModeRequest =
    Ros1Ur_msgsSetForceModeRequest
        (defaultRos1Geometry_msgsPoseStamped)
        (False)
        (False)
        (False)
        (False)
        (False)
        (False)
        (defaultRos1Geometry_msgsWrench)
        (0)
        (defaultRos1Geometry_msgsTwist)
        (replicate 6 (0))
        (0)
        (0)
-- | \@brief Canonical codec identity of ur_msgs/SetForceModeRequest.
-- \@details Exact identity UWVMROS1_c148d6eb37258e10f5d16e76e41c334fc57a3d751c0c35c47be4cabf4c015a6b binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetForceModeRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_msgs/SetForceModeRequest.
-- \@details Exact identity UWVMROS1_c148d6eb37258e10f5d16e76e41c334fc57a3d751c0c35c47be4cabf4c015a6b binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetForceModeRequestCodecIdentity =
    "UWVMROS1_c148d6eb37258e10f5d16e76e41c334fc57a3d751c0c35c47be4cabf4c015a6b"
-- | \@brief ur_msgs/SetForceModeRequest.TCP_TO_ORIGIN: original uint8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetForceModeRequest_TCP_TO_ORIGIN :: Word8
-- | \@brief ur_msgs/SetForceModeRequest.TCP_TO_ORIGIN: original uint8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetForceModeRequest_TCP_TO_ORIGIN = 1
-- | \@brief ur_msgs/SetForceModeRequest.NO_TRANSFORM: original uint8 constant.
-- \@details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetForceModeRequest_NO_TRANSFORM :: Word8
-- | \@brief ur_msgs/SetForceModeRequest.NO_TRANSFORM: original uint8 constant.
-- \@details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetForceModeRequest_NO_TRANSFORM = 2
-- | \@brief ur_msgs/SetForceModeRequest.TCP_VELOCITY_TO_X_Y: original uint8 constant.
-- \@details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetForceModeRequest_TCP_VELOCITY_TO_X_Y :: Word8
-- | \@brief ur_msgs/SetForceModeRequest.TCP_VELOCITY_TO_X_Y: original uint8 constant.
-- \@details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetForceModeRequest_TCP_VELOCITY_TO_X_Y = 3
-- | \@brief Encode one complete ur_msgs/SetForceModeRequest value.
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
-- \@see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_msgsSetForceModeRequest :: Ros1Ur_msgsSetForceModeRequest -> Either Word32 B.ByteString
encodeRos1Ur_msgsSetForceModeRequest value = do
  b0 <- encodeRos1Geometry_msgsPoseStamped (ros1Ur_msgsSetForceModeRequest_task_frame value)
  b1 <- W.encodeBool (ros1Ur_msgsSetForceModeRequest_selection_vector_x value)
  b2 <- W.encodeBool (ros1Ur_msgsSetForceModeRequest_selection_vector_y value)
  b3 <- W.encodeBool (ros1Ur_msgsSetForceModeRequest_selection_vector_z value)
  b4 <- W.encodeBool (ros1Ur_msgsSetForceModeRequest_selection_vector_rx value)
  b5 <- W.encodeBool (ros1Ur_msgsSetForceModeRequest_selection_vector_ry value)
  b6 <- W.encodeBool (ros1Ur_msgsSetForceModeRequest_selection_vector_rz value)
  b7 <- encodeRos1Geometry_msgsWrench (ros1Ur_msgsSetForceModeRequest_wrench value)
  b8 <- W.encodeUnsigned 1 (fromIntegral (ros1Ur_msgsSetForceModeRequest_type value))
  b9 <- encodeRos1Geometry_msgsTwist (ros1Ur_msgsSetForceModeRequest_speed_limits value)
  if length (ros1Ur_msgsSetForceModeRequest_deviation_limits value) /= 6 then Left 22 else Right ()
  b10 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros1Ur_msgsSetForceModeRequest_deviation_limits value)
  b11 <- W.encodeFloat32 (ros1Ur_msgsSetForceModeRequest_damping_factor value)
  b12 <- W.encodeFloat32 (ros1Ur_msgsSetForceModeRequest_gain_scaling value)
  W.bounded 335 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12]
-- | \@brief Read the ordered canonical fields of ur_msgs/SetForceModeRequest.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_msgsSetForceModeRequest :: W.Decoder Ros1Ur_msgsSetForceModeRequest
readRos1Ur_msgsSetForceModeRequest = do
  a0 <- readRos1Geometry_msgsPoseStamped
  a1 <- W.boolean
  a2 <- W.boolean
  a3 <- W.boolean
  a4 <- W.boolean
  a5 <- W.boolean
  a6 <- W.boolean
  a7 <- readRos1Geometry_msgsWrench
  a8 <- fromIntegral <$> W.unsigned 1
  a9 <- readRos1Geometry_msgsTwist
  a10 <- replicateM 6 (W.float32)
  a11 <- W.float32
  a12 <- W.float32
  let value = Ros1Ur_msgsSetForceModeRequest a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12
  case encodeRos1Ur_msgsSetForceModeRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_msgs/SetForceModeRequest value.
-- \@details Require the complete 207..335-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_msgsSetForceModeRequest :: B.ByteString -> Either Word32 Ros1Ur_msgsSetForceModeRequest
decodeRos1Ur_msgsSetForceModeRequest = W.runDecoder 335 readRos1Ur_msgsSetForceModeRequest
instance Canonical Ros1Ur_msgsSetForceModeRequest where
  maximumBytes _ = 335
  encodeValue = encodeRos1Ur_msgsSetForceModeRequest
  readValue = readRos1Ur_msgsSetForceModeRequest
-- | \@brief Complete ROS 1 ur_msgs/SetForceModeResponse value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and
-- is identified by UWVMROS1_bb1eeb0b38d81d642066bed1510245423f62d25983a2de89e985d1fd1932308c.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_msgsSetForceModeResponse = Ros1Ur_msgsSetForceModeResponse
  {
    -- | \@brief ur_msgs/SetForceModeResponse.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsSetForceModeResponse_success :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_msgs/SetForceModeResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_msgsSetForceModeResponse :: Ros1Ur_msgsSetForceModeResponse
defaultRos1Ur_msgsSetForceModeResponse = Ros1Ur_msgsSetForceModeResponse (False)
-- | \@brief Canonical codec identity of ur_msgs/SetForceModeResponse.
-- \@details Exact identity UWVMROS1_bb1eeb0b38d81d642066bed1510245423f62d25983a2de89e985d1fd1932308c binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetForceModeResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_msgs/SetForceModeResponse.
-- \@details Exact identity UWVMROS1_bb1eeb0b38d81d642066bed1510245423f62d25983a2de89e985d1fd1932308c binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetForceModeResponseCodecIdentity =
    "UWVMROS1_bb1eeb0b38d81d642066bed1510245423f62d25983a2de89e985d1fd1932308c"
-- | \@brief Encode one complete ur_msgs/SetForceModeResponse value.
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
-- \@see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_msgsSetForceModeResponse :: Ros1Ur_msgsSetForceModeResponse -> Either Word32 B.ByteString
encodeRos1Ur_msgsSetForceModeResponse value = do
  b0 <- W.encodeBool (ros1Ur_msgsSetForceModeResponse_success value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of ur_msgs/SetForceModeResponse.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_msgsSetForceModeResponse :: W.Decoder Ros1Ur_msgsSetForceModeResponse
readRos1Ur_msgsSetForceModeResponse = do
  a0 <- W.boolean
  let value = Ros1Ur_msgsSetForceModeResponse a0
  case encodeRos1Ur_msgsSetForceModeResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_msgs/SetForceModeResponse value.
-- \@details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_msgsSetForceModeResponse :: B.ByteString -> Either Word32 Ros1Ur_msgsSetForceModeResponse
decodeRos1Ur_msgsSetForceModeResponse = W.runDecoder 1 readRos1Ur_msgsSetForceModeResponse
instance Canonical Ros1Ur_msgsSetForceModeResponse where
  maximumBytes _ = 1
  encodeValue = encodeRos1Ur_msgsSetForceModeResponse
  readValue = readRos1Ur_msgsSetForceModeResponse
-- | \@brief Complete ROS 1 ur_msgs/SetIORequest value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies 6..6 bytes and
-- is identified by UWVMROS1_3dbd2f05686ddaac16b37dc8ec98303acb672d176be34fc906cf32f2d4cd1872.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_msgsSetIORequest = Ros1Ur_msgsSetIORequest
  {
    -- | \@brief ur_msgs/SetIORequest.fun: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsSetIORequest_fun :: Int8
  ,
    -- | \@brief ur_msgs/SetIORequest.pin: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsSetIORequest_pin :: Int8
  ,
    -- | \@brief ur_msgs/SetIORequest.state: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsSetIORequest_state :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_msgs/SetIORequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_msgsSetIORequest :: Ros1Ur_msgsSetIORequest
defaultRos1Ur_msgsSetIORequest = Ros1Ur_msgsSetIORequest (0) (0) (0)
-- | \@brief Canonical codec identity of ur_msgs/SetIORequest.
-- \@details Exact identity UWVMROS1_3dbd2f05686ddaac16b37dc8ec98303acb672d176be34fc906cf32f2d4cd1872 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequestCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_msgs/SetIORequest.
-- \@details Exact identity UWVMROS1_3dbd2f05686ddaac16b37dc8ec98303acb672d176be34fc906cf32f2d4cd1872 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequestCodecIdentity = "UWVMROS1_3dbd2f05686ddaac16b37dc8ec98303acb672d176be34fc906cf32f2d4cd1872"
-- | \@brief ur_msgs/SetIORequest.PIN_AOUT0: original int8 constant.
-- \@details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_AOUT0 :: Int8
-- | \@brief ur_msgs/SetIORequest.PIN_AOUT0: original int8 constant.
-- \@details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_AOUT0 = 0
-- | \@brief ur_msgs/SetIORequest.PIN_AOUT1: original int8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_AOUT1 :: Int8
-- | \@brief ur_msgs/SetIORequest.PIN_AOUT1: original int8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_AOUT1 = 1
-- | \@brief ur_msgs/SetIORequest.PIN_DOUT0: original int8 constant.
-- \@details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_DOUT0 :: Int8
-- | \@brief ur_msgs/SetIORequest.PIN_DOUT0: original int8 constant.
-- \@details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_DOUT0 = 0
-- | \@brief ur_msgs/SetIORequest.PIN_DOUT1: original int8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_DOUT1 :: Int8
-- | \@brief ur_msgs/SetIORequest.PIN_DOUT1: original int8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_DOUT1 = 1
-- | \@brief ur_msgs/SetIORequest.PIN_DOUT2: original int8 constant.
-- \@details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_DOUT2 :: Int8
-- | \@brief ur_msgs/SetIORequest.PIN_DOUT2: original int8 constant.
-- \@details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_DOUT2 = 2
-- | \@brief ur_msgs/SetIORequest.PIN_DOUT3: original int8 constant.
-- \@details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_DOUT3 :: Int8
-- | \@brief ur_msgs/SetIORequest.PIN_DOUT3: original int8 constant.
-- \@details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_DOUT3 = 3
-- | \@brief ur_msgs/SetIORequest.PIN_DOUT4: original int8 constant.
-- \@details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_DOUT4 :: Int8
-- | \@brief ur_msgs/SetIORequest.PIN_DOUT4: original int8 constant.
-- \@details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_DOUT4 = 4
-- | \@brief ur_msgs/SetIORequest.PIN_DOUT5: original int8 constant.
-- \@details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_DOUT5 :: Int8
-- | \@brief ur_msgs/SetIORequest.PIN_DOUT5: original int8 constant.
-- \@details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_DOUT5 = 5
-- | \@brief ur_msgs/SetIORequest.PIN_DOUT6: original int8 constant.
-- \@details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_DOUT6 :: Int8
-- | \@brief ur_msgs/SetIORequest.PIN_DOUT6: original int8 constant.
-- \@details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_DOUT6 = 6
-- | \@brief ur_msgs/SetIORequest.PIN_DOUT7: original int8 constant.
-- \@details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_DOUT7 :: Int8
-- | \@brief ur_msgs/SetIORequest.PIN_DOUT7: original int8 constant.
-- \@details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_DOUT7 = 7
-- | \@brief ur_msgs/SetIORequest.PIN_CONF_OUT0: original int8 constant.
-- \@details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_CONF_OUT0 :: Int8
-- | \@brief ur_msgs/SetIORequest.PIN_CONF_OUT0: original int8 constant.
-- \@details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_CONF_OUT0 = 8
-- | \@brief ur_msgs/SetIORequest.PIN_CONF_OUT1: original int8 constant.
-- \@details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_CONF_OUT1 :: Int8
-- | \@brief ur_msgs/SetIORequest.PIN_CONF_OUT1: original int8 constant.
-- \@details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_CONF_OUT1 = 9
-- | \@brief ur_msgs/SetIORequest.PIN_CONF_OUT2: original int8 constant.
-- \@details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_CONF_OUT2 :: Int8
-- | \@brief ur_msgs/SetIORequest.PIN_CONF_OUT2: original int8 constant.
-- \@details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_CONF_OUT2 = 10
-- | \@brief ur_msgs/SetIORequest.PIN_CONF_OUT3: original int8 constant.
-- \@details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_CONF_OUT3 :: Int8
-- | \@brief ur_msgs/SetIORequest.PIN_CONF_OUT3: original int8 constant.
-- \@details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_CONF_OUT3 = 11
-- | \@brief ur_msgs/SetIORequest.PIN_CONF_OUT4: original int8 constant.
-- \@details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_CONF_OUT4 :: Int8
-- | \@brief ur_msgs/SetIORequest.PIN_CONF_OUT4: original int8 constant.
-- \@details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_CONF_OUT4 = 12
-- | \@brief ur_msgs/SetIORequest.PIN_CONF_OUT5: original int8 constant.
-- \@details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_CONF_OUT5 :: Int8
-- | \@brief ur_msgs/SetIORequest.PIN_CONF_OUT5: original int8 constant.
-- \@details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_CONF_OUT5 = 13
-- | \@brief ur_msgs/SetIORequest.PIN_CONF_OUT6: original int8 constant.
-- \@details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_CONF_OUT6 :: Int8
-- | \@brief ur_msgs/SetIORequest.PIN_CONF_OUT6: original int8 constant.
-- \@details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_CONF_OUT6 = 14
-- | \@brief ur_msgs/SetIORequest.PIN_CONF_OUT7: original int8 constant.
-- \@details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_CONF_OUT7 :: Int8
-- | \@brief ur_msgs/SetIORequest.PIN_CONF_OUT7: original int8 constant.
-- \@details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_CONF_OUT7 = 15
-- | \@brief ur_msgs/SetIORequest.PIN_TOOL_DOUT0: original int8 constant.
-- \@details Exact admitted value 16. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_TOOL_DOUT0 :: Int8
-- | \@brief ur_msgs/SetIORequest.PIN_TOOL_DOUT0: original int8 constant.
-- \@details Exact admitted value 16. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_TOOL_DOUT0 = 16
-- | \@brief ur_msgs/SetIORequest.PIN_TOOL_DOUT1: original int8 constant.
-- \@details Exact admitted value 17. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_TOOL_DOUT1 :: Int8
-- | \@brief ur_msgs/SetIORequest.PIN_TOOL_DOUT1: original int8 constant.
-- \@details Exact admitted value 17. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_PIN_TOOL_DOUT1 = 17
-- | \@brief ur_msgs/SetIORequest.FUN_SET_DIGITAL_OUT: original int8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_FUN_SET_DIGITAL_OUT :: Int8
-- | \@brief ur_msgs/SetIORequest.FUN_SET_DIGITAL_OUT: original int8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_FUN_SET_DIGITAL_OUT = 1
-- | \@brief ur_msgs/SetIORequest.FUN_SET_FLAG: original int8 constant.
-- \@details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_FUN_SET_FLAG :: Int8
-- | \@brief ur_msgs/SetIORequest.FUN_SET_FLAG: original int8 constant.
-- \@details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_FUN_SET_FLAG = 2
-- | \@brief ur_msgs/SetIORequest.FUN_SET_ANALOG_OUT: original int8 constant.
-- \@details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_FUN_SET_ANALOG_OUT :: Int8
-- | \@brief ur_msgs/SetIORequest.FUN_SET_ANALOG_OUT: original int8 constant.
-- \@details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_FUN_SET_ANALOG_OUT = 3
-- | \@brief ur_msgs/SetIORequest.FUN_SET_TOOL_VOLTAGE: original int8 constant.
-- \@details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_FUN_SET_TOOL_VOLTAGE :: Int8
-- | \@brief ur_msgs/SetIORequest.FUN_SET_TOOL_VOLTAGE: original int8 constant.
-- \@details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_FUN_SET_TOOL_VOLTAGE = 4
-- | \@brief ur_msgs/SetIORequest.STATE_OFF: original int8 constant.
-- \@details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_STATE_OFF :: Int8
-- | \@brief ur_msgs/SetIORequest.STATE_OFF: original int8 constant.
-- \@details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_STATE_OFF = 0
-- | \@brief ur_msgs/SetIORequest.STATE_ON: original int8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_STATE_ON :: Int8
-- | \@brief ur_msgs/SetIORequest.STATE_ON: original int8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_STATE_ON = 1
-- | \@brief ur_msgs/SetIORequest.STATE_TOOL_VOLTAGE_0V: original int8 constant.
-- \@details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_STATE_TOOL_VOLTAGE_0V :: Int8
-- | \@brief ur_msgs/SetIORequest.STATE_TOOL_VOLTAGE_0V: original int8 constant.
-- \@details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_STATE_TOOL_VOLTAGE_0V = 0
-- | \@brief ur_msgs/SetIORequest.STATE_TOOL_VOLTAGE_12V: original int8 constant.
-- \@details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_STATE_TOOL_VOLTAGE_12V :: Int8
-- | \@brief ur_msgs/SetIORequest.STATE_TOOL_VOLTAGE_12V: original int8 constant.
-- \@details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_STATE_TOOL_VOLTAGE_12V = 12
-- | \@brief ur_msgs/SetIORequest.STATE_TOOL_VOLTAGE_24V: original int8 constant.
-- \@details Exact admitted value 24. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_STATE_TOOL_VOLTAGE_24V :: Int8
-- | \@brief ur_msgs/SetIORequest.STATE_TOOL_VOLTAGE_24V: original int8 constant.
-- \@details Exact admitted value 24. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIORequest_STATE_TOOL_VOLTAGE_24V = 24
-- | \@brief Encode one complete ur_msgs/SetIORequest value.
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
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_msgsSetIORequest :: Ros1Ur_msgsSetIORequest -> Either Word32 B.ByteString
encodeRos1Ur_msgsSetIORequest value = do
  b0 <- W.encodeSigned 1 (fromIntegral (ros1Ur_msgsSetIORequest_fun value))
  b1 <- W.encodeSigned 1 (fromIntegral (ros1Ur_msgsSetIORequest_pin value))
  b2 <- W.encodeFloat32 (ros1Ur_msgsSetIORequest_state value)
  W.bounded 6 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of ur_msgs/SetIORequest.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_msgsSetIORequest :: W.Decoder Ros1Ur_msgsSetIORequest
readRos1Ur_msgsSetIORequest = do
  a0 <- fromIntegral <$> W.signed 1
  a1 <- fromIntegral <$> W.signed 1
  a2 <- W.float32
  let value = Ros1Ur_msgsSetIORequest a0 a1 a2
  case encodeRos1Ur_msgsSetIORequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_msgs/SetIORequest value.
-- \@details Require the complete 6..6-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsSetIORequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_msgsSetIORequest :: B.ByteString -> Either Word32 Ros1Ur_msgsSetIORequest
decodeRos1Ur_msgsSetIORequest = W.runDecoder 6 readRos1Ur_msgsSetIORequest
instance Canonical Ros1Ur_msgsSetIORequest where
  maximumBytes _ = 6
  encodeValue = encodeRos1Ur_msgsSetIORequest
  readValue = readRos1Ur_msgsSetIORequest
-- | \@brief Complete ROS 1 ur_msgs/SetIOResponse value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and
-- is identified by UWVMROS1_7fc137aa3db3178a450b8b2396b7821c911c79656e52bf48814745c261aecf61.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_msgsSetIOResponse = Ros1Ur_msgsSetIOResponse
  {
    -- | \@brief ur_msgs/SetIOResponse.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsSetIOResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsSetIOResponse_success :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_msgs/SetIOResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsSetIOResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_msgsSetIOResponse :: Ros1Ur_msgsSetIOResponse
defaultRos1Ur_msgsSetIOResponse = Ros1Ur_msgsSetIOResponse (False)
-- | \@brief Canonical codec identity of ur_msgs/SetIOResponse.
-- \@details Exact identity UWVMROS1_7fc137aa3db3178a450b8b2396b7821c911c79656e52bf48814745c261aecf61 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsSetIOResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIOResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_msgs/SetIOResponse.
-- \@details Exact identity UWVMROS1_7fc137aa3db3178a450b8b2396b7821c911c79656e52bf48814745c261aecf61 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsSetIOResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetIOResponseCodecIdentity = "UWVMROS1_7fc137aa3db3178a450b8b2396b7821c911c79656e52bf48814745c261aecf61"
-- | \@brief Encode one complete ur_msgs/SetIOResponse value.
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
-- \@see Ros1Ur_msgsSetIOResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_msgsSetIOResponse :: Ros1Ur_msgsSetIOResponse -> Either Word32 B.ByteString
encodeRos1Ur_msgsSetIOResponse value = do
  b0 <- W.encodeBool (ros1Ur_msgsSetIOResponse_success value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of ur_msgs/SetIOResponse.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsSetIOResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_msgsSetIOResponse :: W.Decoder Ros1Ur_msgsSetIOResponse
readRos1Ur_msgsSetIOResponse = do
  a0 <- W.boolean
  let value = Ros1Ur_msgsSetIOResponse a0
  case encodeRos1Ur_msgsSetIOResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_msgs/SetIOResponse value.
-- \@details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsSetIOResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_msgsSetIOResponse :: B.ByteString -> Either Word32 Ros1Ur_msgsSetIOResponse
decodeRos1Ur_msgsSetIOResponse = W.runDecoder 1 readRos1Ur_msgsSetIOResponse
instance Canonical Ros1Ur_msgsSetIOResponse where
  maximumBytes _ = 1
  encodeValue = encodeRos1Ur_msgsSetIOResponse
  readValue = readRos1Ur_msgsSetIOResponse
-- | \@brief Complete ROS 1 ur_msgs/SetPayloadRequest value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies 28..28 bytes
-- and is identified by UWVMROS1_63ae68b44ce6aaad37cbda779fb51dee78923df27c582b4aab4104b16a307ee3.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_msgsSetPayloadRequest = Ros1Ur_msgsSetPayloadRequest
  {
    -- | \@brief ur_msgs/SetPayloadRequest.mass: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsSetPayloadRequest_mass :: Float
  ,
    -- | \@brief ur_msgs/SetPayloadRequest.center_of_gravity: geometry_msgs/Vector3.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsSetPayloadRequest_center_of_gravity :: Ros1Geometry_msgsVector3
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_msgs/SetPayloadRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_msgsSetPayloadRequest :: Ros1Ur_msgsSetPayloadRequest
defaultRos1Ur_msgsSetPayloadRequest = Ros1Ur_msgsSetPayloadRequest (0) (defaultRos1Geometry_msgsVector3)
-- | \@brief Canonical codec identity of ur_msgs/SetPayloadRequest.
-- \@details Exact identity UWVMROS1_63ae68b44ce6aaad37cbda779fb51dee78923df27c582b4aab4104b16a307ee3 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetPayloadRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_msgs/SetPayloadRequest.
-- \@details Exact identity UWVMROS1_63ae68b44ce6aaad37cbda779fb51dee78923df27c582b4aab4104b16a307ee3 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetPayloadRequestCodecIdentity = "UWVMROS1_63ae68b44ce6aaad37cbda779fb51dee78923df27c582b4aab4104b16a307ee3"
-- | \@brief Encode one complete ur_msgs/SetPayloadRequest value.
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
-- \@see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_msgsSetPayloadRequest :: Ros1Ur_msgsSetPayloadRequest -> Either Word32 B.ByteString
encodeRos1Ur_msgsSetPayloadRequest value = do
  b0 <- W.encodeFloat32 (ros1Ur_msgsSetPayloadRequest_mass value)
  b1 <- encodeRos1Geometry_msgsVector3 (ros1Ur_msgsSetPayloadRequest_center_of_gravity value)
  W.bounded 28 [b0, b1]
-- | \@brief Read the ordered canonical fields of ur_msgs/SetPayloadRequest.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_msgsSetPayloadRequest :: W.Decoder Ros1Ur_msgsSetPayloadRequest
readRos1Ur_msgsSetPayloadRequest = do
  a0 <- W.float32
  a1 <- readRos1Geometry_msgsVector3
  let value = Ros1Ur_msgsSetPayloadRequest a0 a1
  case encodeRos1Ur_msgsSetPayloadRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_msgs/SetPayloadRequest value.
-- \@details Require the complete 28..28-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_msgsSetPayloadRequest :: B.ByteString -> Either Word32 Ros1Ur_msgsSetPayloadRequest
decodeRos1Ur_msgsSetPayloadRequest = W.runDecoder 28 readRos1Ur_msgsSetPayloadRequest
instance Canonical Ros1Ur_msgsSetPayloadRequest where
  maximumBytes _ = 28
  encodeValue = encodeRos1Ur_msgsSetPayloadRequest
  readValue = readRos1Ur_msgsSetPayloadRequest
-- | \@brief Complete ROS 1 ur_msgs/SetPayloadResponse value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and
-- is identified by UWVMROS1_a3e991f1357f2d3017ccbb7636a6248e8774434d723f5f6c77ff251dd61fce73.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_msgsSetPayloadResponse = Ros1Ur_msgsSetPayloadResponse
  {
    -- | \@brief ur_msgs/SetPayloadResponse.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsSetPayloadResponse_success :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_msgs/SetPayloadResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_msgsSetPayloadResponse :: Ros1Ur_msgsSetPayloadResponse
defaultRos1Ur_msgsSetPayloadResponse = Ros1Ur_msgsSetPayloadResponse (False)
-- | \@brief Canonical codec identity of ur_msgs/SetPayloadResponse.
-- \@details Exact identity UWVMROS1_a3e991f1357f2d3017ccbb7636a6248e8774434d723f5f6c77ff251dd61fce73 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetPayloadResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_msgs/SetPayloadResponse.
-- \@details Exact identity UWVMROS1_a3e991f1357f2d3017ccbb7636a6248e8774434d723f5f6c77ff251dd61fce73 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetPayloadResponseCodecIdentity = "UWVMROS1_a3e991f1357f2d3017ccbb7636a6248e8774434d723f5f6c77ff251dd61fce73"
-- | \@brief Encode one complete ur_msgs/SetPayloadResponse value.
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
-- \@see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_msgsSetPayloadResponse :: Ros1Ur_msgsSetPayloadResponse -> Either Word32 B.ByteString
encodeRos1Ur_msgsSetPayloadResponse value = do
  b0 <- W.encodeBool (ros1Ur_msgsSetPayloadResponse_success value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of ur_msgs/SetPayloadResponse.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_msgsSetPayloadResponse :: W.Decoder Ros1Ur_msgsSetPayloadResponse
readRos1Ur_msgsSetPayloadResponse = do
  a0 <- W.boolean
  let value = Ros1Ur_msgsSetPayloadResponse a0
  case encodeRos1Ur_msgsSetPayloadResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_msgs/SetPayloadResponse value.
-- \@details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_msgsSetPayloadResponse :: B.ByteString -> Either Word32 Ros1Ur_msgsSetPayloadResponse
decodeRos1Ur_msgsSetPayloadResponse = W.runDecoder 1 readRos1Ur_msgsSetPayloadResponse
instance Canonical Ros1Ur_msgsSetPayloadResponse where
  maximumBytes _ = 1
  encodeValue = encodeRos1Ur_msgsSetPayloadResponse
  readValue = readRos1Ur_msgsSetPayloadResponse
-- | \@brief Complete ROS 1 ur_msgs/SetSpeedSliderFractionRequest value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
-- is identified by UWVMROS1_f192d6d655b2ed7725bf5afe6977a352870abfd4d07e0c3380a09d280a0a0a32.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_msgsSetSpeedSliderFractionRequest = Ros1Ur_msgsSetSpeedSliderFractionRequest
  {
    -- | \@brief ur_msgs/SetSpeedSliderFractionRequest.speed_slider_fraction: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsSetSpeedSliderFractionRequest_speed_slider_fraction :: Double
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_msgs/SetSpeedSliderFractionRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_msgsSetSpeedSliderFractionRequest :: Ros1Ur_msgsSetSpeedSliderFractionRequest
defaultRos1Ur_msgsSetSpeedSliderFractionRequest = Ros1Ur_msgsSetSpeedSliderFractionRequest (0)
-- | \@brief Canonical codec identity of ur_msgs/SetSpeedSliderFractionRequest.
-- \@details Exact identity UWVMROS1_f192d6d655b2ed7725bf5afe6977a352870abfd4d07e0c3380a09d280a0a0a32 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetSpeedSliderFractionRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_msgs/SetSpeedSliderFractionRequest.
-- \@details Exact identity UWVMROS1_f192d6d655b2ed7725bf5afe6977a352870abfd4d07e0c3380a09d280a0a0a32 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetSpeedSliderFractionRequestCodecIdentity =
    "UWVMROS1_f192d6d655b2ed7725bf5afe6977a352870abfd4d07e0c3380a09d280a0a0a32"
-- | \@brief Encode one complete ur_msgs/SetSpeedSliderFractionRequest value.
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
-- \@see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_msgsSetSpeedSliderFractionRequest :: Ros1Ur_msgsSetSpeedSliderFractionRequest -> Either Word32 B.ByteString
encodeRos1Ur_msgsSetSpeedSliderFractionRequest value = do
  b0 <- W.encodeFloat64 (ros1Ur_msgsSetSpeedSliderFractionRequest_speed_slider_fraction value)
  W.bounded 8 [b0]
-- | \@brief Read the ordered canonical fields of ur_msgs/SetSpeedSliderFractionRequest.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_msgsSetSpeedSliderFractionRequest :: W.Decoder Ros1Ur_msgsSetSpeedSliderFractionRequest
readRos1Ur_msgsSetSpeedSliderFractionRequest = do
  a0 <- W.float64
  let value = Ros1Ur_msgsSetSpeedSliderFractionRequest a0
  case encodeRos1Ur_msgsSetSpeedSliderFractionRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_msgs/SetSpeedSliderFractionRequest value.
-- \@details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_msgsSetSpeedSliderFractionRequest :: B.ByteString -> Either Word32 Ros1Ur_msgsSetSpeedSliderFractionRequest
decodeRos1Ur_msgsSetSpeedSliderFractionRequest = W.runDecoder 8 readRos1Ur_msgsSetSpeedSliderFractionRequest
instance Canonical Ros1Ur_msgsSetSpeedSliderFractionRequest where
  maximumBytes _ = 8
  encodeValue = encodeRos1Ur_msgsSetSpeedSliderFractionRequest
  readValue = readRos1Ur_msgsSetSpeedSliderFractionRequest
-- | \@brief Complete ROS 1 ur_msgs/SetSpeedSliderFractionResponse value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and
-- is identified by UWVMROS1_cb08c6758ce2eeeac93bc579d7895b19b84e74b7e2d19d87831023df579288b0.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_msgsSetSpeedSliderFractionResponse = Ros1Ur_msgsSetSpeedSliderFractionResponse
  {
    -- | \@brief ur_msgs/SetSpeedSliderFractionResponse.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsSetSpeedSliderFractionResponse_success :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_msgs/SetSpeedSliderFractionResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_msgsSetSpeedSliderFractionResponse :: Ros1Ur_msgsSetSpeedSliderFractionResponse
defaultRos1Ur_msgsSetSpeedSliderFractionResponse = Ros1Ur_msgsSetSpeedSliderFractionResponse (False)
-- | \@brief Canonical codec identity of ur_msgs/SetSpeedSliderFractionResponse.
-- \@details Exact identity UWVMROS1_cb08c6758ce2eeeac93bc579d7895b19b84e74b7e2d19d87831023df579288b0 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetSpeedSliderFractionResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_msgs/SetSpeedSliderFractionResponse.
-- \@details Exact identity UWVMROS1_cb08c6758ce2eeeac93bc579d7895b19b84e74b7e2d19d87831023df579288b0 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsSetSpeedSliderFractionResponseCodecIdentity =
    "UWVMROS1_cb08c6758ce2eeeac93bc579d7895b19b84e74b7e2d19d87831023df579288b0"
-- | \@brief Encode one complete ur_msgs/SetSpeedSliderFractionResponse value.
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
-- \@see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_msgsSetSpeedSliderFractionResponse :: Ros1Ur_msgsSetSpeedSliderFractionResponse -> Either Word32 B.ByteString
encodeRos1Ur_msgsSetSpeedSliderFractionResponse value = do
  b0 <- W.encodeBool (ros1Ur_msgsSetSpeedSliderFractionResponse_success value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of ur_msgs/SetSpeedSliderFractionResponse.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_msgsSetSpeedSliderFractionResponse :: W.Decoder Ros1Ur_msgsSetSpeedSliderFractionResponse
readRos1Ur_msgsSetSpeedSliderFractionResponse = do
  a0 <- W.boolean
  let value = Ros1Ur_msgsSetSpeedSliderFractionResponse a0
  case encodeRos1Ur_msgsSetSpeedSliderFractionResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_msgs/SetSpeedSliderFractionResponse value.
-- \@details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and trailing
-- bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_msgsSetSpeedSliderFractionResponse :: B.ByteString -> Either Word32 Ros1Ur_msgsSetSpeedSliderFractionResponse
decodeRos1Ur_msgsSetSpeedSliderFractionResponse = W.runDecoder 1 readRos1Ur_msgsSetSpeedSliderFractionResponse
instance Canonical Ros1Ur_msgsSetSpeedSliderFractionResponse where
  maximumBytes _ = 1
  encodeValue = encodeRos1Ur_msgsSetSpeedSliderFractionResponse
  readValue = readRos1Ur_msgsSetSpeedSliderFractionResponse
-- | \@brief Complete ROS 1 ur_msgs/ToolDataMsg value.
-- \@details All 9 declared fields are retained in source order. The canonical representation occupies 32..32 bytes
-- and is identified by UWVMROS1_1fad1aba069bc474306dc421a62950ffeb3a0837668f08a9adf41ac1bc2bb390.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
-- subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
-- readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Ur_msgsToolDataMsg = Ros1Ur_msgsToolDataMsg
  {
    -- | \@brief ur_msgs/ToolDataMsg.analog_input_range2: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsToolDataMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsToolDataMsg_analog_input_range2 :: Int8
  ,
    -- | \@brief ur_msgs/ToolDataMsg.analog_input_range3: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsToolDataMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsToolDataMsg_analog_input_range3 :: Int8
  ,
    -- | \@brief ur_msgs/ToolDataMsg.analog_input2: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsToolDataMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsToolDataMsg_analog_input2 :: Double
  ,
    -- | \@brief ur_msgs/ToolDataMsg.analog_input3: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsToolDataMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsToolDataMsg_analog_input3 :: Double
  ,
    -- | \@brief ur_msgs/ToolDataMsg.tool_voltage_48v: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsToolDataMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsToolDataMsg_tool_voltage_48v :: Float
  ,
    -- | \@brief ur_msgs/ToolDataMsg.tool_output_voltage: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsToolDataMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsToolDataMsg_tool_output_voltage :: Word8
  ,
    -- | \@brief ur_msgs/ToolDataMsg.tool_current: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsToolDataMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsToolDataMsg_tool_current :: Float
  ,
    -- | \@brief ur_msgs/ToolDataMsg.tool_temperature: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsToolDataMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsToolDataMsg_tool_temperature :: Float
  ,
    -- | \@brief ur_msgs/ToolDataMsg.tool_mode: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Ur_msgsToolDataMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Ur_msgsToolDataMsg_tool_mode :: Word8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of ur_msgs/ToolDataMsg.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
-- string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsToolDataMsg; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Ur_msgsToolDataMsg :: Ros1Ur_msgsToolDataMsg
defaultRos1Ur_msgsToolDataMsg = Ros1Ur_msgsToolDataMsg (0) (0) (0) (0) (0) (0) (0) (0) (0)
-- | \@brief Canonical codec identity of ur_msgs/ToolDataMsg.
-- \@details Exact identity UWVMROS1_1fad1aba069bc474306dc421a62950ffeb3a0837668f08a9adf41ac1bc2bb390 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsToolDataMsg; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsToolDataMsgCodecIdentity :: String
-- | \@brief Canonical codec identity of ur_msgs/ToolDataMsg.
-- \@details Exact identity UWVMROS1_1fad1aba069bc474306dc421a62950ffeb3a0837668f08a9adf41ac1bc2bb390 binds field
-- order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Ur_msgsToolDataMsg; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsToolDataMsgCodecIdentity = "UWVMROS1_1fad1aba069bc474306dc421a62950ffeb3a0837668f08a9adf41ac1bc2bb390"
-- | \@brief ur_msgs/ToolDataMsg.ANALOG_INPUT_RANGE_CURRENT: original int8 constant.
-- \@details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsToolDataMsg; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsToolDataMsg_ANALOG_INPUT_RANGE_CURRENT :: Int8
-- | \@brief ur_msgs/ToolDataMsg.ANALOG_INPUT_RANGE_CURRENT: original int8 constant.
-- \@details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsToolDataMsg; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsToolDataMsg_ANALOG_INPUT_RANGE_CURRENT = 0
-- | \@brief ur_msgs/ToolDataMsg.ANALOG_INPUT_RANGE_VOLTAGE: original int8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsToolDataMsg; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsToolDataMsg_ANALOG_INPUT_RANGE_VOLTAGE :: Int8
-- | \@brief ur_msgs/ToolDataMsg.ANALOG_INPUT_RANGE_VOLTAGE: original int8 constant.
-- \@details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsToolDataMsg; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsToolDataMsg_ANALOG_INPUT_RANGE_VOLTAGE = 1
-- | \@brief ur_msgs/ToolDataMsg.TOOL_BOOTLOADER_MODE: original uint8 constant.
-- \@details Exact admitted value 249. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsToolDataMsg; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsToolDataMsg_TOOL_BOOTLOADER_MODE :: Word8
-- | \@brief ur_msgs/ToolDataMsg.TOOL_BOOTLOADER_MODE: original uint8 constant.
-- \@details Exact admitted value 249. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsToolDataMsg; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsToolDataMsg_TOOL_BOOTLOADER_MODE = 249
-- | \@brief ur_msgs/ToolDataMsg.TOOL_RUNNING_MODE: original uint8 constant.
-- \@details Exact admitted value 253. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsToolDataMsg; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsToolDataMsg_TOOL_RUNNING_MODE :: Word8
-- | \@brief ur_msgs/ToolDataMsg.TOOL_RUNNING_MODE: original uint8 constant.
-- \@details Exact admitted value 253. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsToolDataMsg; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsToolDataMsg_TOOL_RUNNING_MODE = 253
-- | \@brief ur_msgs/ToolDataMsg.TOOL_IDLE_MODE: original uint8 constant.
-- \@details Exact admitted value 255. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsToolDataMsg; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsToolDataMsg_TOOL_IDLE_MODE :: Word8
-- | \@brief ur_msgs/ToolDataMsg.TOOL_IDLE_MODE: original uint8 constant.
-- \@details Exact admitted value 255. This constant occupies no field bytes and is not an authority or operation
-- selector.
-- \@see Ros1Ur_msgsToolDataMsg; share/platform/ros/haskell/API-CONTRACT.md
ros1Ur_msgsToolDataMsg_TOOL_IDLE_MODE = 255
-- | \@brief Encode one complete ur_msgs/ToolDataMsg value.
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
-- \@see Ros1Ur_msgsToolDataMsg; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Ur_msgsToolDataMsg :: Ros1Ur_msgsToolDataMsg -> Either Word32 B.ByteString
encodeRos1Ur_msgsToolDataMsg value = do
  b0 <- W.encodeSigned 1 (fromIntegral (ros1Ur_msgsToolDataMsg_analog_input_range2 value))
  b1 <- W.encodeSigned 1 (fromIntegral (ros1Ur_msgsToolDataMsg_analog_input_range3 value))
  b2 <- W.encodeFloat64 (ros1Ur_msgsToolDataMsg_analog_input2 value)
  b3 <- W.encodeFloat64 (ros1Ur_msgsToolDataMsg_analog_input3 value)
  b4 <- W.encodeFloat32 (ros1Ur_msgsToolDataMsg_tool_voltage_48v value)
  b5 <- W.encodeUnsigned 1 (fromIntegral (ros1Ur_msgsToolDataMsg_tool_output_voltage value))
  b6 <- W.encodeFloat32 (ros1Ur_msgsToolDataMsg_tool_current value)
  b7 <- W.encodeFloat32 (ros1Ur_msgsToolDataMsg_tool_temperature value)
  b8 <- W.encodeUnsigned 1 (fromIntegral (ros1Ur_msgsToolDataMsg_tool_mode value))
  W.bounded 32 [b0, b1, b2, b3, b4, b5, b6, b7, b8]
-- | \@brief Read the ordered canonical fields of ur_msgs/ToolDataMsg.
-- \@details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
-- subsequent enclosing fields unread; discard partial values on any failure.
-- \@return A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsToolDataMsg; share/platform/ros/haskell/API-CONTRACT.md
readRos1Ur_msgsToolDataMsg :: W.Decoder Ros1Ur_msgsToolDataMsg
readRos1Ur_msgsToolDataMsg = do
  a0 <- fromIntegral <$> W.signed 1
  a1 <- fromIntegral <$> W.signed 1
  a2 <- W.float64
  a3 <- W.float64
  a4 <- W.float32
  a5 <- fromIntegral <$> W.unsigned 1
  a6 <- W.float32
  a7 <- W.float32
  a8 <- fromIntegral <$> W.unsigned 1
  let value = Ros1Ur_msgsToolDataMsg a0 a1 a2 a3 a4 a5 a6 a7 a8
  case encodeRos1Ur_msgsToolDataMsg value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete ur_msgs/ToolDataMsg value.
-- \@details Require the complete 32..32-byte canonical representation. Reject truncation, invalid fields and
-- trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
-- out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
-- not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
-- synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Ur_msgsToolDataMsg; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Ur_msgsToolDataMsg :: B.ByteString -> Either Word32 Ros1Ur_msgsToolDataMsg
decodeRos1Ur_msgsToolDataMsg = W.runDecoder 32 readRos1Ur_msgsToolDataMsg
instance Canonical Ros1Ur_msgsToolDataMsg where
  maximumBytes _ = 32
  encodeValue = encodeRos1Ur_msgsToolDataMsg
  readValue = readRos1Ur_msgsToolDataMsg
