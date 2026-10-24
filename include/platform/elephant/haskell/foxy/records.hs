-- | @file records.hs
-- | @brief Preserve the complete original elephant/foxy canonical value domain.
-- | @details The selected domain contains 71 complete record/components and 238 original fields. Declared
-- | scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
-- | Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
-- | create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
-- | does not qualify a frontend, target ABI or native ROS transport.
-- | @see The platform's localized language guide and complete API-CATALOG.md.
-- Generated complete canonical values; all field selectors are record-qualified.
module Elephant.Foxy.Records where
import Data.Int
import Data.Word
import qualified Data.ByteString as B
import qualified Data.Text as T
import GHC.Float
import Control.Monad (replicateM)
import qualified RosWasm.Wire as W
import RosWasm.Typed (Canonical(..))
-- | \@brief Complete ROS 2 mecharm_interfaces/msg/MecharmAngles value.
-- \@details All 6 declared fields are retained in source order. The canonical representation occupies
-- 24..24 bytes and is identified by
-- UWVMROS1_37d12e0fc3b7bbb50bdcee0ca624a5c637f9554f3c64d640f538aeda57417331.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mecharm_interfacesMsgMecharmAngles = Ros2Mecharm_interfacesMsgMecharmAngles
  {
    -- | \@brief mecharm_interfaces/msg/MecharmAngles.joint_1: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesMsgMecharmAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesMsgMecharmAngles_joint_1 :: Float
  ,
    -- | \@brief mecharm_interfaces/msg/MecharmAngles.joint_2: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesMsgMecharmAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesMsgMecharmAngles_joint_2 :: Float
  ,
    -- | \@brief mecharm_interfaces/msg/MecharmAngles.joint_3: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesMsgMecharmAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesMsgMecharmAngles_joint_3 :: Float
  ,
    -- | \@brief mecharm_interfaces/msg/MecharmAngles.joint_4: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesMsgMecharmAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesMsgMecharmAngles_joint_4 :: Float
  ,
    -- | \@brief mecharm_interfaces/msg/MecharmAngles.joint_5: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesMsgMecharmAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesMsgMecharmAngles_joint_5 :: Float
  ,
    -- | \@brief mecharm_interfaces/msg/MecharmAngles.joint_6: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesMsgMecharmAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesMsgMecharmAngles_joint_6 :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mecharm_interfaces/msg/MecharmAngles.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mecharm_interfacesMsgMecharmAngles; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mecharm_interfacesMsgMecharmAngles :: Ros2Mecharm_interfacesMsgMecharmAngles
defaultRos2Mecharm_interfacesMsgMecharmAngles = Ros2Mecharm_interfacesMsgMecharmAngles (0) (0) (0) (0) (0) (0)
-- | \@brief Canonical codec identity of mecharm_interfaces/msg/MecharmAngles.
-- \@details Exact identity UWVMROS1_37d12e0fc3b7bbb50bdcee0ca624a5c637f9554f3c64d640f538aeda57417331
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mecharm_interfacesMsgMecharmAngles; share/platform/ros/haskell/API-CONTRACT.md
ros2Mecharm_interfacesMsgMecharmAnglesCodecIdentity :: String
-- | \@brief Canonical codec identity of mecharm_interfaces/msg/MecharmAngles.
-- \@details Exact identity UWVMROS1_37d12e0fc3b7bbb50bdcee0ca624a5c637f9554f3c64d640f538aeda57417331
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mecharm_interfacesMsgMecharmAngles; share/platform/ros/haskell/API-CONTRACT.md
ros2Mecharm_interfacesMsgMecharmAnglesCodecIdentity = "UWVMROS1_37d12e0fc3b7bbb50bdcee0ca624a5c637f9554f3c64d640f538aeda57417331"
-- | \@brief Encode one complete mecharm_interfaces/msg/MecharmAngles value.
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
-- \@see Ros2Mecharm_interfacesMsgMecharmAngles; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mecharm_interfacesMsgMecharmAngles :: Ros2Mecharm_interfacesMsgMecharmAngles -> Either Word32 B.ByteString
encodeRos2Mecharm_interfacesMsgMecharmAngles value = do
  b0 <- W.encodeFloat32 (ros2Mecharm_interfacesMsgMecharmAngles_joint_1 value)
  b1 <- W.encodeFloat32 (ros2Mecharm_interfacesMsgMecharmAngles_joint_2 value)
  b2 <- W.encodeFloat32 (ros2Mecharm_interfacesMsgMecharmAngles_joint_3 value)
  b3 <- W.encodeFloat32 (ros2Mecharm_interfacesMsgMecharmAngles_joint_4 value)
  b4 <- W.encodeFloat32 (ros2Mecharm_interfacesMsgMecharmAngles_joint_5 value)
  b5 <- W.encodeFloat32 (ros2Mecharm_interfacesMsgMecharmAngles_joint_6 value)
  W.bounded 24 [b0, b1, b2, b3, b4, b5]
-- | \@brief Read the ordered canonical fields of mecharm_interfaces/msg/MecharmAngles.
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
-- \@see Ros2Mecharm_interfacesMsgMecharmAngles; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mecharm_interfacesMsgMecharmAngles :: W.Decoder Ros2Mecharm_interfacesMsgMecharmAngles
readRos2Mecharm_interfacesMsgMecharmAngles = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  let value = Ros2Mecharm_interfacesMsgMecharmAngles a0 a1 a2 a3 a4 a5
  case encodeRos2Mecharm_interfacesMsgMecharmAngles value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mecharm_interfaces/msg/MecharmAngles value.
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
-- \@see Ros2Mecharm_interfacesMsgMecharmAngles; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mecharm_interfacesMsgMecharmAngles :: B.ByteString -> Either Word32 Ros2Mecharm_interfacesMsgMecharmAngles
decodeRos2Mecharm_interfacesMsgMecharmAngles = W.runDecoder 24 readRos2Mecharm_interfacesMsgMecharmAngles
instance Canonical Ros2Mecharm_interfacesMsgMecharmAngles where
  maximumBytes _ = 24
  encodeValue = encodeRos2Mecharm_interfacesMsgMecharmAngles
  readValue = readRos2Mecharm_interfacesMsgMecharmAngles
-- | \@brief Complete ROS 2 mecharm_interfaces/msg/MecharmCoords value.
-- \@details All 6 declared fields are retained in source order. The canonical representation occupies
-- 24..24 bytes and is identified by
-- UWVMROS1_e1bb96b1908c796e2a89eb4dd2402a6cc02bcc5077c52268bb378a52dd3029ed.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mecharm_interfacesMsgMecharmCoords = Ros2Mecharm_interfacesMsgMecharmCoords
  {
    -- | \@brief mecharm_interfaces/msg/MecharmCoords.x: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesMsgMecharmCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesMsgMecharmCoords_x :: Float
  ,
    -- | \@brief mecharm_interfaces/msg/MecharmCoords.y: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesMsgMecharmCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesMsgMecharmCoords_y :: Float
  ,
    -- | \@brief mecharm_interfaces/msg/MecharmCoords.z: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesMsgMecharmCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesMsgMecharmCoords_z :: Float
  ,
    -- | \@brief mecharm_interfaces/msg/MecharmCoords.rx: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesMsgMecharmCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesMsgMecharmCoords_rx :: Float
  ,
    -- | \@brief mecharm_interfaces/msg/MecharmCoords.ry: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesMsgMecharmCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesMsgMecharmCoords_ry :: Float
  ,
    -- | \@brief mecharm_interfaces/msg/MecharmCoords.rz: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesMsgMecharmCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesMsgMecharmCoords_rz :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mecharm_interfaces/msg/MecharmCoords.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mecharm_interfacesMsgMecharmCoords; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mecharm_interfacesMsgMecharmCoords :: Ros2Mecharm_interfacesMsgMecharmCoords
defaultRos2Mecharm_interfacesMsgMecharmCoords = Ros2Mecharm_interfacesMsgMecharmCoords (0) (0) (0) (0) (0) (0)
-- | \@brief Canonical codec identity of mecharm_interfaces/msg/MecharmCoords.
-- \@details Exact identity UWVMROS1_e1bb96b1908c796e2a89eb4dd2402a6cc02bcc5077c52268bb378a52dd3029ed
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mecharm_interfacesMsgMecharmCoords; share/platform/ros/haskell/API-CONTRACT.md
ros2Mecharm_interfacesMsgMecharmCoordsCodecIdentity :: String
-- | \@brief Canonical codec identity of mecharm_interfaces/msg/MecharmCoords.
-- \@details Exact identity UWVMROS1_e1bb96b1908c796e2a89eb4dd2402a6cc02bcc5077c52268bb378a52dd3029ed
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mecharm_interfacesMsgMecharmCoords; share/platform/ros/haskell/API-CONTRACT.md
ros2Mecharm_interfacesMsgMecharmCoordsCodecIdentity = "UWVMROS1_e1bb96b1908c796e2a89eb4dd2402a6cc02bcc5077c52268bb378a52dd3029ed"
-- | \@brief Encode one complete mecharm_interfaces/msg/MecharmCoords value.
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
-- \@see Ros2Mecharm_interfacesMsgMecharmCoords; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mecharm_interfacesMsgMecharmCoords :: Ros2Mecharm_interfacesMsgMecharmCoords -> Either Word32 B.ByteString
encodeRos2Mecharm_interfacesMsgMecharmCoords value = do
  b0 <- W.encodeFloat32 (ros2Mecharm_interfacesMsgMecharmCoords_x value)
  b1 <- W.encodeFloat32 (ros2Mecharm_interfacesMsgMecharmCoords_y value)
  b2 <- W.encodeFloat32 (ros2Mecharm_interfacesMsgMecharmCoords_z value)
  b3 <- W.encodeFloat32 (ros2Mecharm_interfacesMsgMecharmCoords_rx value)
  b4 <- W.encodeFloat32 (ros2Mecharm_interfacesMsgMecharmCoords_ry value)
  b5 <- W.encodeFloat32 (ros2Mecharm_interfacesMsgMecharmCoords_rz value)
  W.bounded 24 [b0, b1, b2, b3, b4, b5]
-- | \@brief Read the ordered canonical fields of mecharm_interfaces/msg/MecharmCoords.
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
-- \@see Ros2Mecharm_interfacesMsgMecharmCoords; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mecharm_interfacesMsgMecharmCoords :: W.Decoder Ros2Mecharm_interfacesMsgMecharmCoords
readRos2Mecharm_interfacesMsgMecharmCoords = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  let value = Ros2Mecharm_interfacesMsgMecharmCoords a0 a1 a2 a3 a4 a5
  case encodeRos2Mecharm_interfacesMsgMecharmCoords value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mecharm_interfaces/msg/MecharmCoords value.
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
-- \@see Ros2Mecharm_interfacesMsgMecharmCoords; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mecharm_interfacesMsgMecharmCoords :: B.ByteString -> Either Word32 Ros2Mecharm_interfacesMsgMecharmCoords
decodeRos2Mecharm_interfacesMsgMecharmCoords = W.runDecoder 24 readRos2Mecharm_interfacesMsgMecharmCoords
instance Canonical Ros2Mecharm_interfacesMsgMecharmCoords where
  maximumBytes _ = 24
  encodeValue = encodeRos2Mecharm_interfacesMsgMecharmCoords
  readValue = readRos2Mecharm_interfacesMsgMecharmCoords
-- | \@brief Complete ROS 2 mecharm_interfaces/msg/MecharmGripperStatus value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_2123b61d7b9ec218ee074473c26e5ec82fde818f40796047fc369cb84516e046.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mecharm_interfacesMsgMecharmGripperStatus = Ros2Mecharm_interfacesMsgMecharmGripperStatus
  {
    -- | \@brief mecharm_interfaces/msg/MecharmGripperStatus.status: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesMsgMecharmGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesMsgMecharmGripperStatus_status :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mecharm_interfaces/msg/MecharmGripperStatus.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mecharm_interfacesMsgMecharmGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mecharm_interfacesMsgMecharmGripperStatus :: Ros2Mecharm_interfacesMsgMecharmGripperStatus
defaultRos2Mecharm_interfacesMsgMecharmGripperStatus = Ros2Mecharm_interfacesMsgMecharmGripperStatus (False)
-- | \@brief Canonical codec identity of mecharm_interfaces/msg/MecharmGripperStatus.
-- \@details Exact identity UWVMROS1_2123b61d7b9ec218ee074473c26e5ec82fde818f40796047fc369cb84516e046
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mecharm_interfacesMsgMecharmGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Mecharm_interfacesMsgMecharmGripperStatusCodecIdentity :: String
-- | \@brief Canonical codec identity of mecharm_interfaces/msg/MecharmGripperStatus.
-- \@details Exact identity UWVMROS1_2123b61d7b9ec218ee074473c26e5ec82fde818f40796047fc369cb84516e046
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mecharm_interfacesMsgMecharmGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Mecharm_interfacesMsgMecharmGripperStatusCodecIdentity = "UWVMROS1_2123b61d7b9ec218ee074473c26e5ec82fde818f40796047fc369cb84516e046"
-- | \@brief Encode one complete mecharm_interfaces/msg/MecharmGripperStatus value.
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
-- \@see Ros2Mecharm_interfacesMsgMecharmGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mecharm_interfacesMsgMecharmGripperStatus :: Ros2Mecharm_interfacesMsgMecharmGripperStatus -> Either Word32 B.ByteString
encodeRos2Mecharm_interfacesMsgMecharmGripperStatus value = do
  b0 <- W.encodeBool (ros2Mecharm_interfacesMsgMecharmGripperStatus_status value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of mecharm_interfaces/msg/MecharmGripperStatus.
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
-- \@see Ros2Mecharm_interfacesMsgMecharmGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mecharm_interfacesMsgMecharmGripperStatus :: W.Decoder Ros2Mecharm_interfacesMsgMecharmGripperStatus
readRos2Mecharm_interfacesMsgMecharmGripperStatus = do
  a0 <- W.boolean
  let value = Ros2Mecharm_interfacesMsgMecharmGripperStatus a0
  case encodeRos2Mecharm_interfacesMsgMecharmGripperStatus value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mecharm_interfaces/msg/MecharmGripperStatus value.
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
-- \@see Ros2Mecharm_interfacesMsgMecharmGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mecharm_interfacesMsgMecharmGripperStatus :: B.ByteString -> Either Word32 Ros2Mecharm_interfacesMsgMecharmGripperStatus
decodeRos2Mecharm_interfacesMsgMecharmGripperStatus = W.runDecoder 1 readRos2Mecharm_interfacesMsgMecharmGripperStatus
instance Canonical Ros2Mecharm_interfacesMsgMecharmGripperStatus where
  maximumBytes _ = 1
  encodeValue = encodeRos2Mecharm_interfacesMsgMecharmGripperStatus
  readValue = readRos2Mecharm_interfacesMsgMecharmGripperStatus
-- | \@brief Complete ROS 2 mecharm_interfaces/msg/MecharmPumpStatus value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies
-- 3..3 bytes and is identified by
-- UWVMROS1_4d44c84c1fdd3f4db92d9975545348bfd727320e63c9fbfde5adf0b81ca04add.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mecharm_interfacesMsgMecharmPumpStatus = Ros2Mecharm_interfacesMsgMecharmPumpStatus
  {
    -- | \@brief mecharm_interfaces/msg/MecharmPumpStatus.status: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesMsgMecharmPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesMsgMecharmPumpStatus_status :: Bool
  ,
    -- | \@brief mecharm_interfaces/msg/MecharmPumpStatus.pin1: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesMsgMecharmPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesMsgMecharmPumpStatus_pin1 :: Int8
  ,
    -- | \@brief mecharm_interfaces/msg/MecharmPumpStatus.pin2: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesMsgMecharmPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesMsgMecharmPumpStatus_pin2 :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mecharm_interfaces/msg/MecharmPumpStatus.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mecharm_interfacesMsgMecharmPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mecharm_interfacesMsgMecharmPumpStatus :: Ros2Mecharm_interfacesMsgMecharmPumpStatus
defaultRos2Mecharm_interfacesMsgMecharmPumpStatus = Ros2Mecharm_interfacesMsgMecharmPumpStatus (False) (0) (0)
-- | \@brief Canonical codec identity of mecharm_interfaces/msg/MecharmPumpStatus.
-- \@details Exact identity UWVMROS1_4d44c84c1fdd3f4db92d9975545348bfd727320e63c9fbfde5adf0b81ca04add
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mecharm_interfacesMsgMecharmPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Mecharm_interfacesMsgMecharmPumpStatusCodecIdentity :: String
-- | \@brief Canonical codec identity of mecharm_interfaces/msg/MecharmPumpStatus.
-- \@details Exact identity UWVMROS1_4d44c84c1fdd3f4db92d9975545348bfd727320e63c9fbfde5adf0b81ca04add
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mecharm_interfacesMsgMecharmPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Mecharm_interfacesMsgMecharmPumpStatusCodecIdentity = "UWVMROS1_4d44c84c1fdd3f4db92d9975545348bfd727320e63c9fbfde5adf0b81ca04add"
-- | \@brief Encode one complete mecharm_interfaces/msg/MecharmPumpStatus value.
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
-- \@see Ros2Mecharm_interfacesMsgMecharmPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mecharm_interfacesMsgMecharmPumpStatus :: Ros2Mecharm_interfacesMsgMecharmPumpStatus -> Either Word32 B.ByteString
encodeRos2Mecharm_interfacesMsgMecharmPumpStatus value = do
  b0 <- W.encodeBool (ros2Mecharm_interfacesMsgMecharmPumpStatus_status value)
  b1 <- W.encodeSigned 1 (fromIntegral (ros2Mecharm_interfacesMsgMecharmPumpStatus_pin1 value))
  b2 <- W.encodeSigned 1 (fromIntegral (ros2Mecharm_interfacesMsgMecharmPumpStatus_pin2 value))
  W.bounded 3 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of mecharm_interfaces/msg/MecharmPumpStatus.
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
-- \@see Ros2Mecharm_interfacesMsgMecharmPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mecharm_interfacesMsgMecharmPumpStatus :: W.Decoder Ros2Mecharm_interfacesMsgMecharmPumpStatus
readRos2Mecharm_interfacesMsgMecharmPumpStatus = do
  a0 <- W.boolean
  a1 <- fromIntegral <$> W.signed 1
  a2 <- fromIntegral <$> W.signed 1
  let value = Ros2Mecharm_interfacesMsgMecharmPumpStatus a0 a1 a2
  case encodeRos2Mecharm_interfacesMsgMecharmPumpStatus value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mecharm_interfaces/msg/MecharmPumpStatus value.
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
-- \@see Ros2Mecharm_interfacesMsgMecharmPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mecharm_interfacesMsgMecharmPumpStatus :: B.ByteString -> Either Word32 Ros2Mecharm_interfacesMsgMecharmPumpStatus
decodeRos2Mecharm_interfacesMsgMecharmPumpStatus = W.runDecoder 3 readRos2Mecharm_interfacesMsgMecharmPumpStatus
instance Canonical Ros2Mecharm_interfacesMsgMecharmPumpStatus where
  maximumBytes _ = 3
  encodeValue = encodeRos2Mecharm_interfacesMsgMecharmPumpStatus
  readValue = readRos2Mecharm_interfacesMsgMecharmPumpStatus
-- | \@brief Complete ROS 2 mecharm_interfaces/msg/MecharmSetAngles value.
-- \@details All 7 declared fields are retained in source order. The canonical representation occupies
-- 25..25 bytes and is identified by
-- UWVMROS1_54b634e4c5d0bc9fdf04a98d31816e24d3a9c5eb497bb38fb16e2de593cf81f5.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mecharm_interfacesMsgMecharmSetAngles = Ros2Mecharm_interfacesMsgMecharmSetAngles
  {
    -- | \@brief mecharm_interfaces/msg/MecharmSetAngles.joint_1: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesMsgMecharmSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesMsgMecharmSetAngles_joint_1 :: Float
  ,
    -- | \@brief mecharm_interfaces/msg/MecharmSetAngles.joint_2: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesMsgMecharmSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesMsgMecharmSetAngles_joint_2 :: Float
  ,
    -- | \@brief mecharm_interfaces/msg/MecharmSetAngles.joint_3: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesMsgMecharmSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesMsgMecharmSetAngles_joint_3 :: Float
  ,
    -- | \@brief mecharm_interfaces/msg/MecharmSetAngles.joint_4: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesMsgMecharmSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesMsgMecharmSetAngles_joint_4 :: Float
  ,
    -- | \@brief mecharm_interfaces/msg/MecharmSetAngles.joint_5: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesMsgMecharmSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesMsgMecharmSetAngles_joint_5 :: Float
  ,
    -- | \@brief mecharm_interfaces/msg/MecharmSetAngles.joint_6: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesMsgMecharmSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesMsgMecharmSetAngles_joint_6 :: Float
  ,
    -- | \@brief mecharm_interfaces/msg/MecharmSetAngles.speed: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesMsgMecharmSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesMsgMecharmSetAngles_speed :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mecharm_interfaces/msg/MecharmSetAngles.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mecharm_interfacesMsgMecharmSetAngles; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mecharm_interfacesMsgMecharmSetAngles :: Ros2Mecharm_interfacesMsgMecharmSetAngles
defaultRos2Mecharm_interfacesMsgMecharmSetAngles =
  Ros2Mecharm_interfacesMsgMecharmSetAngles
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mecharm_interfaces/msg/MecharmSetAngles.
-- \@details Exact identity UWVMROS1_54b634e4c5d0bc9fdf04a98d31816e24d3a9c5eb497bb38fb16e2de593cf81f5
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mecharm_interfacesMsgMecharmSetAngles; share/platform/ros/haskell/API-CONTRACT.md
ros2Mecharm_interfacesMsgMecharmSetAnglesCodecIdentity :: String
-- | \@brief Canonical codec identity of mecharm_interfaces/msg/MecharmSetAngles.
-- \@details Exact identity UWVMROS1_54b634e4c5d0bc9fdf04a98d31816e24d3a9c5eb497bb38fb16e2de593cf81f5
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mecharm_interfacesMsgMecharmSetAngles; share/platform/ros/haskell/API-CONTRACT.md
ros2Mecharm_interfacesMsgMecharmSetAnglesCodecIdentity = "UWVMROS1_54b634e4c5d0bc9fdf04a98d31816e24d3a9c5eb497bb38fb16e2de593cf81f5"
-- | \@brief Encode one complete mecharm_interfaces/msg/MecharmSetAngles value.
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
-- \@see Ros2Mecharm_interfacesMsgMecharmSetAngles; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mecharm_interfacesMsgMecharmSetAngles :: Ros2Mecharm_interfacesMsgMecharmSetAngles -> Either Word32 B.ByteString
encodeRos2Mecharm_interfacesMsgMecharmSetAngles value = do
  b0 <- W.encodeFloat32 (ros2Mecharm_interfacesMsgMecharmSetAngles_joint_1 value)
  b1 <- W.encodeFloat32 (ros2Mecharm_interfacesMsgMecharmSetAngles_joint_2 value)
  b2 <- W.encodeFloat32 (ros2Mecharm_interfacesMsgMecharmSetAngles_joint_3 value)
  b3 <- W.encodeFloat32 (ros2Mecharm_interfacesMsgMecharmSetAngles_joint_4 value)
  b4 <- W.encodeFloat32 (ros2Mecharm_interfacesMsgMecharmSetAngles_joint_5 value)
  b5 <- W.encodeFloat32 (ros2Mecharm_interfacesMsgMecharmSetAngles_joint_6 value)
  b6 <- W.encodeSigned 1 (fromIntegral (ros2Mecharm_interfacesMsgMecharmSetAngles_speed value))
  W.bounded 25 [b0, b1, b2, b3, b4, b5, b6]
-- | \@brief Read the ordered canonical fields of mecharm_interfaces/msg/MecharmSetAngles.
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
-- \@see Ros2Mecharm_interfacesMsgMecharmSetAngles; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mecharm_interfacesMsgMecharmSetAngles :: W.Decoder Ros2Mecharm_interfacesMsgMecharmSetAngles
readRos2Mecharm_interfacesMsgMecharmSetAngles = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  a6 <- fromIntegral <$> W.signed 1
  let value = Ros2Mecharm_interfacesMsgMecharmSetAngles a0 a1 a2 a3 a4 a5 a6
  case encodeRos2Mecharm_interfacesMsgMecharmSetAngles value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mecharm_interfaces/msg/MecharmSetAngles value.
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
-- \@see Ros2Mecharm_interfacesMsgMecharmSetAngles; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mecharm_interfacesMsgMecharmSetAngles :: B.ByteString -> Either Word32 Ros2Mecharm_interfacesMsgMecharmSetAngles
decodeRos2Mecharm_interfacesMsgMecharmSetAngles = W.runDecoder 25 readRos2Mecharm_interfacesMsgMecharmSetAngles
instance Canonical Ros2Mecharm_interfacesMsgMecharmSetAngles where
  maximumBytes _ = 25
  encodeValue = encodeRos2Mecharm_interfacesMsgMecharmSetAngles
  readValue = readRos2Mecharm_interfacesMsgMecharmSetAngles
-- | \@brief Complete ROS 2 mecharm_interfaces/msg/MecharmSetCoords value.
-- \@details All 8 declared fields are retained in source order. The canonical representation occupies
-- 26..26 bytes and is identified by
-- UWVMROS1_44944ee22cd4254167083cfdcd7377ee2f59dbe27414932c980670a471a6e7c2.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mecharm_interfacesMsgMecharmSetCoords = Ros2Mecharm_interfacesMsgMecharmSetCoords
  {
    -- | \@brief mecharm_interfaces/msg/MecharmSetCoords.x: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesMsgMecharmSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesMsgMecharmSetCoords_x :: Float
  ,
    -- | \@brief mecharm_interfaces/msg/MecharmSetCoords.y: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesMsgMecharmSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesMsgMecharmSetCoords_y :: Float
  ,
    -- | \@brief mecharm_interfaces/msg/MecharmSetCoords.z: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesMsgMecharmSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesMsgMecharmSetCoords_z :: Float
  ,
    -- | \@brief mecharm_interfaces/msg/MecharmSetCoords.rx: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesMsgMecharmSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesMsgMecharmSetCoords_rx :: Float
  ,
    -- | \@brief mecharm_interfaces/msg/MecharmSetCoords.ry: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesMsgMecharmSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesMsgMecharmSetCoords_ry :: Float
  ,
    -- | \@brief mecharm_interfaces/msg/MecharmSetCoords.rz: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesMsgMecharmSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesMsgMecharmSetCoords_rz :: Float
  ,
    -- | \@brief mecharm_interfaces/msg/MecharmSetCoords.speed: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesMsgMecharmSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesMsgMecharmSetCoords_speed :: Int8
  ,
    -- | \@brief mecharm_interfaces/msg/MecharmSetCoords.model: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesMsgMecharmSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesMsgMecharmSetCoords_model :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mecharm_interfaces/msg/MecharmSetCoords.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mecharm_interfacesMsgMecharmSetCoords; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mecharm_interfacesMsgMecharmSetCoords :: Ros2Mecharm_interfacesMsgMecharmSetCoords
defaultRos2Mecharm_interfacesMsgMecharmSetCoords =
  Ros2Mecharm_interfacesMsgMecharmSetCoords
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mecharm_interfaces/msg/MecharmSetCoords.
-- \@details Exact identity UWVMROS1_44944ee22cd4254167083cfdcd7377ee2f59dbe27414932c980670a471a6e7c2
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mecharm_interfacesMsgMecharmSetCoords; share/platform/ros/haskell/API-CONTRACT.md
ros2Mecharm_interfacesMsgMecharmSetCoordsCodecIdentity :: String
-- | \@brief Canonical codec identity of mecharm_interfaces/msg/MecharmSetCoords.
-- \@details Exact identity UWVMROS1_44944ee22cd4254167083cfdcd7377ee2f59dbe27414932c980670a471a6e7c2
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mecharm_interfacesMsgMecharmSetCoords; share/platform/ros/haskell/API-CONTRACT.md
ros2Mecharm_interfacesMsgMecharmSetCoordsCodecIdentity = "UWVMROS1_44944ee22cd4254167083cfdcd7377ee2f59dbe27414932c980670a471a6e7c2"
-- | \@brief Encode one complete mecharm_interfaces/msg/MecharmSetCoords value.
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
-- \@see Ros2Mecharm_interfacesMsgMecharmSetCoords; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mecharm_interfacesMsgMecharmSetCoords :: Ros2Mecharm_interfacesMsgMecharmSetCoords -> Either Word32 B.ByteString
encodeRos2Mecharm_interfacesMsgMecharmSetCoords value = do
  b0 <- W.encodeFloat32 (ros2Mecharm_interfacesMsgMecharmSetCoords_x value)
  b1 <- W.encodeFloat32 (ros2Mecharm_interfacesMsgMecharmSetCoords_y value)
  b2 <- W.encodeFloat32 (ros2Mecharm_interfacesMsgMecharmSetCoords_z value)
  b3 <- W.encodeFloat32 (ros2Mecharm_interfacesMsgMecharmSetCoords_rx value)
  b4 <- W.encodeFloat32 (ros2Mecharm_interfacesMsgMecharmSetCoords_ry value)
  b5 <- W.encodeFloat32 (ros2Mecharm_interfacesMsgMecharmSetCoords_rz value)
  b6 <- W.encodeSigned 1 (fromIntegral (ros2Mecharm_interfacesMsgMecharmSetCoords_speed value))
  b7 <- W.encodeSigned 1 (fromIntegral (ros2Mecharm_interfacesMsgMecharmSetCoords_model value))
  W.bounded 26 [b0, b1, b2, b3, b4, b5, b6, b7]
-- | \@brief Read the ordered canonical fields of mecharm_interfaces/msg/MecharmSetCoords.
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
-- \@see Ros2Mecharm_interfacesMsgMecharmSetCoords; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mecharm_interfacesMsgMecharmSetCoords :: W.Decoder Ros2Mecharm_interfacesMsgMecharmSetCoords
readRos2Mecharm_interfacesMsgMecharmSetCoords = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  a6 <- fromIntegral <$> W.signed 1
  a7 <- fromIntegral <$> W.signed 1
  let value = Ros2Mecharm_interfacesMsgMecharmSetCoords a0 a1 a2 a3 a4 a5 a6 a7
  case encodeRos2Mecharm_interfacesMsgMecharmSetCoords value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mecharm_interfaces/msg/MecharmSetCoords value.
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
-- \@see Ros2Mecharm_interfacesMsgMecharmSetCoords; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mecharm_interfacesMsgMecharmSetCoords :: B.ByteString -> Either Word32 Ros2Mecharm_interfacesMsgMecharmSetCoords
decodeRos2Mecharm_interfacesMsgMecharmSetCoords = W.runDecoder 26 readRos2Mecharm_interfacesMsgMecharmSetCoords
instance Canonical Ros2Mecharm_interfacesMsgMecharmSetCoords where
  maximumBytes _ = 26
  encodeValue = encodeRos2Mecharm_interfacesMsgMecharmSetCoords
  readValue = readRos2Mecharm_interfacesMsgMecharmSetCoords
-- | \@brief Complete ROS 2 mecharm_interfaces/srv/GetAngles_Request value.
-- \@details All 0 declared fields are retained in source order. The canonical representation occupies
-- 0..0 bytes and is identified by
-- UWVMROS1_95b1d7786c03c6fec98fec0706088481fe9c7aa48c9f33f4325031d0437d97df.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mecharm_interfacesSrvGetAngles_Request = Ros2Mecharm_interfacesSrvGetAngles_Request deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mecharm_interfaces/srv/GetAngles_Request.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mecharm_interfacesSrvGetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mecharm_interfacesSrvGetAngles_Request :: Ros2Mecharm_interfacesSrvGetAngles_Request
defaultRos2Mecharm_interfacesSrvGetAngles_Request = Ros2Mecharm_interfacesSrvGetAngles_Request 
-- | \@brief Canonical codec identity of mecharm_interfaces/srv/GetAngles_Request.
-- \@details Exact identity UWVMROS1_95b1d7786c03c6fec98fec0706088481fe9c7aa48c9f33f4325031d0437d97df
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mecharm_interfacesSrvGetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mecharm_interfacesSrvGetAngles_RequestCodecIdentity :: String
-- | \@brief Canonical codec identity of mecharm_interfaces/srv/GetAngles_Request.
-- \@details Exact identity UWVMROS1_95b1d7786c03c6fec98fec0706088481fe9c7aa48c9f33f4325031d0437d97df
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mecharm_interfacesSrvGetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mecharm_interfacesSrvGetAngles_RequestCodecIdentity = "UWVMROS1_95b1d7786c03c6fec98fec0706088481fe9c7aa48c9f33f4325031d0437d97df"
-- | \@brief Encode one complete mecharm_interfaces/srv/GetAngles_Request value.
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
-- \@see Ros2Mecharm_interfacesSrvGetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mecharm_interfacesSrvGetAngles_Request :: Ros2Mecharm_interfacesSrvGetAngles_Request -> Either Word32 B.ByteString
encodeRos2Mecharm_interfacesSrvGetAngles_Request value = do
  W.bounded 0 []
-- | \@brief Read the ordered canonical fields of mecharm_interfaces/srv/GetAngles_Request.
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
-- \@see Ros2Mecharm_interfacesSrvGetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mecharm_interfacesSrvGetAngles_Request :: W.Decoder Ros2Mecharm_interfacesSrvGetAngles_Request
readRos2Mecharm_interfacesSrvGetAngles_Request = do
  let value = Ros2Mecharm_interfacesSrvGetAngles_Request 
  case encodeRos2Mecharm_interfacesSrvGetAngles_Request value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mecharm_interfaces/srv/GetAngles_Request value.
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
-- \@see Ros2Mecharm_interfacesSrvGetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mecharm_interfacesSrvGetAngles_Request :: B.ByteString -> Either Word32 Ros2Mecharm_interfacesSrvGetAngles_Request
decodeRos2Mecharm_interfacesSrvGetAngles_Request = W.runDecoder 0 readRos2Mecharm_interfacesSrvGetAngles_Request
instance Canonical Ros2Mecharm_interfacesSrvGetAngles_Request where
  maximumBytes _ = 0
  encodeValue = encodeRos2Mecharm_interfacesSrvGetAngles_Request
  readValue = readRos2Mecharm_interfacesSrvGetAngles_Request
-- | \@brief Complete ROS 2 mecharm_interfaces/srv/GetAngles_Response value.
-- \@details All 6 declared fields are retained in source order. The canonical representation occupies
-- 24..24 bytes and is identified by
-- UWVMROS1_b1a035847ac7a888053ba8de7494abb6d2cdc01f61e4d0a51cb3ef6f479adf61.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mecharm_interfacesSrvGetAngles_Response = Ros2Mecharm_interfacesSrvGetAngles_Response
  {
    -- | \@brief mecharm_interfaces/srv/GetAngles_Response.joint_1: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesSrvGetAngles_Response_joint_1 :: Float
  ,
    -- | \@brief mecharm_interfaces/srv/GetAngles_Response.joint_2: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesSrvGetAngles_Response_joint_2 :: Float
  ,
    -- | \@brief mecharm_interfaces/srv/GetAngles_Response.joint_3: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesSrvGetAngles_Response_joint_3 :: Float
  ,
    -- | \@brief mecharm_interfaces/srv/GetAngles_Response.joint_4: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesSrvGetAngles_Response_joint_4 :: Float
  ,
    -- | \@brief mecharm_interfaces/srv/GetAngles_Response.joint_5: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesSrvGetAngles_Response_joint_5 :: Float
  ,
    -- | \@brief mecharm_interfaces/srv/GetAngles_Response.joint_6: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesSrvGetAngles_Response_joint_6 :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mecharm_interfaces/srv/GetAngles_Response.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mecharm_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mecharm_interfacesSrvGetAngles_Response :: Ros2Mecharm_interfacesSrvGetAngles_Response
defaultRos2Mecharm_interfacesSrvGetAngles_Response =
  Ros2Mecharm_interfacesSrvGetAngles_Response
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mecharm_interfaces/srv/GetAngles_Response.
-- \@details Exact identity UWVMROS1_b1a035847ac7a888053ba8de7494abb6d2cdc01f61e4d0a51cb3ef6f479adf61
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mecharm_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mecharm_interfacesSrvGetAngles_ResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of mecharm_interfaces/srv/GetAngles_Response.
-- \@details Exact identity UWVMROS1_b1a035847ac7a888053ba8de7494abb6d2cdc01f61e4d0a51cb3ef6f479adf61
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mecharm_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mecharm_interfacesSrvGetAngles_ResponseCodecIdentity = "UWVMROS1_b1a035847ac7a888053ba8de7494abb6d2cdc01f61e4d0a51cb3ef6f479adf61"
-- | \@brief Encode one complete mecharm_interfaces/srv/GetAngles_Response value.
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
-- \@see Ros2Mecharm_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mecharm_interfacesSrvGetAngles_Response :: Ros2Mecharm_interfacesSrvGetAngles_Response -> Either Word32 B.ByteString
encodeRos2Mecharm_interfacesSrvGetAngles_Response value = do
  b0 <- W.encodeFloat32 (ros2Mecharm_interfacesSrvGetAngles_Response_joint_1 value)
  b1 <- W.encodeFloat32 (ros2Mecharm_interfacesSrvGetAngles_Response_joint_2 value)
  b2 <- W.encodeFloat32 (ros2Mecharm_interfacesSrvGetAngles_Response_joint_3 value)
  b3 <- W.encodeFloat32 (ros2Mecharm_interfacesSrvGetAngles_Response_joint_4 value)
  b4 <- W.encodeFloat32 (ros2Mecharm_interfacesSrvGetAngles_Response_joint_5 value)
  b5 <- W.encodeFloat32 (ros2Mecharm_interfacesSrvGetAngles_Response_joint_6 value)
  W.bounded 24 [b0, b1, b2, b3, b4, b5]
-- | \@brief Read the ordered canonical fields of mecharm_interfaces/srv/GetAngles_Response.
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
-- \@see Ros2Mecharm_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mecharm_interfacesSrvGetAngles_Response :: W.Decoder Ros2Mecharm_interfacesSrvGetAngles_Response
readRos2Mecharm_interfacesSrvGetAngles_Response = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  let value = Ros2Mecharm_interfacesSrvGetAngles_Response a0 a1 a2 a3 a4 a5
  case encodeRos2Mecharm_interfacesSrvGetAngles_Response value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mecharm_interfaces/srv/GetAngles_Response value.
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
-- \@see Ros2Mecharm_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mecharm_interfacesSrvGetAngles_Response :: B.ByteString -> Either Word32 Ros2Mecharm_interfacesSrvGetAngles_Response
decodeRos2Mecharm_interfacesSrvGetAngles_Response = W.runDecoder 24 readRos2Mecharm_interfacesSrvGetAngles_Response
instance Canonical Ros2Mecharm_interfacesSrvGetAngles_Response where
  maximumBytes _ = 24
  encodeValue = encodeRos2Mecharm_interfacesSrvGetAngles_Response
  readValue = readRos2Mecharm_interfacesSrvGetAngles_Response
-- | \@brief Complete ROS 2 mecharm_interfaces/srv/GetCoords_Request value.
-- \@details All 0 declared fields are retained in source order. The canonical representation occupies
-- 0..0 bytes and is identified by
-- UWVMROS1_353827e7125cfa6c829f1138cc33901099a26cf73a8d045cf806b427994ccef1.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mecharm_interfacesSrvGetCoords_Request = Ros2Mecharm_interfacesSrvGetCoords_Request deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mecharm_interfaces/srv/GetCoords_Request.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mecharm_interfacesSrvGetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mecharm_interfacesSrvGetCoords_Request :: Ros2Mecharm_interfacesSrvGetCoords_Request
defaultRos2Mecharm_interfacesSrvGetCoords_Request = Ros2Mecharm_interfacesSrvGetCoords_Request 
-- | \@brief Canonical codec identity of mecharm_interfaces/srv/GetCoords_Request.
-- \@details Exact identity UWVMROS1_353827e7125cfa6c829f1138cc33901099a26cf73a8d045cf806b427994ccef1
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mecharm_interfacesSrvGetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mecharm_interfacesSrvGetCoords_RequestCodecIdentity :: String
-- | \@brief Canonical codec identity of mecharm_interfaces/srv/GetCoords_Request.
-- \@details Exact identity UWVMROS1_353827e7125cfa6c829f1138cc33901099a26cf73a8d045cf806b427994ccef1
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mecharm_interfacesSrvGetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mecharm_interfacesSrvGetCoords_RequestCodecIdentity = "UWVMROS1_353827e7125cfa6c829f1138cc33901099a26cf73a8d045cf806b427994ccef1"
-- | \@brief Encode one complete mecharm_interfaces/srv/GetCoords_Request value.
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
-- \@see Ros2Mecharm_interfacesSrvGetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mecharm_interfacesSrvGetCoords_Request :: Ros2Mecharm_interfacesSrvGetCoords_Request -> Either Word32 B.ByteString
encodeRos2Mecharm_interfacesSrvGetCoords_Request value = do
  W.bounded 0 []
-- | \@brief Read the ordered canonical fields of mecharm_interfaces/srv/GetCoords_Request.
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
-- \@see Ros2Mecharm_interfacesSrvGetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mecharm_interfacesSrvGetCoords_Request :: W.Decoder Ros2Mecharm_interfacesSrvGetCoords_Request
readRos2Mecharm_interfacesSrvGetCoords_Request = do
  let value = Ros2Mecharm_interfacesSrvGetCoords_Request 
  case encodeRos2Mecharm_interfacesSrvGetCoords_Request value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mecharm_interfaces/srv/GetCoords_Request value.
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
-- \@see Ros2Mecharm_interfacesSrvGetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mecharm_interfacesSrvGetCoords_Request :: B.ByteString -> Either Word32 Ros2Mecharm_interfacesSrvGetCoords_Request
decodeRos2Mecharm_interfacesSrvGetCoords_Request = W.runDecoder 0 readRos2Mecharm_interfacesSrvGetCoords_Request
instance Canonical Ros2Mecharm_interfacesSrvGetCoords_Request where
  maximumBytes _ = 0
  encodeValue = encodeRos2Mecharm_interfacesSrvGetCoords_Request
  readValue = readRos2Mecharm_interfacesSrvGetCoords_Request
-- | \@brief Complete ROS 2 mecharm_interfaces/srv/GetCoords_Response value.
-- \@details All 6 declared fields are retained in source order. The canonical representation occupies
-- 24..24 bytes and is identified by
-- UWVMROS1_f7fcb8c4fdb47c06e93a8f67613490f7ab0ef2af7efb02092874722670b36c75.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mecharm_interfacesSrvGetCoords_Response = Ros2Mecharm_interfacesSrvGetCoords_Response
  {
    -- | \@brief mecharm_interfaces/srv/GetCoords_Response.x: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesSrvGetCoords_Response_x :: Float
  ,
    -- | \@brief mecharm_interfaces/srv/GetCoords_Response.y: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesSrvGetCoords_Response_y :: Float
  ,
    -- | \@brief mecharm_interfaces/srv/GetCoords_Response.z: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesSrvGetCoords_Response_z :: Float
  ,
    -- | \@brief mecharm_interfaces/srv/GetCoords_Response.rx: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesSrvGetCoords_Response_rx :: Float
  ,
    -- | \@brief mecharm_interfaces/srv/GetCoords_Response.ry: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesSrvGetCoords_Response_ry :: Float
  ,
    -- | \@brief mecharm_interfaces/srv/GetCoords_Response.rz: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesSrvGetCoords_Response_rz :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mecharm_interfaces/srv/GetCoords_Response.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mecharm_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mecharm_interfacesSrvGetCoords_Response :: Ros2Mecharm_interfacesSrvGetCoords_Response
defaultRos2Mecharm_interfacesSrvGetCoords_Response =
  Ros2Mecharm_interfacesSrvGetCoords_Response
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mecharm_interfaces/srv/GetCoords_Response.
-- \@details Exact identity UWVMROS1_f7fcb8c4fdb47c06e93a8f67613490f7ab0ef2af7efb02092874722670b36c75
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mecharm_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mecharm_interfacesSrvGetCoords_ResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of mecharm_interfaces/srv/GetCoords_Response.
-- \@details Exact identity UWVMROS1_f7fcb8c4fdb47c06e93a8f67613490f7ab0ef2af7efb02092874722670b36c75
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mecharm_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mecharm_interfacesSrvGetCoords_ResponseCodecIdentity = "UWVMROS1_f7fcb8c4fdb47c06e93a8f67613490f7ab0ef2af7efb02092874722670b36c75"
-- | \@brief Encode one complete mecharm_interfaces/srv/GetCoords_Response value.
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
-- \@see Ros2Mecharm_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mecharm_interfacesSrvGetCoords_Response :: Ros2Mecharm_interfacesSrvGetCoords_Response -> Either Word32 B.ByteString
encodeRos2Mecharm_interfacesSrvGetCoords_Response value = do
  b0 <- W.encodeFloat32 (ros2Mecharm_interfacesSrvGetCoords_Response_x value)
  b1 <- W.encodeFloat32 (ros2Mecharm_interfacesSrvGetCoords_Response_y value)
  b2 <- W.encodeFloat32 (ros2Mecharm_interfacesSrvGetCoords_Response_z value)
  b3 <- W.encodeFloat32 (ros2Mecharm_interfacesSrvGetCoords_Response_rx value)
  b4 <- W.encodeFloat32 (ros2Mecharm_interfacesSrvGetCoords_Response_ry value)
  b5 <- W.encodeFloat32 (ros2Mecharm_interfacesSrvGetCoords_Response_rz value)
  W.bounded 24 [b0, b1, b2, b3, b4, b5]
-- | \@brief Read the ordered canonical fields of mecharm_interfaces/srv/GetCoords_Response.
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
-- \@see Ros2Mecharm_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mecharm_interfacesSrvGetCoords_Response :: W.Decoder Ros2Mecharm_interfacesSrvGetCoords_Response
readRos2Mecharm_interfacesSrvGetCoords_Response = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  let value = Ros2Mecharm_interfacesSrvGetCoords_Response a0 a1 a2 a3 a4 a5
  case encodeRos2Mecharm_interfacesSrvGetCoords_Response value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mecharm_interfaces/srv/GetCoords_Response value.
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
-- \@see Ros2Mecharm_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mecharm_interfacesSrvGetCoords_Response :: B.ByteString -> Either Word32 Ros2Mecharm_interfacesSrvGetCoords_Response
decodeRos2Mecharm_interfacesSrvGetCoords_Response = W.runDecoder 24 readRos2Mecharm_interfacesSrvGetCoords_Response
instance Canonical Ros2Mecharm_interfacesSrvGetCoords_Response where
  maximumBytes _ = 24
  encodeValue = encodeRos2Mecharm_interfacesSrvGetCoords_Response
  readValue = readRos2Mecharm_interfacesSrvGetCoords_Response
-- | \@brief Complete ROS 2 mecharm_interfaces/srv/GripperStatus_Request value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_044bf47303f5da0d0e17e795b8567b714d55680e8144c8e2e71ff7032859dfbb.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mecharm_interfacesSrvGripperStatus_Request = Ros2Mecharm_interfacesSrvGripperStatus_Request
  {
    -- | \@brief mecharm_interfaces/srv/GripperStatus_Request.status: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesSrvGripperStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesSrvGripperStatus_Request_status :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mecharm_interfaces/srv/GripperStatus_Request.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mecharm_interfacesSrvGripperStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mecharm_interfacesSrvGripperStatus_Request :: Ros2Mecharm_interfacesSrvGripperStatus_Request
defaultRos2Mecharm_interfacesSrvGripperStatus_Request = Ros2Mecharm_interfacesSrvGripperStatus_Request (False)
-- | \@brief Canonical codec identity of mecharm_interfaces/srv/GripperStatus_Request.
-- \@details Exact identity UWVMROS1_044bf47303f5da0d0e17e795b8567b714d55680e8144c8e2e71ff7032859dfbb
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mecharm_interfacesSrvGripperStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mecharm_interfacesSrvGripperStatus_RequestCodecIdentity :: String
-- | \@brief Canonical codec identity of mecharm_interfaces/srv/GripperStatus_Request.
-- \@details Exact identity UWVMROS1_044bf47303f5da0d0e17e795b8567b714d55680e8144c8e2e71ff7032859dfbb
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mecharm_interfacesSrvGripperStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mecharm_interfacesSrvGripperStatus_RequestCodecIdentity = "UWVMROS1_044bf47303f5da0d0e17e795b8567b714d55680e8144c8e2e71ff7032859dfbb"
-- | \@brief Encode one complete mecharm_interfaces/srv/GripperStatus_Request value.
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
-- \@see Ros2Mecharm_interfacesSrvGripperStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mecharm_interfacesSrvGripperStatus_Request :: Ros2Mecharm_interfacesSrvGripperStatus_Request -> Either Word32 B.ByteString
encodeRos2Mecharm_interfacesSrvGripperStatus_Request value = do
  b0 <- W.encodeBool (ros2Mecharm_interfacesSrvGripperStatus_Request_status value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of mecharm_interfaces/srv/GripperStatus_Request.
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
-- \@see Ros2Mecharm_interfacesSrvGripperStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mecharm_interfacesSrvGripperStatus_Request :: W.Decoder Ros2Mecharm_interfacesSrvGripperStatus_Request
readRos2Mecharm_interfacesSrvGripperStatus_Request = do
  a0 <- W.boolean
  let value = Ros2Mecharm_interfacesSrvGripperStatus_Request a0
  case encodeRos2Mecharm_interfacesSrvGripperStatus_Request value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mecharm_interfaces/srv/GripperStatus_Request value.
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
-- \@see Ros2Mecharm_interfacesSrvGripperStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mecharm_interfacesSrvGripperStatus_Request :: B.ByteString -> Either Word32 Ros2Mecharm_interfacesSrvGripperStatus_Request
decodeRos2Mecharm_interfacesSrvGripperStatus_Request = W.runDecoder 1 readRos2Mecharm_interfacesSrvGripperStatus_Request
instance Canonical Ros2Mecharm_interfacesSrvGripperStatus_Request where
  maximumBytes _ = 1
  encodeValue = encodeRos2Mecharm_interfacesSrvGripperStatus_Request
  readValue = readRos2Mecharm_interfacesSrvGripperStatus_Request
-- | \@brief Complete ROS 2 mecharm_interfaces/srv/GripperStatus_Response value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_5aeee3c79bb6ebe4a4cb77f54552e97dcc155c65151a5965761a360d41acbea3.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mecharm_interfacesSrvGripperStatus_Response = Ros2Mecharm_interfacesSrvGripperStatus_Response
  {
    -- | \@brief mecharm_interfaces/srv/GripperStatus_Response.flag: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesSrvGripperStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesSrvGripperStatus_Response_flag :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mecharm_interfaces/srv/GripperStatus_Response.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mecharm_interfacesSrvGripperStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mecharm_interfacesSrvGripperStatus_Response :: Ros2Mecharm_interfacesSrvGripperStatus_Response
defaultRos2Mecharm_interfacesSrvGripperStatus_Response =
  Ros2Mecharm_interfacesSrvGripperStatus_Response
    (False)
-- | \@brief Canonical codec identity of mecharm_interfaces/srv/GripperStatus_Response.
-- \@details Exact identity UWVMROS1_5aeee3c79bb6ebe4a4cb77f54552e97dcc155c65151a5965761a360d41acbea3
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mecharm_interfacesSrvGripperStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mecharm_interfacesSrvGripperStatus_ResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of mecharm_interfaces/srv/GripperStatus_Response.
-- \@details Exact identity UWVMROS1_5aeee3c79bb6ebe4a4cb77f54552e97dcc155c65151a5965761a360d41acbea3
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mecharm_interfacesSrvGripperStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mecharm_interfacesSrvGripperStatus_ResponseCodecIdentity = "UWVMROS1_5aeee3c79bb6ebe4a4cb77f54552e97dcc155c65151a5965761a360d41acbea3"
-- | \@brief Encode one complete mecharm_interfaces/srv/GripperStatus_Response value.
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
-- \@see Ros2Mecharm_interfacesSrvGripperStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mecharm_interfacesSrvGripperStatus_Response :: Ros2Mecharm_interfacesSrvGripperStatus_Response -> Either Word32 B.ByteString
encodeRos2Mecharm_interfacesSrvGripperStatus_Response value = do
  b0 <- W.encodeBool (ros2Mecharm_interfacesSrvGripperStatus_Response_flag value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of mecharm_interfaces/srv/GripperStatus_Response.
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
-- \@see Ros2Mecharm_interfacesSrvGripperStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mecharm_interfacesSrvGripperStatus_Response :: W.Decoder Ros2Mecharm_interfacesSrvGripperStatus_Response
readRos2Mecharm_interfacesSrvGripperStatus_Response = do
  a0 <- W.boolean
  let value = Ros2Mecharm_interfacesSrvGripperStatus_Response a0
  case encodeRos2Mecharm_interfacesSrvGripperStatus_Response value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mecharm_interfaces/srv/GripperStatus_Response value.
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
-- \@see Ros2Mecharm_interfacesSrvGripperStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mecharm_interfacesSrvGripperStatus_Response :: B.ByteString -> Either Word32 Ros2Mecharm_interfacesSrvGripperStatus_Response
decodeRos2Mecharm_interfacesSrvGripperStatus_Response = W.runDecoder 1 readRos2Mecharm_interfacesSrvGripperStatus_Response
instance Canonical Ros2Mecharm_interfacesSrvGripperStatus_Response where
  maximumBytes _ = 1
  encodeValue = encodeRos2Mecharm_interfacesSrvGripperStatus_Response
  readValue = readRos2Mecharm_interfacesSrvGripperStatus_Response
-- | \@brief Complete ROS 2 mecharm_interfaces/srv/PumpStatus_Request value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies
-- 3..3 bytes and is identified by
-- UWVMROS1_f80774682b7b1d447ff2f8dd7f6ac2f917dd4f71ccd3b1685a57b579fa41d6b9.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mecharm_interfacesSrvPumpStatus_Request = Ros2Mecharm_interfacesSrvPumpStatus_Request
  {
    -- | \@brief mecharm_interfaces/srv/PumpStatus_Request.status: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesSrvPumpStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesSrvPumpStatus_Request_status :: Bool
  ,
    -- | \@brief mecharm_interfaces/srv/PumpStatus_Request.pin1: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesSrvPumpStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesSrvPumpStatus_Request_pin1 :: Int8
  ,
    -- | \@brief mecharm_interfaces/srv/PumpStatus_Request.pin2: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesSrvPumpStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesSrvPumpStatus_Request_pin2 :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mecharm_interfaces/srv/PumpStatus_Request.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mecharm_interfacesSrvPumpStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mecharm_interfacesSrvPumpStatus_Request :: Ros2Mecharm_interfacesSrvPumpStatus_Request
defaultRos2Mecharm_interfacesSrvPumpStatus_Request =
  Ros2Mecharm_interfacesSrvPumpStatus_Request
    (False)
    (0)
    (0)
-- | \@brief Canonical codec identity of mecharm_interfaces/srv/PumpStatus_Request.
-- \@details Exact identity UWVMROS1_f80774682b7b1d447ff2f8dd7f6ac2f917dd4f71ccd3b1685a57b579fa41d6b9
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mecharm_interfacesSrvPumpStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mecharm_interfacesSrvPumpStatus_RequestCodecIdentity :: String
-- | \@brief Canonical codec identity of mecharm_interfaces/srv/PumpStatus_Request.
-- \@details Exact identity UWVMROS1_f80774682b7b1d447ff2f8dd7f6ac2f917dd4f71ccd3b1685a57b579fa41d6b9
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mecharm_interfacesSrvPumpStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mecharm_interfacesSrvPumpStatus_RequestCodecIdentity = "UWVMROS1_f80774682b7b1d447ff2f8dd7f6ac2f917dd4f71ccd3b1685a57b579fa41d6b9"
-- | \@brief Encode one complete mecharm_interfaces/srv/PumpStatus_Request value.
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
-- \@see Ros2Mecharm_interfacesSrvPumpStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mecharm_interfacesSrvPumpStatus_Request :: Ros2Mecharm_interfacesSrvPumpStatus_Request -> Either Word32 B.ByteString
encodeRos2Mecharm_interfacesSrvPumpStatus_Request value = do
  b0 <- W.encodeBool (ros2Mecharm_interfacesSrvPumpStatus_Request_status value)
  b1 <- W.encodeSigned 1 (fromIntegral (ros2Mecharm_interfacesSrvPumpStatus_Request_pin1 value))
  b2 <- W.encodeSigned 1 (fromIntegral (ros2Mecharm_interfacesSrvPumpStatus_Request_pin2 value))
  W.bounded 3 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of mecharm_interfaces/srv/PumpStatus_Request.
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
-- \@see Ros2Mecharm_interfacesSrvPumpStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mecharm_interfacesSrvPumpStatus_Request :: W.Decoder Ros2Mecharm_interfacesSrvPumpStatus_Request
readRos2Mecharm_interfacesSrvPumpStatus_Request = do
  a0 <- W.boolean
  a1 <- fromIntegral <$> W.signed 1
  a2 <- fromIntegral <$> W.signed 1
  let value = Ros2Mecharm_interfacesSrvPumpStatus_Request a0 a1 a2
  case encodeRos2Mecharm_interfacesSrvPumpStatus_Request value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mecharm_interfaces/srv/PumpStatus_Request value.
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
-- \@see Ros2Mecharm_interfacesSrvPumpStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mecharm_interfacesSrvPumpStatus_Request :: B.ByteString -> Either Word32 Ros2Mecharm_interfacesSrvPumpStatus_Request
decodeRos2Mecharm_interfacesSrvPumpStatus_Request = W.runDecoder 3 readRos2Mecharm_interfacesSrvPumpStatus_Request
instance Canonical Ros2Mecharm_interfacesSrvPumpStatus_Request where
  maximumBytes _ = 3
  encodeValue = encodeRos2Mecharm_interfacesSrvPumpStatus_Request
  readValue = readRos2Mecharm_interfacesSrvPumpStatus_Request
-- | \@brief Complete ROS 2 mecharm_interfaces/srv/PumpStatus_Response value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_935c0e2aaca3f1e8aad8e4487484292b3d30ccdff180a9aaa50f454f75ecff1b.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mecharm_interfacesSrvPumpStatus_Response = Ros2Mecharm_interfacesSrvPumpStatus_Response
  {
    -- | \@brief mecharm_interfaces/srv/PumpStatus_Response.flag: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesSrvPumpStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesSrvPumpStatus_Response_flag :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mecharm_interfaces/srv/PumpStatus_Response.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mecharm_interfacesSrvPumpStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mecharm_interfacesSrvPumpStatus_Response :: Ros2Mecharm_interfacesSrvPumpStatus_Response
defaultRos2Mecharm_interfacesSrvPumpStatus_Response = Ros2Mecharm_interfacesSrvPumpStatus_Response (False)
-- | \@brief Canonical codec identity of mecharm_interfaces/srv/PumpStatus_Response.
-- \@details Exact identity UWVMROS1_935c0e2aaca3f1e8aad8e4487484292b3d30ccdff180a9aaa50f454f75ecff1b
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mecharm_interfacesSrvPumpStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mecharm_interfacesSrvPumpStatus_ResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of mecharm_interfaces/srv/PumpStatus_Response.
-- \@details Exact identity UWVMROS1_935c0e2aaca3f1e8aad8e4487484292b3d30ccdff180a9aaa50f454f75ecff1b
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mecharm_interfacesSrvPumpStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mecharm_interfacesSrvPumpStatus_ResponseCodecIdentity = "UWVMROS1_935c0e2aaca3f1e8aad8e4487484292b3d30ccdff180a9aaa50f454f75ecff1b"
-- | \@brief Encode one complete mecharm_interfaces/srv/PumpStatus_Response value.
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
-- \@see Ros2Mecharm_interfacesSrvPumpStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mecharm_interfacesSrvPumpStatus_Response :: Ros2Mecharm_interfacesSrvPumpStatus_Response -> Either Word32 B.ByteString
encodeRos2Mecharm_interfacesSrvPumpStatus_Response value = do
  b0 <- W.encodeBool (ros2Mecharm_interfacesSrvPumpStatus_Response_flag value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of mecharm_interfaces/srv/PumpStatus_Response.
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
-- \@see Ros2Mecharm_interfacesSrvPumpStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mecharm_interfacesSrvPumpStatus_Response :: W.Decoder Ros2Mecharm_interfacesSrvPumpStatus_Response
readRos2Mecharm_interfacesSrvPumpStatus_Response = do
  a0 <- W.boolean
  let value = Ros2Mecharm_interfacesSrvPumpStatus_Response a0
  case encodeRos2Mecharm_interfacesSrvPumpStatus_Response value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mecharm_interfaces/srv/PumpStatus_Response value.
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
-- \@see Ros2Mecharm_interfacesSrvPumpStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mecharm_interfacesSrvPumpStatus_Response :: B.ByteString -> Either Word32 Ros2Mecharm_interfacesSrvPumpStatus_Response
decodeRos2Mecharm_interfacesSrvPumpStatus_Response = W.runDecoder 1 readRos2Mecharm_interfacesSrvPumpStatus_Response
instance Canonical Ros2Mecharm_interfacesSrvPumpStatus_Response where
  maximumBytes _ = 1
  encodeValue = encodeRos2Mecharm_interfacesSrvPumpStatus_Response
  readValue = readRos2Mecharm_interfacesSrvPumpStatus_Response
-- | \@brief Complete ROS 2 mecharm_interfaces/srv/SetAngles_Request value.
-- \@details All 7 declared fields are retained in source order. The canonical representation occupies
-- 25..25 bytes and is identified by
-- UWVMROS1_86897875ef9a609098bc1eabba63aec7d960de380db98370e7a67626b2253eeb.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mecharm_interfacesSrvSetAngles_Request = Ros2Mecharm_interfacesSrvSetAngles_Request
  {
    -- | \@brief mecharm_interfaces/srv/SetAngles_Request.joint_1: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesSrvSetAngles_Request_joint_1 :: Float
  ,
    -- | \@brief mecharm_interfaces/srv/SetAngles_Request.joint_2: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesSrvSetAngles_Request_joint_2 :: Float
  ,
    -- | \@brief mecharm_interfaces/srv/SetAngles_Request.joint_3: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesSrvSetAngles_Request_joint_3 :: Float
  ,
    -- | \@brief mecharm_interfaces/srv/SetAngles_Request.joint_4: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesSrvSetAngles_Request_joint_4 :: Float
  ,
    -- | \@brief mecharm_interfaces/srv/SetAngles_Request.joint_5: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesSrvSetAngles_Request_joint_5 :: Float
  ,
    -- | \@brief mecharm_interfaces/srv/SetAngles_Request.joint_6: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesSrvSetAngles_Request_joint_6 :: Float
  ,
    -- | \@brief mecharm_interfaces/srv/SetAngles_Request.speed: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesSrvSetAngles_Request_speed :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mecharm_interfaces/srv/SetAngles_Request.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mecharm_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mecharm_interfacesSrvSetAngles_Request :: Ros2Mecharm_interfacesSrvSetAngles_Request
defaultRos2Mecharm_interfacesSrvSetAngles_Request =
  Ros2Mecharm_interfacesSrvSetAngles_Request
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mecharm_interfaces/srv/SetAngles_Request.
-- \@details Exact identity UWVMROS1_86897875ef9a609098bc1eabba63aec7d960de380db98370e7a67626b2253eeb
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mecharm_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mecharm_interfacesSrvSetAngles_RequestCodecIdentity :: String
-- | \@brief Canonical codec identity of mecharm_interfaces/srv/SetAngles_Request.
-- \@details Exact identity UWVMROS1_86897875ef9a609098bc1eabba63aec7d960de380db98370e7a67626b2253eeb
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mecharm_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mecharm_interfacesSrvSetAngles_RequestCodecIdentity = "UWVMROS1_86897875ef9a609098bc1eabba63aec7d960de380db98370e7a67626b2253eeb"
-- | \@brief Encode one complete mecharm_interfaces/srv/SetAngles_Request value.
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
-- \@see Ros2Mecharm_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mecharm_interfacesSrvSetAngles_Request :: Ros2Mecharm_interfacesSrvSetAngles_Request -> Either Word32 B.ByteString
encodeRos2Mecharm_interfacesSrvSetAngles_Request value = do
  b0 <- W.encodeFloat32 (ros2Mecharm_interfacesSrvSetAngles_Request_joint_1 value)
  b1 <- W.encodeFloat32 (ros2Mecharm_interfacesSrvSetAngles_Request_joint_2 value)
  b2 <- W.encodeFloat32 (ros2Mecharm_interfacesSrvSetAngles_Request_joint_3 value)
  b3 <- W.encodeFloat32 (ros2Mecharm_interfacesSrvSetAngles_Request_joint_4 value)
  b4 <- W.encodeFloat32 (ros2Mecharm_interfacesSrvSetAngles_Request_joint_5 value)
  b5 <- W.encodeFloat32 (ros2Mecharm_interfacesSrvSetAngles_Request_joint_6 value)
  b6 <- W.encodeSigned 1 (fromIntegral (ros2Mecharm_interfacesSrvSetAngles_Request_speed value))
  W.bounded 25 [b0, b1, b2, b3, b4, b5, b6]
-- | \@brief Read the ordered canonical fields of mecharm_interfaces/srv/SetAngles_Request.
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
-- \@see Ros2Mecharm_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mecharm_interfacesSrvSetAngles_Request :: W.Decoder Ros2Mecharm_interfacesSrvSetAngles_Request
readRos2Mecharm_interfacesSrvSetAngles_Request = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  a6 <- fromIntegral <$> W.signed 1
  let value = Ros2Mecharm_interfacesSrvSetAngles_Request a0 a1 a2 a3 a4 a5 a6
  case encodeRos2Mecharm_interfacesSrvSetAngles_Request value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mecharm_interfaces/srv/SetAngles_Request value.
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
-- \@see Ros2Mecharm_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mecharm_interfacesSrvSetAngles_Request :: B.ByteString -> Either Word32 Ros2Mecharm_interfacesSrvSetAngles_Request
decodeRos2Mecharm_interfacesSrvSetAngles_Request = W.runDecoder 25 readRos2Mecharm_interfacesSrvSetAngles_Request
instance Canonical Ros2Mecharm_interfacesSrvSetAngles_Request where
  maximumBytes _ = 25
  encodeValue = encodeRos2Mecharm_interfacesSrvSetAngles_Request
  readValue = readRos2Mecharm_interfacesSrvSetAngles_Request
-- | \@brief Complete ROS 2 mecharm_interfaces/srv/SetAngles_Response value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_4782fe6a137dee35bf39d863be0aea118f61dcef092c11b013c44c6f4c129620.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mecharm_interfacesSrvSetAngles_Response = Ros2Mecharm_interfacesSrvSetAngles_Response
  {
    -- | \@brief mecharm_interfaces/srv/SetAngles_Response.flag: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesSrvSetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesSrvSetAngles_Response_flag :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mecharm_interfaces/srv/SetAngles_Response.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mecharm_interfacesSrvSetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mecharm_interfacesSrvSetAngles_Response :: Ros2Mecharm_interfacesSrvSetAngles_Response
defaultRos2Mecharm_interfacesSrvSetAngles_Response = Ros2Mecharm_interfacesSrvSetAngles_Response (False)
-- | \@brief Canonical codec identity of mecharm_interfaces/srv/SetAngles_Response.
-- \@details Exact identity UWVMROS1_4782fe6a137dee35bf39d863be0aea118f61dcef092c11b013c44c6f4c129620
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mecharm_interfacesSrvSetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mecharm_interfacesSrvSetAngles_ResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of mecharm_interfaces/srv/SetAngles_Response.
-- \@details Exact identity UWVMROS1_4782fe6a137dee35bf39d863be0aea118f61dcef092c11b013c44c6f4c129620
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mecharm_interfacesSrvSetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mecharm_interfacesSrvSetAngles_ResponseCodecIdentity = "UWVMROS1_4782fe6a137dee35bf39d863be0aea118f61dcef092c11b013c44c6f4c129620"
-- | \@brief Encode one complete mecharm_interfaces/srv/SetAngles_Response value.
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
-- \@see Ros2Mecharm_interfacesSrvSetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mecharm_interfacesSrvSetAngles_Response :: Ros2Mecharm_interfacesSrvSetAngles_Response -> Either Word32 B.ByteString
encodeRos2Mecharm_interfacesSrvSetAngles_Response value = do
  b0 <- W.encodeBool (ros2Mecharm_interfacesSrvSetAngles_Response_flag value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of mecharm_interfaces/srv/SetAngles_Response.
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
-- \@see Ros2Mecharm_interfacesSrvSetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mecharm_interfacesSrvSetAngles_Response :: W.Decoder Ros2Mecharm_interfacesSrvSetAngles_Response
readRos2Mecharm_interfacesSrvSetAngles_Response = do
  a0 <- W.boolean
  let value = Ros2Mecharm_interfacesSrvSetAngles_Response a0
  case encodeRos2Mecharm_interfacesSrvSetAngles_Response value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mecharm_interfaces/srv/SetAngles_Response value.
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
-- \@see Ros2Mecharm_interfacesSrvSetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mecharm_interfacesSrvSetAngles_Response :: B.ByteString -> Either Word32 Ros2Mecharm_interfacesSrvSetAngles_Response
decodeRos2Mecharm_interfacesSrvSetAngles_Response = W.runDecoder 1 readRos2Mecharm_interfacesSrvSetAngles_Response
instance Canonical Ros2Mecharm_interfacesSrvSetAngles_Response where
  maximumBytes _ = 1
  encodeValue = encodeRos2Mecharm_interfacesSrvSetAngles_Response
  readValue = readRos2Mecharm_interfacesSrvSetAngles_Response
-- | \@brief Complete ROS 2 mecharm_interfaces/srv/SetCoords_Request value.
-- \@details All 8 declared fields are retained in source order. The canonical representation occupies
-- 26..26 bytes and is identified by
-- UWVMROS1_a0daefe14076b73f1a64924ffc15a6b9647abe1b1887377e642f41b1a7920916.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mecharm_interfacesSrvSetCoords_Request = Ros2Mecharm_interfacesSrvSetCoords_Request
  {
    -- | \@brief mecharm_interfaces/srv/SetCoords_Request.x: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesSrvSetCoords_Request_x :: Float
  ,
    -- | \@brief mecharm_interfaces/srv/SetCoords_Request.y: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesSrvSetCoords_Request_y :: Float
  ,
    -- | \@brief mecharm_interfaces/srv/SetCoords_Request.z: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesSrvSetCoords_Request_z :: Float
  ,
    -- | \@brief mecharm_interfaces/srv/SetCoords_Request.rx: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesSrvSetCoords_Request_rx :: Float
  ,
    -- | \@brief mecharm_interfaces/srv/SetCoords_Request.ry: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesSrvSetCoords_Request_ry :: Float
  ,
    -- | \@brief mecharm_interfaces/srv/SetCoords_Request.rz: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesSrvSetCoords_Request_rz :: Float
  ,
    -- | \@brief mecharm_interfaces/srv/SetCoords_Request.speed: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesSrvSetCoords_Request_speed :: Int8
  ,
    -- | \@brief mecharm_interfaces/srv/SetCoords_Request.model: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesSrvSetCoords_Request_model :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mecharm_interfaces/srv/SetCoords_Request.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mecharm_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mecharm_interfacesSrvSetCoords_Request :: Ros2Mecharm_interfacesSrvSetCoords_Request
defaultRos2Mecharm_interfacesSrvSetCoords_Request =
  Ros2Mecharm_interfacesSrvSetCoords_Request
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mecharm_interfaces/srv/SetCoords_Request.
-- \@details Exact identity UWVMROS1_a0daefe14076b73f1a64924ffc15a6b9647abe1b1887377e642f41b1a7920916
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mecharm_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mecharm_interfacesSrvSetCoords_RequestCodecIdentity :: String
-- | \@brief Canonical codec identity of mecharm_interfaces/srv/SetCoords_Request.
-- \@details Exact identity UWVMROS1_a0daefe14076b73f1a64924ffc15a6b9647abe1b1887377e642f41b1a7920916
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mecharm_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mecharm_interfacesSrvSetCoords_RequestCodecIdentity = "UWVMROS1_a0daefe14076b73f1a64924ffc15a6b9647abe1b1887377e642f41b1a7920916"
-- | \@brief Encode one complete mecharm_interfaces/srv/SetCoords_Request value.
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
-- \@see Ros2Mecharm_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mecharm_interfacesSrvSetCoords_Request :: Ros2Mecharm_interfacesSrvSetCoords_Request -> Either Word32 B.ByteString
encodeRos2Mecharm_interfacesSrvSetCoords_Request value = do
  b0 <- W.encodeFloat32 (ros2Mecharm_interfacesSrvSetCoords_Request_x value)
  b1 <- W.encodeFloat32 (ros2Mecharm_interfacesSrvSetCoords_Request_y value)
  b2 <- W.encodeFloat32 (ros2Mecharm_interfacesSrvSetCoords_Request_z value)
  b3 <- W.encodeFloat32 (ros2Mecharm_interfacesSrvSetCoords_Request_rx value)
  b4 <- W.encodeFloat32 (ros2Mecharm_interfacesSrvSetCoords_Request_ry value)
  b5 <- W.encodeFloat32 (ros2Mecharm_interfacesSrvSetCoords_Request_rz value)
  b6 <- W.encodeSigned 1 (fromIntegral (ros2Mecharm_interfacesSrvSetCoords_Request_speed value))
  b7 <- W.encodeSigned 1 (fromIntegral (ros2Mecharm_interfacesSrvSetCoords_Request_model value))
  W.bounded 26 [b0, b1, b2, b3, b4, b5, b6, b7]
-- | \@brief Read the ordered canonical fields of mecharm_interfaces/srv/SetCoords_Request.
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
-- \@see Ros2Mecharm_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mecharm_interfacesSrvSetCoords_Request :: W.Decoder Ros2Mecharm_interfacesSrvSetCoords_Request
readRos2Mecharm_interfacesSrvSetCoords_Request = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  a6 <- fromIntegral <$> W.signed 1
  a7 <- fromIntegral <$> W.signed 1
  let value = Ros2Mecharm_interfacesSrvSetCoords_Request a0 a1 a2 a3 a4 a5 a6 a7
  case encodeRos2Mecharm_interfacesSrvSetCoords_Request value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mecharm_interfaces/srv/SetCoords_Request value.
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
-- \@see Ros2Mecharm_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mecharm_interfacesSrvSetCoords_Request :: B.ByteString -> Either Word32 Ros2Mecharm_interfacesSrvSetCoords_Request
decodeRos2Mecharm_interfacesSrvSetCoords_Request = W.runDecoder 26 readRos2Mecharm_interfacesSrvSetCoords_Request
instance Canonical Ros2Mecharm_interfacesSrvSetCoords_Request where
  maximumBytes _ = 26
  encodeValue = encodeRos2Mecharm_interfacesSrvSetCoords_Request
  readValue = readRos2Mecharm_interfacesSrvSetCoords_Request
-- | \@brief Complete ROS 2 mecharm_interfaces/srv/SetCoords_Response value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_43d02cfe61b6fb08f035e1f8ea78496cdcb488ed4c916f528415dce4ab810b7f.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mecharm_interfacesSrvSetCoords_Response = Ros2Mecharm_interfacesSrvSetCoords_Response
  {
    -- | \@brief mecharm_interfaces/srv/SetCoords_Response.flag: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mecharm_interfacesSrvSetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mecharm_interfacesSrvSetCoords_Response_flag :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mecharm_interfaces/srv/SetCoords_Response.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mecharm_interfacesSrvSetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mecharm_interfacesSrvSetCoords_Response :: Ros2Mecharm_interfacesSrvSetCoords_Response
defaultRos2Mecharm_interfacesSrvSetCoords_Response = Ros2Mecharm_interfacesSrvSetCoords_Response (False)
-- | \@brief Canonical codec identity of mecharm_interfaces/srv/SetCoords_Response.
-- \@details Exact identity UWVMROS1_43d02cfe61b6fb08f035e1f8ea78496cdcb488ed4c916f528415dce4ab810b7f
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mecharm_interfacesSrvSetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mecharm_interfacesSrvSetCoords_ResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of mecharm_interfaces/srv/SetCoords_Response.
-- \@details Exact identity UWVMROS1_43d02cfe61b6fb08f035e1f8ea78496cdcb488ed4c916f528415dce4ab810b7f
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mecharm_interfacesSrvSetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mecharm_interfacesSrvSetCoords_ResponseCodecIdentity = "UWVMROS1_43d02cfe61b6fb08f035e1f8ea78496cdcb488ed4c916f528415dce4ab810b7f"
-- | \@brief Encode one complete mecharm_interfaces/srv/SetCoords_Response value.
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
-- \@see Ros2Mecharm_interfacesSrvSetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mecharm_interfacesSrvSetCoords_Response :: Ros2Mecharm_interfacesSrvSetCoords_Response -> Either Word32 B.ByteString
encodeRos2Mecharm_interfacesSrvSetCoords_Response value = do
  b0 <- W.encodeBool (ros2Mecharm_interfacesSrvSetCoords_Response_flag value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of mecharm_interfaces/srv/SetCoords_Response.
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
-- \@see Ros2Mecharm_interfacesSrvSetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mecharm_interfacesSrvSetCoords_Response :: W.Decoder Ros2Mecharm_interfacesSrvSetCoords_Response
readRos2Mecharm_interfacesSrvSetCoords_Response = do
  a0 <- W.boolean
  let value = Ros2Mecharm_interfacesSrvSetCoords_Response a0
  case encodeRos2Mecharm_interfacesSrvSetCoords_Response value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mecharm_interfaces/srv/SetCoords_Response value.
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
-- \@see Ros2Mecharm_interfacesSrvSetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mecharm_interfacesSrvSetCoords_Response :: B.ByteString -> Either Word32 Ros2Mecharm_interfacesSrvSetCoords_Response
decodeRos2Mecharm_interfacesSrvSetCoords_Response = W.runDecoder 1 readRos2Mecharm_interfacesSrvSetCoords_Response
instance Canonical Ros2Mecharm_interfacesSrvSetCoords_Response where
  maximumBytes _ = 1
  encodeValue = encodeRos2Mecharm_interfacesSrvSetCoords_Response
  readValue = readRos2Mecharm_interfacesSrvSetCoords_Response
-- | \@brief Complete ROS 2 mycobot_interfaces/msg/MycobotAngles value.
-- \@details All 6 declared fields are retained in source order. The canonical representation occupies
-- 24..24 bytes and is identified by
-- UWVMROS1_38f099339ed5ee9fe56a5b44c3f0849e2ff7ff721b2a95b5cf49e3b92f6a9d82.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mycobot_interfacesMsgMycobotAngles = Ros2Mycobot_interfacesMsgMycobotAngles
  {
    -- | \@brief mycobot_interfaces/msg/MycobotAngles.joint_1: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesMsgMycobotAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesMsgMycobotAngles_joint_1 :: Float
  ,
    -- | \@brief mycobot_interfaces/msg/MycobotAngles.joint_2: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesMsgMycobotAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesMsgMycobotAngles_joint_2 :: Float
  ,
    -- | \@brief mycobot_interfaces/msg/MycobotAngles.joint_3: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesMsgMycobotAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesMsgMycobotAngles_joint_3 :: Float
  ,
    -- | \@brief mycobot_interfaces/msg/MycobotAngles.joint_4: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesMsgMycobotAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesMsgMycobotAngles_joint_4 :: Float
  ,
    -- | \@brief mycobot_interfaces/msg/MycobotAngles.joint_5: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesMsgMycobotAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesMsgMycobotAngles_joint_5 :: Float
  ,
    -- | \@brief mycobot_interfaces/msg/MycobotAngles.joint_6: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesMsgMycobotAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesMsgMycobotAngles_joint_6 :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_interfaces/msg/MycobotAngles.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mycobot_interfacesMsgMycobotAngles; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mycobot_interfacesMsgMycobotAngles :: Ros2Mycobot_interfacesMsgMycobotAngles
defaultRos2Mycobot_interfacesMsgMycobotAngles = Ros2Mycobot_interfacesMsgMycobotAngles (0) (0) (0) (0) (0) (0)
-- | \@brief Canonical codec identity of mycobot_interfaces/msg/MycobotAngles.
-- \@details Exact identity UWVMROS1_38f099339ed5ee9fe56a5b44c3f0849e2ff7ff721b2a95b5cf49e3b92f6a9d82
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_interfacesMsgMycobotAngles; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_interfacesMsgMycobotAnglesCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_interfaces/msg/MycobotAngles.
-- \@details Exact identity UWVMROS1_38f099339ed5ee9fe56a5b44c3f0849e2ff7ff721b2a95b5cf49e3b92f6a9d82
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_interfacesMsgMycobotAngles; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_interfacesMsgMycobotAnglesCodecIdentity = "UWVMROS1_38f099339ed5ee9fe56a5b44c3f0849e2ff7ff721b2a95b5cf49e3b92f6a9d82"
-- | \@brief Encode one complete mycobot_interfaces/msg/MycobotAngles value.
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
-- \@see Ros2Mycobot_interfacesMsgMycobotAngles; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mycobot_interfacesMsgMycobotAngles :: Ros2Mycobot_interfacesMsgMycobotAngles -> Either Word32 B.ByteString
encodeRos2Mycobot_interfacesMsgMycobotAngles value = do
  b0 <- W.encodeFloat32 (ros2Mycobot_interfacesMsgMycobotAngles_joint_1 value)
  b1 <- W.encodeFloat32 (ros2Mycobot_interfacesMsgMycobotAngles_joint_2 value)
  b2 <- W.encodeFloat32 (ros2Mycobot_interfacesMsgMycobotAngles_joint_3 value)
  b3 <- W.encodeFloat32 (ros2Mycobot_interfacesMsgMycobotAngles_joint_4 value)
  b4 <- W.encodeFloat32 (ros2Mycobot_interfacesMsgMycobotAngles_joint_5 value)
  b5 <- W.encodeFloat32 (ros2Mycobot_interfacesMsgMycobotAngles_joint_6 value)
  W.bounded 24 [b0, b1, b2, b3, b4, b5]
-- | \@brief Read the ordered canonical fields of mycobot_interfaces/msg/MycobotAngles.
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
-- \@see Ros2Mycobot_interfacesMsgMycobotAngles; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mycobot_interfacesMsgMycobotAngles :: W.Decoder Ros2Mycobot_interfacesMsgMycobotAngles
readRos2Mycobot_interfacesMsgMycobotAngles = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  let value = Ros2Mycobot_interfacesMsgMycobotAngles a0 a1 a2 a3 a4 a5
  case encodeRos2Mycobot_interfacesMsgMycobotAngles value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_interfaces/msg/MycobotAngles value.
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
-- \@see Ros2Mycobot_interfacesMsgMycobotAngles; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mycobot_interfacesMsgMycobotAngles :: B.ByteString -> Either Word32 Ros2Mycobot_interfacesMsgMycobotAngles
decodeRos2Mycobot_interfacesMsgMycobotAngles = W.runDecoder 24 readRos2Mycobot_interfacesMsgMycobotAngles
instance Canonical Ros2Mycobot_interfacesMsgMycobotAngles where
  maximumBytes _ = 24
  encodeValue = encodeRos2Mycobot_interfacesMsgMycobotAngles
  readValue = readRos2Mycobot_interfacesMsgMycobotAngles
-- | \@brief Complete ROS 2 mycobot_interfaces/msg/MycobotCoords value.
-- \@details All 6 declared fields are retained in source order. The canonical representation occupies
-- 24..24 bytes and is identified by
-- UWVMROS1_8d9606c561db7680e816f5a19fd148c374f271acee8b261f7d060f370e0399d7.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mycobot_interfacesMsgMycobotCoords = Ros2Mycobot_interfacesMsgMycobotCoords
  {
    -- | \@brief mycobot_interfaces/msg/MycobotCoords.x: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesMsgMycobotCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesMsgMycobotCoords_x :: Float
  ,
    -- | \@brief mycobot_interfaces/msg/MycobotCoords.y: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesMsgMycobotCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesMsgMycobotCoords_y :: Float
  ,
    -- | \@brief mycobot_interfaces/msg/MycobotCoords.z: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesMsgMycobotCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesMsgMycobotCoords_z :: Float
  ,
    -- | \@brief mycobot_interfaces/msg/MycobotCoords.rx: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesMsgMycobotCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesMsgMycobotCoords_rx :: Float
  ,
    -- | \@brief mycobot_interfaces/msg/MycobotCoords.ry: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesMsgMycobotCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesMsgMycobotCoords_ry :: Float
  ,
    -- | \@brief mycobot_interfaces/msg/MycobotCoords.rz: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesMsgMycobotCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesMsgMycobotCoords_rz :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_interfaces/msg/MycobotCoords.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mycobot_interfacesMsgMycobotCoords; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mycobot_interfacesMsgMycobotCoords :: Ros2Mycobot_interfacesMsgMycobotCoords
defaultRos2Mycobot_interfacesMsgMycobotCoords = Ros2Mycobot_interfacesMsgMycobotCoords (0) (0) (0) (0) (0) (0)
-- | \@brief Canonical codec identity of mycobot_interfaces/msg/MycobotCoords.
-- \@details Exact identity UWVMROS1_8d9606c561db7680e816f5a19fd148c374f271acee8b261f7d060f370e0399d7
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_interfacesMsgMycobotCoords; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_interfacesMsgMycobotCoordsCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_interfaces/msg/MycobotCoords.
-- \@details Exact identity UWVMROS1_8d9606c561db7680e816f5a19fd148c374f271acee8b261f7d060f370e0399d7
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_interfacesMsgMycobotCoords; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_interfacesMsgMycobotCoordsCodecIdentity = "UWVMROS1_8d9606c561db7680e816f5a19fd148c374f271acee8b261f7d060f370e0399d7"
-- | \@brief Encode one complete mycobot_interfaces/msg/MycobotCoords value.
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
-- \@see Ros2Mycobot_interfacesMsgMycobotCoords; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mycobot_interfacesMsgMycobotCoords :: Ros2Mycobot_interfacesMsgMycobotCoords -> Either Word32 B.ByteString
encodeRos2Mycobot_interfacesMsgMycobotCoords value = do
  b0 <- W.encodeFloat32 (ros2Mycobot_interfacesMsgMycobotCoords_x value)
  b1 <- W.encodeFloat32 (ros2Mycobot_interfacesMsgMycobotCoords_y value)
  b2 <- W.encodeFloat32 (ros2Mycobot_interfacesMsgMycobotCoords_z value)
  b3 <- W.encodeFloat32 (ros2Mycobot_interfacesMsgMycobotCoords_rx value)
  b4 <- W.encodeFloat32 (ros2Mycobot_interfacesMsgMycobotCoords_ry value)
  b5 <- W.encodeFloat32 (ros2Mycobot_interfacesMsgMycobotCoords_rz value)
  W.bounded 24 [b0, b1, b2, b3, b4, b5]
-- | \@brief Read the ordered canonical fields of mycobot_interfaces/msg/MycobotCoords.
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
-- \@see Ros2Mycobot_interfacesMsgMycobotCoords; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mycobot_interfacesMsgMycobotCoords :: W.Decoder Ros2Mycobot_interfacesMsgMycobotCoords
readRos2Mycobot_interfacesMsgMycobotCoords = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  let value = Ros2Mycobot_interfacesMsgMycobotCoords a0 a1 a2 a3 a4 a5
  case encodeRos2Mycobot_interfacesMsgMycobotCoords value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_interfaces/msg/MycobotCoords value.
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
-- \@see Ros2Mycobot_interfacesMsgMycobotCoords; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mycobot_interfacesMsgMycobotCoords :: B.ByteString -> Either Word32 Ros2Mycobot_interfacesMsgMycobotCoords
decodeRos2Mycobot_interfacesMsgMycobotCoords = W.runDecoder 24 readRos2Mycobot_interfacesMsgMycobotCoords
instance Canonical Ros2Mycobot_interfacesMsgMycobotCoords where
  maximumBytes _ = 24
  encodeValue = encodeRos2Mycobot_interfacesMsgMycobotCoords
  readValue = readRos2Mycobot_interfacesMsgMycobotCoords
-- | \@brief Complete ROS 2 mycobot_interfaces/msg/MycobotGripperStatus value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_4dc3ab413af3da01e26a3289ef9e5ef39488d00483631d701b4d617d9c9ba33d.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mycobot_interfacesMsgMycobotGripperStatus = Ros2Mycobot_interfacesMsgMycobotGripperStatus
  {
    -- | \@brief mycobot_interfaces/msg/MycobotGripperStatus.status: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesMsgMycobotGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesMsgMycobotGripperStatus_status :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_interfaces/msg/MycobotGripperStatus.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mycobot_interfacesMsgMycobotGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mycobot_interfacesMsgMycobotGripperStatus :: Ros2Mycobot_interfacesMsgMycobotGripperStatus
defaultRos2Mycobot_interfacesMsgMycobotGripperStatus = Ros2Mycobot_interfacesMsgMycobotGripperStatus (False)
-- | \@brief Canonical codec identity of mycobot_interfaces/msg/MycobotGripperStatus.
-- \@details Exact identity UWVMROS1_4dc3ab413af3da01e26a3289ef9e5ef39488d00483631d701b4d617d9c9ba33d
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_interfacesMsgMycobotGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_interfacesMsgMycobotGripperStatusCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_interfaces/msg/MycobotGripperStatus.
-- \@details Exact identity UWVMROS1_4dc3ab413af3da01e26a3289ef9e5ef39488d00483631d701b4d617d9c9ba33d
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_interfacesMsgMycobotGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_interfacesMsgMycobotGripperStatusCodecIdentity = "UWVMROS1_4dc3ab413af3da01e26a3289ef9e5ef39488d00483631d701b4d617d9c9ba33d"
-- | \@brief Encode one complete mycobot_interfaces/msg/MycobotGripperStatus value.
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
-- \@see Ros2Mycobot_interfacesMsgMycobotGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mycobot_interfacesMsgMycobotGripperStatus :: Ros2Mycobot_interfacesMsgMycobotGripperStatus -> Either Word32 B.ByteString
encodeRos2Mycobot_interfacesMsgMycobotGripperStatus value = do
  b0 <- W.encodeBool (ros2Mycobot_interfacesMsgMycobotGripperStatus_status value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of mycobot_interfaces/msg/MycobotGripperStatus.
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
-- \@see Ros2Mycobot_interfacesMsgMycobotGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mycobot_interfacesMsgMycobotGripperStatus :: W.Decoder Ros2Mycobot_interfacesMsgMycobotGripperStatus
readRos2Mycobot_interfacesMsgMycobotGripperStatus = do
  a0 <- W.boolean
  let value = Ros2Mycobot_interfacesMsgMycobotGripperStatus a0
  case encodeRos2Mycobot_interfacesMsgMycobotGripperStatus value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_interfaces/msg/MycobotGripperStatus value.
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
-- \@see Ros2Mycobot_interfacesMsgMycobotGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mycobot_interfacesMsgMycobotGripperStatus :: B.ByteString -> Either Word32 Ros2Mycobot_interfacesMsgMycobotGripperStatus
decodeRos2Mycobot_interfacesMsgMycobotGripperStatus = W.runDecoder 1 readRos2Mycobot_interfacesMsgMycobotGripperStatus
instance Canonical Ros2Mycobot_interfacesMsgMycobotGripperStatus where
  maximumBytes _ = 1
  encodeValue = encodeRos2Mycobot_interfacesMsgMycobotGripperStatus
  readValue = readRos2Mycobot_interfacesMsgMycobotGripperStatus
-- | \@brief Complete ROS 2 mycobot_interfaces/msg/MycobotPumpStatus value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies
-- 3..3 bytes and is identified by
-- UWVMROS1_860004dc3975ab44b5a1b0a77a9ff01ab58bfc71d7142d842d3bf9c636365e58.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mycobot_interfacesMsgMycobotPumpStatus = Ros2Mycobot_interfacesMsgMycobotPumpStatus
  {
    -- | \@brief mycobot_interfaces/msg/MycobotPumpStatus.status: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesMsgMycobotPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesMsgMycobotPumpStatus_status :: Bool
  ,
    -- | \@brief mycobot_interfaces/msg/MycobotPumpStatus.pin1: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesMsgMycobotPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesMsgMycobotPumpStatus_pin1 :: Int8
  ,
    -- | \@brief mycobot_interfaces/msg/MycobotPumpStatus.pin2: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesMsgMycobotPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesMsgMycobotPumpStatus_pin2 :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_interfaces/msg/MycobotPumpStatus.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mycobot_interfacesMsgMycobotPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mycobot_interfacesMsgMycobotPumpStatus :: Ros2Mycobot_interfacesMsgMycobotPumpStatus
defaultRos2Mycobot_interfacesMsgMycobotPumpStatus = Ros2Mycobot_interfacesMsgMycobotPumpStatus (False) (0) (0)
-- | \@brief Canonical codec identity of mycobot_interfaces/msg/MycobotPumpStatus.
-- \@details Exact identity UWVMROS1_860004dc3975ab44b5a1b0a77a9ff01ab58bfc71d7142d842d3bf9c636365e58
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_interfacesMsgMycobotPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_interfacesMsgMycobotPumpStatusCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_interfaces/msg/MycobotPumpStatus.
-- \@details Exact identity UWVMROS1_860004dc3975ab44b5a1b0a77a9ff01ab58bfc71d7142d842d3bf9c636365e58
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_interfacesMsgMycobotPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_interfacesMsgMycobotPumpStatusCodecIdentity = "UWVMROS1_860004dc3975ab44b5a1b0a77a9ff01ab58bfc71d7142d842d3bf9c636365e58"
-- | \@brief Encode one complete mycobot_interfaces/msg/MycobotPumpStatus value.
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
-- \@see Ros2Mycobot_interfacesMsgMycobotPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mycobot_interfacesMsgMycobotPumpStatus :: Ros2Mycobot_interfacesMsgMycobotPumpStatus -> Either Word32 B.ByteString
encodeRos2Mycobot_interfacesMsgMycobotPumpStatus value = do
  b0 <- W.encodeBool (ros2Mycobot_interfacesMsgMycobotPumpStatus_status value)
  b1 <- W.encodeSigned 1 (fromIntegral (ros2Mycobot_interfacesMsgMycobotPumpStatus_pin1 value))
  b2 <- W.encodeSigned 1 (fromIntegral (ros2Mycobot_interfacesMsgMycobotPumpStatus_pin2 value))
  W.bounded 3 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of mycobot_interfaces/msg/MycobotPumpStatus.
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
-- \@see Ros2Mycobot_interfacesMsgMycobotPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mycobot_interfacesMsgMycobotPumpStatus :: W.Decoder Ros2Mycobot_interfacesMsgMycobotPumpStatus
readRos2Mycobot_interfacesMsgMycobotPumpStatus = do
  a0 <- W.boolean
  a1 <- fromIntegral <$> W.signed 1
  a2 <- fromIntegral <$> W.signed 1
  let value = Ros2Mycobot_interfacesMsgMycobotPumpStatus a0 a1 a2
  case encodeRos2Mycobot_interfacesMsgMycobotPumpStatus value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_interfaces/msg/MycobotPumpStatus value.
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
-- \@see Ros2Mycobot_interfacesMsgMycobotPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mycobot_interfacesMsgMycobotPumpStatus :: B.ByteString -> Either Word32 Ros2Mycobot_interfacesMsgMycobotPumpStatus
decodeRos2Mycobot_interfacesMsgMycobotPumpStatus = W.runDecoder 3 readRos2Mycobot_interfacesMsgMycobotPumpStatus
instance Canonical Ros2Mycobot_interfacesMsgMycobotPumpStatus where
  maximumBytes _ = 3
  encodeValue = encodeRos2Mycobot_interfacesMsgMycobotPumpStatus
  readValue = readRos2Mycobot_interfacesMsgMycobotPumpStatus
-- | \@brief Complete ROS 2 mycobot_interfaces/msg/MycobotSetAngles value.
-- \@details All 7 declared fields are retained in source order. The canonical representation occupies
-- 25..25 bytes and is identified by
-- UWVMROS1_798576c5f0b03e46e5cc5d2edf81bc7042042482ef574643ca136621346d731e.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mycobot_interfacesMsgMycobotSetAngles = Ros2Mycobot_interfacesMsgMycobotSetAngles
  {
    -- | \@brief mycobot_interfaces/msg/MycobotSetAngles.joint_1: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesMsgMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesMsgMycobotSetAngles_joint_1 :: Float
  ,
    -- | \@brief mycobot_interfaces/msg/MycobotSetAngles.joint_2: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesMsgMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesMsgMycobotSetAngles_joint_2 :: Float
  ,
    -- | \@brief mycobot_interfaces/msg/MycobotSetAngles.joint_3: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesMsgMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesMsgMycobotSetAngles_joint_3 :: Float
  ,
    -- | \@brief mycobot_interfaces/msg/MycobotSetAngles.joint_4: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesMsgMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesMsgMycobotSetAngles_joint_4 :: Float
  ,
    -- | \@brief mycobot_interfaces/msg/MycobotSetAngles.joint_5: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesMsgMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesMsgMycobotSetAngles_joint_5 :: Float
  ,
    -- | \@brief mycobot_interfaces/msg/MycobotSetAngles.joint_6: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesMsgMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesMsgMycobotSetAngles_joint_6 :: Float
  ,
    -- | \@brief mycobot_interfaces/msg/MycobotSetAngles.speed: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesMsgMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesMsgMycobotSetAngles_speed :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_interfaces/msg/MycobotSetAngles.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mycobot_interfacesMsgMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mycobot_interfacesMsgMycobotSetAngles :: Ros2Mycobot_interfacesMsgMycobotSetAngles
defaultRos2Mycobot_interfacesMsgMycobotSetAngles =
  Ros2Mycobot_interfacesMsgMycobotSetAngles
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mycobot_interfaces/msg/MycobotSetAngles.
-- \@details Exact identity UWVMROS1_798576c5f0b03e46e5cc5d2edf81bc7042042482ef574643ca136621346d731e
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_interfacesMsgMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_interfacesMsgMycobotSetAnglesCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_interfaces/msg/MycobotSetAngles.
-- \@details Exact identity UWVMROS1_798576c5f0b03e46e5cc5d2edf81bc7042042482ef574643ca136621346d731e
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_interfacesMsgMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_interfacesMsgMycobotSetAnglesCodecIdentity = "UWVMROS1_798576c5f0b03e46e5cc5d2edf81bc7042042482ef574643ca136621346d731e"
-- | \@brief Encode one complete mycobot_interfaces/msg/MycobotSetAngles value.
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
-- \@see Ros2Mycobot_interfacesMsgMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mycobot_interfacesMsgMycobotSetAngles :: Ros2Mycobot_interfacesMsgMycobotSetAngles -> Either Word32 B.ByteString
encodeRos2Mycobot_interfacesMsgMycobotSetAngles value = do
  b0 <- W.encodeFloat32 (ros2Mycobot_interfacesMsgMycobotSetAngles_joint_1 value)
  b1 <- W.encodeFloat32 (ros2Mycobot_interfacesMsgMycobotSetAngles_joint_2 value)
  b2 <- W.encodeFloat32 (ros2Mycobot_interfacesMsgMycobotSetAngles_joint_3 value)
  b3 <- W.encodeFloat32 (ros2Mycobot_interfacesMsgMycobotSetAngles_joint_4 value)
  b4 <- W.encodeFloat32 (ros2Mycobot_interfacesMsgMycobotSetAngles_joint_5 value)
  b5 <- W.encodeFloat32 (ros2Mycobot_interfacesMsgMycobotSetAngles_joint_6 value)
  b6 <- W.encodeSigned 1 (fromIntegral (ros2Mycobot_interfacesMsgMycobotSetAngles_speed value))
  W.bounded 25 [b0, b1, b2, b3, b4, b5, b6]
-- | \@brief Read the ordered canonical fields of mycobot_interfaces/msg/MycobotSetAngles.
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
-- \@see Ros2Mycobot_interfacesMsgMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mycobot_interfacesMsgMycobotSetAngles :: W.Decoder Ros2Mycobot_interfacesMsgMycobotSetAngles
readRos2Mycobot_interfacesMsgMycobotSetAngles = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  a6 <- fromIntegral <$> W.signed 1
  let value = Ros2Mycobot_interfacesMsgMycobotSetAngles a0 a1 a2 a3 a4 a5 a6
  case encodeRos2Mycobot_interfacesMsgMycobotSetAngles value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_interfaces/msg/MycobotSetAngles value.
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
-- \@see Ros2Mycobot_interfacesMsgMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mycobot_interfacesMsgMycobotSetAngles :: B.ByteString -> Either Word32 Ros2Mycobot_interfacesMsgMycobotSetAngles
decodeRos2Mycobot_interfacesMsgMycobotSetAngles = W.runDecoder 25 readRos2Mycobot_interfacesMsgMycobotSetAngles
instance Canonical Ros2Mycobot_interfacesMsgMycobotSetAngles where
  maximumBytes _ = 25
  encodeValue = encodeRos2Mycobot_interfacesMsgMycobotSetAngles
  readValue = readRos2Mycobot_interfacesMsgMycobotSetAngles
-- | \@brief Complete ROS 2 mycobot_interfaces/msg/MycobotSetCoords value.
-- \@details All 8 declared fields are retained in source order. The canonical representation occupies
-- 26..26 bytes and is identified by
-- UWVMROS1_462b7629172037a6959d08984896980c8c07ae5b6364c6d848b172dea23cab49.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mycobot_interfacesMsgMycobotSetCoords = Ros2Mycobot_interfacesMsgMycobotSetCoords
  {
    -- | \@brief mycobot_interfaces/msg/MycobotSetCoords.x: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesMsgMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesMsgMycobotSetCoords_x :: Float
  ,
    -- | \@brief mycobot_interfaces/msg/MycobotSetCoords.y: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesMsgMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesMsgMycobotSetCoords_y :: Float
  ,
    -- | \@brief mycobot_interfaces/msg/MycobotSetCoords.z: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesMsgMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesMsgMycobotSetCoords_z :: Float
  ,
    -- | \@brief mycobot_interfaces/msg/MycobotSetCoords.rx: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesMsgMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesMsgMycobotSetCoords_rx :: Float
  ,
    -- | \@brief mycobot_interfaces/msg/MycobotSetCoords.ry: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesMsgMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesMsgMycobotSetCoords_ry :: Float
  ,
    -- | \@brief mycobot_interfaces/msg/MycobotSetCoords.rz: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesMsgMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesMsgMycobotSetCoords_rz :: Float
  ,
    -- | \@brief mycobot_interfaces/msg/MycobotSetCoords.speed: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesMsgMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesMsgMycobotSetCoords_speed :: Int8
  ,
    -- | \@brief mycobot_interfaces/msg/MycobotSetCoords.model: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesMsgMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesMsgMycobotSetCoords_model :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_interfaces/msg/MycobotSetCoords.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mycobot_interfacesMsgMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mycobot_interfacesMsgMycobotSetCoords :: Ros2Mycobot_interfacesMsgMycobotSetCoords
defaultRos2Mycobot_interfacesMsgMycobotSetCoords =
  Ros2Mycobot_interfacesMsgMycobotSetCoords
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mycobot_interfaces/msg/MycobotSetCoords.
-- \@details Exact identity UWVMROS1_462b7629172037a6959d08984896980c8c07ae5b6364c6d848b172dea23cab49
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_interfacesMsgMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_interfacesMsgMycobotSetCoordsCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_interfaces/msg/MycobotSetCoords.
-- \@details Exact identity UWVMROS1_462b7629172037a6959d08984896980c8c07ae5b6364c6d848b172dea23cab49
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_interfacesMsgMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_interfacesMsgMycobotSetCoordsCodecIdentity = "UWVMROS1_462b7629172037a6959d08984896980c8c07ae5b6364c6d848b172dea23cab49"
-- | \@brief Encode one complete mycobot_interfaces/msg/MycobotSetCoords value.
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
-- \@see Ros2Mycobot_interfacesMsgMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mycobot_interfacesMsgMycobotSetCoords :: Ros2Mycobot_interfacesMsgMycobotSetCoords -> Either Word32 B.ByteString
encodeRos2Mycobot_interfacesMsgMycobotSetCoords value = do
  b0 <- W.encodeFloat32 (ros2Mycobot_interfacesMsgMycobotSetCoords_x value)
  b1 <- W.encodeFloat32 (ros2Mycobot_interfacesMsgMycobotSetCoords_y value)
  b2 <- W.encodeFloat32 (ros2Mycobot_interfacesMsgMycobotSetCoords_z value)
  b3 <- W.encodeFloat32 (ros2Mycobot_interfacesMsgMycobotSetCoords_rx value)
  b4 <- W.encodeFloat32 (ros2Mycobot_interfacesMsgMycobotSetCoords_ry value)
  b5 <- W.encodeFloat32 (ros2Mycobot_interfacesMsgMycobotSetCoords_rz value)
  b6 <- W.encodeSigned 1 (fromIntegral (ros2Mycobot_interfacesMsgMycobotSetCoords_speed value))
  b7 <- W.encodeSigned 1 (fromIntegral (ros2Mycobot_interfacesMsgMycobotSetCoords_model value))
  W.bounded 26 [b0, b1, b2, b3, b4, b5, b6, b7]
-- | \@brief Read the ordered canonical fields of mycobot_interfaces/msg/MycobotSetCoords.
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
-- \@see Ros2Mycobot_interfacesMsgMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mycobot_interfacesMsgMycobotSetCoords :: W.Decoder Ros2Mycobot_interfacesMsgMycobotSetCoords
readRos2Mycobot_interfacesMsgMycobotSetCoords = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  a6 <- fromIntegral <$> W.signed 1
  a7 <- fromIntegral <$> W.signed 1
  let value = Ros2Mycobot_interfacesMsgMycobotSetCoords a0 a1 a2 a3 a4 a5 a6 a7
  case encodeRos2Mycobot_interfacesMsgMycobotSetCoords value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_interfaces/msg/MycobotSetCoords value.
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
-- \@see Ros2Mycobot_interfacesMsgMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mycobot_interfacesMsgMycobotSetCoords :: B.ByteString -> Either Word32 Ros2Mycobot_interfacesMsgMycobotSetCoords
decodeRos2Mycobot_interfacesMsgMycobotSetCoords = W.runDecoder 26 readRos2Mycobot_interfacesMsgMycobotSetCoords
instance Canonical Ros2Mycobot_interfacesMsgMycobotSetCoords where
  maximumBytes _ = 26
  encodeValue = encodeRos2Mycobot_interfacesMsgMycobotSetCoords
  readValue = readRos2Mycobot_interfacesMsgMycobotSetCoords
-- | \@brief Complete ROS 2 mycobot_interfaces/srv/GetAngles_Request value.
-- \@details All 0 declared fields are retained in source order. The canonical representation occupies
-- 0..0 bytes and is identified by
-- UWVMROS1_ea433bdb6e3cb77923720a56bec24aaec62c88480248a4ed425370092474d38e.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mycobot_interfacesSrvGetAngles_Request = Ros2Mycobot_interfacesSrvGetAngles_Request deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_interfaces/srv/GetAngles_Request.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mycobot_interfacesSrvGetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mycobot_interfacesSrvGetAngles_Request :: Ros2Mycobot_interfacesSrvGetAngles_Request
defaultRos2Mycobot_interfacesSrvGetAngles_Request = Ros2Mycobot_interfacesSrvGetAngles_Request 
-- | \@brief Canonical codec identity of mycobot_interfaces/srv/GetAngles_Request.
-- \@details Exact identity UWVMROS1_ea433bdb6e3cb77923720a56bec24aaec62c88480248a4ed425370092474d38e
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_interfacesSrvGetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_interfacesSrvGetAngles_RequestCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_interfaces/srv/GetAngles_Request.
-- \@details Exact identity UWVMROS1_ea433bdb6e3cb77923720a56bec24aaec62c88480248a4ed425370092474d38e
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_interfacesSrvGetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_interfacesSrvGetAngles_RequestCodecIdentity = "UWVMROS1_ea433bdb6e3cb77923720a56bec24aaec62c88480248a4ed425370092474d38e"
-- | \@brief Encode one complete mycobot_interfaces/srv/GetAngles_Request value.
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
-- \@see Ros2Mycobot_interfacesSrvGetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mycobot_interfacesSrvGetAngles_Request :: Ros2Mycobot_interfacesSrvGetAngles_Request -> Either Word32 B.ByteString
encodeRos2Mycobot_interfacesSrvGetAngles_Request value = do
  W.bounded 0 []
-- | \@brief Read the ordered canonical fields of mycobot_interfaces/srv/GetAngles_Request.
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
-- \@see Ros2Mycobot_interfacesSrvGetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mycobot_interfacesSrvGetAngles_Request :: W.Decoder Ros2Mycobot_interfacesSrvGetAngles_Request
readRos2Mycobot_interfacesSrvGetAngles_Request = do
  let value = Ros2Mycobot_interfacesSrvGetAngles_Request 
  case encodeRos2Mycobot_interfacesSrvGetAngles_Request value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_interfaces/srv/GetAngles_Request value.
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
-- \@see Ros2Mycobot_interfacesSrvGetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mycobot_interfacesSrvGetAngles_Request :: B.ByteString -> Either Word32 Ros2Mycobot_interfacesSrvGetAngles_Request
decodeRos2Mycobot_interfacesSrvGetAngles_Request = W.runDecoder 0 readRos2Mycobot_interfacesSrvGetAngles_Request
instance Canonical Ros2Mycobot_interfacesSrvGetAngles_Request where
  maximumBytes _ = 0
  encodeValue = encodeRos2Mycobot_interfacesSrvGetAngles_Request
  readValue = readRos2Mycobot_interfacesSrvGetAngles_Request
-- | \@brief Complete ROS 2 mycobot_interfaces/srv/GetAngles_Response value.
-- \@details All 6 declared fields are retained in source order. The canonical representation occupies
-- 24..24 bytes and is identified by
-- UWVMROS1_14d6e2d8a6f7234719fae06d8807c651965387e252160df555ede0a070123b8a.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mycobot_interfacesSrvGetAngles_Response = Ros2Mycobot_interfacesSrvGetAngles_Response
  {
    -- | \@brief mycobot_interfaces/srv/GetAngles_Response.joint_1: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesSrvGetAngles_Response_joint_1 :: Float
  ,
    -- | \@brief mycobot_interfaces/srv/GetAngles_Response.joint_2: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesSrvGetAngles_Response_joint_2 :: Float
  ,
    -- | \@brief mycobot_interfaces/srv/GetAngles_Response.joint_3: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesSrvGetAngles_Response_joint_3 :: Float
  ,
    -- | \@brief mycobot_interfaces/srv/GetAngles_Response.joint_4: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesSrvGetAngles_Response_joint_4 :: Float
  ,
    -- | \@brief mycobot_interfaces/srv/GetAngles_Response.joint_5: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesSrvGetAngles_Response_joint_5 :: Float
  ,
    -- | \@brief mycobot_interfaces/srv/GetAngles_Response.joint_6: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesSrvGetAngles_Response_joint_6 :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_interfaces/srv/GetAngles_Response.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mycobot_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mycobot_interfacesSrvGetAngles_Response :: Ros2Mycobot_interfacesSrvGetAngles_Response
defaultRos2Mycobot_interfacesSrvGetAngles_Response =
  Ros2Mycobot_interfacesSrvGetAngles_Response
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mycobot_interfaces/srv/GetAngles_Response.
-- \@details Exact identity UWVMROS1_14d6e2d8a6f7234719fae06d8807c651965387e252160df555ede0a070123b8a
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_interfacesSrvGetAngles_ResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_interfaces/srv/GetAngles_Response.
-- \@details Exact identity UWVMROS1_14d6e2d8a6f7234719fae06d8807c651965387e252160df555ede0a070123b8a
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_interfacesSrvGetAngles_ResponseCodecIdentity = "UWVMROS1_14d6e2d8a6f7234719fae06d8807c651965387e252160df555ede0a070123b8a"
-- | \@brief Encode one complete mycobot_interfaces/srv/GetAngles_Response value.
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
-- \@see Ros2Mycobot_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mycobot_interfacesSrvGetAngles_Response :: Ros2Mycobot_interfacesSrvGetAngles_Response -> Either Word32 B.ByteString
encodeRos2Mycobot_interfacesSrvGetAngles_Response value = do
  b0 <- W.encodeFloat32 (ros2Mycobot_interfacesSrvGetAngles_Response_joint_1 value)
  b1 <- W.encodeFloat32 (ros2Mycobot_interfacesSrvGetAngles_Response_joint_2 value)
  b2 <- W.encodeFloat32 (ros2Mycobot_interfacesSrvGetAngles_Response_joint_3 value)
  b3 <- W.encodeFloat32 (ros2Mycobot_interfacesSrvGetAngles_Response_joint_4 value)
  b4 <- W.encodeFloat32 (ros2Mycobot_interfacesSrvGetAngles_Response_joint_5 value)
  b5 <- W.encodeFloat32 (ros2Mycobot_interfacesSrvGetAngles_Response_joint_6 value)
  W.bounded 24 [b0, b1, b2, b3, b4, b5]
-- | \@brief Read the ordered canonical fields of mycobot_interfaces/srv/GetAngles_Response.
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
-- \@see Ros2Mycobot_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mycobot_interfacesSrvGetAngles_Response :: W.Decoder Ros2Mycobot_interfacesSrvGetAngles_Response
readRos2Mycobot_interfacesSrvGetAngles_Response = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  let value = Ros2Mycobot_interfacesSrvGetAngles_Response a0 a1 a2 a3 a4 a5
  case encodeRos2Mycobot_interfacesSrvGetAngles_Response value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_interfaces/srv/GetAngles_Response value.
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
-- \@see Ros2Mycobot_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mycobot_interfacesSrvGetAngles_Response :: B.ByteString -> Either Word32 Ros2Mycobot_interfacesSrvGetAngles_Response
decodeRos2Mycobot_interfacesSrvGetAngles_Response = W.runDecoder 24 readRos2Mycobot_interfacesSrvGetAngles_Response
instance Canonical Ros2Mycobot_interfacesSrvGetAngles_Response where
  maximumBytes _ = 24
  encodeValue = encodeRos2Mycobot_interfacesSrvGetAngles_Response
  readValue = readRos2Mycobot_interfacesSrvGetAngles_Response
-- | \@brief Complete ROS 2 mycobot_interfaces/srv/GetCoords_Request value.
-- \@details All 0 declared fields are retained in source order. The canonical representation occupies
-- 0..0 bytes and is identified by
-- UWVMROS1_31ef03eefc143e9d040572e378a5803f44f68bac6d03fbb44ca27f87fb5fb076.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mycobot_interfacesSrvGetCoords_Request = Ros2Mycobot_interfacesSrvGetCoords_Request deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_interfaces/srv/GetCoords_Request.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mycobot_interfacesSrvGetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mycobot_interfacesSrvGetCoords_Request :: Ros2Mycobot_interfacesSrvGetCoords_Request
defaultRos2Mycobot_interfacesSrvGetCoords_Request = Ros2Mycobot_interfacesSrvGetCoords_Request 
-- | \@brief Canonical codec identity of mycobot_interfaces/srv/GetCoords_Request.
-- \@details Exact identity UWVMROS1_31ef03eefc143e9d040572e378a5803f44f68bac6d03fbb44ca27f87fb5fb076
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_interfacesSrvGetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_interfacesSrvGetCoords_RequestCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_interfaces/srv/GetCoords_Request.
-- \@details Exact identity UWVMROS1_31ef03eefc143e9d040572e378a5803f44f68bac6d03fbb44ca27f87fb5fb076
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_interfacesSrvGetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_interfacesSrvGetCoords_RequestCodecIdentity = "UWVMROS1_31ef03eefc143e9d040572e378a5803f44f68bac6d03fbb44ca27f87fb5fb076"
-- | \@brief Encode one complete mycobot_interfaces/srv/GetCoords_Request value.
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
-- \@see Ros2Mycobot_interfacesSrvGetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mycobot_interfacesSrvGetCoords_Request :: Ros2Mycobot_interfacesSrvGetCoords_Request -> Either Word32 B.ByteString
encodeRos2Mycobot_interfacesSrvGetCoords_Request value = do
  W.bounded 0 []
-- | \@brief Read the ordered canonical fields of mycobot_interfaces/srv/GetCoords_Request.
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
-- \@see Ros2Mycobot_interfacesSrvGetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mycobot_interfacesSrvGetCoords_Request :: W.Decoder Ros2Mycobot_interfacesSrvGetCoords_Request
readRos2Mycobot_interfacesSrvGetCoords_Request = do
  let value = Ros2Mycobot_interfacesSrvGetCoords_Request 
  case encodeRos2Mycobot_interfacesSrvGetCoords_Request value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_interfaces/srv/GetCoords_Request value.
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
-- \@see Ros2Mycobot_interfacesSrvGetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mycobot_interfacesSrvGetCoords_Request :: B.ByteString -> Either Word32 Ros2Mycobot_interfacesSrvGetCoords_Request
decodeRos2Mycobot_interfacesSrvGetCoords_Request = W.runDecoder 0 readRos2Mycobot_interfacesSrvGetCoords_Request
instance Canonical Ros2Mycobot_interfacesSrvGetCoords_Request where
  maximumBytes _ = 0
  encodeValue = encodeRos2Mycobot_interfacesSrvGetCoords_Request
  readValue = readRos2Mycobot_interfacesSrvGetCoords_Request
-- | \@brief Complete ROS 2 mycobot_interfaces/srv/GetCoords_Response value.
-- \@details All 6 declared fields are retained in source order. The canonical representation occupies
-- 24..24 bytes and is identified by
-- UWVMROS1_c9886b5cc5f3c48116a1c884f75ab4af49be46e2c0476ffc3aa8167ff96f7787.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mycobot_interfacesSrvGetCoords_Response = Ros2Mycobot_interfacesSrvGetCoords_Response
  {
    -- | \@brief mycobot_interfaces/srv/GetCoords_Response.x: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesSrvGetCoords_Response_x :: Float
  ,
    -- | \@brief mycobot_interfaces/srv/GetCoords_Response.y: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesSrvGetCoords_Response_y :: Float
  ,
    -- | \@brief mycobot_interfaces/srv/GetCoords_Response.z: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesSrvGetCoords_Response_z :: Float
  ,
    -- | \@brief mycobot_interfaces/srv/GetCoords_Response.rx: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesSrvGetCoords_Response_rx :: Float
  ,
    -- | \@brief mycobot_interfaces/srv/GetCoords_Response.ry: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesSrvGetCoords_Response_ry :: Float
  ,
    -- | \@brief mycobot_interfaces/srv/GetCoords_Response.rz: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesSrvGetCoords_Response_rz :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_interfaces/srv/GetCoords_Response.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mycobot_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mycobot_interfacesSrvGetCoords_Response :: Ros2Mycobot_interfacesSrvGetCoords_Response
defaultRos2Mycobot_interfacesSrvGetCoords_Response =
  Ros2Mycobot_interfacesSrvGetCoords_Response
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mycobot_interfaces/srv/GetCoords_Response.
-- \@details Exact identity UWVMROS1_c9886b5cc5f3c48116a1c884f75ab4af49be46e2c0476ffc3aa8167ff96f7787
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_interfacesSrvGetCoords_ResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_interfaces/srv/GetCoords_Response.
-- \@details Exact identity UWVMROS1_c9886b5cc5f3c48116a1c884f75ab4af49be46e2c0476ffc3aa8167ff96f7787
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_interfacesSrvGetCoords_ResponseCodecIdentity = "UWVMROS1_c9886b5cc5f3c48116a1c884f75ab4af49be46e2c0476ffc3aa8167ff96f7787"
-- | \@brief Encode one complete mycobot_interfaces/srv/GetCoords_Response value.
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
-- \@see Ros2Mycobot_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mycobot_interfacesSrvGetCoords_Response :: Ros2Mycobot_interfacesSrvGetCoords_Response -> Either Word32 B.ByteString
encodeRos2Mycobot_interfacesSrvGetCoords_Response value = do
  b0 <- W.encodeFloat32 (ros2Mycobot_interfacesSrvGetCoords_Response_x value)
  b1 <- W.encodeFloat32 (ros2Mycobot_interfacesSrvGetCoords_Response_y value)
  b2 <- W.encodeFloat32 (ros2Mycobot_interfacesSrvGetCoords_Response_z value)
  b3 <- W.encodeFloat32 (ros2Mycobot_interfacesSrvGetCoords_Response_rx value)
  b4 <- W.encodeFloat32 (ros2Mycobot_interfacesSrvGetCoords_Response_ry value)
  b5 <- W.encodeFloat32 (ros2Mycobot_interfacesSrvGetCoords_Response_rz value)
  W.bounded 24 [b0, b1, b2, b3, b4, b5]
-- | \@brief Read the ordered canonical fields of mycobot_interfaces/srv/GetCoords_Response.
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
-- \@see Ros2Mycobot_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mycobot_interfacesSrvGetCoords_Response :: W.Decoder Ros2Mycobot_interfacesSrvGetCoords_Response
readRos2Mycobot_interfacesSrvGetCoords_Response = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  let value = Ros2Mycobot_interfacesSrvGetCoords_Response a0 a1 a2 a3 a4 a5
  case encodeRos2Mycobot_interfacesSrvGetCoords_Response value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_interfaces/srv/GetCoords_Response value.
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
-- \@see Ros2Mycobot_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mycobot_interfacesSrvGetCoords_Response :: B.ByteString -> Either Word32 Ros2Mycobot_interfacesSrvGetCoords_Response
decodeRos2Mycobot_interfacesSrvGetCoords_Response = W.runDecoder 24 readRos2Mycobot_interfacesSrvGetCoords_Response
instance Canonical Ros2Mycobot_interfacesSrvGetCoords_Response where
  maximumBytes _ = 24
  encodeValue = encodeRos2Mycobot_interfacesSrvGetCoords_Response
  readValue = readRos2Mycobot_interfacesSrvGetCoords_Response
-- | \@brief Complete ROS 2 mycobot_interfaces/srv/GripperStatus_Request value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_6c5ae66e66f12834b7d623e07a5b3ef2b8127cd9cd83cb36d6793a68d921fcd5.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mycobot_interfacesSrvGripperStatus_Request = Ros2Mycobot_interfacesSrvGripperStatus_Request
  {
    -- | \@brief mycobot_interfaces/srv/GripperStatus_Request.status: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesSrvGripperStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesSrvGripperStatus_Request_status :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_interfaces/srv/GripperStatus_Request.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mycobot_interfacesSrvGripperStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mycobot_interfacesSrvGripperStatus_Request :: Ros2Mycobot_interfacesSrvGripperStatus_Request
defaultRos2Mycobot_interfacesSrvGripperStatus_Request = Ros2Mycobot_interfacesSrvGripperStatus_Request (False)
-- | \@brief Canonical codec identity of mycobot_interfaces/srv/GripperStatus_Request.
-- \@details Exact identity UWVMROS1_6c5ae66e66f12834b7d623e07a5b3ef2b8127cd9cd83cb36d6793a68d921fcd5
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_interfacesSrvGripperStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_interfacesSrvGripperStatus_RequestCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_interfaces/srv/GripperStatus_Request.
-- \@details Exact identity UWVMROS1_6c5ae66e66f12834b7d623e07a5b3ef2b8127cd9cd83cb36d6793a68d921fcd5
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_interfacesSrvGripperStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_interfacesSrvGripperStatus_RequestCodecIdentity = "UWVMROS1_6c5ae66e66f12834b7d623e07a5b3ef2b8127cd9cd83cb36d6793a68d921fcd5"
-- | \@brief Encode one complete mycobot_interfaces/srv/GripperStatus_Request value.
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
-- \@see Ros2Mycobot_interfacesSrvGripperStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mycobot_interfacesSrvGripperStatus_Request :: Ros2Mycobot_interfacesSrvGripperStatus_Request -> Either Word32 B.ByteString
encodeRos2Mycobot_interfacesSrvGripperStatus_Request value = do
  b0 <- W.encodeBool (ros2Mycobot_interfacesSrvGripperStatus_Request_status value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of mycobot_interfaces/srv/GripperStatus_Request.
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
-- \@see Ros2Mycobot_interfacesSrvGripperStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mycobot_interfacesSrvGripperStatus_Request :: W.Decoder Ros2Mycobot_interfacesSrvGripperStatus_Request
readRos2Mycobot_interfacesSrvGripperStatus_Request = do
  a0 <- W.boolean
  let value = Ros2Mycobot_interfacesSrvGripperStatus_Request a0
  case encodeRos2Mycobot_interfacesSrvGripperStatus_Request value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_interfaces/srv/GripperStatus_Request value.
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
-- \@see Ros2Mycobot_interfacesSrvGripperStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mycobot_interfacesSrvGripperStatus_Request :: B.ByteString -> Either Word32 Ros2Mycobot_interfacesSrvGripperStatus_Request
decodeRos2Mycobot_interfacesSrvGripperStatus_Request = W.runDecoder 1 readRos2Mycobot_interfacesSrvGripperStatus_Request
instance Canonical Ros2Mycobot_interfacesSrvGripperStatus_Request where
  maximumBytes _ = 1
  encodeValue = encodeRos2Mycobot_interfacesSrvGripperStatus_Request
  readValue = readRos2Mycobot_interfacesSrvGripperStatus_Request
-- | \@brief Complete ROS 2 mycobot_interfaces/srv/GripperStatus_Response value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_530f1e1acaa8cda6b43f8a8c0a38f5376eaebce3e99f7fb194a28143bed2d1ab.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mycobot_interfacesSrvGripperStatus_Response = Ros2Mycobot_interfacesSrvGripperStatus_Response
  {
    -- | \@brief mycobot_interfaces/srv/GripperStatus_Response.flag: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesSrvGripperStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesSrvGripperStatus_Response_flag :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_interfaces/srv/GripperStatus_Response.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mycobot_interfacesSrvGripperStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mycobot_interfacesSrvGripperStatus_Response :: Ros2Mycobot_interfacesSrvGripperStatus_Response
defaultRos2Mycobot_interfacesSrvGripperStatus_Response =
  Ros2Mycobot_interfacesSrvGripperStatus_Response
    (False)
-- | \@brief Canonical codec identity of mycobot_interfaces/srv/GripperStatus_Response.
-- \@details Exact identity UWVMROS1_530f1e1acaa8cda6b43f8a8c0a38f5376eaebce3e99f7fb194a28143bed2d1ab
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_interfacesSrvGripperStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_interfacesSrvGripperStatus_ResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_interfaces/srv/GripperStatus_Response.
-- \@details Exact identity UWVMROS1_530f1e1acaa8cda6b43f8a8c0a38f5376eaebce3e99f7fb194a28143bed2d1ab
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_interfacesSrvGripperStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_interfacesSrvGripperStatus_ResponseCodecIdentity = "UWVMROS1_530f1e1acaa8cda6b43f8a8c0a38f5376eaebce3e99f7fb194a28143bed2d1ab"
-- | \@brief Encode one complete mycobot_interfaces/srv/GripperStatus_Response value.
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
-- \@see Ros2Mycobot_interfacesSrvGripperStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mycobot_interfacesSrvGripperStatus_Response :: Ros2Mycobot_interfacesSrvGripperStatus_Response -> Either Word32 B.ByteString
encodeRos2Mycobot_interfacesSrvGripperStatus_Response value = do
  b0 <- W.encodeBool (ros2Mycobot_interfacesSrvGripperStatus_Response_flag value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of mycobot_interfaces/srv/GripperStatus_Response.
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
-- \@see Ros2Mycobot_interfacesSrvGripperStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mycobot_interfacesSrvGripperStatus_Response :: W.Decoder Ros2Mycobot_interfacesSrvGripperStatus_Response
readRos2Mycobot_interfacesSrvGripperStatus_Response = do
  a0 <- W.boolean
  let value = Ros2Mycobot_interfacesSrvGripperStatus_Response a0
  case encodeRos2Mycobot_interfacesSrvGripperStatus_Response value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_interfaces/srv/GripperStatus_Response value.
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
-- \@see Ros2Mycobot_interfacesSrvGripperStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mycobot_interfacesSrvGripperStatus_Response :: B.ByteString -> Either Word32 Ros2Mycobot_interfacesSrvGripperStatus_Response
decodeRos2Mycobot_interfacesSrvGripperStatus_Response = W.runDecoder 1 readRos2Mycobot_interfacesSrvGripperStatus_Response
instance Canonical Ros2Mycobot_interfacesSrvGripperStatus_Response where
  maximumBytes _ = 1
  encodeValue = encodeRos2Mycobot_interfacesSrvGripperStatus_Response
  readValue = readRos2Mycobot_interfacesSrvGripperStatus_Response
-- | \@brief Complete ROS 2 mycobot_interfaces/srv/PumpStatus_Request value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies
-- 3..3 bytes and is identified by
-- UWVMROS1_50b7fa285b93dd9e6b3b0eafda0afeb5911ab6e3b79d58f03f1cf1f76e732cd0.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mycobot_interfacesSrvPumpStatus_Request = Ros2Mycobot_interfacesSrvPumpStatus_Request
  {
    -- | \@brief mycobot_interfaces/srv/PumpStatus_Request.status: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesSrvPumpStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesSrvPumpStatus_Request_status :: Bool
  ,
    -- | \@brief mycobot_interfaces/srv/PumpStatus_Request.pin1: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesSrvPumpStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesSrvPumpStatus_Request_pin1 :: Int8
  ,
    -- | \@brief mycobot_interfaces/srv/PumpStatus_Request.pin2: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesSrvPumpStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesSrvPumpStatus_Request_pin2 :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_interfaces/srv/PumpStatus_Request.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mycobot_interfacesSrvPumpStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mycobot_interfacesSrvPumpStatus_Request :: Ros2Mycobot_interfacesSrvPumpStatus_Request
defaultRos2Mycobot_interfacesSrvPumpStatus_Request =
  Ros2Mycobot_interfacesSrvPumpStatus_Request
    (False)
    (0)
    (0)
-- | \@brief Canonical codec identity of mycobot_interfaces/srv/PumpStatus_Request.
-- \@details Exact identity UWVMROS1_50b7fa285b93dd9e6b3b0eafda0afeb5911ab6e3b79d58f03f1cf1f76e732cd0
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_interfacesSrvPumpStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_interfacesSrvPumpStatus_RequestCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_interfaces/srv/PumpStatus_Request.
-- \@details Exact identity UWVMROS1_50b7fa285b93dd9e6b3b0eafda0afeb5911ab6e3b79d58f03f1cf1f76e732cd0
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_interfacesSrvPumpStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_interfacesSrvPumpStatus_RequestCodecIdentity = "UWVMROS1_50b7fa285b93dd9e6b3b0eafda0afeb5911ab6e3b79d58f03f1cf1f76e732cd0"
-- | \@brief Encode one complete mycobot_interfaces/srv/PumpStatus_Request value.
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
-- \@see Ros2Mycobot_interfacesSrvPumpStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mycobot_interfacesSrvPumpStatus_Request :: Ros2Mycobot_interfacesSrvPumpStatus_Request -> Either Word32 B.ByteString
encodeRos2Mycobot_interfacesSrvPumpStatus_Request value = do
  b0 <- W.encodeBool (ros2Mycobot_interfacesSrvPumpStatus_Request_status value)
  b1 <- W.encodeSigned 1 (fromIntegral (ros2Mycobot_interfacesSrvPumpStatus_Request_pin1 value))
  b2 <- W.encodeSigned 1 (fromIntegral (ros2Mycobot_interfacesSrvPumpStatus_Request_pin2 value))
  W.bounded 3 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of mycobot_interfaces/srv/PumpStatus_Request.
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
-- \@see Ros2Mycobot_interfacesSrvPumpStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mycobot_interfacesSrvPumpStatus_Request :: W.Decoder Ros2Mycobot_interfacesSrvPumpStatus_Request
readRos2Mycobot_interfacesSrvPumpStatus_Request = do
  a0 <- W.boolean
  a1 <- fromIntegral <$> W.signed 1
  a2 <- fromIntegral <$> W.signed 1
  let value = Ros2Mycobot_interfacesSrvPumpStatus_Request a0 a1 a2
  case encodeRos2Mycobot_interfacesSrvPumpStatus_Request value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_interfaces/srv/PumpStatus_Request value.
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
-- \@see Ros2Mycobot_interfacesSrvPumpStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mycobot_interfacesSrvPumpStatus_Request :: B.ByteString -> Either Word32 Ros2Mycobot_interfacesSrvPumpStatus_Request
decodeRos2Mycobot_interfacesSrvPumpStatus_Request = W.runDecoder 3 readRos2Mycobot_interfacesSrvPumpStatus_Request
instance Canonical Ros2Mycobot_interfacesSrvPumpStatus_Request where
  maximumBytes _ = 3
  encodeValue = encodeRos2Mycobot_interfacesSrvPumpStatus_Request
  readValue = readRos2Mycobot_interfacesSrvPumpStatus_Request
-- | \@brief Complete ROS 2 mycobot_interfaces/srv/PumpStatus_Response value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_b347313e1d4430f4e78a72fb8c35d53a39d1d391290373f84f1f8b2b44375eb0.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mycobot_interfacesSrvPumpStatus_Response = Ros2Mycobot_interfacesSrvPumpStatus_Response
  {
    -- | \@brief mycobot_interfaces/srv/PumpStatus_Response.flag: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesSrvPumpStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesSrvPumpStatus_Response_flag :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_interfaces/srv/PumpStatus_Response.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mycobot_interfacesSrvPumpStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mycobot_interfacesSrvPumpStatus_Response :: Ros2Mycobot_interfacesSrvPumpStatus_Response
defaultRos2Mycobot_interfacesSrvPumpStatus_Response = Ros2Mycobot_interfacesSrvPumpStatus_Response (False)
-- | \@brief Canonical codec identity of mycobot_interfaces/srv/PumpStatus_Response.
-- \@details Exact identity UWVMROS1_b347313e1d4430f4e78a72fb8c35d53a39d1d391290373f84f1f8b2b44375eb0
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_interfacesSrvPumpStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_interfacesSrvPumpStatus_ResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_interfaces/srv/PumpStatus_Response.
-- \@details Exact identity UWVMROS1_b347313e1d4430f4e78a72fb8c35d53a39d1d391290373f84f1f8b2b44375eb0
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_interfacesSrvPumpStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_interfacesSrvPumpStatus_ResponseCodecIdentity = "UWVMROS1_b347313e1d4430f4e78a72fb8c35d53a39d1d391290373f84f1f8b2b44375eb0"
-- | \@brief Encode one complete mycobot_interfaces/srv/PumpStatus_Response value.
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
-- \@see Ros2Mycobot_interfacesSrvPumpStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mycobot_interfacesSrvPumpStatus_Response :: Ros2Mycobot_interfacesSrvPumpStatus_Response -> Either Word32 B.ByteString
encodeRos2Mycobot_interfacesSrvPumpStatus_Response value = do
  b0 <- W.encodeBool (ros2Mycobot_interfacesSrvPumpStatus_Response_flag value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of mycobot_interfaces/srv/PumpStatus_Response.
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
-- \@see Ros2Mycobot_interfacesSrvPumpStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mycobot_interfacesSrvPumpStatus_Response :: W.Decoder Ros2Mycobot_interfacesSrvPumpStatus_Response
readRos2Mycobot_interfacesSrvPumpStatus_Response = do
  a0 <- W.boolean
  let value = Ros2Mycobot_interfacesSrvPumpStatus_Response a0
  case encodeRos2Mycobot_interfacesSrvPumpStatus_Response value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_interfaces/srv/PumpStatus_Response value.
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
-- \@see Ros2Mycobot_interfacesSrvPumpStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mycobot_interfacesSrvPumpStatus_Response :: B.ByteString -> Either Word32 Ros2Mycobot_interfacesSrvPumpStatus_Response
decodeRos2Mycobot_interfacesSrvPumpStatus_Response = W.runDecoder 1 readRos2Mycobot_interfacesSrvPumpStatus_Response
instance Canonical Ros2Mycobot_interfacesSrvPumpStatus_Response where
  maximumBytes _ = 1
  encodeValue = encodeRos2Mycobot_interfacesSrvPumpStatus_Response
  readValue = readRos2Mycobot_interfacesSrvPumpStatus_Response
-- | \@brief Complete ROS 2 mycobot_interfaces/srv/SetAngles_Request value.
-- \@details All 7 declared fields are retained in source order. The canonical representation occupies
-- 25..25 bytes and is identified by
-- UWVMROS1_a06efd8b6af878d55c26fda8a7177a0b6c8b687f7e1b9f2e17e2ecd19c440310.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mycobot_interfacesSrvSetAngles_Request = Ros2Mycobot_interfacesSrvSetAngles_Request
  {
    -- | \@brief mycobot_interfaces/srv/SetAngles_Request.joint_1: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesSrvSetAngles_Request_joint_1 :: Float
  ,
    -- | \@brief mycobot_interfaces/srv/SetAngles_Request.joint_2: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesSrvSetAngles_Request_joint_2 :: Float
  ,
    -- | \@brief mycobot_interfaces/srv/SetAngles_Request.joint_3: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesSrvSetAngles_Request_joint_3 :: Float
  ,
    -- | \@brief mycobot_interfaces/srv/SetAngles_Request.joint_4: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesSrvSetAngles_Request_joint_4 :: Float
  ,
    -- | \@brief mycobot_interfaces/srv/SetAngles_Request.joint_5: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesSrvSetAngles_Request_joint_5 :: Float
  ,
    -- | \@brief mycobot_interfaces/srv/SetAngles_Request.joint_6: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesSrvSetAngles_Request_joint_6 :: Float
  ,
    -- | \@brief mycobot_interfaces/srv/SetAngles_Request.speed: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesSrvSetAngles_Request_speed :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_interfaces/srv/SetAngles_Request.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mycobot_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mycobot_interfacesSrvSetAngles_Request :: Ros2Mycobot_interfacesSrvSetAngles_Request
defaultRos2Mycobot_interfacesSrvSetAngles_Request =
  Ros2Mycobot_interfacesSrvSetAngles_Request
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mycobot_interfaces/srv/SetAngles_Request.
-- \@details Exact identity UWVMROS1_a06efd8b6af878d55c26fda8a7177a0b6c8b687f7e1b9f2e17e2ecd19c440310
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_interfacesSrvSetAngles_RequestCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_interfaces/srv/SetAngles_Request.
-- \@details Exact identity UWVMROS1_a06efd8b6af878d55c26fda8a7177a0b6c8b687f7e1b9f2e17e2ecd19c440310
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_interfacesSrvSetAngles_RequestCodecIdentity = "UWVMROS1_a06efd8b6af878d55c26fda8a7177a0b6c8b687f7e1b9f2e17e2ecd19c440310"
-- | \@brief Encode one complete mycobot_interfaces/srv/SetAngles_Request value.
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
-- \@see Ros2Mycobot_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mycobot_interfacesSrvSetAngles_Request :: Ros2Mycobot_interfacesSrvSetAngles_Request -> Either Word32 B.ByteString
encodeRos2Mycobot_interfacesSrvSetAngles_Request value = do
  b0 <- W.encodeFloat32 (ros2Mycobot_interfacesSrvSetAngles_Request_joint_1 value)
  b1 <- W.encodeFloat32 (ros2Mycobot_interfacesSrvSetAngles_Request_joint_2 value)
  b2 <- W.encodeFloat32 (ros2Mycobot_interfacesSrvSetAngles_Request_joint_3 value)
  b3 <- W.encodeFloat32 (ros2Mycobot_interfacesSrvSetAngles_Request_joint_4 value)
  b4 <- W.encodeFloat32 (ros2Mycobot_interfacesSrvSetAngles_Request_joint_5 value)
  b5 <- W.encodeFloat32 (ros2Mycobot_interfacesSrvSetAngles_Request_joint_6 value)
  b6 <- W.encodeSigned 1 (fromIntegral (ros2Mycobot_interfacesSrvSetAngles_Request_speed value))
  W.bounded 25 [b0, b1, b2, b3, b4, b5, b6]
-- | \@brief Read the ordered canonical fields of mycobot_interfaces/srv/SetAngles_Request.
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
-- \@see Ros2Mycobot_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mycobot_interfacesSrvSetAngles_Request :: W.Decoder Ros2Mycobot_interfacesSrvSetAngles_Request
readRos2Mycobot_interfacesSrvSetAngles_Request = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  a6 <- fromIntegral <$> W.signed 1
  let value = Ros2Mycobot_interfacesSrvSetAngles_Request a0 a1 a2 a3 a4 a5 a6
  case encodeRos2Mycobot_interfacesSrvSetAngles_Request value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_interfaces/srv/SetAngles_Request value.
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
-- \@see Ros2Mycobot_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mycobot_interfacesSrvSetAngles_Request :: B.ByteString -> Either Word32 Ros2Mycobot_interfacesSrvSetAngles_Request
decodeRos2Mycobot_interfacesSrvSetAngles_Request = W.runDecoder 25 readRos2Mycobot_interfacesSrvSetAngles_Request
instance Canonical Ros2Mycobot_interfacesSrvSetAngles_Request where
  maximumBytes _ = 25
  encodeValue = encodeRos2Mycobot_interfacesSrvSetAngles_Request
  readValue = readRos2Mycobot_interfacesSrvSetAngles_Request
-- | \@brief Complete ROS 2 mycobot_interfaces/srv/SetAngles_Response value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_af4daae72e9ec28c8848b76b556c9387e65ba9698d8f0f6e5ba17522472ab665.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mycobot_interfacesSrvSetAngles_Response = Ros2Mycobot_interfacesSrvSetAngles_Response
  {
    -- | \@brief mycobot_interfaces/srv/SetAngles_Response.flag: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesSrvSetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesSrvSetAngles_Response_flag :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_interfaces/srv/SetAngles_Response.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mycobot_interfacesSrvSetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mycobot_interfacesSrvSetAngles_Response :: Ros2Mycobot_interfacesSrvSetAngles_Response
defaultRos2Mycobot_interfacesSrvSetAngles_Response = Ros2Mycobot_interfacesSrvSetAngles_Response (False)
-- | \@brief Canonical codec identity of mycobot_interfaces/srv/SetAngles_Response.
-- \@details Exact identity UWVMROS1_af4daae72e9ec28c8848b76b556c9387e65ba9698d8f0f6e5ba17522472ab665
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_interfacesSrvSetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_interfacesSrvSetAngles_ResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_interfaces/srv/SetAngles_Response.
-- \@details Exact identity UWVMROS1_af4daae72e9ec28c8848b76b556c9387e65ba9698d8f0f6e5ba17522472ab665
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_interfacesSrvSetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_interfacesSrvSetAngles_ResponseCodecIdentity = "UWVMROS1_af4daae72e9ec28c8848b76b556c9387e65ba9698d8f0f6e5ba17522472ab665"
-- | \@brief Encode one complete mycobot_interfaces/srv/SetAngles_Response value.
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
-- \@see Ros2Mycobot_interfacesSrvSetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mycobot_interfacesSrvSetAngles_Response :: Ros2Mycobot_interfacesSrvSetAngles_Response -> Either Word32 B.ByteString
encodeRos2Mycobot_interfacesSrvSetAngles_Response value = do
  b0 <- W.encodeBool (ros2Mycobot_interfacesSrvSetAngles_Response_flag value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of mycobot_interfaces/srv/SetAngles_Response.
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
-- \@see Ros2Mycobot_interfacesSrvSetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mycobot_interfacesSrvSetAngles_Response :: W.Decoder Ros2Mycobot_interfacesSrvSetAngles_Response
readRos2Mycobot_interfacesSrvSetAngles_Response = do
  a0 <- W.boolean
  let value = Ros2Mycobot_interfacesSrvSetAngles_Response a0
  case encodeRos2Mycobot_interfacesSrvSetAngles_Response value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_interfaces/srv/SetAngles_Response value.
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
-- \@see Ros2Mycobot_interfacesSrvSetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mycobot_interfacesSrvSetAngles_Response :: B.ByteString -> Either Word32 Ros2Mycobot_interfacesSrvSetAngles_Response
decodeRos2Mycobot_interfacesSrvSetAngles_Response = W.runDecoder 1 readRos2Mycobot_interfacesSrvSetAngles_Response
instance Canonical Ros2Mycobot_interfacesSrvSetAngles_Response where
  maximumBytes _ = 1
  encodeValue = encodeRos2Mycobot_interfacesSrvSetAngles_Response
  readValue = readRos2Mycobot_interfacesSrvSetAngles_Response
-- | \@brief Complete ROS 2 mycobot_interfaces/srv/SetCoords_Request value.
-- \@details All 8 declared fields are retained in source order. The canonical representation occupies
-- 26..26 bytes and is identified by
-- UWVMROS1_76a98d5db6f98255046f13855dc7468049894805d83e3d3a7fbdaace40292213.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mycobot_interfacesSrvSetCoords_Request = Ros2Mycobot_interfacesSrvSetCoords_Request
  {
    -- | \@brief mycobot_interfaces/srv/SetCoords_Request.x: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesSrvSetCoords_Request_x :: Float
  ,
    -- | \@brief mycobot_interfaces/srv/SetCoords_Request.y: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesSrvSetCoords_Request_y :: Float
  ,
    -- | \@brief mycobot_interfaces/srv/SetCoords_Request.z: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesSrvSetCoords_Request_z :: Float
  ,
    -- | \@brief mycobot_interfaces/srv/SetCoords_Request.rx: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesSrvSetCoords_Request_rx :: Float
  ,
    -- | \@brief mycobot_interfaces/srv/SetCoords_Request.ry: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesSrvSetCoords_Request_ry :: Float
  ,
    -- | \@brief mycobot_interfaces/srv/SetCoords_Request.rz: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesSrvSetCoords_Request_rz :: Float
  ,
    -- | \@brief mycobot_interfaces/srv/SetCoords_Request.speed: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesSrvSetCoords_Request_speed :: Int8
  ,
    -- | \@brief mycobot_interfaces/srv/SetCoords_Request.model: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesSrvSetCoords_Request_model :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_interfaces/srv/SetCoords_Request.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mycobot_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mycobot_interfacesSrvSetCoords_Request :: Ros2Mycobot_interfacesSrvSetCoords_Request
defaultRos2Mycobot_interfacesSrvSetCoords_Request =
  Ros2Mycobot_interfacesSrvSetCoords_Request
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mycobot_interfaces/srv/SetCoords_Request.
-- \@details Exact identity UWVMROS1_76a98d5db6f98255046f13855dc7468049894805d83e3d3a7fbdaace40292213
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_interfacesSrvSetCoords_RequestCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_interfaces/srv/SetCoords_Request.
-- \@details Exact identity UWVMROS1_76a98d5db6f98255046f13855dc7468049894805d83e3d3a7fbdaace40292213
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_interfacesSrvSetCoords_RequestCodecIdentity = "UWVMROS1_76a98d5db6f98255046f13855dc7468049894805d83e3d3a7fbdaace40292213"
-- | \@brief Encode one complete mycobot_interfaces/srv/SetCoords_Request value.
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
-- \@see Ros2Mycobot_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mycobot_interfacesSrvSetCoords_Request :: Ros2Mycobot_interfacesSrvSetCoords_Request -> Either Word32 B.ByteString
encodeRos2Mycobot_interfacesSrvSetCoords_Request value = do
  b0 <- W.encodeFloat32 (ros2Mycobot_interfacesSrvSetCoords_Request_x value)
  b1 <- W.encodeFloat32 (ros2Mycobot_interfacesSrvSetCoords_Request_y value)
  b2 <- W.encodeFloat32 (ros2Mycobot_interfacesSrvSetCoords_Request_z value)
  b3 <- W.encodeFloat32 (ros2Mycobot_interfacesSrvSetCoords_Request_rx value)
  b4 <- W.encodeFloat32 (ros2Mycobot_interfacesSrvSetCoords_Request_ry value)
  b5 <- W.encodeFloat32 (ros2Mycobot_interfacesSrvSetCoords_Request_rz value)
  b6 <- W.encodeSigned 1 (fromIntegral (ros2Mycobot_interfacesSrvSetCoords_Request_speed value))
  b7 <- W.encodeSigned 1 (fromIntegral (ros2Mycobot_interfacesSrvSetCoords_Request_model value))
  W.bounded 26 [b0, b1, b2, b3, b4, b5, b6, b7]
-- | \@brief Read the ordered canonical fields of mycobot_interfaces/srv/SetCoords_Request.
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
-- \@see Ros2Mycobot_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mycobot_interfacesSrvSetCoords_Request :: W.Decoder Ros2Mycobot_interfacesSrvSetCoords_Request
readRos2Mycobot_interfacesSrvSetCoords_Request = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  a6 <- fromIntegral <$> W.signed 1
  a7 <- fromIntegral <$> W.signed 1
  let value = Ros2Mycobot_interfacesSrvSetCoords_Request a0 a1 a2 a3 a4 a5 a6 a7
  case encodeRos2Mycobot_interfacesSrvSetCoords_Request value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_interfaces/srv/SetCoords_Request value.
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
-- \@see Ros2Mycobot_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mycobot_interfacesSrvSetCoords_Request :: B.ByteString -> Either Word32 Ros2Mycobot_interfacesSrvSetCoords_Request
decodeRos2Mycobot_interfacesSrvSetCoords_Request = W.runDecoder 26 readRos2Mycobot_interfacesSrvSetCoords_Request
instance Canonical Ros2Mycobot_interfacesSrvSetCoords_Request where
  maximumBytes _ = 26
  encodeValue = encodeRos2Mycobot_interfacesSrvSetCoords_Request
  readValue = readRos2Mycobot_interfacesSrvSetCoords_Request
-- | \@brief Complete ROS 2 mycobot_interfaces/srv/SetCoords_Response value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_75e3ae0e6db60a275b08e450c420969aa1ee05d0f34864e8fb6535d2d13613b9.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mycobot_interfacesSrvSetCoords_Response = Ros2Mycobot_interfacesSrvSetCoords_Response
  {
    -- | \@brief mycobot_interfaces/srv/SetCoords_Response.flag: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_interfacesSrvSetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_interfacesSrvSetCoords_Response_flag :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_interfaces/srv/SetCoords_Response.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mycobot_interfacesSrvSetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mycobot_interfacesSrvSetCoords_Response :: Ros2Mycobot_interfacesSrvSetCoords_Response
defaultRos2Mycobot_interfacesSrvSetCoords_Response = Ros2Mycobot_interfacesSrvSetCoords_Response (False)
-- | \@brief Canonical codec identity of mycobot_interfaces/srv/SetCoords_Response.
-- \@details Exact identity UWVMROS1_75e3ae0e6db60a275b08e450c420969aa1ee05d0f34864e8fb6535d2d13613b9
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_interfacesSrvSetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_interfacesSrvSetCoords_ResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_interfaces/srv/SetCoords_Response.
-- \@details Exact identity UWVMROS1_75e3ae0e6db60a275b08e450c420969aa1ee05d0f34864e8fb6535d2d13613b9
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_interfacesSrvSetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_interfacesSrvSetCoords_ResponseCodecIdentity = "UWVMROS1_75e3ae0e6db60a275b08e450c420969aa1ee05d0f34864e8fb6535d2d13613b9"
-- | \@brief Encode one complete mycobot_interfaces/srv/SetCoords_Response value.
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
-- \@see Ros2Mycobot_interfacesSrvSetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mycobot_interfacesSrvSetCoords_Response :: Ros2Mycobot_interfacesSrvSetCoords_Response -> Either Word32 B.ByteString
encodeRos2Mycobot_interfacesSrvSetCoords_Response value = do
  b0 <- W.encodeBool (ros2Mycobot_interfacesSrvSetCoords_Response_flag value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of mycobot_interfaces/srv/SetCoords_Response.
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
-- \@see Ros2Mycobot_interfacesSrvSetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mycobot_interfacesSrvSetCoords_Response :: W.Decoder Ros2Mycobot_interfacesSrvSetCoords_Response
readRos2Mycobot_interfacesSrvSetCoords_Response = do
  a0 <- W.boolean
  let value = Ros2Mycobot_interfacesSrvSetCoords_Response a0
  case encodeRos2Mycobot_interfacesSrvSetCoords_Response value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_interfaces/srv/SetCoords_Response value.
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
-- \@see Ros2Mycobot_interfacesSrvSetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mycobot_interfacesSrvSetCoords_Response :: B.ByteString -> Either Word32 Ros2Mycobot_interfacesSrvSetCoords_Response
decodeRos2Mycobot_interfacesSrvSetCoords_Response = W.runDecoder 1 readRos2Mycobot_interfacesSrvSetCoords_Response
instance Canonical Ros2Mycobot_interfacesSrvSetCoords_Response where
  maximumBytes _ = 1
  encodeValue = encodeRos2Mycobot_interfacesSrvSetCoords_Response
  readValue = readRos2Mycobot_interfacesSrvSetCoords_Response
-- | \@brief Complete ROS 2 mycobot_pro450_interfaces/msg/MycobotAngles value.
-- \@details All 6 declared fields are retained in source order. The canonical representation occupies
-- 24..24 bytes and is identified by
-- UWVMROS1_2351398be27155ac63b8a3d15ffd0d3088dd7cf284182a9b494791b7780aa6da.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mycobot_pro450_interfacesMsgMycobotAngles = Ros2Mycobot_pro450_interfacesMsgMycobotAngles
  {
    -- | \@brief mycobot_pro450_interfaces/msg/MycobotAngles.joint_1: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesMsgMycobotAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesMsgMycobotAngles_joint_1 :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/msg/MycobotAngles.joint_2: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesMsgMycobotAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesMsgMycobotAngles_joint_2 :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/msg/MycobotAngles.joint_3: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesMsgMycobotAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesMsgMycobotAngles_joint_3 :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/msg/MycobotAngles.joint_4: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesMsgMycobotAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesMsgMycobotAngles_joint_4 :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/msg/MycobotAngles.joint_5: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesMsgMycobotAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesMsgMycobotAngles_joint_5 :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/msg/MycobotAngles.joint_6: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesMsgMycobotAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesMsgMycobotAngles_joint_6 :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_pro450_interfaces/msg/MycobotAngles.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mycobot_pro450_interfacesMsgMycobotAngles; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mycobot_pro450_interfacesMsgMycobotAngles :: Ros2Mycobot_pro450_interfacesMsgMycobotAngles
defaultRos2Mycobot_pro450_interfacesMsgMycobotAngles =
  Ros2Mycobot_pro450_interfacesMsgMycobotAngles
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mycobot_pro450_interfaces/msg/MycobotAngles.
-- \@details Exact identity UWVMROS1_2351398be27155ac63b8a3d15ffd0d3088dd7cf284182a9b494791b7780aa6da
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_pro450_interfacesMsgMycobotAngles; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_pro450_interfacesMsgMycobotAnglesCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_pro450_interfaces/msg/MycobotAngles.
-- \@details Exact identity UWVMROS1_2351398be27155ac63b8a3d15ffd0d3088dd7cf284182a9b494791b7780aa6da
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_pro450_interfacesMsgMycobotAngles; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_pro450_interfacesMsgMycobotAnglesCodecIdentity = "UWVMROS1_2351398be27155ac63b8a3d15ffd0d3088dd7cf284182a9b494791b7780aa6da"
-- | \@brief Encode one complete mycobot_pro450_interfaces/msg/MycobotAngles value.
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
-- \@see Ros2Mycobot_pro450_interfacesMsgMycobotAngles; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mycobot_pro450_interfacesMsgMycobotAngles :: Ros2Mycobot_pro450_interfacesMsgMycobotAngles -> Either Word32 B.ByteString
encodeRos2Mycobot_pro450_interfacesMsgMycobotAngles value = do
  b0 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesMsgMycobotAngles_joint_1 value)
  b1 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesMsgMycobotAngles_joint_2 value)
  b2 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesMsgMycobotAngles_joint_3 value)
  b3 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesMsgMycobotAngles_joint_4 value)
  b4 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesMsgMycobotAngles_joint_5 value)
  b5 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesMsgMycobotAngles_joint_6 value)
  W.bounded 24 [b0, b1, b2, b3, b4, b5]
-- | \@brief Read the ordered canonical fields of mycobot_pro450_interfaces/msg/MycobotAngles.
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
-- \@see Ros2Mycobot_pro450_interfacesMsgMycobotAngles; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mycobot_pro450_interfacesMsgMycobotAngles :: W.Decoder Ros2Mycobot_pro450_interfacesMsgMycobotAngles
readRos2Mycobot_pro450_interfacesMsgMycobotAngles = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  let value = Ros2Mycobot_pro450_interfacesMsgMycobotAngles a0 a1 a2 a3 a4 a5
  case encodeRos2Mycobot_pro450_interfacesMsgMycobotAngles value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_pro450_interfaces/msg/MycobotAngles value.
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
-- \@see Ros2Mycobot_pro450_interfacesMsgMycobotAngles; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mycobot_pro450_interfacesMsgMycobotAngles :: B.ByteString -> Either Word32 Ros2Mycobot_pro450_interfacesMsgMycobotAngles
decodeRos2Mycobot_pro450_interfacesMsgMycobotAngles = W.runDecoder 24 readRos2Mycobot_pro450_interfacesMsgMycobotAngles
instance Canonical Ros2Mycobot_pro450_interfacesMsgMycobotAngles where
  maximumBytes _ = 24
  encodeValue = encodeRos2Mycobot_pro450_interfacesMsgMycobotAngles
  readValue = readRos2Mycobot_pro450_interfacesMsgMycobotAngles
-- | \@brief Complete ROS 2 mycobot_pro450_interfaces/msg/MycobotCoords value.
-- \@details All 6 declared fields are retained in source order. The canonical representation occupies
-- 24..24 bytes and is identified by
-- UWVMROS1_b8513545b0975757c6b7f756a5cedfe8aa0c5d28d0e573adfde001b452e923de.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mycobot_pro450_interfacesMsgMycobotCoords = Ros2Mycobot_pro450_interfacesMsgMycobotCoords
  {
    -- | \@brief mycobot_pro450_interfaces/msg/MycobotCoords.x: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesMsgMycobotCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesMsgMycobotCoords_x :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/msg/MycobotCoords.y: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesMsgMycobotCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesMsgMycobotCoords_y :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/msg/MycobotCoords.z: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesMsgMycobotCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesMsgMycobotCoords_z :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/msg/MycobotCoords.rx: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesMsgMycobotCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesMsgMycobotCoords_rx :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/msg/MycobotCoords.ry: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesMsgMycobotCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesMsgMycobotCoords_ry :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/msg/MycobotCoords.rz: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesMsgMycobotCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesMsgMycobotCoords_rz :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_pro450_interfaces/msg/MycobotCoords.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mycobot_pro450_interfacesMsgMycobotCoords; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mycobot_pro450_interfacesMsgMycobotCoords :: Ros2Mycobot_pro450_interfacesMsgMycobotCoords
defaultRos2Mycobot_pro450_interfacesMsgMycobotCoords =
  Ros2Mycobot_pro450_interfacesMsgMycobotCoords
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mycobot_pro450_interfaces/msg/MycobotCoords.
-- \@details Exact identity UWVMROS1_b8513545b0975757c6b7f756a5cedfe8aa0c5d28d0e573adfde001b452e923de
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_pro450_interfacesMsgMycobotCoords; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_pro450_interfacesMsgMycobotCoordsCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_pro450_interfaces/msg/MycobotCoords.
-- \@details Exact identity UWVMROS1_b8513545b0975757c6b7f756a5cedfe8aa0c5d28d0e573adfde001b452e923de
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_pro450_interfacesMsgMycobotCoords; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_pro450_interfacesMsgMycobotCoordsCodecIdentity = "UWVMROS1_b8513545b0975757c6b7f756a5cedfe8aa0c5d28d0e573adfde001b452e923de"
-- | \@brief Encode one complete mycobot_pro450_interfaces/msg/MycobotCoords value.
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
-- \@see Ros2Mycobot_pro450_interfacesMsgMycobotCoords; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mycobot_pro450_interfacesMsgMycobotCoords :: Ros2Mycobot_pro450_interfacesMsgMycobotCoords -> Either Word32 B.ByteString
encodeRos2Mycobot_pro450_interfacesMsgMycobotCoords value = do
  b0 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesMsgMycobotCoords_x value)
  b1 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesMsgMycobotCoords_y value)
  b2 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesMsgMycobotCoords_z value)
  b3 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesMsgMycobotCoords_rx value)
  b4 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesMsgMycobotCoords_ry value)
  b5 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesMsgMycobotCoords_rz value)
  W.bounded 24 [b0, b1, b2, b3, b4, b5]
-- | \@brief Read the ordered canonical fields of mycobot_pro450_interfaces/msg/MycobotCoords.
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
-- \@see Ros2Mycobot_pro450_interfacesMsgMycobotCoords; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mycobot_pro450_interfacesMsgMycobotCoords :: W.Decoder Ros2Mycobot_pro450_interfacesMsgMycobotCoords
readRos2Mycobot_pro450_interfacesMsgMycobotCoords = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  let value = Ros2Mycobot_pro450_interfacesMsgMycobotCoords a0 a1 a2 a3 a4 a5
  case encodeRos2Mycobot_pro450_interfacesMsgMycobotCoords value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_pro450_interfaces/msg/MycobotCoords value.
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
-- \@see Ros2Mycobot_pro450_interfacesMsgMycobotCoords; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mycobot_pro450_interfacesMsgMycobotCoords :: B.ByteString -> Either Word32 Ros2Mycobot_pro450_interfacesMsgMycobotCoords
decodeRos2Mycobot_pro450_interfacesMsgMycobotCoords = W.runDecoder 24 readRos2Mycobot_pro450_interfacesMsgMycobotCoords
instance Canonical Ros2Mycobot_pro450_interfacesMsgMycobotCoords where
  maximumBytes _ = 24
  encodeValue = encodeRos2Mycobot_pro450_interfacesMsgMycobotCoords
  readValue = readRos2Mycobot_pro450_interfacesMsgMycobotCoords
-- | \@brief Complete ROS 2 mycobot_pro450_interfaces/msg/MycobotGripperStatus value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_1d097932f2e6b9b4e73ff838b5223b585b230e4edc5c229b310eb00404f6e784.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus = Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus
  {
    -- | \@brief mycobot_pro450_interfaces/msg/MycobotGripperStatus.status: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus_status :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_pro450_interfaces/msg/MycobotGripperStatus.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mycobot_pro450_interfacesMsgMycobotGripperStatus :: Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus
defaultRos2Mycobot_pro450_interfacesMsgMycobotGripperStatus =
  Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus
    (False)
-- | \@brief Canonical codec identity of mycobot_pro450_interfaces/msg/MycobotGripperStatus.
-- \@details Exact identity UWVMROS1_1d097932f2e6b9b4e73ff838b5223b585b230e4edc5c229b310eb00404f6e784
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_pro450_interfacesMsgMycobotGripperStatusCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_pro450_interfaces/msg/MycobotGripperStatus.
-- \@details Exact identity UWVMROS1_1d097932f2e6b9b4e73ff838b5223b585b230e4edc5c229b310eb00404f6e784
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_pro450_interfacesMsgMycobotGripperStatusCodecIdentity = "UWVMROS1_1d097932f2e6b9b4e73ff838b5223b585b230e4edc5c229b310eb00404f6e784"
-- | \@brief Encode one complete mycobot_pro450_interfaces/msg/MycobotGripperStatus value.
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
-- \@see Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mycobot_pro450_interfacesMsgMycobotGripperStatus :: Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus -> Either Word32 B.ByteString
encodeRos2Mycobot_pro450_interfacesMsgMycobotGripperStatus value = do
  b0 <- W.encodeBool (ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus_status value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of mycobot_pro450_interfaces/msg/MycobotGripperStatus.
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
-- \@see Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mycobot_pro450_interfacesMsgMycobotGripperStatus :: W.Decoder Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus
readRos2Mycobot_pro450_interfacesMsgMycobotGripperStatus = do
  a0 <- W.boolean
  let value = Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus a0
  case encodeRos2Mycobot_pro450_interfacesMsgMycobotGripperStatus value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_pro450_interfaces/msg/MycobotGripperStatus value.
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
-- \@see Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mycobot_pro450_interfacesMsgMycobotGripperStatus :: B.ByteString -> Either Word32 Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus
decodeRos2Mycobot_pro450_interfacesMsgMycobotGripperStatus = W.runDecoder 1 readRos2Mycobot_pro450_interfacesMsgMycobotGripperStatus
instance Canonical Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus where
  maximumBytes _ = 1
  encodeValue = encodeRos2Mycobot_pro450_interfacesMsgMycobotGripperStatus
  readValue = readRos2Mycobot_pro450_interfacesMsgMycobotGripperStatus
-- | \@brief Complete ROS 2 mycobot_pro450_interfaces/msg/MycobotSetAngles value.
-- \@details All 7 declared fields are retained in source order. The canonical representation occupies
-- 25..25 bytes and is identified by
-- UWVMROS1_23d208d7fa8f7b7488be7c7db487698db4b227ef65e99c55d996901d27c3e591.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles = Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles
  {
    -- | \@brief mycobot_pro450_interfaces/msg/MycobotSetAngles.joint_1: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesMsgMycobotSetAngles_joint_1 :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/msg/MycobotSetAngles.joint_2: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesMsgMycobotSetAngles_joint_2 :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/msg/MycobotSetAngles.joint_3: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesMsgMycobotSetAngles_joint_3 :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/msg/MycobotSetAngles.joint_4: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesMsgMycobotSetAngles_joint_4 :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/msg/MycobotSetAngles.joint_5: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesMsgMycobotSetAngles_joint_5 :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/msg/MycobotSetAngles.joint_6: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesMsgMycobotSetAngles_joint_6 :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/msg/MycobotSetAngles.speed: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesMsgMycobotSetAngles_speed :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_pro450_interfaces/msg/MycobotSetAngles.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mycobot_pro450_interfacesMsgMycobotSetAngles :: Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles
defaultRos2Mycobot_pro450_interfacesMsgMycobotSetAngles =
  Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mycobot_pro450_interfaces/msg/MycobotSetAngles.
-- \@details Exact identity UWVMROS1_23d208d7fa8f7b7488be7c7db487698db4b227ef65e99c55d996901d27c3e591
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_pro450_interfacesMsgMycobotSetAnglesCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_pro450_interfaces/msg/MycobotSetAngles.
-- \@details Exact identity UWVMROS1_23d208d7fa8f7b7488be7c7db487698db4b227ef65e99c55d996901d27c3e591
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_pro450_interfacesMsgMycobotSetAnglesCodecIdentity = "UWVMROS1_23d208d7fa8f7b7488be7c7db487698db4b227ef65e99c55d996901d27c3e591"
-- | \@brief Encode one complete mycobot_pro450_interfaces/msg/MycobotSetAngles value.
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
-- \@see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mycobot_pro450_interfacesMsgMycobotSetAngles :: Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles -> Either Word32 B.ByteString
encodeRos2Mycobot_pro450_interfacesMsgMycobotSetAngles value = do
  b0 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesMsgMycobotSetAngles_joint_1 value)
  b1 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesMsgMycobotSetAngles_joint_2 value)
  b2 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesMsgMycobotSetAngles_joint_3 value)
  b3 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesMsgMycobotSetAngles_joint_4 value)
  b4 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesMsgMycobotSetAngles_joint_5 value)
  b5 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesMsgMycobotSetAngles_joint_6 value)
  b6 <- W.encodeSigned 1 (fromIntegral (ros2Mycobot_pro450_interfacesMsgMycobotSetAngles_speed value))
  W.bounded 25 [b0, b1, b2, b3, b4, b5, b6]
-- | \@brief Read the ordered canonical fields of mycobot_pro450_interfaces/msg/MycobotSetAngles.
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
-- \@see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mycobot_pro450_interfacesMsgMycobotSetAngles :: W.Decoder Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles
readRos2Mycobot_pro450_interfacesMsgMycobotSetAngles = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  a6 <- fromIntegral <$> W.signed 1
  let value = Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles a0 a1 a2 a3 a4 a5 a6
  case encodeRos2Mycobot_pro450_interfacesMsgMycobotSetAngles value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_pro450_interfaces/msg/MycobotSetAngles value.
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
-- \@see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mycobot_pro450_interfacesMsgMycobotSetAngles :: B.ByteString -> Either Word32 Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles
decodeRos2Mycobot_pro450_interfacesMsgMycobotSetAngles = W.runDecoder 25 readRos2Mycobot_pro450_interfacesMsgMycobotSetAngles
instance Canonical Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles where
  maximumBytes _ = 25
  encodeValue = encodeRos2Mycobot_pro450_interfacesMsgMycobotSetAngles
  readValue = readRos2Mycobot_pro450_interfacesMsgMycobotSetAngles
-- | \@brief Complete ROS 2 mycobot_pro450_interfaces/msg/MycobotSetCoords value.
-- \@details All 7 declared fields are retained in source order. The canonical representation occupies
-- 25..25 bytes and is identified by
-- UWVMROS1_60f40a2f6a577e5785fd69e0cbe9128b301aeaec6b70fd678c71e7f9a5426cea.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords = Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords
  {
    -- | \@brief mycobot_pro450_interfaces/msg/MycobotSetCoords.x: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesMsgMycobotSetCoords_x :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/msg/MycobotSetCoords.y: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesMsgMycobotSetCoords_y :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/msg/MycobotSetCoords.z: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesMsgMycobotSetCoords_z :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/msg/MycobotSetCoords.rx: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesMsgMycobotSetCoords_rx :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/msg/MycobotSetCoords.ry: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesMsgMycobotSetCoords_ry :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/msg/MycobotSetCoords.rz: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesMsgMycobotSetCoords_rz :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/msg/MycobotSetCoords.speed: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesMsgMycobotSetCoords_speed :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_pro450_interfaces/msg/MycobotSetCoords.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mycobot_pro450_interfacesMsgMycobotSetCoords :: Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords
defaultRos2Mycobot_pro450_interfacesMsgMycobotSetCoords =
  Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mycobot_pro450_interfaces/msg/MycobotSetCoords.
-- \@details Exact identity UWVMROS1_60f40a2f6a577e5785fd69e0cbe9128b301aeaec6b70fd678c71e7f9a5426cea
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_pro450_interfacesMsgMycobotSetCoordsCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_pro450_interfaces/msg/MycobotSetCoords.
-- \@details Exact identity UWVMROS1_60f40a2f6a577e5785fd69e0cbe9128b301aeaec6b70fd678c71e7f9a5426cea
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_pro450_interfacesMsgMycobotSetCoordsCodecIdentity = "UWVMROS1_60f40a2f6a577e5785fd69e0cbe9128b301aeaec6b70fd678c71e7f9a5426cea"
-- | \@brief Encode one complete mycobot_pro450_interfaces/msg/MycobotSetCoords value.
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
-- \@see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mycobot_pro450_interfacesMsgMycobotSetCoords :: Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords -> Either Word32 B.ByteString
encodeRos2Mycobot_pro450_interfacesMsgMycobotSetCoords value = do
  b0 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesMsgMycobotSetCoords_x value)
  b1 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesMsgMycobotSetCoords_y value)
  b2 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesMsgMycobotSetCoords_z value)
  b3 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesMsgMycobotSetCoords_rx value)
  b4 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesMsgMycobotSetCoords_ry value)
  b5 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesMsgMycobotSetCoords_rz value)
  b6 <- W.encodeSigned 1 (fromIntegral (ros2Mycobot_pro450_interfacesMsgMycobotSetCoords_speed value))
  W.bounded 25 [b0, b1, b2, b3, b4, b5, b6]
-- | \@brief Read the ordered canonical fields of mycobot_pro450_interfaces/msg/MycobotSetCoords.
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
-- \@see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mycobot_pro450_interfacesMsgMycobotSetCoords :: W.Decoder Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords
readRos2Mycobot_pro450_interfacesMsgMycobotSetCoords = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  a6 <- fromIntegral <$> W.signed 1
  let value = Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords a0 a1 a2 a3 a4 a5 a6
  case encodeRos2Mycobot_pro450_interfacesMsgMycobotSetCoords value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_pro450_interfaces/msg/MycobotSetCoords value.
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
-- \@see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mycobot_pro450_interfacesMsgMycobotSetCoords :: B.ByteString -> Either Word32 Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords
decodeRos2Mycobot_pro450_interfacesMsgMycobotSetCoords = W.runDecoder 25 readRos2Mycobot_pro450_interfacesMsgMycobotSetCoords
instance Canonical Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords where
  maximumBytes _ = 25
  encodeValue = encodeRos2Mycobot_pro450_interfacesMsgMycobotSetCoords
  readValue = readRos2Mycobot_pro450_interfacesMsgMycobotSetCoords
-- | \@brief Complete ROS 2 mycobot_pro450_interfaces/srv/GetAngles_Request value.
-- \@details All 0 declared fields are retained in source order. The canonical representation occupies
-- 0..0 bytes and is identified by
-- UWVMROS1_d2d8197675b9dadd50ae1a22b165a84e2e76b293b28cc70bec211225c60626c4.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mycobot_pro450_interfacesSrvGetAngles_Request = Ros2Mycobot_pro450_interfacesSrvGetAngles_Request deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_pro450_interfaces/srv/GetAngles_Request.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mycobot_pro450_interfacesSrvGetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mycobot_pro450_interfacesSrvGetAngles_Request :: Ros2Mycobot_pro450_interfacesSrvGetAngles_Request
defaultRos2Mycobot_pro450_interfacesSrvGetAngles_Request = Ros2Mycobot_pro450_interfacesSrvGetAngles_Request 
-- | \@brief Canonical codec identity of mycobot_pro450_interfaces/srv/GetAngles_Request.
-- \@details Exact identity UWVMROS1_d2d8197675b9dadd50ae1a22b165a84e2e76b293b28cc70bec211225c60626c4
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_pro450_interfacesSrvGetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_pro450_interfacesSrvGetAngles_RequestCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_pro450_interfaces/srv/GetAngles_Request.
-- \@details Exact identity UWVMROS1_d2d8197675b9dadd50ae1a22b165a84e2e76b293b28cc70bec211225c60626c4
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_pro450_interfacesSrvGetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_pro450_interfacesSrvGetAngles_RequestCodecIdentity = "UWVMROS1_d2d8197675b9dadd50ae1a22b165a84e2e76b293b28cc70bec211225c60626c4"
-- | \@brief Encode one complete mycobot_pro450_interfaces/srv/GetAngles_Request value.
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
-- \@see Ros2Mycobot_pro450_interfacesSrvGetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mycobot_pro450_interfacesSrvGetAngles_Request :: Ros2Mycobot_pro450_interfacesSrvGetAngles_Request -> Either Word32 B.ByteString
encodeRos2Mycobot_pro450_interfacesSrvGetAngles_Request value = do
  W.bounded 0 []
-- | \@brief Read the ordered canonical fields of mycobot_pro450_interfaces/srv/GetAngles_Request.
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
-- \@see Ros2Mycobot_pro450_interfacesSrvGetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mycobot_pro450_interfacesSrvGetAngles_Request :: W.Decoder Ros2Mycobot_pro450_interfacesSrvGetAngles_Request
readRos2Mycobot_pro450_interfacesSrvGetAngles_Request = do
  let value = Ros2Mycobot_pro450_interfacesSrvGetAngles_Request 
  case encodeRos2Mycobot_pro450_interfacesSrvGetAngles_Request value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_pro450_interfaces/srv/GetAngles_Request value.
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
-- \@see Ros2Mycobot_pro450_interfacesSrvGetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mycobot_pro450_interfacesSrvGetAngles_Request :: B.ByteString -> Either Word32 Ros2Mycobot_pro450_interfacesSrvGetAngles_Request
decodeRos2Mycobot_pro450_interfacesSrvGetAngles_Request = W.runDecoder 0 readRos2Mycobot_pro450_interfacesSrvGetAngles_Request
instance Canonical Ros2Mycobot_pro450_interfacesSrvGetAngles_Request where
  maximumBytes _ = 0
  encodeValue = encodeRos2Mycobot_pro450_interfacesSrvGetAngles_Request
  readValue = readRos2Mycobot_pro450_interfacesSrvGetAngles_Request
-- | \@brief Complete ROS 2 mycobot_pro450_interfaces/srv/GetAngles_Response value.
-- \@details All 6 declared fields are retained in source order. The canonical representation occupies
-- 24..24 bytes and is identified by
-- UWVMROS1_13056bbe3bdef4feb8488783e1c5cf725d1fb94006f36f2221f61081084227f8.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mycobot_pro450_interfacesSrvGetAngles_Response = Ros2Mycobot_pro450_interfacesSrvGetAngles_Response
  {
    -- | \@brief mycobot_pro450_interfaces/srv/GetAngles_Response.joint_1: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesSrvGetAngles_Response_joint_1 :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/srv/GetAngles_Response.joint_2: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesSrvGetAngles_Response_joint_2 :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/srv/GetAngles_Response.joint_3: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesSrvGetAngles_Response_joint_3 :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/srv/GetAngles_Response.joint_4: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesSrvGetAngles_Response_joint_4 :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/srv/GetAngles_Response.joint_5: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesSrvGetAngles_Response_joint_5 :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/srv/GetAngles_Response.joint_6: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesSrvGetAngles_Response_joint_6 :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_pro450_interfaces/srv/GetAngles_Response.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mycobot_pro450_interfacesSrvGetAngles_Response :: Ros2Mycobot_pro450_interfacesSrvGetAngles_Response
defaultRos2Mycobot_pro450_interfacesSrvGetAngles_Response =
  Ros2Mycobot_pro450_interfacesSrvGetAngles_Response
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mycobot_pro450_interfaces/srv/GetAngles_Response.
-- \@details Exact identity UWVMROS1_13056bbe3bdef4feb8488783e1c5cf725d1fb94006f36f2221f61081084227f8
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_pro450_interfacesSrvGetAngles_ResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_pro450_interfaces/srv/GetAngles_Response.
-- \@details Exact identity UWVMROS1_13056bbe3bdef4feb8488783e1c5cf725d1fb94006f36f2221f61081084227f8
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_pro450_interfacesSrvGetAngles_ResponseCodecIdentity = "UWVMROS1_13056bbe3bdef4feb8488783e1c5cf725d1fb94006f36f2221f61081084227f8"
-- | \@brief Encode one complete mycobot_pro450_interfaces/srv/GetAngles_Response value.
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
-- \@see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mycobot_pro450_interfacesSrvGetAngles_Response :: Ros2Mycobot_pro450_interfacesSrvGetAngles_Response -> Either Word32 B.ByteString
encodeRos2Mycobot_pro450_interfacesSrvGetAngles_Response value = do
  b0 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesSrvGetAngles_Response_joint_1 value)
  b1 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesSrvGetAngles_Response_joint_2 value)
  b2 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesSrvGetAngles_Response_joint_3 value)
  b3 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesSrvGetAngles_Response_joint_4 value)
  b4 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesSrvGetAngles_Response_joint_5 value)
  b5 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesSrvGetAngles_Response_joint_6 value)
  W.bounded 24 [b0, b1, b2, b3, b4, b5]
-- | \@brief Read the ordered canonical fields of mycobot_pro450_interfaces/srv/GetAngles_Response.
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
-- \@see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mycobot_pro450_interfacesSrvGetAngles_Response :: W.Decoder Ros2Mycobot_pro450_interfacesSrvGetAngles_Response
readRos2Mycobot_pro450_interfacesSrvGetAngles_Response = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  let value = Ros2Mycobot_pro450_interfacesSrvGetAngles_Response a0 a1 a2 a3 a4 a5
  case encodeRos2Mycobot_pro450_interfacesSrvGetAngles_Response value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_pro450_interfaces/srv/GetAngles_Response value.
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
-- \@see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mycobot_pro450_interfacesSrvGetAngles_Response :: B.ByteString -> Either Word32 Ros2Mycobot_pro450_interfacesSrvGetAngles_Response
decodeRos2Mycobot_pro450_interfacesSrvGetAngles_Response = W.runDecoder 24 readRos2Mycobot_pro450_interfacesSrvGetAngles_Response
instance Canonical Ros2Mycobot_pro450_interfacesSrvGetAngles_Response where
  maximumBytes _ = 24
  encodeValue = encodeRos2Mycobot_pro450_interfacesSrvGetAngles_Response
  readValue = readRos2Mycobot_pro450_interfacesSrvGetAngles_Response
-- | \@brief Complete ROS 2 mycobot_pro450_interfaces/srv/GetCoords_Request value.
-- \@details All 0 declared fields are retained in source order. The canonical representation occupies
-- 0..0 bytes and is identified by
-- UWVMROS1_bda408ece90e671ce58ae428f79f01c1429c3b3aa3c1ef2efe9dc045faa9e3c2.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mycobot_pro450_interfacesSrvGetCoords_Request = Ros2Mycobot_pro450_interfacesSrvGetCoords_Request deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_pro450_interfaces/srv/GetCoords_Request.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mycobot_pro450_interfacesSrvGetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mycobot_pro450_interfacesSrvGetCoords_Request :: Ros2Mycobot_pro450_interfacesSrvGetCoords_Request
defaultRos2Mycobot_pro450_interfacesSrvGetCoords_Request = Ros2Mycobot_pro450_interfacesSrvGetCoords_Request 
-- | \@brief Canonical codec identity of mycobot_pro450_interfaces/srv/GetCoords_Request.
-- \@details Exact identity UWVMROS1_bda408ece90e671ce58ae428f79f01c1429c3b3aa3c1ef2efe9dc045faa9e3c2
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_pro450_interfacesSrvGetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_pro450_interfacesSrvGetCoords_RequestCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_pro450_interfaces/srv/GetCoords_Request.
-- \@details Exact identity UWVMROS1_bda408ece90e671ce58ae428f79f01c1429c3b3aa3c1ef2efe9dc045faa9e3c2
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_pro450_interfacesSrvGetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_pro450_interfacesSrvGetCoords_RequestCodecIdentity = "UWVMROS1_bda408ece90e671ce58ae428f79f01c1429c3b3aa3c1ef2efe9dc045faa9e3c2"
-- | \@brief Encode one complete mycobot_pro450_interfaces/srv/GetCoords_Request value.
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
-- \@see Ros2Mycobot_pro450_interfacesSrvGetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mycobot_pro450_interfacesSrvGetCoords_Request :: Ros2Mycobot_pro450_interfacesSrvGetCoords_Request -> Either Word32 B.ByteString
encodeRos2Mycobot_pro450_interfacesSrvGetCoords_Request value = do
  W.bounded 0 []
-- | \@brief Read the ordered canonical fields of mycobot_pro450_interfaces/srv/GetCoords_Request.
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
-- \@see Ros2Mycobot_pro450_interfacesSrvGetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mycobot_pro450_interfacesSrvGetCoords_Request :: W.Decoder Ros2Mycobot_pro450_interfacesSrvGetCoords_Request
readRos2Mycobot_pro450_interfacesSrvGetCoords_Request = do
  let value = Ros2Mycobot_pro450_interfacesSrvGetCoords_Request 
  case encodeRos2Mycobot_pro450_interfacesSrvGetCoords_Request value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_pro450_interfaces/srv/GetCoords_Request value.
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
-- \@see Ros2Mycobot_pro450_interfacesSrvGetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mycobot_pro450_interfacesSrvGetCoords_Request :: B.ByteString -> Either Word32 Ros2Mycobot_pro450_interfacesSrvGetCoords_Request
decodeRos2Mycobot_pro450_interfacesSrvGetCoords_Request = W.runDecoder 0 readRos2Mycobot_pro450_interfacesSrvGetCoords_Request
instance Canonical Ros2Mycobot_pro450_interfacesSrvGetCoords_Request where
  maximumBytes _ = 0
  encodeValue = encodeRos2Mycobot_pro450_interfacesSrvGetCoords_Request
  readValue = readRos2Mycobot_pro450_interfacesSrvGetCoords_Request
-- | \@brief Complete ROS 2 mycobot_pro450_interfaces/srv/GetCoords_Response value.
-- \@details All 6 declared fields are retained in source order. The canonical representation occupies
-- 24..24 bytes and is identified by
-- UWVMROS1_01e8a3ef4c048100af32d92cd027769e32eacd82dba36dc3bde30c70cb44afdf.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mycobot_pro450_interfacesSrvGetCoords_Response = Ros2Mycobot_pro450_interfacesSrvGetCoords_Response
  {
    -- | \@brief mycobot_pro450_interfaces/srv/GetCoords_Response.x: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesSrvGetCoords_Response_x :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/srv/GetCoords_Response.y: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesSrvGetCoords_Response_y :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/srv/GetCoords_Response.z: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesSrvGetCoords_Response_z :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/srv/GetCoords_Response.rx: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesSrvGetCoords_Response_rx :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/srv/GetCoords_Response.ry: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesSrvGetCoords_Response_ry :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/srv/GetCoords_Response.rz: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesSrvGetCoords_Response_rz :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_pro450_interfaces/srv/GetCoords_Response.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mycobot_pro450_interfacesSrvGetCoords_Response :: Ros2Mycobot_pro450_interfacesSrvGetCoords_Response
defaultRos2Mycobot_pro450_interfacesSrvGetCoords_Response =
  Ros2Mycobot_pro450_interfacesSrvGetCoords_Response
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mycobot_pro450_interfaces/srv/GetCoords_Response.
-- \@details Exact identity UWVMROS1_01e8a3ef4c048100af32d92cd027769e32eacd82dba36dc3bde30c70cb44afdf
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_pro450_interfacesSrvGetCoords_ResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_pro450_interfaces/srv/GetCoords_Response.
-- \@details Exact identity UWVMROS1_01e8a3ef4c048100af32d92cd027769e32eacd82dba36dc3bde30c70cb44afdf
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_pro450_interfacesSrvGetCoords_ResponseCodecIdentity = "UWVMROS1_01e8a3ef4c048100af32d92cd027769e32eacd82dba36dc3bde30c70cb44afdf"
-- | \@brief Encode one complete mycobot_pro450_interfaces/srv/GetCoords_Response value.
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
-- \@see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mycobot_pro450_interfacesSrvGetCoords_Response :: Ros2Mycobot_pro450_interfacesSrvGetCoords_Response -> Either Word32 B.ByteString
encodeRos2Mycobot_pro450_interfacesSrvGetCoords_Response value = do
  b0 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesSrvGetCoords_Response_x value)
  b1 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesSrvGetCoords_Response_y value)
  b2 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesSrvGetCoords_Response_z value)
  b3 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesSrvGetCoords_Response_rx value)
  b4 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesSrvGetCoords_Response_ry value)
  b5 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesSrvGetCoords_Response_rz value)
  W.bounded 24 [b0, b1, b2, b3, b4, b5]
-- | \@brief Read the ordered canonical fields of mycobot_pro450_interfaces/srv/GetCoords_Response.
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
-- \@see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mycobot_pro450_interfacesSrvGetCoords_Response :: W.Decoder Ros2Mycobot_pro450_interfacesSrvGetCoords_Response
readRos2Mycobot_pro450_interfacesSrvGetCoords_Response = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  let value = Ros2Mycobot_pro450_interfacesSrvGetCoords_Response a0 a1 a2 a3 a4 a5
  case encodeRos2Mycobot_pro450_interfacesSrvGetCoords_Response value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_pro450_interfaces/srv/GetCoords_Response value.
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
-- \@see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mycobot_pro450_interfacesSrvGetCoords_Response :: B.ByteString -> Either Word32 Ros2Mycobot_pro450_interfacesSrvGetCoords_Response
decodeRos2Mycobot_pro450_interfacesSrvGetCoords_Response = W.runDecoder 24 readRos2Mycobot_pro450_interfacesSrvGetCoords_Response
instance Canonical Ros2Mycobot_pro450_interfacesSrvGetCoords_Response where
  maximumBytes _ = 24
  encodeValue = encodeRos2Mycobot_pro450_interfacesSrvGetCoords_Response
  readValue = readRos2Mycobot_pro450_interfacesSrvGetCoords_Response
-- | \@brief Complete ROS 2 mycobot_pro450_interfaces/srv/GetGripperValue_Request value.
-- \@details All 0 declared fields are retained in source order. The canonical representation occupies
-- 0..0 bytes and is identified by
-- UWVMROS1_17cb5e3826409b661c2ad4bad8fde2b4c826dde95d8600e1a17bcf4908eca125.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request = Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_pro450_interfaces/srv/GetGripperValue_Request.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mycobot_pro450_interfacesSrvGetGripperValue_Request :: Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request
defaultRos2Mycobot_pro450_interfacesSrvGetGripperValue_Request = Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request 
-- | \@brief Canonical codec identity of mycobot_pro450_interfaces/srv/GetGripperValue_Request.
-- \@details Exact identity UWVMROS1_17cb5e3826409b661c2ad4bad8fde2b4c826dde95d8600e1a17bcf4908eca125
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_pro450_interfacesSrvGetGripperValue_RequestCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_pro450_interfaces/srv/GetGripperValue_Request.
-- \@details Exact identity UWVMROS1_17cb5e3826409b661c2ad4bad8fde2b4c826dde95d8600e1a17bcf4908eca125
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_pro450_interfacesSrvGetGripperValue_RequestCodecIdentity = "UWVMROS1_17cb5e3826409b661c2ad4bad8fde2b4c826dde95d8600e1a17bcf4908eca125"
-- | \@brief Encode one complete mycobot_pro450_interfaces/srv/GetGripperValue_Request value.
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
-- \@see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mycobot_pro450_interfacesSrvGetGripperValue_Request :: Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request -> Either Word32 B.ByteString
encodeRos2Mycobot_pro450_interfacesSrvGetGripperValue_Request value = do
  W.bounded 0 []
-- | \@brief Read the ordered canonical fields of mycobot_pro450_interfaces/srv/GetGripperValue_Request.
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
-- \@see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mycobot_pro450_interfacesSrvGetGripperValue_Request :: W.Decoder Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request
readRos2Mycobot_pro450_interfacesSrvGetGripperValue_Request = do
  let value = Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request 
  case encodeRos2Mycobot_pro450_interfacesSrvGetGripperValue_Request value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_pro450_interfaces/srv/GetGripperValue_Request value.
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
-- \@see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mycobot_pro450_interfacesSrvGetGripperValue_Request :: B.ByteString -> Either Word32 Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request
decodeRos2Mycobot_pro450_interfacesSrvGetGripperValue_Request = W.runDecoder 0 readRos2Mycobot_pro450_interfacesSrvGetGripperValue_Request
instance Canonical Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request where
  maximumBytes _ = 0
  encodeValue = encodeRos2Mycobot_pro450_interfacesSrvGetGripperValue_Request
  readValue = readRos2Mycobot_pro450_interfacesSrvGetGripperValue_Request
-- | \@brief Complete ROS 2 mycobot_pro450_interfaces/srv/GetGripperValue_Response value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_6b210e18d0696735196fb2e166b7168165dba6f03b97759a437fc8dc08ab2676.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response = Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response
  {
    -- | \@brief mycobot_pro450_interfaces/srv/GetGripperValue_Response.gripper_angle: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response;
    -- share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response_gripper_angle :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_pro450_interfaces/srv/GetGripperValue_Response.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mycobot_pro450_interfacesSrvGetGripperValue_Response :: Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response
defaultRos2Mycobot_pro450_interfacesSrvGetGripperValue_Response =
  Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response
    (0)
-- | \@brief Canonical codec identity of mycobot_pro450_interfaces/srv/GetGripperValue_Response.
-- \@details Exact identity UWVMROS1_6b210e18d0696735196fb2e166b7168165dba6f03b97759a437fc8dc08ab2676
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_pro450_interfacesSrvGetGripperValue_ResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_pro450_interfaces/srv/GetGripperValue_Response.
-- \@details Exact identity UWVMROS1_6b210e18d0696735196fb2e166b7168165dba6f03b97759a437fc8dc08ab2676
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_pro450_interfacesSrvGetGripperValue_ResponseCodecIdentity = "UWVMROS1_6b210e18d0696735196fb2e166b7168165dba6f03b97759a437fc8dc08ab2676"
-- | \@brief Encode one complete mycobot_pro450_interfaces/srv/GetGripperValue_Response value.
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
-- \@see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mycobot_pro450_interfacesSrvGetGripperValue_Response :: Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response -> Either Word32 B.ByteString
encodeRos2Mycobot_pro450_interfacesSrvGetGripperValue_Response value = do
  b0 <- W.encodeSigned 1 (fromIntegral (ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response_gripper_angle value))
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of mycobot_pro450_interfaces/srv/GetGripperValue_Response.
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
-- \@see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mycobot_pro450_interfacesSrvGetGripperValue_Response :: W.Decoder Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response
readRos2Mycobot_pro450_interfacesSrvGetGripperValue_Response = do
  a0 <- fromIntegral <$> W.signed 1
  let value = Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response a0
  case encodeRos2Mycobot_pro450_interfacesSrvGetGripperValue_Response value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_pro450_interfaces/srv/GetGripperValue_Response value.
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
-- \@see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mycobot_pro450_interfacesSrvGetGripperValue_Response :: B.ByteString -> Either Word32 Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response
decodeRos2Mycobot_pro450_interfacesSrvGetGripperValue_Response = W.runDecoder 1 readRos2Mycobot_pro450_interfacesSrvGetGripperValue_Response
instance Canonical Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response where
  maximumBytes _ = 1
  encodeValue = encodeRos2Mycobot_pro450_interfacesSrvGetGripperValue_Response
  readValue = readRos2Mycobot_pro450_interfacesSrvGetGripperValue_Response
-- | \@brief Complete ROS 2 mycobot_pro450_interfaces/srv/GripperStatus_Request value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_edc3352d37effe3923c55a024d6acac85a3cb49350974ea35934efa41555ccac.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request = Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request
  {
    -- | \@brief mycobot_pro450_interfaces/srv/GripperStatus_Request.status: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesSrvGripperStatus_Request_status :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_pro450_interfaces/srv/GripperStatus_Request.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mycobot_pro450_interfacesSrvGripperStatus_Request :: Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request
defaultRos2Mycobot_pro450_interfacesSrvGripperStatus_Request =
  Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request
    (False)
-- | \@brief Canonical codec identity of mycobot_pro450_interfaces/srv/GripperStatus_Request.
-- \@details Exact identity UWVMROS1_edc3352d37effe3923c55a024d6acac85a3cb49350974ea35934efa41555ccac
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_pro450_interfacesSrvGripperStatus_RequestCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_pro450_interfaces/srv/GripperStatus_Request.
-- \@details Exact identity UWVMROS1_edc3352d37effe3923c55a024d6acac85a3cb49350974ea35934efa41555ccac
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_pro450_interfacesSrvGripperStatus_RequestCodecIdentity = "UWVMROS1_edc3352d37effe3923c55a024d6acac85a3cb49350974ea35934efa41555ccac"
-- | \@brief Encode one complete mycobot_pro450_interfaces/srv/GripperStatus_Request value.
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
-- \@see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mycobot_pro450_interfacesSrvGripperStatus_Request :: Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request -> Either Word32 B.ByteString
encodeRos2Mycobot_pro450_interfacesSrvGripperStatus_Request value = do
  b0 <- W.encodeBool (ros2Mycobot_pro450_interfacesSrvGripperStatus_Request_status value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of mycobot_pro450_interfaces/srv/GripperStatus_Request.
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
-- \@see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mycobot_pro450_interfacesSrvGripperStatus_Request :: W.Decoder Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request
readRos2Mycobot_pro450_interfacesSrvGripperStatus_Request = do
  a0 <- W.boolean
  let value = Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request a0
  case encodeRos2Mycobot_pro450_interfacesSrvGripperStatus_Request value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_pro450_interfaces/srv/GripperStatus_Request value.
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
-- \@see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mycobot_pro450_interfacesSrvGripperStatus_Request :: B.ByteString -> Either Word32 Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request
decodeRos2Mycobot_pro450_interfacesSrvGripperStatus_Request = W.runDecoder 1 readRos2Mycobot_pro450_interfacesSrvGripperStatus_Request
instance Canonical Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request where
  maximumBytes _ = 1
  encodeValue = encodeRos2Mycobot_pro450_interfacesSrvGripperStatus_Request
  readValue = readRos2Mycobot_pro450_interfacesSrvGripperStatus_Request
-- | \@brief Complete ROS 2 mycobot_pro450_interfaces/srv/GripperStatus_Response value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_65166c2943fd319555cc1a2dcdaf4475b1e7779960907fe5ab6d1b5dc5536fc2.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response = Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response
  {
    -- | \@brief mycobot_pro450_interfaces/srv/GripperStatus_Response.flag: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response;
    -- share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesSrvGripperStatus_Response_flag :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_pro450_interfaces/srv/GripperStatus_Response.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mycobot_pro450_interfacesSrvGripperStatus_Response :: Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response
defaultRos2Mycobot_pro450_interfacesSrvGripperStatus_Response =
  Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response
    (False)
-- | \@brief Canonical codec identity of mycobot_pro450_interfaces/srv/GripperStatus_Response.
-- \@details Exact identity UWVMROS1_65166c2943fd319555cc1a2dcdaf4475b1e7779960907fe5ab6d1b5dc5536fc2
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_pro450_interfacesSrvGripperStatus_ResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_pro450_interfaces/srv/GripperStatus_Response.
-- \@details Exact identity UWVMROS1_65166c2943fd319555cc1a2dcdaf4475b1e7779960907fe5ab6d1b5dc5536fc2
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_pro450_interfacesSrvGripperStatus_ResponseCodecIdentity = "UWVMROS1_65166c2943fd319555cc1a2dcdaf4475b1e7779960907fe5ab6d1b5dc5536fc2"
-- | \@brief Encode one complete mycobot_pro450_interfaces/srv/GripperStatus_Response value.
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
-- \@see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mycobot_pro450_interfacesSrvGripperStatus_Response :: Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response -> Either Word32 B.ByteString
encodeRos2Mycobot_pro450_interfacesSrvGripperStatus_Response value = do
  b0 <- W.encodeBool (ros2Mycobot_pro450_interfacesSrvGripperStatus_Response_flag value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of mycobot_pro450_interfaces/srv/GripperStatus_Response.
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
-- \@see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mycobot_pro450_interfacesSrvGripperStatus_Response :: W.Decoder Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response
readRos2Mycobot_pro450_interfacesSrvGripperStatus_Response = do
  a0 <- W.boolean
  let value = Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response a0
  case encodeRos2Mycobot_pro450_interfacesSrvGripperStatus_Response value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_pro450_interfaces/srv/GripperStatus_Response value.
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
-- \@see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mycobot_pro450_interfacesSrvGripperStatus_Response :: B.ByteString -> Either Word32 Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response
decodeRos2Mycobot_pro450_interfacesSrvGripperStatus_Response = W.runDecoder 1 readRos2Mycobot_pro450_interfacesSrvGripperStatus_Response
instance Canonical Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response where
  maximumBytes _ = 1
  encodeValue = encodeRos2Mycobot_pro450_interfacesSrvGripperStatus_Response
  readValue = readRos2Mycobot_pro450_interfacesSrvGripperStatus_Response
-- | \@brief Complete ROS 2 mycobot_pro450_interfaces/srv/SetAngles_Request value.
-- \@details All 7 declared fields are retained in source order. The canonical representation occupies
-- 25..25 bytes and is identified by
-- UWVMROS1_ec2659577304938ca4f78c1b4add50190766d8d1b551397668ef7ad03e2ccb09.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mycobot_pro450_interfacesSrvSetAngles_Request = Ros2Mycobot_pro450_interfacesSrvSetAngles_Request
  {
    -- | \@brief mycobot_pro450_interfaces/srv/SetAngles_Request.joint_1: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesSrvSetAngles_Request_joint_1 :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/srv/SetAngles_Request.joint_2: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesSrvSetAngles_Request_joint_2 :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/srv/SetAngles_Request.joint_3: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesSrvSetAngles_Request_joint_3 :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/srv/SetAngles_Request.joint_4: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesSrvSetAngles_Request_joint_4 :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/srv/SetAngles_Request.joint_5: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesSrvSetAngles_Request_joint_5 :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/srv/SetAngles_Request.joint_6: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesSrvSetAngles_Request_joint_6 :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/srv/SetAngles_Request.speed: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesSrvSetAngles_Request_speed :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_pro450_interfaces/srv/SetAngles_Request.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mycobot_pro450_interfacesSrvSetAngles_Request :: Ros2Mycobot_pro450_interfacesSrvSetAngles_Request
defaultRos2Mycobot_pro450_interfacesSrvSetAngles_Request =
  Ros2Mycobot_pro450_interfacesSrvSetAngles_Request
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mycobot_pro450_interfaces/srv/SetAngles_Request.
-- \@details Exact identity UWVMROS1_ec2659577304938ca4f78c1b4add50190766d8d1b551397668ef7ad03e2ccb09
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_pro450_interfacesSrvSetAngles_RequestCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_pro450_interfaces/srv/SetAngles_Request.
-- \@details Exact identity UWVMROS1_ec2659577304938ca4f78c1b4add50190766d8d1b551397668ef7ad03e2ccb09
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_pro450_interfacesSrvSetAngles_RequestCodecIdentity = "UWVMROS1_ec2659577304938ca4f78c1b4add50190766d8d1b551397668ef7ad03e2ccb09"
-- | \@brief Encode one complete mycobot_pro450_interfaces/srv/SetAngles_Request value.
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
-- \@see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mycobot_pro450_interfacesSrvSetAngles_Request :: Ros2Mycobot_pro450_interfacesSrvSetAngles_Request -> Either Word32 B.ByteString
encodeRos2Mycobot_pro450_interfacesSrvSetAngles_Request value = do
  b0 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesSrvSetAngles_Request_joint_1 value)
  b1 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesSrvSetAngles_Request_joint_2 value)
  b2 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesSrvSetAngles_Request_joint_3 value)
  b3 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesSrvSetAngles_Request_joint_4 value)
  b4 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesSrvSetAngles_Request_joint_5 value)
  b5 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesSrvSetAngles_Request_joint_6 value)
  b6 <- W.encodeSigned 1 (fromIntegral (ros2Mycobot_pro450_interfacesSrvSetAngles_Request_speed value))
  W.bounded 25 [b0, b1, b2, b3, b4, b5, b6]
-- | \@brief Read the ordered canonical fields of mycobot_pro450_interfaces/srv/SetAngles_Request.
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
-- \@see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mycobot_pro450_interfacesSrvSetAngles_Request :: W.Decoder Ros2Mycobot_pro450_interfacesSrvSetAngles_Request
readRos2Mycobot_pro450_interfacesSrvSetAngles_Request = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  a6 <- fromIntegral <$> W.signed 1
  let value = Ros2Mycobot_pro450_interfacesSrvSetAngles_Request a0 a1 a2 a3 a4 a5 a6
  case encodeRos2Mycobot_pro450_interfacesSrvSetAngles_Request value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_pro450_interfaces/srv/SetAngles_Request value.
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
-- \@see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mycobot_pro450_interfacesSrvSetAngles_Request :: B.ByteString -> Either Word32 Ros2Mycobot_pro450_interfacesSrvSetAngles_Request
decodeRos2Mycobot_pro450_interfacesSrvSetAngles_Request = W.runDecoder 25 readRos2Mycobot_pro450_interfacesSrvSetAngles_Request
instance Canonical Ros2Mycobot_pro450_interfacesSrvSetAngles_Request where
  maximumBytes _ = 25
  encodeValue = encodeRos2Mycobot_pro450_interfacesSrvSetAngles_Request
  readValue = readRos2Mycobot_pro450_interfacesSrvSetAngles_Request
-- | \@brief Complete ROS 2 mycobot_pro450_interfaces/srv/SetAngles_Response value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_28dc59c06324913c1ccbe286ca05b9f47585653a8f086fc5d99a01f6e9ee08b4.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mycobot_pro450_interfacesSrvSetAngles_Response = Ros2Mycobot_pro450_interfacesSrvSetAngles_Response
  {
    -- | \@brief mycobot_pro450_interfaces/srv/SetAngles_Response.flag: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesSrvSetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesSrvSetAngles_Response_flag :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_pro450_interfaces/srv/SetAngles_Response.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mycobot_pro450_interfacesSrvSetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mycobot_pro450_interfacesSrvSetAngles_Response :: Ros2Mycobot_pro450_interfacesSrvSetAngles_Response
defaultRos2Mycobot_pro450_interfacesSrvSetAngles_Response =
  Ros2Mycobot_pro450_interfacesSrvSetAngles_Response
    (False)
-- | \@brief Canonical codec identity of mycobot_pro450_interfaces/srv/SetAngles_Response.
-- \@details Exact identity UWVMROS1_28dc59c06324913c1ccbe286ca05b9f47585653a8f086fc5d99a01f6e9ee08b4
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_pro450_interfacesSrvSetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_pro450_interfacesSrvSetAngles_ResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_pro450_interfaces/srv/SetAngles_Response.
-- \@details Exact identity UWVMROS1_28dc59c06324913c1ccbe286ca05b9f47585653a8f086fc5d99a01f6e9ee08b4
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_pro450_interfacesSrvSetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_pro450_interfacesSrvSetAngles_ResponseCodecIdentity = "UWVMROS1_28dc59c06324913c1ccbe286ca05b9f47585653a8f086fc5d99a01f6e9ee08b4"
-- | \@brief Encode one complete mycobot_pro450_interfaces/srv/SetAngles_Response value.
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
-- \@see Ros2Mycobot_pro450_interfacesSrvSetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mycobot_pro450_interfacesSrvSetAngles_Response :: Ros2Mycobot_pro450_interfacesSrvSetAngles_Response -> Either Word32 B.ByteString
encodeRos2Mycobot_pro450_interfacesSrvSetAngles_Response value = do
  b0 <- W.encodeBool (ros2Mycobot_pro450_interfacesSrvSetAngles_Response_flag value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of mycobot_pro450_interfaces/srv/SetAngles_Response.
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
-- \@see Ros2Mycobot_pro450_interfacesSrvSetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mycobot_pro450_interfacesSrvSetAngles_Response :: W.Decoder Ros2Mycobot_pro450_interfacesSrvSetAngles_Response
readRos2Mycobot_pro450_interfacesSrvSetAngles_Response = do
  a0 <- W.boolean
  let value = Ros2Mycobot_pro450_interfacesSrvSetAngles_Response a0
  case encodeRos2Mycobot_pro450_interfacesSrvSetAngles_Response value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_pro450_interfaces/srv/SetAngles_Response value.
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
-- \@see Ros2Mycobot_pro450_interfacesSrvSetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mycobot_pro450_interfacesSrvSetAngles_Response :: B.ByteString -> Either Word32 Ros2Mycobot_pro450_interfacesSrvSetAngles_Response
decodeRos2Mycobot_pro450_interfacesSrvSetAngles_Response = W.runDecoder 1 readRos2Mycobot_pro450_interfacesSrvSetAngles_Response
instance Canonical Ros2Mycobot_pro450_interfacesSrvSetAngles_Response where
  maximumBytes _ = 1
  encodeValue = encodeRos2Mycobot_pro450_interfacesSrvSetAngles_Response
  readValue = readRos2Mycobot_pro450_interfacesSrvSetAngles_Response
-- | \@brief Complete ROS 2 mycobot_pro450_interfaces/srv/SetCoords_Request value.
-- \@details All 7 declared fields are retained in source order. The canonical representation occupies
-- 25..25 bytes and is identified by
-- UWVMROS1_e0c550200472f77aa582a46a5149c05c95648615a306f254599f820992890c81.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mycobot_pro450_interfacesSrvSetCoords_Request = Ros2Mycobot_pro450_interfacesSrvSetCoords_Request
  {
    -- | \@brief mycobot_pro450_interfaces/srv/SetCoords_Request.x: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesSrvSetCoords_Request_x :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/srv/SetCoords_Request.y: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesSrvSetCoords_Request_y :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/srv/SetCoords_Request.z: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesSrvSetCoords_Request_z :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/srv/SetCoords_Request.rx: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesSrvSetCoords_Request_rx :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/srv/SetCoords_Request.ry: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesSrvSetCoords_Request_ry :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/srv/SetCoords_Request.rz: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesSrvSetCoords_Request_rz :: Float
  ,
    -- | \@brief mycobot_pro450_interfaces/srv/SetCoords_Request.speed: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesSrvSetCoords_Request_speed :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_pro450_interfaces/srv/SetCoords_Request.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mycobot_pro450_interfacesSrvSetCoords_Request :: Ros2Mycobot_pro450_interfacesSrvSetCoords_Request
defaultRos2Mycobot_pro450_interfacesSrvSetCoords_Request =
  Ros2Mycobot_pro450_interfacesSrvSetCoords_Request
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mycobot_pro450_interfaces/srv/SetCoords_Request.
-- \@details Exact identity UWVMROS1_e0c550200472f77aa582a46a5149c05c95648615a306f254599f820992890c81
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_pro450_interfacesSrvSetCoords_RequestCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_pro450_interfaces/srv/SetCoords_Request.
-- \@details Exact identity UWVMROS1_e0c550200472f77aa582a46a5149c05c95648615a306f254599f820992890c81
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_pro450_interfacesSrvSetCoords_RequestCodecIdentity = "UWVMROS1_e0c550200472f77aa582a46a5149c05c95648615a306f254599f820992890c81"
-- | \@brief Encode one complete mycobot_pro450_interfaces/srv/SetCoords_Request value.
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
-- \@see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mycobot_pro450_interfacesSrvSetCoords_Request :: Ros2Mycobot_pro450_interfacesSrvSetCoords_Request -> Either Word32 B.ByteString
encodeRos2Mycobot_pro450_interfacesSrvSetCoords_Request value = do
  b0 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesSrvSetCoords_Request_x value)
  b1 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesSrvSetCoords_Request_y value)
  b2 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesSrvSetCoords_Request_z value)
  b3 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesSrvSetCoords_Request_rx value)
  b4 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesSrvSetCoords_Request_ry value)
  b5 <- W.encodeFloat32 (ros2Mycobot_pro450_interfacesSrvSetCoords_Request_rz value)
  b6 <- W.encodeSigned 1 (fromIntegral (ros2Mycobot_pro450_interfacesSrvSetCoords_Request_speed value))
  W.bounded 25 [b0, b1, b2, b3, b4, b5, b6]
-- | \@brief Read the ordered canonical fields of mycobot_pro450_interfaces/srv/SetCoords_Request.
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
-- \@see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mycobot_pro450_interfacesSrvSetCoords_Request :: W.Decoder Ros2Mycobot_pro450_interfacesSrvSetCoords_Request
readRos2Mycobot_pro450_interfacesSrvSetCoords_Request = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  a6 <- fromIntegral <$> W.signed 1
  let value = Ros2Mycobot_pro450_interfacesSrvSetCoords_Request a0 a1 a2 a3 a4 a5 a6
  case encodeRos2Mycobot_pro450_interfacesSrvSetCoords_Request value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_pro450_interfaces/srv/SetCoords_Request value.
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
-- \@see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mycobot_pro450_interfacesSrvSetCoords_Request :: B.ByteString -> Either Word32 Ros2Mycobot_pro450_interfacesSrvSetCoords_Request
decodeRos2Mycobot_pro450_interfacesSrvSetCoords_Request = W.runDecoder 25 readRos2Mycobot_pro450_interfacesSrvSetCoords_Request
instance Canonical Ros2Mycobot_pro450_interfacesSrvSetCoords_Request where
  maximumBytes _ = 25
  encodeValue = encodeRos2Mycobot_pro450_interfacesSrvSetCoords_Request
  readValue = readRos2Mycobot_pro450_interfacesSrvSetCoords_Request
-- | \@brief Complete ROS 2 mycobot_pro450_interfaces/srv/SetCoords_Response value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_9a5ee934233519095e1b28568490f8d958c319e2544976fae0b7de53a54a3f51.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mycobot_pro450_interfacesSrvSetCoords_Response = Ros2Mycobot_pro450_interfacesSrvSetCoords_Response
  {
    -- | \@brief mycobot_pro450_interfaces/srv/SetCoords_Response.flag: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mycobot_pro450_interfacesSrvSetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mycobot_pro450_interfacesSrvSetCoords_Response_flag :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mycobot_pro450_interfaces/srv/SetCoords_Response.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mycobot_pro450_interfacesSrvSetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mycobot_pro450_interfacesSrvSetCoords_Response :: Ros2Mycobot_pro450_interfacesSrvSetCoords_Response
defaultRos2Mycobot_pro450_interfacesSrvSetCoords_Response =
  Ros2Mycobot_pro450_interfacesSrvSetCoords_Response
    (False)
-- | \@brief Canonical codec identity of mycobot_pro450_interfaces/srv/SetCoords_Response.
-- \@details Exact identity UWVMROS1_9a5ee934233519095e1b28568490f8d958c319e2544976fae0b7de53a54a3f51
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_pro450_interfacesSrvSetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_pro450_interfacesSrvSetCoords_ResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of mycobot_pro450_interfaces/srv/SetCoords_Response.
-- \@details Exact identity UWVMROS1_9a5ee934233519095e1b28568490f8d958c319e2544976fae0b7de53a54a3f51
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mycobot_pro450_interfacesSrvSetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mycobot_pro450_interfacesSrvSetCoords_ResponseCodecIdentity = "UWVMROS1_9a5ee934233519095e1b28568490f8d958c319e2544976fae0b7de53a54a3f51"
-- | \@brief Encode one complete mycobot_pro450_interfaces/srv/SetCoords_Response value.
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
-- \@see Ros2Mycobot_pro450_interfacesSrvSetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mycobot_pro450_interfacesSrvSetCoords_Response :: Ros2Mycobot_pro450_interfacesSrvSetCoords_Response -> Either Word32 B.ByteString
encodeRos2Mycobot_pro450_interfacesSrvSetCoords_Response value = do
  b0 <- W.encodeBool (ros2Mycobot_pro450_interfacesSrvSetCoords_Response_flag value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of mycobot_pro450_interfaces/srv/SetCoords_Response.
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
-- \@see Ros2Mycobot_pro450_interfacesSrvSetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mycobot_pro450_interfacesSrvSetCoords_Response :: W.Decoder Ros2Mycobot_pro450_interfacesSrvSetCoords_Response
readRos2Mycobot_pro450_interfacesSrvSetCoords_Response = do
  a0 <- W.boolean
  let value = Ros2Mycobot_pro450_interfacesSrvSetCoords_Response a0
  case encodeRos2Mycobot_pro450_interfacesSrvSetCoords_Response value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mycobot_pro450_interfaces/srv/SetCoords_Response value.
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
-- \@see Ros2Mycobot_pro450_interfacesSrvSetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mycobot_pro450_interfacesSrvSetCoords_Response :: B.ByteString -> Either Word32 Ros2Mycobot_pro450_interfacesSrvSetCoords_Response
decodeRos2Mycobot_pro450_interfacesSrvSetCoords_Response = W.runDecoder 1 readRos2Mycobot_pro450_interfacesSrvSetCoords_Response
instance Canonical Ros2Mycobot_pro450_interfacesSrvSetCoords_Response where
  maximumBytes _ = 1
  encodeValue = encodeRos2Mycobot_pro450_interfacesSrvSetCoords_Response
  readValue = readRos2Mycobot_pro450_interfacesSrvSetCoords_Response
-- | \@brief Complete ROS 2 mypalletizer_interfaces/msg/MypalAngles value.
-- \@details All 4 declared fields are retained in source order. The canonical representation occupies
-- 16..16 bytes and is identified by
-- UWVMROS1_0a2dc324515448310b0f026fb26c6c5c6da452e5e7067096e315abe3ab86a35d.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mypalletizer_interfacesMsgMypalAngles = Ros2Mypalletizer_interfacesMsgMypalAngles
  {
    -- | \@brief mypalletizer_interfaces/msg/MypalAngles.joint_1: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesMsgMypalAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesMsgMypalAngles_joint_1 :: Float
  ,
    -- | \@brief mypalletizer_interfaces/msg/MypalAngles.joint_2: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesMsgMypalAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesMsgMypalAngles_joint_2 :: Float
  ,
    -- | \@brief mypalletizer_interfaces/msg/MypalAngles.joint_3: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesMsgMypalAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesMsgMypalAngles_joint_3 :: Float
  ,
    -- | \@brief mypalletizer_interfaces/msg/MypalAngles.joint_4: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesMsgMypalAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesMsgMypalAngles_joint_4 :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mypalletizer_interfaces/msg/MypalAngles.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mypalletizer_interfacesMsgMypalAngles; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mypalletizer_interfacesMsgMypalAngles :: Ros2Mypalletizer_interfacesMsgMypalAngles
defaultRos2Mypalletizer_interfacesMsgMypalAngles = Ros2Mypalletizer_interfacesMsgMypalAngles (0) (0) (0) (0)
-- | \@brief Canonical codec identity of mypalletizer_interfaces/msg/MypalAngles.
-- \@details Exact identity UWVMROS1_0a2dc324515448310b0f026fb26c6c5c6da452e5e7067096e315abe3ab86a35d
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mypalletizer_interfacesMsgMypalAngles; share/platform/ros/haskell/API-CONTRACT.md
ros2Mypalletizer_interfacesMsgMypalAnglesCodecIdentity :: String
-- | \@brief Canonical codec identity of mypalletizer_interfaces/msg/MypalAngles.
-- \@details Exact identity UWVMROS1_0a2dc324515448310b0f026fb26c6c5c6da452e5e7067096e315abe3ab86a35d
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mypalletizer_interfacesMsgMypalAngles; share/platform/ros/haskell/API-CONTRACT.md
ros2Mypalletizer_interfacesMsgMypalAnglesCodecIdentity = "UWVMROS1_0a2dc324515448310b0f026fb26c6c5c6da452e5e7067096e315abe3ab86a35d"
-- | \@brief Encode one complete mypalletizer_interfaces/msg/MypalAngles value.
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
-- \@see Ros2Mypalletizer_interfacesMsgMypalAngles; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mypalletizer_interfacesMsgMypalAngles :: Ros2Mypalletizer_interfacesMsgMypalAngles -> Either Word32 B.ByteString
encodeRos2Mypalletizer_interfacesMsgMypalAngles value = do
  b0 <- W.encodeFloat32 (ros2Mypalletizer_interfacesMsgMypalAngles_joint_1 value)
  b1 <- W.encodeFloat32 (ros2Mypalletizer_interfacesMsgMypalAngles_joint_2 value)
  b2 <- W.encodeFloat32 (ros2Mypalletizer_interfacesMsgMypalAngles_joint_3 value)
  b3 <- W.encodeFloat32 (ros2Mypalletizer_interfacesMsgMypalAngles_joint_4 value)
  W.bounded 16 [b0, b1, b2, b3]
-- | \@brief Read the ordered canonical fields of mypalletizer_interfaces/msg/MypalAngles.
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
-- \@see Ros2Mypalletizer_interfacesMsgMypalAngles; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mypalletizer_interfacesMsgMypalAngles :: W.Decoder Ros2Mypalletizer_interfacesMsgMypalAngles
readRos2Mypalletizer_interfacesMsgMypalAngles = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  let value = Ros2Mypalletizer_interfacesMsgMypalAngles a0 a1 a2 a3
  case encodeRos2Mypalletizer_interfacesMsgMypalAngles value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mypalletizer_interfaces/msg/MypalAngles value.
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
-- \@see Ros2Mypalletizer_interfacesMsgMypalAngles; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mypalletizer_interfacesMsgMypalAngles :: B.ByteString -> Either Word32 Ros2Mypalletizer_interfacesMsgMypalAngles
decodeRos2Mypalletizer_interfacesMsgMypalAngles = W.runDecoder 16 readRos2Mypalletizer_interfacesMsgMypalAngles
instance Canonical Ros2Mypalletizer_interfacesMsgMypalAngles where
  maximumBytes _ = 16
  encodeValue = encodeRos2Mypalletizer_interfacesMsgMypalAngles
  readValue = readRos2Mypalletizer_interfacesMsgMypalAngles
-- | \@brief Complete ROS 2 mypalletizer_interfaces/msg/MypalCoords value.
-- \@details All 4 declared fields are retained in source order. The canonical representation occupies
-- 16..16 bytes and is identified by
-- UWVMROS1_839491548a07528380403fa31c89889ce82f28b2f82e6fd9474835659714b4f7.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mypalletizer_interfacesMsgMypalCoords = Ros2Mypalletizer_interfacesMsgMypalCoords
  {
    -- | \@brief mypalletizer_interfaces/msg/MypalCoords.x: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesMsgMypalCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesMsgMypalCoords_x :: Float
  ,
    -- | \@brief mypalletizer_interfaces/msg/MypalCoords.y: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesMsgMypalCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesMsgMypalCoords_y :: Float
  ,
    -- | \@brief mypalletizer_interfaces/msg/MypalCoords.z: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesMsgMypalCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesMsgMypalCoords_z :: Float
  ,
    -- | \@brief mypalletizer_interfaces/msg/MypalCoords.rx: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesMsgMypalCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesMsgMypalCoords_rx :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mypalletizer_interfaces/msg/MypalCoords.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mypalletizer_interfacesMsgMypalCoords; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mypalletizer_interfacesMsgMypalCoords :: Ros2Mypalletizer_interfacesMsgMypalCoords
defaultRos2Mypalletizer_interfacesMsgMypalCoords = Ros2Mypalletizer_interfacesMsgMypalCoords (0) (0) (0) (0)
-- | \@brief Canonical codec identity of mypalletizer_interfaces/msg/MypalCoords.
-- \@details Exact identity UWVMROS1_839491548a07528380403fa31c89889ce82f28b2f82e6fd9474835659714b4f7
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mypalletizer_interfacesMsgMypalCoords; share/platform/ros/haskell/API-CONTRACT.md
ros2Mypalletizer_interfacesMsgMypalCoordsCodecIdentity :: String
-- | \@brief Canonical codec identity of mypalletizer_interfaces/msg/MypalCoords.
-- \@details Exact identity UWVMROS1_839491548a07528380403fa31c89889ce82f28b2f82e6fd9474835659714b4f7
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mypalletizer_interfacesMsgMypalCoords; share/platform/ros/haskell/API-CONTRACT.md
ros2Mypalletizer_interfacesMsgMypalCoordsCodecIdentity = "UWVMROS1_839491548a07528380403fa31c89889ce82f28b2f82e6fd9474835659714b4f7"
-- | \@brief Encode one complete mypalletizer_interfaces/msg/MypalCoords value.
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
-- \@see Ros2Mypalletizer_interfacesMsgMypalCoords; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mypalletizer_interfacesMsgMypalCoords :: Ros2Mypalletizer_interfacesMsgMypalCoords -> Either Word32 B.ByteString
encodeRos2Mypalletizer_interfacesMsgMypalCoords value = do
  b0 <- W.encodeFloat32 (ros2Mypalletizer_interfacesMsgMypalCoords_x value)
  b1 <- W.encodeFloat32 (ros2Mypalletizer_interfacesMsgMypalCoords_y value)
  b2 <- W.encodeFloat32 (ros2Mypalletizer_interfacesMsgMypalCoords_z value)
  b3 <- W.encodeFloat32 (ros2Mypalletizer_interfacesMsgMypalCoords_rx value)
  W.bounded 16 [b0, b1, b2, b3]
-- | \@brief Read the ordered canonical fields of mypalletizer_interfaces/msg/MypalCoords.
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
-- \@see Ros2Mypalletizer_interfacesMsgMypalCoords; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mypalletizer_interfacesMsgMypalCoords :: W.Decoder Ros2Mypalletizer_interfacesMsgMypalCoords
readRos2Mypalletizer_interfacesMsgMypalCoords = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  let value = Ros2Mypalletizer_interfacesMsgMypalCoords a0 a1 a2 a3
  case encodeRos2Mypalletizer_interfacesMsgMypalCoords value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mypalletizer_interfaces/msg/MypalCoords value.
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
-- \@see Ros2Mypalletizer_interfacesMsgMypalCoords; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mypalletizer_interfacesMsgMypalCoords :: B.ByteString -> Either Word32 Ros2Mypalletizer_interfacesMsgMypalCoords
decodeRos2Mypalletizer_interfacesMsgMypalCoords = W.runDecoder 16 readRos2Mypalletizer_interfacesMsgMypalCoords
instance Canonical Ros2Mypalletizer_interfacesMsgMypalCoords where
  maximumBytes _ = 16
  encodeValue = encodeRos2Mypalletizer_interfacesMsgMypalCoords
  readValue = readRos2Mypalletizer_interfacesMsgMypalCoords
-- | \@brief Complete ROS 2 mypalletizer_interfaces/msg/MypalGripperStatus value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_f6e4ad6193272d6401bbbfcc20c0f38b6a147a81d9de1ad956d7c154f29daeb0.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mypalletizer_interfacesMsgMypalGripperStatus = Ros2Mypalletizer_interfacesMsgMypalGripperStatus
  {
    -- | \@brief mypalletizer_interfaces/msg/MypalGripperStatus.status: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesMsgMypalGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesMsgMypalGripperStatus_status :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mypalletizer_interfaces/msg/MypalGripperStatus.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mypalletizer_interfacesMsgMypalGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mypalletizer_interfacesMsgMypalGripperStatus :: Ros2Mypalletizer_interfacesMsgMypalGripperStatus
defaultRos2Mypalletizer_interfacesMsgMypalGripperStatus =
  Ros2Mypalletizer_interfacesMsgMypalGripperStatus
    (False)
-- | \@brief Canonical codec identity of mypalletizer_interfaces/msg/MypalGripperStatus.
-- \@details Exact identity UWVMROS1_f6e4ad6193272d6401bbbfcc20c0f38b6a147a81d9de1ad956d7c154f29daeb0
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mypalletizer_interfacesMsgMypalGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Mypalletizer_interfacesMsgMypalGripperStatusCodecIdentity :: String
-- | \@brief Canonical codec identity of mypalletizer_interfaces/msg/MypalGripperStatus.
-- \@details Exact identity UWVMROS1_f6e4ad6193272d6401bbbfcc20c0f38b6a147a81d9de1ad956d7c154f29daeb0
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mypalletizer_interfacesMsgMypalGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Mypalletizer_interfacesMsgMypalGripperStatusCodecIdentity = "UWVMROS1_f6e4ad6193272d6401bbbfcc20c0f38b6a147a81d9de1ad956d7c154f29daeb0"
-- | \@brief Encode one complete mypalletizer_interfaces/msg/MypalGripperStatus value.
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
-- \@see Ros2Mypalletizer_interfacesMsgMypalGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mypalletizer_interfacesMsgMypalGripperStatus :: Ros2Mypalletizer_interfacesMsgMypalGripperStatus -> Either Word32 B.ByteString
encodeRos2Mypalletizer_interfacesMsgMypalGripperStatus value = do
  b0 <- W.encodeBool (ros2Mypalletizer_interfacesMsgMypalGripperStatus_status value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of mypalletizer_interfaces/msg/MypalGripperStatus.
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
-- \@see Ros2Mypalletizer_interfacesMsgMypalGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mypalletizer_interfacesMsgMypalGripperStatus :: W.Decoder Ros2Mypalletizer_interfacesMsgMypalGripperStatus
readRos2Mypalletizer_interfacesMsgMypalGripperStatus = do
  a0 <- W.boolean
  let value = Ros2Mypalletizer_interfacesMsgMypalGripperStatus a0
  case encodeRos2Mypalletizer_interfacesMsgMypalGripperStatus value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mypalletizer_interfaces/msg/MypalGripperStatus value.
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
-- \@see Ros2Mypalletizer_interfacesMsgMypalGripperStatus; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mypalletizer_interfacesMsgMypalGripperStatus :: B.ByteString -> Either Word32 Ros2Mypalletizer_interfacesMsgMypalGripperStatus
decodeRos2Mypalletizer_interfacesMsgMypalGripperStatus = W.runDecoder 1 readRos2Mypalletizer_interfacesMsgMypalGripperStatus
instance Canonical Ros2Mypalletizer_interfacesMsgMypalGripperStatus where
  maximumBytes _ = 1
  encodeValue = encodeRos2Mypalletizer_interfacesMsgMypalGripperStatus
  readValue = readRos2Mypalletizer_interfacesMsgMypalGripperStatus
-- | \@brief Complete ROS 2 mypalletizer_interfaces/msg/MypalPumpStatus value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies
-- 3..3 bytes and is identified by
-- UWVMROS1_008dfd13cad42029330909fb7dc68392ba7f6678ad1baa14a41aad1e759f523c.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mypalletizer_interfacesMsgMypalPumpStatus = Ros2Mypalletizer_interfacesMsgMypalPumpStatus
  {
    -- | \@brief mypalletizer_interfaces/msg/MypalPumpStatus.status: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesMsgMypalPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesMsgMypalPumpStatus_status :: Bool
  ,
    -- | \@brief mypalletizer_interfaces/msg/MypalPumpStatus.pin1: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesMsgMypalPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesMsgMypalPumpStatus_pin1 :: Int8
  ,
    -- | \@brief mypalletizer_interfaces/msg/MypalPumpStatus.pin2: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesMsgMypalPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesMsgMypalPumpStatus_pin2 :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mypalletizer_interfaces/msg/MypalPumpStatus.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mypalletizer_interfacesMsgMypalPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mypalletizer_interfacesMsgMypalPumpStatus :: Ros2Mypalletizer_interfacesMsgMypalPumpStatus
defaultRos2Mypalletizer_interfacesMsgMypalPumpStatus =
  Ros2Mypalletizer_interfacesMsgMypalPumpStatus
    (False)
    (0)
    (0)
-- | \@brief Canonical codec identity of mypalletizer_interfaces/msg/MypalPumpStatus.
-- \@details Exact identity UWVMROS1_008dfd13cad42029330909fb7dc68392ba7f6678ad1baa14a41aad1e759f523c
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mypalletizer_interfacesMsgMypalPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Mypalletizer_interfacesMsgMypalPumpStatusCodecIdentity :: String
-- | \@brief Canonical codec identity of mypalletizer_interfaces/msg/MypalPumpStatus.
-- \@details Exact identity UWVMROS1_008dfd13cad42029330909fb7dc68392ba7f6678ad1baa14a41aad1e759f523c
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mypalletizer_interfacesMsgMypalPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
ros2Mypalletizer_interfacesMsgMypalPumpStatusCodecIdentity = "UWVMROS1_008dfd13cad42029330909fb7dc68392ba7f6678ad1baa14a41aad1e759f523c"
-- | \@brief Encode one complete mypalletizer_interfaces/msg/MypalPumpStatus value.
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
-- \@see Ros2Mypalletizer_interfacesMsgMypalPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mypalletizer_interfacesMsgMypalPumpStatus :: Ros2Mypalletizer_interfacesMsgMypalPumpStatus -> Either Word32 B.ByteString
encodeRos2Mypalletizer_interfacesMsgMypalPumpStatus value = do
  b0 <- W.encodeBool (ros2Mypalletizer_interfacesMsgMypalPumpStatus_status value)
  b1 <- W.encodeSigned 1 (fromIntegral (ros2Mypalletizer_interfacesMsgMypalPumpStatus_pin1 value))
  b2 <- W.encodeSigned 1 (fromIntegral (ros2Mypalletizer_interfacesMsgMypalPumpStatus_pin2 value))
  W.bounded 3 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of mypalletizer_interfaces/msg/MypalPumpStatus.
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
-- \@see Ros2Mypalletizer_interfacesMsgMypalPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mypalletizer_interfacesMsgMypalPumpStatus :: W.Decoder Ros2Mypalletizer_interfacesMsgMypalPumpStatus
readRos2Mypalletizer_interfacesMsgMypalPumpStatus = do
  a0 <- W.boolean
  a1 <- fromIntegral <$> W.signed 1
  a2 <- fromIntegral <$> W.signed 1
  let value = Ros2Mypalletizer_interfacesMsgMypalPumpStatus a0 a1 a2
  case encodeRos2Mypalletizer_interfacesMsgMypalPumpStatus value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mypalletizer_interfaces/msg/MypalPumpStatus value.
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
-- \@see Ros2Mypalletizer_interfacesMsgMypalPumpStatus; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mypalletizer_interfacesMsgMypalPumpStatus :: B.ByteString -> Either Word32 Ros2Mypalletizer_interfacesMsgMypalPumpStatus
decodeRos2Mypalletizer_interfacesMsgMypalPumpStatus = W.runDecoder 3 readRos2Mypalletizer_interfacesMsgMypalPumpStatus
instance Canonical Ros2Mypalletizer_interfacesMsgMypalPumpStatus where
  maximumBytes _ = 3
  encodeValue = encodeRos2Mypalletizer_interfacesMsgMypalPumpStatus
  readValue = readRos2Mypalletizer_interfacesMsgMypalPumpStatus
-- | \@brief Complete ROS 2 mypalletizer_interfaces/msg/MypalSetAngles value.
-- \@details All 5 declared fields are retained in source order. The canonical representation occupies
-- 17..17 bytes and is identified by
-- UWVMROS1_b9fdd6ac956fdeb4934ff41982e616f7c0c45b11169b6d60ba74fbcc61458bb5.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mypalletizer_interfacesMsgMypalSetAngles = Ros2Mypalletizer_interfacesMsgMypalSetAngles
  {
    -- | \@brief mypalletizer_interfaces/msg/MypalSetAngles.joint_1: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesMsgMypalSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesMsgMypalSetAngles_joint_1 :: Float
  ,
    -- | \@brief mypalletizer_interfaces/msg/MypalSetAngles.joint_2: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesMsgMypalSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesMsgMypalSetAngles_joint_2 :: Float
  ,
    -- | \@brief mypalletizer_interfaces/msg/MypalSetAngles.joint_3: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesMsgMypalSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesMsgMypalSetAngles_joint_3 :: Float
  ,
    -- | \@brief mypalletizer_interfaces/msg/MypalSetAngles.joint_4: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesMsgMypalSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesMsgMypalSetAngles_joint_4 :: Float
  ,
    -- | \@brief mypalletizer_interfaces/msg/MypalSetAngles.speed: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesMsgMypalSetAngles; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesMsgMypalSetAngles_speed :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mypalletizer_interfaces/msg/MypalSetAngles.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mypalletizer_interfacesMsgMypalSetAngles; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mypalletizer_interfacesMsgMypalSetAngles :: Ros2Mypalletizer_interfacesMsgMypalSetAngles
defaultRos2Mypalletizer_interfacesMsgMypalSetAngles =
  Ros2Mypalletizer_interfacesMsgMypalSetAngles
    (0)
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mypalletizer_interfaces/msg/MypalSetAngles.
-- \@details Exact identity UWVMROS1_b9fdd6ac956fdeb4934ff41982e616f7c0c45b11169b6d60ba74fbcc61458bb5
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mypalletizer_interfacesMsgMypalSetAngles; share/platform/ros/haskell/API-CONTRACT.md
ros2Mypalletizer_interfacesMsgMypalSetAnglesCodecIdentity :: String
-- | \@brief Canonical codec identity of mypalletizer_interfaces/msg/MypalSetAngles.
-- \@details Exact identity UWVMROS1_b9fdd6ac956fdeb4934ff41982e616f7c0c45b11169b6d60ba74fbcc61458bb5
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mypalletizer_interfacesMsgMypalSetAngles; share/platform/ros/haskell/API-CONTRACT.md
ros2Mypalletizer_interfacesMsgMypalSetAnglesCodecIdentity = "UWVMROS1_b9fdd6ac956fdeb4934ff41982e616f7c0c45b11169b6d60ba74fbcc61458bb5"
-- | \@brief Encode one complete mypalletizer_interfaces/msg/MypalSetAngles value.
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
-- \@see Ros2Mypalletizer_interfacesMsgMypalSetAngles; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mypalletizer_interfacesMsgMypalSetAngles :: Ros2Mypalletizer_interfacesMsgMypalSetAngles -> Either Word32 B.ByteString
encodeRos2Mypalletizer_interfacesMsgMypalSetAngles value = do
  b0 <- W.encodeFloat32 (ros2Mypalletizer_interfacesMsgMypalSetAngles_joint_1 value)
  b1 <- W.encodeFloat32 (ros2Mypalletizer_interfacesMsgMypalSetAngles_joint_2 value)
  b2 <- W.encodeFloat32 (ros2Mypalletizer_interfacesMsgMypalSetAngles_joint_3 value)
  b3 <- W.encodeFloat32 (ros2Mypalletizer_interfacesMsgMypalSetAngles_joint_4 value)
  b4 <- W.encodeSigned 1 (fromIntegral (ros2Mypalletizer_interfacesMsgMypalSetAngles_speed value))
  W.bounded 17 [b0, b1, b2, b3, b4]
-- | \@brief Read the ordered canonical fields of mypalletizer_interfaces/msg/MypalSetAngles.
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
-- \@see Ros2Mypalletizer_interfacesMsgMypalSetAngles; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mypalletizer_interfacesMsgMypalSetAngles :: W.Decoder Ros2Mypalletizer_interfacesMsgMypalSetAngles
readRos2Mypalletizer_interfacesMsgMypalSetAngles = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- fromIntegral <$> W.signed 1
  let value = Ros2Mypalletizer_interfacesMsgMypalSetAngles a0 a1 a2 a3 a4
  case encodeRos2Mypalletizer_interfacesMsgMypalSetAngles value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mypalletizer_interfaces/msg/MypalSetAngles value.
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
-- \@see Ros2Mypalletizer_interfacesMsgMypalSetAngles; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mypalletizer_interfacesMsgMypalSetAngles :: B.ByteString -> Either Word32 Ros2Mypalletizer_interfacesMsgMypalSetAngles
decodeRos2Mypalletizer_interfacesMsgMypalSetAngles = W.runDecoder 17 readRos2Mypalletizer_interfacesMsgMypalSetAngles
instance Canonical Ros2Mypalletizer_interfacesMsgMypalSetAngles where
  maximumBytes _ = 17
  encodeValue = encodeRos2Mypalletizer_interfacesMsgMypalSetAngles
  readValue = readRos2Mypalletizer_interfacesMsgMypalSetAngles
-- | \@brief Complete ROS 2 mypalletizer_interfaces/msg/MypalSetCoords value.
-- \@details All 5 declared fields are retained in source order. The canonical representation occupies
-- 17..17 bytes and is identified by
-- UWVMROS1_0c1b65f543cdd239a5a56a7839ac607c5310cd4145ef6a6da5639a9af8ba4c79.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mypalletizer_interfacesMsgMypalSetCoords = Ros2Mypalletizer_interfacesMsgMypalSetCoords
  {
    -- | \@brief mypalletizer_interfaces/msg/MypalSetCoords.x: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesMsgMypalSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesMsgMypalSetCoords_x :: Float
  ,
    -- | \@brief mypalletizer_interfaces/msg/MypalSetCoords.y: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesMsgMypalSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesMsgMypalSetCoords_y :: Float
  ,
    -- | \@brief mypalletizer_interfaces/msg/MypalSetCoords.z: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesMsgMypalSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesMsgMypalSetCoords_z :: Float
  ,
    -- | \@brief mypalletizer_interfaces/msg/MypalSetCoords.rx: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesMsgMypalSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesMsgMypalSetCoords_rx :: Float
  ,
    -- | \@brief mypalletizer_interfaces/msg/MypalSetCoords.speed: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesMsgMypalSetCoords; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesMsgMypalSetCoords_speed :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mypalletizer_interfaces/msg/MypalSetCoords.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mypalletizer_interfacesMsgMypalSetCoords; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mypalletizer_interfacesMsgMypalSetCoords :: Ros2Mypalletizer_interfacesMsgMypalSetCoords
defaultRos2Mypalletizer_interfacesMsgMypalSetCoords =
  Ros2Mypalletizer_interfacesMsgMypalSetCoords
    (0)
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mypalletizer_interfaces/msg/MypalSetCoords.
-- \@details Exact identity UWVMROS1_0c1b65f543cdd239a5a56a7839ac607c5310cd4145ef6a6da5639a9af8ba4c79
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mypalletizer_interfacesMsgMypalSetCoords; share/platform/ros/haskell/API-CONTRACT.md
ros2Mypalletizer_interfacesMsgMypalSetCoordsCodecIdentity :: String
-- | \@brief Canonical codec identity of mypalletizer_interfaces/msg/MypalSetCoords.
-- \@details Exact identity UWVMROS1_0c1b65f543cdd239a5a56a7839ac607c5310cd4145ef6a6da5639a9af8ba4c79
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mypalletizer_interfacesMsgMypalSetCoords; share/platform/ros/haskell/API-CONTRACT.md
ros2Mypalletizer_interfacesMsgMypalSetCoordsCodecIdentity = "UWVMROS1_0c1b65f543cdd239a5a56a7839ac607c5310cd4145ef6a6da5639a9af8ba4c79"
-- | \@brief Encode one complete mypalletizer_interfaces/msg/MypalSetCoords value.
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
-- \@see Ros2Mypalletizer_interfacesMsgMypalSetCoords; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mypalletizer_interfacesMsgMypalSetCoords :: Ros2Mypalletizer_interfacesMsgMypalSetCoords -> Either Word32 B.ByteString
encodeRos2Mypalletizer_interfacesMsgMypalSetCoords value = do
  b0 <- W.encodeFloat32 (ros2Mypalletizer_interfacesMsgMypalSetCoords_x value)
  b1 <- W.encodeFloat32 (ros2Mypalletizer_interfacesMsgMypalSetCoords_y value)
  b2 <- W.encodeFloat32 (ros2Mypalletizer_interfacesMsgMypalSetCoords_z value)
  b3 <- W.encodeFloat32 (ros2Mypalletizer_interfacesMsgMypalSetCoords_rx value)
  b4 <- W.encodeSigned 1 (fromIntegral (ros2Mypalletizer_interfacesMsgMypalSetCoords_speed value))
  W.bounded 17 [b0, b1, b2, b3, b4]
-- | \@brief Read the ordered canonical fields of mypalletizer_interfaces/msg/MypalSetCoords.
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
-- \@see Ros2Mypalletizer_interfacesMsgMypalSetCoords; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mypalletizer_interfacesMsgMypalSetCoords :: W.Decoder Ros2Mypalletizer_interfacesMsgMypalSetCoords
readRos2Mypalletizer_interfacesMsgMypalSetCoords = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- fromIntegral <$> W.signed 1
  let value = Ros2Mypalletizer_interfacesMsgMypalSetCoords a0 a1 a2 a3 a4
  case encodeRos2Mypalletizer_interfacesMsgMypalSetCoords value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mypalletizer_interfaces/msg/MypalSetCoords value.
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
-- \@see Ros2Mypalletizer_interfacesMsgMypalSetCoords; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mypalletizer_interfacesMsgMypalSetCoords :: B.ByteString -> Either Word32 Ros2Mypalletizer_interfacesMsgMypalSetCoords
decodeRos2Mypalletizer_interfacesMsgMypalSetCoords = W.runDecoder 17 readRos2Mypalletizer_interfacesMsgMypalSetCoords
instance Canonical Ros2Mypalletizer_interfacesMsgMypalSetCoords where
  maximumBytes _ = 17
  encodeValue = encodeRos2Mypalletizer_interfacesMsgMypalSetCoords
  readValue = readRos2Mypalletizer_interfacesMsgMypalSetCoords
-- | \@brief Complete ROS 2 mypalletizer_interfaces/srv/GetAngles_Request value.
-- \@details All 0 declared fields are retained in source order. The canonical representation occupies
-- 0..0 bytes and is identified by
-- UWVMROS1_c8124a1063d47b24dae2e279f51d4e48ebf9936a5e305b81b53387a4be344f78.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mypalletizer_interfacesSrvGetAngles_Request = Ros2Mypalletizer_interfacesSrvGetAngles_Request deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mypalletizer_interfaces/srv/GetAngles_Request.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mypalletizer_interfacesSrvGetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mypalletizer_interfacesSrvGetAngles_Request :: Ros2Mypalletizer_interfacesSrvGetAngles_Request
defaultRos2Mypalletizer_interfacesSrvGetAngles_Request = Ros2Mypalletizer_interfacesSrvGetAngles_Request 
-- | \@brief Canonical codec identity of mypalletizer_interfaces/srv/GetAngles_Request.
-- \@details Exact identity UWVMROS1_c8124a1063d47b24dae2e279f51d4e48ebf9936a5e305b81b53387a4be344f78
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mypalletizer_interfacesSrvGetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mypalletizer_interfacesSrvGetAngles_RequestCodecIdentity :: String
-- | \@brief Canonical codec identity of mypalletizer_interfaces/srv/GetAngles_Request.
-- \@details Exact identity UWVMROS1_c8124a1063d47b24dae2e279f51d4e48ebf9936a5e305b81b53387a4be344f78
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mypalletizer_interfacesSrvGetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mypalletizer_interfacesSrvGetAngles_RequestCodecIdentity = "UWVMROS1_c8124a1063d47b24dae2e279f51d4e48ebf9936a5e305b81b53387a4be344f78"
-- | \@brief Encode one complete mypalletizer_interfaces/srv/GetAngles_Request value.
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
-- \@see Ros2Mypalletizer_interfacesSrvGetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mypalletizer_interfacesSrvGetAngles_Request :: Ros2Mypalletizer_interfacesSrvGetAngles_Request -> Either Word32 B.ByteString
encodeRos2Mypalletizer_interfacesSrvGetAngles_Request value = do
  W.bounded 0 []
-- | \@brief Read the ordered canonical fields of mypalletizer_interfaces/srv/GetAngles_Request.
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
-- \@see Ros2Mypalletizer_interfacesSrvGetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mypalletizer_interfacesSrvGetAngles_Request :: W.Decoder Ros2Mypalletizer_interfacesSrvGetAngles_Request
readRos2Mypalletizer_interfacesSrvGetAngles_Request = do
  let value = Ros2Mypalletizer_interfacesSrvGetAngles_Request 
  case encodeRos2Mypalletizer_interfacesSrvGetAngles_Request value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mypalletizer_interfaces/srv/GetAngles_Request value.
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
-- \@see Ros2Mypalletizer_interfacesSrvGetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mypalletizer_interfacesSrvGetAngles_Request :: B.ByteString -> Either Word32 Ros2Mypalletizer_interfacesSrvGetAngles_Request
decodeRos2Mypalletizer_interfacesSrvGetAngles_Request = W.runDecoder 0 readRos2Mypalletizer_interfacesSrvGetAngles_Request
instance Canonical Ros2Mypalletizer_interfacesSrvGetAngles_Request where
  maximumBytes _ = 0
  encodeValue = encodeRos2Mypalletizer_interfacesSrvGetAngles_Request
  readValue = readRos2Mypalletizer_interfacesSrvGetAngles_Request
-- | \@brief Complete ROS 2 mypalletizer_interfaces/srv/GetAngles_Response value.
-- \@details All 4 declared fields are retained in source order. The canonical representation occupies
-- 16..16 bytes and is identified by
-- UWVMROS1_33812a320c14891a5bc76a86ccbb0a5507cfbcc3706e01bc304263edabc6f75d.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mypalletizer_interfacesSrvGetAngles_Response = Ros2Mypalletizer_interfacesSrvGetAngles_Response
  {
    -- | \@brief mypalletizer_interfaces/srv/GetAngles_Response.joint_1: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesSrvGetAngles_Response_joint_1 :: Float
  ,
    -- | \@brief mypalletizer_interfaces/srv/GetAngles_Response.joint_2: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesSrvGetAngles_Response_joint_2 :: Float
  ,
    -- | \@brief mypalletizer_interfaces/srv/GetAngles_Response.joint_3: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesSrvGetAngles_Response_joint_3 :: Float
  ,
    -- | \@brief mypalletizer_interfaces/srv/GetAngles_Response.joint_4: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesSrvGetAngles_Response_joint_4 :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mypalletizer_interfaces/srv/GetAngles_Response.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mypalletizer_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mypalletizer_interfacesSrvGetAngles_Response :: Ros2Mypalletizer_interfacesSrvGetAngles_Response
defaultRos2Mypalletizer_interfacesSrvGetAngles_Response =
  Ros2Mypalletizer_interfacesSrvGetAngles_Response
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mypalletizer_interfaces/srv/GetAngles_Response.
-- \@details Exact identity UWVMROS1_33812a320c14891a5bc76a86ccbb0a5507cfbcc3706e01bc304263edabc6f75d
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mypalletizer_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mypalletizer_interfacesSrvGetAngles_ResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of mypalletizer_interfaces/srv/GetAngles_Response.
-- \@details Exact identity UWVMROS1_33812a320c14891a5bc76a86ccbb0a5507cfbcc3706e01bc304263edabc6f75d
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mypalletizer_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mypalletizer_interfacesSrvGetAngles_ResponseCodecIdentity = "UWVMROS1_33812a320c14891a5bc76a86ccbb0a5507cfbcc3706e01bc304263edabc6f75d"
-- | \@brief Encode one complete mypalletizer_interfaces/srv/GetAngles_Response value.
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
-- \@see Ros2Mypalletizer_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mypalletizer_interfacesSrvGetAngles_Response :: Ros2Mypalletizer_interfacesSrvGetAngles_Response -> Either Word32 B.ByteString
encodeRos2Mypalletizer_interfacesSrvGetAngles_Response value = do
  b0 <- W.encodeFloat32 (ros2Mypalletizer_interfacesSrvGetAngles_Response_joint_1 value)
  b1 <- W.encodeFloat32 (ros2Mypalletizer_interfacesSrvGetAngles_Response_joint_2 value)
  b2 <- W.encodeFloat32 (ros2Mypalletizer_interfacesSrvGetAngles_Response_joint_3 value)
  b3 <- W.encodeFloat32 (ros2Mypalletizer_interfacesSrvGetAngles_Response_joint_4 value)
  W.bounded 16 [b0, b1, b2, b3]
-- | \@brief Read the ordered canonical fields of mypalletizer_interfaces/srv/GetAngles_Response.
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
-- \@see Ros2Mypalletizer_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mypalletizer_interfacesSrvGetAngles_Response :: W.Decoder Ros2Mypalletizer_interfacesSrvGetAngles_Response
readRos2Mypalletizer_interfacesSrvGetAngles_Response = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  let value = Ros2Mypalletizer_interfacesSrvGetAngles_Response a0 a1 a2 a3
  case encodeRos2Mypalletizer_interfacesSrvGetAngles_Response value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mypalletizer_interfaces/srv/GetAngles_Response value.
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
-- \@see Ros2Mypalletizer_interfacesSrvGetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mypalletizer_interfacesSrvGetAngles_Response :: B.ByteString -> Either Word32 Ros2Mypalletizer_interfacesSrvGetAngles_Response
decodeRos2Mypalletizer_interfacesSrvGetAngles_Response = W.runDecoder 16 readRos2Mypalletizer_interfacesSrvGetAngles_Response
instance Canonical Ros2Mypalletizer_interfacesSrvGetAngles_Response where
  maximumBytes _ = 16
  encodeValue = encodeRos2Mypalletizer_interfacesSrvGetAngles_Response
  readValue = readRos2Mypalletizer_interfacesSrvGetAngles_Response
-- | \@brief Complete ROS 2 mypalletizer_interfaces/srv/GetCoords_Request value.
-- \@details All 0 declared fields are retained in source order. The canonical representation occupies
-- 0..0 bytes and is identified by
-- UWVMROS1_b3db3a0e7d2aed097027798a897caf833f9cc1b8bb027f98c0db016968fa4440.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mypalletizer_interfacesSrvGetCoords_Request = Ros2Mypalletizer_interfacesSrvGetCoords_Request deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mypalletizer_interfaces/srv/GetCoords_Request.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mypalletizer_interfacesSrvGetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mypalletizer_interfacesSrvGetCoords_Request :: Ros2Mypalletizer_interfacesSrvGetCoords_Request
defaultRos2Mypalletizer_interfacesSrvGetCoords_Request = Ros2Mypalletizer_interfacesSrvGetCoords_Request 
-- | \@brief Canonical codec identity of mypalletizer_interfaces/srv/GetCoords_Request.
-- \@details Exact identity UWVMROS1_b3db3a0e7d2aed097027798a897caf833f9cc1b8bb027f98c0db016968fa4440
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mypalletizer_interfacesSrvGetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mypalletizer_interfacesSrvGetCoords_RequestCodecIdentity :: String
-- | \@brief Canonical codec identity of mypalletizer_interfaces/srv/GetCoords_Request.
-- \@details Exact identity UWVMROS1_b3db3a0e7d2aed097027798a897caf833f9cc1b8bb027f98c0db016968fa4440
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mypalletizer_interfacesSrvGetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mypalletizer_interfacesSrvGetCoords_RequestCodecIdentity = "UWVMROS1_b3db3a0e7d2aed097027798a897caf833f9cc1b8bb027f98c0db016968fa4440"
-- | \@brief Encode one complete mypalletizer_interfaces/srv/GetCoords_Request value.
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
-- \@see Ros2Mypalletizer_interfacesSrvGetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mypalletizer_interfacesSrvGetCoords_Request :: Ros2Mypalletizer_interfacesSrvGetCoords_Request -> Either Word32 B.ByteString
encodeRos2Mypalletizer_interfacesSrvGetCoords_Request value = do
  W.bounded 0 []
-- | \@brief Read the ordered canonical fields of mypalletizer_interfaces/srv/GetCoords_Request.
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
-- \@see Ros2Mypalletizer_interfacesSrvGetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mypalletizer_interfacesSrvGetCoords_Request :: W.Decoder Ros2Mypalletizer_interfacesSrvGetCoords_Request
readRos2Mypalletizer_interfacesSrvGetCoords_Request = do
  let value = Ros2Mypalletizer_interfacesSrvGetCoords_Request 
  case encodeRos2Mypalletizer_interfacesSrvGetCoords_Request value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mypalletizer_interfaces/srv/GetCoords_Request value.
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
-- \@see Ros2Mypalletizer_interfacesSrvGetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mypalletizer_interfacesSrvGetCoords_Request :: B.ByteString -> Either Word32 Ros2Mypalletizer_interfacesSrvGetCoords_Request
decodeRos2Mypalletizer_interfacesSrvGetCoords_Request = W.runDecoder 0 readRos2Mypalletizer_interfacesSrvGetCoords_Request
instance Canonical Ros2Mypalletizer_interfacesSrvGetCoords_Request where
  maximumBytes _ = 0
  encodeValue = encodeRos2Mypalletizer_interfacesSrvGetCoords_Request
  readValue = readRos2Mypalletizer_interfacesSrvGetCoords_Request
-- | \@brief Complete ROS 2 mypalletizer_interfaces/srv/GetCoords_Response value.
-- \@details All 4 declared fields are retained in source order. The canonical representation occupies
-- 16..16 bytes and is identified by
-- UWVMROS1_9d237cfa03c4b3c17d99fe0a9c08d1cafa3e8d0e404191e2169eea8683c54c84.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mypalletizer_interfacesSrvGetCoords_Response = Ros2Mypalletizer_interfacesSrvGetCoords_Response
  {
    -- | \@brief mypalletizer_interfaces/srv/GetCoords_Response.x: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesSrvGetCoords_Response_x :: Float
  ,
    -- | \@brief mypalletizer_interfaces/srv/GetCoords_Response.y: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesSrvGetCoords_Response_y :: Float
  ,
    -- | \@brief mypalletizer_interfaces/srv/GetCoords_Response.z: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesSrvGetCoords_Response_z :: Float
  ,
    -- | \@brief mypalletizer_interfaces/srv/GetCoords_Response.rx: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesSrvGetCoords_Response_rx :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mypalletizer_interfaces/srv/GetCoords_Response.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mypalletizer_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mypalletizer_interfacesSrvGetCoords_Response :: Ros2Mypalletizer_interfacesSrvGetCoords_Response
defaultRos2Mypalletizer_interfacesSrvGetCoords_Response =
  Ros2Mypalletizer_interfacesSrvGetCoords_Response
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mypalletizer_interfaces/srv/GetCoords_Response.
-- \@details Exact identity UWVMROS1_9d237cfa03c4b3c17d99fe0a9c08d1cafa3e8d0e404191e2169eea8683c54c84
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mypalletizer_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mypalletizer_interfacesSrvGetCoords_ResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of mypalletizer_interfaces/srv/GetCoords_Response.
-- \@details Exact identity UWVMROS1_9d237cfa03c4b3c17d99fe0a9c08d1cafa3e8d0e404191e2169eea8683c54c84
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mypalletizer_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mypalletizer_interfacesSrvGetCoords_ResponseCodecIdentity = "UWVMROS1_9d237cfa03c4b3c17d99fe0a9c08d1cafa3e8d0e404191e2169eea8683c54c84"
-- | \@brief Encode one complete mypalletizer_interfaces/srv/GetCoords_Response value.
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
-- \@see Ros2Mypalletizer_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mypalletizer_interfacesSrvGetCoords_Response :: Ros2Mypalletizer_interfacesSrvGetCoords_Response -> Either Word32 B.ByteString
encodeRos2Mypalletizer_interfacesSrvGetCoords_Response value = do
  b0 <- W.encodeFloat32 (ros2Mypalletizer_interfacesSrvGetCoords_Response_x value)
  b1 <- W.encodeFloat32 (ros2Mypalletizer_interfacesSrvGetCoords_Response_y value)
  b2 <- W.encodeFloat32 (ros2Mypalletizer_interfacesSrvGetCoords_Response_z value)
  b3 <- W.encodeFloat32 (ros2Mypalletizer_interfacesSrvGetCoords_Response_rx value)
  W.bounded 16 [b0, b1, b2, b3]
-- | \@brief Read the ordered canonical fields of mypalletizer_interfaces/srv/GetCoords_Response.
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
-- \@see Ros2Mypalletizer_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mypalletizer_interfacesSrvGetCoords_Response :: W.Decoder Ros2Mypalletizer_interfacesSrvGetCoords_Response
readRos2Mypalletizer_interfacesSrvGetCoords_Response = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  let value = Ros2Mypalletizer_interfacesSrvGetCoords_Response a0 a1 a2 a3
  case encodeRos2Mypalletizer_interfacesSrvGetCoords_Response value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mypalletizer_interfaces/srv/GetCoords_Response value.
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
-- \@see Ros2Mypalletizer_interfacesSrvGetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mypalletizer_interfacesSrvGetCoords_Response :: B.ByteString -> Either Word32 Ros2Mypalletizer_interfacesSrvGetCoords_Response
decodeRos2Mypalletizer_interfacesSrvGetCoords_Response = W.runDecoder 16 readRos2Mypalletizer_interfacesSrvGetCoords_Response
instance Canonical Ros2Mypalletizer_interfacesSrvGetCoords_Response where
  maximumBytes _ = 16
  encodeValue = encodeRos2Mypalletizer_interfacesSrvGetCoords_Response
  readValue = readRos2Mypalletizer_interfacesSrvGetCoords_Response
-- | \@brief Complete ROS 2 mypalletizer_interfaces/srv/GripperStatus_Request value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_b6d4c5991599ec4ac56e5f65dacd5a1ab89f073e9f07dc2b03692f4289fdcc9d.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mypalletizer_interfacesSrvGripperStatus_Request = Ros2Mypalletizer_interfacesSrvGripperStatus_Request
  {
    -- | \@brief mypalletizer_interfaces/srv/GripperStatus_Request.status: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesSrvGripperStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesSrvGripperStatus_Request_status :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mypalletizer_interfaces/srv/GripperStatus_Request.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mypalletizer_interfacesSrvGripperStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mypalletizer_interfacesSrvGripperStatus_Request :: Ros2Mypalletizer_interfacesSrvGripperStatus_Request
defaultRos2Mypalletizer_interfacesSrvGripperStatus_Request =
  Ros2Mypalletizer_interfacesSrvGripperStatus_Request
    (False)
-- | \@brief Canonical codec identity of mypalletizer_interfaces/srv/GripperStatus_Request.
-- \@details Exact identity UWVMROS1_b6d4c5991599ec4ac56e5f65dacd5a1ab89f073e9f07dc2b03692f4289fdcc9d
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mypalletizer_interfacesSrvGripperStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mypalletizer_interfacesSrvGripperStatus_RequestCodecIdentity :: String
-- | \@brief Canonical codec identity of mypalletizer_interfaces/srv/GripperStatus_Request.
-- \@details Exact identity UWVMROS1_b6d4c5991599ec4ac56e5f65dacd5a1ab89f073e9f07dc2b03692f4289fdcc9d
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mypalletizer_interfacesSrvGripperStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mypalletizer_interfacesSrvGripperStatus_RequestCodecIdentity = "UWVMROS1_b6d4c5991599ec4ac56e5f65dacd5a1ab89f073e9f07dc2b03692f4289fdcc9d"
-- | \@brief Encode one complete mypalletizer_interfaces/srv/GripperStatus_Request value.
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
-- \@see Ros2Mypalletizer_interfacesSrvGripperStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mypalletizer_interfacesSrvGripperStatus_Request :: Ros2Mypalletizer_interfacesSrvGripperStatus_Request -> Either Word32 B.ByteString
encodeRos2Mypalletizer_interfacesSrvGripperStatus_Request value = do
  b0 <- W.encodeBool (ros2Mypalletizer_interfacesSrvGripperStatus_Request_status value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of mypalletizer_interfaces/srv/GripperStatus_Request.
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
-- \@see Ros2Mypalletizer_interfacesSrvGripperStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mypalletizer_interfacesSrvGripperStatus_Request :: W.Decoder Ros2Mypalletizer_interfacesSrvGripperStatus_Request
readRos2Mypalletizer_interfacesSrvGripperStatus_Request = do
  a0 <- W.boolean
  let value = Ros2Mypalletizer_interfacesSrvGripperStatus_Request a0
  case encodeRos2Mypalletizer_interfacesSrvGripperStatus_Request value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mypalletizer_interfaces/srv/GripperStatus_Request value.
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
-- \@see Ros2Mypalletizer_interfacesSrvGripperStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mypalletizer_interfacesSrvGripperStatus_Request :: B.ByteString -> Either Word32 Ros2Mypalletizer_interfacesSrvGripperStatus_Request
decodeRos2Mypalletizer_interfacesSrvGripperStatus_Request = W.runDecoder 1 readRos2Mypalletizer_interfacesSrvGripperStatus_Request
instance Canonical Ros2Mypalletizer_interfacesSrvGripperStatus_Request where
  maximumBytes _ = 1
  encodeValue = encodeRos2Mypalletizer_interfacesSrvGripperStatus_Request
  readValue = readRos2Mypalletizer_interfacesSrvGripperStatus_Request
-- | \@brief Complete ROS 2 mypalletizer_interfaces/srv/GripperStatus_Response value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_bd0c427dc564ff7201019c6d33c7d0c743a65d263c67eb420b5e653d48e4daf4.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mypalletizer_interfacesSrvGripperStatus_Response = Ros2Mypalletizer_interfacesSrvGripperStatus_Response
  {
    -- | \@brief mypalletizer_interfaces/srv/GripperStatus_Response.flag: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesSrvGripperStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesSrvGripperStatus_Response_flag :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mypalletizer_interfaces/srv/GripperStatus_Response.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mypalletizer_interfacesSrvGripperStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mypalletizer_interfacesSrvGripperStatus_Response :: Ros2Mypalletizer_interfacesSrvGripperStatus_Response
defaultRos2Mypalletizer_interfacesSrvGripperStatus_Response =
  Ros2Mypalletizer_interfacesSrvGripperStatus_Response
    (False)
-- | \@brief Canonical codec identity of mypalletizer_interfaces/srv/GripperStatus_Response.
-- \@details Exact identity UWVMROS1_bd0c427dc564ff7201019c6d33c7d0c743a65d263c67eb420b5e653d48e4daf4
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mypalletizer_interfacesSrvGripperStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mypalletizer_interfacesSrvGripperStatus_ResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of mypalletizer_interfaces/srv/GripperStatus_Response.
-- \@details Exact identity UWVMROS1_bd0c427dc564ff7201019c6d33c7d0c743a65d263c67eb420b5e653d48e4daf4
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mypalletizer_interfacesSrvGripperStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mypalletizer_interfacesSrvGripperStatus_ResponseCodecIdentity = "UWVMROS1_bd0c427dc564ff7201019c6d33c7d0c743a65d263c67eb420b5e653d48e4daf4"
-- | \@brief Encode one complete mypalletizer_interfaces/srv/GripperStatus_Response value.
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
-- \@see Ros2Mypalletizer_interfacesSrvGripperStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mypalletizer_interfacesSrvGripperStatus_Response :: Ros2Mypalletizer_interfacesSrvGripperStatus_Response -> Either Word32 B.ByteString
encodeRos2Mypalletizer_interfacesSrvGripperStatus_Response value = do
  b0 <- W.encodeBool (ros2Mypalletizer_interfacesSrvGripperStatus_Response_flag value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of mypalletizer_interfaces/srv/GripperStatus_Response.
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
-- \@see Ros2Mypalletizer_interfacesSrvGripperStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mypalletizer_interfacesSrvGripperStatus_Response :: W.Decoder Ros2Mypalletizer_interfacesSrvGripperStatus_Response
readRos2Mypalletizer_interfacesSrvGripperStatus_Response = do
  a0 <- W.boolean
  let value = Ros2Mypalletizer_interfacesSrvGripperStatus_Response a0
  case encodeRos2Mypalletizer_interfacesSrvGripperStatus_Response value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mypalletizer_interfaces/srv/GripperStatus_Response value.
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
-- \@see Ros2Mypalletizer_interfacesSrvGripperStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mypalletizer_interfacesSrvGripperStatus_Response :: B.ByteString -> Either Word32 Ros2Mypalletizer_interfacesSrvGripperStatus_Response
decodeRos2Mypalletizer_interfacesSrvGripperStatus_Response = W.runDecoder 1 readRos2Mypalletizer_interfacesSrvGripperStatus_Response
instance Canonical Ros2Mypalletizer_interfacesSrvGripperStatus_Response where
  maximumBytes _ = 1
  encodeValue = encodeRos2Mypalletizer_interfacesSrvGripperStatus_Response
  readValue = readRos2Mypalletizer_interfacesSrvGripperStatus_Response
-- | \@brief Complete ROS 2 mypalletizer_interfaces/srv/PumpStatus_Request value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies
-- 3..3 bytes and is identified by
-- UWVMROS1_6b14af554cb5c65c9411b2c6a76d49cb7cbe06dedcd26d47804d00d12ccf2e2f.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mypalletizer_interfacesSrvPumpStatus_Request = Ros2Mypalletizer_interfacesSrvPumpStatus_Request
  {
    -- | \@brief mypalletizer_interfaces/srv/PumpStatus_Request.status: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesSrvPumpStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesSrvPumpStatus_Request_status :: Bool
  ,
    -- | \@brief mypalletizer_interfaces/srv/PumpStatus_Request.pin1: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesSrvPumpStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesSrvPumpStatus_Request_pin1 :: Int8
  ,
    -- | \@brief mypalletizer_interfaces/srv/PumpStatus_Request.pin2: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesSrvPumpStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesSrvPumpStatus_Request_pin2 :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mypalletizer_interfaces/srv/PumpStatus_Request.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mypalletizer_interfacesSrvPumpStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mypalletizer_interfacesSrvPumpStatus_Request :: Ros2Mypalletizer_interfacesSrvPumpStatus_Request
defaultRos2Mypalletizer_interfacesSrvPumpStatus_Request =
  Ros2Mypalletizer_interfacesSrvPumpStatus_Request
    (False)
    (0)
    (0)
-- | \@brief Canonical codec identity of mypalletizer_interfaces/srv/PumpStatus_Request.
-- \@details Exact identity UWVMROS1_6b14af554cb5c65c9411b2c6a76d49cb7cbe06dedcd26d47804d00d12ccf2e2f
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mypalletizer_interfacesSrvPumpStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mypalletizer_interfacesSrvPumpStatus_RequestCodecIdentity :: String
-- | \@brief Canonical codec identity of mypalletizer_interfaces/srv/PumpStatus_Request.
-- \@details Exact identity UWVMROS1_6b14af554cb5c65c9411b2c6a76d49cb7cbe06dedcd26d47804d00d12ccf2e2f
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mypalletizer_interfacesSrvPumpStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mypalletizer_interfacesSrvPumpStatus_RequestCodecIdentity = "UWVMROS1_6b14af554cb5c65c9411b2c6a76d49cb7cbe06dedcd26d47804d00d12ccf2e2f"
-- | \@brief Encode one complete mypalletizer_interfaces/srv/PumpStatus_Request value.
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
-- \@see Ros2Mypalletizer_interfacesSrvPumpStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mypalletizer_interfacesSrvPumpStatus_Request :: Ros2Mypalletizer_interfacesSrvPumpStatus_Request -> Either Word32 B.ByteString
encodeRos2Mypalletizer_interfacesSrvPumpStatus_Request value = do
  b0 <- W.encodeBool (ros2Mypalletizer_interfacesSrvPumpStatus_Request_status value)
  b1 <- W.encodeSigned 1 (fromIntegral (ros2Mypalletizer_interfacesSrvPumpStatus_Request_pin1 value))
  b2 <- W.encodeSigned 1 (fromIntegral (ros2Mypalletizer_interfacesSrvPumpStatus_Request_pin2 value))
  W.bounded 3 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of mypalletizer_interfaces/srv/PumpStatus_Request.
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
-- \@see Ros2Mypalletizer_interfacesSrvPumpStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mypalletizer_interfacesSrvPumpStatus_Request :: W.Decoder Ros2Mypalletizer_interfacesSrvPumpStatus_Request
readRos2Mypalletizer_interfacesSrvPumpStatus_Request = do
  a0 <- W.boolean
  a1 <- fromIntegral <$> W.signed 1
  a2 <- fromIntegral <$> W.signed 1
  let value = Ros2Mypalletizer_interfacesSrvPumpStatus_Request a0 a1 a2
  case encodeRos2Mypalletizer_interfacesSrvPumpStatus_Request value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mypalletizer_interfaces/srv/PumpStatus_Request value.
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
-- \@see Ros2Mypalletizer_interfacesSrvPumpStatus_Request; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mypalletizer_interfacesSrvPumpStatus_Request :: B.ByteString -> Either Word32 Ros2Mypalletizer_interfacesSrvPumpStatus_Request
decodeRos2Mypalletizer_interfacesSrvPumpStatus_Request = W.runDecoder 3 readRos2Mypalletizer_interfacesSrvPumpStatus_Request
instance Canonical Ros2Mypalletizer_interfacesSrvPumpStatus_Request where
  maximumBytes _ = 3
  encodeValue = encodeRos2Mypalletizer_interfacesSrvPumpStatus_Request
  readValue = readRos2Mypalletizer_interfacesSrvPumpStatus_Request
-- | \@brief Complete ROS 2 mypalletizer_interfaces/srv/PumpStatus_Response value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_187a703ce648bc82a276961d82ed8abd5365d8db7af3bb211e590620e1bb2b45.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mypalletizer_interfacesSrvPumpStatus_Response = Ros2Mypalletizer_interfacesSrvPumpStatus_Response
  {
    -- | \@brief mypalletizer_interfaces/srv/PumpStatus_Response.flag: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesSrvPumpStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesSrvPumpStatus_Response_flag :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mypalletizer_interfaces/srv/PumpStatus_Response.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mypalletizer_interfacesSrvPumpStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mypalletizer_interfacesSrvPumpStatus_Response :: Ros2Mypalletizer_interfacesSrvPumpStatus_Response
defaultRos2Mypalletizer_interfacesSrvPumpStatus_Response =
  Ros2Mypalletizer_interfacesSrvPumpStatus_Response
    (False)
-- | \@brief Canonical codec identity of mypalletizer_interfaces/srv/PumpStatus_Response.
-- \@details Exact identity UWVMROS1_187a703ce648bc82a276961d82ed8abd5365d8db7af3bb211e590620e1bb2b45
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mypalletizer_interfacesSrvPumpStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mypalletizer_interfacesSrvPumpStatus_ResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of mypalletizer_interfaces/srv/PumpStatus_Response.
-- \@details Exact identity UWVMROS1_187a703ce648bc82a276961d82ed8abd5365d8db7af3bb211e590620e1bb2b45
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mypalletizer_interfacesSrvPumpStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mypalletizer_interfacesSrvPumpStatus_ResponseCodecIdentity = "UWVMROS1_187a703ce648bc82a276961d82ed8abd5365d8db7af3bb211e590620e1bb2b45"
-- | \@brief Encode one complete mypalletizer_interfaces/srv/PumpStatus_Response value.
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
-- \@see Ros2Mypalletizer_interfacesSrvPumpStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mypalletizer_interfacesSrvPumpStatus_Response :: Ros2Mypalletizer_interfacesSrvPumpStatus_Response -> Either Word32 B.ByteString
encodeRos2Mypalletizer_interfacesSrvPumpStatus_Response value = do
  b0 <- W.encodeBool (ros2Mypalletizer_interfacesSrvPumpStatus_Response_flag value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of mypalletizer_interfaces/srv/PumpStatus_Response.
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
-- \@see Ros2Mypalletizer_interfacesSrvPumpStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mypalletizer_interfacesSrvPumpStatus_Response :: W.Decoder Ros2Mypalletizer_interfacesSrvPumpStatus_Response
readRos2Mypalletizer_interfacesSrvPumpStatus_Response = do
  a0 <- W.boolean
  let value = Ros2Mypalletizer_interfacesSrvPumpStatus_Response a0
  case encodeRos2Mypalletizer_interfacesSrvPumpStatus_Response value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mypalletizer_interfaces/srv/PumpStatus_Response value.
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
-- \@see Ros2Mypalletizer_interfacesSrvPumpStatus_Response; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mypalletizer_interfacesSrvPumpStatus_Response :: B.ByteString -> Either Word32 Ros2Mypalletizer_interfacesSrvPumpStatus_Response
decodeRos2Mypalletizer_interfacesSrvPumpStatus_Response = W.runDecoder 1 readRos2Mypalletizer_interfacesSrvPumpStatus_Response
instance Canonical Ros2Mypalletizer_interfacesSrvPumpStatus_Response where
  maximumBytes _ = 1
  encodeValue = encodeRos2Mypalletizer_interfacesSrvPumpStatus_Response
  readValue = readRos2Mypalletizer_interfacesSrvPumpStatus_Response
-- | \@brief Complete ROS 2 mypalletizer_interfaces/srv/SetAngles_Request value.
-- \@details All 5 declared fields are retained in source order. The canonical representation occupies
-- 17..17 bytes and is identified by
-- UWVMROS1_3997bb19c183b59fbca1675695ea5ee548a247a34f9682dae3fb68fdf1a155ec.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mypalletizer_interfacesSrvSetAngles_Request = Ros2Mypalletizer_interfacesSrvSetAngles_Request
  {
    -- | \@brief mypalletizer_interfaces/srv/SetAngles_Request.joint_1: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesSrvSetAngles_Request_joint_1 :: Float
  ,
    -- | \@brief mypalletizer_interfaces/srv/SetAngles_Request.joint_2: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesSrvSetAngles_Request_joint_2 :: Float
  ,
    -- | \@brief mypalletizer_interfaces/srv/SetAngles_Request.joint_3: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesSrvSetAngles_Request_joint_3 :: Float
  ,
    -- | \@brief mypalletizer_interfaces/srv/SetAngles_Request.joint_4: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesSrvSetAngles_Request_joint_4 :: Float
  ,
    -- | \@brief mypalletizer_interfaces/srv/SetAngles_Request.speed: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesSrvSetAngles_Request_speed :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mypalletizer_interfaces/srv/SetAngles_Request.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mypalletizer_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mypalletizer_interfacesSrvSetAngles_Request :: Ros2Mypalletizer_interfacesSrvSetAngles_Request
defaultRos2Mypalletizer_interfacesSrvSetAngles_Request =
  Ros2Mypalletizer_interfacesSrvSetAngles_Request
    (0)
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mypalletizer_interfaces/srv/SetAngles_Request.
-- \@details Exact identity UWVMROS1_3997bb19c183b59fbca1675695ea5ee548a247a34f9682dae3fb68fdf1a155ec
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mypalletizer_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mypalletizer_interfacesSrvSetAngles_RequestCodecIdentity :: String
-- | \@brief Canonical codec identity of mypalletizer_interfaces/srv/SetAngles_Request.
-- \@details Exact identity UWVMROS1_3997bb19c183b59fbca1675695ea5ee548a247a34f9682dae3fb68fdf1a155ec
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mypalletizer_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mypalletizer_interfacesSrvSetAngles_RequestCodecIdentity = "UWVMROS1_3997bb19c183b59fbca1675695ea5ee548a247a34f9682dae3fb68fdf1a155ec"
-- | \@brief Encode one complete mypalletizer_interfaces/srv/SetAngles_Request value.
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
-- \@see Ros2Mypalletizer_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mypalletizer_interfacesSrvSetAngles_Request :: Ros2Mypalletizer_interfacesSrvSetAngles_Request -> Either Word32 B.ByteString
encodeRos2Mypalletizer_interfacesSrvSetAngles_Request value = do
  b0 <- W.encodeFloat32 (ros2Mypalletizer_interfacesSrvSetAngles_Request_joint_1 value)
  b1 <- W.encodeFloat32 (ros2Mypalletizer_interfacesSrvSetAngles_Request_joint_2 value)
  b2 <- W.encodeFloat32 (ros2Mypalletizer_interfacesSrvSetAngles_Request_joint_3 value)
  b3 <- W.encodeFloat32 (ros2Mypalletizer_interfacesSrvSetAngles_Request_joint_4 value)
  b4 <- W.encodeSigned 1 (fromIntegral (ros2Mypalletizer_interfacesSrvSetAngles_Request_speed value))
  W.bounded 17 [b0, b1, b2, b3, b4]
-- | \@brief Read the ordered canonical fields of mypalletizer_interfaces/srv/SetAngles_Request.
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
-- \@see Ros2Mypalletizer_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mypalletizer_interfacesSrvSetAngles_Request :: W.Decoder Ros2Mypalletizer_interfacesSrvSetAngles_Request
readRos2Mypalletizer_interfacesSrvSetAngles_Request = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- fromIntegral <$> W.signed 1
  let value = Ros2Mypalletizer_interfacesSrvSetAngles_Request a0 a1 a2 a3 a4
  case encodeRos2Mypalletizer_interfacesSrvSetAngles_Request value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mypalletizer_interfaces/srv/SetAngles_Request value.
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
-- \@see Ros2Mypalletizer_interfacesSrvSetAngles_Request; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mypalletizer_interfacesSrvSetAngles_Request :: B.ByteString -> Either Word32 Ros2Mypalletizer_interfacesSrvSetAngles_Request
decodeRos2Mypalletizer_interfacesSrvSetAngles_Request = W.runDecoder 17 readRos2Mypalletizer_interfacesSrvSetAngles_Request
instance Canonical Ros2Mypalletizer_interfacesSrvSetAngles_Request where
  maximumBytes _ = 17
  encodeValue = encodeRos2Mypalletizer_interfacesSrvSetAngles_Request
  readValue = readRos2Mypalletizer_interfacesSrvSetAngles_Request
-- | \@brief Complete ROS 2 mypalletizer_interfaces/srv/SetAngles_Response value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_a7952f549b35aa140adac4f18bbe8538c0f6230aa884459091cd74720ab757c9.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mypalletizer_interfacesSrvSetAngles_Response = Ros2Mypalletizer_interfacesSrvSetAngles_Response
  {
    -- | \@brief mypalletizer_interfaces/srv/SetAngles_Response.flag: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesSrvSetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesSrvSetAngles_Response_flag :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mypalletizer_interfaces/srv/SetAngles_Response.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mypalletizer_interfacesSrvSetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mypalletizer_interfacesSrvSetAngles_Response :: Ros2Mypalletizer_interfacesSrvSetAngles_Response
defaultRos2Mypalletizer_interfacesSrvSetAngles_Response =
  Ros2Mypalletizer_interfacesSrvSetAngles_Response
    (False)
-- | \@brief Canonical codec identity of mypalletizer_interfaces/srv/SetAngles_Response.
-- \@details Exact identity UWVMROS1_a7952f549b35aa140adac4f18bbe8538c0f6230aa884459091cd74720ab757c9
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mypalletizer_interfacesSrvSetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mypalletizer_interfacesSrvSetAngles_ResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of mypalletizer_interfaces/srv/SetAngles_Response.
-- \@details Exact identity UWVMROS1_a7952f549b35aa140adac4f18bbe8538c0f6230aa884459091cd74720ab757c9
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mypalletizer_interfacesSrvSetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mypalletizer_interfacesSrvSetAngles_ResponseCodecIdentity = "UWVMROS1_a7952f549b35aa140adac4f18bbe8538c0f6230aa884459091cd74720ab757c9"
-- | \@brief Encode one complete mypalletizer_interfaces/srv/SetAngles_Response value.
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
-- \@see Ros2Mypalletizer_interfacesSrvSetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mypalletizer_interfacesSrvSetAngles_Response :: Ros2Mypalletizer_interfacesSrvSetAngles_Response -> Either Word32 B.ByteString
encodeRos2Mypalletizer_interfacesSrvSetAngles_Response value = do
  b0 <- W.encodeBool (ros2Mypalletizer_interfacesSrvSetAngles_Response_flag value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of mypalletizer_interfaces/srv/SetAngles_Response.
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
-- \@see Ros2Mypalletizer_interfacesSrvSetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mypalletizer_interfacesSrvSetAngles_Response :: W.Decoder Ros2Mypalletizer_interfacesSrvSetAngles_Response
readRos2Mypalletizer_interfacesSrvSetAngles_Response = do
  a0 <- W.boolean
  let value = Ros2Mypalletizer_interfacesSrvSetAngles_Response a0
  case encodeRos2Mypalletizer_interfacesSrvSetAngles_Response value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mypalletizer_interfaces/srv/SetAngles_Response value.
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
-- \@see Ros2Mypalletizer_interfacesSrvSetAngles_Response; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mypalletizer_interfacesSrvSetAngles_Response :: B.ByteString -> Either Word32 Ros2Mypalletizer_interfacesSrvSetAngles_Response
decodeRos2Mypalletizer_interfacesSrvSetAngles_Response = W.runDecoder 1 readRos2Mypalletizer_interfacesSrvSetAngles_Response
instance Canonical Ros2Mypalletizer_interfacesSrvSetAngles_Response where
  maximumBytes _ = 1
  encodeValue = encodeRos2Mypalletizer_interfacesSrvSetAngles_Response
  readValue = readRos2Mypalletizer_interfacesSrvSetAngles_Response
-- | \@brief Complete ROS 2 mypalletizer_interfaces/srv/SetCoords_Request value.
-- \@details All 5 declared fields are retained in source order. The canonical representation occupies
-- 17..17 bytes and is identified by
-- UWVMROS1_c72f4f1cb71f1ad1076bcc89499abbcfc5eab173fadd19c9a266baf1c32d1541.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mypalletizer_interfacesSrvSetCoords_Request = Ros2Mypalletizer_interfacesSrvSetCoords_Request
  {
    -- | \@brief mypalletizer_interfaces/srv/SetCoords_Request.x: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesSrvSetCoords_Request_x :: Float
  ,
    -- | \@brief mypalletizer_interfaces/srv/SetCoords_Request.y: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesSrvSetCoords_Request_y :: Float
  ,
    -- | \@brief mypalletizer_interfaces/srv/SetCoords_Request.z: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesSrvSetCoords_Request_z :: Float
  ,
    -- | \@brief mypalletizer_interfaces/srv/SetCoords_Request.rx: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesSrvSetCoords_Request_rx :: Float
  ,
    -- | \@brief mypalletizer_interfaces/srv/SetCoords_Request.speed: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesSrvSetCoords_Request_speed :: Int8
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mypalletizer_interfaces/srv/SetCoords_Request.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mypalletizer_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mypalletizer_interfacesSrvSetCoords_Request :: Ros2Mypalletizer_interfacesSrvSetCoords_Request
defaultRos2Mypalletizer_interfacesSrvSetCoords_Request =
  Ros2Mypalletizer_interfacesSrvSetCoords_Request
    (0)
    (0)
    (0)
    (0)
    (0)
-- | \@brief Canonical codec identity of mypalletizer_interfaces/srv/SetCoords_Request.
-- \@details Exact identity UWVMROS1_c72f4f1cb71f1ad1076bcc89499abbcfc5eab173fadd19c9a266baf1c32d1541
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mypalletizer_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mypalletizer_interfacesSrvSetCoords_RequestCodecIdentity :: String
-- | \@brief Canonical codec identity of mypalletizer_interfaces/srv/SetCoords_Request.
-- \@details Exact identity UWVMROS1_c72f4f1cb71f1ad1076bcc89499abbcfc5eab173fadd19c9a266baf1c32d1541
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mypalletizer_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
ros2Mypalletizer_interfacesSrvSetCoords_RequestCodecIdentity = "UWVMROS1_c72f4f1cb71f1ad1076bcc89499abbcfc5eab173fadd19c9a266baf1c32d1541"
-- | \@brief Encode one complete mypalletizer_interfaces/srv/SetCoords_Request value.
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
-- \@see Ros2Mypalletizer_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mypalletizer_interfacesSrvSetCoords_Request :: Ros2Mypalletizer_interfacesSrvSetCoords_Request -> Either Word32 B.ByteString
encodeRos2Mypalletizer_interfacesSrvSetCoords_Request value = do
  b0 <- W.encodeFloat32 (ros2Mypalletizer_interfacesSrvSetCoords_Request_x value)
  b1 <- W.encodeFloat32 (ros2Mypalletizer_interfacesSrvSetCoords_Request_y value)
  b2 <- W.encodeFloat32 (ros2Mypalletizer_interfacesSrvSetCoords_Request_z value)
  b3 <- W.encodeFloat32 (ros2Mypalletizer_interfacesSrvSetCoords_Request_rx value)
  b4 <- W.encodeSigned 1 (fromIntegral (ros2Mypalletizer_interfacesSrvSetCoords_Request_speed value))
  W.bounded 17 [b0, b1, b2, b3, b4]
-- | \@brief Read the ordered canonical fields of mypalletizer_interfaces/srv/SetCoords_Request.
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
-- \@see Ros2Mypalletizer_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mypalletizer_interfacesSrvSetCoords_Request :: W.Decoder Ros2Mypalletizer_interfacesSrvSetCoords_Request
readRos2Mypalletizer_interfacesSrvSetCoords_Request = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- fromIntegral <$> W.signed 1
  let value = Ros2Mypalletizer_interfacesSrvSetCoords_Request a0 a1 a2 a3 a4
  case encodeRos2Mypalletizer_interfacesSrvSetCoords_Request value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mypalletizer_interfaces/srv/SetCoords_Request value.
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
-- \@see Ros2Mypalletizer_interfacesSrvSetCoords_Request; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mypalletizer_interfacesSrvSetCoords_Request :: B.ByteString -> Either Word32 Ros2Mypalletizer_interfacesSrvSetCoords_Request
decodeRos2Mypalletizer_interfacesSrvSetCoords_Request = W.runDecoder 17 readRos2Mypalletizer_interfacesSrvSetCoords_Request
instance Canonical Ros2Mypalletizer_interfacesSrvSetCoords_Request where
  maximumBytes _ = 17
  encodeValue = encodeRos2Mypalletizer_interfacesSrvSetCoords_Request
  readValue = readRos2Mypalletizer_interfacesSrvSetCoords_Request
-- | \@brief Complete ROS 2 mypalletizer_interfaces/srv/SetCoords_Response value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 1..1 bytes and is identified by
-- UWVMROS1_0cedaf9087ba0ae3726b9dd0d304665a226fc6df2ee068f6ac2b1c12ce88cb5b.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros2Mypalletizer_interfacesSrvSetCoords_Response = Ros2Mypalletizer_interfacesSrvSetCoords_Response
  {
    -- | \@brief mypalletizer_interfaces/srv/SetCoords_Response.flag: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Mypalletizer_interfacesSrvSetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Mypalletizer_interfacesSrvSetCoords_Response_flag :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of mypalletizer_interfaces/srv/SetCoords_Response.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros2Mypalletizer_interfacesSrvSetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
defaultRos2Mypalletizer_interfacesSrvSetCoords_Response :: Ros2Mypalletizer_interfacesSrvSetCoords_Response
defaultRos2Mypalletizer_interfacesSrvSetCoords_Response =
  Ros2Mypalletizer_interfacesSrvSetCoords_Response
    (False)
-- | \@brief Canonical codec identity of mypalletizer_interfaces/srv/SetCoords_Response.
-- \@details Exact identity UWVMROS1_0cedaf9087ba0ae3726b9dd0d304665a226fc6df2ee068f6ac2b1c12ce88cb5b
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mypalletizer_interfacesSrvSetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mypalletizer_interfacesSrvSetCoords_ResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of mypalletizer_interfaces/srv/SetCoords_Response.
-- \@details Exact identity UWVMROS1_0cedaf9087ba0ae3726b9dd0d304665a226fc6df2ee068f6ac2b1c12ce88cb5b
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros2Mypalletizer_interfacesSrvSetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
ros2Mypalletizer_interfacesSrvSetCoords_ResponseCodecIdentity = "UWVMROS1_0cedaf9087ba0ae3726b9dd0d304665a226fc6df2ee068f6ac2b1c12ce88cb5b"
-- | \@brief Encode one complete mypalletizer_interfaces/srv/SetCoords_Response value.
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
-- \@see Ros2Mypalletizer_interfacesSrvSetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
encodeRos2Mypalletizer_interfacesSrvSetCoords_Response :: Ros2Mypalletizer_interfacesSrvSetCoords_Response -> Either Word32 B.ByteString
encodeRos2Mypalletizer_interfacesSrvSetCoords_Response value = do
  b0 <- W.encodeBool (ros2Mypalletizer_interfacesSrvSetCoords_Response_flag value)
  W.bounded 1 [b0]
-- | \@brief Read the ordered canonical fields of mypalletizer_interfaces/srv/SetCoords_Response.
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
-- \@see Ros2Mypalletizer_interfacesSrvSetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
readRos2Mypalletizer_interfacesSrvSetCoords_Response :: W.Decoder Ros2Mypalletizer_interfacesSrvSetCoords_Response
readRos2Mypalletizer_interfacesSrvSetCoords_Response = do
  a0 <- W.boolean
  let value = Ros2Mypalletizer_interfacesSrvSetCoords_Response a0
  case encodeRos2Mypalletizer_interfacesSrvSetCoords_Response value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete mypalletizer_interfaces/srv/SetCoords_Response value.
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
-- \@see Ros2Mypalletizer_interfacesSrvSetCoords_Response; share/platform/ros/haskell/API-CONTRACT.md
decodeRos2Mypalletizer_interfacesSrvSetCoords_Response :: B.ByteString -> Either Word32 Ros2Mypalletizer_interfacesSrvSetCoords_Response
decodeRos2Mypalletizer_interfacesSrvSetCoords_Response = W.runDecoder 1 readRos2Mypalletizer_interfacesSrvSetCoords_Response
instance Canonical Ros2Mypalletizer_interfacesSrvSetCoords_Response where
  maximumBytes _ = 1
  encodeValue = encodeRos2Mypalletizer_interfacesSrvSetCoords_Response
  readValue = readRos2Mypalletizer_interfacesSrvSetCoords_Response
