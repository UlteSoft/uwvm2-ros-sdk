-- Generated complete canonical values; all field selectors are record-qualified.
module Franka.Ros2.Records where
import Data.Int
import Data.Word
import qualified Data.ByteString as B
import qualified Data.Text as T
import GHC.Float
import Control.Monad (replicateM)
import qualified RosWasm.Wire as W
import RosWasm.Typed (Canonical(..))
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
defaultRos2Builtin_interfacesMsgTime :: Ros2Builtin_interfacesMsgTime
defaultRos2Builtin_interfacesMsgTime = Ros2Builtin_interfacesMsgTime (0) (0)
ros2Builtin_interfacesMsgTimeCodecIdentity :: String
ros2Builtin_interfacesMsgTimeCodecIdentity = "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7"
encodeRos2Builtin_interfacesMsgTime :: Ros2Builtin_interfacesMsgTime -> Either Word32 B.ByteString
encodeRos2Builtin_interfacesMsgTime value = do
  if (ros2Builtin_interfacesMsgTime_nanosec value) >= 1000000000 then Left 22 else Right ()
  b0 <- W.encodeSigned 4 (fromIntegral (ros2Builtin_interfacesMsgTime_sec value))
  b1 <- W.encodeUnsigned 4 (fromIntegral (ros2Builtin_interfacesMsgTime_nanosec value))
  W.bounded 8 [b0, b1]
readRos2Builtin_interfacesMsgTime :: W.Decoder Ros2Builtin_interfacesMsgTime
readRos2Builtin_interfacesMsgTime = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- fromIntegral <$> W.unsigned 4
  let value = Ros2Builtin_interfacesMsgTime a0 a1
  case encodeRos2Builtin_interfacesMsgTime value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Builtin_interfacesMsgTime :: B.ByteString -> Either Word32 Ros2Builtin_interfacesMsgTime
decodeRos2Builtin_interfacesMsgTime = W.runDecoder 8 readRos2Builtin_interfacesMsgTime
instance Canonical Ros2Builtin_interfacesMsgTime where
  maximumBytes _ = 8
  encodeValue = encodeRos2Builtin_interfacesMsgTime
  readValue = readRos2Builtin_interfacesMsgTime
data Ros2Franka_msgsActionErrorRecovery_Goal = Ros2Franka_msgsActionErrorRecovery_Goal deriving (Eq, Show)
defaultRos2Franka_msgsActionErrorRecovery_Goal :: Ros2Franka_msgsActionErrorRecovery_Goal
defaultRos2Franka_msgsActionErrorRecovery_Goal = Ros2Franka_msgsActionErrorRecovery_Goal 
ros2Franka_msgsActionErrorRecovery_GoalCodecIdentity :: String
ros2Franka_msgsActionErrorRecovery_GoalCodecIdentity = "UWVMROS1_2caee3e8d5c04f12239a71f6e9a9259b818b9f1ad75103442bfc9d2343a3a070"
encodeRos2Franka_msgsActionErrorRecovery_Goal :: Ros2Franka_msgsActionErrorRecovery_Goal -> Either Word32 B.ByteString
encodeRos2Franka_msgsActionErrorRecovery_Goal value = do
  W.bounded 0 []
readRos2Franka_msgsActionErrorRecovery_Goal :: W.Decoder Ros2Franka_msgsActionErrorRecovery_Goal
readRos2Franka_msgsActionErrorRecovery_Goal = do
  let value = Ros2Franka_msgsActionErrorRecovery_Goal 
  case encodeRos2Franka_msgsActionErrorRecovery_Goal value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_msgsActionErrorRecovery_Goal :: B.ByteString -> Either Word32 Ros2Franka_msgsActionErrorRecovery_Goal
decodeRos2Franka_msgsActionErrorRecovery_Goal = W.runDecoder 0 readRos2Franka_msgsActionErrorRecovery_Goal
instance Canonical Ros2Franka_msgsActionErrorRecovery_Goal where
  maximumBytes _ = 0
  encodeValue = encodeRos2Franka_msgsActionErrorRecovery_Goal
  readValue = readRos2Franka_msgsActionErrorRecovery_Goal
data Ros2Franka_msgsActionErrorRecovery_Result = Ros2Franka_msgsActionErrorRecovery_Result deriving (Eq, Show)
defaultRos2Franka_msgsActionErrorRecovery_Result :: Ros2Franka_msgsActionErrorRecovery_Result
defaultRos2Franka_msgsActionErrorRecovery_Result = Ros2Franka_msgsActionErrorRecovery_Result 
ros2Franka_msgsActionErrorRecovery_ResultCodecIdentity :: String
ros2Franka_msgsActionErrorRecovery_ResultCodecIdentity = "UWVMROS1_9112b16c42034737b96214f23249d499ab6a9f0aee529cfec34c67cdc76809e9"
encodeRos2Franka_msgsActionErrorRecovery_Result :: Ros2Franka_msgsActionErrorRecovery_Result -> Either Word32 B.ByteString
encodeRos2Franka_msgsActionErrorRecovery_Result value = do
  W.bounded 0 []
readRos2Franka_msgsActionErrorRecovery_Result :: W.Decoder Ros2Franka_msgsActionErrorRecovery_Result
readRos2Franka_msgsActionErrorRecovery_Result = do
  let value = Ros2Franka_msgsActionErrorRecovery_Result 
  case encodeRos2Franka_msgsActionErrorRecovery_Result value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_msgsActionErrorRecovery_Result :: B.ByteString -> Either Word32 Ros2Franka_msgsActionErrorRecovery_Result
decodeRos2Franka_msgsActionErrorRecovery_Result = W.runDecoder 0 readRos2Franka_msgsActionErrorRecovery_Result
instance Canonical Ros2Franka_msgsActionErrorRecovery_Result where
  maximumBytes _ = 0
  encodeValue = encodeRos2Franka_msgsActionErrorRecovery_Result
  readValue = readRos2Franka_msgsActionErrorRecovery_Result
data Ros2Franka_msgsActionErrorRecovery_Feedback = Ros2Franka_msgsActionErrorRecovery_Feedback deriving (Eq, Show)
defaultRos2Franka_msgsActionErrorRecovery_Feedback :: Ros2Franka_msgsActionErrorRecovery_Feedback
defaultRos2Franka_msgsActionErrorRecovery_Feedback = Ros2Franka_msgsActionErrorRecovery_Feedback 
ros2Franka_msgsActionErrorRecovery_FeedbackCodecIdentity :: String
ros2Franka_msgsActionErrorRecovery_FeedbackCodecIdentity =
        "UWVMROS1_cc817bcbe5790860e83c71e50a8c3610cf3965e34036b3099712cdcdb426127f"
encodeRos2Franka_msgsActionErrorRecovery_Feedback :: Ros2Franka_msgsActionErrorRecovery_Feedback -> Either Word32 B.ByteString
encodeRos2Franka_msgsActionErrorRecovery_Feedback value = do
  W.bounded 0 []
readRos2Franka_msgsActionErrorRecovery_Feedback :: W.Decoder Ros2Franka_msgsActionErrorRecovery_Feedback
readRos2Franka_msgsActionErrorRecovery_Feedback = do
  let value = Ros2Franka_msgsActionErrorRecovery_Feedback 
  case encodeRos2Franka_msgsActionErrorRecovery_Feedback value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_msgsActionErrorRecovery_Feedback :: B.ByteString -> Either Word32 Ros2Franka_msgsActionErrorRecovery_Feedback
decodeRos2Franka_msgsActionErrorRecovery_Feedback = W.runDecoder 0 readRos2Franka_msgsActionErrorRecovery_Feedback
instance Canonical Ros2Franka_msgsActionErrorRecovery_Feedback where
  maximumBytes _ = 0
  encodeValue = encodeRos2Franka_msgsActionErrorRecovery_Feedback
  readValue = readRos2Franka_msgsActionErrorRecovery_Feedback
data Ros2Franka_msgsMsgGraspEpsilon = Ros2Franka_msgsMsgGraspEpsilon
  {
    -- | \@brief franka_msgs/msg/GraspEpsilon.inner: float64.
    -- \@details Schema default 0.005. Encoding preserves the original field position and signedness; invalid bounds
    -- fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgGraspEpsilon; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgGraspEpsilon_inner :: Double
  ,
    -- | \@brief franka_msgs/msg/GraspEpsilon.outer: float64.
    -- \@details Schema default 0.005. Encoding preserves the original field position and signedness; invalid bounds
    -- fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgGraspEpsilon; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgGraspEpsilon_outer :: Double
  } deriving (Eq, Show)
defaultRos2Franka_msgsMsgGraspEpsilon :: Ros2Franka_msgsMsgGraspEpsilon
defaultRos2Franka_msgsMsgGraspEpsilon = Ros2Franka_msgsMsgGraspEpsilon (castWord64ToDouble 0x3f747ae147ae147b) (castWord64ToDouble
        0x3f747ae147ae147b)
ros2Franka_msgsMsgGraspEpsilonCodecIdentity :: String
ros2Franka_msgsMsgGraspEpsilonCodecIdentity = "UWVMROS1_21787ae5929dc83b9f644f4914e22da9ddd3e4f7ad3d8c6cda6bbcdfeba20c38"
encodeRos2Franka_msgsMsgGraspEpsilon :: Ros2Franka_msgsMsgGraspEpsilon -> Either Word32 B.ByteString
encodeRos2Franka_msgsMsgGraspEpsilon value = do
  b0 <- W.encodeFloat64 (ros2Franka_msgsMsgGraspEpsilon_inner value)
  b1 <- W.encodeFloat64 (ros2Franka_msgsMsgGraspEpsilon_outer value)
  W.bounded 16 [b0, b1]
readRos2Franka_msgsMsgGraspEpsilon :: W.Decoder Ros2Franka_msgsMsgGraspEpsilon
readRos2Franka_msgsMsgGraspEpsilon = do
  a0 <- W.float64
  a1 <- W.float64
  let value = Ros2Franka_msgsMsgGraspEpsilon a0 a1
  case encodeRos2Franka_msgsMsgGraspEpsilon value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_msgsMsgGraspEpsilon :: B.ByteString -> Either Word32 Ros2Franka_msgsMsgGraspEpsilon
decodeRos2Franka_msgsMsgGraspEpsilon = W.runDecoder 16 readRos2Franka_msgsMsgGraspEpsilon
instance Canonical Ros2Franka_msgsMsgGraspEpsilon where
  maximumBytes _ = 16
  encodeValue = encodeRos2Franka_msgsMsgGraspEpsilon
  readValue = readRos2Franka_msgsMsgGraspEpsilon
data Ros2Franka_msgsActionGrasp_Goal = Ros2Franka_msgsActionGrasp_Goal
  {
    -- | \@brief franka_msgs/action/Grasp_Goal.width: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsActionGrasp_Goal; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsActionGrasp_Goal_width :: Double
  ,
    -- | \@brief franka_msgs/action/Grasp_Goal.epsilon: franka_msgs/msg/GraspEpsilon.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsActionGrasp_Goal; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsActionGrasp_Goal_epsilon :: Ros2Franka_msgsMsgGraspEpsilon
  ,
    -- | \@brief franka_msgs/action/Grasp_Goal.speed: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsActionGrasp_Goal; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsActionGrasp_Goal_speed :: Double
  ,
    -- | \@brief franka_msgs/action/Grasp_Goal.force: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsActionGrasp_Goal; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsActionGrasp_Goal_force :: Double
  } deriving (Eq, Show)
defaultRos2Franka_msgsActionGrasp_Goal :: Ros2Franka_msgsActionGrasp_Goal
defaultRos2Franka_msgsActionGrasp_Goal = Ros2Franka_msgsActionGrasp_Goal (0) (defaultRos2Franka_msgsMsgGraspEpsilon) (0) (0)
ros2Franka_msgsActionGrasp_GoalCodecIdentity :: String
ros2Franka_msgsActionGrasp_GoalCodecIdentity = "UWVMROS1_b7ef701e9fd93b5da9894499234d3647ecc4cea1936f637105c172f4579b6e1f"
encodeRos2Franka_msgsActionGrasp_Goal :: Ros2Franka_msgsActionGrasp_Goal -> Either Word32 B.ByteString
encodeRos2Franka_msgsActionGrasp_Goal value = do
  b0 <- W.encodeFloat64 (ros2Franka_msgsActionGrasp_Goal_width value)
  b1 <- encodeRos2Franka_msgsMsgGraspEpsilon (ros2Franka_msgsActionGrasp_Goal_epsilon value)
  b2 <- W.encodeFloat64 (ros2Franka_msgsActionGrasp_Goal_speed value)
  b3 <- W.encodeFloat64 (ros2Franka_msgsActionGrasp_Goal_force value)
  W.bounded 40 [b0, b1, b2, b3]
readRos2Franka_msgsActionGrasp_Goal :: W.Decoder Ros2Franka_msgsActionGrasp_Goal
readRos2Franka_msgsActionGrasp_Goal = do
  a0 <- W.float64
  a1 <- readRos2Franka_msgsMsgGraspEpsilon
  a2 <- W.float64
  a3 <- W.float64
  let value = Ros2Franka_msgsActionGrasp_Goal a0 a1 a2 a3
  case encodeRos2Franka_msgsActionGrasp_Goal value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_msgsActionGrasp_Goal :: B.ByteString -> Either Word32 Ros2Franka_msgsActionGrasp_Goal
decodeRos2Franka_msgsActionGrasp_Goal = W.runDecoder 40 readRos2Franka_msgsActionGrasp_Goal
instance Canonical Ros2Franka_msgsActionGrasp_Goal where
  maximumBytes _ = 40
  encodeValue = encodeRos2Franka_msgsActionGrasp_Goal
  readValue = readRos2Franka_msgsActionGrasp_Goal
data Ros2Franka_msgsActionGrasp_Result = Ros2Franka_msgsActionGrasp_Result
  {
    -- | \@brief franka_msgs/action/Grasp_Result.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsActionGrasp_Result; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsActionGrasp_Result_success :: Bool
  ,
    -- | \@brief franka_msgs/action/Grasp_Result.error: string; each string is 0..256 bytes; strict UTF-8 with no
    -- | embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsActionGrasp_Result; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsActionGrasp_Result_error :: T.Text
  } deriving (Eq, Show)
defaultRos2Franka_msgsActionGrasp_Result :: Ros2Franka_msgsActionGrasp_Result
defaultRos2Franka_msgsActionGrasp_Result = Ros2Franka_msgsActionGrasp_Result (False) (T.empty)
ros2Franka_msgsActionGrasp_ResultCodecIdentity :: String
ros2Franka_msgsActionGrasp_ResultCodecIdentity = "UWVMROS1_9a4c3150c0c2d5eb8ff3dad403473a9546ee37cc3086a55a628a1a85b905b733"
encodeRos2Franka_msgsActionGrasp_Result :: Ros2Franka_msgsActionGrasp_Result -> Either Word32 B.ByteString
encodeRos2Franka_msgsActionGrasp_Result value = do
  b0 <- W.encodeBool (ros2Franka_msgsActionGrasp_Result_success value)
  b1 <- W.encodeText 256 True (ros2Franka_msgsActionGrasp_Result_error value)
  W.bounded 261 [b0, b1]
readRos2Franka_msgsActionGrasp_Result :: W.Decoder Ros2Franka_msgsActionGrasp_Result
readRos2Franka_msgsActionGrasp_Result = do
  a0 <- W.boolean
  a1 <- W.text 256 True
  let value = Ros2Franka_msgsActionGrasp_Result a0 a1
  case encodeRos2Franka_msgsActionGrasp_Result value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_msgsActionGrasp_Result :: B.ByteString -> Either Word32 Ros2Franka_msgsActionGrasp_Result
decodeRos2Franka_msgsActionGrasp_Result = W.runDecoder 261 readRos2Franka_msgsActionGrasp_Result
instance Canonical Ros2Franka_msgsActionGrasp_Result where
  maximumBytes _ = 261
  encodeValue = encodeRos2Franka_msgsActionGrasp_Result
  readValue = readRos2Franka_msgsActionGrasp_Result
data Ros2Franka_msgsActionGrasp_Feedback = Ros2Franka_msgsActionGrasp_Feedback
  {
    -- | \@brief franka_msgs/action/Grasp_Feedback.current_width: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsActionGrasp_Feedback; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsActionGrasp_Feedback_current_width :: Double
  } deriving (Eq, Show)
defaultRos2Franka_msgsActionGrasp_Feedback :: Ros2Franka_msgsActionGrasp_Feedback
defaultRos2Franka_msgsActionGrasp_Feedback = Ros2Franka_msgsActionGrasp_Feedback (0)
ros2Franka_msgsActionGrasp_FeedbackCodecIdentity :: String
ros2Franka_msgsActionGrasp_FeedbackCodecIdentity = "UWVMROS1_2e7697286c002e2d891e9c3167aa0dd1664acfc66c649fff6e8f9101c42703fe"
encodeRos2Franka_msgsActionGrasp_Feedback :: Ros2Franka_msgsActionGrasp_Feedback -> Either Word32 B.ByteString
encodeRos2Franka_msgsActionGrasp_Feedback value = do
  b0 <- W.encodeFloat64 (ros2Franka_msgsActionGrasp_Feedback_current_width value)
  W.bounded 8 [b0]
readRos2Franka_msgsActionGrasp_Feedback :: W.Decoder Ros2Franka_msgsActionGrasp_Feedback
readRos2Franka_msgsActionGrasp_Feedback = do
  a0 <- W.float64
  let value = Ros2Franka_msgsActionGrasp_Feedback a0
  case encodeRos2Franka_msgsActionGrasp_Feedback value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_msgsActionGrasp_Feedback :: B.ByteString -> Either Word32 Ros2Franka_msgsActionGrasp_Feedback
decodeRos2Franka_msgsActionGrasp_Feedback = W.runDecoder 8 readRos2Franka_msgsActionGrasp_Feedback
instance Canonical Ros2Franka_msgsActionGrasp_Feedback where
  maximumBytes _ = 8
  encodeValue = encodeRos2Franka_msgsActionGrasp_Feedback
  readValue = readRos2Franka_msgsActionGrasp_Feedback
data Ros2Franka_msgsActionHoming_Goal = Ros2Franka_msgsActionHoming_Goal deriving (Eq, Show)
defaultRos2Franka_msgsActionHoming_Goal :: Ros2Franka_msgsActionHoming_Goal
defaultRos2Franka_msgsActionHoming_Goal = Ros2Franka_msgsActionHoming_Goal 
ros2Franka_msgsActionHoming_GoalCodecIdentity :: String
ros2Franka_msgsActionHoming_GoalCodecIdentity = "UWVMROS1_8008426ce3fa8c8d62133704f8738201b8154b324ba07e7b6f605cd3132a885d"
encodeRos2Franka_msgsActionHoming_Goal :: Ros2Franka_msgsActionHoming_Goal -> Either Word32 B.ByteString
encodeRos2Franka_msgsActionHoming_Goal value = do
  W.bounded 0 []
readRos2Franka_msgsActionHoming_Goal :: W.Decoder Ros2Franka_msgsActionHoming_Goal
readRos2Franka_msgsActionHoming_Goal = do
  let value = Ros2Franka_msgsActionHoming_Goal 
  case encodeRos2Franka_msgsActionHoming_Goal value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_msgsActionHoming_Goal :: B.ByteString -> Either Word32 Ros2Franka_msgsActionHoming_Goal
decodeRos2Franka_msgsActionHoming_Goal = W.runDecoder 0 readRos2Franka_msgsActionHoming_Goal
instance Canonical Ros2Franka_msgsActionHoming_Goal where
  maximumBytes _ = 0
  encodeValue = encodeRos2Franka_msgsActionHoming_Goal
  readValue = readRos2Franka_msgsActionHoming_Goal
data Ros2Franka_msgsActionHoming_Result = Ros2Franka_msgsActionHoming_Result
  {
    -- | \@brief franka_msgs/action/Homing_Result.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsActionHoming_Result; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsActionHoming_Result_success :: Bool
  ,
    -- | \@brief franka_msgs/action/Homing_Result.error: string; each string is 0..256 bytes; strict UTF-8 with no
    -- | embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsActionHoming_Result; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsActionHoming_Result_error :: T.Text
  } deriving (Eq, Show)
defaultRos2Franka_msgsActionHoming_Result :: Ros2Franka_msgsActionHoming_Result
defaultRos2Franka_msgsActionHoming_Result = Ros2Franka_msgsActionHoming_Result (False) (T.empty)
ros2Franka_msgsActionHoming_ResultCodecIdentity :: String
ros2Franka_msgsActionHoming_ResultCodecIdentity = "UWVMROS1_74a9677213ffa9ba3a26b3053956350b8f75d5d1769152e5e3d4d26370bcd77c"
encodeRos2Franka_msgsActionHoming_Result :: Ros2Franka_msgsActionHoming_Result -> Either Word32 B.ByteString
encodeRos2Franka_msgsActionHoming_Result value = do
  b0 <- W.encodeBool (ros2Franka_msgsActionHoming_Result_success value)
  b1 <- W.encodeText 256 True (ros2Franka_msgsActionHoming_Result_error value)
  W.bounded 261 [b0, b1]
readRos2Franka_msgsActionHoming_Result :: W.Decoder Ros2Franka_msgsActionHoming_Result
readRos2Franka_msgsActionHoming_Result = do
  a0 <- W.boolean
  a1 <- W.text 256 True
  let value = Ros2Franka_msgsActionHoming_Result a0 a1
  case encodeRos2Franka_msgsActionHoming_Result value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_msgsActionHoming_Result :: B.ByteString -> Either Word32 Ros2Franka_msgsActionHoming_Result
decodeRos2Franka_msgsActionHoming_Result = W.runDecoder 261 readRos2Franka_msgsActionHoming_Result
instance Canonical Ros2Franka_msgsActionHoming_Result where
  maximumBytes _ = 261
  encodeValue = encodeRos2Franka_msgsActionHoming_Result
  readValue = readRos2Franka_msgsActionHoming_Result
data Ros2Franka_msgsActionHoming_Feedback = Ros2Franka_msgsActionHoming_Feedback
  {
    -- | \@brief franka_msgs/action/Homing_Feedback.current_width: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsActionHoming_Feedback; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsActionHoming_Feedback_current_width :: Double
  } deriving (Eq, Show)
defaultRos2Franka_msgsActionHoming_Feedback :: Ros2Franka_msgsActionHoming_Feedback
defaultRos2Franka_msgsActionHoming_Feedback = Ros2Franka_msgsActionHoming_Feedback (0)
ros2Franka_msgsActionHoming_FeedbackCodecIdentity :: String
ros2Franka_msgsActionHoming_FeedbackCodecIdentity = "UWVMROS1_2260e092d369a0d2e4bf97ca2dfa78c02b6836b8167e71d63e76b5c0c40a6b46"
encodeRos2Franka_msgsActionHoming_Feedback :: Ros2Franka_msgsActionHoming_Feedback -> Either Word32 B.ByteString
encodeRos2Franka_msgsActionHoming_Feedback value = do
  b0 <- W.encodeFloat64 (ros2Franka_msgsActionHoming_Feedback_current_width value)
  W.bounded 8 [b0]
readRos2Franka_msgsActionHoming_Feedback :: W.Decoder Ros2Franka_msgsActionHoming_Feedback
readRos2Franka_msgsActionHoming_Feedback = do
  a0 <- W.float64
  let value = Ros2Franka_msgsActionHoming_Feedback a0
  case encodeRos2Franka_msgsActionHoming_Feedback value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_msgsActionHoming_Feedback :: B.ByteString -> Either Word32 Ros2Franka_msgsActionHoming_Feedback
decodeRos2Franka_msgsActionHoming_Feedback = W.runDecoder 8 readRos2Franka_msgsActionHoming_Feedback
instance Canonical Ros2Franka_msgsActionHoming_Feedback where
  maximumBytes _ = 8
  encodeValue = encodeRos2Franka_msgsActionHoming_Feedback
  readValue = readRos2Franka_msgsActionHoming_Feedback
data Ros2Franka_msgsActionMove_Goal = Ros2Franka_msgsActionMove_Goal
  {
    -- | \@brief franka_msgs/action/Move_Goal.width: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsActionMove_Goal; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsActionMove_Goal_width :: Double
  ,
    -- | \@brief franka_msgs/action/Move_Goal.speed: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsActionMove_Goal; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsActionMove_Goal_speed :: Double
  } deriving (Eq, Show)
defaultRos2Franka_msgsActionMove_Goal :: Ros2Franka_msgsActionMove_Goal
defaultRos2Franka_msgsActionMove_Goal = Ros2Franka_msgsActionMove_Goal (0) (0)
ros2Franka_msgsActionMove_GoalCodecIdentity :: String
ros2Franka_msgsActionMove_GoalCodecIdentity = "UWVMROS1_9f9e308ebd034344ee73b22a07d005944975c037943279504b2414bdd9ad206f"
encodeRos2Franka_msgsActionMove_Goal :: Ros2Franka_msgsActionMove_Goal -> Either Word32 B.ByteString
encodeRos2Franka_msgsActionMove_Goal value = do
  b0 <- W.encodeFloat64 (ros2Franka_msgsActionMove_Goal_width value)
  b1 <- W.encodeFloat64 (ros2Franka_msgsActionMove_Goal_speed value)
  W.bounded 16 [b0, b1]
readRos2Franka_msgsActionMove_Goal :: W.Decoder Ros2Franka_msgsActionMove_Goal
readRos2Franka_msgsActionMove_Goal = do
  a0 <- W.float64
  a1 <- W.float64
  let value = Ros2Franka_msgsActionMove_Goal a0 a1
  case encodeRos2Franka_msgsActionMove_Goal value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_msgsActionMove_Goal :: B.ByteString -> Either Word32 Ros2Franka_msgsActionMove_Goal
decodeRos2Franka_msgsActionMove_Goal = W.runDecoder 16 readRos2Franka_msgsActionMove_Goal
instance Canonical Ros2Franka_msgsActionMove_Goal where
  maximumBytes _ = 16
  encodeValue = encodeRos2Franka_msgsActionMove_Goal
  readValue = readRos2Franka_msgsActionMove_Goal
data Ros2Franka_msgsActionMove_Result = Ros2Franka_msgsActionMove_Result
  {
    -- | \@brief franka_msgs/action/Move_Result.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsActionMove_Result; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsActionMove_Result_success :: Bool
  ,
    -- | \@brief franka_msgs/action/Move_Result.error: string; each string is 0..256 bytes; strict UTF-8 with no
    -- | embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsActionMove_Result; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsActionMove_Result_error :: T.Text
  } deriving (Eq, Show)
defaultRos2Franka_msgsActionMove_Result :: Ros2Franka_msgsActionMove_Result
defaultRos2Franka_msgsActionMove_Result = Ros2Franka_msgsActionMove_Result (False) (T.empty)
ros2Franka_msgsActionMove_ResultCodecIdentity :: String
ros2Franka_msgsActionMove_ResultCodecIdentity = "UWVMROS1_66aa505c035357274c68be773e1b502c7d77f195f3dca848e818811ce95dd266"
encodeRos2Franka_msgsActionMove_Result :: Ros2Franka_msgsActionMove_Result -> Either Word32 B.ByteString
encodeRos2Franka_msgsActionMove_Result value = do
  b0 <- W.encodeBool (ros2Franka_msgsActionMove_Result_success value)
  b1 <- W.encodeText 256 True (ros2Franka_msgsActionMove_Result_error value)
  W.bounded 261 [b0, b1]
readRos2Franka_msgsActionMove_Result :: W.Decoder Ros2Franka_msgsActionMove_Result
readRos2Franka_msgsActionMove_Result = do
  a0 <- W.boolean
  a1 <- W.text 256 True
  let value = Ros2Franka_msgsActionMove_Result a0 a1
  case encodeRos2Franka_msgsActionMove_Result value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_msgsActionMove_Result :: B.ByteString -> Either Word32 Ros2Franka_msgsActionMove_Result
decodeRos2Franka_msgsActionMove_Result = W.runDecoder 261 readRos2Franka_msgsActionMove_Result
instance Canonical Ros2Franka_msgsActionMove_Result where
  maximumBytes _ = 261
  encodeValue = encodeRos2Franka_msgsActionMove_Result
  readValue = readRos2Franka_msgsActionMove_Result
data Ros2Franka_msgsActionMove_Feedback = Ros2Franka_msgsActionMove_Feedback
  {
    -- | \@brief franka_msgs/action/Move_Feedback.current_width: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsActionMove_Feedback; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsActionMove_Feedback_current_width :: Double
  } deriving (Eq, Show)
defaultRos2Franka_msgsActionMove_Feedback :: Ros2Franka_msgsActionMove_Feedback
defaultRos2Franka_msgsActionMove_Feedback = Ros2Franka_msgsActionMove_Feedback (0)
ros2Franka_msgsActionMove_FeedbackCodecIdentity :: String
ros2Franka_msgsActionMove_FeedbackCodecIdentity = "UWVMROS1_18d0e658f109492380c135e787adbdcc026b051e9a547fcea70453bbd9750596"
encodeRos2Franka_msgsActionMove_Feedback :: Ros2Franka_msgsActionMove_Feedback -> Either Word32 B.ByteString
encodeRos2Franka_msgsActionMove_Feedback value = do
  b0 <- W.encodeFloat64 (ros2Franka_msgsActionMove_Feedback_current_width value)
  W.bounded 8 [b0]
readRos2Franka_msgsActionMove_Feedback :: W.Decoder Ros2Franka_msgsActionMove_Feedback
readRos2Franka_msgsActionMove_Feedback = do
  a0 <- W.float64
  let value = Ros2Franka_msgsActionMove_Feedback a0
  case encodeRos2Franka_msgsActionMove_Feedback value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_msgsActionMove_Feedback :: B.ByteString -> Either Word32 Ros2Franka_msgsActionMove_Feedback
decodeRos2Franka_msgsActionMove_Feedback = W.runDecoder 8 readRos2Franka_msgsActionMove_Feedback
instance Canonical Ros2Franka_msgsActionMove_Feedback where
  maximumBytes _ = 8
  encodeValue = encodeRos2Franka_msgsActionMove_Feedback
  readValue = readRos2Franka_msgsActionMove_Feedback
data Ros2Franka_msgsActionPTPMotion_Goal = Ros2Franka_msgsActionPTPMotion_Goal
  {
    -- | \@brief franka_msgs/action/PTPMotion_Goal.goal_joint_configuration: float64; 0..7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsActionPTPMotion_Goal; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsActionPTPMotion_Goal_goal_joint_configuration :: [Double]
  ,
    -- | \@brief franka_msgs/action/PTPMotion_Goal.maximum_joint_velocities: float64; 0..7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsActionPTPMotion_Goal; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsActionPTPMotion_Goal_maximum_joint_velocities :: [Double]
  ,
    -- | \@brief franka_msgs/action/PTPMotion_Goal.goal_tolerance: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsActionPTPMotion_Goal; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsActionPTPMotion_Goal_goal_tolerance :: Double
  } deriving (Eq, Show)
defaultRos2Franka_msgsActionPTPMotion_Goal :: Ros2Franka_msgsActionPTPMotion_Goal
defaultRos2Franka_msgsActionPTPMotion_Goal = Ros2Franka_msgsActionPTPMotion_Goal ([]) ([]) (0)
ros2Franka_msgsActionPTPMotion_GoalCodecIdentity :: String
ros2Franka_msgsActionPTPMotion_GoalCodecIdentity = "UWVMROS1_7e1b02257a7be37e7bccd0870ebced1e1560e7250eaeaa4547836e721f2ea2cc"
encodeRos2Franka_msgsActionPTPMotion_Goal :: Ros2Franka_msgsActionPTPMotion_Goal -> Either Word32 B.ByteString
encodeRos2Franka_msgsActionPTPMotion_Goal value = do
  if length (ros2Franka_msgsActionPTPMotion_Goal_goal_joint_configuration value) > 7 then Left 22 else Right ()
  prefix0 <- W.encodeCount 7 (length (ros2Franka_msgsActionPTPMotion_Goal_goal_joint_configuration value))
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Franka_msgsActionPTPMotion_Goal_goal_joint_configuration value)
  if length (ros2Franka_msgsActionPTPMotion_Goal_maximum_joint_velocities value) > 7 then Left 22 else Right ()
  prefix1 <- W.encodeCount 7 (length (ros2Franka_msgsActionPTPMotion_Goal_maximum_joint_velocities value))
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Franka_msgsActionPTPMotion_Goal_maximum_joint_velocities value)
  b2 <- W.encodeFloat64 (ros2Franka_msgsActionPTPMotion_Goal_goal_tolerance value)
  W.bounded 128 [prefix0, b0, prefix1, b1, b2]
readRos2Franka_msgsActionPTPMotion_Goal :: W.Decoder Ros2Franka_msgsActionPTPMotion_Goal
readRos2Franka_msgsActionPTPMotion_Goal = do
  count0 <- W.count 7
  a0 <- replicateM count0 (W.float64)
  count1 <- W.count 7
  a1 <- replicateM count1 (W.float64)
  a2 <- W.float64
  let value = Ros2Franka_msgsActionPTPMotion_Goal a0 a1 a2
  case encodeRos2Franka_msgsActionPTPMotion_Goal value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_msgsActionPTPMotion_Goal :: B.ByteString -> Either Word32 Ros2Franka_msgsActionPTPMotion_Goal
decodeRos2Franka_msgsActionPTPMotion_Goal = W.runDecoder 128 readRos2Franka_msgsActionPTPMotion_Goal
instance Canonical Ros2Franka_msgsActionPTPMotion_Goal where
  maximumBytes _ = 128
  encodeValue = encodeRos2Franka_msgsActionPTPMotion_Goal
  readValue = readRos2Franka_msgsActionPTPMotion_Goal
data Ros2Franka_msgsMsgTargetStatus = Ros2Franka_msgsMsgTargetStatus
  {
    -- | \@brief franka_msgs/msg/TargetStatus.status: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgTargetStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgTargetStatus_status :: Word8
  } deriving (Eq, Show)
defaultRos2Franka_msgsMsgTargetStatus :: Ros2Franka_msgsMsgTargetStatus
defaultRos2Franka_msgsMsgTargetStatus = Ros2Franka_msgsMsgTargetStatus (0)
ros2Franka_msgsMsgTargetStatusCodecIdentity :: String
ros2Franka_msgsMsgTargetStatusCodecIdentity = "UWVMROS1_df49eedc13cd8be2055361d8640c519bfa018ed2a421aa2b59b35c8828eac585"
ros2Franka_msgsMsgTargetStatus_IDLE :: Word8
ros2Franka_msgsMsgTargetStatus_IDLE = 0
ros2Franka_msgsMsgTargetStatus_EXECUTING :: Word8
ros2Franka_msgsMsgTargetStatus_EXECUTING = 1
ros2Franka_msgsMsgTargetStatus_TARGET_REACHED :: Word8
ros2Franka_msgsMsgTargetStatus_TARGET_REACHED = 2
ros2Franka_msgsMsgTargetStatus_ABORTED :: Word8
ros2Franka_msgsMsgTargetStatus_ABORTED = 3
encodeRos2Franka_msgsMsgTargetStatus :: Ros2Franka_msgsMsgTargetStatus -> Either Word32 B.ByteString
encodeRos2Franka_msgsMsgTargetStatus value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros2Franka_msgsMsgTargetStatus_status value))
  W.bounded 1 [b0]
readRos2Franka_msgsMsgTargetStatus :: W.Decoder Ros2Franka_msgsMsgTargetStatus
readRos2Franka_msgsMsgTargetStatus = do
  a0 <- fromIntegral <$> W.unsigned 1
  let value = Ros2Franka_msgsMsgTargetStatus a0
  case encodeRos2Franka_msgsMsgTargetStatus value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_msgsMsgTargetStatus :: B.ByteString -> Either Word32 Ros2Franka_msgsMsgTargetStatus
decodeRos2Franka_msgsMsgTargetStatus = W.runDecoder 1 readRos2Franka_msgsMsgTargetStatus
instance Canonical Ros2Franka_msgsMsgTargetStatus where
  maximumBytes _ = 1
  encodeValue = encodeRos2Franka_msgsMsgTargetStatus
  readValue = readRos2Franka_msgsMsgTargetStatus
data Ros2Franka_msgsActionPTPMotion_Result = Ros2Franka_msgsActionPTPMotion_Result
  {
    -- | \@brief franka_msgs/action/PTPMotion_Result.target_status: franka_msgs/msg/TargetStatus.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsActionPTPMotion_Result; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsActionPTPMotion_Result_target_status :: Ros2Franka_msgsMsgTargetStatus
  ,
    -- | \@brief franka_msgs/action/PTPMotion_Result.error_message: string; each string is 0..256 bytes; strict UTF-8
    -- | with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsActionPTPMotion_Result; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsActionPTPMotion_Result_error_message :: T.Text
  } deriving (Eq, Show)
defaultRos2Franka_msgsActionPTPMotion_Result :: Ros2Franka_msgsActionPTPMotion_Result
defaultRos2Franka_msgsActionPTPMotion_Result = Ros2Franka_msgsActionPTPMotion_Result (defaultRos2Franka_msgsMsgTargetStatus)
        (T.empty)
ros2Franka_msgsActionPTPMotion_ResultCodecIdentity :: String
ros2Franka_msgsActionPTPMotion_ResultCodecIdentity = "UWVMROS1_b61fabf13a3d8d910a35a5145e87b4dd80180b0678ef5580784f461e850fa4c1"
encodeRos2Franka_msgsActionPTPMotion_Result :: Ros2Franka_msgsActionPTPMotion_Result -> Either Word32 B.ByteString
encodeRos2Franka_msgsActionPTPMotion_Result value = do
  b0 <- encodeRos2Franka_msgsMsgTargetStatus (ros2Franka_msgsActionPTPMotion_Result_target_status value)
  b1 <- W.encodeText 256 True (ros2Franka_msgsActionPTPMotion_Result_error_message value)
  W.bounded 261 [b0, b1]
readRos2Franka_msgsActionPTPMotion_Result :: W.Decoder Ros2Franka_msgsActionPTPMotion_Result
readRos2Franka_msgsActionPTPMotion_Result = do
  a0 <- readRos2Franka_msgsMsgTargetStatus
  a1 <- W.text 256 True
  let value = Ros2Franka_msgsActionPTPMotion_Result a0 a1
  case encodeRos2Franka_msgsActionPTPMotion_Result value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_msgsActionPTPMotion_Result :: B.ByteString -> Either Word32 Ros2Franka_msgsActionPTPMotion_Result
decodeRos2Franka_msgsActionPTPMotion_Result = W.runDecoder 261 readRos2Franka_msgsActionPTPMotion_Result
instance Canonical Ros2Franka_msgsActionPTPMotion_Result where
  maximumBytes _ = 261
  encodeValue = encodeRos2Franka_msgsActionPTPMotion_Result
  readValue = readRos2Franka_msgsActionPTPMotion_Result
data Ros2Franka_msgsActionPTPMotion_Feedback = Ros2Franka_msgsActionPTPMotion_Feedback
  {
    -- | \@brief franka_msgs/action/PTPMotion_Feedback.target_status: franka_msgs/msg/TargetStatus.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsActionPTPMotion_Feedback; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsActionPTPMotion_Feedback_target_status :: Ros2Franka_msgsMsgTargetStatus
  } deriving (Eq, Show)
defaultRos2Franka_msgsActionPTPMotion_Feedback :: Ros2Franka_msgsActionPTPMotion_Feedback
defaultRos2Franka_msgsActionPTPMotion_Feedback = Ros2Franka_msgsActionPTPMotion_Feedback (defaultRos2Franka_msgsMsgTargetStatus)
ros2Franka_msgsActionPTPMotion_FeedbackCodecIdentity :: String
ros2Franka_msgsActionPTPMotion_FeedbackCodecIdentity = "UWVMROS1_c4dcfeb668595ebc341d76b5cbc606c1ae4c38b28a1b329f8436e61f506a0300"
encodeRos2Franka_msgsActionPTPMotion_Feedback :: Ros2Franka_msgsActionPTPMotion_Feedback -> Either Word32 B.ByteString
encodeRos2Franka_msgsActionPTPMotion_Feedback value = do
  b0 <- encodeRos2Franka_msgsMsgTargetStatus (ros2Franka_msgsActionPTPMotion_Feedback_target_status value)
  W.bounded 1 [b0]
readRos2Franka_msgsActionPTPMotion_Feedback :: W.Decoder Ros2Franka_msgsActionPTPMotion_Feedback
readRos2Franka_msgsActionPTPMotion_Feedback = do
  a0 <- readRos2Franka_msgsMsgTargetStatus
  let value = Ros2Franka_msgsActionPTPMotion_Feedback a0
  case encodeRos2Franka_msgsActionPTPMotion_Feedback value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_msgsActionPTPMotion_Feedback :: B.ByteString -> Either Word32 Ros2Franka_msgsActionPTPMotion_Feedback
decodeRos2Franka_msgsActionPTPMotion_Feedback = W.runDecoder 1 readRos2Franka_msgsActionPTPMotion_Feedback
instance Canonical Ros2Franka_msgsActionPTPMotion_Feedback where
  maximumBytes _ = 1
  encodeValue = encodeRos2Franka_msgsActionPTPMotion_Feedback
  readValue = readRos2Franka_msgsActionPTPMotion_Feedback
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
defaultRos2Geometry_msgsMsgVector3 :: Ros2Geometry_msgsMsgVector3
defaultRos2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3 (0) (0) (0)
ros2Geometry_msgsMsgVector3CodecIdentity :: String
ros2Geometry_msgsMsgVector3CodecIdentity = "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e"
encodeRos2Geometry_msgsMsgVector3 :: Ros2Geometry_msgsMsgVector3 -> Either Word32 B.ByteString
encodeRos2Geometry_msgsMsgVector3 value = do
  b0 <- W.encodeFloat64 (ros2Geometry_msgsMsgVector3_x value)
  b1 <- W.encodeFloat64 (ros2Geometry_msgsMsgVector3_y value)
  b2 <- W.encodeFloat64 (ros2Geometry_msgsMsgVector3_z value)
  W.bounded 24 [b0, b1, b2]
readRos2Geometry_msgsMsgVector3 :: W.Decoder Ros2Geometry_msgsMsgVector3
readRos2Geometry_msgsMsgVector3 = do
  a0 <- W.float64
  a1 <- W.float64
  a2 <- W.float64
  let value = Ros2Geometry_msgsMsgVector3 a0 a1 a2
  case encodeRos2Geometry_msgsMsgVector3 value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Geometry_msgsMsgVector3 :: B.ByteString -> Either Word32 Ros2Geometry_msgsMsgVector3
decodeRos2Geometry_msgsMsgVector3 = W.runDecoder 24 readRos2Geometry_msgsMsgVector3
instance Canonical Ros2Geometry_msgsMsgVector3 where
  maximumBytes _ = 24
  encodeValue = encodeRos2Geometry_msgsMsgVector3
  readValue = readRos2Geometry_msgsMsgVector3
data Ros2Franka_msgsMsgCollisionIndicators = Ros2Franka_msgsMsgCollisionIndicators
  {
    -- | \@brief franka_msgs/msg/CollisionIndicators.is_cartesian_linear_collision: geometry_msgs/msg/Vector3.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgCollisionIndicators; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgCollisionIndicators_is_cartesian_linear_collision :: Ros2Geometry_msgsMsgVector3
  ,
    -- | \@brief franka_msgs/msg/CollisionIndicators.is_cartesian_angular_collision: geometry_msgs/msg/Vector3.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgCollisionIndicators; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgCollisionIndicators_is_cartesian_angular_collision :: Ros2Geometry_msgsMsgVector3
  ,
    -- | \@brief franka_msgs/msg/CollisionIndicators.is_cartesian_linear_contact: geometry_msgs/msg/Vector3.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgCollisionIndicators; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgCollisionIndicators_is_cartesian_linear_contact :: Ros2Geometry_msgsMsgVector3
  ,
    -- | \@brief franka_msgs/msg/CollisionIndicators.is_cartesian_angular_contact: geometry_msgs/msg/Vector3.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgCollisionIndicators; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgCollisionIndicators_is_cartesian_angular_contact :: Ros2Geometry_msgsMsgVector3
  ,
    -- | \@brief franka_msgs/msg/CollisionIndicators.is_joint_collision: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgCollisionIndicators; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgCollisionIndicators_is_joint_collision :: [Double]
  ,
    -- | \@brief franka_msgs/msg/CollisionIndicators.is_joint_contact: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgCollisionIndicators; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgCollisionIndicators_is_joint_contact :: [Double]
  } deriving (Eq, Show)
defaultRos2Franka_msgsMsgCollisionIndicators :: Ros2Franka_msgsMsgCollisionIndicators
defaultRos2Franka_msgsMsgCollisionIndicators = Ros2Franka_msgsMsgCollisionIndicators (defaultRos2Geometry_msgsMsgVector3)
        (defaultRos2Geometry_msgsMsgVector3) (defaultRos2Geometry_msgsMsgVector3) (defaultRos2Geometry_msgsMsgVector3) (replicate 7
        (0)) (replicate 7 (0))
ros2Franka_msgsMsgCollisionIndicatorsCodecIdentity :: String
ros2Franka_msgsMsgCollisionIndicatorsCodecIdentity = "UWVMROS1_2bdfb3ece01b47b07fae84a998b23c56fc9482a0518969e43304b318d4ee0ce1"
encodeRos2Franka_msgsMsgCollisionIndicators :: Ros2Franka_msgsMsgCollisionIndicators -> Either Word32 B.ByteString
encodeRos2Franka_msgsMsgCollisionIndicators value = do
  b0 <- encodeRos2Geometry_msgsMsgVector3 (ros2Franka_msgsMsgCollisionIndicators_is_cartesian_linear_collision value)
  b1 <- encodeRos2Geometry_msgsMsgVector3 (ros2Franka_msgsMsgCollisionIndicators_is_cartesian_angular_collision value)
  b2 <- encodeRos2Geometry_msgsMsgVector3 (ros2Franka_msgsMsgCollisionIndicators_is_cartesian_linear_contact value)
  b3 <- encodeRos2Geometry_msgsMsgVector3 (ros2Franka_msgsMsgCollisionIndicators_is_cartesian_angular_contact value)
  if length (ros2Franka_msgsMsgCollisionIndicators_is_joint_collision value) /= 7 then Left 22 else Right ()
  b4 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Franka_msgsMsgCollisionIndicators_is_joint_collision value)
  if length (ros2Franka_msgsMsgCollisionIndicators_is_joint_contact value) /= 7 then Left 22 else Right ()
  b5 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Franka_msgsMsgCollisionIndicators_is_joint_contact value)
  W.bounded 208 [b0, b1, b2, b3, b4, b5]
readRos2Franka_msgsMsgCollisionIndicators :: W.Decoder Ros2Franka_msgsMsgCollisionIndicators
readRos2Franka_msgsMsgCollisionIndicators = do
  a0 <- readRos2Geometry_msgsMsgVector3
  a1 <- readRos2Geometry_msgsMsgVector3
  a2 <- readRos2Geometry_msgsMsgVector3
  a3 <- readRos2Geometry_msgsMsgVector3
  a4 <- replicateM 7 (W.float64)
  a5 <- replicateM 7 (W.float64)
  let value = Ros2Franka_msgsMsgCollisionIndicators a0 a1 a2 a3 a4 a5
  case encodeRos2Franka_msgsMsgCollisionIndicators value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_msgsMsgCollisionIndicators :: B.ByteString -> Either Word32 Ros2Franka_msgsMsgCollisionIndicators
decodeRos2Franka_msgsMsgCollisionIndicators = W.runDecoder 208 readRos2Franka_msgsMsgCollisionIndicators
instance Canonical Ros2Franka_msgsMsgCollisionIndicators where
  maximumBytes _ = 208
  encodeValue = encodeRos2Franka_msgsMsgCollisionIndicators
  readValue = readRos2Franka_msgsMsgCollisionIndicators
data Ros2Franka_msgsMsgElbow = Ros2Franka_msgsMsgElbow
  {
    -- | \@brief franka_msgs/msg/Elbow.position: float64; exactly 2 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgElbow; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgElbow_position :: [Double]
  ,
    -- | \@brief franka_msgs/msg/Elbow.desired_position: float64; exactly 2 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgElbow; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgElbow_desired_position :: [Double]
  ,
    -- | \@brief franka_msgs/msg/Elbow.commanded_position: float64; exactly 2 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgElbow; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgElbow_commanded_position :: [Double]
  ,
    -- | \@brief franka_msgs/msg/Elbow.commanded_velocity: float64; exactly 2 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgElbow; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgElbow_commanded_velocity :: [Double]
  ,
    -- | \@brief franka_msgs/msg/Elbow.commanded_acceleration: float64; exactly 2 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgElbow; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgElbow_commanded_acceleration :: [Double]
  } deriving (Eq, Show)
defaultRos2Franka_msgsMsgElbow :: Ros2Franka_msgsMsgElbow
defaultRos2Franka_msgsMsgElbow = Ros2Franka_msgsMsgElbow (replicate 2 (0)) (replicate 2 (0)) (replicate 2 (0)) (replicate 2 (0))
        (replicate 2 (0))
ros2Franka_msgsMsgElbowCodecIdentity :: String
ros2Franka_msgsMsgElbowCodecIdentity = "UWVMROS1_686cf2da29007046f9855ffeecac304c159245ec3da153990ab83be4ffce53b6"
encodeRos2Franka_msgsMsgElbow :: Ros2Franka_msgsMsgElbow -> Either Word32 B.ByteString
encodeRos2Franka_msgsMsgElbow value = do
  if length (ros2Franka_msgsMsgElbow_position value) /= 2 then Left 22 else Right ()
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Franka_msgsMsgElbow_position value)
  if length (ros2Franka_msgsMsgElbow_desired_position value) /= 2 then Left 22 else Right ()
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Franka_msgsMsgElbow_desired_position value)
  if length (ros2Franka_msgsMsgElbow_commanded_position value) /= 2 then Left 22 else Right ()
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Franka_msgsMsgElbow_commanded_position value)
  if length (ros2Franka_msgsMsgElbow_commanded_velocity value) /= 2 then Left 22 else Right ()
  b3 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Franka_msgsMsgElbow_commanded_velocity value)
  if length (ros2Franka_msgsMsgElbow_commanded_acceleration value) /= 2 then Left 22 else Right ()
  b4 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Franka_msgsMsgElbow_commanded_acceleration value)
  W.bounded 80 [b0, b1, b2, b3, b4]
readRos2Franka_msgsMsgElbow :: W.Decoder Ros2Franka_msgsMsgElbow
readRos2Franka_msgsMsgElbow = do
  a0 <- replicateM 2 (W.float64)
  a1 <- replicateM 2 (W.float64)
  a2 <- replicateM 2 (W.float64)
  a3 <- replicateM 2 (W.float64)
  a4 <- replicateM 2 (W.float64)
  let value = Ros2Franka_msgsMsgElbow a0 a1 a2 a3 a4
  case encodeRos2Franka_msgsMsgElbow value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_msgsMsgElbow :: B.ByteString -> Either Word32 Ros2Franka_msgsMsgElbow
decodeRos2Franka_msgsMsgElbow = W.runDecoder 80 readRos2Franka_msgsMsgElbow
instance Canonical Ros2Franka_msgsMsgElbow where
  maximumBytes _ = 80
  encodeValue = encodeRos2Franka_msgsMsgElbow
  readValue = readRos2Franka_msgsMsgElbow
data Ros2Franka_msgsMsgErrors = Ros2Franka_msgsMsgErrors
  {
    -- | \@brief franka_msgs/msg/Errors.joint_position_limits_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgErrors_joint_position_limits_violation :: Bool
  ,
    -- | \@brief franka_msgs/msg/Errors.cartesian_position_limits_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgErrors_cartesian_position_limits_violation :: Bool
  ,
    -- | \@brief franka_msgs/msg/Errors.self_collision_avoidance_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgErrors_self_collision_avoidance_violation :: Bool
  ,
    -- | \@brief franka_msgs/msg/Errors.joint_velocity_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgErrors_joint_velocity_violation :: Bool
  ,
    -- | \@brief franka_msgs/msg/Errors.cartesian_velocity_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgErrors_cartesian_velocity_violation :: Bool
  ,
    -- | \@brief franka_msgs/msg/Errors.force_control_safety_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgErrors_force_control_safety_violation :: Bool
  ,
    -- | \@brief franka_msgs/msg/Errors.joint_reflex: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgErrors_joint_reflex :: Bool
  ,
    -- | \@brief franka_msgs/msg/Errors.cartesian_reflex: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgErrors_cartesian_reflex :: Bool
  ,
    -- | \@brief franka_msgs/msg/Errors.max_goal_pose_deviation_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgErrors_max_goal_pose_deviation_violation :: Bool
  ,
    -- | \@brief franka_msgs/msg/Errors.max_path_pose_deviation_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgErrors_max_path_pose_deviation_violation :: Bool
  ,
    -- | \@brief franka_msgs/msg/Errors.cartesian_velocity_profile_safety_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgErrors_cartesian_velocity_profile_safety_violation :: Bool
  ,
    -- | \@brief franka_msgs/msg/Errors.joint_position_motion_generator_start_pose_invalid: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgErrors_joint_position_motion_generator_start_pose_invalid :: Bool
  ,
    -- | \@brief franka_msgs/msg/Errors.joint_motion_generator_position_limits_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgErrors_joint_motion_generator_position_limits_violation :: Bool
  ,
    -- | \@brief franka_msgs/msg/Errors.joint_motion_generator_velocity_limits_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgErrors_joint_motion_generator_velocity_limits_violation :: Bool
  ,
    -- | \@brief franka_msgs/msg/Errors.joint_motion_generator_velocity_discontinuity: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgErrors_joint_motion_generator_velocity_discontinuity :: Bool
  ,
    -- | \@brief franka_msgs/msg/Errors.joint_motion_generator_acceleration_discontinuity: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgErrors_joint_motion_generator_acceleration_discontinuity :: Bool
  ,
    -- | \@brief franka_msgs/msg/Errors.cartesian_position_motion_generator_start_pose_invalid: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgErrors_cartesian_position_motion_generator_start_pose_invalid :: Bool
  ,
    -- | \@brief franka_msgs/msg/Errors.cartesian_motion_generator_elbow_limit_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgErrors_cartesian_motion_generator_elbow_limit_violation :: Bool
  ,
    -- | \@brief franka_msgs/msg/Errors.cartesian_motion_generator_velocity_limits_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgErrors_cartesian_motion_generator_velocity_limits_violation :: Bool
  ,
    -- | \@brief franka_msgs/msg/Errors.cartesian_motion_generator_velocity_discontinuity: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgErrors_cartesian_motion_generator_velocity_discontinuity :: Bool
  ,
    -- | \@brief franka_msgs/msg/Errors.cartesian_motion_generator_acceleration_discontinuity: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgErrors_cartesian_motion_generator_acceleration_discontinuity :: Bool
  ,
    -- | \@brief franka_msgs/msg/Errors.cartesian_motion_generator_elbow_sign_inconsistent: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgErrors_cartesian_motion_generator_elbow_sign_inconsistent :: Bool
  ,
    -- | \@brief franka_msgs/msg/Errors.cartesian_motion_generator_start_elbow_invalid: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgErrors_cartesian_motion_generator_start_elbow_invalid :: Bool
  ,
    -- | \@brief franka_msgs/msg/Errors.cartesian_motion_generator_joint_position_limits_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgErrors_cartesian_motion_generator_joint_position_limits_violation :: Bool
  ,
    -- | \@brief franka_msgs/msg/Errors.cartesian_motion_generator_joint_velocity_limits_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgErrors_cartesian_motion_generator_joint_velocity_limits_violation :: Bool
  ,
    -- | \@brief franka_msgs/msg/Errors.cartesian_motion_generator_joint_velocity_discontinuity: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgErrors_cartesian_motion_generator_joint_velocity_discontinuity :: Bool
  ,
    -- | \@brief franka_msgs/msg/Errors.cartesian_motion_generator_joint_acceleration_discontinuity: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgErrors_cartesian_motion_generator_joint_acceleration_discontinuity :: Bool
  ,
    -- | \@brief franka_msgs/msg/Errors.cartesian_position_motion_generator_invalid_frame: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgErrors_cartesian_position_motion_generator_invalid_frame :: Bool
  ,
    -- | \@brief franka_msgs/msg/Errors.force_controller_desired_force_tolerance_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgErrors_force_controller_desired_force_tolerance_violation :: Bool
  ,
    -- | \@brief franka_msgs/msg/Errors.controller_torque_discontinuity: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgErrors_controller_torque_discontinuity :: Bool
  ,
    -- | \@brief franka_msgs/msg/Errors.start_elbow_sign_inconsistent: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgErrors_start_elbow_sign_inconsistent :: Bool
  ,
    -- | \@brief franka_msgs/msg/Errors.communication_constraints_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgErrors_communication_constraints_violation :: Bool
  ,
    -- | \@brief franka_msgs/msg/Errors.power_limit_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgErrors_power_limit_violation :: Bool
  ,
    -- | \@brief franka_msgs/msg/Errors.joint_p2p_insufficient_torque_for_planning: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgErrors_joint_p2p_insufficient_torque_for_planning :: Bool
  ,
    -- | \@brief franka_msgs/msg/Errors.tau_j_range_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgErrors_tau_j_range_violation :: Bool
  ,
    -- | \@brief franka_msgs/msg/Errors.instability_detected: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgErrors_instability_detected :: Bool
  } deriving (Eq, Show)
defaultRos2Franka_msgsMsgErrors :: Ros2Franka_msgsMsgErrors
defaultRos2Franka_msgsMsgErrors = Ros2Franka_msgsMsgErrors (False) (False) (False) (False) (False) (False) (False) (False) (False)
        (False) (False) (False) (False) (False) (False) (False) (False) (False) (False) (False) (False) (False) (False) (False)
        (False) (False) (False) (False) (False) (False) (False) (False) (False) (False) (False) (False)
ros2Franka_msgsMsgErrorsCodecIdentity :: String
ros2Franka_msgsMsgErrorsCodecIdentity = "UWVMROS1_c7927af1abe7710bb686574ad6f2459f8425af1d6cdb3189160bb732b5a6bc8c"
encodeRos2Franka_msgsMsgErrors :: Ros2Franka_msgsMsgErrors -> Either Word32 B.ByteString
encodeRos2Franka_msgsMsgErrors value = do
  b0 <- W.encodeBool (ros2Franka_msgsMsgErrors_joint_position_limits_violation value)
  b1 <- W.encodeBool (ros2Franka_msgsMsgErrors_cartesian_position_limits_violation value)
  b2 <- W.encodeBool (ros2Franka_msgsMsgErrors_self_collision_avoidance_violation value)
  b3 <- W.encodeBool (ros2Franka_msgsMsgErrors_joint_velocity_violation value)
  b4 <- W.encodeBool (ros2Franka_msgsMsgErrors_cartesian_velocity_violation value)
  b5 <- W.encodeBool (ros2Franka_msgsMsgErrors_force_control_safety_violation value)
  b6 <- W.encodeBool (ros2Franka_msgsMsgErrors_joint_reflex value)
  b7 <- W.encodeBool (ros2Franka_msgsMsgErrors_cartesian_reflex value)
  b8 <- W.encodeBool (ros2Franka_msgsMsgErrors_max_goal_pose_deviation_violation value)
  b9 <- W.encodeBool (ros2Franka_msgsMsgErrors_max_path_pose_deviation_violation value)
  b10 <- W.encodeBool (ros2Franka_msgsMsgErrors_cartesian_velocity_profile_safety_violation value)
  b11 <- W.encodeBool (ros2Franka_msgsMsgErrors_joint_position_motion_generator_start_pose_invalid value)
  b12 <- W.encodeBool (ros2Franka_msgsMsgErrors_joint_motion_generator_position_limits_violation value)
  b13 <- W.encodeBool (ros2Franka_msgsMsgErrors_joint_motion_generator_velocity_limits_violation value)
  b14 <- W.encodeBool (ros2Franka_msgsMsgErrors_joint_motion_generator_velocity_discontinuity value)
  b15 <- W.encodeBool (ros2Franka_msgsMsgErrors_joint_motion_generator_acceleration_discontinuity value)
  b16 <- W.encodeBool (ros2Franka_msgsMsgErrors_cartesian_position_motion_generator_start_pose_invalid value)
  b17 <- W.encodeBool (ros2Franka_msgsMsgErrors_cartesian_motion_generator_elbow_limit_violation value)
  b18 <- W.encodeBool (ros2Franka_msgsMsgErrors_cartesian_motion_generator_velocity_limits_violation value)
  b19 <- W.encodeBool (ros2Franka_msgsMsgErrors_cartesian_motion_generator_velocity_discontinuity value)
  b20 <- W.encodeBool (ros2Franka_msgsMsgErrors_cartesian_motion_generator_acceleration_discontinuity value)
  b21 <- W.encodeBool (ros2Franka_msgsMsgErrors_cartesian_motion_generator_elbow_sign_inconsistent value)
  b22 <- W.encodeBool (ros2Franka_msgsMsgErrors_cartesian_motion_generator_start_elbow_invalid value)
  b23 <- W.encodeBool (ros2Franka_msgsMsgErrors_cartesian_motion_generator_joint_position_limits_violation value)
  b24 <- W.encodeBool (ros2Franka_msgsMsgErrors_cartesian_motion_generator_joint_velocity_limits_violation value)
  b25 <- W.encodeBool (ros2Franka_msgsMsgErrors_cartesian_motion_generator_joint_velocity_discontinuity value)
  b26 <- W.encodeBool (ros2Franka_msgsMsgErrors_cartesian_motion_generator_joint_acceleration_discontinuity value)
  b27 <- W.encodeBool (ros2Franka_msgsMsgErrors_cartesian_position_motion_generator_invalid_frame value)
  b28 <- W.encodeBool (ros2Franka_msgsMsgErrors_force_controller_desired_force_tolerance_violation value)
  b29 <- W.encodeBool (ros2Franka_msgsMsgErrors_controller_torque_discontinuity value)
  b30 <- W.encodeBool (ros2Franka_msgsMsgErrors_start_elbow_sign_inconsistent value)
  b31 <- W.encodeBool (ros2Franka_msgsMsgErrors_communication_constraints_violation value)
  b32 <- W.encodeBool (ros2Franka_msgsMsgErrors_power_limit_violation value)
  b33 <- W.encodeBool (ros2Franka_msgsMsgErrors_joint_p2p_insufficient_torque_for_planning value)
  b34 <- W.encodeBool (ros2Franka_msgsMsgErrors_tau_j_range_violation value)
  b35 <- W.encodeBool (ros2Franka_msgsMsgErrors_instability_detected value)
  W.bounded 36 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15, b16, b17, b18, b19, b20, b21, b22, b23, b24,
          b25, b26, b27, b28, b29, b30, b31, b32, b33, b34, b35]
readRos2Franka_msgsMsgErrors :: W.Decoder Ros2Franka_msgsMsgErrors
readRos2Franka_msgsMsgErrors = do
  a0 <- W.boolean
  a1 <- W.boolean
  a2 <- W.boolean
  a3 <- W.boolean
  a4 <- W.boolean
  a5 <- W.boolean
  a6 <- W.boolean
  a7 <- W.boolean
  a8 <- W.boolean
  a9 <- W.boolean
  a10 <- W.boolean
  a11 <- W.boolean
  a12 <- W.boolean
  a13 <- W.boolean
  a14 <- W.boolean
  a15 <- W.boolean
  a16 <- W.boolean
  a17 <- W.boolean
  a18 <- W.boolean
  a19 <- W.boolean
  a20 <- W.boolean
  a21 <- W.boolean
  a22 <- W.boolean
  a23 <- W.boolean
  a24 <- W.boolean
  a25 <- W.boolean
  a26 <- W.boolean
  a27 <- W.boolean
  a28 <- W.boolean
  a29 <- W.boolean
  a30 <- W.boolean
  a31 <- W.boolean
  a32 <- W.boolean
  a33 <- W.boolean
  a34 <- W.boolean
  a35 <- W.boolean
  let value = Ros2Franka_msgsMsgErrors a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24 a25
          a26 a27 a28 a29 a30 a31 a32 a33 a34 a35
  case encodeRos2Franka_msgsMsgErrors value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_msgsMsgErrors :: B.ByteString -> Either Word32 Ros2Franka_msgsMsgErrors
decodeRos2Franka_msgsMsgErrors = W.runDecoder 36 readRos2Franka_msgsMsgErrors
instance Canonical Ros2Franka_msgsMsgErrors where
  maximumBytes _ = 36
  encodeValue = encodeRos2Franka_msgsMsgErrors
  readValue = readRos2Franka_msgsMsgErrors
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
defaultRos2Std_msgsMsgHeader :: Ros2Std_msgsMsgHeader
defaultRos2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader (defaultRos2Builtin_interfacesMsgTime) (T.empty)
ros2Std_msgsMsgHeaderCodecIdentity :: String
ros2Std_msgsMsgHeaderCodecIdentity = "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96"
encodeRos2Std_msgsMsgHeader :: Ros2Std_msgsMsgHeader -> Either Word32 B.ByteString
encodeRos2Std_msgsMsgHeader value = do
  b0 <- encodeRos2Builtin_interfacesMsgTime (ros2Std_msgsMsgHeader_stamp value)
  b1 <- W.encodeText 128 True (ros2Std_msgsMsgHeader_frame_id value)
  W.bounded 140 [b0, b1]
readRos2Std_msgsMsgHeader :: W.Decoder Ros2Std_msgsMsgHeader
readRos2Std_msgsMsgHeader = do
  a0 <- readRos2Builtin_interfacesMsgTime
  a1 <- W.text 128 True
  let value = Ros2Std_msgsMsgHeader a0 a1
  case encodeRos2Std_msgsMsgHeader value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Std_msgsMsgHeader :: B.ByteString -> Either Word32 Ros2Std_msgsMsgHeader
decodeRos2Std_msgsMsgHeader = W.runDecoder 140 readRos2Std_msgsMsgHeader
instance Canonical Ros2Std_msgsMsgHeader where
  maximumBytes _ = 140
  encodeValue = encodeRos2Std_msgsMsgHeader
  readValue = readRos2Std_msgsMsgHeader
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
    -- | \@brief sensor_msgs/msg/JointState.name: string; 0..7 elements; each string is 0..128 bytes; strict UTF-8 with
    -- | no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgJointState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Sensor_msgsMsgJointState_name :: [T.Text]
  ,
    -- | \@brief sensor_msgs/msg/JointState.position: float64; 0..7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgJointState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Sensor_msgsMsgJointState_position :: [Double]
  ,
    -- | \@brief sensor_msgs/msg/JointState.velocity: float64; 0..7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgJointState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Sensor_msgsMsgJointState_velocity :: [Double]
  ,
    -- | \@brief sensor_msgs/msg/JointState.effort: float64; 0..7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgJointState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Sensor_msgsMsgJointState_effort :: [Double]
  } deriving (Eq, Show)
defaultRos2Sensor_msgsMsgJointState :: Ros2Sensor_msgsMsgJointState
defaultRos2Sensor_msgsMsgJointState = Ros2Sensor_msgsMsgJointState (defaultRos2Std_msgsMsgHeader) ([]) ([]) ([]) ([])
ros2Sensor_msgsMsgJointStateCodecIdentity :: String
ros2Sensor_msgsMsgJointStateCodecIdentity = "UWVMROS1_912ba4261e2dfbec0e4a543ea8e5d308ef1d26877b4a7d71162a981ac64c40a3"
encodeRos2Sensor_msgsMsgJointState :: Ros2Sensor_msgsMsgJointState -> Either Word32 B.ByteString
encodeRos2Sensor_msgsMsgJointState value = do
  if (length (ros2Sensor_msgsMsgJointState_name value) /= 0 && length (ros2Sensor_msgsMsgJointState_position value) /= 0 && length
          (ros2Sensor_msgsMsgJointState_name value) /= length (ros2Sensor_msgsMsgJointState_position value)) || (length
          (ros2Sensor_msgsMsgJointState_name value) /= 0 && length (ros2Sensor_msgsMsgJointState_velocity value) /= 0 && length
          (ros2Sensor_msgsMsgJointState_name value) /= length (ros2Sensor_msgsMsgJointState_velocity value)) || (length
          (ros2Sensor_msgsMsgJointState_name value) /= 0 && length (ros2Sensor_msgsMsgJointState_effort value) /= 0 && length
          (ros2Sensor_msgsMsgJointState_name value) /= length (ros2Sensor_msgsMsgJointState_effort value)) || (length
          (ros2Sensor_msgsMsgJointState_position value) /= 0 && length (ros2Sensor_msgsMsgJointState_velocity value) /= 0 && length
          (ros2Sensor_msgsMsgJointState_position value) /= length (ros2Sensor_msgsMsgJointState_velocity value)) || (length
          (ros2Sensor_msgsMsgJointState_position value) /= 0 && length (ros2Sensor_msgsMsgJointState_effort value) /= 0 && length
          (ros2Sensor_msgsMsgJointState_position value) /= length (ros2Sensor_msgsMsgJointState_effort value)) || (length
          (ros2Sensor_msgsMsgJointState_velocity value) /= 0 && length (ros2Sensor_msgsMsgJointState_effort value) /= 0 && length
          (ros2Sensor_msgsMsgJointState_velocity value) /= length (ros2Sensor_msgsMsgJointState_effort value)) then Left 22 else
          Right ()
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Sensor_msgsMsgJointState_header value)
  if length (ros2Sensor_msgsMsgJointState_name value) > 7 then Left 22 else Right ()
  prefix1 <- W.encodeCount 7 (length (ros2Sensor_msgsMsgJointState_name value))
  b1 <- B.concat <$> mapM (\e -> W.encodeText 128 True (e)) (ros2Sensor_msgsMsgJointState_name value)
  if length (ros2Sensor_msgsMsgJointState_position value) > 7 then Left 22 else Right ()
  prefix2 <- W.encodeCount 7 (length (ros2Sensor_msgsMsgJointState_position value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Sensor_msgsMsgJointState_position value)
  if length (ros2Sensor_msgsMsgJointState_velocity value) > 7 then Left 22 else Right ()
  prefix3 <- W.encodeCount 7 (length (ros2Sensor_msgsMsgJointState_velocity value))
  b3 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Sensor_msgsMsgJointState_velocity value)
  if length (ros2Sensor_msgsMsgJointState_effort value) > 7 then Left 22 else Right ()
  prefix4 <- W.encodeCount 7 (length (ros2Sensor_msgsMsgJointState_effort value))
  b4 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Sensor_msgsMsgJointState_effort value)
  W.bounded 1248 [b0, prefix1, b1, prefix2, b2, prefix3, b3, prefix4, b4]
readRos2Sensor_msgsMsgJointState :: W.Decoder Ros2Sensor_msgsMsgJointState
readRos2Sensor_msgsMsgJointState = do
  a0 <- readRos2Std_msgsMsgHeader
  count1 <- W.count 7
  a1 <- replicateM count1 (W.text 128 True)
  count2 <- W.count 7
  a2 <- replicateM count2 (W.float64)
  count3 <- W.count 7
  a3 <- replicateM count3 (W.float64)
  count4 <- W.count 7
  a4 <- replicateM count4 (W.float64)
  let value = Ros2Sensor_msgsMsgJointState a0 a1 a2 a3 a4
  case encodeRos2Sensor_msgsMsgJointState value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Sensor_msgsMsgJointState :: B.ByteString -> Either Word32 Ros2Sensor_msgsMsgJointState
decodeRos2Sensor_msgsMsgJointState = W.runDecoder 1248 readRos2Sensor_msgsMsgJointState
instance Canonical Ros2Sensor_msgsMsgJointState where
  maximumBytes _ = 1248
  encodeValue = encodeRos2Sensor_msgsMsgJointState
  readValue = readRos2Sensor_msgsMsgJointState
data Ros2Geometry_msgsMsgWrench = Ros2Geometry_msgsMsgWrench
  {
    -- | \@brief geometry_msgs/msg/Wrench.force: geometry_msgs/msg/Vector3.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgWrench; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgWrench_force :: Ros2Geometry_msgsMsgVector3
  ,
    -- | \@brief geometry_msgs/msg/Wrench.torque: geometry_msgs/msg/Vector3.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgWrench; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgWrench_torque :: Ros2Geometry_msgsMsgVector3
  } deriving (Eq, Show)
defaultRos2Geometry_msgsMsgWrench :: Ros2Geometry_msgsMsgWrench
defaultRos2Geometry_msgsMsgWrench = Ros2Geometry_msgsMsgWrench (defaultRos2Geometry_msgsMsgVector3)
        (defaultRos2Geometry_msgsMsgVector3)
ros2Geometry_msgsMsgWrenchCodecIdentity :: String
ros2Geometry_msgsMsgWrenchCodecIdentity = "UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6"
encodeRos2Geometry_msgsMsgWrench :: Ros2Geometry_msgsMsgWrench -> Either Word32 B.ByteString
encodeRos2Geometry_msgsMsgWrench value = do
  b0 <- encodeRos2Geometry_msgsMsgVector3 (ros2Geometry_msgsMsgWrench_force value)
  b1 <- encodeRos2Geometry_msgsMsgVector3 (ros2Geometry_msgsMsgWrench_torque value)
  W.bounded 48 [b0, b1]
readRos2Geometry_msgsMsgWrench :: W.Decoder Ros2Geometry_msgsMsgWrench
readRos2Geometry_msgsMsgWrench = do
  a0 <- readRos2Geometry_msgsMsgVector3
  a1 <- readRos2Geometry_msgsMsgVector3
  let value = Ros2Geometry_msgsMsgWrench a0 a1
  case encodeRos2Geometry_msgsMsgWrench value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Geometry_msgsMsgWrench :: B.ByteString -> Either Word32 Ros2Geometry_msgsMsgWrench
decodeRos2Geometry_msgsMsgWrench = W.runDecoder 48 readRos2Geometry_msgsMsgWrench
instance Canonical Ros2Geometry_msgsMsgWrench where
  maximumBytes _ = 48
  encodeValue = encodeRos2Geometry_msgsMsgWrench
  readValue = readRos2Geometry_msgsMsgWrench
data Ros2Geometry_msgsMsgWrenchStamped = Ros2Geometry_msgsMsgWrenchStamped
  {
    -- | \@brief geometry_msgs/msg/WrenchStamped.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgWrenchStamped; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgWrenchStamped_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief geometry_msgs/msg/WrenchStamped.wrench: geometry_msgs/msg/Wrench.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgWrenchStamped; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgWrenchStamped_wrench :: Ros2Geometry_msgsMsgWrench
  } deriving (Eq, Show)
defaultRos2Geometry_msgsMsgWrenchStamped :: Ros2Geometry_msgsMsgWrenchStamped
defaultRos2Geometry_msgsMsgWrenchStamped = Ros2Geometry_msgsMsgWrenchStamped (defaultRos2Std_msgsMsgHeader)
        (defaultRos2Geometry_msgsMsgWrench)
ros2Geometry_msgsMsgWrenchStampedCodecIdentity :: String
ros2Geometry_msgsMsgWrenchStampedCodecIdentity = "UWVMROS1_e23600874a626ba9d52f043e14ed04beb3e316d47c3bca8bd87cfeed3f5d9d66"
encodeRos2Geometry_msgsMsgWrenchStamped :: Ros2Geometry_msgsMsgWrenchStamped -> Either Word32 B.ByteString
encodeRos2Geometry_msgsMsgWrenchStamped value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Geometry_msgsMsgWrenchStamped_header value)
  b1 <- encodeRos2Geometry_msgsMsgWrench (ros2Geometry_msgsMsgWrenchStamped_wrench value)
  W.bounded 188 [b0, b1]
readRos2Geometry_msgsMsgWrenchStamped :: W.Decoder Ros2Geometry_msgsMsgWrenchStamped
readRos2Geometry_msgsMsgWrenchStamped = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- readRos2Geometry_msgsMsgWrench
  let value = Ros2Geometry_msgsMsgWrenchStamped a0 a1
  case encodeRos2Geometry_msgsMsgWrenchStamped value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Geometry_msgsMsgWrenchStamped :: B.ByteString -> Either Word32 Ros2Geometry_msgsMsgWrenchStamped
decodeRos2Geometry_msgsMsgWrenchStamped = W.runDecoder 188 readRos2Geometry_msgsMsgWrenchStamped
instance Canonical Ros2Geometry_msgsMsgWrenchStamped where
  maximumBytes _ = 188
  encodeValue = encodeRos2Geometry_msgsMsgWrenchStamped
  readValue = readRos2Geometry_msgsMsgWrenchStamped
data Ros2Geometry_msgsMsgInertia = Ros2Geometry_msgsMsgInertia
  {
    -- | \@brief geometry_msgs/msg/Inertia.m: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgInertia; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgInertia_m :: Double
  ,
    -- | \@brief geometry_msgs/msg/Inertia.com: geometry_msgs/msg/Vector3.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgInertia; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgInertia_com :: Ros2Geometry_msgsMsgVector3
  ,
    -- | \@brief geometry_msgs/msg/Inertia.ixx: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgInertia; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgInertia_ixx :: Double
  ,
    -- | \@brief geometry_msgs/msg/Inertia.ixy: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgInertia; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgInertia_ixy :: Double
  ,
    -- | \@brief geometry_msgs/msg/Inertia.ixz: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgInertia; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgInertia_ixz :: Double
  ,
    -- | \@brief geometry_msgs/msg/Inertia.iyy: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgInertia; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgInertia_iyy :: Double
  ,
    -- | \@brief geometry_msgs/msg/Inertia.iyz: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgInertia; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgInertia_iyz :: Double
  ,
    -- | \@brief geometry_msgs/msg/Inertia.izz: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgInertia; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgInertia_izz :: Double
  } deriving (Eq, Show)
defaultRos2Geometry_msgsMsgInertia :: Ros2Geometry_msgsMsgInertia
defaultRos2Geometry_msgsMsgInertia = Ros2Geometry_msgsMsgInertia (0) (defaultRos2Geometry_msgsMsgVector3) (0) (0) (0) (0) (0) (0)
ros2Geometry_msgsMsgInertiaCodecIdentity :: String
ros2Geometry_msgsMsgInertiaCodecIdentity = "UWVMROS1_4a1b7a6a2516724a9a12e5eb166a85cd73d33fc6075c8d517ff2a279fd29e12a"
encodeRos2Geometry_msgsMsgInertia :: Ros2Geometry_msgsMsgInertia -> Either Word32 B.ByteString
encodeRos2Geometry_msgsMsgInertia value = do
  b0 <- W.encodeFloat64 (ros2Geometry_msgsMsgInertia_m value)
  b1 <- encodeRos2Geometry_msgsMsgVector3 (ros2Geometry_msgsMsgInertia_com value)
  b2 <- W.encodeFloat64 (ros2Geometry_msgsMsgInertia_ixx value)
  b3 <- W.encodeFloat64 (ros2Geometry_msgsMsgInertia_ixy value)
  b4 <- W.encodeFloat64 (ros2Geometry_msgsMsgInertia_ixz value)
  b5 <- W.encodeFloat64 (ros2Geometry_msgsMsgInertia_iyy value)
  b6 <- W.encodeFloat64 (ros2Geometry_msgsMsgInertia_iyz value)
  b7 <- W.encodeFloat64 (ros2Geometry_msgsMsgInertia_izz value)
  W.bounded 80 [b0, b1, b2, b3, b4, b5, b6, b7]
readRos2Geometry_msgsMsgInertia :: W.Decoder Ros2Geometry_msgsMsgInertia
readRos2Geometry_msgsMsgInertia = do
  a0 <- W.float64
  a1 <- readRos2Geometry_msgsMsgVector3
  a2 <- W.float64
  a3 <- W.float64
  a4 <- W.float64
  a5 <- W.float64
  a6 <- W.float64
  a7 <- W.float64
  let value = Ros2Geometry_msgsMsgInertia a0 a1 a2 a3 a4 a5 a6 a7
  case encodeRos2Geometry_msgsMsgInertia value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Geometry_msgsMsgInertia :: B.ByteString -> Either Word32 Ros2Geometry_msgsMsgInertia
decodeRos2Geometry_msgsMsgInertia = W.runDecoder 80 readRos2Geometry_msgsMsgInertia
instance Canonical Ros2Geometry_msgsMsgInertia where
  maximumBytes _ = 80
  encodeValue = encodeRos2Geometry_msgsMsgInertia
  readValue = readRos2Geometry_msgsMsgInertia
data Ros2Geometry_msgsMsgInertiaStamped = Ros2Geometry_msgsMsgInertiaStamped
  {
    -- | \@brief geometry_msgs/msg/InertiaStamped.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgInertiaStamped; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgInertiaStamped_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief geometry_msgs/msg/InertiaStamped.inertia: geometry_msgs/msg/Inertia.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgInertiaStamped; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgInertiaStamped_inertia :: Ros2Geometry_msgsMsgInertia
  } deriving (Eq, Show)
defaultRos2Geometry_msgsMsgInertiaStamped :: Ros2Geometry_msgsMsgInertiaStamped
defaultRos2Geometry_msgsMsgInertiaStamped = Ros2Geometry_msgsMsgInertiaStamped (defaultRos2Std_msgsMsgHeader)
        (defaultRos2Geometry_msgsMsgInertia)
ros2Geometry_msgsMsgInertiaStampedCodecIdentity :: String
ros2Geometry_msgsMsgInertiaStampedCodecIdentity = "UWVMROS1_19b0b442c5858ff1eee20e4658ecc3a2b76fdd64c4a21a1642fae5ab38198576"
encodeRos2Geometry_msgsMsgInertiaStamped :: Ros2Geometry_msgsMsgInertiaStamped -> Either Word32 B.ByteString
encodeRos2Geometry_msgsMsgInertiaStamped value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Geometry_msgsMsgInertiaStamped_header value)
  b1 <- encodeRos2Geometry_msgsMsgInertia (ros2Geometry_msgsMsgInertiaStamped_inertia value)
  W.bounded 220 [b0, b1]
readRos2Geometry_msgsMsgInertiaStamped :: W.Decoder Ros2Geometry_msgsMsgInertiaStamped
readRos2Geometry_msgsMsgInertiaStamped = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- readRos2Geometry_msgsMsgInertia
  let value = Ros2Geometry_msgsMsgInertiaStamped a0 a1
  case encodeRos2Geometry_msgsMsgInertiaStamped value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Geometry_msgsMsgInertiaStamped :: B.ByteString -> Either Word32 Ros2Geometry_msgsMsgInertiaStamped
decodeRos2Geometry_msgsMsgInertiaStamped = W.runDecoder 220 readRos2Geometry_msgsMsgInertiaStamped
instance Canonical Ros2Geometry_msgsMsgInertiaStamped where
  maximumBytes _ = 220
  encodeValue = encodeRos2Geometry_msgsMsgInertiaStamped
  readValue = readRos2Geometry_msgsMsgInertiaStamped
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
defaultRos2Geometry_msgsMsgPoint :: Ros2Geometry_msgsMsgPoint
defaultRos2Geometry_msgsMsgPoint = Ros2Geometry_msgsMsgPoint (0) (0) (0)
ros2Geometry_msgsMsgPointCodecIdentity :: String
ros2Geometry_msgsMsgPointCodecIdentity = "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616"
encodeRos2Geometry_msgsMsgPoint :: Ros2Geometry_msgsMsgPoint -> Either Word32 B.ByteString
encodeRos2Geometry_msgsMsgPoint value = do
  b0 <- W.encodeFloat64 (ros2Geometry_msgsMsgPoint_x value)
  b1 <- W.encodeFloat64 (ros2Geometry_msgsMsgPoint_y value)
  b2 <- W.encodeFloat64 (ros2Geometry_msgsMsgPoint_z value)
  W.bounded 24 [b0, b1, b2]
readRos2Geometry_msgsMsgPoint :: W.Decoder Ros2Geometry_msgsMsgPoint
readRos2Geometry_msgsMsgPoint = do
  a0 <- W.float64
  a1 <- W.float64
  a2 <- W.float64
  let value = Ros2Geometry_msgsMsgPoint a0 a1 a2
  case encodeRos2Geometry_msgsMsgPoint value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Geometry_msgsMsgPoint :: B.ByteString -> Either Word32 Ros2Geometry_msgsMsgPoint
decodeRos2Geometry_msgsMsgPoint = W.runDecoder 24 readRos2Geometry_msgsMsgPoint
instance Canonical Ros2Geometry_msgsMsgPoint where
  maximumBytes _ = 24
  encodeValue = encodeRos2Geometry_msgsMsgPoint
  readValue = readRos2Geometry_msgsMsgPoint
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
defaultRos2Geometry_msgsMsgQuaternion :: Ros2Geometry_msgsMsgQuaternion
defaultRos2Geometry_msgsMsgQuaternion = Ros2Geometry_msgsMsgQuaternion (castWord64ToDouble 0x0) (castWord64ToDouble 0x0)
        (castWord64ToDouble 0x0) (castWord64ToDouble 0x3ff0000000000000)
ros2Geometry_msgsMsgQuaternionCodecIdentity :: String
ros2Geometry_msgsMsgQuaternionCodecIdentity = "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672"
encodeRos2Geometry_msgsMsgQuaternion :: Ros2Geometry_msgsMsgQuaternion -> Either Word32 B.ByteString
encodeRos2Geometry_msgsMsgQuaternion value = do
  b0 <- W.encodeFloat64 (ros2Geometry_msgsMsgQuaternion_x value)
  b1 <- W.encodeFloat64 (ros2Geometry_msgsMsgQuaternion_y value)
  b2 <- W.encodeFloat64 (ros2Geometry_msgsMsgQuaternion_z value)
  b3 <- W.encodeFloat64 (ros2Geometry_msgsMsgQuaternion_w value)
  W.bounded 32 [b0, b1, b2, b3]
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
decodeRos2Geometry_msgsMsgQuaternion :: B.ByteString -> Either Word32 Ros2Geometry_msgsMsgQuaternion
decodeRos2Geometry_msgsMsgQuaternion = W.runDecoder 32 readRos2Geometry_msgsMsgQuaternion
instance Canonical Ros2Geometry_msgsMsgQuaternion where
  maximumBytes _ = 32
  encodeValue = encodeRos2Geometry_msgsMsgQuaternion
  readValue = readRos2Geometry_msgsMsgQuaternion
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
defaultRos2Geometry_msgsMsgPose :: Ros2Geometry_msgsMsgPose
defaultRos2Geometry_msgsMsgPose = Ros2Geometry_msgsMsgPose (defaultRos2Geometry_msgsMsgPoint)
        (defaultRos2Geometry_msgsMsgQuaternion)
ros2Geometry_msgsMsgPoseCodecIdentity :: String
ros2Geometry_msgsMsgPoseCodecIdentity = "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777"
encodeRos2Geometry_msgsMsgPose :: Ros2Geometry_msgsMsgPose -> Either Word32 B.ByteString
encodeRos2Geometry_msgsMsgPose value = do
  b0 <- encodeRos2Geometry_msgsMsgPoint (ros2Geometry_msgsMsgPose_position value)
  b1 <- encodeRos2Geometry_msgsMsgQuaternion (ros2Geometry_msgsMsgPose_orientation value)
  W.bounded 56 [b0, b1]
readRos2Geometry_msgsMsgPose :: W.Decoder Ros2Geometry_msgsMsgPose
readRos2Geometry_msgsMsgPose = do
  a0 <- readRos2Geometry_msgsMsgPoint
  a1 <- readRos2Geometry_msgsMsgQuaternion
  let value = Ros2Geometry_msgsMsgPose a0 a1
  case encodeRos2Geometry_msgsMsgPose value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Geometry_msgsMsgPose :: B.ByteString -> Either Word32 Ros2Geometry_msgsMsgPose
decodeRos2Geometry_msgsMsgPose = W.runDecoder 56 readRos2Geometry_msgsMsgPose
instance Canonical Ros2Geometry_msgsMsgPose where
  maximumBytes _ = 56
  encodeValue = encodeRos2Geometry_msgsMsgPose
  readValue = readRos2Geometry_msgsMsgPose
data Ros2Geometry_msgsMsgPoseStamped = Ros2Geometry_msgsMsgPoseStamped
  {
    -- | \@brief geometry_msgs/msg/PoseStamped.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgPoseStamped; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgPoseStamped_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief geometry_msgs/msg/PoseStamped.pose: geometry_msgs/msg/Pose.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgPoseStamped; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgPoseStamped_pose :: Ros2Geometry_msgsMsgPose
  } deriving (Eq, Show)
defaultRos2Geometry_msgsMsgPoseStamped :: Ros2Geometry_msgsMsgPoseStamped
defaultRos2Geometry_msgsMsgPoseStamped = Ros2Geometry_msgsMsgPoseStamped (defaultRos2Std_msgsMsgHeader)
        (defaultRos2Geometry_msgsMsgPose)
ros2Geometry_msgsMsgPoseStampedCodecIdentity :: String
ros2Geometry_msgsMsgPoseStampedCodecIdentity = "UWVMROS1_71abdc844f18f02f45a354967a5f1c644fb20dc14cbc61c64aa41b927e0712a2"
encodeRos2Geometry_msgsMsgPoseStamped :: Ros2Geometry_msgsMsgPoseStamped -> Either Word32 B.ByteString
encodeRos2Geometry_msgsMsgPoseStamped value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Geometry_msgsMsgPoseStamped_header value)
  b1 <- encodeRos2Geometry_msgsMsgPose (ros2Geometry_msgsMsgPoseStamped_pose value)
  W.bounded 196 [b0, b1]
readRos2Geometry_msgsMsgPoseStamped :: W.Decoder Ros2Geometry_msgsMsgPoseStamped
readRos2Geometry_msgsMsgPoseStamped = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- readRos2Geometry_msgsMsgPose
  let value = Ros2Geometry_msgsMsgPoseStamped a0 a1
  case encodeRos2Geometry_msgsMsgPoseStamped value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Geometry_msgsMsgPoseStamped :: B.ByteString -> Either Word32 Ros2Geometry_msgsMsgPoseStamped
decodeRos2Geometry_msgsMsgPoseStamped = W.runDecoder 196 readRos2Geometry_msgsMsgPoseStamped
instance Canonical Ros2Geometry_msgsMsgPoseStamped where
  maximumBytes _ = 196
  encodeValue = encodeRos2Geometry_msgsMsgPoseStamped
  readValue = readRos2Geometry_msgsMsgPoseStamped
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
defaultRos2Geometry_msgsMsgTwist :: Ros2Geometry_msgsMsgTwist
defaultRos2Geometry_msgsMsgTwist = Ros2Geometry_msgsMsgTwist (defaultRos2Geometry_msgsMsgVector3)
        (defaultRos2Geometry_msgsMsgVector3)
ros2Geometry_msgsMsgTwistCodecIdentity :: String
ros2Geometry_msgsMsgTwistCodecIdentity = "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e"
encodeRos2Geometry_msgsMsgTwist :: Ros2Geometry_msgsMsgTwist -> Either Word32 B.ByteString
encodeRos2Geometry_msgsMsgTwist value = do
  b0 <- encodeRos2Geometry_msgsMsgVector3 (ros2Geometry_msgsMsgTwist_linear value)
  b1 <- encodeRos2Geometry_msgsMsgVector3 (ros2Geometry_msgsMsgTwist_angular value)
  W.bounded 48 [b0, b1]
readRos2Geometry_msgsMsgTwist :: W.Decoder Ros2Geometry_msgsMsgTwist
readRos2Geometry_msgsMsgTwist = do
  a0 <- readRos2Geometry_msgsMsgVector3
  a1 <- readRos2Geometry_msgsMsgVector3
  let value = Ros2Geometry_msgsMsgTwist a0 a1
  case encodeRos2Geometry_msgsMsgTwist value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Geometry_msgsMsgTwist :: B.ByteString -> Either Word32 Ros2Geometry_msgsMsgTwist
decodeRos2Geometry_msgsMsgTwist = W.runDecoder 48 readRos2Geometry_msgsMsgTwist
instance Canonical Ros2Geometry_msgsMsgTwist where
  maximumBytes _ = 48
  encodeValue = encodeRos2Geometry_msgsMsgTwist
  readValue = readRos2Geometry_msgsMsgTwist
data Ros2Geometry_msgsMsgTwistStamped = Ros2Geometry_msgsMsgTwistStamped
  {
    -- | \@brief geometry_msgs/msg/TwistStamped.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgTwistStamped; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgTwistStamped_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief geometry_msgs/msg/TwistStamped.twist: geometry_msgs/msg/Twist.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgTwistStamped; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgTwistStamped_twist :: Ros2Geometry_msgsMsgTwist
  } deriving (Eq, Show)
defaultRos2Geometry_msgsMsgTwistStamped :: Ros2Geometry_msgsMsgTwistStamped
defaultRos2Geometry_msgsMsgTwistStamped = Ros2Geometry_msgsMsgTwistStamped (defaultRos2Std_msgsMsgHeader)
        (defaultRos2Geometry_msgsMsgTwist)
ros2Geometry_msgsMsgTwistStampedCodecIdentity :: String
ros2Geometry_msgsMsgTwistStampedCodecIdentity = "UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573"
encodeRos2Geometry_msgsMsgTwistStamped :: Ros2Geometry_msgsMsgTwistStamped -> Either Word32 B.ByteString
encodeRos2Geometry_msgsMsgTwistStamped value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Geometry_msgsMsgTwistStamped_header value)
  b1 <- encodeRos2Geometry_msgsMsgTwist (ros2Geometry_msgsMsgTwistStamped_twist value)
  W.bounded 188 [b0, b1]
readRos2Geometry_msgsMsgTwistStamped :: W.Decoder Ros2Geometry_msgsMsgTwistStamped
readRos2Geometry_msgsMsgTwistStamped = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- readRos2Geometry_msgsMsgTwist
  let value = Ros2Geometry_msgsMsgTwistStamped a0 a1
  case encodeRos2Geometry_msgsMsgTwistStamped value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Geometry_msgsMsgTwistStamped :: B.ByteString -> Either Word32 Ros2Geometry_msgsMsgTwistStamped
decodeRos2Geometry_msgsMsgTwistStamped = W.runDecoder 188 readRos2Geometry_msgsMsgTwistStamped
instance Canonical Ros2Geometry_msgsMsgTwistStamped where
  maximumBytes _ = 188
  encodeValue = encodeRos2Geometry_msgsMsgTwistStamped
  readValue = readRos2Geometry_msgsMsgTwistStamped
data Ros2Geometry_msgsMsgAccel = Ros2Geometry_msgsMsgAccel
  {
    -- | \@brief geometry_msgs/msg/Accel.linear: geometry_msgs/msg/Vector3.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgAccel; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgAccel_linear :: Ros2Geometry_msgsMsgVector3
  ,
    -- | \@brief geometry_msgs/msg/Accel.angular: geometry_msgs/msg/Vector3.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgAccel; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgAccel_angular :: Ros2Geometry_msgsMsgVector3
  } deriving (Eq, Show)
defaultRos2Geometry_msgsMsgAccel :: Ros2Geometry_msgsMsgAccel
defaultRos2Geometry_msgsMsgAccel = Ros2Geometry_msgsMsgAccel (defaultRos2Geometry_msgsMsgVector3)
        (defaultRos2Geometry_msgsMsgVector3)
ros2Geometry_msgsMsgAccelCodecIdentity :: String
ros2Geometry_msgsMsgAccelCodecIdentity = "UWVMROS1_87264cb87970315248345c43cc629bbc0c9f9b2a8c6c4bc089da81c7af552fde"
encodeRos2Geometry_msgsMsgAccel :: Ros2Geometry_msgsMsgAccel -> Either Word32 B.ByteString
encodeRos2Geometry_msgsMsgAccel value = do
  b0 <- encodeRos2Geometry_msgsMsgVector3 (ros2Geometry_msgsMsgAccel_linear value)
  b1 <- encodeRos2Geometry_msgsMsgVector3 (ros2Geometry_msgsMsgAccel_angular value)
  W.bounded 48 [b0, b1]
readRos2Geometry_msgsMsgAccel :: W.Decoder Ros2Geometry_msgsMsgAccel
readRos2Geometry_msgsMsgAccel = do
  a0 <- readRos2Geometry_msgsMsgVector3
  a1 <- readRos2Geometry_msgsMsgVector3
  let value = Ros2Geometry_msgsMsgAccel a0 a1
  case encodeRos2Geometry_msgsMsgAccel value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Geometry_msgsMsgAccel :: B.ByteString -> Either Word32 Ros2Geometry_msgsMsgAccel
decodeRos2Geometry_msgsMsgAccel = W.runDecoder 48 readRos2Geometry_msgsMsgAccel
instance Canonical Ros2Geometry_msgsMsgAccel where
  maximumBytes _ = 48
  encodeValue = encodeRos2Geometry_msgsMsgAccel
  readValue = readRos2Geometry_msgsMsgAccel
data Ros2Geometry_msgsMsgAccelStamped = Ros2Geometry_msgsMsgAccelStamped
  {
    -- | \@brief geometry_msgs/msg/AccelStamped.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgAccelStamped; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgAccelStamped_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief geometry_msgs/msg/AccelStamped.accel: geometry_msgs/msg/Accel.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgAccelStamped; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgAccelStamped_accel :: Ros2Geometry_msgsMsgAccel
  } deriving (Eq, Show)
defaultRos2Geometry_msgsMsgAccelStamped :: Ros2Geometry_msgsMsgAccelStamped
defaultRos2Geometry_msgsMsgAccelStamped = Ros2Geometry_msgsMsgAccelStamped (defaultRos2Std_msgsMsgHeader)
        (defaultRos2Geometry_msgsMsgAccel)
ros2Geometry_msgsMsgAccelStampedCodecIdentity :: String
ros2Geometry_msgsMsgAccelStampedCodecIdentity = "UWVMROS1_c04d3ae310bd82f7c4c9f30c2ff185ab54989aa3adcc759c7d3eb19853819899"
encodeRos2Geometry_msgsMsgAccelStamped :: Ros2Geometry_msgsMsgAccelStamped -> Either Word32 B.ByteString
encodeRos2Geometry_msgsMsgAccelStamped value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Geometry_msgsMsgAccelStamped_header value)
  b1 <- encodeRos2Geometry_msgsMsgAccel (ros2Geometry_msgsMsgAccelStamped_accel value)
  W.bounded 188 [b0, b1]
readRos2Geometry_msgsMsgAccelStamped :: W.Decoder Ros2Geometry_msgsMsgAccelStamped
readRos2Geometry_msgsMsgAccelStamped = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- readRos2Geometry_msgsMsgAccel
  let value = Ros2Geometry_msgsMsgAccelStamped a0 a1
  case encodeRos2Geometry_msgsMsgAccelStamped value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Geometry_msgsMsgAccelStamped :: B.ByteString -> Either Word32 Ros2Geometry_msgsMsgAccelStamped
decodeRos2Geometry_msgsMsgAccelStamped = W.runDecoder 188 readRos2Geometry_msgsMsgAccelStamped
instance Canonical Ros2Geometry_msgsMsgAccelStamped where
  maximumBytes _ = 188
  encodeValue = encodeRos2Geometry_msgsMsgAccelStamped
  readValue = readRos2Geometry_msgsMsgAccelStamped
data Ros2Geometry_msgsMsgVector3Stamped = Ros2Geometry_msgsMsgVector3Stamped
  {
    -- | \@brief geometry_msgs/msg/Vector3Stamped.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgVector3Stamped; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgVector3Stamped_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief geometry_msgs/msg/Vector3Stamped.vector: geometry_msgs/msg/Vector3.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgVector3Stamped; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgVector3Stamped_vector :: Ros2Geometry_msgsMsgVector3
  } deriving (Eq, Show)
defaultRos2Geometry_msgsMsgVector3Stamped :: Ros2Geometry_msgsMsgVector3Stamped
defaultRos2Geometry_msgsMsgVector3Stamped = Ros2Geometry_msgsMsgVector3Stamped (defaultRos2Std_msgsMsgHeader)
        (defaultRos2Geometry_msgsMsgVector3)
ros2Geometry_msgsMsgVector3StampedCodecIdentity :: String
ros2Geometry_msgsMsgVector3StampedCodecIdentity = "UWVMROS1_c6b67646d3fc6d29c195637ea353dafa7085b2bdb55a15a8b65009200b5ed31b"
encodeRos2Geometry_msgsMsgVector3Stamped :: Ros2Geometry_msgsMsgVector3Stamped -> Either Word32 B.ByteString
encodeRos2Geometry_msgsMsgVector3Stamped value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Geometry_msgsMsgVector3Stamped_header value)
  b1 <- encodeRos2Geometry_msgsMsgVector3 (ros2Geometry_msgsMsgVector3Stamped_vector value)
  W.bounded 164 [b0, b1]
readRos2Geometry_msgsMsgVector3Stamped :: W.Decoder Ros2Geometry_msgsMsgVector3Stamped
readRos2Geometry_msgsMsgVector3Stamped = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- readRos2Geometry_msgsMsgVector3
  let value = Ros2Geometry_msgsMsgVector3Stamped a0 a1
  case encodeRos2Geometry_msgsMsgVector3Stamped value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Geometry_msgsMsgVector3Stamped :: B.ByteString -> Either Word32 Ros2Geometry_msgsMsgVector3Stamped
decodeRos2Geometry_msgsMsgVector3Stamped = W.runDecoder 164 readRos2Geometry_msgsMsgVector3Stamped
instance Canonical Ros2Geometry_msgsMsgVector3Stamped where
  maximumBytes _ = 164
  encodeValue = encodeRos2Geometry_msgsMsgVector3Stamped
  readValue = readRos2Geometry_msgsMsgVector3Stamped
data Ros2Franka_msgsMsgFrankaRobotState = Ros2Franka_msgsMsgFrankaRobotState
  {
    -- | \@brief franka_msgs/msg/FrankaRobotState.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgFrankaRobotState_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief franka_msgs/msg/FrankaRobotState.collision_indicators: franka_msgs/msg/CollisionIndicators.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgFrankaRobotState_collision_indicators :: Ros2Franka_msgsMsgCollisionIndicators
  ,
    -- | \@brief franka_msgs/msg/FrankaRobotState.measured_joint_state: sensor_msgs/msg/JointState.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgFrankaRobotState_measured_joint_state :: Ros2Sensor_msgsMsgJointState
  ,
    -- | \@brief franka_msgs/msg/FrankaRobotState.desired_joint_state: sensor_msgs/msg/JointState.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgFrankaRobotState_desired_joint_state :: Ros2Sensor_msgsMsgJointState
  ,
    -- | \@brief franka_msgs/msg/FrankaRobotState.measured_joint_motor_state: sensor_msgs/msg/JointState.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgFrankaRobotState_measured_joint_motor_state :: Ros2Sensor_msgsMsgJointState
  ,
    -- | \@brief franka_msgs/msg/FrankaRobotState.ddq_d: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgFrankaRobotState_ddq_d :: [Double]
  ,
    -- | \@brief franka_msgs/msg/FrankaRobotState.dtau_j: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgFrankaRobotState_dtau_j :: [Double]
  ,
    -- | \@brief franka_msgs/msg/FrankaRobotState.tau_ext_hat_filtered: sensor_msgs/msg/JointState.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgFrankaRobotState_tau_ext_hat_filtered :: Ros2Sensor_msgsMsgJointState
  ,
    -- | \@brief franka_msgs/msg/FrankaRobotState.elbow: franka_msgs/msg/Elbow.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgFrankaRobotState_elbow :: Ros2Franka_msgsMsgElbow
  ,
    -- | \@brief franka_msgs/msg/FrankaRobotState.k_f_ext_hat_k: geometry_msgs/msg/WrenchStamped.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgFrankaRobotState_k_f_ext_hat_k :: Ros2Geometry_msgsMsgWrenchStamped
  ,
    -- | \@brief franka_msgs/msg/FrankaRobotState.o_f_ext_hat_k: geometry_msgs/msg/WrenchStamped.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgFrankaRobotState_o_f_ext_hat_k :: Ros2Geometry_msgsMsgWrenchStamped
  ,
    -- | \@brief franka_msgs/msg/FrankaRobotState.inertia_ee: geometry_msgs/msg/InertiaStamped.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgFrankaRobotState_inertia_ee :: Ros2Geometry_msgsMsgInertiaStamped
  ,
    -- | \@brief franka_msgs/msg/FrankaRobotState.inertia_load: geometry_msgs/msg/InertiaStamped.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgFrankaRobotState_inertia_load :: Ros2Geometry_msgsMsgInertiaStamped
  ,
    -- | \@brief franka_msgs/msg/FrankaRobotState.inertia_total: geometry_msgs/msg/InertiaStamped.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgFrankaRobotState_inertia_total :: Ros2Geometry_msgsMsgInertiaStamped
  ,
    -- | \@brief franka_msgs/msg/FrankaRobotState.o_t_ee: geometry_msgs/msg/PoseStamped.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgFrankaRobotState_o_t_ee :: Ros2Geometry_msgsMsgPoseStamped
  ,
    -- | \@brief franka_msgs/msg/FrankaRobotState.o_t_ee_d: geometry_msgs/msg/PoseStamped.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgFrankaRobotState_o_t_ee_d :: Ros2Geometry_msgsMsgPoseStamped
  ,
    -- | \@brief franka_msgs/msg/FrankaRobotState.o_t_ee_c: geometry_msgs/msg/PoseStamped.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgFrankaRobotState_o_t_ee_c :: Ros2Geometry_msgsMsgPoseStamped
  ,
    -- | \@brief franka_msgs/msg/FrankaRobotState.f_t_ee: geometry_msgs/msg/PoseStamped.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgFrankaRobotState_f_t_ee :: Ros2Geometry_msgsMsgPoseStamped
  ,
    -- | \@brief franka_msgs/msg/FrankaRobotState.ee_t_k: geometry_msgs/msg/PoseStamped.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgFrankaRobotState_ee_t_k :: Ros2Geometry_msgsMsgPoseStamped
  ,
    -- | \@brief franka_msgs/msg/FrankaRobotState.o_dp_ee_d: geometry_msgs/msg/TwistStamped.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgFrankaRobotState_o_dp_ee_d :: Ros2Geometry_msgsMsgTwistStamped
  ,
    -- | \@brief franka_msgs/msg/FrankaRobotState.o_dp_ee_c: geometry_msgs/msg/TwistStamped.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgFrankaRobotState_o_dp_ee_c :: Ros2Geometry_msgsMsgTwistStamped
  ,
    -- | \@brief franka_msgs/msg/FrankaRobotState.o_ddp_ee_c: geometry_msgs/msg/AccelStamped.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgFrankaRobotState_o_ddp_ee_c :: Ros2Geometry_msgsMsgAccelStamped
  ,
    -- | \@brief franka_msgs/msg/FrankaRobotState.time: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgFrankaRobotState_time :: Double
  ,
    -- | \@brief franka_msgs/msg/FrankaRobotState.control_command_success_rate: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgFrankaRobotState_control_command_success_rate :: Double
  ,
    -- | \@brief franka_msgs/msg/FrankaRobotState.robot_mode: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgFrankaRobotState_robot_mode :: Word8
  ,
    -- | \@brief franka_msgs/msg/FrankaRobotState.current_errors: franka_msgs/msg/Errors.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgFrankaRobotState_current_errors :: Ros2Franka_msgsMsgErrors
  ,
    -- | \@brief franka_msgs/msg/FrankaRobotState.last_motion_errors: franka_msgs/msg/Errors.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgFrankaRobotState_last_motion_errors :: Ros2Franka_msgsMsgErrors
  ,
    -- | \@brief franka_msgs/msg/FrankaRobotState.accelerometer_top: geometry_msgs/msg/Vector3Stamped; exactly 6
    -- | elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgFrankaRobotState_accelerometer_top :: [Ros2Geometry_msgsMsgVector3Stamped]
  ,
    -- | \@brief franka_msgs/msg/FrankaRobotState.accelerometer_bottom: geometry_msgs/msg/Vector3Stamped; exactly 6
    -- | elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsMsgFrankaRobotState_accelerometer_bottom :: [Ros2Geometry_msgsMsgVector3Stamped]
  } deriving (Eq, Show)
defaultRos2Franka_msgsMsgFrankaRobotState :: Ros2Franka_msgsMsgFrankaRobotState
defaultRos2Franka_msgsMsgFrankaRobotState = Ros2Franka_msgsMsgFrankaRobotState (defaultRos2Std_msgsMsgHeader)
        (defaultRos2Franka_msgsMsgCollisionIndicators) (defaultRos2Sensor_msgsMsgJointState) (defaultRos2Sensor_msgsMsgJointState)
        (defaultRos2Sensor_msgsMsgJointState) (replicate 7 (0)) (replicate 7 (0)) (defaultRos2Sensor_msgsMsgJointState)
        (defaultRos2Franka_msgsMsgElbow) (defaultRos2Geometry_msgsMsgWrenchStamped) (defaultRos2Geometry_msgsMsgWrenchStamped)
        (defaultRos2Geometry_msgsMsgInertiaStamped) (defaultRos2Geometry_msgsMsgInertiaStamped)
        (defaultRos2Geometry_msgsMsgInertiaStamped) (defaultRos2Geometry_msgsMsgPoseStamped)
        (defaultRos2Geometry_msgsMsgPoseStamped) (defaultRos2Geometry_msgsMsgPoseStamped) (defaultRos2Geometry_msgsMsgPoseStamped)
        (defaultRos2Geometry_msgsMsgPoseStamped) (defaultRos2Geometry_msgsMsgTwistStamped) (defaultRos2Geometry_msgsMsgTwistStamped)
        (defaultRos2Geometry_msgsMsgAccelStamped) (0) (0) (0) (defaultRos2Franka_msgsMsgErrors) (defaultRos2Franka_msgsMsgErrors)
        (replicate 6 (defaultRos2Geometry_msgsMsgVector3Stamped)) (replicate 6 (defaultRos2Geometry_msgsMsgVector3Stamped))
ros2Franka_msgsMsgFrankaRobotStateCodecIdentity :: String
ros2Franka_msgsMsgFrankaRobotStateCodecIdentity = "UWVMROS1_0fdc5c99a098f4c891956bb6cd81505995d5dda41a740f88ee456f48f6e07282"
ros2Franka_msgsMsgFrankaRobotState_ROBOT_MODE_OTHER :: Word8
ros2Franka_msgsMsgFrankaRobotState_ROBOT_MODE_OTHER = 0
ros2Franka_msgsMsgFrankaRobotState_ROBOT_MODE_IDLE :: Word8
ros2Franka_msgsMsgFrankaRobotState_ROBOT_MODE_IDLE = 1
ros2Franka_msgsMsgFrankaRobotState_ROBOT_MODE_MOVE :: Word8
ros2Franka_msgsMsgFrankaRobotState_ROBOT_MODE_MOVE = 2
ros2Franka_msgsMsgFrankaRobotState_ROBOT_MODE_GUIDING :: Word8
ros2Franka_msgsMsgFrankaRobotState_ROBOT_MODE_GUIDING = 3
ros2Franka_msgsMsgFrankaRobotState_ROBOT_MODE_REFLEX :: Word8
ros2Franka_msgsMsgFrankaRobotState_ROBOT_MODE_REFLEX = 4
ros2Franka_msgsMsgFrankaRobotState_ROBOT_MODE_USER_STOPPED :: Word8
ros2Franka_msgsMsgFrankaRobotState_ROBOT_MODE_USER_STOPPED = 5
ros2Franka_msgsMsgFrankaRobotState_ROBOT_MODE_AUTOMATIC_ERROR_RECOVERY :: Word8
ros2Franka_msgsMsgFrankaRobotState_ROBOT_MODE_AUTOMATIC_ERROR_RECOVERY = 6
encodeRos2Franka_msgsMsgFrankaRobotState :: Ros2Franka_msgsMsgFrankaRobotState -> Either Word32 B.ByteString
encodeRos2Franka_msgsMsgFrankaRobotState value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Franka_msgsMsgFrankaRobotState_header value)
  b1 <- encodeRos2Franka_msgsMsgCollisionIndicators (ros2Franka_msgsMsgFrankaRobotState_collision_indicators value)
  b2 <- encodeRos2Sensor_msgsMsgJointState (ros2Franka_msgsMsgFrankaRobotState_measured_joint_state value)
  b3 <- encodeRos2Sensor_msgsMsgJointState (ros2Franka_msgsMsgFrankaRobotState_desired_joint_state value)
  b4 <- encodeRos2Sensor_msgsMsgJointState (ros2Franka_msgsMsgFrankaRobotState_measured_joint_motor_state value)
  if length (ros2Franka_msgsMsgFrankaRobotState_ddq_d value) /= 7 then Left 22 else Right ()
  b5 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Franka_msgsMsgFrankaRobotState_ddq_d value)
  if length (ros2Franka_msgsMsgFrankaRobotState_dtau_j value) /= 7 then Left 22 else Right ()
  b6 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Franka_msgsMsgFrankaRobotState_dtau_j value)
  b7 <- encodeRos2Sensor_msgsMsgJointState (ros2Franka_msgsMsgFrankaRobotState_tau_ext_hat_filtered value)
  b8 <- encodeRos2Franka_msgsMsgElbow (ros2Franka_msgsMsgFrankaRobotState_elbow value)
  b9 <- encodeRos2Geometry_msgsMsgWrenchStamped (ros2Franka_msgsMsgFrankaRobotState_k_f_ext_hat_k value)
  b10 <- encodeRos2Geometry_msgsMsgWrenchStamped (ros2Franka_msgsMsgFrankaRobotState_o_f_ext_hat_k value)
  b11 <- encodeRos2Geometry_msgsMsgInertiaStamped (ros2Franka_msgsMsgFrankaRobotState_inertia_ee value)
  b12 <- encodeRos2Geometry_msgsMsgInertiaStamped (ros2Franka_msgsMsgFrankaRobotState_inertia_load value)
  b13 <- encodeRos2Geometry_msgsMsgInertiaStamped (ros2Franka_msgsMsgFrankaRobotState_inertia_total value)
  b14 <- encodeRos2Geometry_msgsMsgPoseStamped (ros2Franka_msgsMsgFrankaRobotState_o_t_ee value)
  b15 <- encodeRos2Geometry_msgsMsgPoseStamped (ros2Franka_msgsMsgFrankaRobotState_o_t_ee_d value)
  b16 <- encodeRos2Geometry_msgsMsgPoseStamped (ros2Franka_msgsMsgFrankaRobotState_o_t_ee_c value)
  b17 <- encodeRos2Geometry_msgsMsgPoseStamped (ros2Franka_msgsMsgFrankaRobotState_f_t_ee value)
  b18 <- encodeRos2Geometry_msgsMsgPoseStamped (ros2Franka_msgsMsgFrankaRobotState_ee_t_k value)
  b19 <- encodeRos2Geometry_msgsMsgTwistStamped (ros2Franka_msgsMsgFrankaRobotState_o_dp_ee_d value)
  b20 <- encodeRos2Geometry_msgsMsgTwistStamped (ros2Franka_msgsMsgFrankaRobotState_o_dp_ee_c value)
  b21 <- encodeRos2Geometry_msgsMsgAccelStamped (ros2Franka_msgsMsgFrankaRobotState_o_ddp_ee_c value)
  b22 <- W.encodeFloat64 (ros2Franka_msgsMsgFrankaRobotState_time value)
  b23 <- W.encodeFloat64 (ros2Franka_msgsMsgFrankaRobotState_control_command_success_rate value)
  b24 <- W.encodeUnsigned 1 (fromIntegral (ros2Franka_msgsMsgFrankaRobotState_robot_mode value))
  b25 <- encodeRos2Franka_msgsMsgErrors (ros2Franka_msgsMsgFrankaRobotState_current_errors value)
  b26 <- encodeRos2Franka_msgsMsgErrors (ros2Franka_msgsMsgFrankaRobotState_last_motion_errors value)
  if length (ros2Franka_msgsMsgFrankaRobotState_accelerometer_top value) /= 6 then Left 22 else Right ()
  b27 <- B.concat <$> mapM (\e -> encodeRos2Geometry_msgsMsgVector3Stamped (e))
          (ros2Franka_msgsMsgFrankaRobotState_accelerometer_top value)
  if length (ros2Franka_msgsMsgFrankaRobotState_accelerometer_bottom value) /= 6 then Left 22 else Right ()
  b28 <- B.concat <$> mapM (\e -> encodeRos2Geometry_msgsMsgVector3Stamped (e))
          (ros2Franka_msgsMsgFrankaRobotState_accelerometer_bottom value)
  W.bounded 10169 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15, b16, b17, b18, b19, b20, b21, b22, b23,
          b24, b25, b26, b27, b28]
readRos2Franka_msgsMsgFrankaRobotState :: W.Decoder Ros2Franka_msgsMsgFrankaRobotState
readRos2Franka_msgsMsgFrankaRobotState = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- readRos2Franka_msgsMsgCollisionIndicators
  a2 <- readRos2Sensor_msgsMsgJointState
  a3 <- readRos2Sensor_msgsMsgJointState
  a4 <- readRos2Sensor_msgsMsgJointState
  a5 <- replicateM 7 (W.float64)
  a6 <- replicateM 7 (W.float64)
  a7 <- readRos2Sensor_msgsMsgJointState
  a8 <- readRos2Franka_msgsMsgElbow
  a9 <- readRos2Geometry_msgsMsgWrenchStamped
  a10 <- readRos2Geometry_msgsMsgWrenchStamped
  a11 <- readRos2Geometry_msgsMsgInertiaStamped
  a12 <- readRos2Geometry_msgsMsgInertiaStamped
  a13 <- readRos2Geometry_msgsMsgInertiaStamped
  a14 <- readRos2Geometry_msgsMsgPoseStamped
  a15 <- readRos2Geometry_msgsMsgPoseStamped
  a16 <- readRos2Geometry_msgsMsgPoseStamped
  a17 <- readRos2Geometry_msgsMsgPoseStamped
  a18 <- readRos2Geometry_msgsMsgPoseStamped
  a19 <- readRos2Geometry_msgsMsgTwistStamped
  a20 <- readRos2Geometry_msgsMsgTwistStamped
  a21 <- readRos2Geometry_msgsMsgAccelStamped
  a22 <- W.float64
  a23 <- W.float64
  a24 <- fromIntegral <$> W.unsigned 1
  a25 <- readRos2Franka_msgsMsgErrors
  a26 <- readRos2Franka_msgsMsgErrors
  a27 <- replicateM 6 (readRos2Geometry_msgsMsgVector3Stamped)
  a28 <- replicateM 6 (readRos2Geometry_msgsMsgVector3Stamped)
  let value = Ros2Franka_msgsMsgFrankaRobotState a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22
          a23 a24 a25 a26 a27 a28
  case encodeRos2Franka_msgsMsgFrankaRobotState value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_msgsMsgFrankaRobotState :: B.ByteString -> Either Word32 Ros2Franka_msgsMsgFrankaRobotState
decodeRos2Franka_msgsMsgFrankaRobotState = W.runDecoder 10169 readRos2Franka_msgsMsgFrankaRobotState
instance Canonical Ros2Franka_msgsMsgFrankaRobotState where
  maximumBytes _ = 10169
  encodeValue = encodeRos2Franka_msgsMsgFrankaRobotState
  readValue = readRos2Franka_msgsMsgFrankaRobotState
data Ros2Franka_msgsSrvSetCartesianStiffness_Request = Ros2Franka_msgsSrvSetCartesianStiffness_Request
  {
    -- | \@brief franka_msgs/srv/SetCartesianStiffness_Request.cartesian_stiffness: float64; exactly 6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsSrvSetCartesianStiffness_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsSrvSetCartesianStiffness_Request_cartesian_stiffness :: [Double]
  } deriving (Eq, Show)
defaultRos2Franka_msgsSrvSetCartesianStiffness_Request :: Ros2Franka_msgsSrvSetCartesianStiffness_Request
defaultRos2Franka_msgsSrvSetCartesianStiffness_Request = Ros2Franka_msgsSrvSetCartesianStiffness_Request (replicate 6 (0))
ros2Franka_msgsSrvSetCartesianStiffness_RequestCodecIdentity :: String
ros2Franka_msgsSrvSetCartesianStiffness_RequestCodecIdentity =
        "UWVMROS1_ae78b9887a5419225cfe0727bac83d8c53f789acd53bd47f024485b02aa98260"
encodeRos2Franka_msgsSrvSetCartesianStiffness_Request :: Ros2Franka_msgsSrvSetCartesianStiffness_Request -> Either Word32
        B.ByteString
encodeRos2Franka_msgsSrvSetCartesianStiffness_Request value = do
  if length (ros2Franka_msgsSrvSetCartesianStiffness_Request_cartesian_stiffness value) /= 6 then Left 22 else Right ()
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Franka_msgsSrvSetCartesianStiffness_Request_cartesian_stiffness value)
  W.bounded 48 [b0]
readRos2Franka_msgsSrvSetCartesianStiffness_Request :: W.Decoder Ros2Franka_msgsSrvSetCartesianStiffness_Request
readRos2Franka_msgsSrvSetCartesianStiffness_Request = do
  a0 <- replicateM 6 (W.float64)
  let value = Ros2Franka_msgsSrvSetCartesianStiffness_Request a0
  case encodeRos2Franka_msgsSrvSetCartesianStiffness_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_msgsSrvSetCartesianStiffness_Request :: B.ByteString -> Either Word32
        Ros2Franka_msgsSrvSetCartesianStiffness_Request
decodeRos2Franka_msgsSrvSetCartesianStiffness_Request = W.runDecoder 48 readRos2Franka_msgsSrvSetCartesianStiffness_Request
instance Canonical Ros2Franka_msgsSrvSetCartesianStiffness_Request where
  maximumBytes _ = 48
  encodeValue = encodeRos2Franka_msgsSrvSetCartesianStiffness_Request
  readValue = readRos2Franka_msgsSrvSetCartesianStiffness_Request
data Ros2Franka_msgsSrvSetCartesianStiffness_Response = Ros2Franka_msgsSrvSetCartesianStiffness_Response
  {
    -- | \@brief franka_msgs/srv/SetCartesianStiffness_Response.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsSrvSetCartesianStiffness_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsSrvSetCartesianStiffness_Response_success :: Bool
  ,
    -- | \@brief franka_msgs/srv/SetCartesianStiffness_Response.error: string; each string is 0..256 bytes; strict UTF-8
    -- | with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsSrvSetCartesianStiffness_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsSrvSetCartesianStiffness_Response_error :: T.Text
  } deriving (Eq, Show)
defaultRos2Franka_msgsSrvSetCartesianStiffness_Response :: Ros2Franka_msgsSrvSetCartesianStiffness_Response
defaultRos2Franka_msgsSrvSetCartesianStiffness_Response = Ros2Franka_msgsSrvSetCartesianStiffness_Response (False) (T.empty)
ros2Franka_msgsSrvSetCartesianStiffness_ResponseCodecIdentity :: String
ros2Franka_msgsSrvSetCartesianStiffness_ResponseCodecIdentity =
        "UWVMROS1_3194f7469bbf228e653f5a93336fd5de4a1b2d7c1fe9542f3fadc8ad4fd51afa"
encodeRos2Franka_msgsSrvSetCartesianStiffness_Response :: Ros2Franka_msgsSrvSetCartesianStiffness_Response -> Either Word32
        B.ByteString
encodeRos2Franka_msgsSrvSetCartesianStiffness_Response value = do
  b0 <- W.encodeBool (ros2Franka_msgsSrvSetCartesianStiffness_Response_success value)
  b1 <- W.encodeText 256 True (ros2Franka_msgsSrvSetCartesianStiffness_Response_error value)
  W.bounded 261 [b0, b1]
readRos2Franka_msgsSrvSetCartesianStiffness_Response :: W.Decoder Ros2Franka_msgsSrvSetCartesianStiffness_Response
readRos2Franka_msgsSrvSetCartesianStiffness_Response = do
  a0 <- W.boolean
  a1 <- W.text 256 True
  let value = Ros2Franka_msgsSrvSetCartesianStiffness_Response a0 a1
  case encodeRos2Franka_msgsSrvSetCartesianStiffness_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_msgsSrvSetCartesianStiffness_Response :: B.ByteString -> Either Word32
        Ros2Franka_msgsSrvSetCartesianStiffness_Response
decodeRos2Franka_msgsSrvSetCartesianStiffness_Response = W.runDecoder 261 readRos2Franka_msgsSrvSetCartesianStiffness_Response
instance Canonical Ros2Franka_msgsSrvSetCartesianStiffness_Response where
  maximumBytes _ = 261
  encodeValue = encodeRos2Franka_msgsSrvSetCartesianStiffness_Response
  readValue = readRos2Franka_msgsSrvSetCartesianStiffness_Response
data Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request = Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request
  {
    -- | \@brief franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.lower_torque_thresholds_nominal: float64;
    -- | exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request_lower_torque_thresholds_nominal :: [Double]
  ,
    -- | \@brief franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.upper_torque_thresholds_nominal: float64;
    -- | exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request_upper_torque_thresholds_nominal :: [Double]
  ,
    -- | \@brief franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.lower_force_thresholds_nominal: float64;
    -- | exactly 6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request_lower_force_thresholds_nominal :: [Double]
  ,
    -- | \@brief franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.upper_force_thresholds_nominal: float64;
    -- | exactly 6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request_upper_force_thresholds_nominal :: [Double]
  } deriving (Eq, Show)
defaultRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request :: Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request
defaultRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request = Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request
        (replicate 7 (0)) (replicate 7 (0)) (replicate 6 (0)) (replicate 6 (0))
ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_RequestCodecIdentity :: String
ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_RequestCodecIdentity =
        "UWVMROS1_829642a9ea418a53f7252f7489bd7f5ed976bf3689443012daf216db895cf99c"
encodeRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request :: Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request ->
        Either Word32 B.ByteString
encodeRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request value = do
  if length (ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request_lower_torque_thresholds_nominal value) /= 7 then Left 22 else
          Right ()
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e))
          (ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request_lower_torque_thresholds_nominal value)
  if length (ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request_upper_torque_thresholds_nominal value) /= 7 then Left 22 else
          Right ()
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e))
          (ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request_upper_torque_thresholds_nominal value)
  if length (ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request_lower_force_thresholds_nominal value) /= 6 then Left 22 else
          Right ()
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e))
          (ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request_lower_force_thresholds_nominal value)
  if length (ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request_upper_force_thresholds_nominal value) /= 6 then Left 22 else
          Right ()
  b3 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e))
          (ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request_upper_force_thresholds_nominal value)
  W.bounded 208 [b0, b1, b2, b3]
readRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request :: W.Decoder Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request
readRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request = do
  a0 <- replicateM 7 (W.float64)
  a1 <- replicateM 7 (W.float64)
  a2 <- replicateM 6 (W.float64)
  a3 <- replicateM 6 (W.float64)
  let value = Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request a0 a1 a2 a3
  case encodeRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request :: B.ByteString -> Either Word32
        Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request
decodeRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request = W.runDecoder 208
        readRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request
instance Canonical Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request where
  maximumBytes _ = 208
  encodeValue = encodeRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request
  readValue = readRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request
data Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response = Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response
  {
    -- | \@brief franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response_success :: Bool
  ,
    -- | \@brief franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.error: string; each string is 0..256 bytes;
    -- | strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response_error :: T.Text
  } deriving (Eq, Show)
defaultRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response :: Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response
defaultRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response = Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response
        (False) (T.empty)
ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_ResponseCodecIdentity :: String
ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_ResponseCodecIdentity =
        "UWVMROS1_7d5640c34446e4262a8c00f0b242b68c0095688f0208fd692f21d855003eb47a"
encodeRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response :: Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response ->
        Either Word32 B.ByteString
encodeRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response value = do
  b0 <- W.encodeBool (ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response_success value)
  b1 <- W.encodeText 256 True (ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response_error value)
  W.bounded 261 [b0, b1]
readRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response :: W.Decoder
        Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response
readRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response = do
  a0 <- W.boolean
  a1 <- W.text 256 True
  let value = Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response a0 a1
  case encodeRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response :: B.ByteString -> Either Word32
        Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response
decodeRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response = W.runDecoder 261
        readRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response
instance Canonical Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response where
  maximumBytes _ = 261
  encodeValue = encodeRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response
  readValue = readRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response
data Ros2Franka_msgsSrvSetFullCollisionBehavior_Request = Ros2Franka_msgsSrvSetFullCollisionBehavior_Request
  {
    -- | \@brief franka_msgs/srv/SetFullCollisionBehavior_Request.lower_torque_thresholds_acceleration: float64; exactly
    -- | 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsSrvSetFullCollisionBehavior_Request_lower_torque_thresholds_acceleration :: [Double]
  ,
    -- | \@brief franka_msgs/srv/SetFullCollisionBehavior_Request.upper_torque_thresholds_acceleration: float64; exactly
    -- | 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsSrvSetFullCollisionBehavior_Request_upper_torque_thresholds_acceleration :: [Double]
  ,
    -- | \@brief franka_msgs/srv/SetFullCollisionBehavior_Request.lower_torque_thresholds_nominal: float64; exactly 7
    -- | elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsSrvSetFullCollisionBehavior_Request_lower_torque_thresholds_nominal :: [Double]
  ,
    -- | \@brief franka_msgs/srv/SetFullCollisionBehavior_Request.upper_torque_thresholds_nominal: float64; exactly 7
    -- | elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsSrvSetFullCollisionBehavior_Request_upper_torque_thresholds_nominal :: [Double]
  ,
    -- | \@brief franka_msgs/srv/SetFullCollisionBehavior_Request.lower_force_thresholds_acceleration: float64; exactly
    -- | 6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsSrvSetFullCollisionBehavior_Request_lower_force_thresholds_acceleration :: [Double]
  ,
    -- | \@brief franka_msgs/srv/SetFullCollisionBehavior_Request.upper_force_thresholds_acceleration: float64; exactly
    -- | 6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsSrvSetFullCollisionBehavior_Request_upper_force_thresholds_acceleration :: [Double]
  ,
    -- | \@brief franka_msgs/srv/SetFullCollisionBehavior_Request.lower_force_thresholds_nominal: float64; exactly 6
    -- | elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsSrvSetFullCollisionBehavior_Request_lower_force_thresholds_nominal :: [Double]
  ,
    -- | \@brief franka_msgs/srv/SetFullCollisionBehavior_Request.upper_force_thresholds_nominal: float64; exactly 6
    -- | elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsSrvSetFullCollisionBehavior_Request_upper_force_thresholds_nominal :: [Double]
  } deriving (Eq, Show)
defaultRos2Franka_msgsSrvSetFullCollisionBehavior_Request :: Ros2Franka_msgsSrvSetFullCollisionBehavior_Request
defaultRos2Franka_msgsSrvSetFullCollisionBehavior_Request = Ros2Franka_msgsSrvSetFullCollisionBehavior_Request (replicate 7 (0))
        (replicate 7 (0)) (replicate 7 (0)) (replicate 7 (0)) (replicate 6 (0)) (replicate 6 (0)) (replicate 6 (0)) (replicate 6
        (0))
ros2Franka_msgsSrvSetFullCollisionBehavior_RequestCodecIdentity :: String
ros2Franka_msgsSrvSetFullCollisionBehavior_RequestCodecIdentity =
        "UWVMROS1_d6898555d931aee3a5b4f5f97830cb9982f2e378c59c40bcaa0201840d2f2824"
encodeRos2Franka_msgsSrvSetFullCollisionBehavior_Request :: Ros2Franka_msgsSrvSetFullCollisionBehavior_Request -> Either Word32
        B.ByteString
encodeRos2Franka_msgsSrvSetFullCollisionBehavior_Request value = do
  if length (ros2Franka_msgsSrvSetFullCollisionBehavior_Request_lower_torque_thresholds_acceleration value) /= 7 then Left 22 else
          Right ()
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e))
          (ros2Franka_msgsSrvSetFullCollisionBehavior_Request_lower_torque_thresholds_acceleration value)
  if length (ros2Franka_msgsSrvSetFullCollisionBehavior_Request_upper_torque_thresholds_acceleration value) /= 7 then Left 22 else
          Right ()
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e))
          (ros2Franka_msgsSrvSetFullCollisionBehavior_Request_upper_torque_thresholds_acceleration value)
  if length (ros2Franka_msgsSrvSetFullCollisionBehavior_Request_lower_torque_thresholds_nominal value) /= 7 then Left 22 else Right
          ()
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e))
          (ros2Franka_msgsSrvSetFullCollisionBehavior_Request_lower_torque_thresholds_nominal value)
  if length (ros2Franka_msgsSrvSetFullCollisionBehavior_Request_upper_torque_thresholds_nominal value) /= 7 then Left 22 else Right
          ()
  b3 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e))
          (ros2Franka_msgsSrvSetFullCollisionBehavior_Request_upper_torque_thresholds_nominal value)
  if length (ros2Franka_msgsSrvSetFullCollisionBehavior_Request_lower_force_thresholds_acceleration value) /= 6 then Left 22 else
          Right ()
  b4 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e))
          (ros2Franka_msgsSrvSetFullCollisionBehavior_Request_lower_force_thresholds_acceleration value)
  if length (ros2Franka_msgsSrvSetFullCollisionBehavior_Request_upper_force_thresholds_acceleration value) /= 6 then Left 22 else
          Right ()
  b5 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e))
          (ros2Franka_msgsSrvSetFullCollisionBehavior_Request_upper_force_thresholds_acceleration value)
  if length (ros2Franka_msgsSrvSetFullCollisionBehavior_Request_lower_force_thresholds_nominal value) /= 6 then Left 22 else Right
          ()
  b6 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e))
          (ros2Franka_msgsSrvSetFullCollisionBehavior_Request_lower_force_thresholds_nominal value)
  if length (ros2Franka_msgsSrvSetFullCollisionBehavior_Request_upper_force_thresholds_nominal value) /= 6 then Left 22 else Right
          ()
  b7 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e))
          (ros2Franka_msgsSrvSetFullCollisionBehavior_Request_upper_force_thresholds_nominal value)
  W.bounded 416 [b0, b1, b2, b3, b4, b5, b6, b7]
readRos2Franka_msgsSrvSetFullCollisionBehavior_Request :: W.Decoder Ros2Franka_msgsSrvSetFullCollisionBehavior_Request
readRos2Franka_msgsSrvSetFullCollisionBehavior_Request = do
  a0 <- replicateM 7 (W.float64)
  a1 <- replicateM 7 (W.float64)
  a2 <- replicateM 7 (W.float64)
  a3 <- replicateM 7 (W.float64)
  a4 <- replicateM 6 (W.float64)
  a5 <- replicateM 6 (W.float64)
  a6 <- replicateM 6 (W.float64)
  a7 <- replicateM 6 (W.float64)
  let value = Ros2Franka_msgsSrvSetFullCollisionBehavior_Request a0 a1 a2 a3 a4 a5 a6 a7
  case encodeRos2Franka_msgsSrvSetFullCollisionBehavior_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_msgsSrvSetFullCollisionBehavior_Request :: B.ByteString -> Either Word32
        Ros2Franka_msgsSrvSetFullCollisionBehavior_Request
decodeRos2Franka_msgsSrvSetFullCollisionBehavior_Request = W.runDecoder 416 readRos2Franka_msgsSrvSetFullCollisionBehavior_Request
instance Canonical Ros2Franka_msgsSrvSetFullCollisionBehavior_Request where
  maximumBytes _ = 416
  encodeValue = encodeRos2Franka_msgsSrvSetFullCollisionBehavior_Request
  readValue = readRos2Franka_msgsSrvSetFullCollisionBehavior_Request
data Ros2Franka_msgsSrvSetFullCollisionBehavior_Response = Ros2Franka_msgsSrvSetFullCollisionBehavior_Response
  {
    -- | \@brief franka_msgs/srv/SetFullCollisionBehavior_Response.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsSrvSetFullCollisionBehavior_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsSrvSetFullCollisionBehavior_Response_success :: Bool
  ,
    -- | \@brief franka_msgs/srv/SetFullCollisionBehavior_Response.error: string; each string is 0..256 bytes; strict
    -- | UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsSrvSetFullCollisionBehavior_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsSrvSetFullCollisionBehavior_Response_error :: T.Text
  } deriving (Eq, Show)
defaultRos2Franka_msgsSrvSetFullCollisionBehavior_Response :: Ros2Franka_msgsSrvSetFullCollisionBehavior_Response
defaultRos2Franka_msgsSrvSetFullCollisionBehavior_Response = Ros2Franka_msgsSrvSetFullCollisionBehavior_Response (False) (T.empty)
ros2Franka_msgsSrvSetFullCollisionBehavior_ResponseCodecIdentity :: String
ros2Franka_msgsSrvSetFullCollisionBehavior_ResponseCodecIdentity =
        "UWVMROS1_76430e384e9ad8b3f3c937e3004e8dc15a51d28abecd108c698e60d39c54f300"
encodeRos2Franka_msgsSrvSetFullCollisionBehavior_Response :: Ros2Franka_msgsSrvSetFullCollisionBehavior_Response -> Either Word32
        B.ByteString
encodeRos2Franka_msgsSrvSetFullCollisionBehavior_Response value = do
  b0 <- W.encodeBool (ros2Franka_msgsSrvSetFullCollisionBehavior_Response_success value)
  b1 <- W.encodeText 256 True (ros2Franka_msgsSrvSetFullCollisionBehavior_Response_error value)
  W.bounded 261 [b0, b1]
readRos2Franka_msgsSrvSetFullCollisionBehavior_Response :: W.Decoder Ros2Franka_msgsSrvSetFullCollisionBehavior_Response
readRos2Franka_msgsSrvSetFullCollisionBehavior_Response = do
  a0 <- W.boolean
  a1 <- W.text 256 True
  let value = Ros2Franka_msgsSrvSetFullCollisionBehavior_Response a0 a1
  case encodeRos2Franka_msgsSrvSetFullCollisionBehavior_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_msgsSrvSetFullCollisionBehavior_Response :: B.ByteString -> Either Word32
        Ros2Franka_msgsSrvSetFullCollisionBehavior_Response
decodeRos2Franka_msgsSrvSetFullCollisionBehavior_Response = W.runDecoder 261 readRos2Franka_msgsSrvSetFullCollisionBehavior_Response
instance Canonical Ros2Franka_msgsSrvSetFullCollisionBehavior_Response where
  maximumBytes _ = 261
  encodeValue = encodeRos2Franka_msgsSrvSetFullCollisionBehavior_Response
  readValue = readRos2Franka_msgsSrvSetFullCollisionBehavior_Response
data Ros2Franka_msgsSrvSetJointStiffness_Request = Ros2Franka_msgsSrvSetJointStiffness_Request
  {
    -- | \@brief franka_msgs/srv/SetJointStiffness_Request.joint_stiffness: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsSrvSetJointStiffness_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsSrvSetJointStiffness_Request_joint_stiffness :: [Double]
  } deriving (Eq, Show)
defaultRos2Franka_msgsSrvSetJointStiffness_Request :: Ros2Franka_msgsSrvSetJointStiffness_Request
defaultRos2Franka_msgsSrvSetJointStiffness_Request = Ros2Franka_msgsSrvSetJointStiffness_Request (replicate 7 (0))
ros2Franka_msgsSrvSetJointStiffness_RequestCodecIdentity :: String
ros2Franka_msgsSrvSetJointStiffness_RequestCodecIdentity =
        "UWVMROS1_65b5d6599d1b97a0356f599102c22e0ae8c33b85f14c5a49b6c097eb227d334c"
encodeRos2Franka_msgsSrvSetJointStiffness_Request :: Ros2Franka_msgsSrvSetJointStiffness_Request -> Either Word32 B.ByteString
encodeRos2Franka_msgsSrvSetJointStiffness_Request value = do
  if length (ros2Franka_msgsSrvSetJointStiffness_Request_joint_stiffness value) /= 7 then Left 22 else Right ()
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Franka_msgsSrvSetJointStiffness_Request_joint_stiffness value)
  W.bounded 56 [b0]
readRos2Franka_msgsSrvSetJointStiffness_Request :: W.Decoder Ros2Franka_msgsSrvSetJointStiffness_Request
readRos2Franka_msgsSrvSetJointStiffness_Request = do
  a0 <- replicateM 7 (W.float64)
  let value = Ros2Franka_msgsSrvSetJointStiffness_Request a0
  case encodeRos2Franka_msgsSrvSetJointStiffness_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_msgsSrvSetJointStiffness_Request :: B.ByteString -> Either Word32 Ros2Franka_msgsSrvSetJointStiffness_Request
decodeRos2Franka_msgsSrvSetJointStiffness_Request = W.runDecoder 56 readRos2Franka_msgsSrvSetJointStiffness_Request
instance Canonical Ros2Franka_msgsSrvSetJointStiffness_Request where
  maximumBytes _ = 56
  encodeValue = encodeRos2Franka_msgsSrvSetJointStiffness_Request
  readValue = readRos2Franka_msgsSrvSetJointStiffness_Request
data Ros2Franka_msgsSrvSetJointStiffness_Response = Ros2Franka_msgsSrvSetJointStiffness_Response
  {
    -- | \@brief franka_msgs/srv/SetJointStiffness_Response.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsSrvSetJointStiffness_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsSrvSetJointStiffness_Response_success :: Bool
  ,
    -- | \@brief franka_msgs/srv/SetJointStiffness_Response.error: string; each string is 0..256 bytes; strict UTF-8
    -- | with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsSrvSetJointStiffness_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsSrvSetJointStiffness_Response_error :: T.Text
  } deriving (Eq, Show)
defaultRos2Franka_msgsSrvSetJointStiffness_Response :: Ros2Franka_msgsSrvSetJointStiffness_Response
defaultRos2Franka_msgsSrvSetJointStiffness_Response = Ros2Franka_msgsSrvSetJointStiffness_Response (False) (T.empty)
ros2Franka_msgsSrvSetJointStiffness_ResponseCodecIdentity :: String
ros2Franka_msgsSrvSetJointStiffness_ResponseCodecIdentity =
        "UWVMROS1_1a857ab809079e0eec664250a9521ddc1cdf66e61aa2e0f22eae8442f5231c4d"
encodeRos2Franka_msgsSrvSetJointStiffness_Response :: Ros2Franka_msgsSrvSetJointStiffness_Response -> Either Word32 B.ByteString
encodeRos2Franka_msgsSrvSetJointStiffness_Response value = do
  b0 <- W.encodeBool (ros2Franka_msgsSrvSetJointStiffness_Response_success value)
  b1 <- W.encodeText 256 True (ros2Franka_msgsSrvSetJointStiffness_Response_error value)
  W.bounded 261 [b0, b1]
readRos2Franka_msgsSrvSetJointStiffness_Response :: W.Decoder Ros2Franka_msgsSrvSetJointStiffness_Response
readRos2Franka_msgsSrvSetJointStiffness_Response = do
  a0 <- W.boolean
  a1 <- W.text 256 True
  let value = Ros2Franka_msgsSrvSetJointStiffness_Response a0 a1
  case encodeRos2Franka_msgsSrvSetJointStiffness_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_msgsSrvSetJointStiffness_Response :: B.ByteString -> Either Word32 Ros2Franka_msgsSrvSetJointStiffness_Response
decodeRos2Franka_msgsSrvSetJointStiffness_Response = W.runDecoder 261 readRos2Franka_msgsSrvSetJointStiffness_Response
instance Canonical Ros2Franka_msgsSrvSetJointStiffness_Response where
  maximumBytes _ = 261
  encodeValue = encodeRos2Franka_msgsSrvSetJointStiffness_Response
  readValue = readRos2Franka_msgsSrvSetJointStiffness_Response
data Ros2Franka_msgsSrvSetLoad_Request = Ros2Franka_msgsSrvSetLoad_Request
  {
    -- | \@brief franka_msgs/srv/SetLoad_Request.mass: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsSrvSetLoad_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsSrvSetLoad_Request_mass :: Double
  ,
    -- | \@brief franka_msgs/srv/SetLoad_Request.center_of_mass: float64; exactly 3 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsSrvSetLoad_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsSrvSetLoad_Request_center_of_mass :: [Double]
  ,
    -- | \@brief franka_msgs/srv/SetLoad_Request.load_inertia: float64; exactly 9 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsSrvSetLoad_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsSrvSetLoad_Request_load_inertia :: [Double]
  } deriving (Eq, Show)
defaultRos2Franka_msgsSrvSetLoad_Request :: Ros2Franka_msgsSrvSetLoad_Request
defaultRos2Franka_msgsSrvSetLoad_Request = Ros2Franka_msgsSrvSetLoad_Request (0) (replicate 3 (0)) (replicate 9 (0))
ros2Franka_msgsSrvSetLoad_RequestCodecIdentity :: String
ros2Franka_msgsSrvSetLoad_RequestCodecIdentity = "UWVMROS1_a616a844864b7bbf4ee18ac481ddd8406bec47354b4519a0e17f8a305635b7f8"
encodeRos2Franka_msgsSrvSetLoad_Request :: Ros2Franka_msgsSrvSetLoad_Request -> Either Word32 B.ByteString
encodeRos2Franka_msgsSrvSetLoad_Request value = do
  b0 <- W.encodeFloat64 (ros2Franka_msgsSrvSetLoad_Request_mass value)
  if length (ros2Franka_msgsSrvSetLoad_Request_center_of_mass value) /= 3 then Left 22 else Right ()
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Franka_msgsSrvSetLoad_Request_center_of_mass value)
  if length (ros2Franka_msgsSrvSetLoad_Request_load_inertia value) /= 9 then Left 22 else Right ()
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Franka_msgsSrvSetLoad_Request_load_inertia value)
  W.bounded 104 [b0, b1, b2]
readRos2Franka_msgsSrvSetLoad_Request :: W.Decoder Ros2Franka_msgsSrvSetLoad_Request
readRos2Franka_msgsSrvSetLoad_Request = do
  a0 <- W.float64
  a1 <- replicateM 3 (W.float64)
  a2 <- replicateM 9 (W.float64)
  let value = Ros2Franka_msgsSrvSetLoad_Request a0 a1 a2
  case encodeRos2Franka_msgsSrvSetLoad_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_msgsSrvSetLoad_Request :: B.ByteString -> Either Word32 Ros2Franka_msgsSrvSetLoad_Request
decodeRos2Franka_msgsSrvSetLoad_Request = W.runDecoder 104 readRos2Franka_msgsSrvSetLoad_Request
instance Canonical Ros2Franka_msgsSrvSetLoad_Request where
  maximumBytes _ = 104
  encodeValue = encodeRos2Franka_msgsSrvSetLoad_Request
  readValue = readRos2Franka_msgsSrvSetLoad_Request
data Ros2Franka_msgsSrvSetLoad_Response = Ros2Franka_msgsSrvSetLoad_Response
  {
    -- | \@brief franka_msgs/srv/SetLoad_Response.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsSrvSetLoad_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsSrvSetLoad_Response_success :: Bool
  ,
    -- | \@brief franka_msgs/srv/SetLoad_Response.error: string; each string is 0..256 bytes; strict UTF-8 with no
    -- | embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsSrvSetLoad_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsSrvSetLoad_Response_error :: T.Text
  } deriving (Eq, Show)
defaultRos2Franka_msgsSrvSetLoad_Response :: Ros2Franka_msgsSrvSetLoad_Response
defaultRos2Franka_msgsSrvSetLoad_Response = Ros2Franka_msgsSrvSetLoad_Response (False) (T.empty)
ros2Franka_msgsSrvSetLoad_ResponseCodecIdentity :: String
ros2Franka_msgsSrvSetLoad_ResponseCodecIdentity = "UWVMROS1_991ff575719ef9442063a13c45a9660c672f5607e6e40cf6ab5c7a3173fa00bf"
encodeRos2Franka_msgsSrvSetLoad_Response :: Ros2Franka_msgsSrvSetLoad_Response -> Either Word32 B.ByteString
encodeRos2Franka_msgsSrvSetLoad_Response value = do
  b0 <- W.encodeBool (ros2Franka_msgsSrvSetLoad_Response_success value)
  b1 <- W.encodeText 256 True (ros2Franka_msgsSrvSetLoad_Response_error value)
  W.bounded 261 [b0, b1]
readRos2Franka_msgsSrvSetLoad_Response :: W.Decoder Ros2Franka_msgsSrvSetLoad_Response
readRos2Franka_msgsSrvSetLoad_Response = do
  a0 <- W.boolean
  a1 <- W.text 256 True
  let value = Ros2Franka_msgsSrvSetLoad_Response a0 a1
  case encodeRos2Franka_msgsSrvSetLoad_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_msgsSrvSetLoad_Response :: B.ByteString -> Either Word32 Ros2Franka_msgsSrvSetLoad_Response
decodeRos2Franka_msgsSrvSetLoad_Response = W.runDecoder 261 readRos2Franka_msgsSrvSetLoad_Response
instance Canonical Ros2Franka_msgsSrvSetLoad_Response where
  maximumBytes _ = 261
  encodeValue = encodeRos2Franka_msgsSrvSetLoad_Response
  readValue = readRos2Franka_msgsSrvSetLoad_Response
data Ros2Franka_msgsSrvSetStiffnessFrame_Request = Ros2Franka_msgsSrvSetStiffnessFrame_Request
  {
    -- | \@brief franka_msgs/srv/SetStiffnessFrame_Request.transformation: float64; exactly 16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsSrvSetStiffnessFrame_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsSrvSetStiffnessFrame_Request_transformation :: [Double]
  } deriving (Eq, Show)
defaultRos2Franka_msgsSrvSetStiffnessFrame_Request :: Ros2Franka_msgsSrvSetStiffnessFrame_Request
defaultRos2Franka_msgsSrvSetStiffnessFrame_Request = Ros2Franka_msgsSrvSetStiffnessFrame_Request (replicate 16 (0))
ros2Franka_msgsSrvSetStiffnessFrame_RequestCodecIdentity :: String
ros2Franka_msgsSrvSetStiffnessFrame_RequestCodecIdentity =
        "UWVMROS1_f8ee91daba1642286b63178c18bf2a005597e94951f11a185241193132c9f402"
encodeRos2Franka_msgsSrvSetStiffnessFrame_Request :: Ros2Franka_msgsSrvSetStiffnessFrame_Request -> Either Word32 B.ByteString
encodeRos2Franka_msgsSrvSetStiffnessFrame_Request value = do
  if length (ros2Franka_msgsSrvSetStiffnessFrame_Request_transformation value) /= 16 then Left 22 else Right ()
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Franka_msgsSrvSetStiffnessFrame_Request_transformation value)
  W.bounded 128 [b0]
readRos2Franka_msgsSrvSetStiffnessFrame_Request :: W.Decoder Ros2Franka_msgsSrvSetStiffnessFrame_Request
readRos2Franka_msgsSrvSetStiffnessFrame_Request = do
  a0 <- replicateM 16 (W.float64)
  let value = Ros2Franka_msgsSrvSetStiffnessFrame_Request a0
  case encodeRos2Franka_msgsSrvSetStiffnessFrame_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_msgsSrvSetStiffnessFrame_Request :: B.ByteString -> Either Word32 Ros2Franka_msgsSrvSetStiffnessFrame_Request
decodeRos2Franka_msgsSrvSetStiffnessFrame_Request = W.runDecoder 128 readRos2Franka_msgsSrvSetStiffnessFrame_Request
instance Canonical Ros2Franka_msgsSrvSetStiffnessFrame_Request where
  maximumBytes _ = 128
  encodeValue = encodeRos2Franka_msgsSrvSetStiffnessFrame_Request
  readValue = readRos2Franka_msgsSrvSetStiffnessFrame_Request
data Ros2Franka_msgsSrvSetStiffnessFrame_Response = Ros2Franka_msgsSrvSetStiffnessFrame_Response
  {
    -- | \@brief franka_msgs/srv/SetStiffnessFrame_Response.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsSrvSetStiffnessFrame_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsSrvSetStiffnessFrame_Response_success :: Bool
  ,
    -- | \@brief franka_msgs/srv/SetStiffnessFrame_Response.error: string; each string is 0..256 bytes; strict UTF-8
    -- | with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsSrvSetStiffnessFrame_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsSrvSetStiffnessFrame_Response_error :: T.Text
  } deriving (Eq, Show)
defaultRos2Franka_msgsSrvSetStiffnessFrame_Response :: Ros2Franka_msgsSrvSetStiffnessFrame_Response
defaultRos2Franka_msgsSrvSetStiffnessFrame_Response = Ros2Franka_msgsSrvSetStiffnessFrame_Response (False) (T.empty)
ros2Franka_msgsSrvSetStiffnessFrame_ResponseCodecIdentity :: String
ros2Franka_msgsSrvSetStiffnessFrame_ResponseCodecIdentity =
        "UWVMROS1_e32cb83b1f0f3cda363566525c0b1fe367190f2e66f68282b330f4517f6ea744"
encodeRos2Franka_msgsSrvSetStiffnessFrame_Response :: Ros2Franka_msgsSrvSetStiffnessFrame_Response -> Either Word32 B.ByteString
encodeRos2Franka_msgsSrvSetStiffnessFrame_Response value = do
  b0 <- W.encodeBool (ros2Franka_msgsSrvSetStiffnessFrame_Response_success value)
  b1 <- W.encodeText 256 True (ros2Franka_msgsSrvSetStiffnessFrame_Response_error value)
  W.bounded 261 [b0, b1]
readRos2Franka_msgsSrvSetStiffnessFrame_Response :: W.Decoder Ros2Franka_msgsSrvSetStiffnessFrame_Response
readRos2Franka_msgsSrvSetStiffnessFrame_Response = do
  a0 <- W.boolean
  a1 <- W.text 256 True
  let value = Ros2Franka_msgsSrvSetStiffnessFrame_Response a0 a1
  case encodeRos2Franka_msgsSrvSetStiffnessFrame_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_msgsSrvSetStiffnessFrame_Response :: B.ByteString -> Either Word32 Ros2Franka_msgsSrvSetStiffnessFrame_Response
decodeRos2Franka_msgsSrvSetStiffnessFrame_Response = W.runDecoder 261 readRos2Franka_msgsSrvSetStiffnessFrame_Response
instance Canonical Ros2Franka_msgsSrvSetStiffnessFrame_Response where
  maximumBytes _ = 261
  encodeValue = encodeRos2Franka_msgsSrvSetStiffnessFrame_Response
  readValue = readRos2Franka_msgsSrvSetStiffnessFrame_Response
data Ros2Franka_msgsSrvSetTCPFrame_Request = Ros2Franka_msgsSrvSetTCPFrame_Request
  {
    -- | \@brief franka_msgs/srv/SetTCPFrame_Request.transformation: float64; exactly 16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsSrvSetTCPFrame_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsSrvSetTCPFrame_Request_transformation :: [Double]
  } deriving (Eq, Show)
defaultRos2Franka_msgsSrvSetTCPFrame_Request :: Ros2Franka_msgsSrvSetTCPFrame_Request
defaultRos2Franka_msgsSrvSetTCPFrame_Request = Ros2Franka_msgsSrvSetTCPFrame_Request (replicate 16 (0))
ros2Franka_msgsSrvSetTCPFrame_RequestCodecIdentity :: String
ros2Franka_msgsSrvSetTCPFrame_RequestCodecIdentity = "UWVMROS1_2ef445bfa494a6bc50ee3337695562255c06890216c30ba17df95e691871441f"
encodeRos2Franka_msgsSrvSetTCPFrame_Request :: Ros2Franka_msgsSrvSetTCPFrame_Request -> Either Word32 B.ByteString
encodeRos2Franka_msgsSrvSetTCPFrame_Request value = do
  if length (ros2Franka_msgsSrvSetTCPFrame_Request_transformation value) /= 16 then Left 22 else Right ()
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Franka_msgsSrvSetTCPFrame_Request_transformation value)
  W.bounded 128 [b0]
readRos2Franka_msgsSrvSetTCPFrame_Request :: W.Decoder Ros2Franka_msgsSrvSetTCPFrame_Request
readRos2Franka_msgsSrvSetTCPFrame_Request = do
  a0 <- replicateM 16 (W.float64)
  let value = Ros2Franka_msgsSrvSetTCPFrame_Request a0
  case encodeRos2Franka_msgsSrvSetTCPFrame_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_msgsSrvSetTCPFrame_Request :: B.ByteString -> Either Word32 Ros2Franka_msgsSrvSetTCPFrame_Request
decodeRos2Franka_msgsSrvSetTCPFrame_Request = W.runDecoder 128 readRos2Franka_msgsSrvSetTCPFrame_Request
instance Canonical Ros2Franka_msgsSrvSetTCPFrame_Request where
  maximumBytes _ = 128
  encodeValue = encodeRos2Franka_msgsSrvSetTCPFrame_Request
  readValue = readRos2Franka_msgsSrvSetTCPFrame_Request
data Ros2Franka_msgsSrvSetTCPFrame_Response = Ros2Franka_msgsSrvSetTCPFrame_Response
  {
    -- | \@brief franka_msgs/srv/SetTCPFrame_Response.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsSrvSetTCPFrame_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsSrvSetTCPFrame_Response_success :: Bool
  ,
    -- | \@brief franka_msgs/srv/SetTCPFrame_Response.error: string; each string is 0..256 bytes; strict UTF-8 with no
    -- | embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_msgsSrvSetTCPFrame_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_msgsSrvSetTCPFrame_Response_error :: T.Text
  } deriving (Eq, Show)
defaultRos2Franka_msgsSrvSetTCPFrame_Response :: Ros2Franka_msgsSrvSetTCPFrame_Response
defaultRos2Franka_msgsSrvSetTCPFrame_Response = Ros2Franka_msgsSrvSetTCPFrame_Response (False) (T.empty)
ros2Franka_msgsSrvSetTCPFrame_ResponseCodecIdentity :: String
ros2Franka_msgsSrvSetTCPFrame_ResponseCodecIdentity = "UWVMROS1_87e4f5556c292289fe17898a40f1f5dd6161e7cc87ca570c86e9f69080d1df38"
encodeRos2Franka_msgsSrvSetTCPFrame_Response :: Ros2Franka_msgsSrvSetTCPFrame_Response -> Either Word32 B.ByteString
encodeRos2Franka_msgsSrvSetTCPFrame_Response value = do
  b0 <- W.encodeBool (ros2Franka_msgsSrvSetTCPFrame_Response_success value)
  b1 <- W.encodeText 256 True (ros2Franka_msgsSrvSetTCPFrame_Response_error value)
  W.bounded 261 [b0, b1]
readRos2Franka_msgsSrvSetTCPFrame_Response :: W.Decoder Ros2Franka_msgsSrvSetTCPFrame_Response
readRos2Franka_msgsSrvSetTCPFrame_Response = do
  a0 <- W.boolean
  a1 <- W.text 256 True
  let value = Ros2Franka_msgsSrvSetTCPFrame_Response a0 a1
  case encodeRos2Franka_msgsSrvSetTCPFrame_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_msgsSrvSetTCPFrame_Response :: B.ByteString -> Either Word32 Ros2Franka_msgsSrvSetTCPFrame_Response
decodeRos2Franka_msgsSrvSetTCPFrame_Response = W.runDecoder 261 readRos2Franka_msgsSrvSetTCPFrame_Response
instance Canonical Ros2Franka_msgsSrvSetTCPFrame_Response where
  maximumBytes _ = 261
  encodeValue = encodeRos2Franka_msgsSrvSetTCPFrame_Response
  readValue = readRos2Franka_msgsSrvSetTCPFrame_Response
data Ros2Franka_spine_msgsActionMoveAbsolute_Goal = Ros2Franka_spine_msgsActionMoveAbsolute_Goal
  {
    -- | \@brief franka_spine_msgs/action/MoveAbsolute_Goal.position: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsActionMoveAbsolute_Goal; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsActionMoveAbsolute_Goal_position :: Double
  ,
    -- | \@brief franka_spine_msgs/action/MoveAbsolute_Goal.velocity: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsActionMoveAbsolute_Goal; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsActionMoveAbsolute_Goal_velocity :: Double
  ,
    -- | \@brief franka_spine_msgs/action/MoveAbsolute_Goal.acceleration: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsActionMoveAbsolute_Goal; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsActionMoveAbsolute_Goal_acceleration :: Double
  ,
    -- | \@brief franka_spine_msgs/action/MoveAbsolute_Goal.deceleration: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsActionMoveAbsolute_Goal; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsActionMoveAbsolute_Goal_deceleration :: Double
  } deriving (Eq, Show)
defaultRos2Franka_spine_msgsActionMoveAbsolute_Goal :: Ros2Franka_spine_msgsActionMoveAbsolute_Goal
defaultRos2Franka_spine_msgsActionMoveAbsolute_Goal = Ros2Franka_spine_msgsActionMoveAbsolute_Goal (0) (0) (0) (0)
ros2Franka_spine_msgsActionMoveAbsolute_GoalCodecIdentity :: String
ros2Franka_spine_msgsActionMoveAbsolute_GoalCodecIdentity =
        "UWVMROS1_a0c2f9037fd6730641b19b6da6ce1c6ca03bbd517fdd791c159effc93290cf13"
encodeRos2Franka_spine_msgsActionMoveAbsolute_Goal :: Ros2Franka_spine_msgsActionMoveAbsolute_Goal -> Either Word32 B.ByteString
encodeRos2Franka_spine_msgsActionMoveAbsolute_Goal value = do
  b0 <- W.encodeFloat64 (ros2Franka_spine_msgsActionMoveAbsolute_Goal_position value)
  b1 <- W.encodeFloat64 (ros2Franka_spine_msgsActionMoveAbsolute_Goal_velocity value)
  b2 <- W.encodeFloat64 (ros2Franka_spine_msgsActionMoveAbsolute_Goal_acceleration value)
  b3 <- W.encodeFloat64 (ros2Franka_spine_msgsActionMoveAbsolute_Goal_deceleration value)
  W.bounded 32 [b0, b1, b2, b3]
readRos2Franka_spine_msgsActionMoveAbsolute_Goal :: W.Decoder Ros2Franka_spine_msgsActionMoveAbsolute_Goal
readRos2Franka_spine_msgsActionMoveAbsolute_Goal = do
  a0 <- W.float64
  a1 <- W.float64
  a2 <- W.float64
  a3 <- W.float64
  let value = Ros2Franka_spine_msgsActionMoveAbsolute_Goal a0 a1 a2 a3
  case encodeRos2Franka_spine_msgsActionMoveAbsolute_Goal value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_spine_msgsActionMoveAbsolute_Goal :: B.ByteString -> Either Word32 Ros2Franka_spine_msgsActionMoveAbsolute_Goal
decodeRos2Franka_spine_msgsActionMoveAbsolute_Goal = W.runDecoder 32 readRos2Franka_spine_msgsActionMoveAbsolute_Goal
instance Canonical Ros2Franka_spine_msgsActionMoveAbsolute_Goal where
  maximumBytes _ = 32
  encodeValue = encodeRos2Franka_spine_msgsActionMoveAbsolute_Goal
  readValue = readRos2Franka_spine_msgsActionMoveAbsolute_Goal
data Ros2Franka_spine_msgsActionMoveAbsolute_Result = Ros2Franka_spine_msgsActionMoveAbsolute_Result
  {
    -- | \@brief franka_spine_msgs/action/MoveAbsolute_Result.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsActionMoveAbsolute_Result; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsActionMoveAbsolute_Result_success :: Bool
  ,
    -- | \@brief franka_spine_msgs/action/MoveAbsolute_Result.stop_by: string; each string is 0..256 bytes; strict UTF-8
    -- | with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsActionMoveAbsolute_Result; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsActionMoveAbsolute_Result_stop_by :: T.Text
  ,
    -- | \@brief franka_spine_msgs/action/MoveAbsolute_Result.error: string; each string is 0..256 bytes; strict UTF-8
    -- | with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsActionMoveAbsolute_Result; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsActionMoveAbsolute_Result_error :: T.Text
  } deriving (Eq, Show)
defaultRos2Franka_spine_msgsActionMoveAbsolute_Result :: Ros2Franka_spine_msgsActionMoveAbsolute_Result
defaultRos2Franka_spine_msgsActionMoveAbsolute_Result = Ros2Franka_spine_msgsActionMoveAbsolute_Result (False) (T.empty) (T.empty)
ros2Franka_spine_msgsActionMoveAbsolute_ResultCodecIdentity :: String
ros2Franka_spine_msgsActionMoveAbsolute_ResultCodecIdentity =
        "UWVMROS1_86b5c823e6e6604595462a76cd259daef420b2dff169f6dbe00f742f079155d5"
encodeRos2Franka_spine_msgsActionMoveAbsolute_Result :: Ros2Franka_spine_msgsActionMoveAbsolute_Result -> Either Word32 B.ByteString
encodeRos2Franka_spine_msgsActionMoveAbsolute_Result value = do
  b0 <- W.encodeBool (ros2Franka_spine_msgsActionMoveAbsolute_Result_success value)
  b1 <- W.encodeText 256 True (ros2Franka_spine_msgsActionMoveAbsolute_Result_stop_by value)
  b2 <- W.encodeText 256 True (ros2Franka_spine_msgsActionMoveAbsolute_Result_error value)
  W.bounded 521 [b0, b1, b2]
readRos2Franka_spine_msgsActionMoveAbsolute_Result :: W.Decoder Ros2Franka_spine_msgsActionMoveAbsolute_Result
readRos2Franka_spine_msgsActionMoveAbsolute_Result = do
  a0 <- W.boolean
  a1 <- W.text 256 True
  a2 <- W.text 256 True
  let value = Ros2Franka_spine_msgsActionMoveAbsolute_Result a0 a1 a2
  case encodeRos2Franka_spine_msgsActionMoveAbsolute_Result value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_spine_msgsActionMoveAbsolute_Result :: B.ByteString -> Either Word32 Ros2Franka_spine_msgsActionMoveAbsolute_Result
decodeRos2Franka_spine_msgsActionMoveAbsolute_Result = W.runDecoder 521 readRos2Franka_spine_msgsActionMoveAbsolute_Result
instance Canonical Ros2Franka_spine_msgsActionMoveAbsolute_Result where
  maximumBytes _ = 521
  encodeValue = encodeRos2Franka_spine_msgsActionMoveAbsolute_Result
  readValue = readRos2Franka_spine_msgsActionMoveAbsolute_Result
data Ros2Franka_spine_msgsActionMoveAbsolute_Feedback = Ros2Franka_spine_msgsActionMoveAbsolute_Feedback
  {
    -- | \@brief franka_spine_msgs/action/MoveAbsolute_Feedback.current_position: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsActionMoveAbsolute_Feedback; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsActionMoveAbsolute_Feedback_current_position :: Double
  } deriving (Eq, Show)
defaultRos2Franka_spine_msgsActionMoveAbsolute_Feedback :: Ros2Franka_spine_msgsActionMoveAbsolute_Feedback
defaultRos2Franka_spine_msgsActionMoveAbsolute_Feedback = Ros2Franka_spine_msgsActionMoveAbsolute_Feedback (0)
ros2Franka_spine_msgsActionMoveAbsolute_FeedbackCodecIdentity :: String
ros2Franka_spine_msgsActionMoveAbsolute_FeedbackCodecIdentity =
        "UWVMROS1_cf2f760313ab8c6cc01dd79271619926320021746451f376e56d18f63ffad929"
encodeRos2Franka_spine_msgsActionMoveAbsolute_Feedback :: Ros2Franka_spine_msgsActionMoveAbsolute_Feedback -> Either Word32
        B.ByteString
encodeRos2Franka_spine_msgsActionMoveAbsolute_Feedback value = do
  b0 <- W.encodeFloat64 (ros2Franka_spine_msgsActionMoveAbsolute_Feedback_current_position value)
  W.bounded 8 [b0]
readRos2Franka_spine_msgsActionMoveAbsolute_Feedback :: W.Decoder Ros2Franka_spine_msgsActionMoveAbsolute_Feedback
readRos2Franka_spine_msgsActionMoveAbsolute_Feedback = do
  a0 <- W.float64
  let value = Ros2Franka_spine_msgsActionMoveAbsolute_Feedback a0
  case encodeRos2Franka_spine_msgsActionMoveAbsolute_Feedback value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_spine_msgsActionMoveAbsolute_Feedback :: B.ByteString -> Either Word32
        Ros2Franka_spine_msgsActionMoveAbsolute_Feedback
decodeRos2Franka_spine_msgsActionMoveAbsolute_Feedback = W.runDecoder 8 readRos2Franka_spine_msgsActionMoveAbsolute_Feedback
instance Canonical Ros2Franka_spine_msgsActionMoveAbsolute_Feedback where
  maximumBytes _ = 8
  encodeValue = encodeRos2Franka_spine_msgsActionMoveAbsolute_Feedback
  readValue = readRos2Franka_spine_msgsActionMoveAbsolute_Feedback
data Ros2Franka_spine_msgsMsgUserLimits = Ros2Franka_spine_msgsMsgUserLimits
  {
    -- | \@brief franka_spine_msgs/msg/UserLimits.lower_limit: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsMsgUserLimits; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsMsgUserLimits_lower_limit :: Double
  ,
    -- | \@brief franka_spine_msgs/msg/UserLimits.upper_limit: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsMsgUserLimits; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsMsgUserLimits_upper_limit :: Double
  } deriving (Eq, Show)
defaultRos2Franka_spine_msgsMsgUserLimits :: Ros2Franka_spine_msgsMsgUserLimits
defaultRos2Franka_spine_msgsMsgUserLimits = Ros2Franka_spine_msgsMsgUserLimits (0) (0)
ros2Franka_spine_msgsMsgUserLimitsCodecIdentity :: String
ros2Franka_spine_msgsMsgUserLimitsCodecIdentity = "UWVMROS1_20256e37f0ae710b5cb9ab9438b5ff8144ce2ab6fc606c5335d0f5de5384e368"
encodeRos2Franka_spine_msgsMsgUserLimits :: Ros2Franka_spine_msgsMsgUserLimits -> Either Word32 B.ByteString
encodeRos2Franka_spine_msgsMsgUserLimits value = do
  b0 <- W.encodeFloat64 (ros2Franka_spine_msgsMsgUserLimits_lower_limit value)
  b1 <- W.encodeFloat64 (ros2Franka_spine_msgsMsgUserLimits_upper_limit value)
  W.bounded 16 [b0, b1]
readRos2Franka_spine_msgsMsgUserLimits :: W.Decoder Ros2Franka_spine_msgsMsgUserLimits
readRos2Franka_spine_msgsMsgUserLimits = do
  a0 <- W.float64
  a1 <- W.float64
  let value = Ros2Franka_spine_msgsMsgUserLimits a0 a1
  case encodeRos2Franka_spine_msgsMsgUserLimits value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_spine_msgsMsgUserLimits :: B.ByteString -> Either Word32 Ros2Franka_spine_msgsMsgUserLimits
decodeRos2Franka_spine_msgsMsgUserLimits = W.runDecoder 16 readRos2Franka_spine_msgsMsgUserLimits
instance Canonical Ros2Franka_spine_msgsMsgUserLimits where
  maximumBytes _ = 16
  encodeValue = encodeRos2Franka_spine_msgsMsgUserLimits
  readValue = readRos2Franka_spine_msgsMsgUserLimits
data Ros2Franka_spine_msgsMsgSpineParameters = Ros2Franka_spine_msgsMsgSpineParameters
  {
    -- | \@brief franka_spine_msgs/msg/SpineParameters.user_limits: franka_spine_msgs/msg/UserLimits.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsMsgSpineParameters; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsMsgSpineParameters_user_limits :: Ros2Franka_spine_msgsMsgUserLimits
  } deriving (Eq, Show)
defaultRos2Franka_spine_msgsMsgSpineParameters :: Ros2Franka_spine_msgsMsgSpineParameters
defaultRos2Franka_spine_msgsMsgSpineParameters = Ros2Franka_spine_msgsMsgSpineParameters (defaultRos2Franka_spine_msgsMsgUserLimits)
ros2Franka_spine_msgsMsgSpineParametersCodecIdentity :: String
ros2Franka_spine_msgsMsgSpineParametersCodecIdentity = "UWVMROS1_4d4c45cfccf278c99a189e92d438d0b11b2b693012cb0f76b65b6822eb816223"
encodeRos2Franka_spine_msgsMsgSpineParameters :: Ros2Franka_spine_msgsMsgSpineParameters -> Either Word32 B.ByteString
encodeRos2Franka_spine_msgsMsgSpineParameters value = do
  b0 <- encodeRos2Franka_spine_msgsMsgUserLimits (ros2Franka_spine_msgsMsgSpineParameters_user_limits value)
  W.bounded 16 [b0]
readRos2Franka_spine_msgsMsgSpineParameters :: W.Decoder Ros2Franka_spine_msgsMsgSpineParameters
readRos2Franka_spine_msgsMsgSpineParameters = do
  a0 <- readRos2Franka_spine_msgsMsgUserLimits
  let value = Ros2Franka_spine_msgsMsgSpineParameters a0
  case encodeRos2Franka_spine_msgsMsgSpineParameters value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_spine_msgsMsgSpineParameters :: B.ByteString -> Either Word32 Ros2Franka_spine_msgsMsgSpineParameters
decodeRos2Franka_spine_msgsMsgSpineParameters = W.runDecoder 16 readRos2Franka_spine_msgsMsgSpineParameters
instance Canonical Ros2Franka_spine_msgsMsgSpineParameters where
  maximumBytes _ = 16
  encodeValue = encodeRos2Franka_spine_msgsMsgSpineParameters
  readValue = readRos2Franka_spine_msgsMsgSpineParameters
data Ros2Franka_spine_msgsMsgSpinePosition = Ros2Franka_spine_msgsMsgSpinePosition
  {
    -- | \@brief franka_spine_msgs/msg/SpinePosition.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsMsgSpinePosition; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsMsgSpinePosition_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief franka_spine_msgs/msg/SpinePosition.position: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsMsgSpinePosition; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsMsgSpinePosition_position :: Double
  ,
    -- | \@brief franka_spine_msgs/msg/SpinePosition.valid: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsMsgSpinePosition; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsMsgSpinePosition_valid :: Bool
  } deriving (Eq, Show)
defaultRos2Franka_spine_msgsMsgSpinePosition :: Ros2Franka_spine_msgsMsgSpinePosition
defaultRos2Franka_spine_msgsMsgSpinePosition = Ros2Franka_spine_msgsMsgSpinePosition (defaultRos2Std_msgsMsgHeader) (0) (False)
ros2Franka_spine_msgsMsgSpinePositionCodecIdentity :: String
ros2Franka_spine_msgsMsgSpinePositionCodecIdentity = "UWVMROS1_71be15c40f39074dfdbe79a3587847ae512c5a3c8df23cc9415d5bfe59d05775"
encodeRos2Franka_spine_msgsMsgSpinePosition :: Ros2Franka_spine_msgsMsgSpinePosition -> Either Word32 B.ByteString
encodeRos2Franka_spine_msgsMsgSpinePosition value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Franka_spine_msgsMsgSpinePosition_header value)
  b1 <- W.encodeFloat64 (ros2Franka_spine_msgsMsgSpinePosition_position value)
  b2 <- W.encodeBool (ros2Franka_spine_msgsMsgSpinePosition_valid value)
  W.bounded 149 [b0, b1, b2]
readRos2Franka_spine_msgsMsgSpinePosition :: W.Decoder Ros2Franka_spine_msgsMsgSpinePosition
readRos2Franka_spine_msgsMsgSpinePosition = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- W.float64
  a2 <- W.boolean
  let value = Ros2Franka_spine_msgsMsgSpinePosition a0 a1 a2
  case encodeRos2Franka_spine_msgsMsgSpinePosition value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_spine_msgsMsgSpinePosition :: B.ByteString -> Either Word32 Ros2Franka_spine_msgsMsgSpinePosition
decodeRos2Franka_spine_msgsMsgSpinePosition = W.runDecoder 149 readRos2Franka_spine_msgsMsgSpinePosition
instance Canonical Ros2Franka_spine_msgsMsgSpinePosition where
  maximumBytes _ = 149
  encodeValue = encodeRos2Franka_spine_msgsMsgSpinePosition
  readValue = readRos2Franka_spine_msgsMsgSpinePosition
data Ros2Franka_spine_msgsMsgSpineState = Ros2Franka_spine_msgsMsgSpineState
  {
    -- | \@brief franka_spine_msgs/msg/SpineState.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsMsgSpineState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsMsgSpineState_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief franka_spine_msgs/msg/SpineState.state: string; each string is 0..256 bytes; strict UTF-8 with no
    -- | embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsMsgSpineState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsMsgSpineState_state :: T.Text
  ,
    -- | \@brief franka_spine_msgs/msg/SpineState.error_code: string; each string is 0..256 bytes; strict UTF-8 with no
    -- | embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsMsgSpineState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsMsgSpineState_error_code :: T.Text
  ,
    -- | \@brief franka_spine_msgs/msg/SpineState.error_description: string; each string is 0..256 bytes; strict UTF-8
    -- | with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsMsgSpineState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsMsgSpineState_error_description :: T.Text
  ,
    -- | \@brief franka_spine_msgs/msg/SpineState.valid: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsMsgSpineState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsMsgSpineState_valid :: Bool
  } deriving (Eq, Show)
defaultRos2Franka_spine_msgsMsgSpineState :: Ros2Franka_spine_msgsMsgSpineState
defaultRos2Franka_spine_msgsMsgSpineState = Ros2Franka_spine_msgsMsgSpineState (defaultRos2Std_msgsMsgHeader) (T.empty) (T.empty)
        (T.empty) (False)
ros2Franka_spine_msgsMsgSpineStateCodecIdentity :: String
ros2Franka_spine_msgsMsgSpineStateCodecIdentity = "UWVMROS1_ad0b5dc5d79956da854582765c147d3d33edab569c4829e69cc7990edfb89441"
encodeRos2Franka_spine_msgsMsgSpineState :: Ros2Franka_spine_msgsMsgSpineState -> Either Word32 B.ByteString
encodeRos2Franka_spine_msgsMsgSpineState value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Franka_spine_msgsMsgSpineState_header value)
  b1 <- W.encodeText 256 True (ros2Franka_spine_msgsMsgSpineState_state value)
  b2 <- W.encodeText 256 True (ros2Franka_spine_msgsMsgSpineState_error_code value)
  b3 <- W.encodeText 256 True (ros2Franka_spine_msgsMsgSpineState_error_description value)
  b4 <- W.encodeBool (ros2Franka_spine_msgsMsgSpineState_valid value)
  W.bounded 921 [b0, b1, b2, b3, b4]
readRos2Franka_spine_msgsMsgSpineState :: W.Decoder Ros2Franka_spine_msgsMsgSpineState
readRos2Franka_spine_msgsMsgSpineState = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- W.text 256 True
  a2 <- W.text 256 True
  a3 <- W.text 256 True
  a4 <- W.boolean
  let value = Ros2Franka_spine_msgsMsgSpineState a0 a1 a2 a3 a4
  case encodeRos2Franka_spine_msgsMsgSpineState value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_spine_msgsMsgSpineState :: B.ByteString -> Either Word32 Ros2Franka_spine_msgsMsgSpineState
decodeRos2Franka_spine_msgsMsgSpineState = W.runDecoder 921 readRos2Franka_spine_msgsMsgSpineState
instance Canonical Ros2Franka_spine_msgsMsgSpineState where
  maximumBytes _ = 921
  encodeValue = encodeRos2Franka_spine_msgsMsgSpineState
  readValue = readRos2Franka_spine_msgsMsgSpineState
data Ros2Franka_spine_msgsSrvFaultReset_Request = Ros2Franka_spine_msgsSrvFaultReset_Request deriving (Eq, Show)
defaultRos2Franka_spine_msgsSrvFaultReset_Request :: Ros2Franka_spine_msgsSrvFaultReset_Request
defaultRos2Franka_spine_msgsSrvFaultReset_Request = Ros2Franka_spine_msgsSrvFaultReset_Request 
ros2Franka_spine_msgsSrvFaultReset_RequestCodecIdentity :: String
ros2Franka_spine_msgsSrvFaultReset_RequestCodecIdentity =
        "UWVMROS1_0f836229e8e8a1713b9e9a8d7f0f43677ad93380e1f7350ff1597d25067b7f33"
encodeRos2Franka_spine_msgsSrvFaultReset_Request :: Ros2Franka_spine_msgsSrvFaultReset_Request -> Either Word32 B.ByteString
encodeRos2Franka_spine_msgsSrvFaultReset_Request value = do
  W.bounded 0 []
readRos2Franka_spine_msgsSrvFaultReset_Request :: W.Decoder Ros2Franka_spine_msgsSrvFaultReset_Request
readRos2Franka_spine_msgsSrvFaultReset_Request = do
  let value = Ros2Franka_spine_msgsSrvFaultReset_Request 
  case encodeRos2Franka_spine_msgsSrvFaultReset_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_spine_msgsSrvFaultReset_Request :: B.ByteString -> Either Word32 Ros2Franka_spine_msgsSrvFaultReset_Request
decodeRos2Franka_spine_msgsSrvFaultReset_Request = W.runDecoder 0 readRos2Franka_spine_msgsSrvFaultReset_Request
instance Canonical Ros2Franka_spine_msgsSrvFaultReset_Request where
  maximumBytes _ = 0
  encodeValue = encodeRos2Franka_spine_msgsSrvFaultReset_Request
  readValue = readRos2Franka_spine_msgsSrvFaultReset_Request
data Ros2Franka_spine_msgsSrvFaultReset_Response = Ros2Franka_spine_msgsSrvFaultReset_Response
  {
    -- | \@brief franka_spine_msgs/srv/FaultReset_Response.state: string; each string is 0..256 bytes; strict UTF-8 with
    -- | no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsSrvFaultReset_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsSrvFaultReset_Response_state :: T.Text
  ,
    -- | \@brief franka_spine_msgs/srv/FaultReset_Response.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsSrvFaultReset_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsSrvFaultReset_Response_success :: Bool
  ,
    -- | \@brief franka_spine_msgs/srv/FaultReset_Response.message: string; each string is 0..256 bytes; strict UTF-8
    -- | with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsSrvFaultReset_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsSrvFaultReset_Response_message :: T.Text
  } deriving (Eq, Show)
defaultRos2Franka_spine_msgsSrvFaultReset_Response :: Ros2Franka_spine_msgsSrvFaultReset_Response
defaultRos2Franka_spine_msgsSrvFaultReset_Response = Ros2Franka_spine_msgsSrvFaultReset_Response (T.empty) (False) (T.empty)
ros2Franka_spine_msgsSrvFaultReset_ResponseCodecIdentity :: String
ros2Franka_spine_msgsSrvFaultReset_ResponseCodecIdentity =
        "UWVMROS1_1ebeded0dbe4a4197a52de3fa43dc57fa372bd4e6ef5e2ded2558ccbf691410c"
encodeRos2Franka_spine_msgsSrvFaultReset_Response :: Ros2Franka_spine_msgsSrvFaultReset_Response -> Either Word32 B.ByteString
encodeRos2Franka_spine_msgsSrvFaultReset_Response value = do
  b0 <- W.encodeText 256 True (ros2Franka_spine_msgsSrvFaultReset_Response_state value)
  b1 <- W.encodeBool (ros2Franka_spine_msgsSrvFaultReset_Response_success value)
  b2 <- W.encodeText 256 True (ros2Franka_spine_msgsSrvFaultReset_Response_message value)
  W.bounded 521 [b0, b1, b2]
readRos2Franka_spine_msgsSrvFaultReset_Response :: W.Decoder Ros2Franka_spine_msgsSrvFaultReset_Response
readRos2Franka_spine_msgsSrvFaultReset_Response = do
  a0 <- W.text 256 True
  a1 <- W.boolean
  a2 <- W.text 256 True
  let value = Ros2Franka_spine_msgsSrvFaultReset_Response a0 a1 a2
  case encodeRos2Franka_spine_msgsSrvFaultReset_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_spine_msgsSrvFaultReset_Response :: B.ByteString -> Either Word32 Ros2Franka_spine_msgsSrvFaultReset_Response
decodeRos2Franka_spine_msgsSrvFaultReset_Response = W.runDecoder 521 readRos2Franka_spine_msgsSrvFaultReset_Response
instance Canonical Ros2Franka_spine_msgsSrvFaultReset_Response where
  maximumBytes _ = 521
  encodeValue = encodeRos2Franka_spine_msgsSrvFaultReset_Response
  readValue = readRos2Franka_spine_msgsSrvFaultReset_Response
data Ros2Franka_spine_msgsSrvGetParameters_Request = Ros2Franka_spine_msgsSrvGetParameters_Request deriving (Eq, Show)
defaultRos2Franka_spine_msgsSrvGetParameters_Request :: Ros2Franka_spine_msgsSrvGetParameters_Request
defaultRos2Franka_spine_msgsSrvGetParameters_Request = Ros2Franka_spine_msgsSrvGetParameters_Request 
ros2Franka_spine_msgsSrvGetParameters_RequestCodecIdentity :: String
ros2Franka_spine_msgsSrvGetParameters_RequestCodecIdentity =
        "UWVMROS1_80ef5d2ef6ff2df9d14f29417d1928429315c0b7be9ec59513b9b3943a970b14"
encodeRos2Franka_spine_msgsSrvGetParameters_Request :: Ros2Franka_spine_msgsSrvGetParameters_Request -> Either Word32 B.ByteString
encodeRos2Franka_spine_msgsSrvGetParameters_Request value = do
  W.bounded 0 []
readRos2Franka_spine_msgsSrvGetParameters_Request :: W.Decoder Ros2Franka_spine_msgsSrvGetParameters_Request
readRos2Franka_spine_msgsSrvGetParameters_Request = do
  let value = Ros2Franka_spine_msgsSrvGetParameters_Request 
  case encodeRos2Franka_spine_msgsSrvGetParameters_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_spine_msgsSrvGetParameters_Request :: B.ByteString -> Either Word32 Ros2Franka_spine_msgsSrvGetParameters_Request
decodeRos2Franka_spine_msgsSrvGetParameters_Request = W.runDecoder 0 readRos2Franka_spine_msgsSrvGetParameters_Request
instance Canonical Ros2Franka_spine_msgsSrvGetParameters_Request where
  maximumBytes _ = 0
  encodeValue = encodeRos2Franka_spine_msgsSrvGetParameters_Request
  readValue = readRos2Franka_spine_msgsSrvGetParameters_Request
data Ros2Franka_spine_msgsSrvGetParameters_Response = Ros2Franka_spine_msgsSrvGetParameters_Response
  {
    -- | \@brief franka_spine_msgs/srv/GetParameters_Response.parameters: franka_spine_msgs/msg/SpineParameters.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsSrvGetParameters_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsSrvGetParameters_Response_parameters :: Ros2Franka_spine_msgsMsgSpineParameters
  ,
    -- | \@brief franka_spine_msgs/srv/GetParameters_Response.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsSrvGetParameters_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsSrvGetParameters_Response_success :: Bool
  ,
    -- | \@brief franka_spine_msgs/srv/GetParameters_Response.message: string; each string is 0..256 bytes; strict UTF-8
    -- | with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsSrvGetParameters_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsSrvGetParameters_Response_message :: T.Text
  } deriving (Eq, Show)
defaultRos2Franka_spine_msgsSrvGetParameters_Response :: Ros2Franka_spine_msgsSrvGetParameters_Response
defaultRos2Franka_spine_msgsSrvGetParameters_Response = Ros2Franka_spine_msgsSrvGetParameters_Response
        (defaultRos2Franka_spine_msgsMsgSpineParameters) (False) (T.empty)
ros2Franka_spine_msgsSrvGetParameters_ResponseCodecIdentity :: String
ros2Franka_spine_msgsSrvGetParameters_ResponseCodecIdentity =
        "UWVMROS1_8e648792534d7f4996179f31d353d2594cf63031edef4451fd20a3838dc896ed"
encodeRos2Franka_spine_msgsSrvGetParameters_Response :: Ros2Franka_spine_msgsSrvGetParameters_Response -> Either Word32 B.ByteString
encodeRos2Franka_spine_msgsSrvGetParameters_Response value = do
  b0 <- encodeRos2Franka_spine_msgsMsgSpineParameters (ros2Franka_spine_msgsSrvGetParameters_Response_parameters value)
  b1 <- W.encodeBool (ros2Franka_spine_msgsSrvGetParameters_Response_success value)
  b2 <- W.encodeText 256 True (ros2Franka_spine_msgsSrvGetParameters_Response_message value)
  W.bounded 277 [b0, b1, b2]
readRos2Franka_spine_msgsSrvGetParameters_Response :: W.Decoder Ros2Franka_spine_msgsSrvGetParameters_Response
readRos2Franka_spine_msgsSrvGetParameters_Response = do
  a0 <- readRos2Franka_spine_msgsMsgSpineParameters
  a1 <- W.boolean
  a2 <- W.text 256 True
  let value = Ros2Franka_spine_msgsSrvGetParameters_Response a0 a1 a2
  case encodeRos2Franka_spine_msgsSrvGetParameters_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_spine_msgsSrvGetParameters_Response :: B.ByteString -> Either Word32 Ros2Franka_spine_msgsSrvGetParameters_Response
decodeRos2Franka_spine_msgsSrvGetParameters_Response = W.runDecoder 277 readRos2Franka_spine_msgsSrvGetParameters_Response
instance Canonical Ros2Franka_spine_msgsSrvGetParameters_Response where
  maximumBytes _ = 277
  encodeValue = encodeRos2Franka_spine_msgsSrvGetParameters_Response
  readValue = readRos2Franka_spine_msgsSrvGetParameters_Response
data Ros2Franka_spine_msgsSrvGetPosition_Request = Ros2Franka_spine_msgsSrvGetPosition_Request deriving (Eq, Show)
defaultRos2Franka_spine_msgsSrvGetPosition_Request :: Ros2Franka_spine_msgsSrvGetPosition_Request
defaultRos2Franka_spine_msgsSrvGetPosition_Request = Ros2Franka_spine_msgsSrvGetPosition_Request 
ros2Franka_spine_msgsSrvGetPosition_RequestCodecIdentity :: String
ros2Franka_spine_msgsSrvGetPosition_RequestCodecIdentity =
        "UWVMROS1_66b05d1f08331161cafed301b3ab95a60dbb16aeb1a930ee780db163cb37c6c2"
encodeRos2Franka_spine_msgsSrvGetPosition_Request :: Ros2Franka_spine_msgsSrvGetPosition_Request -> Either Word32 B.ByteString
encodeRos2Franka_spine_msgsSrvGetPosition_Request value = do
  W.bounded 0 []
readRos2Franka_spine_msgsSrvGetPosition_Request :: W.Decoder Ros2Franka_spine_msgsSrvGetPosition_Request
readRos2Franka_spine_msgsSrvGetPosition_Request = do
  let value = Ros2Franka_spine_msgsSrvGetPosition_Request 
  case encodeRos2Franka_spine_msgsSrvGetPosition_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_spine_msgsSrvGetPosition_Request :: B.ByteString -> Either Word32 Ros2Franka_spine_msgsSrvGetPosition_Request
decodeRos2Franka_spine_msgsSrvGetPosition_Request = W.runDecoder 0 readRos2Franka_spine_msgsSrvGetPosition_Request
instance Canonical Ros2Franka_spine_msgsSrvGetPosition_Request where
  maximumBytes _ = 0
  encodeValue = encodeRos2Franka_spine_msgsSrvGetPosition_Request
  readValue = readRos2Franka_spine_msgsSrvGetPosition_Request
data Ros2Franka_spine_msgsSrvGetPosition_Response = Ros2Franka_spine_msgsSrvGetPosition_Response
  {
    -- | \@brief franka_spine_msgs/srv/GetPosition_Response.position: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsSrvGetPosition_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsSrvGetPosition_Response_position :: Double
  ,
    -- | \@brief franka_spine_msgs/srv/GetPosition_Response.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsSrvGetPosition_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsSrvGetPosition_Response_success :: Bool
  } deriving (Eq, Show)
defaultRos2Franka_spine_msgsSrvGetPosition_Response :: Ros2Franka_spine_msgsSrvGetPosition_Response
defaultRos2Franka_spine_msgsSrvGetPosition_Response = Ros2Franka_spine_msgsSrvGetPosition_Response (0) (False)
ros2Franka_spine_msgsSrvGetPosition_ResponseCodecIdentity :: String
ros2Franka_spine_msgsSrvGetPosition_ResponseCodecIdentity =
        "UWVMROS1_18d9af57cc9f82c3c03d01e850da254e9431820b8291f03dafd2e8f74e849ab8"
encodeRos2Franka_spine_msgsSrvGetPosition_Response :: Ros2Franka_spine_msgsSrvGetPosition_Response -> Either Word32 B.ByteString
encodeRos2Franka_spine_msgsSrvGetPosition_Response value = do
  b0 <- W.encodeFloat64 (ros2Franka_spine_msgsSrvGetPosition_Response_position value)
  b1 <- W.encodeBool (ros2Franka_spine_msgsSrvGetPosition_Response_success value)
  W.bounded 9 [b0, b1]
readRos2Franka_spine_msgsSrvGetPosition_Response :: W.Decoder Ros2Franka_spine_msgsSrvGetPosition_Response
readRos2Franka_spine_msgsSrvGetPosition_Response = do
  a0 <- W.float64
  a1 <- W.boolean
  let value = Ros2Franka_spine_msgsSrvGetPosition_Response a0 a1
  case encodeRos2Franka_spine_msgsSrvGetPosition_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_spine_msgsSrvGetPosition_Response :: B.ByteString -> Either Word32 Ros2Franka_spine_msgsSrvGetPosition_Response
decodeRos2Franka_spine_msgsSrvGetPosition_Response = W.runDecoder 9 readRos2Franka_spine_msgsSrvGetPosition_Response
instance Canonical Ros2Franka_spine_msgsSrvGetPosition_Response where
  maximumBytes _ = 9
  encodeValue = encodeRos2Franka_spine_msgsSrvGetPosition_Response
  readValue = readRos2Franka_spine_msgsSrvGetPosition_Response
data Ros2Franka_spine_msgsSrvGetSpineState_Request = Ros2Franka_spine_msgsSrvGetSpineState_Request deriving (Eq, Show)
defaultRos2Franka_spine_msgsSrvGetSpineState_Request :: Ros2Franka_spine_msgsSrvGetSpineState_Request
defaultRos2Franka_spine_msgsSrvGetSpineState_Request = Ros2Franka_spine_msgsSrvGetSpineState_Request 
ros2Franka_spine_msgsSrvGetSpineState_RequestCodecIdentity :: String
ros2Franka_spine_msgsSrvGetSpineState_RequestCodecIdentity =
        "UWVMROS1_c4c456174d7b6647d09d986d37c041b942418941a5e01c447486727e919b8a67"
encodeRos2Franka_spine_msgsSrvGetSpineState_Request :: Ros2Franka_spine_msgsSrvGetSpineState_Request -> Either Word32 B.ByteString
encodeRos2Franka_spine_msgsSrvGetSpineState_Request value = do
  W.bounded 0 []
readRos2Franka_spine_msgsSrvGetSpineState_Request :: W.Decoder Ros2Franka_spine_msgsSrvGetSpineState_Request
readRos2Franka_spine_msgsSrvGetSpineState_Request = do
  let value = Ros2Franka_spine_msgsSrvGetSpineState_Request 
  case encodeRos2Franka_spine_msgsSrvGetSpineState_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_spine_msgsSrvGetSpineState_Request :: B.ByteString -> Either Word32 Ros2Franka_spine_msgsSrvGetSpineState_Request
decodeRos2Franka_spine_msgsSrvGetSpineState_Request = W.runDecoder 0 readRos2Franka_spine_msgsSrvGetSpineState_Request
instance Canonical Ros2Franka_spine_msgsSrvGetSpineState_Request where
  maximumBytes _ = 0
  encodeValue = encodeRos2Franka_spine_msgsSrvGetSpineState_Request
  readValue = readRos2Franka_spine_msgsSrvGetSpineState_Request
data Ros2Franka_spine_msgsSrvGetSpineState_Response = Ros2Franka_spine_msgsSrvGetSpineState_Response
  {
    -- | \@brief franka_spine_msgs/srv/GetSpineState_Response.state: string; each string is 0..256 bytes; strict UTF-8
    -- | with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsSrvGetSpineState_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsSrvGetSpineState_Response_state :: T.Text
  ,
    -- | \@brief franka_spine_msgs/srv/GetSpineState_Response.error_code: string; each string is 0..256 bytes; strict
    -- | UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsSrvGetSpineState_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsSrvGetSpineState_Response_error_code :: T.Text
  ,
    -- | \@brief franka_spine_msgs/srv/GetSpineState_Response.error_description: string; each string is 0..256 bytes;
    -- | strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsSrvGetSpineState_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsSrvGetSpineState_Response_error_description :: T.Text
  ,
    -- | \@brief franka_spine_msgs/srv/GetSpineState_Response.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsSrvGetSpineState_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsSrvGetSpineState_Response_success :: Bool
  } deriving (Eq, Show)
defaultRos2Franka_spine_msgsSrvGetSpineState_Response :: Ros2Franka_spine_msgsSrvGetSpineState_Response
defaultRos2Franka_spine_msgsSrvGetSpineState_Response = Ros2Franka_spine_msgsSrvGetSpineState_Response (T.empty) (T.empty) (T.empty)
        (False)
ros2Franka_spine_msgsSrvGetSpineState_ResponseCodecIdentity :: String
ros2Franka_spine_msgsSrvGetSpineState_ResponseCodecIdentity =
        "UWVMROS1_297d70e2c5c24dcea4bdf8c5f9e5c8c32256e8f35f1900d8afd914ab2acfdcd1"
encodeRos2Franka_spine_msgsSrvGetSpineState_Response :: Ros2Franka_spine_msgsSrvGetSpineState_Response -> Either Word32 B.ByteString
encodeRos2Franka_spine_msgsSrvGetSpineState_Response value = do
  b0 <- W.encodeText 256 True (ros2Franka_spine_msgsSrvGetSpineState_Response_state value)
  b1 <- W.encodeText 256 True (ros2Franka_spine_msgsSrvGetSpineState_Response_error_code value)
  b2 <- W.encodeText 256 True (ros2Franka_spine_msgsSrvGetSpineState_Response_error_description value)
  b3 <- W.encodeBool (ros2Franka_spine_msgsSrvGetSpineState_Response_success value)
  W.bounded 781 [b0, b1, b2, b3]
readRos2Franka_spine_msgsSrvGetSpineState_Response :: W.Decoder Ros2Franka_spine_msgsSrvGetSpineState_Response
readRos2Franka_spine_msgsSrvGetSpineState_Response = do
  a0 <- W.text 256 True
  a1 <- W.text 256 True
  a2 <- W.text 256 True
  a3 <- W.boolean
  let value = Ros2Franka_spine_msgsSrvGetSpineState_Response a0 a1 a2 a3
  case encodeRos2Franka_spine_msgsSrvGetSpineState_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_spine_msgsSrvGetSpineState_Response :: B.ByteString -> Either Word32 Ros2Franka_spine_msgsSrvGetSpineState_Response
decodeRos2Franka_spine_msgsSrvGetSpineState_Response = W.runDecoder 781 readRos2Franka_spine_msgsSrvGetSpineState_Response
instance Canonical Ros2Franka_spine_msgsSrvGetSpineState_Response where
  maximumBytes _ = 781
  encodeValue = encodeRos2Franka_spine_msgsSrvGetSpineState_Response
  readValue = readRos2Franka_spine_msgsSrvGetSpineState_Response
data Ros2Franka_spine_msgsSrvHalt_Request = Ros2Franka_spine_msgsSrvHalt_Request deriving (Eq, Show)
defaultRos2Franka_spine_msgsSrvHalt_Request :: Ros2Franka_spine_msgsSrvHalt_Request
defaultRos2Franka_spine_msgsSrvHalt_Request = Ros2Franka_spine_msgsSrvHalt_Request 
ros2Franka_spine_msgsSrvHalt_RequestCodecIdentity :: String
ros2Franka_spine_msgsSrvHalt_RequestCodecIdentity = "UWVMROS1_50af7625abf7ec20a30ec49b01e8d32de2ee0d4710820c8de659df211be8c111"
encodeRos2Franka_spine_msgsSrvHalt_Request :: Ros2Franka_spine_msgsSrvHalt_Request -> Either Word32 B.ByteString
encodeRos2Franka_spine_msgsSrvHalt_Request value = do
  W.bounded 0 []
readRos2Franka_spine_msgsSrvHalt_Request :: W.Decoder Ros2Franka_spine_msgsSrvHalt_Request
readRos2Franka_spine_msgsSrvHalt_Request = do
  let value = Ros2Franka_spine_msgsSrvHalt_Request 
  case encodeRos2Franka_spine_msgsSrvHalt_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_spine_msgsSrvHalt_Request :: B.ByteString -> Either Word32 Ros2Franka_spine_msgsSrvHalt_Request
decodeRos2Franka_spine_msgsSrvHalt_Request = W.runDecoder 0 readRos2Franka_spine_msgsSrvHalt_Request
instance Canonical Ros2Franka_spine_msgsSrvHalt_Request where
  maximumBytes _ = 0
  encodeValue = encodeRos2Franka_spine_msgsSrvHalt_Request
  readValue = readRos2Franka_spine_msgsSrvHalt_Request
data Ros2Franka_spine_msgsSrvHalt_Response = Ros2Franka_spine_msgsSrvHalt_Response
  {
    -- | \@brief franka_spine_msgs/srv/Halt_Response.state: string; each string is 0..256 bytes; strict UTF-8 with no
    -- | embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsSrvHalt_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsSrvHalt_Response_state :: T.Text
  ,
    -- | \@brief franka_spine_msgs/srv/Halt_Response.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsSrvHalt_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsSrvHalt_Response_success :: Bool
  ,
    -- | \@brief franka_spine_msgs/srv/Halt_Response.message: string; each string is 0..256 bytes; strict UTF-8 with no
    -- | embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsSrvHalt_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsSrvHalt_Response_message :: T.Text
  } deriving (Eq, Show)
defaultRos2Franka_spine_msgsSrvHalt_Response :: Ros2Franka_spine_msgsSrvHalt_Response
defaultRos2Franka_spine_msgsSrvHalt_Response = Ros2Franka_spine_msgsSrvHalt_Response (T.empty) (False) (T.empty)
ros2Franka_spine_msgsSrvHalt_ResponseCodecIdentity :: String
ros2Franka_spine_msgsSrvHalt_ResponseCodecIdentity = "UWVMROS1_150e1d90b485a6ddf79f771379a0e1d3f99a77f88ab1cf1f569d614a63ac3d77"
encodeRos2Franka_spine_msgsSrvHalt_Response :: Ros2Franka_spine_msgsSrvHalt_Response -> Either Word32 B.ByteString
encodeRos2Franka_spine_msgsSrvHalt_Response value = do
  b0 <- W.encodeText 256 True (ros2Franka_spine_msgsSrvHalt_Response_state value)
  b1 <- W.encodeBool (ros2Franka_spine_msgsSrvHalt_Response_success value)
  b2 <- W.encodeText 256 True (ros2Franka_spine_msgsSrvHalt_Response_message value)
  W.bounded 521 [b0, b1, b2]
readRos2Franka_spine_msgsSrvHalt_Response :: W.Decoder Ros2Franka_spine_msgsSrvHalt_Response
readRos2Franka_spine_msgsSrvHalt_Response = do
  a0 <- W.text 256 True
  a1 <- W.boolean
  a2 <- W.text 256 True
  let value = Ros2Franka_spine_msgsSrvHalt_Response a0 a1 a2
  case encodeRos2Franka_spine_msgsSrvHalt_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_spine_msgsSrvHalt_Response :: B.ByteString -> Either Word32 Ros2Franka_spine_msgsSrvHalt_Response
decodeRos2Franka_spine_msgsSrvHalt_Response = W.runDecoder 521 readRos2Franka_spine_msgsSrvHalt_Response
instance Canonical Ros2Franka_spine_msgsSrvHalt_Response where
  maximumBytes _ = 521
  encodeValue = encodeRos2Franka_spine_msgsSrvHalt_Response
  readValue = readRos2Franka_spine_msgsSrvHalt_Response
data Ros2Franka_spine_msgsSrvSwitchOff_Request = Ros2Franka_spine_msgsSrvSwitchOff_Request deriving (Eq, Show)
defaultRos2Franka_spine_msgsSrvSwitchOff_Request :: Ros2Franka_spine_msgsSrvSwitchOff_Request
defaultRos2Franka_spine_msgsSrvSwitchOff_Request = Ros2Franka_spine_msgsSrvSwitchOff_Request 
ros2Franka_spine_msgsSrvSwitchOff_RequestCodecIdentity :: String
ros2Franka_spine_msgsSrvSwitchOff_RequestCodecIdentity = "UWVMROS1_097f00adfdc8d1a49615792158a36052917c41385683b39de6686f591964fc16"
encodeRos2Franka_spine_msgsSrvSwitchOff_Request :: Ros2Franka_spine_msgsSrvSwitchOff_Request -> Either Word32 B.ByteString
encodeRos2Franka_spine_msgsSrvSwitchOff_Request value = do
  W.bounded 0 []
readRos2Franka_spine_msgsSrvSwitchOff_Request :: W.Decoder Ros2Franka_spine_msgsSrvSwitchOff_Request
readRos2Franka_spine_msgsSrvSwitchOff_Request = do
  let value = Ros2Franka_spine_msgsSrvSwitchOff_Request 
  case encodeRos2Franka_spine_msgsSrvSwitchOff_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_spine_msgsSrvSwitchOff_Request :: B.ByteString -> Either Word32 Ros2Franka_spine_msgsSrvSwitchOff_Request
decodeRos2Franka_spine_msgsSrvSwitchOff_Request = W.runDecoder 0 readRos2Franka_spine_msgsSrvSwitchOff_Request
instance Canonical Ros2Franka_spine_msgsSrvSwitchOff_Request where
  maximumBytes _ = 0
  encodeValue = encodeRos2Franka_spine_msgsSrvSwitchOff_Request
  readValue = readRos2Franka_spine_msgsSrvSwitchOff_Request
data Ros2Franka_spine_msgsSrvSwitchOff_Response = Ros2Franka_spine_msgsSrvSwitchOff_Response
  {
    -- | \@brief franka_spine_msgs/srv/SwitchOff_Response.state: string; each string is 0..256 bytes; strict UTF-8 with
    -- | no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsSrvSwitchOff_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsSrvSwitchOff_Response_state :: T.Text
  ,
    -- | \@brief franka_spine_msgs/srv/SwitchOff_Response.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsSrvSwitchOff_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsSrvSwitchOff_Response_success :: Bool
  ,
    -- | \@brief franka_spine_msgs/srv/SwitchOff_Response.message: string; each string is 0..256 bytes; strict UTF-8
    -- | with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsSrvSwitchOff_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsSrvSwitchOff_Response_message :: T.Text
  } deriving (Eq, Show)
defaultRos2Franka_spine_msgsSrvSwitchOff_Response :: Ros2Franka_spine_msgsSrvSwitchOff_Response
defaultRos2Franka_spine_msgsSrvSwitchOff_Response = Ros2Franka_spine_msgsSrvSwitchOff_Response (T.empty) (False) (T.empty)
ros2Franka_spine_msgsSrvSwitchOff_ResponseCodecIdentity :: String
ros2Franka_spine_msgsSrvSwitchOff_ResponseCodecIdentity =
        "UWVMROS1_d3ab8516e62428b2caf71673f398ccc7199b7b25aac4c37b42c15a79878e54ad"
encodeRos2Franka_spine_msgsSrvSwitchOff_Response :: Ros2Franka_spine_msgsSrvSwitchOff_Response -> Either Word32 B.ByteString
encodeRos2Franka_spine_msgsSrvSwitchOff_Response value = do
  b0 <- W.encodeText 256 True (ros2Franka_spine_msgsSrvSwitchOff_Response_state value)
  b1 <- W.encodeBool (ros2Franka_spine_msgsSrvSwitchOff_Response_success value)
  b2 <- W.encodeText 256 True (ros2Franka_spine_msgsSrvSwitchOff_Response_message value)
  W.bounded 521 [b0, b1, b2]
readRos2Franka_spine_msgsSrvSwitchOff_Response :: W.Decoder Ros2Franka_spine_msgsSrvSwitchOff_Response
readRos2Franka_spine_msgsSrvSwitchOff_Response = do
  a0 <- W.text 256 True
  a1 <- W.boolean
  a2 <- W.text 256 True
  let value = Ros2Franka_spine_msgsSrvSwitchOff_Response a0 a1 a2
  case encodeRos2Franka_spine_msgsSrvSwitchOff_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_spine_msgsSrvSwitchOff_Response :: B.ByteString -> Either Word32 Ros2Franka_spine_msgsSrvSwitchOff_Response
decodeRos2Franka_spine_msgsSrvSwitchOff_Response = W.runDecoder 521 readRos2Franka_spine_msgsSrvSwitchOff_Response
instance Canonical Ros2Franka_spine_msgsSrvSwitchOff_Response where
  maximumBytes _ = 521
  encodeValue = encodeRos2Franka_spine_msgsSrvSwitchOff_Response
  readValue = readRos2Franka_spine_msgsSrvSwitchOff_Response
data Ros2Franka_spine_msgsSrvSwitchOn_Request = Ros2Franka_spine_msgsSrvSwitchOn_Request deriving (Eq, Show)
defaultRos2Franka_spine_msgsSrvSwitchOn_Request :: Ros2Franka_spine_msgsSrvSwitchOn_Request
defaultRos2Franka_spine_msgsSrvSwitchOn_Request = Ros2Franka_spine_msgsSrvSwitchOn_Request 
ros2Franka_spine_msgsSrvSwitchOn_RequestCodecIdentity :: String
ros2Franka_spine_msgsSrvSwitchOn_RequestCodecIdentity = "UWVMROS1_840d12dbe4d4a8558e72c2facbccfc547de35536f749573b6de60ce9a9238a56"
encodeRos2Franka_spine_msgsSrvSwitchOn_Request :: Ros2Franka_spine_msgsSrvSwitchOn_Request -> Either Word32 B.ByteString
encodeRos2Franka_spine_msgsSrvSwitchOn_Request value = do
  W.bounded 0 []
readRos2Franka_spine_msgsSrvSwitchOn_Request :: W.Decoder Ros2Franka_spine_msgsSrvSwitchOn_Request
readRos2Franka_spine_msgsSrvSwitchOn_Request = do
  let value = Ros2Franka_spine_msgsSrvSwitchOn_Request 
  case encodeRos2Franka_spine_msgsSrvSwitchOn_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_spine_msgsSrvSwitchOn_Request :: B.ByteString -> Either Word32 Ros2Franka_spine_msgsSrvSwitchOn_Request
decodeRos2Franka_spine_msgsSrvSwitchOn_Request = W.runDecoder 0 readRos2Franka_spine_msgsSrvSwitchOn_Request
instance Canonical Ros2Franka_spine_msgsSrvSwitchOn_Request where
  maximumBytes _ = 0
  encodeValue = encodeRos2Franka_spine_msgsSrvSwitchOn_Request
  readValue = readRos2Franka_spine_msgsSrvSwitchOn_Request
data Ros2Franka_spine_msgsSrvSwitchOn_Response = Ros2Franka_spine_msgsSrvSwitchOn_Response
  {
    -- | \@brief franka_spine_msgs/srv/SwitchOn_Response.state: string; each string is 0..256 bytes; strict UTF-8 with
    -- | no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsSrvSwitchOn_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsSrvSwitchOn_Response_state :: T.Text
  ,
    -- | \@brief franka_spine_msgs/srv/SwitchOn_Response.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsSrvSwitchOn_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsSrvSwitchOn_Response_success :: Bool
  ,
    -- | \@brief franka_spine_msgs/srv/SwitchOn_Response.message: string; each string is 0..256 bytes; strict UTF-8 with
    -- | no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Franka_spine_msgsSrvSwitchOn_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Franka_spine_msgsSrvSwitchOn_Response_message :: T.Text
  } deriving (Eq, Show)
defaultRos2Franka_spine_msgsSrvSwitchOn_Response :: Ros2Franka_spine_msgsSrvSwitchOn_Response
defaultRos2Franka_spine_msgsSrvSwitchOn_Response = Ros2Franka_spine_msgsSrvSwitchOn_Response (T.empty) (False) (T.empty)
ros2Franka_spine_msgsSrvSwitchOn_ResponseCodecIdentity :: String
ros2Franka_spine_msgsSrvSwitchOn_ResponseCodecIdentity = "UWVMROS1_8c58d63385a5fc6f160585504b3c9c5ca5375c6187f7a494c3db696c5cc7a37d"
encodeRos2Franka_spine_msgsSrvSwitchOn_Response :: Ros2Franka_spine_msgsSrvSwitchOn_Response -> Either Word32 B.ByteString
encodeRos2Franka_spine_msgsSrvSwitchOn_Response value = do
  b0 <- W.encodeText 256 True (ros2Franka_spine_msgsSrvSwitchOn_Response_state value)
  b1 <- W.encodeBool (ros2Franka_spine_msgsSrvSwitchOn_Response_success value)
  b2 <- W.encodeText 256 True (ros2Franka_spine_msgsSrvSwitchOn_Response_message value)
  W.bounded 521 [b0, b1, b2]
readRos2Franka_spine_msgsSrvSwitchOn_Response :: W.Decoder Ros2Franka_spine_msgsSrvSwitchOn_Response
readRos2Franka_spine_msgsSrvSwitchOn_Response = do
  a0 <- W.text 256 True
  a1 <- W.boolean
  a2 <- W.text 256 True
  let value = Ros2Franka_spine_msgsSrvSwitchOn_Response a0 a1 a2
  case encodeRos2Franka_spine_msgsSrvSwitchOn_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Franka_spine_msgsSrvSwitchOn_Response :: B.ByteString -> Either Word32 Ros2Franka_spine_msgsSrvSwitchOn_Response
decodeRos2Franka_spine_msgsSrvSwitchOn_Response = W.runDecoder 521 readRos2Franka_spine_msgsSrvSwitchOn_Response
instance Canonical Ros2Franka_spine_msgsSrvSwitchOn_Response where
  maximumBytes _ = 521
  encodeValue = encodeRos2Franka_spine_msgsSrvSwitchOn_Response
  readValue = readRos2Franka_spine_msgsSrvSwitchOn_Response
