-- | @file records.hs
-- | @brief Preserve the complete original elephant/kinetic canonical value domain.
-- | @details The selected domain contains 36 complete record/components and 116 original fields. Declared
-- | scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
-- | Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
-- | create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
-- | does not qualify a frontend, target ABI or native ROS transport.
-- | @see The platform's localized language guide and complete API-CATALOG.md.
-- Generated complete canonical values; all field selectors are record-qualified.
module Elephant.Kinetic.Records where
import Data.Int
import Data.Word
import qualified Data.ByteString as B
import qualified Data.Text as T
import GHC.Float
import Control.Monad (replicateM)
import qualified RosWasm.Wire as W
import RosWasm.Typed (Canonical(..))
-- | \@brief Complete ROS 1 mycobot_communication/MycobotAngles value.
-- \@details All 6 declared fields are retained in source order. The canonical representation occupies
-- 24..24 bytes and is identified by
-- UWVMROS1_4cbda93a13d78e9c592327caa737dfecf33adf6db898015afd56ecf7732f9aa6.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Mycobot_communicationMycobotAngles = Ros1Mycobot_communicationMycobotAngles
  {
    -- | \@brief mycobot_communication/MycobotAngles.joint_1: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationMycobotAngles_joint_1 :: Float
  ,
    -- | \@brief mycobot_communication/MycobotAngles.joint_2: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationMycobotAngles_joint_2 :: Float
  ,
    -- | \@brief mycobot_communication/MycobotAngles.joint_3: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationMycobotAngles_joint_3 :: Float
  ,
    -- | \@brief mycobot_communication/MycobotAngles.joint_4: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationMycobotAngles_joint_4 :: Float
  ,
    -- | \@brief mycobot_communication/MycobotAngles.joint_5: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationMycobotAngles_joint_5 :: Float
  ,
    -- | \@brief mycobot_communication/MycobotAngles.joint_6: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationMycobotAngles_joint_6 :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_communication/MycobotAngles.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Mycobot_communicationMycobotAngles :: Ros1Mycobot_communicationMycobotAngles
defaultRos1Mycobot_communicationMycobotAngles = Ros1Mycobot_communicationMycobotAngles (0) (0) (0) (0) (0) (0)
-- | \@brief Canonical codec identity of mycobot_communication/MycobotAngles.
-- \@details Exact identity UWVMROS1_4cbda93a13d78e9c592327caa737dfecf33adf6db898015afd56ecf7732f9aa6
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/haskell/API-CONTRACT.md
ros1Mycobot_communicationMycobotAnglesCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_communication/MycobotAngles.
-- \@details Exact identity UWVMROS1_4cbda93a13d78e9c592327caa737dfecf33adf6db898015afd56ecf7732f9aa6
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/haskell/API-CONTRACT.md
ros1Mycobot_communicationMycobotAnglesCodecIdentity = "UWVMROS1_4cbda93a13d78e9c592327caa737dfecf33adf6db898015afd56ecf7732f9aa6"
-- | \@brief Encode one complete mycobot_communication/MycobotAngles value.
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
-- \@see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Mycobot_communicationMycobotAngles :: Ros1Mycobot_communicationMycobotAngles -> Either Word32 B.ByteString
encodeRos1Mycobot_communicationMycobotAngles value = do
  b0 <- W.encodeFloat32 (ros1Mycobot_communicationMycobotAngles_joint_1 value)
  b1 <- W.encodeFloat32 (ros1Mycobot_communicationMycobotAngles_joint_2 value)
  b2 <- W.encodeFloat32 (ros1Mycobot_communicationMycobotAngles_joint_3 value)
  b3 <- W.encodeFloat32 (ros1Mycobot_communicationMycobotAngles_joint_4 value)
  b4 <- W.encodeFloat32 (ros1Mycobot_communicationMycobotAngles_joint_5 value)
  b5 <- W.encodeFloat32 (ros1Mycobot_communicationMycobotAngles_joint_6 value)
  W.bounded 24 [b0, b1, b2, b3, b4, b5]
-- | \@brief Read the ordered canonical fields of mycobot_communication/MycobotAngles.
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
-- \@see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/haskell/API-CONTRACT.md
readRos1Mycobot_communicationMycobotAngles :: W.Decoder Ros1Mycobot_communicationMycobotAngles
readRos1Mycobot_communicationMycobotAngles = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  let value = Ros1Mycobot_communicationMycobotAngles a0 a1 a2 a3 a4 a5
  case encodeRos1Mycobot_communicationMycobotAngles value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_communication/MycobotAngles value.
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
-- \@see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Mycobot_communicationMycobotAngles :: B.ByteString -> Either Word32 Ros1Mycobot_communicationMycobotAngles
decodeRos1Mycobot_communicationMycobotAngles = W.runDecoder 24 readRos1Mycobot_communicationMycobotAngles
instance Canonical Ros1Mycobot_communicationMycobotAngles where
  maximumBytes _ = 24
  encodeValue = encodeRos1Mycobot_communicationMycobotAngles
  readValue = readRos1Mycobot_communicationMycobotAngles
-- | \@brief Complete ROS 1 mycobot_communication/MycobotCoords value.
-- \@details All 6 declared fields are retained in source order. The canonical representation occupies
-- 24..24 bytes and is identified by
-- UWVMROS1_1da0d6342a1f4079244a65ad413d4559047d33b049ce9da04f8ab0bd226410a2.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Mycobot_communicationMycobotCoords = Ros1Mycobot_communicationMycobotCoords
  {
    -- | \@brief mycobot_communication/MycobotCoords.x: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationMycobotCoords_x :: Float
  ,
    -- | \@brief mycobot_communication/MycobotCoords.y: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationMycobotCoords_y :: Float
  ,
    -- | \@brief mycobot_communication/MycobotCoords.z: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationMycobotCoords_z :: Float
  ,
    -- | \@brief mycobot_communication/MycobotCoords.rx: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationMycobotCoords_rx :: Float
  ,
    -- | \@brief mycobot_communication/MycobotCoords.ry: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationMycobotCoords_ry :: Float
  ,
    -- | \@brief mycobot_communication/MycobotCoords.rz: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationMycobotCoords_rz :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_communication/MycobotCoords.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Mycobot_communicationMycobotCoords :: Ros1Mycobot_communicationMycobotCoords
defaultRos1Mycobot_communicationMycobotCoords = Ros1Mycobot_communicationMycobotCoords (0) (0) (0) (0) (0) (0)
-- | \@brief Canonical codec identity of mycobot_communication/MycobotCoords.
-- \@details Exact identity UWVMROS1_1da0d6342a1f4079244a65ad413d4559047d33b049ce9da04f8ab0bd226410a2
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/haskell/API-CONTRACT.md
ros1Mycobot_communicationMycobotCoordsCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_communication/MycobotCoords.
-- \@details Exact identity UWVMROS1_1da0d6342a1f4079244a65ad413d4559047d33b049ce9da04f8ab0bd226410a2
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/haskell/API-CONTRACT.md
ros1Mycobot_communicationMycobotCoordsCodecIdentity = "UWVMROS1_1da0d6342a1f4079244a65ad413d4559047d33b049ce9da04f8ab0bd226410a2"
-- | \@brief Encode one complete mycobot_communication/MycobotCoords value.
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
-- \@see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Mycobot_communicationMycobotCoords :: Ros1Mycobot_communicationMycobotCoords -> Either Word32 B.ByteString
encodeRos1Mycobot_communicationMycobotCoords value = do
  b0 <- W.encodeFloat32 (ros1Mycobot_communicationMycobotCoords_x value)
  b1 <- W.encodeFloat32 (ros1Mycobot_communicationMycobotCoords_y value)
  b2 <- W.encodeFloat32 (ros1Mycobot_communicationMycobotCoords_z value)
  b3 <- W.encodeFloat32 (ros1Mycobot_communicationMycobotCoords_rx value)
  b4 <- W.encodeFloat32 (ros1Mycobot_communicationMycobotCoords_ry value)
  b5 <- W.encodeFloat32 (ros1Mycobot_communicationMycobotCoords_rz value)
  W.bounded 24 [b0, b1, b2, b3, b4, b5]
-- | \@brief Read the ordered canonical fields of mycobot_communication/MycobotCoords.
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
-- \@see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/haskell/API-CONTRACT.md
readRos1Mycobot_communicationMycobotCoords :: W.Decoder Ros1Mycobot_communicationMycobotCoords
readRos1Mycobot_communicationMycobotCoords = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  let value = Ros1Mycobot_communicationMycobotCoords a0 a1 a2 a3 a4 a5
  case encodeRos1Mycobot_communicationMycobotCoords value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_communication/MycobotCoords value.
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
-- \@see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Mycobot_communicationMycobotCoords :: B.ByteString -> Either Word32 Ros1Mycobot_communicationMycobotCoords
decodeRos1Mycobot_communicationMycobotCoords = W.runDecoder 24 readRos1Mycobot_communicationMycobotCoords
instance Canonical Ros1Mycobot_communicationMycobotCoords where
  maximumBytes _ = 24
  encodeValue = encodeRos1Mycobot_communicationMycobotCoords
  readValue = readRos1Mycobot_communicationMycobotCoords
-- | \@brief Complete ROS 1 mycobot_communication/MycobotGripperStatus value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_65edcc278c4e21355c62408ff310598b3dbdf03ed426e3da0f2ee0bc6910e649.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Mycobot_communicationMycobotGripperStatus = Ros1Mycobot_communicationMycobotGripperStatus
  {
    -- | \@brief mycobot_communication/MycobotGripperStatus.Status: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationMycobotGripperStatus_Status :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_communication/MycobotGripperStatus.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Mycobot_communicationMycobotGripperStatus :: Ros1Mycobot_communicationMycobotGripperStatus
defaultRos1Mycobot_communicationMycobotGripperStatus = Ros1Mycobot_communicationMycobotGripperStatus (False)
-- | \@brief Canonical codec identity of mycobot_communication/MycobotGripperStatus.
-- \@details Exact identity UWVMROS1_65edcc278c4e21355c62408ff310598b3dbdf03ed426e3da0f2ee0bc6910e649
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
ros1Mycobot_communicationMycobotGripperStatusCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_communication/MycobotGripperStatus.
-- \@details Exact identity UWVMROS1_65edcc278c4e21355c62408ff310598b3dbdf03ed426e3da0f2ee0bc6910e649
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
ros1Mycobot_communicationMycobotGripperStatusCodecIdentity = "UWVMROS1_65edcc278c4e21355c62408ff310598b3dbdf03ed426e3da0f2ee0bc6910e649"
-- | \@brief Encode one complete mycobot_communication/MycobotGripperStatus value.
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
-- \@see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Mycobot_communicationMycobotGripperStatus :: Ros1Mycobot_communicationMycobotGripperStatus -> Either Word32 B.ByteString
encodeRos1Mycobot_communicationMycobotGripperStatus value = do
  b0 <- W.encodeBool (ros1Mycobot_communicationMycobotGripperStatus_Status value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of mycobot_communication/MycobotGripperStatus.
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
-- \@see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
readRos1Mycobot_communicationMycobotGripperStatus :: W.Decoder Ros1Mycobot_communicationMycobotGripperStatus
readRos1Mycobot_communicationMycobotGripperStatus = do
  a0 <- W.boolean
  let value = Ros1Mycobot_communicationMycobotGripperStatus a0
  case encodeRos1Mycobot_communicationMycobotGripperStatus value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_communication/MycobotGripperStatus value.
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
-- \@see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Mycobot_communicationMycobotGripperStatus :: B.ByteString -> Either Word32 Ros1Mycobot_communicationMycobotGripperStatus
decodeRos1Mycobot_communicationMycobotGripperStatus = W.runDecoder 1 readRos1Mycobot_communicationMycobotGripperStatus
instance Canonical Ros1Mycobot_communicationMycobotGripperStatus where
  maximumBytes _ = 1
  encodeValue = encodeRos1Mycobot_communicationMycobotGripperStatus
  readValue = readRos1Mycobot_communicationMycobotGripperStatus
-- | \@brief Complete ROS 1 mycobot_communication/MycobotPumpStatus value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies
-- 3..3 bytes and is identified by
-- UWVMROS1_0c0cb3c0fe97b9f9c65769a09f505ff6c27a60723598d656cd5f16255f36bfbd.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Mycobot_communicationMycobotPumpStatus = Ros1Mycobot_communicationMycobotPumpStatus
  {
    -- | \@brief mycobot_communication/MycobotPumpStatus.Status: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationMycobotPumpStatus_Status :: Bool
  ,
    -- | \@brief mycobot_communication/MycobotPumpStatus.Pin1: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationMycobotPumpStatus_Pin1 :: Int8
  ,
    -- | \@brief mycobot_communication/MycobotPumpStatus.Pin2: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationMycobotPumpStatus_Pin2 :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_communication/MycobotPumpStatus.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Mycobot_communicationMycobotPumpStatus :: Ros1Mycobot_communicationMycobotPumpStatus
defaultRos1Mycobot_communicationMycobotPumpStatus = Ros1Mycobot_communicationMycobotPumpStatus (False) (0) (0)
-- | \@brief Canonical codec identity of mycobot_communication/MycobotPumpStatus.
-- \@details Exact identity UWVMROS1_0c0cb3c0fe97b9f9c65769a09f505ff6c27a60723598d656cd5f16255f36bfbd
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
ros1Mycobot_communicationMycobotPumpStatusCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_communication/MycobotPumpStatus.
-- \@details Exact identity UWVMROS1_0c0cb3c0fe97b9f9c65769a09f505ff6c27a60723598d656cd5f16255f36bfbd
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
ros1Mycobot_communicationMycobotPumpStatusCodecIdentity = "UWVMROS1_0c0cb3c0fe97b9f9c65769a09f505ff6c27a60723598d656cd5f16255f36bfbd"
-- | \@brief Encode one complete mycobot_communication/MycobotPumpStatus value.
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
-- \@see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Mycobot_communicationMycobotPumpStatus :: Ros1Mycobot_communicationMycobotPumpStatus -> Either Word32 B.ByteString
encodeRos1Mycobot_communicationMycobotPumpStatus value = do
  b0 <- W.encodeBool (ros1Mycobot_communicationMycobotPumpStatus_Status value)
  b1 <- W.encodeSigned 1 (fromIntegral (ros1Mycobot_communicationMycobotPumpStatus_Pin1 value))
  b2 <- W.encodeSigned 1 (fromIntegral (ros1Mycobot_communicationMycobotPumpStatus_Pin2 value))
  W.bounded 3 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of mycobot_communication/MycobotPumpStatus.
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
-- \@see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
readRos1Mycobot_communicationMycobotPumpStatus :: W.Decoder Ros1Mycobot_communicationMycobotPumpStatus
readRos1Mycobot_communicationMycobotPumpStatus = do
  a0 <- W.boolean
  a1 <- fromIntegral <$> W.signed 1
  a2 <- fromIntegral <$> W.signed 1
  let value = Ros1Mycobot_communicationMycobotPumpStatus a0 a1 a2
  case encodeRos1Mycobot_communicationMycobotPumpStatus value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_communication/MycobotPumpStatus value.
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
-- \@see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Mycobot_communicationMycobotPumpStatus :: B.ByteString -> Either Word32 Ros1Mycobot_communicationMycobotPumpStatus
decodeRos1Mycobot_communicationMycobotPumpStatus = W.runDecoder 3 readRos1Mycobot_communicationMycobotPumpStatus
instance Canonical Ros1Mycobot_communicationMycobotPumpStatus where
  maximumBytes _ = 3
  encodeValue = encodeRos1Mycobot_communicationMycobotPumpStatus
  readValue = readRos1Mycobot_communicationMycobotPumpStatus
-- | \@brief Complete ROS 1 mycobot_communication/MycobotSetAngles value.
-- \@details All 7 declared fields are retained in source order. The canonical representation occupies
-- 25..25 bytes and is identified by
-- UWVMROS1_0844a6cf5033b27ad5062741c939a7cfff63edeba34f7e56c8178e1fab85b334.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Mycobot_communicationMycobotSetAngles = Ros1Mycobot_communicationMycobotSetAngles
  {
    -- | \@brief mycobot_communication/MycobotSetAngles.joint_1: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationMycobotSetAngles_joint_1 :: Float
  ,
    -- | \@brief mycobot_communication/MycobotSetAngles.joint_2: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationMycobotSetAngles_joint_2 :: Float
  ,
    -- | \@brief mycobot_communication/MycobotSetAngles.joint_3: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationMycobotSetAngles_joint_3 :: Float
  ,
    -- | \@brief mycobot_communication/MycobotSetAngles.joint_4: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationMycobotSetAngles_joint_4 :: Float
  ,
    -- | \@brief mycobot_communication/MycobotSetAngles.joint_5: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationMycobotSetAngles_joint_5 :: Float
  ,
    -- | \@brief mycobot_communication/MycobotSetAngles.joint_6: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationMycobotSetAngles_joint_6 :: Float
  ,
    -- | \@brief mycobot_communication/MycobotSetAngles.speed: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationMycobotSetAngles_speed :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_communication/MycobotSetAngles.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Mycobot_communicationMycobotSetAngles :: Ros1Mycobot_communicationMycobotSetAngles
defaultRos1Mycobot_communicationMycobotSetAngles =
  Ros1Mycobot_communicationMycobotSetAngles
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mycobot_communication/MycobotSetAngles.
-- \@details Exact identity UWVMROS1_0844a6cf5033b27ad5062741c939a7cfff63edeba34f7e56c8178e1fab85b334
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
ros1Mycobot_communicationMycobotSetAnglesCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_communication/MycobotSetAngles.
-- \@details Exact identity UWVMROS1_0844a6cf5033b27ad5062741c939a7cfff63edeba34f7e56c8178e1fab85b334
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
ros1Mycobot_communicationMycobotSetAnglesCodecIdentity = "UWVMROS1_0844a6cf5033b27ad5062741c939a7cfff63edeba34f7e56c8178e1fab85b334"
-- | \@brief Encode one complete mycobot_communication/MycobotSetAngles value.
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
-- \@see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Mycobot_communicationMycobotSetAngles :: Ros1Mycobot_communicationMycobotSetAngles -> Either Word32 B.ByteString
encodeRos1Mycobot_communicationMycobotSetAngles value = do
  b0 <- W.encodeFloat32 (ros1Mycobot_communicationMycobotSetAngles_joint_1 value)
  b1 <- W.encodeFloat32 (ros1Mycobot_communicationMycobotSetAngles_joint_2 value)
  b2 <- W.encodeFloat32 (ros1Mycobot_communicationMycobotSetAngles_joint_3 value)
  b3 <- W.encodeFloat32 (ros1Mycobot_communicationMycobotSetAngles_joint_4 value)
  b4 <- W.encodeFloat32 (ros1Mycobot_communicationMycobotSetAngles_joint_5 value)
  b5 <- W.encodeFloat32 (ros1Mycobot_communicationMycobotSetAngles_joint_6 value)
  b6 <- W.encodeSigned 1 (fromIntegral (ros1Mycobot_communicationMycobotSetAngles_speed value))
  W.bounded 25 [b0, b1, b2, b3, b4, b5, b6]
-- | \@brief Read the ordered canonical fields of mycobot_communication/MycobotSetAngles.
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
-- \@see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
readRos1Mycobot_communicationMycobotSetAngles :: W.Decoder Ros1Mycobot_communicationMycobotSetAngles
readRos1Mycobot_communicationMycobotSetAngles = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  a6 <- fromIntegral <$> W.signed 1
  let value = Ros1Mycobot_communicationMycobotSetAngles a0 a1 a2 a3 a4 a5 a6
  case encodeRos1Mycobot_communicationMycobotSetAngles value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_communication/MycobotSetAngles value.
-- \@details Require the complete 25..25-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Mycobot_communicationMycobotSetAngles :: B.ByteString -> Either Word32 Ros1Mycobot_communicationMycobotSetAngles
decodeRos1Mycobot_communicationMycobotSetAngles = W.runDecoder 25 readRos1Mycobot_communicationMycobotSetAngles
instance Canonical Ros1Mycobot_communicationMycobotSetAngles where
  maximumBytes _ = 25
  encodeValue = encodeRos1Mycobot_communicationMycobotSetAngles
  readValue = readRos1Mycobot_communicationMycobotSetAngles
-- | \@brief Complete ROS 1 mycobot_communication/MycobotSetCoords value.
-- \@details All 8 declared fields are retained in source order. The canonical representation occupies
-- 26..26 bytes and is identified by
-- UWVMROS1_39376ad94c0c9b213703a373b6a3b12fd0dad0ec20ff312143d30099842747a9.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Mycobot_communicationMycobotSetCoords = Ros1Mycobot_communicationMycobotSetCoords
  {
    -- | \@brief mycobot_communication/MycobotSetCoords.x: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationMycobotSetCoords_x :: Float
  ,
    -- | \@brief mycobot_communication/MycobotSetCoords.y: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationMycobotSetCoords_y :: Float
  ,
    -- | \@brief mycobot_communication/MycobotSetCoords.z: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationMycobotSetCoords_z :: Float
  ,
    -- | \@brief mycobot_communication/MycobotSetCoords.rx: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationMycobotSetCoords_rx :: Float
  ,
    -- | \@brief mycobot_communication/MycobotSetCoords.ry: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationMycobotSetCoords_ry :: Float
  ,
    -- | \@brief mycobot_communication/MycobotSetCoords.rz: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationMycobotSetCoords_rz :: Float
  ,
    -- | \@brief mycobot_communication/MycobotSetCoords.speed: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationMycobotSetCoords_speed :: Int8
  ,
    -- | \@brief mycobot_communication/MycobotSetCoords.model: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationMycobotSetCoords_model :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_communication/MycobotSetCoords.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Mycobot_communicationMycobotSetCoords :: Ros1Mycobot_communicationMycobotSetCoords
defaultRos1Mycobot_communicationMycobotSetCoords =
  Ros1Mycobot_communicationMycobotSetCoords
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mycobot_communication/MycobotSetCoords.
-- \@details Exact identity UWVMROS1_39376ad94c0c9b213703a373b6a3b12fd0dad0ec20ff312143d30099842747a9
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
ros1Mycobot_communicationMycobotSetCoordsCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_communication/MycobotSetCoords.
-- \@details Exact identity UWVMROS1_39376ad94c0c9b213703a373b6a3b12fd0dad0ec20ff312143d30099842747a9
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
ros1Mycobot_communicationMycobotSetCoordsCodecIdentity = "UWVMROS1_39376ad94c0c9b213703a373b6a3b12fd0dad0ec20ff312143d30099842747a9"
-- | \@brief Encode one complete mycobot_communication/MycobotSetCoords value.
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
-- \@see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Mycobot_communicationMycobotSetCoords :: Ros1Mycobot_communicationMycobotSetCoords -> Either Word32 B.ByteString
encodeRos1Mycobot_communicationMycobotSetCoords value = do
  b0 <- W.encodeFloat32 (ros1Mycobot_communicationMycobotSetCoords_x value)
  b1 <- W.encodeFloat32 (ros1Mycobot_communicationMycobotSetCoords_y value)
  b2 <- W.encodeFloat32 (ros1Mycobot_communicationMycobotSetCoords_z value)
  b3 <- W.encodeFloat32 (ros1Mycobot_communicationMycobotSetCoords_rx value)
  b4 <- W.encodeFloat32 (ros1Mycobot_communicationMycobotSetCoords_ry value)
  b5 <- W.encodeFloat32 (ros1Mycobot_communicationMycobotSetCoords_rz value)
  b6 <- W.encodeSigned 1 (fromIntegral (ros1Mycobot_communicationMycobotSetCoords_speed value))
  b7 <- W.encodeSigned 1 (fromIntegral (ros1Mycobot_communicationMycobotSetCoords_model value))
  W.bounded 26 [b0, b1, b2, b3, b4, b5, b6, b7]
-- | \@brief Read the ordered canonical fields of mycobot_communication/MycobotSetCoords.
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
-- \@see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
readRos1Mycobot_communicationMycobotSetCoords :: W.Decoder Ros1Mycobot_communicationMycobotSetCoords
readRos1Mycobot_communicationMycobotSetCoords = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  a6 <- fromIntegral <$> W.signed 1
  a7 <- fromIntegral <$> W.signed 1
  let value = Ros1Mycobot_communicationMycobotSetCoords a0 a1 a2 a3 a4 a5 a6 a7
  case encodeRos1Mycobot_communicationMycobotSetCoords value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_communication/MycobotSetCoords value.
-- \@details Require the complete 26..26-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Mycobot_communicationMycobotSetCoords :: B.ByteString -> Either Word32 Ros1Mycobot_communicationMycobotSetCoords
decodeRos1Mycobot_communicationMycobotSetCoords = W.runDecoder 26 readRos1Mycobot_communicationMycobotSetCoords
instance Canonical Ros1Mycobot_communicationMycobotSetCoords where
  maximumBytes _ = 26
  encodeValue = encodeRos1Mycobot_communicationMycobotSetCoords
  readValue = readRos1Mycobot_communicationMycobotSetCoords
-- | \@brief Complete ROS 1 mycobot_communication/GetAnglesRequest value.
-- \@details All 0 declared fields are retained in source order. The canonical representation occupies
-- 0..0 bytes and is identified by
-- UWVMROS1_8915949f81b788e5797f3bc4935e33e9e9eae82c5db3a1211129e7ef03cd2c54.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Mycobot_communicationGetAnglesRequest = Ros1Mycobot_communicationGetAnglesRequest deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_communication/GetAnglesRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Mycobot_communicationGetAnglesRequest :: Ros1Mycobot_communicationGetAnglesRequest
defaultRos1Mycobot_communicationGetAnglesRequest = Ros1Mycobot_communicationGetAnglesRequest 
-- | \@brief Canonical codec identity of mycobot_communication/GetAnglesRequest.
-- \@details Exact identity UWVMROS1_8915949f81b788e5797f3bc4935e33e9e9eae82c5db3a1211129e7ef03cd2c54
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Mycobot_communicationGetAnglesRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_communication/GetAnglesRequest.
-- \@details Exact identity UWVMROS1_8915949f81b788e5797f3bc4935e33e9e9eae82c5db3a1211129e7ef03cd2c54
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Mycobot_communicationGetAnglesRequestCodecIdentity = "UWVMROS1_8915949f81b788e5797f3bc4935e33e9e9eae82c5db3a1211129e7ef03cd2c54"
-- | \@brief Encode one complete mycobot_communication/GetAnglesRequest value.
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
-- \@see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Mycobot_communicationGetAnglesRequest :: Ros1Mycobot_communicationGetAnglesRequest -> Either Word32 B.ByteString
encodeRos1Mycobot_communicationGetAnglesRequest value = do
  W.bounded 0 []
-- | \@brief Read the ordered canonical fields of mycobot_communication/GetAnglesRequest.
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
-- \@see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Mycobot_communicationGetAnglesRequest :: W.Decoder Ros1Mycobot_communicationGetAnglesRequest
readRos1Mycobot_communicationGetAnglesRequest = do
  let value = Ros1Mycobot_communicationGetAnglesRequest 
  case encodeRos1Mycobot_communicationGetAnglesRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_communication/GetAnglesRequest value.
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
-- \@see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Mycobot_communicationGetAnglesRequest :: B.ByteString -> Either Word32 Ros1Mycobot_communicationGetAnglesRequest
decodeRos1Mycobot_communicationGetAnglesRequest = W.runDecoder 0 readRos1Mycobot_communicationGetAnglesRequest
instance Canonical Ros1Mycobot_communicationGetAnglesRequest where
  maximumBytes _ = 0
  encodeValue = encodeRos1Mycobot_communicationGetAnglesRequest
  readValue = readRos1Mycobot_communicationGetAnglesRequest
-- | \@brief Complete ROS 1 mycobot_communication/GetAnglesResponse value.
-- \@details All 6 declared fields are retained in source order. The canonical representation occupies
-- 24..24 bytes and is identified by
-- UWVMROS1_482e6b845d6913ab7ea12580a395caf0a9815b56f985eb3a0553263fb7fd4ff3.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Mycobot_communicationGetAnglesResponse = Ros1Mycobot_communicationGetAnglesResponse
  {
    -- | \@brief mycobot_communication/GetAnglesResponse.joint_1: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationGetAnglesResponse_joint_1 :: Float
  ,
    -- | \@brief mycobot_communication/GetAnglesResponse.joint_2: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationGetAnglesResponse_joint_2 :: Float
  ,
    -- | \@brief mycobot_communication/GetAnglesResponse.joint_3: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationGetAnglesResponse_joint_3 :: Float
  ,
    -- | \@brief mycobot_communication/GetAnglesResponse.joint_4: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationGetAnglesResponse_joint_4 :: Float
  ,
    -- | \@brief mycobot_communication/GetAnglesResponse.joint_5: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationGetAnglesResponse_joint_5 :: Float
  ,
    -- | \@brief mycobot_communication/GetAnglesResponse.joint_6: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationGetAnglesResponse_joint_6 :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_communication/GetAnglesResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Mycobot_communicationGetAnglesResponse :: Ros1Mycobot_communicationGetAnglesResponse
defaultRos1Mycobot_communicationGetAnglesResponse =
  Ros1Mycobot_communicationGetAnglesResponse
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mycobot_communication/GetAnglesResponse.
-- \@details Exact identity UWVMROS1_482e6b845d6913ab7ea12580a395caf0a9815b56f985eb3a0553263fb7fd4ff3
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Mycobot_communicationGetAnglesResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_communication/GetAnglesResponse.
-- \@details Exact identity UWVMROS1_482e6b845d6913ab7ea12580a395caf0a9815b56f985eb3a0553263fb7fd4ff3
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Mycobot_communicationGetAnglesResponseCodecIdentity = "UWVMROS1_482e6b845d6913ab7ea12580a395caf0a9815b56f985eb3a0553263fb7fd4ff3"
-- | \@brief Encode one complete mycobot_communication/GetAnglesResponse value.
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
-- \@see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Mycobot_communicationGetAnglesResponse :: Ros1Mycobot_communicationGetAnglesResponse -> Either Word32 B.ByteString
encodeRos1Mycobot_communicationGetAnglesResponse value = do
  b0 <- W.encodeFloat32 (ros1Mycobot_communicationGetAnglesResponse_joint_1 value)
  b1 <- W.encodeFloat32 (ros1Mycobot_communicationGetAnglesResponse_joint_2 value)
  b2 <- W.encodeFloat32 (ros1Mycobot_communicationGetAnglesResponse_joint_3 value)
  b3 <- W.encodeFloat32 (ros1Mycobot_communicationGetAnglesResponse_joint_4 value)
  b4 <- W.encodeFloat32 (ros1Mycobot_communicationGetAnglesResponse_joint_5 value)
  b5 <- W.encodeFloat32 (ros1Mycobot_communicationGetAnglesResponse_joint_6 value)
  W.bounded 24 [b0, b1, b2, b3, b4, b5]
-- | \@brief Read the ordered canonical fields of mycobot_communication/GetAnglesResponse.
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
-- \@see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Mycobot_communicationGetAnglesResponse :: W.Decoder Ros1Mycobot_communicationGetAnglesResponse
readRos1Mycobot_communicationGetAnglesResponse = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  let value = Ros1Mycobot_communicationGetAnglesResponse a0 a1 a2 a3 a4 a5
  case encodeRos1Mycobot_communicationGetAnglesResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_communication/GetAnglesResponse value.
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
-- \@see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Mycobot_communicationGetAnglesResponse :: B.ByteString -> Either Word32 Ros1Mycobot_communicationGetAnglesResponse
decodeRos1Mycobot_communicationGetAnglesResponse = W.runDecoder 24 readRos1Mycobot_communicationGetAnglesResponse
instance Canonical Ros1Mycobot_communicationGetAnglesResponse where
  maximumBytes _ = 24
  encodeValue = encodeRos1Mycobot_communicationGetAnglesResponse
  readValue = readRos1Mycobot_communicationGetAnglesResponse
-- | \@brief Complete ROS 1 mycobot_communication/GetCoordsRequest value.
-- \@details All 0 declared fields are retained in source order. The canonical representation occupies
-- 0..0 bytes and is identified by
-- UWVMROS1_54acc83a24f2f62d8ba9c14b1cea1703cb6097360720550cc438671282d45876.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Mycobot_communicationGetCoordsRequest = Ros1Mycobot_communicationGetCoordsRequest deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_communication/GetCoordsRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Mycobot_communicationGetCoordsRequest :: Ros1Mycobot_communicationGetCoordsRequest
defaultRos1Mycobot_communicationGetCoordsRequest = Ros1Mycobot_communicationGetCoordsRequest 
-- | \@brief Canonical codec identity of mycobot_communication/GetCoordsRequest.
-- \@details Exact identity UWVMROS1_54acc83a24f2f62d8ba9c14b1cea1703cb6097360720550cc438671282d45876
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Mycobot_communicationGetCoordsRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_communication/GetCoordsRequest.
-- \@details Exact identity UWVMROS1_54acc83a24f2f62d8ba9c14b1cea1703cb6097360720550cc438671282d45876
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Mycobot_communicationGetCoordsRequestCodecIdentity = "UWVMROS1_54acc83a24f2f62d8ba9c14b1cea1703cb6097360720550cc438671282d45876"
-- | \@brief Encode one complete mycobot_communication/GetCoordsRequest value.
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
-- \@see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Mycobot_communicationGetCoordsRequest :: Ros1Mycobot_communicationGetCoordsRequest -> Either Word32 B.ByteString
encodeRos1Mycobot_communicationGetCoordsRequest value = do
  W.bounded 0 []
-- | \@brief Read the ordered canonical fields of mycobot_communication/GetCoordsRequest.
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
-- \@see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Mycobot_communicationGetCoordsRequest :: W.Decoder Ros1Mycobot_communicationGetCoordsRequest
readRos1Mycobot_communicationGetCoordsRequest = do
  let value = Ros1Mycobot_communicationGetCoordsRequest 
  case encodeRos1Mycobot_communicationGetCoordsRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_communication/GetCoordsRequest value.
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
-- \@see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Mycobot_communicationGetCoordsRequest :: B.ByteString -> Either Word32 Ros1Mycobot_communicationGetCoordsRequest
decodeRos1Mycobot_communicationGetCoordsRequest = W.runDecoder 0 readRos1Mycobot_communicationGetCoordsRequest
instance Canonical Ros1Mycobot_communicationGetCoordsRequest where
  maximumBytes _ = 0
  encodeValue = encodeRos1Mycobot_communicationGetCoordsRequest
  readValue = readRos1Mycobot_communicationGetCoordsRequest
-- | \@brief Complete ROS 1 mycobot_communication/GetCoordsResponse value.
-- \@details All 6 declared fields are retained in source order. The canonical representation occupies
-- 24..24 bytes and is identified by
-- UWVMROS1_275b9bec563bb8578112b3680400523000a08a8e194044164e5334336b73d107.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Mycobot_communicationGetCoordsResponse = Ros1Mycobot_communicationGetCoordsResponse
  {
    -- | \@brief mycobot_communication/GetCoordsResponse.x: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationGetCoordsResponse_x :: Float
  ,
    -- | \@brief mycobot_communication/GetCoordsResponse.y: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationGetCoordsResponse_y :: Float
  ,
    -- | \@brief mycobot_communication/GetCoordsResponse.z: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationGetCoordsResponse_z :: Float
  ,
    -- | \@brief mycobot_communication/GetCoordsResponse.rx: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationGetCoordsResponse_rx :: Float
  ,
    -- | \@brief mycobot_communication/GetCoordsResponse.ry: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationGetCoordsResponse_ry :: Float
  ,
    -- | \@brief mycobot_communication/GetCoordsResponse.rz: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationGetCoordsResponse_rz :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_communication/GetCoordsResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Mycobot_communicationGetCoordsResponse :: Ros1Mycobot_communicationGetCoordsResponse
defaultRos1Mycobot_communicationGetCoordsResponse =
  Ros1Mycobot_communicationGetCoordsResponse
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mycobot_communication/GetCoordsResponse.
-- \@details Exact identity UWVMROS1_275b9bec563bb8578112b3680400523000a08a8e194044164e5334336b73d107
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Mycobot_communicationGetCoordsResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_communication/GetCoordsResponse.
-- \@details Exact identity UWVMROS1_275b9bec563bb8578112b3680400523000a08a8e194044164e5334336b73d107
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Mycobot_communicationGetCoordsResponseCodecIdentity = "UWVMROS1_275b9bec563bb8578112b3680400523000a08a8e194044164e5334336b73d107"
-- | \@brief Encode one complete mycobot_communication/GetCoordsResponse value.
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
-- \@see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Mycobot_communicationGetCoordsResponse :: Ros1Mycobot_communicationGetCoordsResponse -> Either Word32 B.ByteString
encodeRos1Mycobot_communicationGetCoordsResponse value = do
  b0 <- W.encodeFloat32 (ros1Mycobot_communicationGetCoordsResponse_x value)
  b1 <- W.encodeFloat32 (ros1Mycobot_communicationGetCoordsResponse_y value)
  b2 <- W.encodeFloat32 (ros1Mycobot_communicationGetCoordsResponse_z value)
  b3 <- W.encodeFloat32 (ros1Mycobot_communicationGetCoordsResponse_rx value)
  b4 <- W.encodeFloat32 (ros1Mycobot_communicationGetCoordsResponse_ry value)
  b5 <- W.encodeFloat32 (ros1Mycobot_communicationGetCoordsResponse_rz value)
  W.bounded 24 [b0, b1, b2, b3, b4, b5]
-- | \@brief Read the ordered canonical fields of mycobot_communication/GetCoordsResponse.
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
-- \@see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Mycobot_communicationGetCoordsResponse :: W.Decoder Ros1Mycobot_communicationGetCoordsResponse
readRos1Mycobot_communicationGetCoordsResponse = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  let value = Ros1Mycobot_communicationGetCoordsResponse a0 a1 a2 a3 a4 a5
  case encodeRos1Mycobot_communicationGetCoordsResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_communication/GetCoordsResponse value.
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
-- \@see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Mycobot_communicationGetCoordsResponse :: B.ByteString -> Either Word32 Ros1Mycobot_communicationGetCoordsResponse
decodeRos1Mycobot_communicationGetCoordsResponse = W.runDecoder 24 readRos1Mycobot_communicationGetCoordsResponse
instance Canonical Ros1Mycobot_communicationGetCoordsResponse where
  maximumBytes _ = 24
  encodeValue = encodeRos1Mycobot_communicationGetCoordsResponse
  readValue = readRos1Mycobot_communicationGetCoordsResponse
-- | \@brief Complete ROS 1 mycobot_communication/GripperStatusRequest value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_d2c94d1906d311981c72642d82bbea634cfed4eac8c0aef41219bf4f382d4585.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Mycobot_communicationGripperStatusRequest = Ros1Mycobot_communicationGripperStatusRequest
  {
    -- | \@brief mycobot_communication/GripperStatusRequest.Status: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationGripperStatusRequest_Status :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_communication/GripperStatusRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Mycobot_communicationGripperStatusRequest :: Ros1Mycobot_communicationGripperStatusRequest
defaultRos1Mycobot_communicationGripperStatusRequest = Ros1Mycobot_communicationGripperStatusRequest (False)
-- | \@brief Canonical codec identity of mycobot_communication/GripperStatusRequest.
-- \@details Exact identity UWVMROS1_d2c94d1906d311981c72642d82bbea634cfed4eac8c0aef41219bf4f382d4585
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Mycobot_communicationGripperStatusRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_communication/GripperStatusRequest.
-- \@details Exact identity UWVMROS1_d2c94d1906d311981c72642d82bbea634cfed4eac8c0aef41219bf4f382d4585
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Mycobot_communicationGripperStatusRequestCodecIdentity = "UWVMROS1_d2c94d1906d311981c72642d82bbea634cfed4eac8c0aef41219bf4f382d4585"
-- | \@brief Encode one complete mycobot_communication/GripperStatusRequest value.
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
-- \@see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Mycobot_communicationGripperStatusRequest :: Ros1Mycobot_communicationGripperStatusRequest -> Either Word32 B.ByteString
encodeRos1Mycobot_communicationGripperStatusRequest value = do
  b0 <- W.encodeBool (ros1Mycobot_communicationGripperStatusRequest_Status value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of mycobot_communication/GripperStatusRequest.
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
-- \@see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Mycobot_communicationGripperStatusRequest :: W.Decoder Ros1Mycobot_communicationGripperStatusRequest
readRos1Mycobot_communicationGripperStatusRequest = do
  a0 <- W.boolean
  let value = Ros1Mycobot_communicationGripperStatusRequest a0
  case encodeRos1Mycobot_communicationGripperStatusRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_communication/GripperStatusRequest value.
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
-- \@see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Mycobot_communicationGripperStatusRequest :: B.ByteString -> Either Word32 Ros1Mycobot_communicationGripperStatusRequest
decodeRos1Mycobot_communicationGripperStatusRequest = W.runDecoder 1 readRos1Mycobot_communicationGripperStatusRequest
instance Canonical Ros1Mycobot_communicationGripperStatusRequest where
  maximumBytes _ = 1
  encodeValue = encodeRos1Mycobot_communicationGripperStatusRequest
  readValue = readRos1Mycobot_communicationGripperStatusRequest
-- | \@brief Complete ROS 1 mycobot_communication/GripperStatusResponse value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_3a75c0d75882836971ed4c51e50c7b88778fcfeadf9b30df211d5055eb767664.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Mycobot_communicationGripperStatusResponse = Ros1Mycobot_communicationGripperStatusResponse
  {
    -- | \@brief mycobot_communication/GripperStatusResponse.Flag: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationGripperStatusResponse_Flag :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_communication/GripperStatusResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Mycobot_communicationGripperStatusResponse :: Ros1Mycobot_communicationGripperStatusResponse
defaultRos1Mycobot_communicationGripperStatusResponse = Ros1Mycobot_communicationGripperStatusResponse (False)
-- | \@brief Canonical codec identity of mycobot_communication/GripperStatusResponse.
-- \@details Exact identity UWVMROS1_3a75c0d75882836971ed4c51e50c7b88778fcfeadf9b30df211d5055eb767664
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Mycobot_communicationGripperStatusResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_communication/GripperStatusResponse.
-- \@details Exact identity UWVMROS1_3a75c0d75882836971ed4c51e50c7b88778fcfeadf9b30df211d5055eb767664
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Mycobot_communicationGripperStatusResponseCodecIdentity = "UWVMROS1_3a75c0d75882836971ed4c51e50c7b88778fcfeadf9b30df211d5055eb767664"
-- | \@brief Encode one complete mycobot_communication/GripperStatusResponse value.
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
-- \@see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Mycobot_communicationGripperStatusResponse :: Ros1Mycobot_communicationGripperStatusResponse -> Either Word32 B.ByteString
encodeRos1Mycobot_communicationGripperStatusResponse value = do
  b0 <- W.encodeBool (ros1Mycobot_communicationGripperStatusResponse_Flag value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of mycobot_communication/GripperStatusResponse.
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
-- \@see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Mycobot_communicationGripperStatusResponse :: W.Decoder Ros1Mycobot_communicationGripperStatusResponse
readRos1Mycobot_communicationGripperStatusResponse = do
  a0 <- W.boolean
  let value = Ros1Mycobot_communicationGripperStatusResponse a0
  case encodeRos1Mycobot_communicationGripperStatusResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_communication/GripperStatusResponse value.
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
-- \@see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Mycobot_communicationGripperStatusResponse :: B.ByteString -> Either Word32 Ros1Mycobot_communicationGripperStatusResponse
decodeRos1Mycobot_communicationGripperStatusResponse = W.runDecoder 1 readRos1Mycobot_communicationGripperStatusResponse
instance Canonical Ros1Mycobot_communicationGripperStatusResponse where
  maximumBytes _ = 1
  encodeValue = encodeRos1Mycobot_communicationGripperStatusResponse
  readValue = readRos1Mycobot_communicationGripperStatusResponse
-- | \@brief Complete ROS 1 mycobot_communication/PumpStatusRequest value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies
-- 3..3 bytes and is identified by
-- UWVMROS1_561f4bb1f74832111672bbfed1ef1266a91914fb1034437199f730f55324c65c.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Mycobot_communicationPumpStatusRequest = Ros1Mycobot_communicationPumpStatusRequest
  {
    -- | \@brief mycobot_communication/PumpStatusRequest.Status: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationPumpStatusRequest_Status :: Bool
  ,
    -- | \@brief mycobot_communication/PumpStatusRequest.Pin1: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationPumpStatusRequest_Pin1 :: Int8
  ,
    -- | \@brief mycobot_communication/PumpStatusRequest.Pin2: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationPumpStatusRequest_Pin2 :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_communication/PumpStatusRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Mycobot_communicationPumpStatusRequest :: Ros1Mycobot_communicationPumpStatusRequest
defaultRos1Mycobot_communicationPumpStatusRequest = Ros1Mycobot_communicationPumpStatusRequest (False) (0) (0)
-- | \@brief Canonical codec identity of mycobot_communication/PumpStatusRequest.
-- \@details Exact identity UWVMROS1_561f4bb1f74832111672bbfed1ef1266a91914fb1034437199f730f55324c65c
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Mycobot_communicationPumpStatusRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_communication/PumpStatusRequest.
-- \@details Exact identity UWVMROS1_561f4bb1f74832111672bbfed1ef1266a91914fb1034437199f730f55324c65c
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Mycobot_communicationPumpStatusRequestCodecIdentity = "UWVMROS1_561f4bb1f74832111672bbfed1ef1266a91914fb1034437199f730f55324c65c"
-- | \@brief Encode one complete mycobot_communication/PumpStatusRequest value.
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
-- \@see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Mycobot_communicationPumpStatusRequest :: Ros1Mycobot_communicationPumpStatusRequest -> Either Word32 B.ByteString
encodeRos1Mycobot_communicationPumpStatusRequest value = do
  b0 <- W.encodeBool (ros1Mycobot_communicationPumpStatusRequest_Status value)
  b1 <- W.encodeSigned 1 (fromIntegral (ros1Mycobot_communicationPumpStatusRequest_Pin1 value))
  b2 <- W.encodeSigned 1 (fromIntegral (ros1Mycobot_communicationPumpStatusRequest_Pin2 value))
  W.bounded 3 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of mycobot_communication/PumpStatusRequest.
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
-- \@see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Mycobot_communicationPumpStatusRequest :: W.Decoder Ros1Mycobot_communicationPumpStatusRequest
readRos1Mycobot_communicationPumpStatusRequest = do
  a0 <- W.boolean
  a1 <- fromIntegral <$> W.signed 1
  a2 <- fromIntegral <$> W.signed 1
  let value = Ros1Mycobot_communicationPumpStatusRequest a0 a1 a2
  case encodeRos1Mycobot_communicationPumpStatusRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_communication/PumpStatusRequest value.
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
-- \@see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Mycobot_communicationPumpStatusRequest :: B.ByteString -> Either Word32 Ros1Mycobot_communicationPumpStatusRequest
decodeRos1Mycobot_communicationPumpStatusRequest = W.runDecoder 3 readRos1Mycobot_communicationPumpStatusRequest
instance Canonical Ros1Mycobot_communicationPumpStatusRequest where
  maximumBytes _ = 3
  encodeValue = encodeRos1Mycobot_communicationPumpStatusRequest
  readValue = readRos1Mycobot_communicationPumpStatusRequest
-- | \@brief Complete ROS 1 mycobot_communication/PumpStatusResponse value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_b5a1672fe12d2e2131034bb6da8751130b64ef6d48ea48ac0a046c506da452dd.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Mycobot_communicationPumpStatusResponse = Ros1Mycobot_communicationPumpStatusResponse
  {
    -- | \@brief mycobot_communication/PumpStatusResponse.Flag: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationPumpStatusResponse_Flag :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_communication/PumpStatusResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Mycobot_communicationPumpStatusResponse :: Ros1Mycobot_communicationPumpStatusResponse
defaultRos1Mycobot_communicationPumpStatusResponse = Ros1Mycobot_communicationPumpStatusResponse (False)
-- | \@brief Canonical codec identity of mycobot_communication/PumpStatusResponse.
-- \@details Exact identity UWVMROS1_b5a1672fe12d2e2131034bb6da8751130b64ef6d48ea48ac0a046c506da452dd
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Mycobot_communicationPumpStatusResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_communication/PumpStatusResponse.
-- \@details Exact identity UWVMROS1_b5a1672fe12d2e2131034bb6da8751130b64ef6d48ea48ac0a046c506da452dd
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Mycobot_communicationPumpStatusResponseCodecIdentity = "UWVMROS1_b5a1672fe12d2e2131034bb6da8751130b64ef6d48ea48ac0a046c506da452dd"
-- | \@brief Encode one complete mycobot_communication/PumpStatusResponse value.
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
-- \@see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Mycobot_communicationPumpStatusResponse :: Ros1Mycobot_communicationPumpStatusResponse -> Either Word32 B.ByteString
encodeRos1Mycobot_communicationPumpStatusResponse value = do
  b0 <- W.encodeBool (ros1Mycobot_communicationPumpStatusResponse_Flag value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of mycobot_communication/PumpStatusResponse.
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
-- \@see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Mycobot_communicationPumpStatusResponse :: W.Decoder Ros1Mycobot_communicationPumpStatusResponse
readRos1Mycobot_communicationPumpStatusResponse = do
  a0 <- W.boolean
  let value = Ros1Mycobot_communicationPumpStatusResponse a0
  case encodeRos1Mycobot_communicationPumpStatusResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_communication/PumpStatusResponse value.
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
-- \@see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Mycobot_communicationPumpStatusResponse :: B.ByteString -> Either Word32 Ros1Mycobot_communicationPumpStatusResponse
decodeRos1Mycobot_communicationPumpStatusResponse = W.runDecoder 1 readRos1Mycobot_communicationPumpStatusResponse
instance Canonical Ros1Mycobot_communicationPumpStatusResponse where
  maximumBytes _ = 1
  encodeValue = encodeRos1Mycobot_communicationPumpStatusResponse
  readValue = readRos1Mycobot_communicationPumpStatusResponse
-- | \@brief Complete ROS 1 mycobot_communication/SetAnglesRequest value.
-- \@details All 7 declared fields are retained in source order. The canonical representation occupies
-- 25..25 bytes and is identified by
-- UWVMROS1_10bcf04e47b743a985ffefc61dff4522f3718d2ac7170960c8ae6857aaa11cbd.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Mycobot_communicationSetAnglesRequest = Ros1Mycobot_communicationSetAnglesRequest
  {
    -- | \@brief mycobot_communication/SetAnglesRequest.joint_1: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationSetAnglesRequest_joint_1 :: Float
  ,
    -- | \@brief mycobot_communication/SetAnglesRequest.joint_2: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationSetAnglesRequest_joint_2 :: Float
  ,
    -- | \@brief mycobot_communication/SetAnglesRequest.joint_3: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationSetAnglesRequest_joint_3 :: Float
  ,
    -- | \@brief mycobot_communication/SetAnglesRequest.joint_4: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationSetAnglesRequest_joint_4 :: Float
  ,
    -- | \@brief mycobot_communication/SetAnglesRequest.joint_5: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationSetAnglesRequest_joint_5 :: Float
  ,
    -- | \@brief mycobot_communication/SetAnglesRequest.joint_6: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationSetAnglesRequest_joint_6 :: Float
  ,
    -- | \@brief mycobot_communication/SetAnglesRequest.speed: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationSetAnglesRequest_speed :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_communication/SetAnglesRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Mycobot_communicationSetAnglesRequest :: Ros1Mycobot_communicationSetAnglesRequest
defaultRos1Mycobot_communicationSetAnglesRequest =
  Ros1Mycobot_communicationSetAnglesRequest
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mycobot_communication/SetAnglesRequest.
-- \@details Exact identity UWVMROS1_10bcf04e47b743a985ffefc61dff4522f3718d2ac7170960c8ae6857aaa11cbd
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Mycobot_communicationSetAnglesRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_communication/SetAnglesRequest.
-- \@details Exact identity UWVMROS1_10bcf04e47b743a985ffefc61dff4522f3718d2ac7170960c8ae6857aaa11cbd
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Mycobot_communicationSetAnglesRequestCodecIdentity = "UWVMROS1_10bcf04e47b743a985ffefc61dff4522f3718d2ac7170960c8ae6857aaa11cbd"
-- | \@brief Encode one complete mycobot_communication/SetAnglesRequest value.
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
-- \@see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Mycobot_communicationSetAnglesRequest :: Ros1Mycobot_communicationSetAnglesRequest -> Either Word32 B.ByteString
encodeRos1Mycobot_communicationSetAnglesRequest value = do
  b0 <- W.encodeFloat32 (ros1Mycobot_communicationSetAnglesRequest_joint_1 value)
  b1 <- W.encodeFloat32 (ros1Mycobot_communicationSetAnglesRequest_joint_2 value)
  b2 <- W.encodeFloat32 (ros1Mycobot_communicationSetAnglesRequest_joint_3 value)
  b3 <- W.encodeFloat32 (ros1Mycobot_communicationSetAnglesRequest_joint_4 value)
  b4 <- W.encodeFloat32 (ros1Mycobot_communicationSetAnglesRequest_joint_5 value)
  b5 <- W.encodeFloat32 (ros1Mycobot_communicationSetAnglesRequest_joint_6 value)
  b6 <- W.encodeSigned 1 (fromIntegral (ros1Mycobot_communicationSetAnglesRequest_speed value))
  W.bounded 25 [b0, b1, b2, b3, b4, b5, b6]
-- | \@brief Read the ordered canonical fields of mycobot_communication/SetAnglesRequest.
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
-- \@see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Mycobot_communicationSetAnglesRequest :: W.Decoder Ros1Mycobot_communicationSetAnglesRequest
readRos1Mycobot_communicationSetAnglesRequest = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  a6 <- fromIntegral <$> W.signed 1
  let value = Ros1Mycobot_communicationSetAnglesRequest a0 a1 a2 a3 a4 a5 a6
  case encodeRos1Mycobot_communicationSetAnglesRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_communication/SetAnglesRequest value.
-- \@details Require the complete 25..25-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Mycobot_communicationSetAnglesRequest :: B.ByteString -> Either Word32 Ros1Mycobot_communicationSetAnglesRequest
decodeRos1Mycobot_communicationSetAnglesRequest = W.runDecoder 25 readRos1Mycobot_communicationSetAnglesRequest
instance Canonical Ros1Mycobot_communicationSetAnglesRequest where
  maximumBytes _ = 25
  encodeValue = encodeRos1Mycobot_communicationSetAnglesRequest
  readValue = readRos1Mycobot_communicationSetAnglesRequest
-- | \@brief Complete ROS 1 mycobot_communication/SetAnglesResponse value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_d407051eb285975d89ad71f39aede021fb564aecca0e0744126c9a599fe396b2.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Mycobot_communicationSetAnglesResponse = Ros1Mycobot_communicationSetAnglesResponse
  {
    -- | \@brief mycobot_communication/SetAnglesResponse.Flag: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationSetAnglesResponse_Flag :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_communication/SetAnglesResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Mycobot_communicationSetAnglesResponse :: Ros1Mycobot_communicationSetAnglesResponse
defaultRos1Mycobot_communicationSetAnglesResponse = Ros1Mycobot_communicationSetAnglesResponse (False)
-- | \@brief Canonical codec identity of mycobot_communication/SetAnglesResponse.
-- \@details Exact identity UWVMROS1_d407051eb285975d89ad71f39aede021fb564aecca0e0744126c9a599fe396b2
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Mycobot_communicationSetAnglesResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_communication/SetAnglesResponse.
-- \@details Exact identity UWVMROS1_d407051eb285975d89ad71f39aede021fb564aecca0e0744126c9a599fe396b2
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Mycobot_communicationSetAnglesResponseCodecIdentity = "UWVMROS1_d407051eb285975d89ad71f39aede021fb564aecca0e0744126c9a599fe396b2"
-- | \@brief Encode one complete mycobot_communication/SetAnglesResponse value.
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
-- \@see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Mycobot_communicationSetAnglesResponse :: Ros1Mycobot_communicationSetAnglesResponse -> Either Word32 B.ByteString
encodeRos1Mycobot_communicationSetAnglesResponse value = do
  b0 <- W.encodeBool (ros1Mycobot_communicationSetAnglesResponse_Flag value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of mycobot_communication/SetAnglesResponse.
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
-- \@see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Mycobot_communicationSetAnglesResponse :: W.Decoder Ros1Mycobot_communicationSetAnglesResponse
readRos1Mycobot_communicationSetAnglesResponse = do
  a0 <- W.boolean
  let value = Ros1Mycobot_communicationSetAnglesResponse a0
  case encodeRos1Mycobot_communicationSetAnglesResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_communication/SetAnglesResponse value.
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
-- \@see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Mycobot_communicationSetAnglesResponse :: B.ByteString -> Either Word32 Ros1Mycobot_communicationSetAnglesResponse
decodeRos1Mycobot_communicationSetAnglesResponse = W.runDecoder 1 readRos1Mycobot_communicationSetAnglesResponse
instance Canonical Ros1Mycobot_communicationSetAnglesResponse where
  maximumBytes _ = 1
  encodeValue = encodeRos1Mycobot_communicationSetAnglesResponse
  readValue = readRos1Mycobot_communicationSetAnglesResponse
-- | \@brief Complete ROS 1 mycobot_communication/SetCoordsRequest value.
-- \@details All 8 declared fields are retained in source order. The canonical representation occupies
-- 26..26 bytes and is identified by
-- UWVMROS1_7a59a4e31eca60caea9f82142225c890a136c60a9e4c821e9463e89139945f7a.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Mycobot_communicationSetCoordsRequest = Ros1Mycobot_communicationSetCoordsRequest
  {
    -- | \@brief mycobot_communication/SetCoordsRequest.x: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationSetCoordsRequest_x :: Float
  ,
    -- | \@brief mycobot_communication/SetCoordsRequest.y: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationSetCoordsRequest_y :: Float
  ,
    -- | \@brief mycobot_communication/SetCoordsRequest.z: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationSetCoordsRequest_z :: Float
  ,
    -- | \@brief mycobot_communication/SetCoordsRequest.rx: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationSetCoordsRequest_rx :: Float
  ,
    -- | \@brief mycobot_communication/SetCoordsRequest.ry: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationSetCoordsRequest_ry :: Float
  ,
    -- | \@brief mycobot_communication/SetCoordsRequest.rz: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationSetCoordsRequest_rz :: Float
  ,
    -- | \@brief mycobot_communication/SetCoordsRequest.speed: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationSetCoordsRequest_speed :: Int8
  ,
    -- | \@brief mycobot_communication/SetCoordsRequest.model: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationSetCoordsRequest_model :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_communication/SetCoordsRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Mycobot_communicationSetCoordsRequest :: Ros1Mycobot_communicationSetCoordsRequest
defaultRos1Mycobot_communicationSetCoordsRequest =
  Ros1Mycobot_communicationSetCoordsRequest
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mycobot_communication/SetCoordsRequest.
-- \@details Exact identity UWVMROS1_7a59a4e31eca60caea9f82142225c890a136c60a9e4c821e9463e89139945f7a
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Mycobot_communicationSetCoordsRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_communication/SetCoordsRequest.
-- \@details Exact identity UWVMROS1_7a59a4e31eca60caea9f82142225c890a136c60a9e4c821e9463e89139945f7a
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Mycobot_communicationSetCoordsRequestCodecIdentity = "UWVMROS1_7a59a4e31eca60caea9f82142225c890a136c60a9e4c821e9463e89139945f7a"
-- | \@brief Encode one complete mycobot_communication/SetCoordsRequest value.
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
-- \@see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Mycobot_communicationSetCoordsRequest :: Ros1Mycobot_communicationSetCoordsRequest -> Either Word32 B.ByteString
encodeRos1Mycobot_communicationSetCoordsRequest value = do
  b0 <- W.encodeFloat32 (ros1Mycobot_communicationSetCoordsRequest_x value)
  b1 <- W.encodeFloat32 (ros1Mycobot_communicationSetCoordsRequest_y value)
  b2 <- W.encodeFloat32 (ros1Mycobot_communicationSetCoordsRequest_z value)
  b3 <- W.encodeFloat32 (ros1Mycobot_communicationSetCoordsRequest_rx value)
  b4 <- W.encodeFloat32 (ros1Mycobot_communicationSetCoordsRequest_ry value)
  b5 <- W.encodeFloat32 (ros1Mycobot_communicationSetCoordsRequest_rz value)
  b6 <- W.encodeSigned 1 (fromIntegral (ros1Mycobot_communicationSetCoordsRequest_speed value))
  b7 <- W.encodeSigned 1 (fromIntegral (ros1Mycobot_communicationSetCoordsRequest_model value))
  W.bounded 26 [b0, b1, b2, b3, b4, b5, b6, b7]
-- | \@brief Read the ordered canonical fields of mycobot_communication/SetCoordsRequest.
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
-- \@see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Mycobot_communicationSetCoordsRequest :: W.Decoder Ros1Mycobot_communicationSetCoordsRequest
readRos1Mycobot_communicationSetCoordsRequest = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  a6 <- fromIntegral <$> W.signed 1
  a7 <- fromIntegral <$> W.signed 1
  let value = Ros1Mycobot_communicationSetCoordsRequest a0 a1 a2 a3 a4 a5 a6 a7
  case encodeRos1Mycobot_communicationSetCoordsRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_communication/SetCoordsRequest value.
-- \@details Require the complete 26..26-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Mycobot_communicationSetCoordsRequest :: B.ByteString -> Either Word32 Ros1Mycobot_communicationSetCoordsRequest
decodeRos1Mycobot_communicationSetCoordsRequest = W.runDecoder 26 readRos1Mycobot_communicationSetCoordsRequest
instance Canonical Ros1Mycobot_communicationSetCoordsRequest where
  maximumBytes _ = 26
  encodeValue = encodeRos1Mycobot_communicationSetCoordsRequest
  readValue = readRos1Mycobot_communicationSetCoordsRequest
-- | \@brief Complete ROS 1 mycobot_communication/SetCoordsResponse value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_1a936a95cb1bfd0a9158342618c40c587af58388abf3b679eb4bad2518aec6af.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Mycobot_communicationSetCoordsResponse = Ros1Mycobot_communicationSetCoordsResponse
  {
    -- | \@brief mycobot_communication/SetCoordsResponse.Flag: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mycobot_communicationSetCoordsResponse_Flag :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_communication/SetCoordsResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Mycobot_communicationSetCoordsResponse :: Ros1Mycobot_communicationSetCoordsResponse
defaultRos1Mycobot_communicationSetCoordsResponse = Ros1Mycobot_communicationSetCoordsResponse (False)
-- | \@brief Canonical codec identity of mycobot_communication/SetCoordsResponse.
-- \@details Exact identity UWVMROS1_1a936a95cb1bfd0a9158342618c40c587af58388abf3b679eb4bad2518aec6af
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Mycobot_communicationSetCoordsResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_communication/SetCoordsResponse.
-- \@details Exact identity UWVMROS1_1a936a95cb1bfd0a9158342618c40c587af58388abf3b679eb4bad2518aec6af
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Mycobot_communicationSetCoordsResponseCodecIdentity = "UWVMROS1_1a936a95cb1bfd0a9158342618c40c587af58388abf3b679eb4bad2518aec6af"
-- | \@brief Encode one complete mycobot_communication/SetCoordsResponse value.
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
-- \@see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Mycobot_communicationSetCoordsResponse :: Ros1Mycobot_communicationSetCoordsResponse -> Either Word32 B.ByteString
encodeRos1Mycobot_communicationSetCoordsResponse value = do
  b0 <- W.encodeBool (ros1Mycobot_communicationSetCoordsResponse_Flag value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of mycobot_communication/SetCoordsResponse.
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
-- \@see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Mycobot_communicationSetCoordsResponse :: W.Decoder Ros1Mycobot_communicationSetCoordsResponse
readRos1Mycobot_communicationSetCoordsResponse = do
  a0 <- W.boolean
  let value = Ros1Mycobot_communicationSetCoordsResponse a0
  case encodeRos1Mycobot_communicationSetCoordsResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_communication/SetCoordsResponse value.
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
-- \@see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Mycobot_communicationSetCoordsResponse :: B.ByteString -> Either Word32 Ros1Mycobot_communicationSetCoordsResponse
decodeRos1Mycobot_communicationSetCoordsResponse = W.runDecoder 1 readRos1Mycobot_communicationSetCoordsResponse
instance Canonical Ros1Mycobot_communicationSetCoordsResponse where
  maximumBytes _ = 1
  encodeValue = encodeRos1Mycobot_communicationSetCoordsResponse
  readValue = readRos1Mycobot_communicationSetCoordsResponse
-- | \@brief Complete ROS 1 mypalletizer_communication/MypalAngles value.
-- \@details All 4 declared fields are retained in source order. The canonical representation occupies
-- 16..16 bytes and is identified by
-- UWVMROS1_1d45a33e05e948c1b58988c84afe359138c896119f82da0d737377f0272892d9.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Mypalletizer_communicationMypalAngles = Ros1Mypalletizer_communicationMypalAngles
  {
    -- | \@brief mypalletizer_communication/MypalAngles.joint_1: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationMypalAngles_joint_1 :: Float
  ,
    -- | \@brief mypalletizer_communication/MypalAngles.joint_2: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationMypalAngles_joint_2 :: Float
  ,
    -- | \@brief mypalletizer_communication/MypalAngles.joint_3: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationMypalAngles_joint_3 :: Float
  ,
    -- | \@brief mypalletizer_communication/MypalAngles.joint_4: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationMypalAngles_joint_4 :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mypalletizer_communication/MypalAngles.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Mypalletizer_communicationMypalAngles :: Ros1Mypalletizer_communicationMypalAngles
defaultRos1Mypalletizer_communicationMypalAngles = Ros1Mypalletizer_communicationMypalAngles (0) (0) (0) (0)
-- | \@brief Canonical codec identity of mypalletizer_communication/MypalAngles.
-- \@details Exact identity UWVMROS1_1d45a33e05e948c1b58988c84afe359138c896119f82da0d737377f0272892d9
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/haskell/API-CONTRACT.md
ros1Mypalletizer_communicationMypalAnglesCodecIdentity :: String
-- | \@brief Canonical codec identity of mypalletizer_communication/MypalAngles.
-- \@details Exact identity UWVMROS1_1d45a33e05e948c1b58988c84afe359138c896119f82da0d737377f0272892d9
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/haskell/API-CONTRACT.md
ros1Mypalletizer_communicationMypalAnglesCodecIdentity = "UWVMROS1_1d45a33e05e948c1b58988c84afe359138c896119f82da0d737377f0272892d9"
-- | \@brief Encode one complete mypalletizer_communication/MypalAngles value.
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
-- \@see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Mypalletizer_communicationMypalAngles :: Ros1Mypalletizer_communicationMypalAngles -> Either Word32 B.ByteString
encodeRos1Mypalletizer_communicationMypalAngles value = do
  b0 <- W.encodeFloat32 (ros1Mypalletizer_communicationMypalAngles_joint_1 value)
  b1 <- W.encodeFloat32 (ros1Mypalletizer_communicationMypalAngles_joint_2 value)
  b2 <- W.encodeFloat32 (ros1Mypalletizer_communicationMypalAngles_joint_3 value)
  b3 <- W.encodeFloat32 (ros1Mypalletizer_communicationMypalAngles_joint_4 value)
  W.bounded 16 [b0, b1, b2, b3]
-- | \@brief Read the ordered canonical fields of mypalletizer_communication/MypalAngles.
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
-- \@see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/haskell/API-CONTRACT.md
readRos1Mypalletizer_communicationMypalAngles :: W.Decoder Ros1Mypalletizer_communicationMypalAngles
readRos1Mypalletizer_communicationMypalAngles = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  let value = Ros1Mypalletizer_communicationMypalAngles a0 a1 a2 a3
  case encodeRos1Mypalletizer_communicationMypalAngles value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mypalletizer_communication/MypalAngles value.
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
-- \@see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Mypalletizer_communicationMypalAngles :: B.ByteString -> Either Word32 Ros1Mypalletizer_communicationMypalAngles
decodeRos1Mypalletizer_communicationMypalAngles = W.runDecoder 16 readRos1Mypalletizer_communicationMypalAngles
instance Canonical Ros1Mypalletizer_communicationMypalAngles where
  maximumBytes _ = 16
  encodeValue = encodeRos1Mypalletizer_communicationMypalAngles
  readValue = readRos1Mypalletizer_communicationMypalAngles
-- | \@brief Complete ROS 1 mypalletizer_communication/MypalCoords value.
-- \@details All 4 declared fields are retained in source order. The canonical representation occupies
-- 16..16 bytes and is identified by
-- UWVMROS1_c542d1a1a71224901044bc38ca2934021d811417c7c6937ca194995f67e59b80.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Mypalletizer_communicationMypalCoords = Ros1Mypalletizer_communicationMypalCoords
  {
    -- | \@brief mypalletizer_communication/MypalCoords.x: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationMypalCoords_x :: Float
  ,
    -- | \@brief mypalletizer_communication/MypalCoords.y: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationMypalCoords_y :: Float
  ,
    -- | \@brief mypalletizer_communication/MypalCoords.z: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationMypalCoords_z :: Float
  ,
    -- | \@brief mypalletizer_communication/MypalCoords.rx: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationMypalCoords_rx :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mypalletizer_communication/MypalCoords.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Mypalletizer_communicationMypalCoords :: Ros1Mypalletizer_communicationMypalCoords
defaultRos1Mypalletizer_communicationMypalCoords = Ros1Mypalletizer_communicationMypalCoords (0) (0) (0) (0)
-- | \@brief Canonical codec identity of mypalletizer_communication/MypalCoords.
-- \@details Exact identity UWVMROS1_c542d1a1a71224901044bc38ca2934021d811417c7c6937ca194995f67e59b80
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/haskell/API-CONTRACT.md
ros1Mypalletizer_communicationMypalCoordsCodecIdentity :: String
-- | \@brief Canonical codec identity of mypalletizer_communication/MypalCoords.
-- \@details Exact identity UWVMROS1_c542d1a1a71224901044bc38ca2934021d811417c7c6937ca194995f67e59b80
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/haskell/API-CONTRACT.md
ros1Mypalletizer_communicationMypalCoordsCodecIdentity = "UWVMROS1_c542d1a1a71224901044bc38ca2934021d811417c7c6937ca194995f67e59b80"
-- | \@brief Encode one complete mypalletizer_communication/MypalCoords value.
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
-- \@see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Mypalletizer_communicationMypalCoords :: Ros1Mypalletizer_communicationMypalCoords -> Either Word32 B.ByteString
encodeRos1Mypalletizer_communicationMypalCoords value = do
  b0 <- W.encodeFloat32 (ros1Mypalletizer_communicationMypalCoords_x value)
  b1 <- W.encodeFloat32 (ros1Mypalletizer_communicationMypalCoords_y value)
  b2 <- W.encodeFloat32 (ros1Mypalletizer_communicationMypalCoords_z value)
  b3 <- W.encodeFloat32 (ros1Mypalletizer_communicationMypalCoords_rx value)
  W.bounded 16 [b0, b1, b2, b3]
-- | \@brief Read the ordered canonical fields of mypalletizer_communication/MypalCoords.
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
-- \@see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/haskell/API-CONTRACT.md
readRos1Mypalletizer_communicationMypalCoords :: W.Decoder Ros1Mypalletizer_communicationMypalCoords
readRos1Mypalletizer_communicationMypalCoords = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  let value = Ros1Mypalletizer_communicationMypalCoords a0 a1 a2 a3
  case encodeRos1Mypalletizer_communicationMypalCoords value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mypalletizer_communication/MypalCoords value.
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
-- \@see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Mypalletizer_communicationMypalCoords :: B.ByteString -> Either Word32 Ros1Mypalletizer_communicationMypalCoords
decodeRos1Mypalletizer_communicationMypalCoords = W.runDecoder 16 readRos1Mypalletizer_communicationMypalCoords
instance Canonical Ros1Mypalletizer_communicationMypalCoords where
  maximumBytes _ = 16
  encodeValue = encodeRos1Mypalletizer_communicationMypalCoords
  readValue = readRos1Mypalletizer_communicationMypalCoords
-- | \@brief Complete ROS 1 mypalletizer_communication/MypalGripperStatus value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_e37f608d4499ab2ed49618fc244831d274fadb23bd408d42619e3f8409ad2ee6.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Mypalletizer_communicationMypalGripperStatus = Ros1Mypalletizer_communicationMypalGripperStatus
  {
    -- | \@brief mypalletizer_communication/MypalGripperStatus.Status: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationMypalGripperStatus_Status :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mypalletizer_communication/MypalGripperStatus.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Mypalletizer_communicationMypalGripperStatus :: Ros1Mypalletizer_communicationMypalGripperStatus
defaultRos1Mypalletizer_communicationMypalGripperStatus =
  Ros1Mypalletizer_communicationMypalGripperStatus
    (False)
-- | \@brief Canonical codec identity of mypalletizer_communication/MypalGripperStatus.
-- \@details Exact identity UWVMROS1_e37f608d4499ab2ed49618fc244831d274fadb23bd408d42619e3f8409ad2ee6
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
ros1Mypalletizer_communicationMypalGripperStatusCodecIdentity :: String
-- | \@brief Canonical codec identity of mypalletizer_communication/MypalGripperStatus.
-- \@details Exact identity UWVMROS1_e37f608d4499ab2ed49618fc244831d274fadb23bd408d42619e3f8409ad2ee6
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
ros1Mypalletizer_communicationMypalGripperStatusCodecIdentity = "UWVMROS1_e37f608d4499ab2ed49618fc244831d274fadb23bd408d42619e3f8409ad2ee6"
-- | \@brief Encode one complete mypalletizer_communication/MypalGripperStatus value.
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
-- \@see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Mypalletizer_communicationMypalGripperStatus :: Ros1Mypalletizer_communicationMypalGripperStatus -> Either Word32 B.ByteString
encodeRos1Mypalletizer_communicationMypalGripperStatus value = do
  b0 <- W.encodeBool (ros1Mypalletizer_communicationMypalGripperStatus_Status value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of mypalletizer_communication/MypalGripperStatus.
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
-- \@see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
readRos1Mypalletizer_communicationMypalGripperStatus :: W.Decoder Ros1Mypalletizer_communicationMypalGripperStatus
readRos1Mypalletizer_communicationMypalGripperStatus = do
  a0 <- W.boolean
  let value = Ros1Mypalletizer_communicationMypalGripperStatus a0
  case encodeRos1Mypalletizer_communicationMypalGripperStatus value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mypalletizer_communication/MypalGripperStatus value.
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
-- \@see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Mypalletizer_communicationMypalGripperStatus :: B.ByteString -> Either Word32 Ros1Mypalletizer_communicationMypalGripperStatus
decodeRos1Mypalletizer_communicationMypalGripperStatus = W.runDecoder 1 readRos1Mypalletizer_communicationMypalGripperStatus
instance Canonical Ros1Mypalletizer_communicationMypalGripperStatus where
  maximumBytes _ = 1
  encodeValue = encodeRos1Mypalletizer_communicationMypalGripperStatus
  readValue = readRos1Mypalletizer_communicationMypalGripperStatus
-- | \@brief Complete ROS 1 mypalletizer_communication/MypalPumpStatus value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies
-- 3..3 bytes and is identified by
-- UWVMROS1_cdf79e610b5d49b7f73857e02c64688a71517f2fe8e3a96739b16a53ad4d0ebc.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Mypalletizer_communicationMypalPumpStatus = Ros1Mypalletizer_communicationMypalPumpStatus
  {
    -- | \@brief mypalletizer_communication/MypalPumpStatus.Status: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationMypalPumpStatus_Status :: Bool
  ,
    -- | \@brief mypalletizer_communication/MypalPumpStatus.Pin1: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationMypalPumpStatus_Pin1 :: Int8
  ,
    -- | \@brief mypalletizer_communication/MypalPumpStatus.Pin2: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationMypalPumpStatus_Pin2 :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mypalletizer_communication/MypalPumpStatus.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Mypalletizer_communicationMypalPumpStatus :: Ros1Mypalletizer_communicationMypalPumpStatus
defaultRos1Mypalletizer_communicationMypalPumpStatus =
  Ros1Mypalletizer_communicationMypalPumpStatus
    (False)
    (0)
    (0)
-- | \@brief Canonical codec identity of mypalletizer_communication/MypalPumpStatus.
-- \@details Exact identity UWVMROS1_cdf79e610b5d49b7f73857e02c64688a71517f2fe8e3a96739b16a53ad4d0ebc
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
ros1Mypalletizer_communicationMypalPumpStatusCodecIdentity :: String
-- | \@brief Canonical codec identity of mypalletizer_communication/MypalPumpStatus.
-- \@details Exact identity UWVMROS1_cdf79e610b5d49b7f73857e02c64688a71517f2fe8e3a96739b16a53ad4d0ebc
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
ros1Mypalletizer_communicationMypalPumpStatusCodecIdentity = "UWVMROS1_cdf79e610b5d49b7f73857e02c64688a71517f2fe8e3a96739b16a53ad4d0ebc"
-- | \@brief Encode one complete mypalletizer_communication/MypalPumpStatus value.
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
-- \@see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Mypalletizer_communicationMypalPumpStatus :: Ros1Mypalletizer_communicationMypalPumpStatus -> Either Word32 B.ByteString
encodeRos1Mypalletizer_communicationMypalPumpStatus value = do
  b0 <- W.encodeBool (ros1Mypalletizer_communicationMypalPumpStatus_Status value)
  b1 <- W.encodeSigned 1 (fromIntegral (ros1Mypalletizer_communicationMypalPumpStatus_Pin1 value))
  b2 <- W.encodeSigned 1 (fromIntegral (ros1Mypalletizer_communicationMypalPumpStatus_Pin2 value))
  W.bounded 3 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of mypalletizer_communication/MypalPumpStatus.
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
-- \@see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
readRos1Mypalletizer_communicationMypalPumpStatus :: W.Decoder Ros1Mypalletizer_communicationMypalPumpStatus
readRos1Mypalletizer_communicationMypalPumpStatus = do
  a0 <- W.boolean
  a1 <- fromIntegral <$> W.signed 1
  a2 <- fromIntegral <$> W.signed 1
  let value = Ros1Mypalletizer_communicationMypalPumpStatus a0 a1 a2
  case encodeRos1Mypalletizer_communicationMypalPumpStatus value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mypalletizer_communication/MypalPumpStatus value.
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
-- \@see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Mypalletizer_communicationMypalPumpStatus :: B.ByteString -> Either Word32 Ros1Mypalletizer_communicationMypalPumpStatus
decodeRos1Mypalletizer_communicationMypalPumpStatus = W.runDecoder 3 readRos1Mypalletizer_communicationMypalPumpStatus
instance Canonical Ros1Mypalletizer_communicationMypalPumpStatus where
  maximumBytes _ = 3
  encodeValue = encodeRos1Mypalletizer_communicationMypalPumpStatus
  readValue = readRos1Mypalletizer_communicationMypalPumpStatus
-- | \@brief Complete ROS 1 mypalletizer_communication/MypalSetAngles value.
-- \@details All 5 declared fields are retained in source order. The canonical representation occupies
-- 17..17 bytes and is identified by
-- UWVMROS1_8d11ba2c705bd577a329a01d039b831162742efe790c93b6c2c2631699d04f98.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Mypalletizer_communicationMypalSetAngles = Ros1Mypalletizer_communicationMypalSetAngles
  {
    -- | \@brief mypalletizer_communication/MypalSetAngles.joint_1: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationMypalSetAngles_joint_1 :: Float
  ,
    -- | \@brief mypalletizer_communication/MypalSetAngles.joint_2: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationMypalSetAngles_joint_2 :: Float
  ,
    -- | \@brief mypalletizer_communication/MypalSetAngles.joint_3: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationMypalSetAngles_joint_3 :: Float
  ,
    -- | \@brief mypalletizer_communication/MypalSetAngles.joint_4: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationMypalSetAngles_joint_4 :: Float
  ,
    -- | \@brief mypalletizer_communication/MypalSetAngles.speed: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationMypalSetAngles_speed :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mypalletizer_communication/MypalSetAngles.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Mypalletizer_communicationMypalSetAngles :: Ros1Mypalletizer_communicationMypalSetAngles
defaultRos1Mypalletizer_communicationMypalSetAngles =
  Ros1Mypalletizer_communicationMypalSetAngles
    (0)
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mypalletizer_communication/MypalSetAngles.
-- \@details Exact identity UWVMROS1_8d11ba2c705bd577a329a01d039b831162742efe790c93b6c2c2631699d04f98
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/haskell/API-CONTRACT.md
ros1Mypalletizer_communicationMypalSetAnglesCodecIdentity :: String
-- | \@brief Canonical codec identity of mypalletizer_communication/MypalSetAngles.
-- \@details Exact identity UWVMROS1_8d11ba2c705bd577a329a01d039b831162742efe790c93b6c2c2631699d04f98
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/haskell/API-CONTRACT.md
ros1Mypalletizer_communicationMypalSetAnglesCodecIdentity = "UWVMROS1_8d11ba2c705bd577a329a01d039b831162742efe790c93b6c2c2631699d04f98"
-- | \@brief Encode one complete mypalletizer_communication/MypalSetAngles value.
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
-- \@see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Mypalletizer_communicationMypalSetAngles :: Ros1Mypalletizer_communicationMypalSetAngles -> Either Word32 B.ByteString
encodeRos1Mypalletizer_communicationMypalSetAngles value = do
  b0 <- W.encodeFloat32 (ros1Mypalletizer_communicationMypalSetAngles_joint_1 value)
  b1 <- W.encodeFloat32 (ros1Mypalletizer_communicationMypalSetAngles_joint_2 value)
  b2 <- W.encodeFloat32 (ros1Mypalletizer_communicationMypalSetAngles_joint_3 value)
  b3 <- W.encodeFloat32 (ros1Mypalletizer_communicationMypalSetAngles_joint_4 value)
  b4 <- W.encodeSigned 1 (fromIntegral (ros1Mypalletizer_communicationMypalSetAngles_speed value))
  W.bounded 17 [b0, b1, b2, b3, b4]
-- | \@brief Read the ordered canonical fields of mypalletizer_communication/MypalSetAngles.
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
-- \@see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/haskell/API-CONTRACT.md
readRos1Mypalletizer_communicationMypalSetAngles :: W.Decoder Ros1Mypalletizer_communicationMypalSetAngles
readRos1Mypalletizer_communicationMypalSetAngles = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- fromIntegral <$> W.signed 1
  let value = Ros1Mypalletizer_communicationMypalSetAngles a0 a1 a2 a3 a4
  case encodeRos1Mypalletizer_communicationMypalSetAngles value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mypalletizer_communication/MypalSetAngles value.
-- \@details Require the complete 17..17-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Mypalletizer_communicationMypalSetAngles :: B.ByteString -> Either Word32 Ros1Mypalletizer_communicationMypalSetAngles
decodeRos1Mypalletizer_communicationMypalSetAngles = W.runDecoder 17 readRos1Mypalletizer_communicationMypalSetAngles
instance Canonical Ros1Mypalletizer_communicationMypalSetAngles where
  maximumBytes _ = 17
  encodeValue = encodeRos1Mypalletizer_communicationMypalSetAngles
  readValue = readRos1Mypalletizer_communicationMypalSetAngles
-- | \@brief Complete ROS 1 mypalletizer_communication/MypalSetCoords value.
-- \@details All 6 declared fields are retained in source order. The canonical representation occupies
-- 18..18 bytes and is identified by
-- UWVMROS1_51a2d485c8d2252f184eb27724e88c1ae06002d54454bd8ebf31962a79f7c448.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Mypalletizer_communicationMypalSetCoords = Ros1Mypalletizer_communicationMypalSetCoords
  {
    -- | \@brief mypalletizer_communication/MypalSetCoords.x: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationMypalSetCoords_x :: Float
  ,
    -- | \@brief mypalletizer_communication/MypalSetCoords.y: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationMypalSetCoords_y :: Float
  ,
    -- | \@brief mypalletizer_communication/MypalSetCoords.z: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationMypalSetCoords_z :: Float
  ,
    -- | \@brief mypalletizer_communication/MypalSetCoords.rx: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationMypalSetCoords_rx :: Float
  ,
    -- | \@brief mypalletizer_communication/MypalSetCoords.speed: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationMypalSetCoords_speed :: Int8
  ,
    -- | \@brief mypalletizer_communication/MypalSetCoords.model: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationMypalSetCoords_model :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mypalletizer_communication/MypalSetCoords.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Mypalletizer_communicationMypalSetCoords :: Ros1Mypalletizer_communicationMypalSetCoords
defaultRos1Mypalletizer_communicationMypalSetCoords =
  Ros1Mypalletizer_communicationMypalSetCoords
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mypalletizer_communication/MypalSetCoords.
-- \@details Exact identity UWVMROS1_51a2d485c8d2252f184eb27724e88c1ae06002d54454bd8ebf31962a79f7c448
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/haskell/API-CONTRACT.md
ros1Mypalletizer_communicationMypalSetCoordsCodecIdentity :: String
-- | \@brief Canonical codec identity of mypalletizer_communication/MypalSetCoords.
-- \@details Exact identity UWVMROS1_51a2d485c8d2252f184eb27724e88c1ae06002d54454bd8ebf31962a79f7c448
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/haskell/API-CONTRACT.md
ros1Mypalletizer_communicationMypalSetCoordsCodecIdentity = "UWVMROS1_51a2d485c8d2252f184eb27724e88c1ae06002d54454bd8ebf31962a79f7c448"
-- | \@brief Encode one complete mypalletizer_communication/MypalSetCoords value.
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
-- \@see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Mypalletizer_communicationMypalSetCoords :: Ros1Mypalletizer_communicationMypalSetCoords -> Either Word32 B.ByteString
encodeRos1Mypalletizer_communicationMypalSetCoords value = do
  b0 <- W.encodeFloat32 (ros1Mypalletizer_communicationMypalSetCoords_x value)
  b1 <- W.encodeFloat32 (ros1Mypalletizer_communicationMypalSetCoords_y value)
  b2 <- W.encodeFloat32 (ros1Mypalletizer_communicationMypalSetCoords_z value)
  b3 <- W.encodeFloat32 (ros1Mypalletizer_communicationMypalSetCoords_rx value)
  b4 <- W.encodeSigned 1 (fromIntegral (ros1Mypalletizer_communicationMypalSetCoords_speed value))
  b5 <- W.encodeSigned 1 (fromIntegral (ros1Mypalletizer_communicationMypalSetCoords_model value))
  W.bounded 18 [b0, b1, b2, b3, b4, b5]
-- | \@brief Read the ordered canonical fields of mypalletizer_communication/MypalSetCoords.
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
-- \@see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/haskell/API-CONTRACT.md
readRos1Mypalletizer_communicationMypalSetCoords :: W.Decoder Ros1Mypalletizer_communicationMypalSetCoords
readRos1Mypalletizer_communicationMypalSetCoords = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- fromIntegral <$> W.signed 1
  a5 <- fromIntegral <$> W.signed 1
  let value = Ros1Mypalletizer_communicationMypalSetCoords a0 a1 a2 a3 a4 a5
  case encodeRos1Mypalletizer_communicationMypalSetCoords value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mypalletizer_communication/MypalSetCoords value.
-- \@details Require the complete 18..18-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Mypalletizer_communicationMypalSetCoords :: B.ByteString -> Either Word32 Ros1Mypalletizer_communicationMypalSetCoords
decodeRos1Mypalletizer_communicationMypalSetCoords = W.runDecoder 18 readRos1Mypalletizer_communicationMypalSetCoords
instance Canonical Ros1Mypalletizer_communicationMypalSetCoords where
  maximumBytes _ = 18
  encodeValue = encodeRos1Mypalletizer_communicationMypalSetCoords
  readValue = readRos1Mypalletizer_communicationMypalSetCoords
-- | \@brief Complete ROS 1 mypalletizer_communication/GetAnglesRequest value.
-- \@details All 0 declared fields are retained in source order. The canonical representation occupies
-- 0..0 bytes and is identified by
-- UWVMROS1_d0412d8ccc8f724f2a0660d20e24a39f6445f0cb433e775058b6b092fde65de8.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Mypalletizer_communicationGetAnglesRequest = Ros1Mypalletizer_communicationGetAnglesRequest deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mypalletizer_communication/GetAnglesRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Mypalletizer_communicationGetAnglesRequest :: Ros1Mypalletizer_communicationGetAnglesRequest
defaultRos1Mypalletizer_communicationGetAnglesRequest = Ros1Mypalletizer_communicationGetAnglesRequest 
-- | \@brief Canonical codec identity of mypalletizer_communication/GetAnglesRequest.
-- \@details Exact identity UWVMROS1_d0412d8ccc8f724f2a0660d20e24a39f6445f0cb433e775058b6b092fde65de8
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Mypalletizer_communicationGetAnglesRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of mypalletizer_communication/GetAnglesRequest.
-- \@details Exact identity UWVMROS1_d0412d8ccc8f724f2a0660d20e24a39f6445f0cb433e775058b6b092fde65de8
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Mypalletizer_communicationGetAnglesRequestCodecIdentity = "UWVMROS1_d0412d8ccc8f724f2a0660d20e24a39f6445f0cb433e775058b6b092fde65de8"
-- | \@brief Encode one complete mypalletizer_communication/GetAnglesRequest value.
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
-- \@see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Mypalletizer_communicationGetAnglesRequest :: Ros1Mypalletizer_communicationGetAnglesRequest -> Either Word32 B.ByteString
encodeRos1Mypalletizer_communicationGetAnglesRequest value = do
  W.bounded 0 []
-- | \@brief Read the ordered canonical fields of mypalletizer_communication/GetAnglesRequest.
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
-- \@see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Mypalletizer_communicationGetAnglesRequest :: W.Decoder Ros1Mypalletizer_communicationGetAnglesRequest
readRos1Mypalletizer_communicationGetAnglesRequest = do
  let value = Ros1Mypalletizer_communicationGetAnglesRequest 
  case encodeRos1Mypalletizer_communicationGetAnglesRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mypalletizer_communication/GetAnglesRequest value.
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
-- \@see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Mypalletizer_communicationGetAnglesRequest :: B.ByteString -> Either Word32 Ros1Mypalletizer_communicationGetAnglesRequest
decodeRos1Mypalletizer_communicationGetAnglesRequest = W.runDecoder 0 readRos1Mypalletizer_communicationGetAnglesRequest
instance Canonical Ros1Mypalletizer_communicationGetAnglesRequest where
  maximumBytes _ = 0
  encodeValue = encodeRos1Mypalletizer_communicationGetAnglesRequest
  readValue = readRos1Mypalletizer_communicationGetAnglesRequest
-- | \@brief Complete ROS 1 mypalletizer_communication/GetAnglesResponse value.
-- \@details All 4 declared fields are retained in source order. The canonical representation occupies
-- 16..16 bytes and is identified by
-- UWVMROS1_cb5a18aec2420c030d8193eb40d25691a2491b98606a7722156984e82f77f745.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Mypalletizer_communicationGetAnglesResponse = Ros1Mypalletizer_communicationGetAnglesResponse
  {
    -- | \@brief mypalletizer_communication/GetAnglesResponse.joint_1: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationGetAnglesResponse_joint_1 :: Float
  ,
    -- | \@brief mypalletizer_communication/GetAnglesResponse.joint_2: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationGetAnglesResponse_joint_2 :: Float
  ,
    -- | \@brief mypalletizer_communication/GetAnglesResponse.joint_3: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationGetAnglesResponse_joint_3 :: Float
  ,
    -- | \@brief mypalletizer_communication/GetAnglesResponse.joint_4: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationGetAnglesResponse_joint_4 :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mypalletizer_communication/GetAnglesResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Mypalletizer_communicationGetAnglesResponse :: Ros1Mypalletizer_communicationGetAnglesResponse
defaultRos1Mypalletizer_communicationGetAnglesResponse =
  Ros1Mypalletizer_communicationGetAnglesResponse
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mypalletizer_communication/GetAnglesResponse.
-- \@details Exact identity UWVMROS1_cb5a18aec2420c030d8193eb40d25691a2491b98606a7722156984e82f77f745
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Mypalletizer_communicationGetAnglesResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of mypalletizer_communication/GetAnglesResponse.
-- \@details Exact identity UWVMROS1_cb5a18aec2420c030d8193eb40d25691a2491b98606a7722156984e82f77f745
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Mypalletizer_communicationGetAnglesResponseCodecIdentity = "UWVMROS1_cb5a18aec2420c030d8193eb40d25691a2491b98606a7722156984e82f77f745"
-- | \@brief Encode one complete mypalletizer_communication/GetAnglesResponse value.
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
-- \@see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Mypalletizer_communicationGetAnglesResponse :: Ros1Mypalletizer_communicationGetAnglesResponse -> Either Word32 B.ByteString
encodeRos1Mypalletizer_communicationGetAnglesResponse value = do
  b0 <- W.encodeFloat32 (ros1Mypalletizer_communicationGetAnglesResponse_joint_1 value)
  b1 <- W.encodeFloat32 (ros1Mypalletizer_communicationGetAnglesResponse_joint_2 value)
  b2 <- W.encodeFloat32 (ros1Mypalletizer_communicationGetAnglesResponse_joint_3 value)
  b3 <- W.encodeFloat32 (ros1Mypalletizer_communicationGetAnglesResponse_joint_4 value)
  W.bounded 16 [b0, b1, b2, b3]
-- | \@brief Read the ordered canonical fields of mypalletizer_communication/GetAnglesResponse.
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
-- \@see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Mypalletizer_communicationGetAnglesResponse :: W.Decoder Ros1Mypalletizer_communicationGetAnglesResponse
readRos1Mypalletizer_communicationGetAnglesResponse = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  let value = Ros1Mypalletizer_communicationGetAnglesResponse a0 a1 a2 a3
  case encodeRos1Mypalletizer_communicationGetAnglesResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mypalletizer_communication/GetAnglesResponse value.
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
-- \@see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Mypalletizer_communicationGetAnglesResponse :: B.ByteString -> Either Word32 Ros1Mypalletizer_communicationGetAnglesResponse
decodeRos1Mypalletizer_communicationGetAnglesResponse = W.runDecoder 16 readRos1Mypalletizer_communicationGetAnglesResponse
instance Canonical Ros1Mypalletizer_communicationGetAnglesResponse where
  maximumBytes _ = 16
  encodeValue = encodeRos1Mypalletizer_communicationGetAnglesResponse
  readValue = readRos1Mypalletizer_communicationGetAnglesResponse
-- | \@brief Complete ROS 1 mypalletizer_communication/GetCoordsRequest value.
-- \@details All 0 declared fields are retained in source order. The canonical representation occupies
-- 0..0 bytes and is identified by
-- UWVMROS1_47d45419f14ce576d9e8c2bb288c7b67bb161115e7b99a2c4752d09cbb8087b8.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Mypalletizer_communicationGetCoordsRequest = Ros1Mypalletizer_communicationGetCoordsRequest deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mypalletizer_communication/GetCoordsRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Mypalletizer_communicationGetCoordsRequest :: Ros1Mypalletizer_communicationGetCoordsRequest
defaultRos1Mypalletizer_communicationGetCoordsRequest = Ros1Mypalletizer_communicationGetCoordsRequest 
-- | \@brief Canonical codec identity of mypalletizer_communication/GetCoordsRequest.
-- \@details Exact identity UWVMROS1_47d45419f14ce576d9e8c2bb288c7b67bb161115e7b99a2c4752d09cbb8087b8
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Mypalletizer_communicationGetCoordsRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of mypalletizer_communication/GetCoordsRequest.
-- \@details Exact identity UWVMROS1_47d45419f14ce576d9e8c2bb288c7b67bb161115e7b99a2c4752d09cbb8087b8
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Mypalletizer_communicationGetCoordsRequestCodecIdentity = "UWVMROS1_47d45419f14ce576d9e8c2bb288c7b67bb161115e7b99a2c4752d09cbb8087b8"
-- | \@brief Encode one complete mypalletizer_communication/GetCoordsRequest value.
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
-- \@see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Mypalletizer_communicationGetCoordsRequest :: Ros1Mypalletizer_communicationGetCoordsRequest -> Either Word32 B.ByteString
encodeRos1Mypalletizer_communicationGetCoordsRequest value = do
  W.bounded 0 []
-- | \@brief Read the ordered canonical fields of mypalletizer_communication/GetCoordsRequest.
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
-- \@see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Mypalletizer_communicationGetCoordsRequest :: W.Decoder Ros1Mypalletizer_communicationGetCoordsRequest
readRos1Mypalletizer_communicationGetCoordsRequest = do
  let value = Ros1Mypalletizer_communicationGetCoordsRequest 
  case encodeRos1Mypalletizer_communicationGetCoordsRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mypalletizer_communication/GetCoordsRequest value.
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
-- \@see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Mypalletizer_communicationGetCoordsRequest :: B.ByteString -> Either Word32 Ros1Mypalletizer_communicationGetCoordsRequest
decodeRos1Mypalletizer_communicationGetCoordsRequest = W.runDecoder 0 readRos1Mypalletizer_communicationGetCoordsRequest
instance Canonical Ros1Mypalletizer_communicationGetCoordsRequest where
  maximumBytes _ = 0
  encodeValue = encodeRos1Mypalletizer_communicationGetCoordsRequest
  readValue = readRos1Mypalletizer_communicationGetCoordsRequest
-- | \@brief Complete ROS 1 mypalletizer_communication/GetCoordsResponse value.
-- \@details All 4 declared fields are retained in source order. The canonical representation occupies
-- 16..16 bytes and is identified by
-- UWVMROS1_7fdad367484b5f89c812c2513e99373844dcd160a115e326fb1c597f221b53fb.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Mypalletizer_communicationGetCoordsResponse = Ros1Mypalletizer_communicationGetCoordsResponse
  {
    -- | \@brief mypalletizer_communication/GetCoordsResponse.x: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationGetCoordsResponse_x :: Float
  ,
    -- | \@brief mypalletizer_communication/GetCoordsResponse.y: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationGetCoordsResponse_y :: Float
  ,
    -- | \@brief mypalletizer_communication/GetCoordsResponse.z: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationGetCoordsResponse_z :: Float
  ,
    -- | \@brief mypalletizer_communication/GetCoordsResponse.rx: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationGetCoordsResponse_rx :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mypalletizer_communication/GetCoordsResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Mypalletizer_communicationGetCoordsResponse :: Ros1Mypalletizer_communicationGetCoordsResponse
defaultRos1Mypalletizer_communicationGetCoordsResponse =
  Ros1Mypalletizer_communicationGetCoordsResponse
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mypalletizer_communication/GetCoordsResponse.
-- \@details Exact identity UWVMROS1_7fdad367484b5f89c812c2513e99373844dcd160a115e326fb1c597f221b53fb
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Mypalletizer_communicationGetCoordsResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of mypalletizer_communication/GetCoordsResponse.
-- \@details Exact identity UWVMROS1_7fdad367484b5f89c812c2513e99373844dcd160a115e326fb1c597f221b53fb
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Mypalletizer_communicationGetCoordsResponseCodecIdentity = "UWVMROS1_7fdad367484b5f89c812c2513e99373844dcd160a115e326fb1c597f221b53fb"
-- | \@brief Encode one complete mypalletizer_communication/GetCoordsResponse value.
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
-- \@see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Mypalletizer_communicationGetCoordsResponse :: Ros1Mypalletizer_communicationGetCoordsResponse -> Either Word32 B.ByteString
encodeRos1Mypalletizer_communicationGetCoordsResponse value = do
  b0 <- W.encodeFloat32 (ros1Mypalletizer_communicationGetCoordsResponse_x value)
  b1 <- W.encodeFloat32 (ros1Mypalletizer_communicationGetCoordsResponse_y value)
  b2 <- W.encodeFloat32 (ros1Mypalletizer_communicationGetCoordsResponse_z value)
  b3 <- W.encodeFloat32 (ros1Mypalletizer_communicationGetCoordsResponse_rx value)
  W.bounded 16 [b0, b1, b2, b3]
-- | \@brief Read the ordered canonical fields of mypalletizer_communication/GetCoordsResponse.
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
-- \@see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Mypalletizer_communicationGetCoordsResponse :: W.Decoder Ros1Mypalletizer_communicationGetCoordsResponse
readRos1Mypalletizer_communicationGetCoordsResponse = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  let value = Ros1Mypalletizer_communicationGetCoordsResponse a0 a1 a2 a3
  case encodeRos1Mypalletizer_communicationGetCoordsResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mypalletizer_communication/GetCoordsResponse value.
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
-- \@see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Mypalletizer_communicationGetCoordsResponse :: B.ByteString -> Either Word32 Ros1Mypalletizer_communicationGetCoordsResponse
decodeRos1Mypalletizer_communicationGetCoordsResponse = W.runDecoder 16 readRos1Mypalletizer_communicationGetCoordsResponse
instance Canonical Ros1Mypalletizer_communicationGetCoordsResponse where
  maximumBytes _ = 16
  encodeValue = encodeRos1Mypalletizer_communicationGetCoordsResponse
  readValue = readRos1Mypalletizer_communicationGetCoordsResponse
-- | \@brief Complete ROS 1 mypalletizer_communication/GripperStatusRequest value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_48d661f8fd6adfcf1703123464fcfb9351f8f831c0779ffad103a63bcf7ea709.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Mypalletizer_communicationGripperStatusRequest = Ros1Mypalletizer_communicationGripperStatusRequest
  {
    -- | \@brief mypalletizer_communication/GripperStatusRequest.Status: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationGripperStatusRequest_Status :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mypalletizer_communication/GripperStatusRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Mypalletizer_communicationGripperStatusRequest :: Ros1Mypalletizer_communicationGripperStatusRequest
defaultRos1Mypalletizer_communicationGripperStatusRequest =
  Ros1Mypalletizer_communicationGripperStatusRequest
    (False)
-- | \@brief Canonical codec identity of mypalletizer_communication/GripperStatusRequest.
-- \@details Exact identity UWVMROS1_48d661f8fd6adfcf1703123464fcfb9351f8f831c0779ffad103a63bcf7ea709
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Mypalletizer_communicationGripperStatusRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of mypalletizer_communication/GripperStatusRequest.
-- \@details Exact identity UWVMROS1_48d661f8fd6adfcf1703123464fcfb9351f8f831c0779ffad103a63bcf7ea709
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Mypalletizer_communicationGripperStatusRequestCodecIdentity = "UWVMROS1_48d661f8fd6adfcf1703123464fcfb9351f8f831c0779ffad103a63bcf7ea709"
-- | \@brief Encode one complete mypalletizer_communication/GripperStatusRequest value.
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
-- \@see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Mypalletizer_communicationGripperStatusRequest :: Ros1Mypalletizer_communicationGripperStatusRequest -> Either Word32 B.ByteString
encodeRos1Mypalletizer_communicationGripperStatusRequest value = do
  b0 <- W.encodeBool (ros1Mypalletizer_communicationGripperStatusRequest_Status value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of mypalletizer_communication/GripperStatusRequest.
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
-- \@see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Mypalletizer_communicationGripperStatusRequest :: W.Decoder Ros1Mypalletizer_communicationGripperStatusRequest
readRos1Mypalletizer_communicationGripperStatusRequest = do
  a0 <- W.boolean
  let value = Ros1Mypalletizer_communicationGripperStatusRequest a0
  case encodeRos1Mypalletizer_communicationGripperStatusRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mypalletizer_communication/GripperStatusRequest value.
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
-- \@see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Mypalletizer_communicationGripperStatusRequest :: B.ByteString -> Either Word32 Ros1Mypalletizer_communicationGripperStatusRequest
decodeRos1Mypalletizer_communicationGripperStatusRequest = W.runDecoder 1 readRos1Mypalletizer_communicationGripperStatusRequest
instance Canonical Ros1Mypalletizer_communicationGripperStatusRequest where
  maximumBytes _ = 1
  encodeValue = encodeRos1Mypalletizer_communicationGripperStatusRequest
  readValue = readRos1Mypalletizer_communicationGripperStatusRequest
-- | \@brief Complete ROS 1 mypalletizer_communication/GripperStatusResponse value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_00ab8ceb190b588a9420c2e044da64857cfdb76e709e40e57835ab5732074e2b.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Mypalletizer_communicationGripperStatusResponse = Ros1Mypalletizer_communicationGripperStatusResponse
  {
    -- | \@brief mypalletizer_communication/GripperStatusResponse.Flag: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationGripperStatusResponse_Flag :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mypalletizer_communication/GripperStatusResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Mypalletizer_communicationGripperStatusResponse :: Ros1Mypalletizer_communicationGripperStatusResponse
defaultRos1Mypalletizer_communicationGripperStatusResponse =
  Ros1Mypalletizer_communicationGripperStatusResponse
    (False)
-- | \@brief Canonical codec identity of mypalletizer_communication/GripperStatusResponse.
-- \@details Exact identity UWVMROS1_00ab8ceb190b588a9420c2e044da64857cfdb76e709e40e57835ab5732074e2b
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Mypalletizer_communicationGripperStatusResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of mypalletizer_communication/GripperStatusResponse.
-- \@details Exact identity UWVMROS1_00ab8ceb190b588a9420c2e044da64857cfdb76e709e40e57835ab5732074e2b
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Mypalletizer_communicationGripperStatusResponseCodecIdentity = "UWVMROS1_00ab8ceb190b588a9420c2e044da64857cfdb76e709e40e57835ab5732074e2b"
-- | \@brief Encode one complete mypalletizer_communication/GripperStatusResponse value.
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
-- \@see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Mypalletizer_communicationGripperStatusResponse :: Ros1Mypalletizer_communicationGripperStatusResponse -> Either Word32 B.ByteString
encodeRos1Mypalletizer_communicationGripperStatusResponse value = do
  b0 <- W.encodeBool (ros1Mypalletizer_communicationGripperStatusResponse_Flag value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of mypalletizer_communication/GripperStatusResponse.
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
-- \@see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Mypalletizer_communicationGripperStatusResponse :: W.Decoder Ros1Mypalletizer_communicationGripperStatusResponse
readRos1Mypalletizer_communicationGripperStatusResponse = do
  a0 <- W.boolean
  let value = Ros1Mypalletizer_communicationGripperStatusResponse a0
  case encodeRos1Mypalletizer_communicationGripperStatusResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mypalletizer_communication/GripperStatusResponse value.
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
-- \@see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Mypalletizer_communicationGripperStatusResponse :: B.ByteString -> Either Word32 Ros1Mypalletizer_communicationGripperStatusResponse
decodeRos1Mypalletizer_communicationGripperStatusResponse = W.runDecoder 1 readRos1Mypalletizer_communicationGripperStatusResponse
instance Canonical Ros1Mypalletizer_communicationGripperStatusResponse where
  maximumBytes _ = 1
  encodeValue = encodeRos1Mypalletizer_communicationGripperStatusResponse
  readValue = readRos1Mypalletizer_communicationGripperStatusResponse
-- | \@brief Complete ROS 1 mypalletizer_communication/PumpStatusRequest value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies
-- 3..3 bytes and is identified by
-- UWVMROS1_6dd70636864c4450a066c1d75e67643331fac4c3e1625bce1b94c85ce7a35636.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Mypalletizer_communicationPumpStatusRequest = Ros1Mypalletizer_communicationPumpStatusRequest
  {
    -- | \@brief mypalletizer_communication/PumpStatusRequest.Status: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationPumpStatusRequest_Status :: Bool
  ,
    -- | \@brief mypalletizer_communication/PumpStatusRequest.Pin1: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationPumpStatusRequest_Pin1 :: Int8
  ,
    -- | \@brief mypalletizer_communication/PumpStatusRequest.Pin2: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationPumpStatusRequest_Pin2 :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mypalletizer_communication/PumpStatusRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Mypalletizer_communicationPumpStatusRequest :: Ros1Mypalletizer_communicationPumpStatusRequest
defaultRos1Mypalletizer_communicationPumpStatusRequest =
  Ros1Mypalletizer_communicationPumpStatusRequest
    (False)
    (0)
    (0)
-- | \@brief Canonical codec identity of mypalletizer_communication/PumpStatusRequest.
-- \@details Exact identity UWVMROS1_6dd70636864c4450a066c1d75e67643331fac4c3e1625bce1b94c85ce7a35636
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Mypalletizer_communicationPumpStatusRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of mypalletizer_communication/PumpStatusRequest.
-- \@details Exact identity UWVMROS1_6dd70636864c4450a066c1d75e67643331fac4c3e1625bce1b94c85ce7a35636
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Mypalletizer_communicationPumpStatusRequestCodecIdentity = "UWVMROS1_6dd70636864c4450a066c1d75e67643331fac4c3e1625bce1b94c85ce7a35636"
-- | \@brief Encode one complete mypalletizer_communication/PumpStatusRequest value.
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
-- \@see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Mypalletizer_communicationPumpStatusRequest :: Ros1Mypalletizer_communicationPumpStatusRequest -> Either Word32 B.ByteString
encodeRos1Mypalletizer_communicationPumpStatusRequest value = do
  b0 <- W.encodeBool (ros1Mypalletizer_communicationPumpStatusRequest_Status value)
  b1 <- W.encodeSigned 1 (fromIntegral (ros1Mypalletizer_communicationPumpStatusRequest_Pin1 value))
  b2 <- W.encodeSigned 1 (fromIntegral (ros1Mypalletizer_communicationPumpStatusRequest_Pin2 value))
  W.bounded 3 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of mypalletizer_communication/PumpStatusRequest.
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
-- \@see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Mypalletizer_communicationPumpStatusRequest :: W.Decoder Ros1Mypalletizer_communicationPumpStatusRequest
readRos1Mypalletizer_communicationPumpStatusRequest = do
  a0 <- W.boolean
  a1 <- fromIntegral <$> W.signed 1
  a2 <- fromIntegral <$> W.signed 1
  let value = Ros1Mypalletizer_communicationPumpStatusRequest a0 a1 a2
  case encodeRos1Mypalletizer_communicationPumpStatusRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mypalletizer_communication/PumpStatusRequest value.
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
-- \@see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Mypalletizer_communicationPumpStatusRequest :: B.ByteString -> Either Word32 Ros1Mypalletizer_communicationPumpStatusRequest
decodeRos1Mypalletizer_communicationPumpStatusRequest = W.runDecoder 3 readRos1Mypalletizer_communicationPumpStatusRequest
instance Canonical Ros1Mypalletizer_communicationPumpStatusRequest where
  maximumBytes _ = 3
  encodeValue = encodeRos1Mypalletizer_communicationPumpStatusRequest
  readValue = readRos1Mypalletizer_communicationPumpStatusRequest
-- | \@brief Complete ROS 1 mypalletizer_communication/PumpStatusResponse value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_c2503f89c84c49db8dab2ac9f847ba9d09434d366fd8916a7d5f30ea161bb4c5.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Mypalletizer_communicationPumpStatusResponse = Ros1Mypalletizer_communicationPumpStatusResponse
  {
    -- | \@brief mypalletizer_communication/PumpStatusResponse.Flag: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationPumpStatusResponse_Flag :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mypalletizer_communication/PumpStatusResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Mypalletizer_communicationPumpStatusResponse :: Ros1Mypalletizer_communicationPumpStatusResponse
defaultRos1Mypalletizer_communicationPumpStatusResponse =
  Ros1Mypalletizer_communicationPumpStatusResponse
    (False)
-- | \@brief Canonical codec identity of mypalletizer_communication/PumpStatusResponse.
-- \@details Exact identity UWVMROS1_c2503f89c84c49db8dab2ac9f847ba9d09434d366fd8916a7d5f30ea161bb4c5
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Mypalletizer_communicationPumpStatusResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of mypalletizer_communication/PumpStatusResponse.
-- \@details Exact identity UWVMROS1_c2503f89c84c49db8dab2ac9f847ba9d09434d366fd8916a7d5f30ea161bb4c5
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Mypalletizer_communicationPumpStatusResponseCodecIdentity = "UWVMROS1_c2503f89c84c49db8dab2ac9f847ba9d09434d366fd8916a7d5f30ea161bb4c5"
-- | \@brief Encode one complete mypalletizer_communication/PumpStatusResponse value.
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
-- \@see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Mypalletizer_communicationPumpStatusResponse :: Ros1Mypalletizer_communicationPumpStatusResponse -> Either Word32 B.ByteString
encodeRos1Mypalletizer_communicationPumpStatusResponse value = do
  b0 <- W.encodeBool (ros1Mypalletizer_communicationPumpStatusResponse_Flag value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of mypalletizer_communication/PumpStatusResponse.
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
-- \@see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Mypalletizer_communicationPumpStatusResponse :: W.Decoder Ros1Mypalletizer_communicationPumpStatusResponse
readRos1Mypalletizer_communicationPumpStatusResponse = do
  a0 <- W.boolean
  let value = Ros1Mypalletizer_communicationPumpStatusResponse a0
  case encodeRos1Mypalletizer_communicationPumpStatusResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mypalletizer_communication/PumpStatusResponse value.
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
-- \@see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Mypalletizer_communicationPumpStatusResponse :: B.ByteString -> Either Word32 Ros1Mypalletizer_communicationPumpStatusResponse
decodeRos1Mypalletizer_communicationPumpStatusResponse = W.runDecoder 1 readRos1Mypalletizer_communicationPumpStatusResponse
instance Canonical Ros1Mypalletizer_communicationPumpStatusResponse where
  maximumBytes _ = 1
  encodeValue = encodeRos1Mypalletizer_communicationPumpStatusResponse
  readValue = readRos1Mypalletizer_communicationPumpStatusResponse
-- | \@brief Complete ROS 1 mypalletizer_communication/SetAnglesRequest value.
-- \@details All 5 declared fields are retained in source order. The canonical representation occupies
-- 17..17 bytes and is identified by
-- UWVMROS1_32072510c6deddb3f372b5f300068ea457916a4e0397b30951e421a1da641d5d.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Mypalletizer_communicationSetAnglesRequest = Ros1Mypalletizer_communicationSetAnglesRequest
  {
    -- | \@brief mypalletizer_communication/SetAnglesRequest.joint_1: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationSetAnglesRequest_joint_1 :: Float
  ,
    -- | \@brief mypalletizer_communication/SetAnglesRequest.joint_2: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationSetAnglesRequest_joint_2 :: Float
  ,
    -- | \@brief mypalletizer_communication/SetAnglesRequest.joint_3: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationSetAnglesRequest_joint_3 :: Float
  ,
    -- | \@brief mypalletizer_communication/SetAnglesRequest.joint_4: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationSetAnglesRequest_joint_4 :: Float
  ,
    -- | \@brief mypalletizer_communication/SetAnglesRequest.speed: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationSetAnglesRequest_speed :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mypalletizer_communication/SetAnglesRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Mypalletizer_communicationSetAnglesRequest :: Ros1Mypalletizer_communicationSetAnglesRequest
defaultRos1Mypalletizer_communicationSetAnglesRequest =
  Ros1Mypalletizer_communicationSetAnglesRequest
    (0)
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mypalletizer_communication/SetAnglesRequest.
-- \@details Exact identity UWVMROS1_32072510c6deddb3f372b5f300068ea457916a4e0397b30951e421a1da641d5d
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Mypalletizer_communicationSetAnglesRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of mypalletizer_communication/SetAnglesRequest.
-- \@details Exact identity UWVMROS1_32072510c6deddb3f372b5f300068ea457916a4e0397b30951e421a1da641d5d
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Mypalletizer_communicationSetAnglesRequestCodecIdentity = "UWVMROS1_32072510c6deddb3f372b5f300068ea457916a4e0397b30951e421a1da641d5d"
-- | \@brief Encode one complete mypalletizer_communication/SetAnglesRequest value.
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
-- \@see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Mypalletizer_communicationSetAnglesRequest :: Ros1Mypalletizer_communicationSetAnglesRequest -> Either Word32 B.ByteString
encodeRos1Mypalletizer_communicationSetAnglesRequest value = do
  b0 <- W.encodeFloat32 (ros1Mypalletizer_communicationSetAnglesRequest_joint_1 value)
  b1 <- W.encodeFloat32 (ros1Mypalletizer_communicationSetAnglesRequest_joint_2 value)
  b2 <- W.encodeFloat32 (ros1Mypalletizer_communicationSetAnglesRequest_joint_3 value)
  b3 <- W.encodeFloat32 (ros1Mypalletizer_communicationSetAnglesRequest_joint_4 value)
  b4 <- W.encodeSigned 1 (fromIntegral (ros1Mypalletizer_communicationSetAnglesRequest_speed value))
  W.bounded 17 [b0, b1, b2, b3, b4]
-- | \@brief Read the ordered canonical fields of mypalletizer_communication/SetAnglesRequest.
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
-- \@see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Mypalletizer_communicationSetAnglesRequest :: W.Decoder Ros1Mypalletizer_communicationSetAnglesRequest
readRos1Mypalletizer_communicationSetAnglesRequest = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- fromIntegral <$> W.signed 1
  let value = Ros1Mypalletizer_communicationSetAnglesRequest a0 a1 a2 a3 a4
  case encodeRos1Mypalletizer_communicationSetAnglesRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mypalletizer_communication/SetAnglesRequest value.
-- \@details Require the complete 17..17-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Mypalletizer_communicationSetAnglesRequest :: B.ByteString -> Either Word32 Ros1Mypalletizer_communicationSetAnglesRequest
decodeRos1Mypalletizer_communicationSetAnglesRequest = W.runDecoder 17 readRos1Mypalletizer_communicationSetAnglesRequest
instance Canonical Ros1Mypalletizer_communicationSetAnglesRequest where
  maximumBytes _ = 17
  encodeValue = encodeRos1Mypalletizer_communicationSetAnglesRequest
  readValue = readRos1Mypalletizer_communicationSetAnglesRequest
-- | \@brief Complete ROS 1 mypalletizer_communication/SetAnglesResponse value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_1472b47adc3171a9f1938e52bc937af6dd6bb720d33e163b70ae066a89a3211c.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Mypalletizer_communicationSetAnglesResponse = Ros1Mypalletizer_communicationSetAnglesResponse
  {
    -- | \@brief mypalletizer_communication/SetAnglesResponse.Flag: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationSetAnglesResponse_Flag :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mypalletizer_communication/SetAnglesResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Mypalletizer_communicationSetAnglesResponse :: Ros1Mypalletizer_communicationSetAnglesResponse
defaultRos1Mypalletizer_communicationSetAnglesResponse =
  Ros1Mypalletizer_communicationSetAnglesResponse
    (False)
-- | \@brief Canonical codec identity of mypalletizer_communication/SetAnglesResponse.
-- \@details Exact identity UWVMROS1_1472b47adc3171a9f1938e52bc937af6dd6bb720d33e163b70ae066a89a3211c
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Mypalletizer_communicationSetAnglesResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of mypalletizer_communication/SetAnglesResponse.
-- \@details Exact identity UWVMROS1_1472b47adc3171a9f1938e52bc937af6dd6bb720d33e163b70ae066a89a3211c
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Mypalletizer_communicationSetAnglesResponseCodecIdentity = "UWVMROS1_1472b47adc3171a9f1938e52bc937af6dd6bb720d33e163b70ae066a89a3211c"
-- | \@brief Encode one complete mypalletizer_communication/SetAnglesResponse value.
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
-- \@see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Mypalletizer_communicationSetAnglesResponse :: Ros1Mypalletizer_communicationSetAnglesResponse -> Either Word32 B.ByteString
encodeRos1Mypalletizer_communicationSetAnglesResponse value = do
  b0 <- W.encodeBool (ros1Mypalletizer_communicationSetAnglesResponse_Flag value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of mypalletizer_communication/SetAnglesResponse.
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
-- \@see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Mypalletizer_communicationSetAnglesResponse :: W.Decoder Ros1Mypalletizer_communicationSetAnglesResponse
readRos1Mypalletizer_communicationSetAnglesResponse = do
  a0 <- W.boolean
  let value = Ros1Mypalletizer_communicationSetAnglesResponse a0
  case encodeRos1Mypalletizer_communicationSetAnglesResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mypalletizer_communication/SetAnglesResponse value.
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
-- \@see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Mypalletizer_communicationSetAnglesResponse :: B.ByteString -> Either Word32 Ros1Mypalletizer_communicationSetAnglesResponse
decodeRos1Mypalletizer_communicationSetAnglesResponse = W.runDecoder 1 readRos1Mypalletizer_communicationSetAnglesResponse
instance Canonical Ros1Mypalletizer_communicationSetAnglesResponse where
  maximumBytes _ = 1
  encodeValue = encodeRos1Mypalletizer_communicationSetAnglesResponse
  readValue = readRos1Mypalletizer_communicationSetAnglesResponse
-- | \@brief Complete ROS 1 mypalletizer_communication/SetCoordsRequest value.
-- \@details All 6 declared fields are retained in source order. The canonical representation occupies
-- 18..18 bytes and is identified by
-- UWVMROS1_2d608cac1a7129ca5cd68ff52170ed40258cb6d199f4842a268a1d7570f9bda1.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Mypalletizer_communicationSetCoordsRequest = Ros1Mypalletizer_communicationSetCoordsRequest
  {
    -- | \@brief mypalletizer_communication/SetCoordsRequest.x: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationSetCoordsRequest_x :: Float
  ,
    -- | \@brief mypalletizer_communication/SetCoordsRequest.y: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationSetCoordsRequest_y :: Float
  ,
    -- | \@brief mypalletizer_communication/SetCoordsRequest.z: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationSetCoordsRequest_z :: Float
  ,
    -- | \@brief mypalletizer_communication/SetCoordsRequest.rx: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationSetCoordsRequest_rx :: Float
  ,
    -- | \@brief mypalletizer_communication/SetCoordsRequest.speed: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationSetCoordsRequest_speed :: Int8
  ,
    -- | \@brief mypalletizer_communication/SetCoordsRequest.model: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationSetCoordsRequest_model :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mypalletizer_communication/SetCoordsRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Mypalletizer_communicationSetCoordsRequest :: Ros1Mypalletizer_communicationSetCoordsRequest
defaultRos1Mypalletizer_communicationSetCoordsRequest =
  Ros1Mypalletizer_communicationSetCoordsRequest
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mypalletizer_communication/SetCoordsRequest.
-- \@details Exact identity UWVMROS1_2d608cac1a7129ca5cd68ff52170ed40258cb6d199f4842a268a1d7570f9bda1
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Mypalletizer_communicationSetCoordsRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of mypalletizer_communication/SetCoordsRequest.
-- \@details Exact identity UWVMROS1_2d608cac1a7129ca5cd68ff52170ed40258cb6d199f4842a268a1d7570f9bda1
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Mypalletizer_communicationSetCoordsRequestCodecIdentity = "UWVMROS1_2d608cac1a7129ca5cd68ff52170ed40258cb6d199f4842a268a1d7570f9bda1"
-- | \@brief Encode one complete mypalletizer_communication/SetCoordsRequest value.
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
-- \@see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Mypalletizer_communicationSetCoordsRequest :: Ros1Mypalletizer_communicationSetCoordsRequest -> Either Word32 B.ByteString
encodeRos1Mypalletizer_communicationSetCoordsRequest value = do
  b0 <- W.encodeFloat32 (ros1Mypalletizer_communicationSetCoordsRequest_x value)
  b1 <- W.encodeFloat32 (ros1Mypalletizer_communicationSetCoordsRequest_y value)
  b2 <- W.encodeFloat32 (ros1Mypalletizer_communicationSetCoordsRequest_z value)
  b3 <- W.encodeFloat32 (ros1Mypalletizer_communicationSetCoordsRequest_rx value)
  b4 <- W.encodeSigned 1 (fromIntegral (ros1Mypalletizer_communicationSetCoordsRequest_speed value))
  b5 <- W.encodeSigned 1 (fromIntegral (ros1Mypalletizer_communicationSetCoordsRequest_model value))
  W.bounded 18 [b0, b1, b2, b3, b4, b5]
-- | \@brief Read the ordered canonical fields of mypalletizer_communication/SetCoordsRequest.
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
-- \@see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Mypalletizer_communicationSetCoordsRequest :: W.Decoder Ros1Mypalletizer_communicationSetCoordsRequest
readRos1Mypalletizer_communicationSetCoordsRequest = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- fromIntegral <$> W.signed 1
  a5 <- fromIntegral <$> W.signed 1
  let value = Ros1Mypalletizer_communicationSetCoordsRequest a0 a1 a2 a3 a4 a5
  case encodeRos1Mypalletizer_communicationSetCoordsRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mypalletizer_communication/SetCoordsRequest value.
-- \@details Require the complete 18..18-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Mypalletizer_communicationSetCoordsRequest :: B.ByteString -> Either Word32 Ros1Mypalletizer_communicationSetCoordsRequest
decodeRos1Mypalletizer_communicationSetCoordsRequest = W.runDecoder 18 readRos1Mypalletizer_communicationSetCoordsRequest
instance Canonical Ros1Mypalletizer_communicationSetCoordsRequest where
  maximumBytes _ = 18
  encodeValue = encodeRos1Mypalletizer_communicationSetCoordsRequest
  readValue = readRos1Mypalletizer_communicationSetCoordsRequest
-- | \@brief Complete ROS 1 mypalletizer_communication/SetCoordsResponse value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_86900f8772e9609e1d2b882b6ab613ce9609be6c589e5b9574a57b8749231308.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Mypalletizer_communicationSetCoordsResponse = Ros1Mypalletizer_communicationSetCoordsResponse
  {
    -- | \@brief mypalletizer_communication/SetCoordsResponse.Flag: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Mypalletizer_communicationSetCoordsResponse_Flag :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mypalletizer_communication/SetCoordsResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Mypalletizer_communicationSetCoordsResponse :: Ros1Mypalletizer_communicationSetCoordsResponse
defaultRos1Mypalletizer_communicationSetCoordsResponse =
  Ros1Mypalletizer_communicationSetCoordsResponse
    (False)
-- | \@brief Canonical codec identity of mypalletizer_communication/SetCoordsResponse.
-- \@details Exact identity UWVMROS1_86900f8772e9609e1d2b882b6ab613ce9609be6c589e5b9574a57b8749231308
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Mypalletizer_communicationSetCoordsResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of mypalletizer_communication/SetCoordsResponse.
-- \@details Exact identity UWVMROS1_86900f8772e9609e1d2b882b6ab613ce9609be6c589e5b9574a57b8749231308
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Mypalletizer_communicationSetCoordsResponseCodecIdentity = "UWVMROS1_86900f8772e9609e1d2b882b6ab613ce9609be6c589e5b9574a57b8749231308"
-- | \@brief Encode one complete mypalletizer_communication/SetCoordsResponse value.
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
-- \@see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Mypalletizer_communicationSetCoordsResponse :: Ros1Mypalletizer_communicationSetCoordsResponse -> Either Word32 B.ByteString
encodeRos1Mypalletizer_communicationSetCoordsResponse value = do
  b0 <- W.encodeBool (ros1Mypalletizer_communicationSetCoordsResponse_Flag value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of mypalletizer_communication/SetCoordsResponse.
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
-- \@see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Mypalletizer_communicationSetCoordsResponse :: W.Decoder Ros1Mypalletizer_communicationSetCoordsResponse
readRos1Mypalletizer_communicationSetCoordsResponse = do
  a0 <- W.boolean
  let value = Ros1Mypalletizer_communicationSetCoordsResponse a0
  case encodeRos1Mypalletizer_communicationSetCoordsResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mypalletizer_communication/SetCoordsResponse value.
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
-- \@see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Mypalletizer_communicationSetCoordsResponse :: B.ByteString -> Either Word32 Ros1Mypalletizer_communicationSetCoordsResponse
decodeRos1Mypalletizer_communicationSetCoordsResponse = W.runDecoder 1 readRos1Mypalletizer_communicationSetCoordsResponse
instance Canonical Ros1Mypalletizer_communicationSetCoordsResponse where
  maximumBytes _ = 1
  encodeValue = encodeRos1Mypalletizer_communicationSetCoordsResponse
  readValue = readRos1Mypalletizer_communicationSetCoordsResponse
