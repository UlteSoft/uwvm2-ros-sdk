-- | @file records.hs
-- | @brief Preserve the complete original ufactory/ros1_kinetic canonical value domain.
-- | @details The selected domain contains 84 complete record/components and 196 original fields. Declared
-- | scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
-- | Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
-- | create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
-- | does not qualify a frontend, target ABI or native ROS transport.
-- | @see The platform's localized language guide and complete API-CATALOG.md.
-- Generated complete canonical values; all field selectors are record-qualified.
module Ufactory.Ros1Kinetic.Records where
import Data.Int
import Data.Word
import qualified Data.ByteString as B
import qualified Data.Text as T
import GHC.Float
import Control.Monad (replicateM)
import qualified RosWasm.Wire as W
import RosWasm.Typed (Canonical(..))
-- | \@brief Complete ROS 1 xarm_gripper/MoveGoal value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 8..8 bytes and is identified by
-- UWVMROS1_0ab5e2829d7c78ed0a3cfd1b0dc5a15144c18f13b9b22afaef8cbe962f4f579e.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_gripperMoveGoal = Ros1Xarm_gripperMoveGoal
  {
    -- | \@brief xarm_gripper/MoveGoal.target_pulse: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_gripperMoveGoal; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_gripperMoveGoal_target_pulse :: Float
  ,
    -- | \@brief xarm_gripper/MoveGoal.pulse_speed: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_gripperMoveGoal; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_gripperMoveGoal_pulse_speed :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_gripper/MoveGoal.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_gripperMoveGoal; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_gripperMoveGoal :: Ros1Xarm_gripperMoveGoal
defaultRos1Xarm_gripperMoveGoal = Ros1Xarm_gripperMoveGoal (0) (0)
-- | \@brief Canonical codec identity of xarm_gripper/MoveGoal.
-- \@details Exact identity UWVMROS1_0ab5e2829d7c78ed0a3cfd1b0dc5a15144c18f13b9b22afaef8cbe962f4f579e
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_gripperMoveGoal; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_gripperMoveGoalCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_gripper/MoveGoal.
-- \@details Exact identity UWVMROS1_0ab5e2829d7c78ed0a3cfd1b0dc5a15144c18f13b9b22afaef8cbe962f4f579e
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_gripperMoveGoal; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_gripperMoveGoalCodecIdentity = "UWVMROS1_0ab5e2829d7c78ed0a3cfd1b0dc5a15144c18f13b9b22afaef8cbe962f4f579e"
-- | \@brief Encode one complete xarm_gripper/MoveGoal value.
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
-- \@see Ros1Xarm_gripperMoveGoal; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_gripperMoveGoal :: Ros1Xarm_gripperMoveGoal -> Either Word32 B.ByteString
encodeRos1Xarm_gripperMoveGoal value = do
  b0 <- W.encodeFloat32 (ros1Xarm_gripperMoveGoal_target_pulse value)
  b1 <- W.encodeFloat32 (ros1Xarm_gripperMoveGoal_pulse_speed value)
  W.bounded 8 [b0, b1]
-- | \@brief Read the ordered canonical fields of xarm_gripper/MoveGoal.
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
-- \@see Ros1Xarm_gripperMoveGoal; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_gripperMoveGoal :: W.Decoder Ros1Xarm_gripperMoveGoal
readRos1Xarm_gripperMoveGoal = do
  a0 <- W.float32
  a1 <- W.float32
  let value = Ros1Xarm_gripperMoveGoal a0 a1
  case encodeRos1Xarm_gripperMoveGoal value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_gripper/MoveGoal value.
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
-- \@see Ros1Xarm_gripperMoveGoal; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_gripperMoveGoal :: B.ByteString -> Either Word32 Ros1Xarm_gripperMoveGoal
decodeRos1Xarm_gripperMoveGoal = W.runDecoder 8 readRos1Xarm_gripperMoveGoal
instance Canonical Ros1Xarm_gripperMoveGoal where
  maximumBytes _ = 8
  encodeValue = encodeRos1Xarm_gripperMoveGoal
  readValue = readRos1Xarm_gripperMoveGoal
-- | \@brief Complete ROS 1 xarm_gripper/MoveResult value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 3..3 bytes and is identified by
-- UWVMROS1_c0697aa25874f00de22f98f34460dd4ecf3471dba9f441d958959cda68b10e5c.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_gripperMoveResult = Ros1Xarm_gripperMoveResult
  {
    -- | \@brief xarm_gripper/MoveResult.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_gripperMoveResult; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_gripperMoveResult_success :: Bool
  ,
    -- | \@brief xarm_gripper/MoveResult.err_code: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_gripperMoveResult; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_gripperMoveResult_err_code :: Int16
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_gripper/MoveResult.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_gripperMoveResult; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_gripperMoveResult :: Ros1Xarm_gripperMoveResult
defaultRos1Xarm_gripperMoveResult = Ros1Xarm_gripperMoveResult (False) (0)
-- | \@brief Canonical codec identity of xarm_gripper/MoveResult.
-- \@details Exact identity UWVMROS1_c0697aa25874f00de22f98f34460dd4ecf3471dba9f441d958959cda68b10e5c
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_gripperMoveResult; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_gripperMoveResultCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_gripper/MoveResult.
-- \@details Exact identity UWVMROS1_c0697aa25874f00de22f98f34460dd4ecf3471dba9f441d958959cda68b10e5c
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_gripperMoveResult; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_gripperMoveResultCodecIdentity = "UWVMROS1_c0697aa25874f00de22f98f34460dd4ecf3471dba9f441d958959cda68b10e5c"
-- | \@brief Encode one complete xarm_gripper/MoveResult value.
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
-- \@see Ros1Xarm_gripperMoveResult; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_gripperMoveResult :: Ros1Xarm_gripperMoveResult -> Either Word32 B.ByteString
encodeRos1Xarm_gripperMoveResult value = do
  b0 <- W.encodeBool (ros1Xarm_gripperMoveResult_success value)
  b1 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_gripperMoveResult_err_code value))
  W.bounded 3 [b0, b1]
-- | \@brief Read the ordered canonical fields of xarm_gripper/MoveResult.
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
-- \@see Ros1Xarm_gripperMoveResult; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_gripperMoveResult :: W.Decoder Ros1Xarm_gripperMoveResult
readRos1Xarm_gripperMoveResult = do
  a0 <- W.boolean
  a1 <- fromIntegral <$> W.signed 2
  let value = Ros1Xarm_gripperMoveResult a0 a1
  case encodeRos1Xarm_gripperMoveResult value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_gripper/MoveResult value.
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
-- \@see Ros1Xarm_gripperMoveResult; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_gripperMoveResult :: B.ByteString -> Either Word32 Ros1Xarm_gripperMoveResult
decodeRos1Xarm_gripperMoveResult = W.runDecoder 3 readRos1Xarm_gripperMoveResult
instance Canonical Ros1Xarm_gripperMoveResult where
  maximumBytes _ = 3
  encodeValue = encodeRos1Xarm_gripperMoveResult
  readValue = readRos1Xarm_gripperMoveResult
-- | \@brief Complete ROS 1 xarm_gripper/MoveFeedback value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 4..4 bytes and is identified by
-- UWVMROS1_fe56a38c804b409b8b18a9d7bff2090e2c33fd0bd09afd8e8b5d0923ec4cfff6.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_gripperMoveFeedback = Ros1Xarm_gripperMoveFeedback
  {
    -- | \@brief xarm_gripper/MoveFeedback.current_pulse: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_gripperMoveFeedback; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_gripperMoveFeedback_current_pulse :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_gripper/MoveFeedback.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_gripperMoveFeedback; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_gripperMoveFeedback :: Ros1Xarm_gripperMoveFeedback
defaultRos1Xarm_gripperMoveFeedback = Ros1Xarm_gripperMoveFeedback (0)
-- | \@brief Canonical codec identity of xarm_gripper/MoveFeedback.
-- \@details Exact identity UWVMROS1_fe56a38c804b409b8b18a9d7bff2090e2c33fd0bd09afd8e8b5d0923ec4cfff6
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_gripperMoveFeedback; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_gripperMoveFeedbackCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_gripper/MoveFeedback.
-- \@details Exact identity UWVMROS1_fe56a38c804b409b8b18a9d7bff2090e2c33fd0bd09afd8e8b5d0923ec4cfff6
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_gripperMoveFeedback; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_gripperMoveFeedbackCodecIdentity = "UWVMROS1_fe56a38c804b409b8b18a9d7bff2090e2c33fd0bd09afd8e8b5d0923ec4cfff6"
-- | \@brief Encode one complete xarm_gripper/MoveFeedback value.
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
-- \@see Ros1Xarm_gripperMoveFeedback; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_gripperMoveFeedback :: Ros1Xarm_gripperMoveFeedback -> Either Word32 B.ByteString
encodeRos1Xarm_gripperMoveFeedback value = do
  b0 <- W.encodeFloat32 (ros1Xarm_gripperMoveFeedback_current_pulse value)
  W.bounded 4 [b0]
-- | \@brief Read the ordered canonical fields of xarm_gripper/MoveFeedback.
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
-- \@see Ros1Xarm_gripperMoveFeedback; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_gripperMoveFeedback :: W.Decoder Ros1Xarm_gripperMoveFeedback
readRos1Xarm_gripperMoveFeedback = do
  a0 <- W.float32
  let value = Ros1Xarm_gripperMoveFeedback a0
  case encodeRos1Xarm_gripperMoveFeedback value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_gripper/MoveFeedback value.
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
-- \@see Ros1Xarm_gripperMoveFeedback; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_gripperMoveFeedback :: B.ByteString -> Either Word32 Ros1Xarm_gripperMoveFeedback
decodeRos1Xarm_gripperMoveFeedback = W.runDecoder 4 readRos1Xarm_gripperMoveFeedback
instance Canonical Ros1Xarm_gripperMoveFeedback where
  maximumBytes _ = 4
  encodeValue = encodeRos1Xarm_gripperMoveFeedback
  readValue = readRos1Xarm_gripperMoveFeedback
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
-- | \@brief Complete ROS 1 time value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 8..8 bytes and is identified by
-- UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Time = Ros1Time
  {
    -- | \@brief time.sec: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Time; share/platform/ros/haskell/API-CONTRACT.md
    ros1Time_sec :: Word32
  ,
    -- | \@brief time.nsec: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Time; share/platform/ros/haskell/API-CONTRACT.md
    ros1Time_nsec :: Word32
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of time.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Time; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Time :: Ros1Time
defaultRos1Time = Ros1Time (0) (0)
-- | \@brief Canonical codec identity of time.
-- \@details Exact identity UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Time; share/platform/ros/haskell/API-CONTRACT.md
ros1TimeCodecIdentity :: String
-- | \@brief Canonical codec identity of time.
-- \@details Exact identity UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Time; share/platform/ros/haskell/API-CONTRACT.md
ros1TimeCodecIdentity = "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0"
-- | \@brief Encode one complete time value.
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
-- \@see Ros1Time; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Time :: Ros1Time -> Either Word32 B.ByteString
encodeRos1Time value = do
  if (ros1Time_nsec value) >= 1000000000 then Left 22 else Right ()
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Time_sec value))
  b1 <- W.encodeUnsigned 4 (fromIntegral (ros1Time_nsec value))
  W.bounded 8 [b0, b1]
-- | \@brief Read the ordered canonical fields of time.
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
-- \@see Ros1Time; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Time :: B.ByteString -> Either Word32 Ros1Time
decodeRos1Time = W.runDecoder 8 readRos1Time
instance Canonical Ros1Time where
  maximumBytes _ = 8
  encodeValue = encodeRos1Time
  readValue = readRos1Time
-- | \@brief Complete ROS 1 std_msgs/Header value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies
-- 16..272 bytes and is identified by
-- UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Std_msgsHeader = Ros1Std_msgsHeader
  {
    -- | \@brief std_msgs/Header.seq: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Std_msgsHeader; share/platform/ros/haskell/API-CONTRACT.md
    ros1Std_msgsHeader_seq :: Word32
  ,
    -- | \@brief std_msgs/Header.stamp: time.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Std_msgsHeader; share/platform/ros/haskell/API-CONTRACT.md
    ros1Std_msgsHeader_stamp :: Ros1Time
  ,
    -- | \@brief std_msgs/Header.frame_id: string; each string is 0..256 bytes; strict UTF-8 with no
    -- | embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Std_msgsHeader; share/platform/ros/haskell/API-CONTRACT.md
    ros1Std_msgsHeader_frame_id :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of std_msgs/Header.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Std_msgsHeader; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Std_msgsHeader :: Ros1Std_msgsHeader
defaultRos1Std_msgsHeader = Ros1Std_msgsHeader (0) (defaultRos1Time) (T.empty)
-- | \@brief Canonical codec identity of std_msgs/Header.
-- \@details Exact identity UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Std_msgsHeader; share/platform/ros/haskell/API-CONTRACT.md
ros1Std_msgsHeaderCodecIdentity :: String
-- | \@brief Canonical codec identity of std_msgs/Header.
-- \@details Exact identity UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Std_msgsHeader; share/platform/ros/haskell/API-CONTRACT.md
ros1Std_msgsHeaderCodecIdentity = "UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7"
-- | \@brief Encode one complete std_msgs/Header value.
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
-- \@see Ros1Std_msgsHeader; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Std_msgsHeader :: Ros1Std_msgsHeader -> Either Word32 B.ByteString
encodeRos1Std_msgsHeader value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Std_msgsHeader_seq value))
  b1 <- encodeRos1Time (ros1Std_msgsHeader_stamp value)
  b2 <- W.encodeText 256 True (ros1Std_msgsHeader_frame_id value)
  W.bounded 272 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of std_msgs/Header.
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
-- \@see Ros1Std_msgsHeader; share/platform/ros/haskell/API-CONTRACT.md
readRos1Std_msgsHeader :: W.Decoder Ros1Std_msgsHeader
readRos1Std_msgsHeader = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- readRos1Time
  a2 <- W.text 256 True
  let value = Ros1Std_msgsHeader a0 a1 a2
  case encodeRos1Std_msgsHeader value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete std_msgs/Header value.
-- \@details Require the complete 16..272-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Std_msgsHeader; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Std_msgsHeader :: B.ByteString -> Either Word32 Ros1Std_msgsHeader
decodeRos1Std_msgsHeader = W.runDecoder 272 readRos1Std_msgsHeader
instance Canonical Ros1Std_msgsHeader where
  maximumBytes _ = 272
  encodeValue = encodeRos1Std_msgsHeader
  readValue = readRos1Std_msgsHeader
-- | \@brief Complete ROS 1 xarm_msgs/CIOState value.
-- \@details All 9 declared fields are retained in source order. The canonical representation occupies
-- 76..332 bytes and is identified by
-- UWVMROS1_808cc76aae56a2fcd84fde437f7558a4852ef38f56df7897bf215afa27e22057.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsCIOState = Ros1Xarm_msgsCIOState
  {
    -- | \@brief xarm_msgs/CIOState.header: std_msgs/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsCIOState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsCIOState_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief xarm_msgs/CIOState.state: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsCIOState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsCIOState_state :: Int16
  ,
    -- | \@brief xarm_msgs/CIOState.code: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsCIOState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsCIOState_code :: Int16
  ,
    -- | \@brief xarm_msgs/CIOState.input_digitals: uint16; exactly 2 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsCIOState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsCIOState_input_digitals :: [Word16]
  ,
    -- | \@brief xarm_msgs/CIOState.output_digitals: uint16; exactly 2 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsCIOState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsCIOState_output_digitals :: [Word16]
  ,
    -- | \@brief xarm_msgs/CIOState.input_analogs: float32; exactly 2 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsCIOState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsCIOState_input_analogs :: [Float]
  ,
    -- | \@brief xarm_msgs/CIOState.output_analogs: float32; exactly 2 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsCIOState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsCIOState_output_analogs :: [Float]
  ,
    -- | \@brief xarm_msgs/CIOState.input_conf: uint8; exactly 16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsCIOState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsCIOState_input_conf :: [Word8]
  ,
    -- | \@brief xarm_msgs/CIOState.output_conf: uint8; exactly 16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsCIOState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsCIOState_output_conf :: [Word8]
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/CIOState.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsCIOState; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsCIOState :: Ros1Xarm_msgsCIOState
defaultRos1Xarm_msgsCIOState =
  Ros1Xarm_msgsCIOState
    (defaultRos1Std_msgsHeader)
    (0)
    (0)
    (replicate 2 (0))
    (replicate 2 (0))
    (replicate 2 (0))
    (replicate 2 (0))
    (replicate 16 (0))
    (replicate 16 (0))
-- | \@brief Canonical codec identity of xarm_msgs/CIOState.
-- \@details Exact identity UWVMROS1_808cc76aae56a2fcd84fde437f7558a4852ef38f56df7897bf215afa27e22057
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsCIOState; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsCIOStateCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/CIOState.
-- \@details Exact identity UWVMROS1_808cc76aae56a2fcd84fde437f7558a4852ef38f56df7897bf215afa27e22057
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsCIOState; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsCIOStateCodecIdentity = "UWVMROS1_808cc76aae56a2fcd84fde437f7558a4852ef38f56df7897bf215afa27e22057"
-- | \@brief Encode one complete xarm_msgs/CIOState value.
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
-- \@see Ros1Xarm_msgsCIOState; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsCIOState :: Ros1Xarm_msgsCIOState -> Either Word32 B.ByteString
encodeRos1Xarm_msgsCIOState value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Xarm_msgsCIOState_header value)
  b1 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsCIOState_state value))
  b2 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsCIOState_code value))
  if length (ros1Xarm_msgsCIOState_input_digitals value) /= 2 then Left 22 else Right ()
  b3 <- B.concat <$> mapM (\e -> W.encodeUnsigned 2 (fromIntegral (e))) (ros1Xarm_msgsCIOState_input_digitals value)
  if length (ros1Xarm_msgsCIOState_output_digitals value) /= 2 then Left 22 else Right ()
  b4 <- B.concat <$> mapM (\e -> W.encodeUnsigned 2 (fromIntegral (e))) (ros1Xarm_msgsCIOState_output_digitals value)
  if length (ros1Xarm_msgsCIOState_input_analogs value) /= 2 then Left 22 else Right ()
  b5 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros1Xarm_msgsCIOState_input_analogs value)
  if length (ros1Xarm_msgsCIOState_output_analogs value) /= 2 then Left 22 else Right ()
  b6 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros1Xarm_msgsCIOState_output_analogs value)
  if length (ros1Xarm_msgsCIOState_input_conf value) /= 16 then Left 22 else Right ()
  b7 <- B.concat <$> mapM (\e -> W.encodeUnsigned 1 (fromIntegral (e))) (ros1Xarm_msgsCIOState_input_conf value)
  if length (ros1Xarm_msgsCIOState_output_conf value) /= 16 then Left 22 else Right ()
  b8 <- B.concat <$> mapM (\e -> W.encodeUnsigned 1 (fromIntegral (e))) (ros1Xarm_msgsCIOState_output_conf value)
  W.bounded 332 [b0, b1, b2, b3, b4, b5, b6, b7, b8]
-- | \@brief Read the ordered canonical fields of xarm_msgs/CIOState.
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
-- \@see Ros1Xarm_msgsCIOState; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsCIOState :: W.Decoder Ros1Xarm_msgsCIOState
readRos1Xarm_msgsCIOState = do
  a0 <- readRos1Std_msgsHeader
  a1 <- fromIntegral <$> W.signed 2
  a2 <- fromIntegral <$> W.signed 2
  a3 <- replicateM 2 (fromIntegral <$> W.unsigned 2)
  a4 <- replicateM 2 (fromIntegral <$> W.unsigned 2)
  a5 <- replicateM 2 (W.float32)
  a6 <- replicateM 2 (W.float32)
  a7 <- replicateM 16 (fromIntegral <$> W.unsigned 1)
  a8 <- replicateM 16 (fromIntegral <$> W.unsigned 1)
  let value = Ros1Xarm_msgsCIOState a0 a1 a2 a3 a4 a5 a6 a7 a8
  case encodeRos1Xarm_msgsCIOState value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/CIOState value.
-- \@details Require the complete 76..332-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsCIOState; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsCIOState :: B.ByteString -> Either Word32 Ros1Xarm_msgsCIOState
decodeRos1Xarm_msgsCIOState = W.runDecoder 332 readRos1Xarm_msgsCIOState
instance Canonical Ros1Xarm_msgsCIOState where
  maximumBytes _ = 332
  encodeValue = encodeRos1Xarm_msgsCIOState
  readValue = readRos1Xarm_msgsCIOState
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
-- \@details All 11 declared fields are retained in source order. The canonical representation occupies
-- 82..366 bytes and is identified by
-- UWVMROS1_03b0ad7c90edaeef28a240a857e18cc94de2ee170b7a64c29a6a96cac604f2fb.
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
    -- | \@brief xarm_msgs/RobotMsg.header: std_msgs/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsRobotMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsRobotMsg_header :: Ros1Std_msgsHeader
  ,
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
    (defaultRos1Std_msgsHeader)
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
-- \@details Exact identity UWVMROS1_03b0ad7c90edaeef28a240a857e18cc94de2ee170b7a64c29a6a96cac604f2fb
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsRobotMsg; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsRobotMsgCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/RobotMsg.
-- \@details Exact identity UWVMROS1_03b0ad7c90edaeef28a240a857e18cc94de2ee170b7a64c29a6a96cac604f2fb
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsRobotMsg; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsRobotMsgCodecIdentity = "UWVMROS1_03b0ad7c90edaeef28a240a857e18cc94de2ee170b7a64c29a6a96cac604f2fb"
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
  b0 <- encodeRos1Std_msgsHeader (ros1Xarm_msgsRobotMsg_header value)
  b1 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsRobotMsg_state value))
  b2 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsRobotMsg_mode value))
  b3 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsRobotMsg_cmdnum value))
  b4 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsRobotMsg_mt_brake value))
  b5 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsRobotMsg_mt_able value))
  b6 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsRobotMsg_err value))
  b7 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsRobotMsg_warn value))
  if length (ros1Xarm_msgsRobotMsg_angle value) > 7 then Left 22 else Right ()
  prefix8 <- W.encodeCount 7 (length (ros1Xarm_msgsRobotMsg_angle value))
  b8 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros1Xarm_msgsRobotMsg_angle value)
  if length (ros1Xarm_msgsRobotMsg_pose value) /= 6 then Left 22 else Right ()
  b9 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros1Xarm_msgsRobotMsg_pose value)
  if length (ros1Xarm_msgsRobotMsg_offset value) /= 6 then Left 22 else Right ()
  b10 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros1Xarm_msgsRobotMsg_offset value)
  W.bounded 366 [b0, b1, b2, b3, b4, b5, b6, b7, prefix8, b8, b9, b10]
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
  a0 <- readRos1Std_msgsHeader
  a1 <- fromIntegral <$> W.signed 2
  a2 <- fromIntegral <$> W.signed 2
  a3 <- fromIntegral <$> W.signed 2
  a4 <- fromIntegral <$> W.signed 2
  a5 <- fromIntegral <$> W.signed 2
  a6 <- fromIntegral <$> W.signed 2
  a7 <- fromIntegral <$> W.signed 2
  count8 <- W.count 7
  a8 <- replicateM count8 (W.float32)
  a9 <- replicateM 6 (W.float32)
  a10 <- replicateM 6 (W.float32)
  let value = Ros1Xarm_msgsRobotMsg a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10
  case encodeRos1Xarm_msgsRobotMsg value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/RobotMsg value.
-- \@details Require the complete 82..366-byte canonical representation. Reject truncation, invalid fields
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
decodeRos1Xarm_msgsRobotMsg = W.runDecoder 366 readRos1Xarm_msgsRobotMsg
instance Canonical Ros1Xarm_msgsRobotMsg where
  maximumBytes _ = 366
  encodeValue = encodeRos1Xarm_msgsRobotMsg
  readValue = readRos1Xarm_msgsRobotMsg
-- | \@brief Complete ROS 1 xarm_msgs/VeloMoveMsg value.
-- \@details All 4 declared fields are retained in source order. The canonical representation occupies
-- 10..138 bytes and is identified by
-- UWVMROS1_62e379e4b9093a641afc616d20d0b3b73eb545e9dca68e926c641f9dad1a1032.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsVeloMoveMsg = Ros1Xarm_msgsVeloMoveMsg
  {
    -- | \@brief xarm_msgs/VeloMoveMsg.speeds: float32; 0..32 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsVeloMoveMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsVeloMoveMsg_speeds :: [Float]
  ,
    -- | \@brief xarm_msgs/VeloMoveMsg.is_sync: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsVeloMoveMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsVeloMoveMsg_is_sync :: Bool
  ,
    -- | \@brief xarm_msgs/VeloMoveMsg.is_tool_coord: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsVeloMoveMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsVeloMoveMsg_is_tool_coord :: Bool
  ,
    -- | \@brief xarm_msgs/VeloMoveMsg.duration: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsVeloMoveMsg; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsVeloMoveMsg_duration :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/VeloMoveMsg.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsVeloMoveMsg; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsVeloMoveMsg :: Ros1Xarm_msgsVeloMoveMsg
defaultRos1Xarm_msgsVeloMoveMsg = Ros1Xarm_msgsVeloMoveMsg ([]) (False) (False) (0)
-- | \@brief Canonical codec identity of xarm_msgs/VeloMoveMsg.
-- \@details Exact identity UWVMROS1_62e379e4b9093a641afc616d20d0b3b73eb545e9dca68e926c641f9dad1a1032
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsVeloMoveMsg; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsVeloMoveMsgCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/VeloMoveMsg.
-- \@details Exact identity UWVMROS1_62e379e4b9093a641afc616d20d0b3b73eb545e9dca68e926c641f9dad1a1032
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsVeloMoveMsg; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsVeloMoveMsgCodecIdentity = "UWVMROS1_62e379e4b9093a641afc616d20d0b3b73eb545e9dca68e926c641f9dad1a1032"
-- | \@brief Encode one complete xarm_msgs/VeloMoveMsg value.
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
-- \@see Ros1Xarm_msgsVeloMoveMsg; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsVeloMoveMsg :: Ros1Xarm_msgsVeloMoveMsg -> Either Word32 B.ByteString
encodeRos1Xarm_msgsVeloMoveMsg value = do
  if length (ros1Xarm_msgsVeloMoveMsg_speeds value) > 32 then Left 22 else Right ()
  prefix0 <- W.encodeCount 32 (length (ros1Xarm_msgsVeloMoveMsg_speeds value))
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros1Xarm_msgsVeloMoveMsg_speeds value)
  b1 <- W.encodeBool (ros1Xarm_msgsVeloMoveMsg_is_sync value)
  b2 <- W.encodeBool (ros1Xarm_msgsVeloMoveMsg_is_tool_coord value)
  b3 <- W.encodeFloat32 (ros1Xarm_msgsVeloMoveMsg_duration value)
  W.bounded 138 [prefix0, b0, b1, b2, b3]
-- | \@brief Read the ordered canonical fields of xarm_msgs/VeloMoveMsg.
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
-- \@see Ros1Xarm_msgsVeloMoveMsg; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsVeloMoveMsg :: W.Decoder Ros1Xarm_msgsVeloMoveMsg
readRos1Xarm_msgsVeloMoveMsg = do
  count0 <- W.count 32
  a0 <- replicateM count0 (W.float32)
  a1 <- W.boolean
  a2 <- W.boolean
  a3 <- W.float32
  let value = Ros1Xarm_msgsVeloMoveMsg a0 a1 a2 a3
  case encodeRos1Xarm_msgsVeloMoveMsg value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/VeloMoveMsg value.
-- \@details Require the complete 10..138-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsVeloMoveMsg; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsVeloMoveMsg :: B.ByteString -> Either Word32 Ros1Xarm_msgsVeloMoveMsg
decodeRos1Xarm_msgsVeloMoveMsg = W.runDecoder 138 readRos1Xarm_msgsVeloMoveMsg
instance Canonical Ros1Xarm_msgsVeloMoveMsg where
  maximumBytes _ = 138
  encodeValue = encodeRos1Xarm_msgsVeloMoveMsg
  readValue = readRos1Xarm_msgsVeloMoveMsg
-- | \@brief Complete ROS 1 xarm_msgs/CallRequest value.
-- \@details All 0 declared fields are retained in source order. The canonical representation occupies
-- 0..0 bytes and is identified by
-- UWVMROS1_5e66f3f703560f628a4b6a5023533e0e99a703a0d84c4ac7457a8423e73c3328.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsCallRequest = Ros1Xarm_msgsCallRequest deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/CallRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsCallRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsCallRequest :: Ros1Xarm_msgsCallRequest
defaultRos1Xarm_msgsCallRequest = Ros1Xarm_msgsCallRequest 
-- | \@brief Canonical codec identity of xarm_msgs/CallRequest.
-- \@details Exact identity UWVMROS1_5e66f3f703560f628a4b6a5023533e0e99a703a0d84c4ac7457a8423e73c3328
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsCallRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsCallRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/CallRequest.
-- \@details Exact identity UWVMROS1_5e66f3f703560f628a4b6a5023533e0e99a703a0d84c4ac7457a8423e73c3328
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsCallRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsCallRequestCodecIdentity = "UWVMROS1_5e66f3f703560f628a4b6a5023533e0e99a703a0d84c4ac7457a8423e73c3328"
-- | \@brief Encode one complete xarm_msgs/CallRequest value.
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
-- \@see Ros1Xarm_msgsCallRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsCallRequest :: Ros1Xarm_msgsCallRequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsCallRequest value = do
  W.bounded 0 []
-- | \@brief Read the ordered canonical fields of xarm_msgs/CallRequest.
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
-- \@see Ros1Xarm_msgsCallRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsCallRequest :: W.Decoder Ros1Xarm_msgsCallRequest
readRos1Xarm_msgsCallRequest = do
  let value = Ros1Xarm_msgsCallRequest 
  case encodeRos1Xarm_msgsCallRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/CallRequest value.
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
-- \@see Ros1Xarm_msgsCallRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsCallRequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsCallRequest
decodeRos1Xarm_msgsCallRequest = W.runDecoder 0 readRos1Xarm_msgsCallRequest
instance Canonical Ros1Xarm_msgsCallRequest where
  maximumBytes _ = 0
  encodeValue = encodeRos1Xarm_msgsCallRequest
  readValue = readRos1Xarm_msgsCallRequest
-- | \@brief Complete ROS 1 xarm_msgs/CallResponse value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 6..262 bytes and is identified by
-- UWVMROS1_5d7eaafc40bbcfa49be097e3586b81df378518599c9a26ffbf3c596646c615f0.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsCallResponse = Ros1Xarm_msgsCallResponse
  {
    -- | \@brief xarm_msgs/CallResponse.ret: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsCallResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsCallResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/CallResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no
    -- | embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsCallResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsCallResponse_message :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/CallResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsCallResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsCallResponse :: Ros1Xarm_msgsCallResponse
defaultRos1Xarm_msgsCallResponse = Ros1Xarm_msgsCallResponse (0) (T.empty)
-- | \@brief Canonical codec identity of xarm_msgs/CallResponse.
-- \@details Exact identity UWVMROS1_5d7eaafc40bbcfa49be097e3586b81df378518599c9a26ffbf3c596646c615f0
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsCallResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsCallResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/CallResponse.
-- \@details Exact identity UWVMROS1_5d7eaafc40bbcfa49be097e3586b81df378518599c9a26ffbf3c596646c615f0
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsCallResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsCallResponseCodecIdentity = "UWVMROS1_5d7eaafc40bbcfa49be097e3586b81df378518599c9a26ffbf3c596646c615f0"
-- | \@brief Encode one complete xarm_msgs/CallResponse value.
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
-- \@see Ros1Xarm_msgsCallResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsCallResponse :: Ros1Xarm_msgsCallResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsCallResponse value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsCallResponse_ret value))
  b1 <- W.encodeText 256 True (ros1Xarm_msgsCallResponse_message value)
  W.bounded 262 [b0, b1]
-- | \@brief Read the ordered canonical fields of xarm_msgs/CallResponse.
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
-- \@see Ros1Xarm_msgsCallResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsCallResponse :: W.Decoder Ros1Xarm_msgsCallResponse
readRos1Xarm_msgsCallResponse = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- W.text 256 True
  let value = Ros1Xarm_msgsCallResponse a0 a1
  case encodeRos1Xarm_msgsCallResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/CallResponse value.
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
-- \@see Ros1Xarm_msgsCallResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsCallResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsCallResponse
decodeRos1Xarm_msgsCallResponse = W.runDecoder 262 readRos1Xarm_msgsCallResponse
instance Canonical Ros1Xarm_msgsCallResponse where
  maximumBytes _ = 262
  encodeValue = encodeRos1Xarm_msgsCallResponse
  readValue = readRos1Xarm_msgsCallResponse
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
-- | \@brief Complete ROS 1 xarm_msgs/ConfigToolModbusRequest value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 8..8 bytes and is identified by
-- UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsConfigToolModbusRequest = Ros1Xarm_msgsConfigToolModbusRequest
  {
    -- | \@brief xarm_msgs/ConfigToolModbusRequest.baud_rate: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsConfigToolModbusRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsConfigToolModbusRequest_baud_rate :: Int32
  ,
    -- | \@brief xarm_msgs/ConfigToolModbusRequest.timeout_ms: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsConfigToolModbusRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsConfigToolModbusRequest_timeout_ms :: Int32
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/ConfigToolModbusRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsConfigToolModbusRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsConfigToolModbusRequest :: Ros1Xarm_msgsConfigToolModbusRequest
defaultRos1Xarm_msgsConfigToolModbusRequest = Ros1Xarm_msgsConfigToolModbusRequest (0) (0)
-- | \@brief Canonical codec identity of xarm_msgs/ConfigToolModbusRequest.
-- \@details Exact identity UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsConfigToolModbusRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsConfigToolModbusRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/ConfigToolModbusRequest.
-- \@details Exact identity UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsConfigToolModbusRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsConfigToolModbusRequestCodecIdentity = "UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5"
-- | \@brief Encode one complete xarm_msgs/ConfigToolModbusRequest value.
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
-- \@see Ros1Xarm_msgsConfigToolModbusRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsConfigToolModbusRequest :: Ros1Xarm_msgsConfigToolModbusRequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsConfigToolModbusRequest value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros1Xarm_msgsConfigToolModbusRequest_baud_rate value))
  b1 <- W.encodeSigned 4 (fromIntegral (ros1Xarm_msgsConfigToolModbusRequest_timeout_ms value))
  W.bounded 8 [b0, b1]
-- | \@brief Read the ordered canonical fields of xarm_msgs/ConfigToolModbusRequest.
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
-- \@see Ros1Xarm_msgsConfigToolModbusRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsConfigToolModbusRequest :: W.Decoder Ros1Xarm_msgsConfigToolModbusRequest
readRos1Xarm_msgsConfigToolModbusRequest = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- fromIntegral <$> W.signed 4
  let value = Ros1Xarm_msgsConfigToolModbusRequest a0 a1
  case encodeRos1Xarm_msgsConfigToolModbusRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/ConfigToolModbusRequest value.
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
-- \@see Ros1Xarm_msgsConfigToolModbusRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsConfigToolModbusRequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsConfigToolModbusRequest
decodeRos1Xarm_msgsConfigToolModbusRequest = W.runDecoder 8 readRos1Xarm_msgsConfigToolModbusRequest
instance Canonical Ros1Xarm_msgsConfigToolModbusRequest where
  maximumBytes _ = 8
  encodeValue = encodeRos1Xarm_msgsConfigToolModbusRequest
  readValue = readRos1Xarm_msgsConfigToolModbusRequest
-- | \@brief Complete ROS 1 xarm_msgs/ConfigToolModbusResponse value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 6..262 bytes and is identified by
-- UWVMROS1_e9d6ed21b8c342e3740c8bc6b90980deea86c76926cc035e7e4f9d3a1aec32f9.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsConfigToolModbusResponse = Ros1Xarm_msgsConfigToolModbusResponse
  {
    -- | \@brief xarm_msgs/ConfigToolModbusResponse.message: string; each string is 0..256 bytes; strict
    -- | UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsConfigToolModbusResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsConfigToolModbusResponse_message :: T.Text
  ,
    -- | \@brief xarm_msgs/ConfigToolModbusResponse.ret: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsConfigToolModbusResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsConfigToolModbusResponse_ret :: Int16
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/ConfigToolModbusResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsConfigToolModbusResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsConfigToolModbusResponse :: Ros1Xarm_msgsConfigToolModbusResponse
defaultRos1Xarm_msgsConfigToolModbusResponse = Ros1Xarm_msgsConfigToolModbusResponse (T.empty) (0)
-- | \@brief Canonical codec identity of xarm_msgs/ConfigToolModbusResponse.
-- \@details Exact identity UWVMROS1_e9d6ed21b8c342e3740c8bc6b90980deea86c76926cc035e7e4f9d3a1aec32f9
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsConfigToolModbusResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsConfigToolModbusResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/ConfigToolModbusResponse.
-- \@details Exact identity UWVMROS1_e9d6ed21b8c342e3740c8bc6b90980deea86c76926cc035e7e4f9d3a1aec32f9
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsConfigToolModbusResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsConfigToolModbusResponseCodecIdentity = "UWVMROS1_e9d6ed21b8c342e3740c8bc6b90980deea86c76926cc035e7e4f9d3a1aec32f9"
-- | \@brief Encode one complete xarm_msgs/ConfigToolModbusResponse value.
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
-- \@see Ros1Xarm_msgsConfigToolModbusResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsConfigToolModbusResponse :: Ros1Xarm_msgsConfigToolModbusResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsConfigToolModbusResponse value = do
  b0 <- W.encodeText 256 True (ros1Xarm_msgsConfigToolModbusResponse_message value)
  b1 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsConfigToolModbusResponse_ret value))
  W.bounded 262 [b0, b1]
-- | \@brief Read the ordered canonical fields of xarm_msgs/ConfigToolModbusResponse.
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
-- \@see Ros1Xarm_msgsConfigToolModbusResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsConfigToolModbusResponse :: W.Decoder Ros1Xarm_msgsConfigToolModbusResponse
readRos1Xarm_msgsConfigToolModbusResponse = do
  a0 <- W.text 256 True
  a1 <- fromIntegral <$> W.signed 2
  let value = Ros1Xarm_msgsConfigToolModbusResponse a0 a1
  case encodeRos1Xarm_msgsConfigToolModbusResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/ConfigToolModbusResponse value.
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
-- \@see Ros1Xarm_msgsConfigToolModbusResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsConfigToolModbusResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsConfigToolModbusResponse
decodeRos1Xarm_msgsConfigToolModbusResponse = W.runDecoder 262 readRos1Xarm_msgsConfigToolModbusResponse
instance Canonical Ros1Xarm_msgsConfigToolModbusResponse where
  maximumBytes _ = 262
  encodeValue = encodeRos1Xarm_msgsConfigToolModbusResponse
  readValue = readRos1Xarm_msgsConfigToolModbusResponse
-- | \@brief Complete ROS 1 xarm_msgs/FtCaliLoadRequest value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 5..133 bytes and is identified by
-- UWVMROS1_d058b31f6d441d4323f30033cf67ef4c4567c5101094cffa900295f36d129167.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsFtCaliLoadRequest = Ros1Xarm_msgsFtCaliLoadRequest
  {
    -- | \@brief xarm_msgs/FtCaliLoadRequest.datas: float32; 0..32 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsFtCaliLoadRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsFtCaliLoadRequest_datas :: [Float]
  ,
    -- | \@brief xarm_msgs/FtCaliLoadRequest.association_setting_tcp_load: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsFtCaliLoadRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsFtCaliLoadRequest_association_setting_tcp_load :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/FtCaliLoadRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsFtCaliLoadRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsFtCaliLoadRequest :: Ros1Xarm_msgsFtCaliLoadRequest
defaultRos1Xarm_msgsFtCaliLoadRequest = Ros1Xarm_msgsFtCaliLoadRequest ([]) (False)
-- | \@brief Canonical codec identity of xarm_msgs/FtCaliLoadRequest.
-- \@details Exact identity UWVMROS1_d058b31f6d441d4323f30033cf67ef4c4567c5101094cffa900295f36d129167
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsFtCaliLoadRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsFtCaliLoadRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/FtCaliLoadRequest.
-- \@details Exact identity UWVMROS1_d058b31f6d441d4323f30033cf67ef4c4567c5101094cffa900295f36d129167
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsFtCaliLoadRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsFtCaliLoadRequestCodecIdentity = "UWVMROS1_d058b31f6d441d4323f30033cf67ef4c4567c5101094cffa900295f36d129167"
-- | \@brief Encode one complete xarm_msgs/FtCaliLoadRequest value.
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
-- \@see Ros1Xarm_msgsFtCaliLoadRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsFtCaliLoadRequest :: Ros1Xarm_msgsFtCaliLoadRequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsFtCaliLoadRequest value = do
  if length (ros1Xarm_msgsFtCaliLoadRequest_datas value) > 32 then Left 22 else Right ()
  prefix0 <- W.encodeCount 32 (length (ros1Xarm_msgsFtCaliLoadRequest_datas value))
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros1Xarm_msgsFtCaliLoadRequest_datas value)
  b1 <- W.encodeBool (ros1Xarm_msgsFtCaliLoadRequest_association_setting_tcp_load value)
  W.bounded 133 [prefix0, b0, b1]
-- | \@brief Read the ordered canonical fields of xarm_msgs/FtCaliLoadRequest.
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
-- \@see Ros1Xarm_msgsFtCaliLoadRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsFtCaliLoadRequest :: W.Decoder Ros1Xarm_msgsFtCaliLoadRequest
readRos1Xarm_msgsFtCaliLoadRequest = do
  count0 <- W.count 32
  a0 <- replicateM count0 (W.float32)
  a1 <- W.boolean
  let value = Ros1Xarm_msgsFtCaliLoadRequest a0 a1
  case encodeRos1Xarm_msgsFtCaliLoadRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/FtCaliLoadRequest value.
-- \@details Require the complete 5..133-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsFtCaliLoadRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsFtCaliLoadRequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsFtCaliLoadRequest
decodeRos1Xarm_msgsFtCaliLoadRequest = W.runDecoder 133 readRos1Xarm_msgsFtCaliLoadRequest
instance Canonical Ros1Xarm_msgsFtCaliLoadRequest where
  maximumBytes _ = 133
  encodeValue = encodeRos1Xarm_msgsFtCaliLoadRequest
  readValue = readRos1Xarm_msgsFtCaliLoadRequest
-- | \@brief Complete ROS 1 xarm_msgs/FtCaliLoadResponse value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 6..262 bytes and is identified by
-- UWVMROS1_2e1b2dd38c1fa2c7a36db848f2443e3cf68898ba48929e182f4f7652b310aef7.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsFtCaliLoadResponse = Ros1Xarm_msgsFtCaliLoadResponse
  {
    -- | \@brief xarm_msgs/FtCaliLoadResponse.ret: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsFtCaliLoadResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsFtCaliLoadResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/FtCaliLoadResponse.message: string; each string is 0..256 bytes; strict UTF-8
    -- | with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsFtCaliLoadResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsFtCaliLoadResponse_message :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/FtCaliLoadResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsFtCaliLoadResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsFtCaliLoadResponse :: Ros1Xarm_msgsFtCaliLoadResponse
defaultRos1Xarm_msgsFtCaliLoadResponse = Ros1Xarm_msgsFtCaliLoadResponse (0) (T.empty)
-- | \@brief Canonical codec identity of xarm_msgs/FtCaliLoadResponse.
-- \@details Exact identity UWVMROS1_2e1b2dd38c1fa2c7a36db848f2443e3cf68898ba48929e182f4f7652b310aef7
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsFtCaliLoadResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsFtCaliLoadResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/FtCaliLoadResponse.
-- \@details Exact identity UWVMROS1_2e1b2dd38c1fa2c7a36db848f2443e3cf68898ba48929e182f4f7652b310aef7
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsFtCaliLoadResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsFtCaliLoadResponseCodecIdentity = "UWVMROS1_2e1b2dd38c1fa2c7a36db848f2443e3cf68898ba48929e182f4f7652b310aef7"
-- | \@brief Encode one complete xarm_msgs/FtCaliLoadResponse value.
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
-- \@see Ros1Xarm_msgsFtCaliLoadResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsFtCaliLoadResponse :: Ros1Xarm_msgsFtCaliLoadResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsFtCaliLoadResponse value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsFtCaliLoadResponse_ret value))
  b1 <- W.encodeText 256 True (ros1Xarm_msgsFtCaliLoadResponse_message value)
  W.bounded 262 [b0, b1]
-- | \@brief Read the ordered canonical fields of xarm_msgs/FtCaliLoadResponse.
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
-- \@see Ros1Xarm_msgsFtCaliLoadResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsFtCaliLoadResponse :: W.Decoder Ros1Xarm_msgsFtCaliLoadResponse
readRos1Xarm_msgsFtCaliLoadResponse = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- W.text 256 True
  let value = Ros1Xarm_msgsFtCaliLoadResponse a0 a1
  case encodeRos1Xarm_msgsFtCaliLoadResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/FtCaliLoadResponse value.
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
-- \@see Ros1Xarm_msgsFtCaliLoadResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsFtCaliLoadResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsFtCaliLoadResponse
decodeRos1Xarm_msgsFtCaliLoadResponse = W.runDecoder 262 readRos1Xarm_msgsFtCaliLoadResponse
instance Canonical Ros1Xarm_msgsFtCaliLoadResponse where
  maximumBytes _ = 262
  encodeValue = encodeRos1Xarm_msgsFtCaliLoadResponse
  readValue = readRos1Xarm_msgsFtCaliLoadResponse
-- | \@brief Complete ROS 1 xarm_msgs/FtIdenLoadRequest value.
-- \@details All 0 declared fields are retained in source order. The canonical representation occupies
-- 0..0 bytes and is identified by
-- UWVMROS1_bf1ee0abaac38c9f3cd68e5c9a463180413260be7a8c21efe8441c3c7188396c.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsFtIdenLoadRequest = Ros1Xarm_msgsFtIdenLoadRequest deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/FtIdenLoadRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsFtIdenLoadRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsFtIdenLoadRequest :: Ros1Xarm_msgsFtIdenLoadRequest
defaultRos1Xarm_msgsFtIdenLoadRequest = Ros1Xarm_msgsFtIdenLoadRequest 
-- | \@brief Canonical codec identity of xarm_msgs/FtIdenLoadRequest.
-- \@details Exact identity UWVMROS1_bf1ee0abaac38c9f3cd68e5c9a463180413260be7a8c21efe8441c3c7188396c
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsFtIdenLoadRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsFtIdenLoadRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/FtIdenLoadRequest.
-- \@details Exact identity UWVMROS1_bf1ee0abaac38c9f3cd68e5c9a463180413260be7a8c21efe8441c3c7188396c
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsFtIdenLoadRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsFtIdenLoadRequestCodecIdentity = "UWVMROS1_bf1ee0abaac38c9f3cd68e5c9a463180413260be7a8c21efe8441c3c7188396c"
-- | \@brief Encode one complete xarm_msgs/FtIdenLoadRequest value.
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
-- \@see Ros1Xarm_msgsFtIdenLoadRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsFtIdenLoadRequest :: Ros1Xarm_msgsFtIdenLoadRequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsFtIdenLoadRequest value = do
  W.bounded 0 []
-- | \@brief Read the ordered canonical fields of xarm_msgs/FtIdenLoadRequest.
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
-- \@see Ros1Xarm_msgsFtIdenLoadRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsFtIdenLoadRequest :: W.Decoder Ros1Xarm_msgsFtIdenLoadRequest
readRos1Xarm_msgsFtIdenLoadRequest = do
  let value = Ros1Xarm_msgsFtIdenLoadRequest 
  case encodeRos1Xarm_msgsFtIdenLoadRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/FtIdenLoadRequest value.
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
-- \@see Ros1Xarm_msgsFtIdenLoadRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsFtIdenLoadRequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsFtIdenLoadRequest
decodeRos1Xarm_msgsFtIdenLoadRequest = W.runDecoder 0 readRos1Xarm_msgsFtIdenLoadRequest
instance Canonical Ros1Xarm_msgsFtIdenLoadRequest where
  maximumBytes _ = 0
  encodeValue = encodeRos1Xarm_msgsFtIdenLoadRequest
  readValue = readRos1Xarm_msgsFtIdenLoadRequest
-- | \@brief Complete ROS 1 xarm_msgs/FtIdenLoadResponse value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies
-- 10..394 bytes and is identified by
-- UWVMROS1_e5412aacedb3c2e3de29703081a744963bc0168778224ccd297511a49f2f67b8.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsFtIdenLoadResponse = Ros1Xarm_msgsFtIdenLoadResponse
  {
    -- | \@brief xarm_msgs/FtIdenLoadResponse.ret: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsFtIdenLoadResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsFtIdenLoadResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/FtIdenLoadResponse.message: string; each string is 0..256 bytes; strict UTF-8
    -- | with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsFtIdenLoadResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsFtIdenLoadResponse_message :: T.Text
  ,
    -- | \@brief xarm_msgs/FtIdenLoadResponse.datas: float32; 0..32 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsFtIdenLoadResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsFtIdenLoadResponse_datas :: [Float]
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/FtIdenLoadResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsFtIdenLoadResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsFtIdenLoadResponse :: Ros1Xarm_msgsFtIdenLoadResponse
defaultRos1Xarm_msgsFtIdenLoadResponse = Ros1Xarm_msgsFtIdenLoadResponse (0) (T.empty) ([])
-- | \@brief Canonical codec identity of xarm_msgs/FtIdenLoadResponse.
-- \@details Exact identity UWVMROS1_e5412aacedb3c2e3de29703081a744963bc0168778224ccd297511a49f2f67b8
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsFtIdenLoadResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsFtIdenLoadResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/FtIdenLoadResponse.
-- \@details Exact identity UWVMROS1_e5412aacedb3c2e3de29703081a744963bc0168778224ccd297511a49f2f67b8
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsFtIdenLoadResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsFtIdenLoadResponseCodecIdentity = "UWVMROS1_e5412aacedb3c2e3de29703081a744963bc0168778224ccd297511a49f2f67b8"
-- | \@brief Encode one complete xarm_msgs/FtIdenLoadResponse value.
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
-- \@see Ros1Xarm_msgsFtIdenLoadResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsFtIdenLoadResponse :: Ros1Xarm_msgsFtIdenLoadResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsFtIdenLoadResponse value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsFtIdenLoadResponse_ret value))
  b1 <- W.encodeText 256 True (ros1Xarm_msgsFtIdenLoadResponse_message value)
  if length (ros1Xarm_msgsFtIdenLoadResponse_datas value) > 32 then Left 22 else Right ()
  prefix2 <- W.encodeCount 32 (length (ros1Xarm_msgsFtIdenLoadResponse_datas value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros1Xarm_msgsFtIdenLoadResponse_datas value)
  W.bounded 394 [b0, b1, prefix2, b2]
-- | \@brief Read the ordered canonical fields of xarm_msgs/FtIdenLoadResponse.
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
-- \@see Ros1Xarm_msgsFtIdenLoadResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsFtIdenLoadResponse :: W.Decoder Ros1Xarm_msgsFtIdenLoadResponse
readRos1Xarm_msgsFtIdenLoadResponse = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- W.text 256 True
  count2 <- W.count 32
  a2 <- replicateM count2 (W.float32)
  let value = Ros1Xarm_msgsFtIdenLoadResponse a0 a1 a2
  case encodeRos1Xarm_msgsFtIdenLoadResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/FtIdenLoadResponse value.
-- \@details Require the complete 10..394-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsFtIdenLoadResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsFtIdenLoadResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsFtIdenLoadResponse
decodeRos1Xarm_msgsFtIdenLoadResponse = W.runDecoder 394 readRos1Xarm_msgsFtIdenLoadResponse
instance Canonical Ros1Xarm_msgsFtIdenLoadResponse where
  maximumBytes _ = 394
  encodeValue = encodeRos1Xarm_msgsFtIdenLoadResponse
  readValue = readRos1Xarm_msgsFtIdenLoadResponse
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
-- | \@brief Complete ROS 1 xarm_msgs/GetControllerDigitalIORequest value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 2..2 bytes and is identified by
-- UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsGetControllerDigitalIORequest = Ros1Xarm_msgsGetControllerDigitalIORequest
  {
    -- | \@brief xarm_msgs/GetControllerDigitalIORequest.io_num: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetControllerDigitalIORequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGetControllerDigitalIORequest_io_num :: Int16
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/GetControllerDigitalIORequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsGetControllerDigitalIORequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsGetControllerDigitalIORequest :: Ros1Xarm_msgsGetControllerDigitalIORequest
defaultRos1Xarm_msgsGetControllerDigitalIORequest = Ros1Xarm_msgsGetControllerDigitalIORequest (0)
-- | \@brief Canonical codec identity of xarm_msgs/GetControllerDigitalIORequest.
-- \@details Exact identity UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGetControllerDigitalIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGetControllerDigitalIORequestCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/GetControllerDigitalIORequest.
-- \@details Exact identity UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGetControllerDigitalIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGetControllerDigitalIORequestCodecIdentity = "UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c"
-- | \@brief Encode one complete xarm_msgs/GetControllerDigitalIORequest value.
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
-- \@see Ros1Xarm_msgsGetControllerDigitalIORequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsGetControllerDigitalIORequest :: Ros1Xarm_msgsGetControllerDigitalIORequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsGetControllerDigitalIORequest value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsGetControllerDigitalIORequest_io_num value))
  W.bounded 2 [b0]
-- | \@brief Read the ordered canonical fields of xarm_msgs/GetControllerDigitalIORequest.
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
-- \@see Ros1Xarm_msgsGetControllerDigitalIORequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsGetControllerDigitalIORequest :: W.Decoder Ros1Xarm_msgsGetControllerDigitalIORequest
readRos1Xarm_msgsGetControllerDigitalIORequest = do
  a0 <- fromIntegral <$> W.signed 2
  let value = Ros1Xarm_msgsGetControllerDigitalIORequest a0
  case encodeRos1Xarm_msgsGetControllerDigitalIORequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/GetControllerDigitalIORequest value.
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
-- \@see Ros1Xarm_msgsGetControllerDigitalIORequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsGetControllerDigitalIORequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsGetControllerDigitalIORequest
decodeRos1Xarm_msgsGetControllerDigitalIORequest = W.runDecoder 2 readRos1Xarm_msgsGetControllerDigitalIORequest
instance Canonical Ros1Xarm_msgsGetControllerDigitalIORequest where
  maximumBytes _ = 2
  encodeValue = encodeRos1Xarm_msgsGetControllerDigitalIORequest
  readValue = readRos1Xarm_msgsGetControllerDigitalIORequest
-- | \@brief Complete ROS 1 xarm_msgs/GetControllerDigitalIOResponse value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies
-- 8..264 bytes and is identified by
-- UWVMROS1_bf0a756d069d7c15c2e59f1934db02c1516bb915626c7a59058c355ebfa8a161.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsGetControllerDigitalIOResponse = Ros1Xarm_msgsGetControllerDigitalIOResponse
  {
    -- | \@brief xarm_msgs/GetControllerDigitalIOResponse.ret: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetControllerDigitalIOResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGetControllerDigitalIOResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/GetControllerDigitalIOResponse.value: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetControllerDigitalIOResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGetControllerDigitalIOResponse_value :: Int16
  ,
    -- | \@brief xarm_msgs/GetControllerDigitalIOResponse.message: string; each string is 0..256 bytes;
    -- | strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetControllerDigitalIOResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGetControllerDigitalIOResponse_message :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/GetControllerDigitalIOResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsGetControllerDigitalIOResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsGetControllerDigitalIOResponse :: Ros1Xarm_msgsGetControllerDigitalIOResponse
defaultRos1Xarm_msgsGetControllerDigitalIOResponse =
  Ros1Xarm_msgsGetControllerDigitalIOResponse
    (0)
    (0)
    (T.empty)
-- | \@brief Canonical codec identity of xarm_msgs/GetControllerDigitalIOResponse.
-- \@details Exact identity UWVMROS1_bf0a756d069d7c15c2e59f1934db02c1516bb915626c7a59058c355ebfa8a161
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGetControllerDigitalIOResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGetControllerDigitalIOResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/GetControllerDigitalIOResponse.
-- \@details Exact identity UWVMROS1_bf0a756d069d7c15c2e59f1934db02c1516bb915626c7a59058c355ebfa8a161
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGetControllerDigitalIOResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGetControllerDigitalIOResponseCodecIdentity = "UWVMROS1_bf0a756d069d7c15c2e59f1934db02c1516bb915626c7a59058c355ebfa8a161"
-- | \@brief Encode one complete xarm_msgs/GetControllerDigitalIOResponse value.
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
-- \@see Ros1Xarm_msgsGetControllerDigitalIOResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsGetControllerDigitalIOResponse :: Ros1Xarm_msgsGetControllerDigitalIOResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsGetControllerDigitalIOResponse value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsGetControllerDigitalIOResponse_ret value))
  b1 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsGetControllerDigitalIOResponse_value value))
  b2 <- W.encodeText 256 True (ros1Xarm_msgsGetControllerDigitalIOResponse_message value)
  W.bounded 264 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of xarm_msgs/GetControllerDigitalIOResponse.
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
-- \@see Ros1Xarm_msgsGetControllerDigitalIOResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsGetControllerDigitalIOResponse :: W.Decoder Ros1Xarm_msgsGetControllerDigitalIOResponse
readRos1Xarm_msgsGetControllerDigitalIOResponse = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- fromIntegral <$> W.signed 2
  a2 <- W.text 256 True
  let value = Ros1Xarm_msgsGetControllerDigitalIOResponse a0 a1 a2
  case encodeRos1Xarm_msgsGetControllerDigitalIOResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/GetControllerDigitalIOResponse value.
-- \@details Require the complete 8..264-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsGetControllerDigitalIOResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsGetControllerDigitalIOResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsGetControllerDigitalIOResponse
decodeRos1Xarm_msgsGetControllerDigitalIOResponse = W.runDecoder 264 readRos1Xarm_msgsGetControllerDigitalIOResponse
instance Canonical Ros1Xarm_msgsGetControllerDigitalIOResponse where
  maximumBytes _ = 264
  encodeValue = encodeRos1Xarm_msgsGetControllerDigitalIOResponse
  readValue = readRos1Xarm_msgsGetControllerDigitalIOResponse
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
-- | \@brief Complete ROS 1 xarm_msgs/GetErrRequest value.
-- \@details All 0 declared fields are retained in source order. The canonical representation occupies
-- 0..0 bytes and is identified by
-- UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsGetErrRequest = Ros1Xarm_msgsGetErrRequest deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/GetErrRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsGetErrRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsGetErrRequest :: Ros1Xarm_msgsGetErrRequest
defaultRos1Xarm_msgsGetErrRequest = Ros1Xarm_msgsGetErrRequest 
-- | \@brief Canonical codec identity of xarm_msgs/GetErrRequest.
-- \@details Exact identity UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGetErrRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGetErrRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/GetErrRequest.
-- \@details Exact identity UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGetErrRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGetErrRequestCodecIdentity = "UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531"
-- | \@brief Encode one complete xarm_msgs/GetErrRequest value.
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
-- \@see Ros1Xarm_msgsGetErrRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsGetErrRequest :: Ros1Xarm_msgsGetErrRequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsGetErrRequest value = do
  W.bounded 0 []
-- | \@brief Read the ordered canonical fields of xarm_msgs/GetErrRequest.
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
-- \@see Ros1Xarm_msgsGetErrRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsGetErrRequest :: W.Decoder Ros1Xarm_msgsGetErrRequest
readRos1Xarm_msgsGetErrRequest = do
  let value = Ros1Xarm_msgsGetErrRequest 
  case encodeRos1Xarm_msgsGetErrRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/GetErrRequest value.
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
-- \@see Ros1Xarm_msgsGetErrRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsGetErrRequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsGetErrRequest
decodeRos1Xarm_msgsGetErrRequest = W.runDecoder 0 readRos1Xarm_msgsGetErrRequest
instance Canonical Ros1Xarm_msgsGetErrRequest where
  maximumBytes _ = 0
  encodeValue = encodeRos1Xarm_msgsGetErrRequest
  readValue = readRos1Xarm_msgsGetErrRequest
-- | \@brief Complete ROS 1 xarm_msgs/GetErrResponse value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies
-- 8..264 bytes and is identified by
-- UWVMROS1_7e592e5a0ce00323b48608ffd371da5ec37deddb35aa74c4a1acd3af6bc7b5de.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsGetErrResponse = Ros1Xarm_msgsGetErrResponse
  {
    -- | \@brief xarm_msgs/GetErrResponse.err: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetErrResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGetErrResponse_err :: Int16
  ,
    -- | \@brief xarm_msgs/GetErrResponse.ret: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetErrResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGetErrResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/GetErrResponse.message: string; each string is 0..256 bytes; strict UTF-8 with
    -- | no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetErrResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGetErrResponse_message :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/GetErrResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsGetErrResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsGetErrResponse :: Ros1Xarm_msgsGetErrResponse
defaultRos1Xarm_msgsGetErrResponse = Ros1Xarm_msgsGetErrResponse (0) (0) (T.empty)
-- | \@brief Canonical codec identity of xarm_msgs/GetErrResponse.
-- \@details Exact identity UWVMROS1_7e592e5a0ce00323b48608ffd371da5ec37deddb35aa74c4a1acd3af6bc7b5de
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGetErrResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGetErrResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/GetErrResponse.
-- \@details Exact identity UWVMROS1_7e592e5a0ce00323b48608ffd371da5ec37deddb35aa74c4a1acd3af6bc7b5de
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGetErrResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGetErrResponseCodecIdentity = "UWVMROS1_7e592e5a0ce00323b48608ffd371da5ec37deddb35aa74c4a1acd3af6bc7b5de"
-- | \@brief Encode one complete xarm_msgs/GetErrResponse value.
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
-- \@see Ros1Xarm_msgsGetErrResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsGetErrResponse :: Ros1Xarm_msgsGetErrResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsGetErrResponse value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsGetErrResponse_err value))
  b1 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsGetErrResponse_ret value))
  b2 <- W.encodeText 256 True (ros1Xarm_msgsGetErrResponse_message value)
  W.bounded 264 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of xarm_msgs/GetErrResponse.
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
-- \@see Ros1Xarm_msgsGetErrResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsGetErrResponse :: W.Decoder Ros1Xarm_msgsGetErrResponse
readRos1Xarm_msgsGetErrResponse = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- fromIntegral <$> W.signed 2
  a2 <- W.text 256 True
  let value = Ros1Xarm_msgsGetErrResponse a0 a1 a2
  case encodeRos1Xarm_msgsGetErrResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/GetErrResponse value.
-- \@details Require the complete 8..264-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsGetErrResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsGetErrResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsGetErrResponse
decodeRos1Xarm_msgsGetErrResponse = W.runDecoder 264 readRos1Xarm_msgsGetErrResponse
instance Canonical Ros1Xarm_msgsGetErrResponse where
  maximumBytes _ = 264
  encodeValue = encodeRos1Xarm_msgsGetErrResponse
  readValue = readRos1Xarm_msgsGetErrResponse
-- | \@brief Complete ROS 1 xarm_msgs/GetFloat32ListRequest value.
-- \@details All 0 declared fields are retained in source order. The canonical representation occupies
-- 0..0 bytes and is identified by
-- UWVMROS1_ca3226f94eafedde7b83757e0f679a8866b6d47906b22500736b8425a1c948db.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsGetFloat32ListRequest = Ros1Xarm_msgsGetFloat32ListRequest deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/GetFloat32ListRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsGetFloat32ListRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsGetFloat32ListRequest :: Ros1Xarm_msgsGetFloat32ListRequest
defaultRos1Xarm_msgsGetFloat32ListRequest = Ros1Xarm_msgsGetFloat32ListRequest 
-- | \@brief Canonical codec identity of xarm_msgs/GetFloat32ListRequest.
-- \@details Exact identity UWVMROS1_ca3226f94eafedde7b83757e0f679a8866b6d47906b22500736b8425a1c948db
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGetFloat32ListRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGetFloat32ListRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/GetFloat32ListRequest.
-- \@details Exact identity UWVMROS1_ca3226f94eafedde7b83757e0f679a8866b6d47906b22500736b8425a1c948db
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGetFloat32ListRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGetFloat32ListRequestCodecIdentity = "UWVMROS1_ca3226f94eafedde7b83757e0f679a8866b6d47906b22500736b8425a1c948db"
-- | \@brief Encode one complete xarm_msgs/GetFloat32ListRequest value.
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
-- \@see Ros1Xarm_msgsGetFloat32ListRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsGetFloat32ListRequest :: Ros1Xarm_msgsGetFloat32ListRequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsGetFloat32ListRequest value = do
  W.bounded 0 []
-- | \@brief Read the ordered canonical fields of xarm_msgs/GetFloat32ListRequest.
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
-- \@see Ros1Xarm_msgsGetFloat32ListRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsGetFloat32ListRequest :: W.Decoder Ros1Xarm_msgsGetFloat32ListRequest
readRos1Xarm_msgsGetFloat32ListRequest = do
  let value = Ros1Xarm_msgsGetFloat32ListRequest 
  case encodeRos1Xarm_msgsGetFloat32ListRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/GetFloat32ListRequest value.
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
-- \@see Ros1Xarm_msgsGetFloat32ListRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsGetFloat32ListRequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsGetFloat32ListRequest
decodeRos1Xarm_msgsGetFloat32ListRequest = W.runDecoder 0 readRos1Xarm_msgsGetFloat32ListRequest
instance Canonical Ros1Xarm_msgsGetFloat32ListRequest where
  maximumBytes _ = 0
  encodeValue = encodeRos1Xarm_msgsGetFloat32ListRequest
  readValue = readRos1Xarm_msgsGetFloat32ListRequest
-- | \@brief Complete ROS 1 xarm_msgs/GetFloat32ListResponse value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies
-- 10..394 bytes and is identified by
-- UWVMROS1_670267e409588697ce5fbde5d7b23d4e7e30fc301f32c92b3a26308d8db3d8e2.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsGetFloat32ListResponse = Ros1Xarm_msgsGetFloat32ListResponse
  {
    -- | \@brief xarm_msgs/GetFloat32ListResponse.ret: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetFloat32ListResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGetFloat32ListResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/GetFloat32ListResponse.message: string; each string is 0..256 bytes; strict
    -- | UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetFloat32ListResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGetFloat32ListResponse_message :: T.Text
  ,
    -- | \@brief xarm_msgs/GetFloat32ListResponse.datas: float32; 0..32 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetFloat32ListResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGetFloat32ListResponse_datas :: [Float]
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/GetFloat32ListResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsGetFloat32ListResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsGetFloat32ListResponse :: Ros1Xarm_msgsGetFloat32ListResponse
defaultRos1Xarm_msgsGetFloat32ListResponse = Ros1Xarm_msgsGetFloat32ListResponse (0) (T.empty) ([])
-- | \@brief Canonical codec identity of xarm_msgs/GetFloat32ListResponse.
-- \@details Exact identity UWVMROS1_670267e409588697ce5fbde5d7b23d4e7e30fc301f32c92b3a26308d8db3d8e2
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGetFloat32ListResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGetFloat32ListResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/GetFloat32ListResponse.
-- \@details Exact identity UWVMROS1_670267e409588697ce5fbde5d7b23d4e7e30fc301f32c92b3a26308d8db3d8e2
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGetFloat32ListResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGetFloat32ListResponseCodecIdentity = "UWVMROS1_670267e409588697ce5fbde5d7b23d4e7e30fc301f32c92b3a26308d8db3d8e2"
-- | \@brief Encode one complete xarm_msgs/GetFloat32ListResponse value.
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
-- \@see Ros1Xarm_msgsGetFloat32ListResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsGetFloat32ListResponse :: Ros1Xarm_msgsGetFloat32ListResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsGetFloat32ListResponse value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsGetFloat32ListResponse_ret value))
  b1 <- W.encodeText 256 True (ros1Xarm_msgsGetFloat32ListResponse_message value)
  if length (ros1Xarm_msgsGetFloat32ListResponse_datas value) > 32 then Left 22 else Right ()
  prefix2 <- W.encodeCount 32 (length (ros1Xarm_msgsGetFloat32ListResponse_datas value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros1Xarm_msgsGetFloat32ListResponse_datas value)
  W.bounded 394 [b0, b1, prefix2, b2]
-- | \@brief Read the ordered canonical fields of xarm_msgs/GetFloat32ListResponse.
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
-- \@see Ros1Xarm_msgsGetFloat32ListResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsGetFloat32ListResponse :: W.Decoder Ros1Xarm_msgsGetFloat32ListResponse
readRos1Xarm_msgsGetFloat32ListResponse = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- W.text 256 True
  count2 <- W.count 32
  a2 <- replicateM count2 (W.float32)
  let value = Ros1Xarm_msgsGetFloat32ListResponse a0 a1 a2
  case encodeRos1Xarm_msgsGetFloat32ListResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/GetFloat32ListResponse value.
-- \@details Require the complete 10..394-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsGetFloat32ListResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsGetFloat32ListResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsGetFloat32ListResponse
decodeRos1Xarm_msgsGetFloat32ListResponse = W.runDecoder 394 readRos1Xarm_msgsGetFloat32ListResponse
instance Canonical Ros1Xarm_msgsGetFloat32ListResponse where
  maximumBytes _ = 394
  encodeValue = encodeRos1Xarm_msgsGetFloat32ListResponse
  readValue = readRos1Xarm_msgsGetFloat32ListResponse
-- | \@brief Complete ROS 1 xarm_msgs/GetInt32Request value.
-- \@details All 0 declared fields are retained in source order. The canonical representation occupies
-- 0..0 bytes and is identified by
-- UWVMROS1_82ede36edbb49a70ed84663fdf0361925a8008f7c7d249fa47dea437ad99a470.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsGetInt32Request = Ros1Xarm_msgsGetInt32Request deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/GetInt32Request.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsGetInt32Request; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsGetInt32Request :: Ros1Xarm_msgsGetInt32Request
defaultRos1Xarm_msgsGetInt32Request = Ros1Xarm_msgsGetInt32Request 
-- | \@brief Canonical codec identity of xarm_msgs/GetInt32Request.
-- \@details Exact identity UWVMROS1_82ede36edbb49a70ed84663fdf0361925a8008f7c7d249fa47dea437ad99a470
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGetInt32Request; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGetInt32RequestCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/GetInt32Request.
-- \@details Exact identity UWVMROS1_82ede36edbb49a70ed84663fdf0361925a8008f7c7d249fa47dea437ad99a470
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGetInt32Request; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGetInt32RequestCodecIdentity = "UWVMROS1_82ede36edbb49a70ed84663fdf0361925a8008f7c7d249fa47dea437ad99a470"
-- | \@brief Encode one complete xarm_msgs/GetInt32Request value.
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
-- \@see Ros1Xarm_msgsGetInt32Request; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsGetInt32Request :: Ros1Xarm_msgsGetInt32Request -> Either Word32 B.ByteString
encodeRos1Xarm_msgsGetInt32Request value = do
  W.bounded 0 []
-- | \@brief Read the ordered canonical fields of xarm_msgs/GetInt32Request.
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
-- \@see Ros1Xarm_msgsGetInt32Request; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsGetInt32Request :: W.Decoder Ros1Xarm_msgsGetInt32Request
readRos1Xarm_msgsGetInt32Request = do
  let value = Ros1Xarm_msgsGetInt32Request 
  case encodeRos1Xarm_msgsGetInt32Request value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/GetInt32Request value.
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
-- \@see Ros1Xarm_msgsGetInt32Request; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsGetInt32Request :: B.ByteString -> Either Word32 Ros1Xarm_msgsGetInt32Request
decodeRos1Xarm_msgsGetInt32Request = W.runDecoder 0 readRos1Xarm_msgsGetInt32Request
instance Canonical Ros1Xarm_msgsGetInt32Request where
  maximumBytes _ = 0
  encodeValue = encodeRos1Xarm_msgsGetInt32Request
  readValue = readRos1Xarm_msgsGetInt32Request
-- | \@brief Complete ROS 1 xarm_msgs/GetInt32Response value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies
-- 10..266 bytes and is identified by
-- UWVMROS1_904b69916be1ab0a927b39cfc99a056b7804dc1f56a678b9f38fc532f337720d.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsGetInt32Response = Ros1Xarm_msgsGetInt32Response
  {
    -- | \@brief xarm_msgs/GetInt32Response.data: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetInt32Response; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGetInt32Response_data :: Int32
  ,
    -- | \@brief xarm_msgs/GetInt32Response.ret: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetInt32Response; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGetInt32Response_ret :: Int16
  ,
    -- | \@brief xarm_msgs/GetInt32Response.message: string; each string is 0..256 bytes; strict UTF-8
    -- | with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetInt32Response; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGetInt32Response_message :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/GetInt32Response.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsGetInt32Response; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsGetInt32Response :: Ros1Xarm_msgsGetInt32Response
defaultRos1Xarm_msgsGetInt32Response = Ros1Xarm_msgsGetInt32Response (0) (0) (T.empty)
-- | \@brief Canonical codec identity of xarm_msgs/GetInt32Response.
-- \@details Exact identity UWVMROS1_904b69916be1ab0a927b39cfc99a056b7804dc1f56a678b9f38fc532f337720d
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGetInt32Response; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGetInt32ResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/GetInt32Response.
-- \@details Exact identity UWVMROS1_904b69916be1ab0a927b39cfc99a056b7804dc1f56a678b9f38fc532f337720d
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGetInt32Response; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGetInt32ResponseCodecIdentity = "UWVMROS1_904b69916be1ab0a927b39cfc99a056b7804dc1f56a678b9f38fc532f337720d"
-- | \@brief Encode one complete xarm_msgs/GetInt32Response value.
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
-- \@see Ros1Xarm_msgsGetInt32Response; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsGetInt32Response :: Ros1Xarm_msgsGetInt32Response -> Either Word32 B.ByteString
encodeRos1Xarm_msgsGetInt32Response value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros1Xarm_msgsGetInt32Response_data value))
  b1 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsGetInt32Response_ret value))
  b2 <- W.encodeText 256 True (ros1Xarm_msgsGetInt32Response_message value)
  W.bounded 266 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of xarm_msgs/GetInt32Response.
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
-- \@see Ros1Xarm_msgsGetInt32Response; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsGetInt32Response :: W.Decoder Ros1Xarm_msgsGetInt32Response
readRos1Xarm_msgsGetInt32Response = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- fromIntegral <$> W.signed 2
  a2 <- W.text 256 True
  let value = Ros1Xarm_msgsGetInt32Response a0 a1 a2
  case encodeRos1Xarm_msgsGetInt32Response value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/GetInt32Response value.
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
-- \@see Ros1Xarm_msgsGetInt32Response; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsGetInt32Response :: B.ByteString -> Either Word32 Ros1Xarm_msgsGetInt32Response
decodeRos1Xarm_msgsGetInt32Response = W.runDecoder 266 readRos1Xarm_msgsGetInt32Response
instance Canonical Ros1Xarm_msgsGetInt32Response where
  maximumBytes _ = 266
  encodeValue = encodeRos1Xarm_msgsGetInt32Response
  readValue = readRos1Xarm_msgsGetInt32Response
-- | \@brief Complete ROS 1 xarm_msgs/GetSetModbusDataRequest value.
-- \@details All 5 declared fields are retained in source order. The canonical representation occupies
-- 9..4105 bytes and is identified by
-- UWVMROS1_e247cbe79230d6cb1dc68a913d22fd49fd2c8f261b40d70a4a8fcd07105d5cb7.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsGetSetModbusDataRequest = Ros1Xarm_msgsGetSetModbusDataRequest
  {
    -- | \@brief xarm_msgs/GetSetModbusDataRequest.send_data: uint8; 0..4096 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGetSetModbusDataRequest_send_data :: [Word8]
  ,
    -- | \@brief xarm_msgs/GetSetModbusDataRequest.respond_len: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGetSetModbusDataRequest_respond_len :: Int16
  ,
    -- | \@brief xarm_msgs/GetSetModbusDataRequest.host_id: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGetSetModbusDataRequest_host_id :: Word8
  ,
    -- | \@brief xarm_msgs/GetSetModbusDataRequest.is_transparent_transmission: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGetSetModbusDataRequest_is_transparent_transmission :: Bool
  ,
    -- | \@brief xarm_msgs/GetSetModbusDataRequest.use_503_port: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGetSetModbusDataRequest_use_503_port :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/GetSetModbusDataRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsGetSetModbusDataRequest :: Ros1Xarm_msgsGetSetModbusDataRequest
defaultRos1Xarm_msgsGetSetModbusDataRequest =
  Ros1Xarm_msgsGetSetModbusDataRequest
    ([])
    (0)
    (0)
    (False)
    (False)
-- | \@brief Canonical codec identity of xarm_msgs/GetSetModbusDataRequest.
-- \@details Exact identity UWVMROS1_e247cbe79230d6cb1dc68a913d22fd49fd2c8f261b40d70a4a8fcd07105d5cb7
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGetSetModbusDataRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/GetSetModbusDataRequest.
-- \@details Exact identity UWVMROS1_e247cbe79230d6cb1dc68a913d22fd49fd2c8f261b40d70a4a8fcd07105d5cb7
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGetSetModbusDataRequestCodecIdentity = "UWVMROS1_e247cbe79230d6cb1dc68a913d22fd49fd2c8f261b40d70a4a8fcd07105d5cb7"
-- | \@brief Encode one complete xarm_msgs/GetSetModbusDataRequest value.
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
-- \@see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsGetSetModbusDataRequest :: Ros1Xarm_msgsGetSetModbusDataRequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsGetSetModbusDataRequest value = do
  if length (ros1Xarm_msgsGetSetModbusDataRequest_send_data value) > 4096 then Left 22 else Right ()
  prefix0 <- W.encodeCount 4096 (length (ros1Xarm_msgsGetSetModbusDataRequest_send_data value))
  b0 <- B.concat <$> mapM (\e -> W.encodeUnsigned 1 (fromIntegral (e))) (ros1Xarm_msgsGetSetModbusDataRequest_send_data value)
  b1 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsGetSetModbusDataRequest_respond_len value))
  b2 <- W.encodeUnsigned 1 (fromIntegral (ros1Xarm_msgsGetSetModbusDataRequest_host_id value))
  b3 <- W.encodeBool (ros1Xarm_msgsGetSetModbusDataRequest_is_transparent_transmission value)
  b4 <- W.encodeBool (ros1Xarm_msgsGetSetModbusDataRequest_use_503_port value)
  W.bounded 4105 [prefix0, b0, b1, b2, b3, b4]
-- | \@brief Read the ordered canonical fields of xarm_msgs/GetSetModbusDataRequest.
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
-- \@see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsGetSetModbusDataRequest :: W.Decoder Ros1Xarm_msgsGetSetModbusDataRequest
readRos1Xarm_msgsGetSetModbusDataRequest = do
  count0 <- W.count 4096
  a0 <- replicateM count0 (fromIntegral <$> W.unsigned 1)
  a1 <- fromIntegral <$> W.signed 2
  a2 <- fromIntegral <$> W.unsigned 1
  a3 <- W.boolean
  a4 <- W.boolean
  let value = Ros1Xarm_msgsGetSetModbusDataRequest a0 a1 a2 a3 a4
  case encodeRos1Xarm_msgsGetSetModbusDataRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/GetSetModbusDataRequest value.
-- \@details Require the complete 9..4105-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsGetSetModbusDataRequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsGetSetModbusDataRequest
decodeRos1Xarm_msgsGetSetModbusDataRequest = W.runDecoder 4105 readRos1Xarm_msgsGetSetModbusDataRequest
instance Canonical Ros1Xarm_msgsGetSetModbusDataRequest where
  maximumBytes _ = 4105
  encodeValue = encodeRos1Xarm_msgsGetSetModbusDataRequest
  readValue = readRos1Xarm_msgsGetSetModbusDataRequest
-- | \@brief Complete ROS 1 xarm_msgs/GetSetModbusDataResponse value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies
-- 10..4362 bytes and is identified by
-- UWVMROS1_22afbef5c743fc643dcfb5bc32ef176e0de637a128ba6050cf320ebf80294ead.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsGetSetModbusDataResponse = Ros1Xarm_msgsGetSetModbusDataResponse
  {
    -- | \@brief xarm_msgs/GetSetModbusDataResponse.ret: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetSetModbusDataResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGetSetModbusDataResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/GetSetModbusDataResponse.message: string; each string is 0..256 bytes; strict
    -- | UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetSetModbusDataResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGetSetModbusDataResponse_message :: T.Text
  ,
    -- | \@brief xarm_msgs/GetSetModbusDataResponse.respond_data: uint8; 0..4096 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGetSetModbusDataResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGetSetModbusDataResponse_respond_data :: [Word8]
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/GetSetModbusDataResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsGetSetModbusDataResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsGetSetModbusDataResponse :: Ros1Xarm_msgsGetSetModbusDataResponse
defaultRos1Xarm_msgsGetSetModbusDataResponse = Ros1Xarm_msgsGetSetModbusDataResponse (0) (T.empty) ([])
-- | \@brief Canonical codec identity of xarm_msgs/GetSetModbusDataResponse.
-- \@details Exact identity UWVMROS1_22afbef5c743fc643dcfb5bc32ef176e0de637a128ba6050cf320ebf80294ead
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGetSetModbusDataResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGetSetModbusDataResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/GetSetModbusDataResponse.
-- \@details Exact identity UWVMROS1_22afbef5c743fc643dcfb5bc32ef176e0de637a128ba6050cf320ebf80294ead
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGetSetModbusDataResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGetSetModbusDataResponseCodecIdentity = "UWVMROS1_22afbef5c743fc643dcfb5bc32ef176e0de637a128ba6050cf320ebf80294ead"
-- | \@brief Encode one complete xarm_msgs/GetSetModbusDataResponse value.
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
-- \@see Ros1Xarm_msgsGetSetModbusDataResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsGetSetModbusDataResponse :: Ros1Xarm_msgsGetSetModbusDataResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsGetSetModbusDataResponse value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsGetSetModbusDataResponse_ret value))
  b1 <- W.encodeText 256 True (ros1Xarm_msgsGetSetModbusDataResponse_message value)
  if length (ros1Xarm_msgsGetSetModbusDataResponse_respond_data value) > 4096 then Left 22 else Right ()
  prefix2 <- W.encodeCount 4096 (length (ros1Xarm_msgsGetSetModbusDataResponse_respond_data value))
  b2 <- B.concat <$> mapM (\e -> W.encodeUnsigned 1 (fromIntegral (e))) (ros1Xarm_msgsGetSetModbusDataResponse_respond_data value)
  W.bounded 4362 [b0, b1, prefix2, b2]
-- | \@brief Read the ordered canonical fields of xarm_msgs/GetSetModbusDataResponse.
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
-- \@see Ros1Xarm_msgsGetSetModbusDataResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsGetSetModbusDataResponse :: W.Decoder Ros1Xarm_msgsGetSetModbusDataResponse
readRos1Xarm_msgsGetSetModbusDataResponse = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- W.text 256 True
  count2 <- W.count 4096
  a2 <- replicateM count2 (fromIntegral <$> W.unsigned 1)
  let value = Ros1Xarm_msgsGetSetModbusDataResponse a0 a1 a2
  case encodeRos1Xarm_msgsGetSetModbusDataResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/GetSetModbusDataResponse value.
-- \@details Require the complete 10..4362-byte canonical representation. Reject truncation, invalid
-- fields and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsGetSetModbusDataResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsGetSetModbusDataResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsGetSetModbusDataResponse
decodeRos1Xarm_msgsGetSetModbusDataResponse = W.runDecoder 4362 readRos1Xarm_msgsGetSetModbusDataResponse
instance Canonical Ros1Xarm_msgsGetSetModbusDataResponse where
  maximumBytes _ = 4362
  encodeValue = encodeRos1Xarm_msgsGetSetModbusDataResponse
  readValue = readRos1Xarm_msgsGetSetModbusDataResponse
-- | \@brief Complete ROS 1 xarm_msgs/GripperConfigRequest value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 4..4 bytes and is identified by
-- UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsGripperConfigRequest = Ros1Xarm_msgsGripperConfigRequest
  {
    -- | \@brief xarm_msgs/GripperConfigRequest.pulse_vel: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGripperConfigRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGripperConfigRequest_pulse_vel :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/GripperConfigRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsGripperConfigRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsGripperConfigRequest :: Ros1Xarm_msgsGripperConfigRequest
defaultRos1Xarm_msgsGripperConfigRequest = Ros1Xarm_msgsGripperConfigRequest (0)
-- | \@brief Canonical codec identity of xarm_msgs/GripperConfigRequest.
-- \@details Exact identity UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGripperConfigRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGripperConfigRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/GripperConfigRequest.
-- \@details Exact identity UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGripperConfigRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGripperConfigRequestCodecIdentity = "UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4"
-- | \@brief Encode one complete xarm_msgs/GripperConfigRequest value.
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
-- \@see Ros1Xarm_msgsGripperConfigRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsGripperConfigRequest :: Ros1Xarm_msgsGripperConfigRequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsGripperConfigRequest value = do
  b0 <- W.encodeFloat32 (ros1Xarm_msgsGripperConfigRequest_pulse_vel value)
  W.bounded 4 [b0]
-- | \@brief Read the ordered canonical fields of xarm_msgs/GripperConfigRequest.
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
-- \@see Ros1Xarm_msgsGripperConfigRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsGripperConfigRequest :: W.Decoder Ros1Xarm_msgsGripperConfigRequest
readRos1Xarm_msgsGripperConfigRequest = do
  a0 <- W.float32
  let value = Ros1Xarm_msgsGripperConfigRequest a0
  case encodeRos1Xarm_msgsGripperConfigRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/GripperConfigRequest value.
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
-- \@see Ros1Xarm_msgsGripperConfigRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsGripperConfigRequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsGripperConfigRequest
decodeRos1Xarm_msgsGripperConfigRequest = W.runDecoder 4 readRos1Xarm_msgsGripperConfigRequest
instance Canonical Ros1Xarm_msgsGripperConfigRequest where
  maximumBytes _ = 4
  encodeValue = encodeRos1Xarm_msgsGripperConfigRequest
  readValue = readRos1Xarm_msgsGripperConfigRequest
-- | \@brief Complete ROS 1 xarm_msgs/GripperConfigResponse value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 6..262 bytes and is identified by
-- UWVMROS1_c62138166790a9348741cd419bd5e43492e9840842d8f2d29c5d49abea8d0e59.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsGripperConfigResponse = Ros1Xarm_msgsGripperConfigResponse
  {
    -- | \@brief xarm_msgs/GripperConfigResponse.ret: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGripperConfigResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGripperConfigResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/GripperConfigResponse.message: string; each string is 0..256 bytes; strict
    -- | UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGripperConfigResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGripperConfigResponse_message :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/GripperConfigResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsGripperConfigResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsGripperConfigResponse :: Ros1Xarm_msgsGripperConfigResponse
defaultRos1Xarm_msgsGripperConfigResponse = Ros1Xarm_msgsGripperConfigResponse (0) (T.empty)
-- | \@brief Canonical codec identity of xarm_msgs/GripperConfigResponse.
-- \@details Exact identity UWVMROS1_c62138166790a9348741cd419bd5e43492e9840842d8f2d29c5d49abea8d0e59
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGripperConfigResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGripperConfigResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/GripperConfigResponse.
-- \@details Exact identity UWVMROS1_c62138166790a9348741cd419bd5e43492e9840842d8f2d29c5d49abea8d0e59
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGripperConfigResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGripperConfigResponseCodecIdentity = "UWVMROS1_c62138166790a9348741cd419bd5e43492e9840842d8f2d29c5d49abea8d0e59"
-- | \@brief Encode one complete xarm_msgs/GripperConfigResponse value.
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
-- \@see Ros1Xarm_msgsGripperConfigResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsGripperConfigResponse :: Ros1Xarm_msgsGripperConfigResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsGripperConfigResponse value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsGripperConfigResponse_ret value))
  b1 <- W.encodeText 256 True (ros1Xarm_msgsGripperConfigResponse_message value)
  W.bounded 262 [b0, b1]
-- | \@brief Read the ordered canonical fields of xarm_msgs/GripperConfigResponse.
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
-- \@see Ros1Xarm_msgsGripperConfigResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsGripperConfigResponse :: W.Decoder Ros1Xarm_msgsGripperConfigResponse
readRos1Xarm_msgsGripperConfigResponse = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- W.text 256 True
  let value = Ros1Xarm_msgsGripperConfigResponse a0 a1
  case encodeRos1Xarm_msgsGripperConfigResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/GripperConfigResponse value.
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
-- \@see Ros1Xarm_msgsGripperConfigResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsGripperConfigResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsGripperConfigResponse
decodeRos1Xarm_msgsGripperConfigResponse = W.runDecoder 262 readRos1Xarm_msgsGripperConfigResponse
instance Canonical Ros1Xarm_msgsGripperConfigResponse where
  maximumBytes _ = 262
  encodeValue = encodeRos1Xarm_msgsGripperConfigResponse
  readValue = readRos1Xarm_msgsGripperConfigResponse
-- | \@brief Complete ROS 1 xarm_msgs/GripperMoveRequest value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 4..4 bytes and is identified by
-- UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsGripperMoveRequest = Ros1Xarm_msgsGripperMoveRequest
  {
    -- | \@brief xarm_msgs/GripperMoveRequest.pulse_pos: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGripperMoveRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGripperMoveRequest_pulse_pos :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/GripperMoveRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsGripperMoveRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsGripperMoveRequest :: Ros1Xarm_msgsGripperMoveRequest
defaultRos1Xarm_msgsGripperMoveRequest = Ros1Xarm_msgsGripperMoveRequest (0)
-- | \@brief Canonical codec identity of xarm_msgs/GripperMoveRequest.
-- \@details Exact identity UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGripperMoveRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGripperMoveRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/GripperMoveRequest.
-- \@details Exact identity UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGripperMoveRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGripperMoveRequestCodecIdentity = "UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2"
-- | \@brief Encode one complete xarm_msgs/GripperMoveRequest value.
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
-- \@see Ros1Xarm_msgsGripperMoveRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsGripperMoveRequest :: Ros1Xarm_msgsGripperMoveRequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsGripperMoveRequest value = do
  b0 <- W.encodeFloat32 (ros1Xarm_msgsGripperMoveRequest_pulse_pos value)
  W.bounded 4 [b0]
-- | \@brief Read the ordered canonical fields of xarm_msgs/GripperMoveRequest.
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
-- \@see Ros1Xarm_msgsGripperMoveRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsGripperMoveRequest :: W.Decoder Ros1Xarm_msgsGripperMoveRequest
readRos1Xarm_msgsGripperMoveRequest = do
  a0 <- W.float32
  let value = Ros1Xarm_msgsGripperMoveRequest a0
  case encodeRos1Xarm_msgsGripperMoveRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/GripperMoveRequest value.
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
-- \@see Ros1Xarm_msgsGripperMoveRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsGripperMoveRequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsGripperMoveRequest
decodeRos1Xarm_msgsGripperMoveRequest = W.runDecoder 4 readRos1Xarm_msgsGripperMoveRequest
instance Canonical Ros1Xarm_msgsGripperMoveRequest where
  maximumBytes _ = 4
  encodeValue = encodeRos1Xarm_msgsGripperMoveRequest
  readValue = readRos1Xarm_msgsGripperMoveRequest
-- | \@brief Complete ROS 1 xarm_msgs/GripperMoveResponse value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 6..262 bytes and is identified by
-- UWVMROS1_f590da8de750c4c7a0281dd9039a696f0ad9e8185263ac442f76a179448e57ad.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsGripperMoveResponse = Ros1Xarm_msgsGripperMoveResponse
  {
    -- | \@brief xarm_msgs/GripperMoveResponse.ret: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGripperMoveResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGripperMoveResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/GripperMoveResponse.message: string; each string is 0..256 bytes; strict UTF-8
    -- | with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGripperMoveResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGripperMoveResponse_message :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/GripperMoveResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsGripperMoveResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsGripperMoveResponse :: Ros1Xarm_msgsGripperMoveResponse
defaultRos1Xarm_msgsGripperMoveResponse = Ros1Xarm_msgsGripperMoveResponse (0) (T.empty)
-- | \@brief Canonical codec identity of xarm_msgs/GripperMoveResponse.
-- \@details Exact identity UWVMROS1_f590da8de750c4c7a0281dd9039a696f0ad9e8185263ac442f76a179448e57ad
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGripperMoveResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGripperMoveResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/GripperMoveResponse.
-- \@details Exact identity UWVMROS1_f590da8de750c4c7a0281dd9039a696f0ad9e8185263ac442f76a179448e57ad
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGripperMoveResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGripperMoveResponseCodecIdentity = "UWVMROS1_f590da8de750c4c7a0281dd9039a696f0ad9e8185263ac442f76a179448e57ad"
-- | \@brief Encode one complete xarm_msgs/GripperMoveResponse value.
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
-- \@see Ros1Xarm_msgsGripperMoveResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsGripperMoveResponse :: Ros1Xarm_msgsGripperMoveResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsGripperMoveResponse value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsGripperMoveResponse_ret value))
  b1 <- W.encodeText 256 True (ros1Xarm_msgsGripperMoveResponse_message value)
  W.bounded 262 [b0, b1]
-- | \@brief Read the ordered canonical fields of xarm_msgs/GripperMoveResponse.
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
-- \@see Ros1Xarm_msgsGripperMoveResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsGripperMoveResponse :: W.Decoder Ros1Xarm_msgsGripperMoveResponse
readRos1Xarm_msgsGripperMoveResponse = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- W.text 256 True
  let value = Ros1Xarm_msgsGripperMoveResponse a0 a1
  case encodeRos1Xarm_msgsGripperMoveResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/GripperMoveResponse value.
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
-- \@see Ros1Xarm_msgsGripperMoveResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsGripperMoveResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsGripperMoveResponse
decodeRos1Xarm_msgsGripperMoveResponse = W.runDecoder 262 readRos1Xarm_msgsGripperMoveResponse
instance Canonical Ros1Xarm_msgsGripperMoveResponse where
  maximumBytes _ = 262
  encodeValue = encodeRos1Xarm_msgsGripperMoveResponse
  readValue = readRos1Xarm_msgsGripperMoveResponse
-- | \@brief Complete ROS 1 xarm_msgs/GripperStateRequest value.
-- \@details All 0 declared fields are retained in source order. The canonical representation occupies
-- 0..0 bytes and is identified by
-- UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsGripperStateRequest = Ros1Xarm_msgsGripperStateRequest deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/GripperStateRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsGripperStateRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsGripperStateRequest :: Ros1Xarm_msgsGripperStateRequest
defaultRos1Xarm_msgsGripperStateRequest = Ros1Xarm_msgsGripperStateRequest 
-- | \@brief Canonical codec identity of xarm_msgs/GripperStateRequest.
-- \@details Exact identity UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGripperStateRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGripperStateRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/GripperStateRequest.
-- \@details Exact identity UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGripperStateRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGripperStateRequestCodecIdentity = "UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d"
-- | \@brief Encode one complete xarm_msgs/GripperStateRequest value.
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
-- \@see Ros1Xarm_msgsGripperStateRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsGripperStateRequest :: Ros1Xarm_msgsGripperStateRequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsGripperStateRequest value = do
  W.bounded 0 []
-- | \@brief Read the ordered canonical fields of xarm_msgs/GripperStateRequest.
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
-- \@see Ros1Xarm_msgsGripperStateRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsGripperStateRequest :: W.Decoder Ros1Xarm_msgsGripperStateRequest
readRos1Xarm_msgsGripperStateRequest = do
  let value = Ros1Xarm_msgsGripperStateRequest 
  case encodeRos1Xarm_msgsGripperStateRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/GripperStateRequest value.
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
-- \@see Ros1Xarm_msgsGripperStateRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsGripperStateRequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsGripperStateRequest
decodeRos1Xarm_msgsGripperStateRequest = W.runDecoder 0 readRos1Xarm_msgsGripperStateRequest
instance Canonical Ros1Xarm_msgsGripperStateRequest where
  maximumBytes _ = 0
  encodeValue = encodeRos1Xarm_msgsGripperStateRequest
  readValue = readRos1Xarm_msgsGripperStateRequest
-- | \@brief Complete ROS 1 xarm_msgs/GripperStateResponse value.
-- \@details All 4 declared fields are retained in source order. The canonical representation occupies
-- 12..268 bytes and is identified by
-- UWVMROS1_85cb994d18c9c946bf88dc35ae0be3da149a439c96949f0319004f59f2a84fe6.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsGripperStateResponse = Ros1Xarm_msgsGripperStateResponse
  {
    -- | \@brief xarm_msgs/GripperStateResponse.ret: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGripperStateResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGripperStateResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/GripperStateResponse.message: string; each string is 0..256 bytes; strict UTF-8
    -- | with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGripperStateResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGripperStateResponse_message :: T.Text
  ,
    -- | \@brief xarm_msgs/GripperStateResponse.curr_pos: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGripperStateResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGripperStateResponse_curr_pos :: Float
  ,
    -- | \@brief xarm_msgs/GripperStateResponse.err_code: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsGripperStateResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsGripperStateResponse_err_code :: Int16
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/GripperStateResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsGripperStateResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsGripperStateResponse :: Ros1Xarm_msgsGripperStateResponse
defaultRos1Xarm_msgsGripperStateResponse = Ros1Xarm_msgsGripperStateResponse (0) (T.empty) (0) (0)
-- | \@brief Canonical codec identity of xarm_msgs/GripperStateResponse.
-- \@details Exact identity UWVMROS1_85cb994d18c9c946bf88dc35ae0be3da149a439c96949f0319004f59f2a84fe6
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGripperStateResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGripperStateResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/GripperStateResponse.
-- \@details Exact identity UWVMROS1_85cb994d18c9c946bf88dc35ae0be3da149a439c96949f0319004f59f2a84fe6
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsGripperStateResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsGripperStateResponseCodecIdentity = "UWVMROS1_85cb994d18c9c946bf88dc35ae0be3da149a439c96949f0319004f59f2a84fe6"
-- | \@brief Encode one complete xarm_msgs/GripperStateResponse value.
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
-- \@see Ros1Xarm_msgsGripperStateResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsGripperStateResponse :: Ros1Xarm_msgsGripperStateResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsGripperStateResponse value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsGripperStateResponse_ret value))
  b1 <- W.encodeText 256 True (ros1Xarm_msgsGripperStateResponse_message value)
  b2 <- W.encodeFloat32 (ros1Xarm_msgsGripperStateResponse_curr_pos value)
  b3 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsGripperStateResponse_err_code value))
  W.bounded 268 [b0, b1, b2, b3]
-- | \@brief Read the ordered canonical fields of xarm_msgs/GripperStateResponse.
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
-- \@see Ros1Xarm_msgsGripperStateResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsGripperStateResponse :: W.Decoder Ros1Xarm_msgsGripperStateResponse
readRos1Xarm_msgsGripperStateResponse = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- W.text 256 True
  a2 <- W.float32
  a3 <- fromIntegral <$> W.signed 2
  let value = Ros1Xarm_msgsGripperStateResponse a0 a1 a2 a3
  case encodeRos1Xarm_msgsGripperStateResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/GripperStateResponse value.
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
-- \@see Ros1Xarm_msgsGripperStateResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsGripperStateResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsGripperStateResponse
decodeRos1Xarm_msgsGripperStateResponse = W.runDecoder 268 readRos1Xarm_msgsGripperStateResponse
instance Canonical Ros1Xarm_msgsGripperStateResponse where
  maximumBytes _ = 268
  encodeValue = encodeRos1Xarm_msgsGripperStateResponse
  readValue = readRos1Xarm_msgsGripperStateResponse
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
-- | \@brief Complete ROS 1 xarm_msgs/MoveAxisAngleRequest value.
-- \@details All 6 declared fields are retained in source order. The canonical representation occupies
-- 20..148 bytes and is identified by
-- UWVMROS1_fc7be6f60b1e49b5444e9bdc3feb65e21cda3911db376dde843b427171d35b30.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsMoveAxisAngleRequest = Ros1Xarm_msgsMoveAxisAngleRequest
  {
    -- | \@brief xarm_msgs/MoveAxisAngleRequest.pose: float32; 0..32 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsMoveAxisAngleRequest_pose :: [Float]
  ,
    -- | \@brief xarm_msgs/MoveAxisAngleRequest.mvvelo: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsMoveAxisAngleRequest_mvvelo :: Float
  ,
    -- | \@brief xarm_msgs/MoveAxisAngleRequest.mvacc: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsMoveAxisAngleRequest_mvacc :: Float
  ,
    -- | \@brief xarm_msgs/MoveAxisAngleRequest.mvtime: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsMoveAxisAngleRequest_mvtime :: Float
  ,
    -- | \@brief xarm_msgs/MoveAxisAngleRequest.coord: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsMoveAxisAngleRequest_coord :: Int16
  ,
    -- | \@brief xarm_msgs/MoveAxisAngleRequest.relative: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsMoveAxisAngleRequest_relative :: Int16
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/MoveAxisAngleRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsMoveAxisAngleRequest :: Ros1Xarm_msgsMoveAxisAngleRequest
defaultRos1Xarm_msgsMoveAxisAngleRequest = Ros1Xarm_msgsMoveAxisAngleRequest ([]) (0) (0) (0) (0) (0)
-- | \@brief Canonical codec identity of xarm_msgs/MoveAxisAngleRequest.
-- \@details Exact identity UWVMROS1_fc7be6f60b1e49b5444e9bdc3feb65e21cda3911db376dde843b427171d35b30
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsMoveAxisAngleRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/MoveAxisAngleRequest.
-- \@details Exact identity UWVMROS1_fc7be6f60b1e49b5444e9bdc3feb65e21cda3911db376dde843b427171d35b30
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsMoveAxisAngleRequestCodecIdentity = "UWVMROS1_fc7be6f60b1e49b5444e9bdc3feb65e21cda3911db376dde843b427171d35b30"
-- | \@brief Encode one complete xarm_msgs/MoveAxisAngleRequest value.
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
-- \@see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsMoveAxisAngleRequest :: Ros1Xarm_msgsMoveAxisAngleRequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsMoveAxisAngleRequest value = do
  if length (ros1Xarm_msgsMoveAxisAngleRequest_pose value) > 32 then Left 22 else Right ()
  prefix0 <- W.encodeCount 32 (length (ros1Xarm_msgsMoveAxisAngleRequest_pose value))
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros1Xarm_msgsMoveAxisAngleRequest_pose value)
  b1 <- W.encodeFloat32 (ros1Xarm_msgsMoveAxisAngleRequest_mvvelo value)
  b2 <- W.encodeFloat32 (ros1Xarm_msgsMoveAxisAngleRequest_mvacc value)
  b3 <- W.encodeFloat32 (ros1Xarm_msgsMoveAxisAngleRequest_mvtime value)
  b4 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsMoveAxisAngleRequest_coord value))
  b5 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsMoveAxisAngleRequest_relative value))
  W.bounded 148 [prefix0, b0, b1, b2, b3, b4, b5]
-- | \@brief Read the ordered canonical fields of xarm_msgs/MoveAxisAngleRequest.
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
-- \@see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsMoveAxisAngleRequest :: W.Decoder Ros1Xarm_msgsMoveAxisAngleRequest
readRos1Xarm_msgsMoveAxisAngleRequest = do
  count0 <- W.count 32
  a0 <- replicateM count0 (W.float32)
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- fromIntegral <$> W.signed 2
  a5 <- fromIntegral <$> W.signed 2
  let value = Ros1Xarm_msgsMoveAxisAngleRequest a0 a1 a2 a3 a4 a5
  case encodeRos1Xarm_msgsMoveAxisAngleRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/MoveAxisAngleRequest value.
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
-- \@see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsMoveAxisAngleRequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsMoveAxisAngleRequest
decodeRos1Xarm_msgsMoveAxisAngleRequest = W.runDecoder 148 readRos1Xarm_msgsMoveAxisAngleRequest
instance Canonical Ros1Xarm_msgsMoveAxisAngleRequest where
  maximumBytes _ = 148
  encodeValue = encodeRos1Xarm_msgsMoveAxisAngleRequest
  readValue = readRos1Xarm_msgsMoveAxisAngleRequest
-- | \@brief Complete ROS 1 xarm_msgs/MoveAxisAngleResponse value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 6..262 bytes and is identified by
-- UWVMROS1_7ba3459cd1369bd925a02f25150dd97524c333658c1c743fe532ff954c5bb300.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsMoveAxisAngleResponse = Ros1Xarm_msgsMoveAxisAngleResponse
  {
    -- | \@brief xarm_msgs/MoveAxisAngleResponse.ret: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsMoveAxisAngleResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsMoveAxisAngleResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/MoveAxisAngleResponse.message: string; each string is 0..256 bytes; strict
    -- | UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsMoveAxisAngleResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsMoveAxisAngleResponse_message :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/MoveAxisAngleResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsMoveAxisAngleResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsMoveAxisAngleResponse :: Ros1Xarm_msgsMoveAxisAngleResponse
defaultRos1Xarm_msgsMoveAxisAngleResponse = Ros1Xarm_msgsMoveAxisAngleResponse (0) (T.empty)
-- | \@brief Canonical codec identity of xarm_msgs/MoveAxisAngleResponse.
-- \@details Exact identity UWVMROS1_7ba3459cd1369bd925a02f25150dd97524c333658c1c743fe532ff954c5bb300
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsMoveAxisAngleResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsMoveAxisAngleResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/MoveAxisAngleResponse.
-- \@details Exact identity UWVMROS1_7ba3459cd1369bd925a02f25150dd97524c333658c1c743fe532ff954c5bb300
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsMoveAxisAngleResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsMoveAxisAngleResponseCodecIdentity = "UWVMROS1_7ba3459cd1369bd925a02f25150dd97524c333658c1c743fe532ff954c5bb300"
-- | \@brief Encode one complete xarm_msgs/MoveAxisAngleResponse value.
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
-- \@see Ros1Xarm_msgsMoveAxisAngleResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsMoveAxisAngleResponse :: Ros1Xarm_msgsMoveAxisAngleResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsMoveAxisAngleResponse value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsMoveAxisAngleResponse_ret value))
  b1 <- W.encodeText 256 True (ros1Xarm_msgsMoveAxisAngleResponse_message value)
  W.bounded 262 [b0, b1]
-- | \@brief Read the ordered canonical fields of xarm_msgs/MoveAxisAngleResponse.
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
-- \@see Ros1Xarm_msgsMoveAxisAngleResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsMoveAxisAngleResponse :: W.Decoder Ros1Xarm_msgsMoveAxisAngleResponse
readRos1Xarm_msgsMoveAxisAngleResponse = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- W.text 256 True
  let value = Ros1Xarm_msgsMoveAxisAngleResponse a0 a1
  case encodeRos1Xarm_msgsMoveAxisAngleResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/MoveAxisAngleResponse value.
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
-- \@see Ros1Xarm_msgsMoveAxisAngleResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsMoveAxisAngleResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsMoveAxisAngleResponse
decodeRos1Xarm_msgsMoveAxisAngleResponse = W.runDecoder 262 readRos1Xarm_msgsMoveAxisAngleResponse
instance Canonical Ros1Xarm_msgsMoveAxisAngleResponse where
  maximumBytes _ = 262
  encodeValue = encodeRos1Xarm_msgsMoveAxisAngleResponse
  readValue = readRos1Xarm_msgsMoveAxisAngleResponse
-- | \@brief Complete ROS 1 xarm_msgs/MoveVeloRequest value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies
-- 8..136 bytes and is identified by
-- UWVMROS1_5c047dc56f9ec7fa016e44f203c026009b683e77b8dd7c83fafc214b6ca4d204.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsMoveVeloRequest = Ros1Xarm_msgsMoveVeloRequest
  {
    -- | \@brief xarm_msgs/MoveVeloRequest.velocities: float32; 0..32 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsMoveVeloRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsMoveVeloRequest_velocities :: [Float]
  ,
    -- | \@brief xarm_msgs/MoveVeloRequest.jnt_sync: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsMoveVeloRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsMoveVeloRequest_jnt_sync :: Int16
  ,
    -- | \@brief xarm_msgs/MoveVeloRequest.coord: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsMoveVeloRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsMoveVeloRequest_coord :: Int16
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/MoveVeloRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsMoveVeloRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsMoveVeloRequest :: Ros1Xarm_msgsMoveVeloRequest
defaultRos1Xarm_msgsMoveVeloRequest = Ros1Xarm_msgsMoveVeloRequest ([]) (0) (0)
-- | \@brief Canonical codec identity of xarm_msgs/MoveVeloRequest.
-- \@details Exact identity UWVMROS1_5c047dc56f9ec7fa016e44f203c026009b683e77b8dd7c83fafc214b6ca4d204
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsMoveVeloRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsMoveVeloRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/MoveVeloRequest.
-- \@details Exact identity UWVMROS1_5c047dc56f9ec7fa016e44f203c026009b683e77b8dd7c83fafc214b6ca4d204
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsMoveVeloRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsMoveVeloRequestCodecIdentity = "UWVMROS1_5c047dc56f9ec7fa016e44f203c026009b683e77b8dd7c83fafc214b6ca4d204"
-- | \@brief Encode one complete xarm_msgs/MoveVeloRequest value.
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
-- \@see Ros1Xarm_msgsMoveVeloRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsMoveVeloRequest :: Ros1Xarm_msgsMoveVeloRequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsMoveVeloRequest value = do
  if length (ros1Xarm_msgsMoveVeloRequest_velocities value) > 32 then Left 22 else Right ()
  prefix0 <- W.encodeCount 32 (length (ros1Xarm_msgsMoveVeloRequest_velocities value))
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros1Xarm_msgsMoveVeloRequest_velocities value)
  b1 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsMoveVeloRequest_jnt_sync value))
  b2 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsMoveVeloRequest_coord value))
  W.bounded 136 [prefix0, b0, b1, b2]
-- | \@brief Read the ordered canonical fields of xarm_msgs/MoveVeloRequest.
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
-- \@see Ros1Xarm_msgsMoveVeloRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsMoveVeloRequest :: W.Decoder Ros1Xarm_msgsMoveVeloRequest
readRos1Xarm_msgsMoveVeloRequest = do
  count0 <- W.count 32
  a0 <- replicateM count0 (W.float32)
  a1 <- fromIntegral <$> W.signed 2
  a2 <- fromIntegral <$> W.signed 2
  let value = Ros1Xarm_msgsMoveVeloRequest a0 a1 a2
  case encodeRos1Xarm_msgsMoveVeloRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/MoveVeloRequest value.
-- \@details Require the complete 8..136-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsMoveVeloRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsMoveVeloRequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsMoveVeloRequest
decodeRos1Xarm_msgsMoveVeloRequest = W.runDecoder 136 readRos1Xarm_msgsMoveVeloRequest
instance Canonical Ros1Xarm_msgsMoveVeloRequest where
  maximumBytes _ = 136
  encodeValue = encodeRos1Xarm_msgsMoveVeloRequest
  readValue = readRos1Xarm_msgsMoveVeloRequest
-- | \@brief Complete ROS 1 xarm_msgs/MoveVeloResponse value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 6..262 bytes and is identified by
-- UWVMROS1_429cbde29c47a90f5a0dfc2fa5d31a32c95570464c9394cc4dfa5be40dc3f5ce.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsMoveVeloResponse = Ros1Xarm_msgsMoveVeloResponse
  {
    -- | \@brief xarm_msgs/MoveVeloResponse.ret: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsMoveVeloResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsMoveVeloResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/MoveVeloResponse.message: string; each string is 0..256 bytes; strict UTF-8
    -- | with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsMoveVeloResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsMoveVeloResponse_message :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/MoveVeloResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsMoveVeloResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsMoveVeloResponse :: Ros1Xarm_msgsMoveVeloResponse
defaultRos1Xarm_msgsMoveVeloResponse = Ros1Xarm_msgsMoveVeloResponse (0) (T.empty)
-- | \@brief Canonical codec identity of xarm_msgs/MoveVeloResponse.
-- \@details Exact identity UWVMROS1_429cbde29c47a90f5a0dfc2fa5d31a32c95570464c9394cc4dfa5be40dc3f5ce
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsMoveVeloResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsMoveVeloResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/MoveVeloResponse.
-- \@details Exact identity UWVMROS1_429cbde29c47a90f5a0dfc2fa5d31a32c95570464c9394cc4dfa5be40dc3f5ce
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsMoveVeloResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsMoveVeloResponseCodecIdentity = "UWVMROS1_429cbde29c47a90f5a0dfc2fa5d31a32c95570464c9394cc4dfa5be40dc3f5ce"
-- | \@brief Encode one complete xarm_msgs/MoveVeloResponse value.
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
-- \@see Ros1Xarm_msgsMoveVeloResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsMoveVeloResponse :: Ros1Xarm_msgsMoveVeloResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsMoveVeloResponse value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsMoveVeloResponse_ret value))
  b1 <- W.encodeText 256 True (ros1Xarm_msgsMoveVeloResponse_message value)
  W.bounded 262 [b0, b1]
-- | \@brief Read the ordered canonical fields of xarm_msgs/MoveVeloResponse.
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
-- \@see Ros1Xarm_msgsMoveVeloResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsMoveVeloResponse :: W.Decoder Ros1Xarm_msgsMoveVeloResponse
readRos1Xarm_msgsMoveVeloResponse = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- W.text 256 True
  let value = Ros1Xarm_msgsMoveVeloResponse a0 a1
  case encodeRos1Xarm_msgsMoveVeloResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/MoveVeloResponse value.
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
-- \@see Ros1Xarm_msgsMoveVeloResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsMoveVeloResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsMoveVeloResponse
decodeRos1Xarm_msgsMoveVeloResponse = W.runDecoder 262 readRos1Xarm_msgsMoveVeloResponse
instance Canonical Ros1Xarm_msgsMoveVeloResponse where
  maximumBytes _ = 262
  encodeValue = encodeRos1Xarm_msgsMoveVeloResponse
  readValue = readRos1Xarm_msgsMoveVeloResponse
-- | \@brief Complete ROS 1 xarm_msgs/MoveVelocityRequest value.
-- \@details All 4 declared fields are retained in source order. The canonical representation occupies
-- 10..138 bytes and is identified by
-- UWVMROS1_49e80cec4322b05b5da04a562022fe3e1d6cdd483c1c299e9bd8c8fe96ffe9ef.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsMoveVelocityRequest = Ros1Xarm_msgsMoveVelocityRequest
  {
    -- | \@brief xarm_msgs/MoveVelocityRequest.speeds: float32; 0..32 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsMoveVelocityRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsMoveVelocityRequest_speeds :: [Float]
  ,
    -- | \@brief xarm_msgs/MoveVelocityRequest.is_sync: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsMoveVelocityRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsMoveVelocityRequest_is_sync :: Bool
  ,
    -- | \@brief xarm_msgs/MoveVelocityRequest.is_tool_coord: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsMoveVelocityRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsMoveVelocityRequest_is_tool_coord :: Bool
  ,
    -- | \@brief xarm_msgs/MoveVelocityRequest.duration: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsMoveVelocityRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsMoveVelocityRequest_duration :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/MoveVelocityRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsMoveVelocityRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsMoveVelocityRequest :: Ros1Xarm_msgsMoveVelocityRequest
defaultRos1Xarm_msgsMoveVelocityRequest = Ros1Xarm_msgsMoveVelocityRequest ([]) (False) (False) (0)
-- | \@brief Canonical codec identity of xarm_msgs/MoveVelocityRequest.
-- \@details Exact identity UWVMROS1_49e80cec4322b05b5da04a562022fe3e1d6cdd483c1c299e9bd8c8fe96ffe9ef
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsMoveVelocityRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsMoveVelocityRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/MoveVelocityRequest.
-- \@details Exact identity UWVMROS1_49e80cec4322b05b5da04a562022fe3e1d6cdd483c1c299e9bd8c8fe96ffe9ef
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsMoveVelocityRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsMoveVelocityRequestCodecIdentity = "UWVMROS1_49e80cec4322b05b5da04a562022fe3e1d6cdd483c1c299e9bd8c8fe96ffe9ef"
-- | \@brief Encode one complete xarm_msgs/MoveVelocityRequest value.
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
-- \@see Ros1Xarm_msgsMoveVelocityRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsMoveVelocityRequest :: Ros1Xarm_msgsMoveVelocityRequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsMoveVelocityRequest value = do
  if length (ros1Xarm_msgsMoveVelocityRequest_speeds value) > 32 then Left 22 else Right ()
  prefix0 <- W.encodeCount 32 (length (ros1Xarm_msgsMoveVelocityRequest_speeds value))
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros1Xarm_msgsMoveVelocityRequest_speeds value)
  b1 <- W.encodeBool (ros1Xarm_msgsMoveVelocityRequest_is_sync value)
  b2 <- W.encodeBool (ros1Xarm_msgsMoveVelocityRequest_is_tool_coord value)
  b3 <- W.encodeFloat32 (ros1Xarm_msgsMoveVelocityRequest_duration value)
  W.bounded 138 [prefix0, b0, b1, b2, b3]
-- | \@brief Read the ordered canonical fields of xarm_msgs/MoveVelocityRequest.
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
-- \@see Ros1Xarm_msgsMoveVelocityRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsMoveVelocityRequest :: W.Decoder Ros1Xarm_msgsMoveVelocityRequest
readRos1Xarm_msgsMoveVelocityRequest = do
  count0 <- W.count 32
  a0 <- replicateM count0 (W.float32)
  a1 <- W.boolean
  a2 <- W.boolean
  a3 <- W.float32
  let value = Ros1Xarm_msgsMoveVelocityRequest a0 a1 a2 a3
  case encodeRos1Xarm_msgsMoveVelocityRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/MoveVelocityRequest value.
-- \@details Require the complete 10..138-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsMoveVelocityRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsMoveVelocityRequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsMoveVelocityRequest
decodeRos1Xarm_msgsMoveVelocityRequest = W.runDecoder 138 readRos1Xarm_msgsMoveVelocityRequest
instance Canonical Ros1Xarm_msgsMoveVelocityRequest where
  maximumBytes _ = 138
  encodeValue = encodeRos1Xarm_msgsMoveVelocityRequest
  readValue = readRos1Xarm_msgsMoveVelocityRequest
-- | \@brief Complete ROS 1 xarm_msgs/MoveVelocityResponse value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 6..262 bytes and is identified by
-- UWVMROS1_acc65d558614e19b7f5b7b7cce68c7095ebd8cbe1de9ea16ea321e11f4fb3edc.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsMoveVelocityResponse = Ros1Xarm_msgsMoveVelocityResponse
  {
    -- | \@brief xarm_msgs/MoveVelocityResponse.ret: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsMoveVelocityResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsMoveVelocityResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/MoveVelocityResponse.message: string; each string is 0..256 bytes; strict UTF-8
    -- | with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsMoveVelocityResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsMoveVelocityResponse_message :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/MoveVelocityResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsMoveVelocityResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsMoveVelocityResponse :: Ros1Xarm_msgsMoveVelocityResponse
defaultRos1Xarm_msgsMoveVelocityResponse = Ros1Xarm_msgsMoveVelocityResponse (0) (T.empty)
-- | \@brief Canonical codec identity of xarm_msgs/MoveVelocityResponse.
-- \@details Exact identity UWVMROS1_acc65d558614e19b7f5b7b7cce68c7095ebd8cbe1de9ea16ea321e11f4fb3edc
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsMoveVelocityResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsMoveVelocityResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/MoveVelocityResponse.
-- \@details Exact identity UWVMROS1_acc65d558614e19b7f5b7b7cce68c7095ebd8cbe1de9ea16ea321e11f4fb3edc
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsMoveVelocityResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsMoveVelocityResponseCodecIdentity = "UWVMROS1_acc65d558614e19b7f5b7b7cce68c7095ebd8cbe1de9ea16ea321e11f4fb3edc"
-- | \@brief Encode one complete xarm_msgs/MoveVelocityResponse value.
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
-- \@see Ros1Xarm_msgsMoveVelocityResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsMoveVelocityResponse :: Ros1Xarm_msgsMoveVelocityResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsMoveVelocityResponse value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsMoveVelocityResponse_ret value))
  b1 <- W.encodeText 256 True (ros1Xarm_msgsMoveVelocityResponse_message value)
  W.bounded 262 [b0, b1]
-- | \@brief Read the ordered canonical fields of xarm_msgs/MoveVelocityResponse.
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
-- \@see Ros1Xarm_msgsMoveVelocityResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsMoveVelocityResponse :: W.Decoder Ros1Xarm_msgsMoveVelocityResponse
readRos1Xarm_msgsMoveVelocityResponse = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- W.text 256 True
  let value = Ros1Xarm_msgsMoveVelocityResponse a0 a1
  case encodeRos1Xarm_msgsMoveVelocityResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/MoveVelocityResponse value.
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
-- \@see Ros1Xarm_msgsMoveVelocityResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsMoveVelocityResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsMoveVelocityResponse
decodeRos1Xarm_msgsMoveVelocityResponse = W.runDecoder 262 readRos1Xarm_msgsMoveVelocityResponse
instance Canonical Ros1Xarm_msgsMoveVelocityResponse where
  maximumBytes _ = 262
  encodeValue = encodeRos1Xarm_msgsMoveVelocityResponse
  readValue = readRos1Xarm_msgsMoveVelocityResponse
-- | \@brief Complete ROS 1 xarm_msgs/PlayTrajRequest value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies
-- 8..264 bytes and is identified by
-- UWVMROS1_fc759117dcff2c6760da5440389c788522b715d0af1625304cd71abe3a5225d5.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsPlayTrajRequest = Ros1Xarm_msgsPlayTrajRequest
  {
    -- | \@brief xarm_msgs/PlayTrajRequest.traj_file: string; each string is 0..256 bytes; strict UTF-8
    -- | with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsPlayTrajRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsPlayTrajRequest_traj_file :: T.Text
  ,
    -- | \@brief xarm_msgs/PlayTrajRequest.repeat_times: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsPlayTrajRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsPlayTrajRequest_repeat_times :: Int16
  ,
    -- | \@brief xarm_msgs/PlayTrajRequest.speed_factor: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsPlayTrajRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsPlayTrajRequest_speed_factor :: Int16
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/PlayTrajRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsPlayTrajRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsPlayTrajRequest :: Ros1Xarm_msgsPlayTrajRequest
defaultRos1Xarm_msgsPlayTrajRequest = Ros1Xarm_msgsPlayTrajRequest (T.empty) (0) (0)
-- | \@brief Canonical codec identity of xarm_msgs/PlayTrajRequest.
-- \@details Exact identity UWVMROS1_fc759117dcff2c6760da5440389c788522b715d0af1625304cd71abe3a5225d5
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsPlayTrajRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsPlayTrajRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/PlayTrajRequest.
-- \@details Exact identity UWVMROS1_fc759117dcff2c6760da5440389c788522b715d0af1625304cd71abe3a5225d5
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsPlayTrajRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsPlayTrajRequestCodecIdentity = "UWVMROS1_fc759117dcff2c6760da5440389c788522b715d0af1625304cd71abe3a5225d5"
-- | \@brief Encode one complete xarm_msgs/PlayTrajRequest value.
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
-- \@see Ros1Xarm_msgsPlayTrajRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsPlayTrajRequest :: Ros1Xarm_msgsPlayTrajRequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsPlayTrajRequest value = do
  b0 <- W.encodeText 256 True (ros1Xarm_msgsPlayTrajRequest_traj_file value)
  b1 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsPlayTrajRequest_repeat_times value))
  b2 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsPlayTrajRequest_speed_factor value))
  W.bounded 264 [b0, b1, b2]
-- | \@brief Read the ordered canonical fields of xarm_msgs/PlayTrajRequest.
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
-- \@see Ros1Xarm_msgsPlayTrajRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsPlayTrajRequest :: W.Decoder Ros1Xarm_msgsPlayTrajRequest
readRos1Xarm_msgsPlayTrajRequest = do
  a0 <- W.text 256 True
  a1 <- fromIntegral <$> W.signed 2
  a2 <- fromIntegral <$> W.signed 2
  let value = Ros1Xarm_msgsPlayTrajRequest a0 a1 a2
  case encodeRos1Xarm_msgsPlayTrajRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/PlayTrajRequest value.
-- \@details Require the complete 8..264-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsPlayTrajRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsPlayTrajRequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsPlayTrajRequest
decodeRos1Xarm_msgsPlayTrajRequest = W.runDecoder 264 readRos1Xarm_msgsPlayTrajRequest
instance Canonical Ros1Xarm_msgsPlayTrajRequest where
  maximumBytes _ = 264
  encodeValue = encodeRos1Xarm_msgsPlayTrajRequest
  readValue = readRos1Xarm_msgsPlayTrajRequest
-- | \@brief Complete ROS 1 xarm_msgs/PlayTrajResponse value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 6..262 bytes and is identified by
-- UWVMROS1_5455557b7aacda148cbaca2fa9aefd8e9c55b3e116d992953ed423079492b27a.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsPlayTrajResponse = Ros1Xarm_msgsPlayTrajResponse
  {
    -- | \@brief xarm_msgs/PlayTrajResponse.ret: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsPlayTrajResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsPlayTrajResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/PlayTrajResponse.message: string; each string is 0..256 bytes; strict UTF-8
    -- | with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsPlayTrajResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsPlayTrajResponse_message :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/PlayTrajResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsPlayTrajResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsPlayTrajResponse :: Ros1Xarm_msgsPlayTrajResponse
defaultRos1Xarm_msgsPlayTrajResponse = Ros1Xarm_msgsPlayTrajResponse (0) (T.empty)
-- | \@brief Canonical codec identity of xarm_msgs/PlayTrajResponse.
-- \@details Exact identity UWVMROS1_5455557b7aacda148cbaca2fa9aefd8e9c55b3e116d992953ed423079492b27a
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsPlayTrajResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsPlayTrajResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/PlayTrajResponse.
-- \@details Exact identity UWVMROS1_5455557b7aacda148cbaca2fa9aefd8e9c55b3e116d992953ed423079492b27a
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsPlayTrajResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsPlayTrajResponseCodecIdentity = "UWVMROS1_5455557b7aacda148cbaca2fa9aefd8e9c55b3e116d992953ed423079492b27a"
-- | \@brief Encode one complete xarm_msgs/PlayTrajResponse value.
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
-- \@see Ros1Xarm_msgsPlayTrajResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsPlayTrajResponse :: Ros1Xarm_msgsPlayTrajResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsPlayTrajResponse value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsPlayTrajResponse_ret value))
  b1 <- W.encodeText 256 True (ros1Xarm_msgsPlayTrajResponse_message value)
  W.bounded 262 [b0, b1]
-- | \@brief Read the ordered canonical fields of xarm_msgs/PlayTrajResponse.
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
-- \@see Ros1Xarm_msgsPlayTrajResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsPlayTrajResponse :: W.Decoder Ros1Xarm_msgsPlayTrajResponse
readRos1Xarm_msgsPlayTrajResponse = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- W.text 256 True
  let value = Ros1Xarm_msgsPlayTrajResponse a0 a1
  case encodeRos1Xarm_msgsPlayTrajResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/PlayTrajResponse value.
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
-- \@see Ros1Xarm_msgsPlayTrajResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsPlayTrajResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsPlayTrajResponse
decodeRos1Xarm_msgsPlayTrajResponse = W.runDecoder 262 readRos1Xarm_msgsPlayTrajResponse
instance Canonical Ros1Xarm_msgsPlayTrajResponse where
  maximumBytes _ = 262
  encodeValue = encodeRos1Xarm_msgsPlayTrajResponse
  readValue = readRos1Xarm_msgsPlayTrajResponse
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
-- | \@brief Complete ROS 1 xarm_msgs/SetControllerAnalogIORequest value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 6..6 bytes and is identified by
-- UWVMROS1_146e98ac29dc5f902fe75643eee074eaaa37b87edc68e49e7377048f12344f66.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsSetControllerAnalogIORequest = Ros1Xarm_msgsSetControllerAnalogIORequest
  {
    -- | \@brief xarm_msgs/SetControllerAnalogIORequest.port_num: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetControllerAnalogIORequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetControllerAnalogIORequest_port_num :: Int16
  ,
    -- | \@brief xarm_msgs/SetControllerAnalogIORequest.analog_value: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetControllerAnalogIORequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetControllerAnalogIORequest_analog_value :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/SetControllerAnalogIORequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsSetControllerAnalogIORequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsSetControllerAnalogIORequest :: Ros1Xarm_msgsSetControllerAnalogIORequest
defaultRos1Xarm_msgsSetControllerAnalogIORequest = Ros1Xarm_msgsSetControllerAnalogIORequest (0) (0)
-- | \@brief Canonical codec identity of xarm_msgs/SetControllerAnalogIORequest.
-- \@details Exact identity UWVMROS1_146e98ac29dc5f902fe75643eee074eaaa37b87edc68e49e7377048f12344f66
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetControllerAnalogIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetControllerAnalogIORequestCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/SetControllerAnalogIORequest.
-- \@details Exact identity UWVMROS1_146e98ac29dc5f902fe75643eee074eaaa37b87edc68e49e7377048f12344f66
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetControllerAnalogIORequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetControllerAnalogIORequestCodecIdentity = "UWVMROS1_146e98ac29dc5f902fe75643eee074eaaa37b87edc68e49e7377048f12344f66"
-- | \@brief Encode one complete xarm_msgs/SetControllerAnalogIORequest value.
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
-- \@see Ros1Xarm_msgsSetControllerAnalogIORequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsSetControllerAnalogIORequest :: Ros1Xarm_msgsSetControllerAnalogIORequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsSetControllerAnalogIORequest value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsSetControllerAnalogIORequest_port_num value))
  b1 <- W.encodeFloat32 (ros1Xarm_msgsSetControllerAnalogIORequest_analog_value value)
  W.bounded 6 [b0, b1]
-- | \@brief Read the ordered canonical fields of xarm_msgs/SetControllerAnalogIORequest.
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
-- \@see Ros1Xarm_msgsSetControllerAnalogIORequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsSetControllerAnalogIORequest :: W.Decoder Ros1Xarm_msgsSetControllerAnalogIORequest
readRos1Xarm_msgsSetControllerAnalogIORequest = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- W.float32
  let value = Ros1Xarm_msgsSetControllerAnalogIORequest a0 a1
  case encodeRos1Xarm_msgsSetControllerAnalogIORequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/SetControllerAnalogIORequest value.
-- \@details Require the complete 6..6-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsSetControllerAnalogIORequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsSetControllerAnalogIORequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsSetControllerAnalogIORequest
decodeRos1Xarm_msgsSetControllerAnalogIORequest = W.runDecoder 6 readRos1Xarm_msgsSetControllerAnalogIORequest
instance Canonical Ros1Xarm_msgsSetControllerAnalogIORequest where
  maximumBytes _ = 6
  encodeValue = encodeRos1Xarm_msgsSetControllerAnalogIORequest
  readValue = readRos1Xarm_msgsSetControllerAnalogIORequest
-- | \@brief Complete ROS 1 xarm_msgs/SetControllerAnalogIOResponse value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 6..262 bytes and is identified by
-- UWVMROS1_a47ef61217e052829a26ee2b6f2d60714454f32df5fc583cca55a29b93debdec.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsSetControllerAnalogIOResponse = Ros1Xarm_msgsSetControllerAnalogIOResponse
  {
    -- | \@brief xarm_msgs/SetControllerAnalogIOResponse.ret: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetControllerAnalogIOResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetControllerAnalogIOResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/SetControllerAnalogIOResponse.message: string; each string is 0..256 bytes;
    -- | strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetControllerAnalogIOResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetControllerAnalogIOResponse_message :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/SetControllerAnalogIOResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsSetControllerAnalogIOResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsSetControllerAnalogIOResponse :: Ros1Xarm_msgsSetControllerAnalogIOResponse
defaultRos1Xarm_msgsSetControllerAnalogIOResponse = Ros1Xarm_msgsSetControllerAnalogIOResponse (0) (T.empty)
-- | \@brief Canonical codec identity of xarm_msgs/SetControllerAnalogIOResponse.
-- \@details Exact identity UWVMROS1_a47ef61217e052829a26ee2b6f2d60714454f32df5fc583cca55a29b93debdec
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetControllerAnalogIOResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetControllerAnalogIOResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/SetControllerAnalogIOResponse.
-- \@details Exact identity UWVMROS1_a47ef61217e052829a26ee2b6f2d60714454f32df5fc583cca55a29b93debdec
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetControllerAnalogIOResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetControllerAnalogIOResponseCodecIdentity = "UWVMROS1_a47ef61217e052829a26ee2b6f2d60714454f32df5fc583cca55a29b93debdec"
-- | \@brief Encode one complete xarm_msgs/SetControllerAnalogIOResponse value.
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
-- \@see Ros1Xarm_msgsSetControllerAnalogIOResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsSetControllerAnalogIOResponse :: Ros1Xarm_msgsSetControllerAnalogIOResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsSetControllerAnalogIOResponse value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsSetControllerAnalogIOResponse_ret value))
  b1 <- W.encodeText 256 True (ros1Xarm_msgsSetControllerAnalogIOResponse_message value)
  W.bounded 262 [b0, b1]
-- | \@brief Read the ordered canonical fields of xarm_msgs/SetControllerAnalogIOResponse.
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
-- \@see Ros1Xarm_msgsSetControllerAnalogIOResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsSetControllerAnalogIOResponse :: W.Decoder Ros1Xarm_msgsSetControllerAnalogIOResponse
readRos1Xarm_msgsSetControllerAnalogIOResponse = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- W.text 256 True
  let value = Ros1Xarm_msgsSetControllerAnalogIOResponse a0 a1
  case encodeRos1Xarm_msgsSetControllerAnalogIOResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/SetControllerAnalogIOResponse value.
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
-- \@see Ros1Xarm_msgsSetControllerAnalogIOResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsSetControllerAnalogIOResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsSetControllerAnalogIOResponse
decodeRos1Xarm_msgsSetControllerAnalogIOResponse = W.runDecoder 262 readRos1Xarm_msgsSetControllerAnalogIOResponse
instance Canonical Ros1Xarm_msgsSetControllerAnalogIOResponse where
  maximumBytes _ = 262
  encodeValue = encodeRos1Xarm_msgsSetControllerAnalogIOResponse
  readValue = readRos1Xarm_msgsSetControllerAnalogIOResponse
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
-- | \@brief Complete ROS 1 xarm_msgs/SetFloat32Request value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 4..4 bytes and is identified by
-- UWVMROS1_e723003cba5f2cc380015e77c978240a1b8c52bdbfe2e93357ffbe86e2ffd033.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsSetFloat32Request = Ros1Xarm_msgsSetFloat32Request
  {
    -- | \@brief xarm_msgs/SetFloat32Request.data: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetFloat32Request; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetFloat32Request_data :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/SetFloat32Request.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsSetFloat32Request; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsSetFloat32Request :: Ros1Xarm_msgsSetFloat32Request
defaultRos1Xarm_msgsSetFloat32Request = Ros1Xarm_msgsSetFloat32Request (0)
-- | \@brief Canonical codec identity of xarm_msgs/SetFloat32Request.
-- \@details Exact identity UWVMROS1_e723003cba5f2cc380015e77c978240a1b8c52bdbfe2e93357ffbe86e2ffd033
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetFloat32Request; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetFloat32RequestCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/SetFloat32Request.
-- \@details Exact identity UWVMROS1_e723003cba5f2cc380015e77c978240a1b8c52bdbfe2e93357ffbe86e2ffd033
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetFloat32Request; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetFloat32RequestCodecIdentity = "UWVMROS1_e723003cba5f2cc380015e77c978240a1b8c52bdbfe2e93357ffbe86e2ffd033"
-- | \@brief Encode one complete xarm_msgs/SetFloat32Request value.
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
-- \@see Ros1Xarm_msgsSetFloat32Request; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsSetFloat32Request :: Ros1Xarm_msgsSetFloat32Request -> Either Word32 B.ByteString
encodeRos1Xarm_msgsSetFloat32Request value = do
  b0 <- W.encodeFloat32 (ros1Xarm_msgsSetFloat32Request_data value)
  W.bounded 4 [b0]
-- | \@brief Read the ordered canonical fields of xarm_msgs/SetFloat32Request.
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
-- \@see Ros1Xarm_msgsSetFloat32Request; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsSetFloat32Request :: W.Decoder Ros1Xarm_msgsSetFloat32Request
readRos1Xarm_msgsSetFloat32Request = do
  a0 <- W.float32
  let value = Ros1Xarm_msgsSetFloat32Request a0
  case encodeRos1Xarm_msgsSetFloat32Request value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/SetFloat32Request value.
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
-- \@see Ros1Xarm_msgsSetFloat32Request; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsSetFloat32Request :: B.ByteString -> Either Word32 Ros1Xarm_msgsSetFloat32Request
decodeRos1Xarm_msgsSetFloat32Request = W.runDecoder 4 readRos1Xarm_msgsSetFloat32Request
instance Canonical Ros1Xarm_msgsSetFloat32Request where
  maximumBytes _ = 4
  encodeValue = encodeRos1Xarm_msgsSetFloat32Request
  readValue = readRos1Xarm_msgsSetFloat32Request
-- | \@brief Complete ROS 1 xarm_msgs/SetFloat32Response value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 6..262 bytes and is identified by
-- UWVMROS1_a42b57b8178d62ba34fb34eef2d92883a1c13135b19f5b1f876825bbea831712.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsSetFloat32Response = Ros1Xarm_msgsSetFloat32Response
  {
    -- | \@brief xarm_msgs/SetFloat32Response.ret: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetFloat32Response; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetFloat32Response_ret :: Int16
  ,
    -- | \@brief xarm_msgs/SetFloat32Response.message: string; each string is 0..256 bytes; strict UTF-8
    -- | with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetFloat32Response; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetFloat32Response_message :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/SetFloat32Response.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsSetFloat32Response; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsSetFloat32Response :: Ros1Xarm_msgsSetFloat32Response
defaultRos1Xarm_msgsSetFloat32Response = Ros1Xarm_msgsSetFloat32Response (0) (T.empty)
-- | \@brief Canonical codec identity of xarm_msgs/SetFloat32Response.
-- \@details Exact identity UWVMROS1_a42b57b8178d62ba34fb34eef2d92883a1c13135b19f5b1f876825bbea831712
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetFloat32Response; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetFloat32ResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/SetFloat32Response.
-- \@details Exact identity UWVMROS1_a42b57b8178d62ba34fb34eef2d92883a1c13135b19f5b1f876825bbea831712
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetFloat32Response; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetFloat32ResponseCodecIdentity = "UWVMROS1_a42b57b8178d62ba34fb34eef2d92883a1c13135b19f5b1f876825bbea831712"
-- | \@brief Encode one complete xarm_msgs/SetFloat32Response value.
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
-- \@see Ros1Xarm_msgsSetFloat32Response; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsSetFloat32Response :: Ros1Xarm_msgsSetFloat32Response -> Either Word32 B.ByteString
encodeRos1Xarm_msgsSetFloat32Response value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsSetFloat32Response_ret value))
  b1 <- W.encodeText 256 True (ros1Xarm_msgsSetFloat32Response_message value)
  W.bounded 262 [b0, b1]
-- | \@brief Read the ordered canonical fields of xarm_msgs/SetFloat32Response.
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
-- \@see Ros1Xarm_msgsSetFloat32Response; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsSetFloat32Response :: W.Decoder Ros1Xarm_msgsSetFloat32Response
readRos1Xarm_msgsSetFloat32Response = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- W.text 256 True
  let value = Ros1Xarm_msgsSetFloat32Response a0 a1
  case encodeRos1Xarm_msgsSetFloat32Response value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/SetFloat32Response value.
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
-- \@see Ros1Xarm_msgsSetFloat32Response; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsSetFloat32Response :: B.ByteString -> Either Word32 Ros1Xarm_msgsSetFloat32Response
decodeRos1Xarm_msgsSetFloat32Response = W.runDecoder 262 readRos1Xarm_msgsSetFloat32Response
instance Canonical Ros1Xarm_msgsSetFloat32Response where
  maximumBytes _ = 262
  encodeValue = encodeRos1Xarm_msgsSetFloat32Response
  readValue = readRos1Xarm_msgsSetFloat32Response
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
-- | \@brief Complete ROS 1 xarm_msgs/SetLoadRequest value.
-- \@details All 4 declared fields are retained in source order. The canonical representation occupies
-- 16..16 bytes and is identified by
-- UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsSetLoadRequest = Ros1Xarm_msgsSetLoadRequest
  {
    -- | \@brief xarm_msgs/SetLoadRequest.mass: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetLoadRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetLoadRequest_mass :: Float
  ,
    -- | \@brief xarm_msgs/SetLoadRequest.xc: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetLoadRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetLoadRequest_xc :: Float
  ,
    -- | \@brief xarm_msgs/SetLoadRequest.yc: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetLoadRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetLoadRequest_yc :: Float
  ,
    -- | \@brief xarm_msgs/SetLoadRequest.zc: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetLoadRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetLoadRequest_zc :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/SetLoadRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsSetLoadRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsSetLoadRequest :: Ros1Xarm_msgsSetLoadRequest
defaultRos1Xarm_msgsSetLoadRequest = Ros1Xarm_msgsSetLoadRequest (0) (0) (0) (0)
-- | \@brief Canonical codec identity of xarm_msgs/SetLoadRequest.
-- \@details Exact identity UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetLoadRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetLoadRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/SetLoadRequest.
-- \@details Exact identity UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetLoadRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetLoadRequestCodecIdentity = "UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077"
-- | \@brief Encode one complete xarm_msgs/SetLoadRequest value.
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
-- \@see Ros1Xarm_msgsSetLoadRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsSetLoadRequest :: Ros1Xarm_msgsSetLoadRequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsSetLoadRequest value = do
  b0 <- W.encodeFloat32 (ros1Xarm_msgsSetLoadRequest_mass value)
  b1 <- W.encodeFloat32 (ros1Xarm_msgsSetLoadRequest_xc value)
  b2 <- W.encodeFloat32 (ros1Xarm_msgsSetLoadRequest_yc value)
  b3 <- W.encodeFloat32 (ros1Xarm_msgsSetLoadRequest_zc value)
  W.bounded 16 [b0, b1, b2, b3]
-- | \@brief Read the ordered canonical fields of xarm_msgs/SetLoadRequest.
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
-- \@see Ros1Xarm_msgsSetLoadRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsSetLoadRequest :: W.Decoder Ros1Xarm_msgsSetLoadRequest
readRos1Xarm_msgsSetLoadRequest = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  let value = Ros1Xarm_msgsSetLoadRequest a0 a1 a2 a3
  case encodeRos1Xarm_msgsSetLoadRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/SetLoadRequest value.
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
-- \@see Ros1Xarm_msgsSetLoadRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsSetLoadRequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsSetLoadRequest
decodeRos1Xarm_msgsSetLoadRequest = W.runDecoder 16 readRos1Xarm_msgsSetLoadRequest
instance Canonical Ros1Xarm_msgsSetLoadRequest where
  maximumBytes _ = 16
  encodeValue = encodeRos1Xarm_msgsSetLoadRequest
  readValue = readRos1Xarm_msgsSetLoadRequest
-- | \@brief Complete ROS 1 xarm_msgs/SetLoadResponse value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 6..262 bytes and is identified by
-- UWVMROS1_20f4940a06078d160b6ea07f58b8fb060bc1a8821b1ad0f07b71eb69700d576e.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsSetLoadResponse = Ros1Xarm_msgsSetLoadResponse
  {
    -- | \@brief xarm_msgs/SetLoadResponse.ret: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetLoadResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetLoadResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/SetLoadResponse.message: string; each string is 0..256 bytes; strict UTF-8 with
    -- | no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetLoadResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetLoadResponse_message :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/SetLoadResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsSetLoadResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsSetLoadResponse :: Ros1Xarm_msgsSetLoadResponse
defaultRos1Xarm_msgsSetLoadResponse = Ros1Xarm_msgsSetLoadResponse (0) (T.empty)
-- | \@brief Canonical codec identity of xarm_msgs/SetLoadResponse.
-- \@details Exact identity UWVMROS1_20f4940a06078d160b6ea07f58b8fb060bc1a8821b1ad0f07b71eb69700d576e
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetLoadResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetLoadResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/SetLoadResponse.
-- \@details Exact identity UWVMROS1_20f4940a06078d160b6ea07f58b8fb060bc1a8821b1ad0f07b71eb69700d576e
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetLoadResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetLoadResponseCodecIdentity = "UWVMROS1_20f4940a06078d160b6ea07f58b8fb060bc1a8821b1ad0f07b71eb69700d576e"
-- | \@brief Encode one complete xarm_msgs/SetLoadResponse value.
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
-- \@see Ros1Xarm_msgsSetLoadResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsSetLoadResponse :: Ros1Xarm_msgsSetLoadResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsSetLoadResponse value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsSetLoadResponse_ret value))
  b1 <- W.encodeText 256 True (ros1Xarm_msgsSetLoadResponse_message value)
  W.bounded 262 [b0, b1]
-- | \@brief Read the ordered canonical fields of xarm_msgs/SetLoadResponse.
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
-- \@see Ros1Xarm_msgsSetLoadResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsSetLoadResponse :: W.Decoder Ros1Xarm_msgsSetLoadResponse
readRos1Xarm_msgsSetLoadResponse = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- W.text 256 True
  let value = Ros1Xarm_msgsSetLoadResponse a0 a1
  case encodeRos1Xarm_msgsSetLoadResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/SetLoadResponse value.
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
-- \@see Ros1Xarm_msgsSetLoadResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsSetLoadResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsSetLoadResponse
decodeRos1Xarm_msgsSetLoadResponse = W.runDecoder 262 readRos1Xarm_msgsSetLoadResponse
instance Canonical Ros1Xarm_msgsSetLoadResponse where
  maximumBytes _ = 262
  encodeValue = encodeRos1Xarm_msgsSetLoadResponse
  readValue = readRos1Xarm_msgsSetLoadResponse
-- | \@brief Complete ROS 1 xarm_msgs/SetModbusTimeoutRequest value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 5..5 bytes and is identified by
-- UWVMROS1_2cd77c33690133cdfe64c0a4ae5053e011792d98ac7c29281522f8576233c0cd.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsSetModbusTimeoutRequest = Ros1Xarm_msgsSetModbusTimeoutRequest
  {
    -- | \@brief xarm_msgs/SetModbusTimeoutRequest.timeout_ms: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetModbusTimeoutRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetModbusTimeoutRequest_timeout_ms :: Int32
  ,
    -- | \@brief xarm_msgs/SetModbusTimeoutRequest.is_transparent_transmission: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetModbusTimeoutRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetModbusTimeoutRequest_is_transparent_transmission :: Bool
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/SetModbusTimeoutRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsSetModbusTimeoutRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsSetModbusTimeoutRequest :: Ros1Xarm_msgsSetModbusTimeoutRequest
defaultRos1Xarm_msgsSetModbusTimeoutRequest = Ros1Xarm_msgsSetModbusTimeoutRequest (0) (False)
-- | \@brief Canonical codec identity of xarm_msgs/SetModbusTimeoutRequest.
-- \@details Exact identity UWVMROS1_2cd77c33690133cdfe64c0a4ae5053e011792d98ac7c29281522f8576233c0cd
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetModbusTimeoutRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetModbusTimeoutRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/SetModbusTimeoutRequest.
-- \@details Exact identity UWVMROS1_2cd77c33690133cdfe64c0a4ae5053e011792d98ac7c29281522f8576233c0cd
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetModbusTimeoutRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetModbusTimeoutRequestCodecIdentity = "UWVMROS1_2cd77c33690133cdfe64c0a4ae5053e011792d98ac7c29281522f8576233c0cd"
-- | \@brief Encode one complete xarm_msgs/SetModbusTimeoutRequest value.
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
-- \@see Ros1Xarm_msgsSetModbusTimeoutRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsSetModbusTimeoutRequest :: Ros1Xarm_msgsSetModbusTimeoutRequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsSetModbusTimeoutRequest value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros1Xarm_msgsSetModbusTimeoutRequest_timeout_ms value))
  b1 <- W.encodeBool (ros1Xarm_msgsSetModbusTimeoutRequest_is_transparent_transmission value)
  W.bounded 5 [b0, b1]
-- | \@brief Read the ordered canonical fields of xarm_msgs/SetModbusTimeoutRequest.
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
-- \@see Ros1Xarm_msgsSetModbusTimeoutRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsSetModbusTimeoutRequest :: W.Decoder Ros1Xarm_msgsSetModbusTimeoutRequest
readRos1Xarm_msgsSetModbusTimeoutRequest = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- W.boolean
  let value = Ros1Xarm_msgsSetModbusTimeoutRequest a0 a1
  case encodeRos1Xarm_msgsSetModbusTimeoutRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/SetModbusTimeoutRequest value.
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
-- \@see Ros1Xarm_msgsSetModbusTimeoutRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsSetModbusTimeoutRequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsSetModbusTimeoutRequest
decodeRos1Xarm_msgsSetModbusTimeoutRequest = W.runDecoder 5 readRos1Xarm_msgsSetModbusTimeoutRequest
instance Canonical Ros1Xarm_msgsSetModbusTimeoutRequest where
  maximumBytes _ = 5
  encodeValue = encodeRos1Xarm_msgsSetModbusTimeoutRequest
  readValue = readRos1Xarm_msgsSetModbusTimeoutRequest
-- | \@brief Complete ROS 1 xarm_msgs/SetModbusTimeoutResponse value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 6..262 bytes and is identified by
-- UWVMROS1_4cb128cb7f3b2f8fed02ce3d6be008a47b6d607ca3a9fcb1f66faafa3aee5ce8.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsSetModbusTimeoutResponse = Ros1Xarm_msgsSetModbusTimeoutResponse
  {
    -- | \@brief xarm_msgs/SetModbusTimeoutResponse.message: string; each string is 0..256 bytes; strict
    -- | UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetModbusTimeoutResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetModbusTimeoutResponse_message :: T.Text
  ,
    -- | \@brief xarm_msgs/SetModbusTimeoutResponse.ret: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetModbusTimeoutResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetModbusTimeoutResponse_ret :: Int16
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/SetModbusTimeoutResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsSetModbusTimeoutResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsSetModbusTimeoutResponse :: Ros1Xarm_msgsSetModbusTimeoutResponse
defaultRos1Xarm_msgsSetModbusTimeoutResponse = Ros1Xarm_msgsSetModbusTimeoutResponse (T.empty) (0)
-- | \@brief Canonical codec identity of xarm_msgs/SetModbusTimeoutResponse.
-- \@details Exact identity UWVMROS1_4cb128cb7f3b2f8fed02ce3d6be008a47b6d607ca3a9fcb1f66faafa3aee5ce8
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetModbusTimeoutResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetModbusTimeoutResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/SetModbusTimeoutResponse.
-- \@details Exact identity UWVMROS1_4cb128cb7f3b2f8fed02ce3d6be008a47b6d607ca3a9fcb1f66faafa3aee5ce8
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetModbusTimeoutResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetModbusTimeoutResponseCodecIdentity = "UWVMROS1_4cb128cb7f3b2f8fed02ce3d6be008a47b6d607ca3a9fcb1f66faafa3aee5ce8"
-- | \@brief Encode one complete xarm_msgs/SetModbusTimeoutResponse value.
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
-- \@see Ros1Xarm_msgsSetModbusTimeoutResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsSetModbusTimeoutResponse :: Ros1Xarm_msgsSetModbusTimeoutResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsSetModbusTimeoutResponse value = do
  b0 <- W.encodeText 256 True (ros1Xarm_msgsSetModbusTimeoutResponse_message value)
  b1 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsSetModbusTimeoutResponse_ret value))
  W.bounded 262 [b0, b1]
-- | \@brief Read the ordered canonical fields of xarm_msgs/SetModbusTimeoutResponse.
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
-- \@see Ros1Xarm_msgsSetModbusTimeoutResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsSetModbusTimeoutResponse :: W.Decoder Ros1Xarm_msgsSetModbusTimeoutResponse
readRos1Xarm_msgsSetModbusTimeoutResponse = do
  a0 <- W.text 256 True
  a1 <- fromIntegral <$> W.signed 2
  let value = Ros1Xarm_msgsSetModbusTimeoutResponse a0 a1
  case encodeRos1Xarm_msgsSetModbusTimeoutResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/SetModbusTimeoutResponse value.
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
-- \@see Ros1Xarm_msgsSetModbusTimeoutResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsSetModbusTimeoutResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsSetModbusTimeoutResponse
decodeRos1Xarm_msgsSetModbusTimeoutResponse = W.runDecoder 262 readRos1Xarm_msgsSetModbusTimeoutResponse
instance Canonical Ros1Xarm_msgsSetModbusTimeoutResponse where
  maximumBytes _ = 262
  encodeValue = encodeRos1Xarm_msgsSetModbusTimeoutResponse
  readValue = readRos1Xarm_msgsSetModbusTimeoutResponse
-- | \@brief Complete ROS 1 xarm_msgs/SetMultipleIntsRequest value.
-- \@details All 1 declared fields are retained in source order. The canonical representation occupies
-- 4..68 bytes and is identified by
-- UWVMROS1_f94d07d162a7030fd07c31ced538836e2a43e1d674e027068a6b68f0807c23d1.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsSetMultipleIntsRequest = Ros1Xarm_msgsSetMultipleIntsRequest
  {
    -- | \@brief xarm_msgs/SetMultipleIntsRequest.data_int: int16; 0..32 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetMultipleIntsRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetMultipleIntsRequest_data_int :: [Int16]
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/SetMultipleIntsRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsSetMultipleIntsRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsSetMultipleIntsRequest :: Ros1Xarm_msgsSetMultipleIntsRequest
defaultRos1Xarm_msgsSetMultipleIntsRequest = Ros1Xarm_msgsSetMultipleIntsRequest ([])
-- | \@brief Canonical codec identity of xarm_msgs/SetMultipleIntsRequest.
-- \@details Exact identity UWVMROS1_f94d07d162a7030fd07c31ced538836e2a43e1d674e027068a6b68f0807c23d1
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetMultipleIntsRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetMultipleIntsRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/SetMultipleIntsRequest.
-- \@details Exact identity UWVMROS1_f94d07d162a7030fd07c31ced538836e2a43e1d674e027068a6b68f0807c23d1
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetMultipleIntsRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetMultipleIntsRequestCodecIdentity = "UWVMROS1_f94d07d162a7030fd07c31ced538836e2a43e1d674e027068a6b68f0807c23d1"
-- | \@brief Encode one complete xarm_msgs/SetMultipleIntsRequest value.
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
-- \@see Ros1Xarm_msgsSetMultipleIntsRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsSetMultipleIntsRequest :: Ros1Xarm_msgsSetMultipleIntsRequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsSetMultipleIntsRequest value = do
  if length (ros1Xarm_msgsSetMultipleIntsRequest_data_int value) > 32 then Left 22 else Right ()
  prefix0 <- W.encodeCount 32 (length (ros1Xarm_msgsSetMultipleIntsRequest_data_int value))
  b0 <- B.concat <$> mapM (\e -> W.encodeSigned 2 (fromIntegral (e))) (ros1Xarm_msgsSetMultipleIntsRequest_data_int value)
  W.bounded 68 [prefix0, b0]
-- | \@brief Read the ordered canonical fields of xarm_msgs/SetMultipleIntsRequest.
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
-- \@see Ros1Xarm_msgsSetMultipleIntsRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsSetMultipleIntsRequest :: W.Decoder Ros1Xarm_msgsSetMultipleIntsRequest
readRos1Xarm_msgsSetMultipleIntsRequest = do
  count0 <- W.count 32
  a0 <- replicateM count0 (fromIntegral <$> W.signed 2)
  let value = Ros1Xarm_msgsSetMultipleIntsRequest a0
  case encodeRos1Xarm_msgsSetMultipleIntsRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/SetMultipleIntsRequest value.
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
-- \@see Ros1Xarm_msgsSetMultipleIntsRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsSetMultipleIntsRequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsSetMultipleIntsRequest
decodeRos1Xarm_msgsSetMultipleIntsRequest = W.runDecoder 68 readRos1Xarm_msgsSetMultipleIntsRequest
instance Canonical Ros1Xarm_msgsSetMultipleIntsRequest where
  maximumBytes _ = 68
  encodeValue = encodeRos1Xarm_msgsSetMultipleIntsRequest
  readValue = readRos1Xarm_msgsSetMultipleIntsRequest
-- | \@brief Complete ROS 1 xarm_msgs/SetMultipleIntsResponse value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 6..262 bytes and is identified by
-- UWVMROS1_28610b145913b542d397376194b66e1d6bcda4cb648c00c7cc938716a7ee4e32.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsSetMultipleIntsResponse = Ros1Xarm_msgsSetMultipleIntsResponse
  {
    -- | \@brief xarm_msgs/SetMultipleIntsResponse.ret: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetMultipleIntsResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetMultipleIntsResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/SetMultipleIntsResponse.message: string; each string is 0..256 bytes; strict
    -- | UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetMultipleIntsResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetMultipleIntsResponse_message :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/SetMultipleIntsResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsSetMultipleIntsResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsSetMultipleIntsResponse :: Ros1Xarm_msgsSetMultipleIntsResponse
defaultRos1Xarm_msgsSetMultipleIntsResponse = Ros1Xarm_msgsSetMultipleIntsResponse (0) (T.empty)
-- | \@brief Canonical codec identity of xarm_msgs/SetMultipleIntsResponse.
-- \@details Exact identity UWVMROS1_28610b145913b542d397376194b66e1d6bcda4cb648c00c7cc938716a7ee4e32
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetMultipleIntsResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetMultipleIntsResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/SetMultipleIntsResponse.
-- \@details Exact identity UWVMROS1_28610b145913b542d397376194b66e1d6bcda4cb648c00c7cc938716a7ee4e32
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetMultipleIntsResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetMultipleIntsResponseCodecIdentity = "UWVMROS1_28610b145913b542d397376194b66e1d6bcda4cb648c00c7cc938716a7ee4e32"
-- | \@brief Encode one complete xarm_msgs/SetMultipleIntsResponse value.
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
-- \@see Ros1Xarm_msgsSetMultipleIntsResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsSetMultipleIntsResponse :: Ros1Xarm_msgsSetMultipleIntsResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsSetMultipleIntsResponse value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsSetMultipleIntsResponse_ret value))
  b1 <- W.encodeText 256 True (ros1Xarm_msgsSetMultipleIntsResponse_message value)
  W.bounded 262 [b0, b1]
-- | \@brief Read the ordered canonical fields of xarm_msgs/SetMultipleIntsResponse.
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
-- \@see Ros1Xarm_msgsSetMultipleIntsResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsSetMultipleIntsResponse :: W.Decoder Ros1Xarm_msgsSetMultipleIntsResponse
readRos1Xarm_msgsSetMultipleIntsResponse = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- W.text 256 True
  let value = Ros1Xarm_msgsSetMultipleIntsResponse a0 a1
  case encodeRos1Xarm_msgsSetMultipleIntsResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/SetMultipleIntsResponse value.
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
-- \@see Ros1Xarm_msgsSetMultipleIntsResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsSetMultipleIntsResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsSetMultipleIntsResponse
decodeRos1Xarm_msgsSetMultipleIntsResponse = W.runDecoder 262 readRos1Xarm_msgsSetMultipleIntsResponse
instance Canonical Ros1Xarm_msgsSetMultipleIntsResponse where
  maximumBytes _ = 262
  encodeValue = encodeRos1Xarm_msgsSetMultipleIntsResponse
  readValue = readRos1Xarm_msgsSetMultipleIntsResponse
-- | \@brief Complete ROS 1 xarm_msgs/SetStringRequest value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 8..264 bytes and is identified by
-- UWVMROS1_7a1dc569d177cee8e573916e08ade45d02466e489320a09a66efdc97d533fd6f.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsSetStringRequest = Ros1Xarm_msgsSetStringRequest
  {
    -- | \@brief xarm_msgs/SetStringRequest.str_data: string; each string is 0..256 bytes; strict UTF-8
    -- | with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetStringRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetStringRequest_str_data :: T.Text
  ,
    -- | \@brief xarm_msgs/SetStringRequest.timeout: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetStringRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetStringRequest_timeout :: Float
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/SetStringRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsSetStringRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsSetStringRequest :: Ros1Xarm_msgsSetStringRequest
defaultRos1Xarm_msgsSetStringRequest = Ros1Xarm_msgsSetStringRequest (T.empty) (0)
-- | \@brief Canonical codec identity of xarm_msgs/SetStringRequest.
-- \@details Exact identity UWVMROS1_7a1dc569d177cee8e573916e08ade45d02466e489320a09a66efdc97d533fd6f
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetStringRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetStringRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/SetStringRequest.
-- \@details Exact identity UWVMROS1_7a1dc569d177cee8e573916e08ade45d02466e489320a09a66efdc97d533fd6f
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetStringRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetStringRequestCodecIdentity = "UWVMROS1_7a1dc569d177cee8e573916e08ade45d02466e489320a09a66efdc97d533fd6f"
-- | \@brief Encode one complete xarm_msgs/SetStringRequest value.
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
-- \@see Ros1Xarm_msgsSetStringRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsSetStringRequest :: Ros1Xarm_msgsSetStringRequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsSetStringRequest value = do
  b0 <- W.encodeText 256 True (ros1Xarm_msgsSetStringRequest_str_data value)
  b1 <- W.encodeFloat32 (ros1Xarm_msgsSetStringRequest_timeout value)
  W.bounded 264 [b0, b1]
-- | \@brief Read the ordered canonical fields of xarm_msgs/SetStringRequest.
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
-- \@see Ros1Xarm_msgsSetStringRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsSetStringRequest :: W.Decoder Ros1Xarm_msgsSetStringRequest
readRos1Xarm_msgsSetStringRequest = do
  a0 <- W.text 256 True
  a1 <- W.float32
  let value = Ros1Xarm_msgsSetStringRequest a0 a1
  case encodeRos1Xarm_msgsSetStringRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/SetStringRequest value.
-- \@details Require the complete 8..264-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsSetStringRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsSetStringRequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsSetStringRequest
decodeRos1Xarm_msgsSetStringRequest = W.runDecoder 264 readRos1Xarm_msgsSetStringRequest
instance Canonical Ros1Xarm_msgsSetStringRequest where
  maximumBytes _ = 264
  encodeValue = encodeRos1Xarm_msgsSetStringRequest
  readValue = readRos1Xarm_msgsSetStringRequest
-- | \@brief Complete ROS 1 xarm_msgs/SetStringResponse value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 6..262 bytes and is identified by
-- UWVMROS1_a68d01727a39a01c8468fcd3aaa4833f62263dfd0b580675bbf8da3019759ade.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsSetStringResponse = Ros1Xarm_msgsSetStringResponse
  {
    -- | \@brief xarm_msgs/SetStringResponse.ret: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetStringResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetStringResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/SetStringResponse.message: string; each string is 0..256 bytes; strict UTF-8
    -- | with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetStringResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetStringResponse_message :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/SetStringResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsSetStringResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsSetStringResponse :: Ros1Xarm_msgsSetStringResponse
defaultRos1Xarm_msgsSetStringResponse = Ros1Xarm_msgsSetStringResponse (0) (T.empty)
-- | \@brief Canonical codec identity of xarm_msgs/SetStringResponse.
-- \@details Exact identity UWVMROS1_a68d01727a39a01c8468fcd3aaa4833f62263dfd0b580675bbf8da3019759ade
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetStringResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetStringResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/SetStringResponse.
-- \@details Exact identity UWVMROS1_a68d01727a39a01c8468fcd3aaa4833f62263dfd0b580675bbf8da3019759ade
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetStringResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetStringResponseCodecIdentity = "UWVMROS1_a68d01727a39a01c8468fcd3aaa4833f62263dfd0b580675bbf8da3019759ade"
-- | \@brief Encode one complete xarm_msgs/SetStringResponse value.
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
-- \@see Ros1Xarm_msgsSetStringResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsSetStringResponse :: Ros1Xarm_msgsSetStringResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsSetStringResponse value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsSetStringResponse_ret value))
  b1 <- W.encodeText 256 True (ros1Xarm_msgsSetStringResponse_message value)
  W.bounded 262 [b0, b1]
-- | \@brief Read the ordered canonical fields of xarm_msgs/SetStringResponse.
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
-- \@see Ros1Xarm_msgsSetStringResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsSetStringResponse :: W.Decoder Ros1Xarm_msgsSetStringResponse
readRos1Xarm_msgsSetStringResponse = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- W.text 256 True
  let value = Ros1Xarm_msgsSetStringResponse a0 a1
  case encodeRos1Xarm_msgsSetStringResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/SetStringResponse value.
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
-- \@see Ros1Xarm_msgsSetStringResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsSetStringResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsSetStringResponse
decodeRos1Xarm_msgsSetStringResponse = W.runDecoder 262 readRos1Xarm_msgsSetStringResponse
instance Canonical Ros1Xarm_msgsSetStringResponse where
  maximumBytes _ = 262
  encodeValue = encodeRos1Xarm_msgsSetStringResponse
  readValue = readRos1Xarm_msgsSetStringResponse
-- | \@brief Complete ROS 1 xarm_msgs/SetToolModbusRequest value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 6..4102 bytes and is identified by
-- UWVMROS1_8bf73083009b67fc6a5f3342a1696a344887b83e9ef3b6b275179881e5cc25d6.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsSetToolModbusRequest = Ros1Xarm_msgsSetToolModbusRequest
  {
    -- | \@brief xarm_msgs/SetToolModbusRequest.send_data: uint8; 0..4096 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetToolModbusRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetToolModbusRequest_send_data :: [Word8]
  ,
    -- | \@brief xarm_msgs/SetToolModbusRequest.respond_len: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetToolModbusRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetToolModbusRequest_respond_len :: Int16
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/SetToolModbusRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsSetToolModbusRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsSetToolModbusRequest :: Ros1Xarm_msgsSetToolModbusRequest
defaultRos1Xarm_msgsSetToolModbusRequest = Ros1Xarm_msgsSetToolModbusRequest ([]) (0)
-- | \@brief Canonical codec identity of xarm_msgs/SetToolModbusRequest.
-- \@details Exact identity UWVMROS1_8bf73083009b67fc6a5f3342a1696a344887b83e9ef3b6b275179881e5cc25d6
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetToolModbusRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetToolModbusRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/SetToolModbusRequest.
-- \@details Exact identity UWVMROS1_8bf73083009b67fc6a5f3342a1696a344887b83e9ef3b6b275179881e5cc25d6
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetToolModbusRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetToolModbusRequestCodecIdentity = "UWVMROS1_8bf73083009b67fc6a5f3342a1696a344887b83e9ef3b6b275179881e5cc25d6"
-- | \@brief Encode one complete xarm_msgs/SetToolModbusRequest value.
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
-- \@see Ros1Xarm_msgsSetToolModbusRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsSetToolModbusRequest :: Ros1Xarm_msgsSetToolModbusRequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsSetToolModbusRequest value = do
  if length (ros1Xarm_msgsSetToolModbusRequest_send_data value) > 4096 then Left 22 else Right ()
  prefix0 <- W.encodeCount 4096 (length (ros1Xarm_msgsSetToolModbusRequest_send_data value))
  b0 <- B.concat <$> mapM (\e -> W.encodeUnsigned 1 (fromIntegral (e))) (ros1Xarm_msgsSetToolModbusRequest_send_data value)
  b1 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsSetToolModbusRequest_respond_len value))
  W.bounded 4102 [prefix0, b0, b1]
-- | \@brief Read the ordered canonical fields of xarm_msgs/SetToolModbusRequest.
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
-- \@see Ros1Xarm_msgsSetToolModbusRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsSetToolModbusRequest :: W.Decoder Ros1Xarm_msgsSetToolModbusRequest
readRos1Xarm_msgsSetToolModbusRequest = do
  count0 <- W.count 4096
  a0 <- replicateM count0 (fromIntegral <$> W.unsigned 1)
  a1 <- fromIntegral <$> W.signed 2
  let value = Ros1Xarm_msgsSetToolModbusRequest a0 a1
  case encodeRos1Xarm_msgsSetToolModbusRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/SetToolModbusRequest value.
-- \@details Require the complete 6..4102-byte canonical representation. Reject truncation, invalid fields
-- and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsSetToolModbusRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsSetToolModbusRequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsSetToolModbusRequest
decodeRos1Xarm_msgsSetToolModbusRequest = W.runDecoder 4102 readRos1Xarm_msgsSetToolModbusRequest
instance Canonical Ros1Xarm_msgsSetToolModbusRequest where
  maximumBytes _ = 4102
  encodeValue = encodeRos1Xarm_msgsSetToolModbusRequest
  readValue = readRos1Xarm_msgsSetToolModbusRequest
-- | \@brief Complete ROS 1 xarm_msgs/SetToolModbusResponse value.
-- \@details All 3 declared fields are retained in source order. The canonical representation occupies
-- 10..4362 bytes and is identified by
-- UWVMROS1_74cd8b026001be17cac0cfa475dc33278df5c1c91b45fd01385fadd90990ef76.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsSetToolModbusResponse = Ros1Xarm_msgsSetToolModbusResponse
  {
    -- | \@brief xarm_msgs/SetToolModbusResponse.ret: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetToolModbusResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetToolModbusResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/SetToolModbusResponse.message: string; each string is 0..256 bytes; strict
    -- | UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetToolModbusResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetToolModbusResponse_message :: T.Text
  ,
    -- | \@brief xarm_msgs/SetToolModbusResponse.respond_data: uint8; 0..4096 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsSetToolModbusResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsSetToolModbusResponse_respond_data :: [Word8]
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/SetToolModbusResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsSetToolModbusResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsSetToolModbusResponse :: Ros1Xarm_msgsSetToolModbusResponse
defaultRos1Xarm_msgsSetToolModbusResponse = Ros1Xarm_msgsSetToolModbusResponse (0) (T.empty) ([])
-- | \@brief Canonical codec identity of xarm_msgs/SetToolModbusResponse.
-- \@details Exact identity UWVMROS1_74cd8b026001be17cac0cfa475dc33278df5c1c91b45fd01385fadd90990ef76
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetToolModbusResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetToolModbusResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/SetToolModbusResponse.
-- \@details Exact identity UWVMROS1_74cd8b026001be17cac0cfa475dc33278df5c1c91b45fd01385fadd90990ef76
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsSetToolModbusResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsSetToolModbusResponseCodecIdentity = "UWVMROS1_74cd8b026001be17cac0cfa475dc33278df5c1c91b45fd01385fadd90990ef76"
-- | \@brief Encode one complete xarm_msgs/SetToolModbusResponse value.
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
-- \@see Ros1Xarm_msgsSetToolModbusResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsSetToolModbusResponse :: Ros1Xarm_msgsSetToolModbusResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsSetToolModbusResponse value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsSetToolModbusResponse_ret value))
  b1 <- W.encodeText 256 True (ros1Xarm_msgsSetToolModbusResponse_message value)
  if length (ros1Xarm_msgsSetToolModbusResponse_respond_data value) > 4096 then Left 22 else Right ()
  prefix2 <- W.encodeCount 4096 (length (ros1Xarm_msgsSetToolModbusResponse_respond_data value))
  b2 <- B.concat <$> mapM (\e -> W.encodeUnsigned 1 (fromIntegral (e))) (ros1Xarm_msgsSetToolModbusResponse_respond_data value)
  W.bounded 4362 [b0, b1, prefix2, b2]
-- | \@brief Read the ordered canonical fields of xarm_msgs/SetToolModbusResponse.
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
-- \@see Ros1Xarm_msgsSetToolModbusResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsSetToolModbusResponse :: W.Decoder Ros1Xarm_msgsSetToolModbusResponse
readRos1Xarm_msgsSetToolModbusResponse = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- W.text 256 True
  count2 <- W.count 4096
  a2 <- replicateM count2 (fromIntegral <$> W.unsigned 1)
  let value = Ros1Xarm_msgsSetToolModbusResponse a0 a1 a2
  case encodeRos1Xarm_msgsSetToolModbusResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/SetToolModbusResponse value.
-- \@details Require the complete 10..4362-byte canonical representation. Reject truncation, invalid
-- fields and trailing bytes before publishing a successful value.
-- \@return A complete decoded record through the native language value/result/exception/error contract.
-- \@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
-- buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
-- actual language runtime; not every failure is a recoverable codec status. No Host, network or
-- asynchronous side effect is issued.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsSetToolModbusResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsSetToolModbusResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsSetToolModbusResponse
decodeRos1Xarm_msgsSetToolModbusResponse = W.runDecoder 4362 readRos1Xarm_msgsSetToolModbusResponse
instance Canonical Ros1Xarm_msgsSetToolModbusResponse where
  maximumBytes _ = 4362
  encodeValue = encodeRos1Xarm_msgsSetToolModbusResponse
  readValue = readRos1Xarm_msgsSetToolModbusResponse
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
-- | \@brief Complete ROS 1 xarm_msgs/VacuumGripperCtrlRequest value.
-- \@details All 6 declared fields are retained in source order. The canonical representation occupies
-- 13..13 bytes and is identified by
-- UWVMROS1_08dc4a34df46f337acc6cd080e33cd67239f12882888374b08e2040c578f5fff.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsVacuumGripperCtrlRequest = Ros1Xarm_msgsVacuumGripperCtrlRequest
  {
    -- | \@brief xarm_msgs/VacuumGripperCtrlRequest.on: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsVacuumGripperCtrlRequest_on :: Bool
  ,
    -- | \@brief xarm_msgs/VacuumGripperCtrlRequest.wait: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsVacuumGripperCtrlRequest_wait :: Bool
  ,
    -- | \@brief xarm_msgs/VacuumGripperCtrlRequest.timeout: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsVacuumGripperCtrlRequest_timeout :: Float
  ,
    -- | \@brief xarm_msgs/VacuumGripperCtrlRequest.delay_sec: float32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsVacuumGripperCtrlRequest_delay_sec :: Float
  ,
    -- | \@brief xarm_msgs/VacuumGripperCtrlRequest.sync: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsVacuumGripperCtrlRequest_sync :: Bool
  ,
    -- | \@brief xarm_msgs/VacuumGripperCtrlRequest.hardware_version: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsVacuumGripperCtrlRequest_hardware_version :: Int16
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/VacuumGripperCtrlRequest.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsVacuumGripperCtrlRequest :: Ros1Xarm_msgsVacuumGripperCtrlRequest
defaultRos1Xarm_msgsVacuumGripperCtrlRequest =
  Ros1Xarm_msgsVacuumGripperCtrlRequest
    (False)
    (False)
    (0)
    (0)
    (False)
    (0)
-- | \@brief Canonical codec identity of xarm_msgs/VacuumGripperCtrlRequest.
-- \@details Exact identity UWVMROS1_08dc4a34df46f337acc6cd080e33cd67239f12882888374b08e2040c578f5fff
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsVacuumGripperCtrlRequestCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/VacuumGripperCtrlRequest.
-- \@details Exact identity UWVMROS1_08dc4a34df46f337acc6cd080e33cd67239f12882888374b08e2040c578f5fff
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsVacuumGripperCtrlRequestCodecIdentity = "UWVMROS1_08dc4a34df46f337acc6cd080e33cd67239f12882888374b08e2040c578f5fff"
-- | \@brief Encode one complete xarm_msgs/VacuumGripperCtrlRequest value.
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
-- \@see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsVacuumGripperCtrlRequest :: Ros1Xarm_msgsVacuumGripperCtrlRequest -> Either Word32 B.ByteString
encodeRos1Xarm_msgsVacuumGripperCtrlRequest value = do
  b0 <- W.encodeBool (ros1Xarm_msgsVacuumGripperCtrlRequest_on value)
  b1 <- W.encodeBool (ros1Xarm_msgsVacuumGripperCtrlRequest_wait value)
  b2 <- W.encodeFloat32 (ros1Xarm_msgsVacuumGripperCtrlRequest_timeout value)
  b3 <- W.encodeFloat32 (ros1Xarm_msgsVacuumGripperCtrlRequest_delay_sec value)
  b4 <- W.encodeBool (ros1Xarm_msgsVacuumGripperCtrlRequest_sync value)
  b5 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsVacuumGripperCtrlRequest_hardware_version value))
  W.bounded 13 [b0, b1, b2, b3, b4, b5]
-- | \@brief Read the ordered canonical fields of xarm_msgs/VacuumGripperCtrlRequest.
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
-- \@see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsVacuumGripperCtrlRequest :: W.Decoder Ros1Xarm_msgsVacuumGripperCtrlRequest
readRos1Xarm_msgsVacuumGripperCtrlRequest = do
  a0 <- W.boolean
  a1 <- W.boolean
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.boolean
  a5 <- fromIntegral <$> W.signed 2
  let value = Ros1Xarm_msgsVacuumGripperCtrlRequest a0 a1 a2 a3 a4 a5
  case encodeRos1Xarm_msgsVacuumGripperCtrlRequest value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/VacuumGripperCtrlRequest value.
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
-- \@see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsVacuumGripperCtrlRequest :: B.ByteString -> Either Word32 Ros1Xarm_msgsVacuumGripperCtrlRequest
decodeRos1Xarm_msgsVacuumGripperCtrlRequest = W.runDecoder 13 readRos1Xarm_msgsVacuumGripperCtrlRequest
instance Canonical Ros1Xarm_msgsVacuumGripperCtrlRequest where
  maximumBytes _ = 13
  encodeValue = encodeRos1Xarm_msgsVacuumGripperCtrlRequest
  readValue = readRos1Xarm_msgsVacuumGripperCtrlRequest
-- | \@brief Complete ROS 1 xarm_msgs/VacuumGripperCtrlResponse value.
-- \@details All 2 declared fields are retained in source order. The canonical representation occupies
-- 6..262 bytes and is identified by
-- UWVMROS1_338ab06d98cb287b3c5f83221264346afa3c25aba360a93545d72ec6d6c0f540.
-- \@native No native identity is established by this source record.
-- \@ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
-- publisher, subscriber, service or Action owner.
-- \@thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
-- mutable readers/writers must not be shared during a call.
-- \@permissions None for construction or pure encoding; transport needs a separate exact grant.
-- \@version The selected finite schema profile fixes field order, bounds and constants.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
data Ros1Xarm_msgsVacuumGripperCtrlResponse = Ros1Xarm_msgsVacuumGripperCtrlResponse
  {
    -- | \@brief xarm_msgs/VacuumGripperCtrlResponse.ret: int16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsVacuumGripperCtrlResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsVacuumGripperCtrlResponse_ret :: Int16
  ,
    -- | \@brief xarm_msgs/VacuumGripperCtrlResponse.message: string; each string is 0..256 bytes; strict
    -- | UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding
    -- preserves the original field position and signedness; invalid bounds fail instead of truncating the
    -- value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    -- scaling, frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    -- borrowing and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Xarm_msgsVacuumGripperCtrlResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Xarm_msgsVacuumGripperCtrlResponse_message :: T.Text
  } deriving (Eq, Show)
-- | \@brief Construct the declared defaults of xarm_msgs/VacuumGripperCtrlResponse.
-- \@details Initialize every field without transport access. Fixed arrays retain their exact shape;
-- sequence and string defaults are empty unless the schema declares a supported scalar default.
-- \@return A fresh ordinary value with all generated defaults.
-- \@lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
-- during synchronous encoding; do not share mutable cursors during a call.
-- \@thread Synchronous caller-thread operation; independent values/cursors may be used independently.
-- \@see Ros1Xarm_msgsVacuumGripperCtrlResponse; share/platform/ros/haskell/API-CONTRACT.md
defaultRos1Xarm_msgsVacuumGripperCtrlResponse :: Ros1Xarm_msgsVacuumGripperCtrlResponse
defaultRos1Xarm_msgsVacuumGripperCtrlResponse = Ros1Xarm_msgsVacuumGripperCtrlResponse (0) (T.empty)
-- | \@brief Canonical codec identity of xarm_msgs/VacuumGripperCtrlResponse.
-- \@details Exact identity UWVMROS1_338ab06d98cb287b3c5f83221264346afa3c25aba360a93545d72ec6d6c0f540
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsVacuumGripperCtrlResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsVacuumGripperCtrlResponseCodecIdentity :: String
-- | \@brief Canonical codec identity of xarm_msgs/VacuumGripperCtrlResponse.
-- \@details Exact identity UWVMROS1_338ab06d98cb287b3c5f83221264346afa3c25aba360a93545d72ec6d6c0f540
-- binds field order, shape and bounds. It does not replace the native type identity.
-- \@see Ros1Xarm_msgsVacuumGripperCtrlResponse; share/platform/ros/haskell/API-CONTRACT.md
ros1Xarm_msgsVacuumGripperCtrlResponseCodecIdentity = "UWVMROS1_338ab06d98cb287b3c5f83221264346afa3c25aba360a93545d72ec6d6c0f540"
-- | \@brief Encode one complete xarm_msgs/VacuumGripperCtrlResponse value.
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
-- \@see Ros1Xarm_msgsVacuumGripperCtrlResponse; share/platform/ros/haskell/API-CONTRACT.md
encodeRos1Xarm_msgsVacuumGripperCtrlResponse :: Ros1Xarm_msgsVacuumGripperCtrlResponse -> Either Word32 B.ByteString
encodeRos1Xarm_msgsVacuumGripperCtrlResponse value = do
  b0 <- W.encodeSigned 2 (fromIntegral (ros1Xarm_msgsVacuumGripperCtrlResponse_ret value))
  b1 <- W.encodeText 256 True (ros1Xarm_msgsVacuumGripperCtrlResponse_message value)
  W.bounded 262 [b0, b1]
-- | \@brief Read the ordered canonical fields of xarm_msgs/VacuumGripperCtrlResponse.
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
-- \@see Ros1Xarm_msgsVacuumGripperCtrlResponse; share/platform/ros/haskell/API-CONTRACT.md
readRos1Xarm_msgsVacuumGripperCtrlResponse :: W.Decoder Ros1Xarm_msgsVacuumGripperCtrlResponse
readRos1Xarm_msgsVacuumGripperCtrlResponse = do
  a0 <- fromIntegral <$> W.signed 2
  a1 <- W.text 256 True
  let value = Ros1Xarm_msgsVacuumGripperCtrlResponse a0 a1
  case encodeRos1Xarm_msgsVacuumGripperCtrlResponse value of
    Left c -> W.failure c
    Right _ -> pure value
-- | \@brief Decode exactly one complete xarm_msgs/VacuumGripperCtrlResponse value.
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
-- \@see Ros1Xarm_msgsVacuumGripperCtrlResponse; share/platform/ros/haskell/API-CONTRACT.md
decodeRos1Xarm_msgsVacuumGripperCtrlResponse :: B.ByteString -> Either Word32 Ros1Xarm_msgsVacuumGripperCtrlResponse
decodeRos1Xarm_msgsVacuumGripperCtrlResponse = W.runDecoder 262 readRos1Xarm_msgsVacuumGripperCtrlResponse
instance Canonical Ros1Xarm_msgsVacuumGripperCtrlResponse where
  maximumBytes _ = 262
  encodeValue = encodeRos1Xarm_msgsVacuumGripperCtrlResponse
  readValue = readRos1Xarm_msgsVacuumGripperCtrlResponse
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
