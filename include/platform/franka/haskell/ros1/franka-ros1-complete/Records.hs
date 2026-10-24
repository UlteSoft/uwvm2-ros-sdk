-- Generated complete canonical values; all field selectors are record-qualified.
module Franka.Ros1.Records where
import Data.Int
import Data.Word
import qualified Data.ByteString as B
import qualified Data.Text as T
import GHC.Float
import Control.Monad (replicateM)
import qualified RosWasm.Wire as W
import RosWasm.Typed (Canonical(..))
data Ros1Franka_example_controllersJointTorqueComparison = Ros1Franka_example_controllersJointTorqueComparison
  {
    -- | \@brief franka_example_controllers/JointTorqueComparison.tau_error: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_example_controllersJointTorqueComparison; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_example_controllersJointTorqueComparison_tau_error :: [Double]
  ,
    -- | \@brief franka_example_controllers/JointTorqueComparison.tau_commanded: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_example_controllersJointTorqueComparison; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_example_controllersJointTorqueComparison_tau_commanded :: [Double]
  ,
    -- | \@brief franka_example_controllers/JointTorqueComparison.tau_measured: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_example_controllersJointTorqueComparison; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_example_controllersJointTorqueComparison_tau_measured :: [Double]
  ,
    -- | \@brief franka_example_controllers/JointTorqueComparison.root_mean_square_error: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_example_controllersJointTorqueComparison; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_example_controllersJointTorqueComparison_root_mean_square_error :: Double
  } deriving (Eq, Show)
defaultRos1Franka_example_controllersJointTorqueComparison :: Ros1Franka_example_controllersJointTorqueComparison
defaultRos1Franka_example_controllersJointTorqueComparison = Ros1Franka_example_controllersJointTorqueComparison (replicate 7 (0))
        (replicate 7 (0)) (replicate 7 (0)) (0)
ros1Franka_example_controllersJointTorqueComparisonCodecIdentity :: String
ros1Franka_example_controllersJointTorqueComparisonCodecIdentity =
        "UWVMROS1_dde6eaf404002642e64af59eb5367948b00bc07c0b2fd8a57e359e9df3084254"
encodeRos1Franka_example_controllersJointTorqueComparison :: Ros1Franka_example_controllersJointTorqueComparison -> Either Word32
        B.ByteString
encodeRos1Franka_example_controllersJointTorqueComparison value = do
  if length (ros1Franka_example_controllersJointTorqueComparison_tau_error value) /= 7 then Left 22 else Right ()
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_example_controllersJointTorqueComparison_tau_error value)
  if length (ros1Franka_example_controllersJointTorqueComparison_tau_commanded value) /= 7 then Left 22 else Right ()
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_example_controllersJointTorqueComparison_tau_commanded value)
  if length (ros1Franka_example_controllersJointTorqueComparison_tau_measured value) /= 7 then Left 22 else Right ()
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_example_controllersJointTorqueComparison_tau_measured value)
  b3 <- W.encodeFloat64 (ros1Franka_example_controllersJointTorqueComparison_root_mean_square_error value)
  W.bounded 176 [b0, b1, b2, b3]
readRos1Franka_example_controllersJointTorqueComparison :: W.Decoder Ros1Franka_example_controllersJointTorqueComparison
readRos1Franka_example_controllersJointTorqueComparison = do
  a0 <- replicateM 7 (W.float64)
  a1 <- replicateM 7 (W.float64)
  a2 <- replicateM 7 (W.float64)
  a3 <- W.float64
  let value = Ros1Franka_example_controllersJointTorqueComparison a0 a1 a2 a3
  case encodeRos1Franka_example_controllersJointTorqueComparison value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Franka_example_controllersJointTorqueComparison :: B.ByteString -> Either Word32
        Ros1Franka_example_controllersJointTorqueComparison
decodeRos1Franka_example_controllersJointTorqueComparison = W.runDecoder 176 readRos1Franka_example_controllersJointTorqueComparison
instance Canonical Ros1Franka_example_controllersJointTorqueComparison where
  maximumBytes _ = 176
  encodeValue = encodeRos1Franka_example_controllersJointTorqueComparison
  readValue = readRos1Franka_example_controllersJointTorqueComparison
data Ros1Franka_gripperGraspEpsilon = Ros1Franka_gripperGraspEpsilon
  {
    -- | \@brief franka_gripper/GraspEpsilon.inner: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_gripperGraspEpsilon; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_gripperGraspEpsilon_inner :: Double
  ,
    -- | \@brief franka_gripper/GraspEpsilon.outer: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_gripperGraspEpsilon; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_gripperGraspEpsilon_outer :: Double
  } deriving (Eq, Show)
defaultRos1Franka_gripperGraspEpsilon :: Ros1Franka_gripperGraspEpsilon
defaultRos1Franka_gripperGraspEpsilon = Ros1Franka_gripperGraspEpsilon (0) (0)
ros1Franka_gripperGraspEpsilonCodecIdentity :: String
ros1Franka_gripperGraspEpsilonCodecIdentity = "UWVMROS1_538ac801e9874841f232909d2d9a16893a8d29c8380cd623c00c408690f978f9"
encodeRos1Franka_gripperGraspEpsilon :: Ros1Franka_gripperGraspEpsilon -> Either Word32 B.ByteString
encodeRos1Franka_gripperGraspEpsilon value = do
  b0 <- W.encodeFloat64 (ros1Franka_gripperGraspEpsilon_inner value)
  b1 <- W.encodeFloat64 (ros1Franka_gripperGraspEpsilon_outer value)
  W.bounded 16 [b0, b1]
readRos1Franka_gripperGraspEpsilon :: W.Decoder Ros1Franka_gripperGraspEpsilon
readRos1Franka_gripperGraspEpsilon = do
  a0 <- W.float64
  a1 <- W.float64
  let value = Ros1Franka_gripperGraspEpsilon a0 a1
  case encodeRos1Franka_gripperGraspEpsilon value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Franka_gripperGraspEpsilon :: B.ByteString -> Either Word32 Ros1Franka_gripperGraspEpsilon
decodeRos1Franka_gripperGraspEpsilon = W.runDecoder 16 readRos1Franka_gripperGraspEpsilon
instance Canonical Ros1Franka_gripperGraspEpsilon where
  maximumBytes _ = 16
  encodeValue = encodeRos1Franka_gripperGraspEpsilon
  readValue = readRos1Franka_gripperGraspEpsilon
data Ros1Franka_gripperGraspGoal = Ros1Franka_gripperGraspGoal
  {
    -- | \@brief franka_gripper/GraspGoal.width: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_gripperGraspGoal; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_gripperGraspGoal_width :: Double
  ,
    -- | \@brief franka_gripper/GraspGoal.epsilon: franka_gripper/GraspEpsilon.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_gripperGraspGoal; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_gripperGraspGoal_epsilon :: Ros1Franka_gripperGraspEpsilon
  ,
    -- | \@brief franka_gripper/GraspGoal.speed: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_gripperGraspGoal; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_gripperGraspGoal_speed :: Double
  ,
    -- | \@brief franka_gripper/GraspGoal.force: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_gripperGraspGoal; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_gripperGraspGoal_force :: Double
  } deriving (Eq, Show)
defaultRos1Franka_gripperGraspGoal :: Ros1Franka_gripperGraspGoal
defaultRos1Franka_gripperGraspGoal = Ros1Franka_gripperGraspGoal (0) (defaultRos1Franka_gripperGraspEpsilon) (0) (0)
ros1Franka_gripperGraspGoalCodecIdentity :: String
ros1Franka_gripperGraspGoalCodecIdentity = "UWVMROS1_d3dd0d3f47e49e06a95d907a6219335b35234749518ab645e102257595ed7bcf"
encodeRos1Franka_gripperGraspGoal :: Ros1Franka_gripperGraspGoal -> Either Word32 B.ByteString
encodeRos1Franka_gripperGraspGoal value = do
  b0 <- W.encodeFloat64 (ros1Franka_gripperGraspGoal_width value)
  b1 <- encodeRos1Franka_gripperGraspEpsilon (ros1Franka_gripperGraspGoal_epsilon value)
  b2 <- W.encodeFloat64 (ros1Franka_gripperGraspGoal_speed value)
  b3 <- W.encodeFloat64 (ros1Franka_gripperGraspGoal_force value)
  W.bounded 40 [b0, b1, b2, b3]
readRos1Franka_gripperGraspGoal :: W.Decoder Ros1Franka_gripperGraspGoal
readRos1Franka_gripperGraspGoal = do
  a0 <- W.float64
  a1 <- readRos1Franka_gripperGraspEpsilon
  a2 <- W.float64
  a3 <- W.float64
  let value = Ros1Franka_gripperGraspGoal a0 a1 a2 a3
  case encodeRos1Franka_gripperGraspGoal value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Franka_gripperGraspGoal :: B.ByteString -> Either Word32 Ros1Franka_gripperGraspGoal
decodeRos1Franka_gripperGraspGoal = W.runDecoder 40 readRos1Franka_gripperGraspGoal
instance Canonical Ros1Franka_gripperGraspGoal where
  maximumBytes _ = 40
  encodeValue = encodeRos1Franka_gripperGraspGoal
  readValue = readRos1Franka_gripperGraspGoal
data Ros1Franka_gripperGraspResult = Ros1Franka_gripperGraspResult
  {
    -- | \@brief franka_gripper/GraspResult.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_gripperGraspResult; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_gripperGraspResult_success :: Bool
  ,
    -- | \@brief franka_gripper/GraspResult.error: string; each string is 0..256 bytes; strict UTF-8 with no embedded
    -- | NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_gripperGraspResult; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_gripperGraspResult_error :: T.Text
  } deriving (Eq, Show)
defaultRos1Franka_gripperGraspResult :: Ros1Franka_gripperGraspResult
defaultRos1Franka_gripperGraspResult = Ros1Franka_gripperGraspResult (False) (T.empty)
ros1Franka_gripperGraspResultCodecIdentity :: String
ros1Franka_gripperGraspResultCodecIdentity = "UWVMROS1_9ce1e4f95f16fd6c1603f0b30a9fcc33e4f8436cdb96710ea91eb20b38a1e02e"
encodeRos1Franka_gripperGraspResult :: Ros1Franka_gripperGraspResult -> Either Word32 B.ByteString
encodeRos1Franka_gripperGraspResult value = do
  b0 <- W.encodeBool (ros1Franka_gripperGraspResult_success value)
  b1 <- W.encodeText 256 True (ros1Franka_gripperGraspResult_error value)
  W.bounded 261 [b0, b1]
readRos1Franka_gripperGraspResult :: W.Decoder Ros1Franka_gripperGraspResult
readRos1Franka_gripperGraspResult = do
  a0 <- W.boolean
  a1 <- W.text 256 True
  let value = Ros1Franka_gripperGraspResult a0 a1
  case encodeRos1Franka_gripperGraspResult value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Franka_gripperGraspResult :: B.ByteString -> Either Word32 Ros1Franka_gripperGraspResult
decodeRos1Franka_gripperGraspResult = W.runDecoder 261 readRos1Franka_gripperGraspResult
instance Canonical Ros1Franka_gripperGraspResult where
  maximumBytes _ = 261
  encodeValue = encodeRos1Franka_gripperGraspResult
  readValue = readRos1Franka_gripperGraspResult
data Ros1Franka_gripperGraspFeedback = Ros1Franka_gripperGraspFeedback deriving (Eq, Show)
defaultRos1Franka_gripperGraspFeedback :: Ros1Franka_gripperGraspFeedback
defaultRos1Franka_gripperGraspFeedback = Ros1Franka_gripperGraspFeedback 
ros1Franka_gripperGraspFeedbackCodecIdentity :: String
ros1Franka_gripperGraspFeedbackCodecIdentity = "UWVMROS1_24ca23625df0bd9fb984e65c8ecd7a3af162a3db00c15951225df5e18d3a4d0d"
encodeRos1Franka_gripperGraspFeedback :: Ros1Franka_gripperGraspFeedback -> Either Word32 B.ByteString
encodeRos1Franka_gripperGraspFeedback value = do
  W.bounded 0 []
readRos1Franka_gripperGraspFeedback :: W.Decoder Ros1Franka_gripperGraspFeedback
readRos1Franka_gripperGraspFeedback = do
  let value = Ros1Franka_gripperGraspFeedback 
  case encodeRos1Franka_gripperGraspFeedback value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Franka_gripperGraspFeedback :: B.ByteString -> Either Word32 Ros1Franka_gripperGraspFeedback
decodeRos1Franka_gripperGraspFeedback = W.runDecoder 0 readRos1Franka_gripperGraspFeedback
instance Canonical Ros1Franka_gripperGraspFeedback where
  maximumBytes _ = 0
  encodeValue = encodeRos1Franka_gripperGraspFeedback
  readValue = readRos1Franka_gripperGraspFeedback
data Ros1Franka_gripperHomingGoal = Ros1Franka_gripperHomingGoal deriving (Eq, Show)
defaultRos1Franka_gripperHomingGoal :: Ros1Franka_gripperHomingGoal
defaultRos1Franka_gripperHomingGoal = Ros1Franka_gripperHomingGoal 
ros1Franka_gripperHomingGoalCodecIdentity :: String
ros1Franka_gripperHomingGoalCodecIdentity = "UWVMROS1_4b4f861fa9ff44afda4217cf613720e90353b0d43c1fc3425d5937157353910f"
encodeRos1Franka_gripperHomingGoal :: Ros1Franka_gripperHomingGoal -> Either Word32 B.ByteString
encodeRos1Franka_gripperHomingGoal value = do
  W.bounded 0 []
readRos1Franka_gripperHomingGoal :: W.Decoder Ros1Franka_gripperHomingGoal
readRos1Franka_gripperHomingGoal = do
  let value = Ros1Franka_gripperHomingGoal 
  case encodeRos1Franka_gripperHomingGoal value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Franka_gripperHomingGoal :: B.ByteString -> Either Word32 Ros1Franka_gripperHomingGoal
decodeRos1Franka_gripperHomingGoal = W.runDecoder 0 readRos1Franka_gripperHomingGoal
instance Canonical Ros1Franka_gripperHomingGoal where
  maximumBytes _ = 0
  encodeValue = encodeRos1Franka_gripperHomingGoal
  readValue = readRos1Franka_gripperHomingGoal
data Ros1Franka_gripperHomingResult = Ros1Franka_gripperHomingResult
  {
    -- | \@brief franka_gripper/HomingResult.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_gripperHomingResult; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_gripperHomingResult_success :: Bool
  ,
    -- | \@brief franka_gripper/HomingResult.error: string; each string is 0..256 bytes; strict UTF-8 with no embedded
    -- | NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_gripperHomingResult; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_gripperHomingResult_error :: T.Text
  } deriving (Eq, Show)
defaultRos1Franka_gripperHomingResult :: Ros1Franka_gripperHomingResult
defaultRos1Franka_gripperHomingResult = Ros1Franka_gripperHomingResult (False) (T.empty)
ros1Franka_gripperHomingResultCodecIdentity :: String
ros1Franka_gripperHomingResultCodecIdentity = "UWVMROS1_1ddf202b4e7dbf100d304b4eb32aa0ce8dca6ffadcf720820f2d7932af056477"
encodeRos1Franka_gripperHomingResult :: Ros1Franka_gripperHomingResult -> Either Word32 B.ByteString
encodeRos1Franka_gripperHomingResult value = do
  b0 <- W.encodeBool (ros1Franka_gripperHomingResult_success value)
  b1 <- W.encodeText 256 True (ros1Franka_gripperHomingResult_error value)
  W.bounded 261 [b0, b1]
readRos1Franka_gripperHomingResult :: W.Decoder Ros1Franka_gripperHomingResult
readRos1Franka_gripperHomingResult = do
  a0 <- W.boolean
  a1 <- W.text 256 True
  let value = Ros1Franka_gripperHomingResult a0 a1
  case encodeRos1Franka_gripperHomingResult value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Franka_gripperHomingResult :: B.ByteString -> Either Word32 Ros1Franka_gripperHomingResult
decodeRos1Franka_gripperHomingResult = W.runDecoder 261 readRos1Franka_gripperHomingResult
instance Canonical Ros1Franka_gripperHomingResult where
  maximumBytes _ = 261
  encodeValue = encodeRos1Franka_gripperHomingResult
  readValue = readRos1Franka_gripperHomingResult
data Ros1Franka_gripperHomingFeedback = Ros1Franka_gripperHomingFeedback deriving (Eq, Show)
defaultRos1Franka_gripperHomingFeedback :: Ros1Franka_gripperHomingFeedback
defaultRos1Franka_gripperHomingFeedback = Ros1Franka_gripperHomingFeedback 
ros1Franka_gripperHomingFeedbackCodecIdentity :: String
ros1Franka_gripperHomingFeedbackCodecIdentity = "UWVMROS1_4a1118d8ab544b2bc99ff878356aae49b4d3ecb4cb5ba7e2f93f7c0c7a29512e"
encodeRos1Franka_gripperHomingFeedback :: Ros1Franka_gripperHomingFeedback -> Either Word32 B.ByteString
encodeRos1Franka_gripperHomingFeedback value = do
  W.bounded 0 []
readRos1Franka_gripperHomingFeedback :: W.Decoder Ros1Franka_gripperHomingFeedback
readRos1Franka_gripperHomingFeedback = do
  let value = Ros1Franka_gripperHomingFeedback 
  case encodeRos1Franka_gripperHomingFeedback value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Franka_gripperHomingFeedback :: B.ByteString -> Either Word32 Ros1Franka_gripperHomingFeedback
decodeRos1Franka_gripperHomingFeedback = W.runDecoder 0 readRos1Franka_gripperHomingFeedback
instance Canonical Ros1Franka_gripperHomingFeedback where
  maximumBytes _ = 0
  encodeValue = encodeRos1Franka_gripperHomingFeedback
  readValue = readRos1Franka_gripperHomingFeedback
data Ros1Franka_gripperMoveGoal = Ros1Franka_gripperMoveGoal
  {
    -- | \@brief franka_gripper/MoveGoal.width: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_gripperMoveGoal; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_gripperMoveGoal_width :: Double
  ,
    -- | \@brief franka_gripper/MoveGoal.speed: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_gripperMoveGoal; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_gripperMoveGoal_speed :: Double
  } deriving (Eq, Show)
defaultRos1Franka_gripperMoveGoal :: Ros1Franka_gripperMoveGoal
defaultRos1Franka_gripperMoveGoal = Ros1Franka_gripperMoveGoal (0) (0)
ros1Franka_gripperMoveGoalCodecIdentity :: String
ros1Franka_gripperMoveGoalCodecIdentity = "UWVMROS1_c83296f2540854e78cc159691c229f5d50267b3fdb31789e325a55fcd7d6830a"
encodeRos1Franka_gripperMoveGoal :: Ros1Franka_gripperMoveGoal -> Either Word32 B.ByteString
encodeRos1Franka_gripperMoveGoal value = do
  b0 <- W.encodeFloat64 (ros1Franka_gripperMoveGoal_width value)
  b1 <- W.encodeFloat64 (ros1Franka_gripperMoveGoal_speed value)
  W.bounded 16 [b0, b1]
readRos1Franka_gripperMoveGoal :: W.Decoder Ros1Franka_gripperMoveGoal
readRos1Franka_gripperMoveGoal = do
  a0 <- W.float64
  a1 <- W.float64
  let value = Ros1Franka_gripperMoveGoal a0 a1
  case encodeRos1Franka_gripperMoveGoal value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Franka_gripperMoveGoal :: B.ByteString -> Either Word32 Ros1Franka_gripperMoveGoal
decodeRos1Franka_gripperMoveGoal = W.runDecoder 16 readRos1Franka_gripperMoveGoal
instance Canonical Ros1Franka_gripperMoveGoal where
  maximumBytes _ = 16
  encodeValue = encodeRos1Franka_gripperMoveGoal
  readValue = readRos1Franka_gripperMoveGoal
data Ros1Franka_gripperMoveResult = Ros1Franka_gripperMoveResult
  {
    -- | \@brief franka_gripper/MoveResult.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_gripperMoveResult; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_gripperMoveResult_success :: Bool
  ,
    -- | \@brief franka_gripper/MoveResult.error: string; each string is 0..256 bytes; strict UTF-8 with no embedded
    -- | NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_gripperMoveResult; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_gripperMoveResult_error :: T.Text
  } deriving (Eq, Show)
defaultRos1Franka_gripperMoveResult :: Ros1Franka_gripperMoveResult
defaultRos1Franka_gripperMoveResult = Ros1Franka_gripperMoveResult (False) (T.empty)
ros1Franka_gripperMoveResultCodecIdentity :: String
ros1Franka_gripperMoveResultCodecIdentity = "UWVMROS1_527adf0720dabcc91866a0858cddfbfae1ed4203d4eb34a3965ebe085d0ac3b3"
encodeRos1Franka_gripperMoveResult :: Ros1Franka_gripperMoveResult -> Either Word32 B.ByteString
encodeRos1Franka_gripperMoveResult value = do
  b0 <- W.encodeBool (ros1Franka_gripperMoveResult_success value)
  b1 <- W.encodeText 256 True (ros1Franka_gripperMoveResult_error value)
  W.bounded 261 [b0, b1]
readRos1Franka_gripperMoveResult :: W.Decoder Ros1Franka_gripperMoveResult
readRos1Franka_gripperMoveResult = do
  a0 <- W.boolean
  a1 <- W.text 256 True
  let value = Ros1Franka_gripperMoveResult a0 a1
  case encodeRos1Franka_gripperMoveResult value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Franka_gripperMoveResult :: B.ByteString -> Either Word32 Ros1Franka_gripperMoveResult
decodeRos1Franka_gripperMoveResult = W.runDecoder 261 readRos1Franka_gripperMoveResult
instance Canonical Ros1Franka_gripperMoveResult where
  maximumBytes _ = 261
  encodeValue = encodeRos1Franka_gripperMoveResult
  readValue = readRos1Franka_gripperMoveResult
data Ros1Franka_gripperMoveFeedback = Ros1Franka_gripperMoveFeedback deriving (Eq, Show)
defaultRos1Franka_gripperMoveFeedback :: Ros1Franka_gripperMoveFeedback
defaultRos1Franka_gripperMoveFeedback = Ros1Franka_gripperMoveFeedback 
ros1Franka_gripperMoveFeedbackCodecIdentity :: String
ros1Franka_gripperMoveFeedbackCodecIdentity = "UWVMROS1_8e02ca1d66ae38a5d71ca5f708aa2c57bb3df573d37b692e24986dba384c5f80"
encodeRos1Franka_gripperMoveFeedback :: Ros1Franka_gripperMoveFeedback -> Either Word32 B.ByteString
encodeRos1Franka_gripperMoveFeedback value = do
  W.bounded 0 []
readRos1Franka_gripperMoveFeedback :: W.Decoder Ros1Franka_gripperMoveFeedback
readRos1Franka_gripperMoveFeedback = do
  let value = Ros1Franka_gripperMoveFeedback 
  case encodeRos1Franka_gripperMoveFeedback value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Franka_gripperMoveFeedback :: B.ByteString -> Either Word32 Ros1Franka_gripperMoveFeedback
decodeRos1Franka_gripperMoveFeedback = W.runDecoder 0 readRos1Franka_gripperMoveFeedback
instance Canonical Ros1Franka_gripperMoveFeedback where
  maximumBytes _ = 0
  encodeValue = encodeRos1Franka_gripperMoveFeedback
  readValue = readRos1Franka_gripperMoveFeedback
data Ros1Franka_gripperStopGoal = Ros1Franka_gripperStopGoal deriving (Eq, Show)
defaultRos1Franka_gripperStopGoal :: Ros1Franka_gripperStopGoal
defaultRos1Franka_gripperStopGoal = Ros1Franka_gripperStopGoal 
ros1Franka_gripperStopGoalCodecIdentity :: String
ros1Franka_gripperStopGoalCodecIdentity = "UWVMROS1_ecb09ccc03cb2140a457a11c174a614392ce1f9263e46c5b82427a99f7ff0245"
encodeRos1Franka_gripperStopGoal :: Ros1Franka_gripperStopGoal -> Either Word32 B.ByteString
encodeRos1Franka_gripperStopGoal value = do
  W.bounded 0 []
readRos1Franka_gripperStopGoal :: W.Decoder Ros1Franka_gripperStopGoal
readRos1Franka_gripperStopGoal = do
  let value = Ros1Franka_gripperStopGoal 
  case encodeRos1Franka_gripperStopGoal value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Franka_gripperStopGoal :: B.ByteString -> Either Word32 Ros1Franka_gripperStopGoal
decodeRos1Franka_gripperStopGoal = W.runDecoder 0 readRos1Franka_gripperStopGoal
instance Canonical Ros1Franka_gripperStopGoal where
  maximumBytes _ = 0
  encodeValue = encodeRos1Franka_gripperStopGoal
  readValue = readRos1Franka_gripperStopGoal
data Ros1Franka_gripperStopResult = Ros1Franka_gripperStopResult
  {
    -- | \@brief franka_gripper/StopResult.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_gripperStopResult; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_gripperStopResult_success :: Bool
  ,
    -- | \@brief franka_gripper/StopResult.error: string; each string is 0..256 bytes; strict UTF-8 with no embedded
    -- | NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_gripperStopResult; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_gripperStopResult_error :: T.Text
  } deriving (Eq, Show)
defaultRos1Franka_gripperStopResult :: Ros1Franka_gripperStopResult
defaultRos1Franka_gripperStopResult = Ros1Franka_gripperStopResult (False) (T.empty)
ros1Franka_gripperStopResultCodecIdentity :: String
ros1Franka_gripperStopResultCodecIdentity = "UWVMROS1_343e16d9b839b61ed8f8c1ce93005cb3a21511a220095200eb075dfb62a40c61"
encodeRos1Franka_gripperStopResult :: Ros1Franka_gripperStopResult -> Either Word32 B.ByteString
encodeRos1Franka_gripperStopResult value = do
  b0 <- W.encodeBool (ros1Franka_gripperStopResult_success value)
  b1 <- W.encodeText 256 True (ros1Franka_gripperStopResult_error value)
  W.bounded 261 [b0, b1]
readRos1Franka_gripperStopResult :: W.Decoder Ros1Franka_gripperStopResult
readRos1Franka_gripperStopResult = do
  a0 <- W.boolean
  a1 <- W.text 256 True
  let value = Ros1Franka_gripperStopResult a0 a1
  case encodeRos1Franka_gripperStopResult value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Franka_gripperStopResult :: B.ByteString -> Either Word32 Ros1Franka_gripperStopResult
decodeRos1Franka_gripperStopResult = W.runDecoder 261 readRos1Franka_gripperStopResult
instance Canonical Ros1Franka_gripperStopResult where
  maximumBytes _ = 261
  encodeValue = encodeRos1Franka_gripperStopResult
  readValue = readRos1Franka_gripperStopResult
data Ros1Franka_gripperStopFeedback = Ros1Franka_gripperStopFeedback deriving (Eq, Show)
defaultRos1Franka_gripperStopFeedback :: Ros1Franka_gripperStopFeedback
defaultRos1Franka_gripperStopFeedback = Ros1Franka_gripperStopFeedback 
ros1Franka_gripperStopFeedbackCodecIdentity :: String
ros1Franka_gripperStopFeedbackCodecIdentity = "UWVMROS1_62b637081e95f59df491f71b0ca84394a7e1f36137ca389a8f6d0d3a0f19038d"
encodeRos1Franka_gripperStopFeedback :: Ros1Franka_gripperStopFeedback -> Either Word32 B.ByteString
encodeRos1Franka_gripperStopFeedback value = do
  W.bounded 0 []
readRos1Franka_gripperStopFeedback :: W.Decoder Ros1Franka_gripperStopFeedback
readRos1Franka_gripperStopFeedback = do
  let value = Ros1Franka_gripperStopFeedback 
  case encodeRos1Franka_gripperStopFeedback value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Franka_gripperStopFeedback :: B.ByteString -> Either Word32 Ros1Franka_gripperStopFeedback
decodeRos1Franka_gripperStopFeedback = W.runDecoder 0 readRos1Franka_gripperStopFeedback
instance Canonical Ros1Franka_gripperStopFeedback where
  maximumBytes _ = 0
  encodeValue = encodeRos1Franka_gripperStopFeedback
  readValue = readRos1Franka_gripperStopFeedback
data Ros1Franka_msgsErrorRecoveryGoal = Ros1Franka_msgsErrorRecoveryGoal deriving (Eq, Show)
defaultRos1Franka_msgsErrorRecoveryGoal :: Ros1Franka_msgsErrorRecoveryGoal
defaultRos1Franka_msgsErrorRecoveryGoal = Ros1Franka_msgsErrorRecoveryGoal 
ros1Franka_msgsErrorRecoveryGoalCodecIdentity :: String
ros1Franka_msgsErrorRecoveryGoalCodecIdentity = "UWVMROS1_b4f11555bc4919bf59aa548bd21046bdc7b1e2ed5cce6dc46298eb7486ef7b64"
encodeRos1Franka_msgsErrorRecoveryGoal :: Ros1Franka_msgsErrorRecoveryGoal -> Either Word32 B.ByteString
encodeRos1Franka_msgsErrorRecoveryGoal value = do
  W.bounded 0 []
readRos1Franka_msgsErrorRecoveryGoal :: W.Decoder Ros1Franka_msgsErrorRecoveryGoal
readRos1Franka_msgsErrorRecoveryGoal = do
  let value = Ros1Franka_msgsErrorRecoveryGoal 
  case encodeRos1Franka_msgsErrorRecoveryGoal value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Franka_msgsErrorRecoveryGoal :: B.ByteString -> Either Word32 Ros1Franka_msgsErrorRecoveryGoal
decodeRos1Franka_msgsErrorRecoveryGoal = W.runDecoder 0 readRos1Franka_msgsErrorRecoveryGoal
instance Canonical Ros1Franka_msgsErrorRecoveryGoal where
  maximumBytes _ = 0
  encodeValue = encodeRos1Franka_msgsErrorRecoveryGoal
  readValue = readRos1Franka_msgsErrorRecoveryGoal
data Ros1Franka_msgsErrorRecoveryResult = Ros1Franka_msgsErrorRecoveryResult deriving (Eq, Show)
defaultRos1Franka_msgsErrorRecoveryResult :: Ros1Franka_msgsErrorRecoveryResult
defaultRos1Franka_msgsErrorRecoveryResult = Ros1Franka_msgsErrorRecoveryResult 
ros1Franka_msgsErrorRecoveryResultCodecIdentity :: String
ros1Franka_msgsErrorRecoveryResultCodecIdentity = "UWVMROS1_6f06297f59f06dc46e3f983b72101ae3c25cd054bca44cea1f6dd11a9aaa7794"
encodeRos1Franka_msgsErrorRecoveryResult :: Ros1Franka_msgsErrorRecoveryResult -> Either Word32 B.ByteString
encodeRos1Franka_msgsErrorRecoveryResult value = do
  W.bounded 0 []
readRos1Franka_msgsErrorRecoveryResult :: W.Decoder Ros1Franka_msgsErrorRecoveryResult
readRos1Franka_msgsErrorRecoveryResult = do
  let value = Ros1Franka_msgsErrorRecoveryResult 
  case encodeRos1Franka_msgsErrorRecoveryResult value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Franka_msgsErrorRecoveryResult :: B.ByteString -> Either Word32 Ros1Franka_msgsErrorRecoveryResult
decodeRos1Franka_msgsErrorRecoveryResult = W.runDecoder 0 readRos1Franka_msgsErrorRecoveryResult
instance Canonical Ros1Franka_msgsErrorRecoveryResult where
  maximumBytes _ = 0
  encodeValue = encodeRos1Franka_msgsErrorRecoveryResult
  readValue = readRos1Franka_msgsErrorRecoveryResult
data Ros1Franka_msgsErrorRecoveryFeedback = Ros1Franka_msgsErrorRecoveryFeedback deriving (Eq, Show)
defaultRos1Franka_msgsErrorRecoveryFeedback :: Ros1Franka_msgsErrorRecoveryFeedback
defaultRos1Franka_msgsErrorRecoveryFeedback = Ros1Franka_msgsErrorRecoveryFeedback 
ros1Franka_msgsErrorRecoveryFeedbackCodecIdentity :: String
ros1Franka_msgsErrorRecoveryFeedbackCodecIdentity = "UWVMROS1_3faee6d8afdc0524598cec0fe30fd51bd723e8e44849f035368723e59be87a21"
encodeRos1Franka_msgsErrorRecoveryFeedback :: Ros1Franka_msgsErrorRecoveryFeedback -> Either Word32 B.ByteString
encodeRos1Franka_msgsErrorRecoveryFeedback value = do
  W.bounded 0 []
readRos1Franka_msgsErrorRecoveryFeedback :: W.Decoder Ros1Franka_msgsErrorRecoveryFeedback
readRos1Franka_msgsErrorRecoveryFeedback = do
  let value = Ros1Franka_msgsErrorRecoveryFeedback 
  case encodeRos1Franka_msgsErrorRecoveryFeedback value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Franka_msgsErrorRecoveryFeedback :: B.ByteString -> Either Word32 Ros1Franka_msgsErrorRecoveryFeedback
decodeRos1Franka_msgsErrorRecoveryFeedback = W.runDecoder 0 readRos1Franka_msgsErrorRecoveryFeedback
instance Canonical Ros1Franka_msgsErrorRecoveryFeedback where
  maximumBytes _ = 0
  encodeValue = encodeRos1Franka_msgsErrorRecoveryFeedback
  readValue = readRos1Franka_msgsErrorRecoveryFeedback
data Ros1Franka_msgsErrors = Ros1Franka_msgsErrors
  {
    -- | \@brief franka_msgs/Errors.joint_position_limits_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_joint_position_limits_violation :: Bool
  ,
    -- | \@brief franka_msgs/Errors.cartesian_position_limits_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_cartesian_position_limits_violation :: Bool
  ,
    -- | \@brief franka_msgs/Errors.self_collision_avoidance_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_self_collision_avoidance_violation :: Bool
  ,
    -- | \@brief franka_msgs/Errors.joint_velocity_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_joint_velocity_violation :: Bool
  ,
    -- | \@brief franka_msgs/Errors.cartesian_velocity_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_cartesian_velocity_violation :: Bool
  ,
    -- | \@brief franka_msgs/Errors.force_control_safety_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_force_control_safety_violation :: Bool
  ,
    -- | \@brief franka_msgs/Errors.joint_reflex: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_joint_reflex :: Bool
  ,
    -- | \@brief franka_msgs/Errors.cartesian_reflex: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_cartesian_reflex :: Bool
  ,
    -- | \@brief franka_msgs/Errors.max_goal_pose_deviation_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_max_goal_pose_deviation_violation :: Bool
  ,
    -- | \@brief franka_msgs/Errors.max_path_pose_deviation_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_max_path_pose_deviation_violation :: Bool
  ,
    -- | \@brief franka_msgs/Errors.cartesian_velocity_profile_safety_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_cartesian_velocity_profile_safety_violation :: Bool
  ,
    -- | \@brief franka_msgs/Errors.joint_position_motion_generator_start_pose_invalid: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_joint_position_motion_generator_start_pose_invalid :: Bool
  ,
    -- | \@brief franka_msgs/Errors.joint_motion_generator_position_limits_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_joint_motion_generator_position_limits_violation :: Bool
  ,
    -- | \@brief franka_msgs/Errors.joint_motion_generator_velocity_limits_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_joint_motion_generator_velocity_limits_violation :: Bool
  ,
    -- | \@brief franka_msgs/Errors.joint_motion_generator_velocity_discontinuity: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_joint_motion_generator_velocity_discontinuity :: Bool
  ,
    -- | \@brief franka_msgs/Errors.joint_motion_generator_acceleration_discontinuity: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_joint_motion_generator_acceleration_discontinuity :: Bool
  ,
    -- | \@brief franka_msgs/Errors.cartesian_position_motion_generator_start_pose_invalid: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_cartesian_position_motion_generator_start_pose_invalid :: Bool
  ,
    -- | \@brief franka_msgs/Errors.cartesian_motion_generator_elbow_limit_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_cartesian_motion_generator_elbow_limit_violation :: Bool
  ,
    -- | \@brief franka_msgs/Errors.cartesian_motion_generator_velocity_limits_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_cartesian_motion_generator_velocity_limits_violation :: Bool
  ,
    -- | \@brief franka_msgs/Errors.cartesian_motion_generator_velocity_discontinuity: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_cartesian_motion_generator_velocity_discontinuity :: Bool
  ,
    -- | \@brief franka_msgs/Errors.cartesian_motion_generator_acceleration_discontinuity: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_cartesian_motion_generator_acceleration_discontinuity :: Bool
  ,
    -- | \@brief franka_msgs/Errors.cartesian_motion_generator_elbow_sign_inconsistent: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_cartesian_motion_generator_elbow_sign_inconsistent :: Bool
  ,
    -- | \@brief franka_msgs/Errors.cartesian_motion_generator_start_elbow_invalid: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_cartesian_motion_generator_start_elbow_invalid :: Bool
  ,
    -- | \@brief franka_msgs/Errors.cartesian_motion_generator_joint_position_limits_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_cartesian_motion_generator_joint_position_limits_violation :: Bool
  ,
    -- | \@brief franka_msgs/Errors.cartesian_motion_generator_joint_velocity_limits_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_cartesian_motion_generator_joint_velocity_limits_violation :: Bool
  ,
    -- | \@brief franka_msgs/Errors.cartesian_motion_generator_joint_velocity_discontinuity: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_cartesian_motion_generator_joint_velocity_discontinuity :: Bool
  ,
    -- | \@brief franka_msgs/Errors.cartesian_motion_generator_joint_acceleration_discontinuity: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_cartesian_motion_generator_joint_acceleration_discontinuity :: Bool
  ,
    -- | \@brief franka_msgs/Errors.cartesian_position_motion_generator_invalid_frame: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_cartesian_position_motion_generator_invalid_frame :: Bool
  ,
    -- | \@brief franka_msgs/Errors.force_controller_desired_force_tolerance_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_force_controller_desired_force_tolerance_violation :: Bool
  ,
    -- | \@brief franka_msgs/Errors.controller_torque_discontinuity: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_controller_torque_discontinuity :: Bool
  ,
    -- | \@brief franka_msgs/Errors.start_elbow_sign_inconsistent: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_start_elbow_sign_inconsistent :: Bool
  ,
    -- | \@brief franka_msgs/Errors.communication_constraints_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_communication_constraints_violation :: Bool
  ,
    -- | \@brief franka_msgs/Errors.power_limit_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_power_limit_violation :: Bool
  ,
    -- | \@brief franka_msgs/Errors.joint_p2p_insufficient_torque_for_planning: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_joint_p2p_insufficient_torque_for_planning :: Bool
  ,
    -- | \@brief franka_msgs/Errors.tau_j_range_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_tau_j_range_violation :: Bool
  ,
    -- | \@brief franka_msgs/Errors.instability_detected: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_instability_detected :: Bool
  ,
    -- | \@brief franka_msgs/Errors.joint_move_in_wrong_direction: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_joint_move_in_wrong_direction :: Bool
  ,
    -- | \@brief franka_msgs/Errors.cartesian_spline_motion_generator_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_cartesian_spline_motion_generator_violation :: Bool
  ,
    -- | \@brief franka_msgs/Errors.joint_via_motion_generator_planning_joint_limit_violation: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_joint_via_motion_generator_planning_joint_limit_violation :: Bool
  ,
    -- | \@brief franka_msgs/Errors.base_acceleration_initialization_timeout: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_base_acceleration_initialization_timeout :: Bool
  ,
    -- | \@brief franka_msgs/Errors.base_acceleration_invalid_reading: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsErrors; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsErrors_base_acceleration_invalid_reading :: Bool
  } deriving (Eq, Show)
defaultRos1Franka_msgsErrors :: Ros1Franka_msgsErrors
defaultRos1Franka_msgsErrors = Ros1Franka_msgsErrors (False) (False) (False) (False) (False) (False) (False) (False) (False) (False)
        (False) (False) (False) (False) (False) (False) (False) (False) (False) (False) (False) (False) (False) (False) (False)
        (False) (False) (False) (False) (False) (False) (False) (False) (False) (False) (False) (False) (False) (False) (False)
        (False)
ros1Franka_msgsErrorsCodecIdentity :: String
ros1Franka_msgsErrorsCodecIdentity = "UWVMROS1_80e3d1157d53bf80d4db3621f9f22b35a1ef665382974599ff016709c6a629ca"
encodeRos1Franka_msgsErrors :: Ros1Franka_msgsErrors -> Either Word32 B.ByteString
encodeRos1Franka_msgsErrors value = do
  b0 <- W.encodeBool (ros1Franka_msgsErrors_joint_position_limits_violation value)
  b1 <- W.encodeBool (ros1Franka_msgsErrors_cartesian_position_limits_violation value)
  b2 <- W.encodeBool (ros1Franka_msgsErrors_self_collision_avoidance_violation value)
  b3 <- W.encodeBool (ros1Franka_msgsErrors_joint_velocity_violation value)
  b4 <- W.encodeBool (ros1Franka_msgsErrors_cartesian_velocity_violation value)
  b5 <- W.encodeBool (ros1Franka_msgsErrors_force_control_safety_violation value)
  b6 <- W.encodeBool (ros1Franka_msgsErrors_joint_reflex value)
  b7 <- W.encodeBool (ros1Franka_msgsErrors_cartesian_reflex value)
  b8 <- W.encodeBool (ros1Franka_msgsErrors_max_goal_pose_deviation_violation value)
  b9 <- W.encodeBool (ros1Franka_msgsErrors_max_path_pose_deviation_violation value)
  b10 <- W.encodeBool (ros1Franka_msgsErrors_cartesian_velocity_profile_safety_violation value)
  b11 <- W.encodeBool (ros1Franka_msgsErrors_joint_position_motion_generator_start_pose_invalid value)
  b12 <- W.encodeBool (ros1Franka_msgsErrors_joint_motion_generator_position_limits_violation value)
  b13 <- W.encodeBool (ros1Franka_msgsErrors_joint_motion_generator_velocity_limits_violation value)
  b14 <- W.encodeBool (ros1Franka_msgsErrors_joint_motion_generator_velocity_discontinuity value)
  b15 <- W.encodeBool (ros1Franka_msgsErrors_joint_motion_generator_acceleration_discontinuity value)
  b16 <- W.encodeBool (ros1Franka_msgsErrors_cartesian_position_motion_generator_start_pose_invalid value)
  b17 <- W.encodeBool (ros1Franka_msgsErrors_cartesian_motion_generator_elbow_limit_violation value)
  b18 <- W.encodeBool (ros1Franka_msgsErrors_cartesian_motion_generator_velocity_limits_violation value)
  b19 <- W.encodeBool (ros1Franka_msgsErrors_cartesian_motion_generator_velocity_discontinuity value)
  b20 <- W.encodeBool (ros1Franka_msgsErrors_cartesian_motion_generator_acceleration_discontinuity value)
  b21 <- W.encodeBool (ros1Franka_msgsErrors_cartesian_motion_generator_elbow_sign_inconsistent value)
  b22 <- W.encodeBool (ros1Franka_msgsErrors_cartesian_motion_generator_start_elbow_invalid value)
  b23 <- W.encodeBool (ros1Franka_msgsErrors_cartesian_motion_generator_joint_position_limits_violation value)
  b24 <- W.encodeBool (ros1Franka_msgsErrors_cartesian_motion_generator_joint_velocity_limits_violation value)
  b25 <- W.encodeBool (ros1Franka_msgsErrors_cartesian_motion_generator_joint_velocity_discontinuity value)
  b26 <- W.encodeBool (ros1Franka_msgsErrors_cartesian_motion_generator_joint_acceleration_discontinuity value)
  b27 <- W.encodeBool (ros1Franka_msgsErrors_cartesian_position_motion_generator_invalid_frame value)
  b28 <- W.encodeBool (ros1Franka_msgsErrors_force_controller_desired_force_tolerance_violation value)
  b29 <- W.encodeBool (ros1Franka_msgsErrors_controller_torque_discontinuity value)
  b30 <- W.encodeBool (ros1Franka_msgsErrors_start_elbow_sign_inconsistent value)
  b31 <- W.encodeBool (ros1Franka_msgsErrors_communication_constraints_violation value)
  b32 <- W.encodeBool (ros1Franka_msgsErrors_power_limit_violation value)
  b33 <- W.encodeBool (ros1Franka_msgsErrors_joint_p2p_insufficient_torque_for_planning value)
  b34 <- W.encodeBool (ros1Franka_msgsErrors_tau_j_range_violation value)
  b35 <- W.encodeBool (ros1Franka_msgsErrors_instability_detected value)
  b36 <- W.encodeBool (ros1Franka_msgsErrors_joint_move_in_wrong_direction value)
  b37 <- W.encodeBool (ros1Franka_msgsErrors_cartesian_spline_motion_generator_violation value)
  b38 <- W.encodeBool (ros1Franka_msgsErrors_joint_via_motion_generator_planning_joint_limit_violation value)
  b39 <- W.encodeBool (ros1Franka_msgsErrors_base_acceleration_initialization_timeout value)
  b40 <- W.encodeBool (ros1Franka_msgsErrors_base_acceleration_invalid_reading value)
  W.bounded 41 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15, b16, b17, b18, b19, b20, b21, b22, b23, b24,
          b25, b26, b27, b28, b29, b30, b31, b32, b33, b34, b35, b36, b37, b38, b39, b40]
readRos1Franka_msgsErrors :: W.Decoder Ros1Franka_msgsErrors
readRos1Franka_msgsErrors = do
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
  a36 <- W.boolean
  a37 <- W.boolean
  a38 <- W.boolean
  a39 <- W.boolean
  a40 <- W.boolean
  let value = Ros1Franka_msgsErrors a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24 a25
          a26 a27 a28 a29 a30 a31 a32 a33 a34 a35 a36 a37 a38 a39 a40
  case encodeRos1Franka_msgsErrors value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Franka_msgsErrors :: B.ByteString -> Either Word32 Ros1Franka_msgsErrors
decodeRos1Franka_msgsErrors = W.runDecoder 41 readRos1Franka_msgsErrors
instance Canonical Ros1Franka_msgsErrors where
  maximumBytes _ = 41
  encodeValue = encodeRos1Franka_msgsErrors
  readValue = readRos1Franka_msgsErrors
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
defaultRos1Time :: Ros1Time
defaultRos1Time = Ros1Time (0) (0)
ros1TimeCodecIdentity :: String
ros1TimeCodecIdentity = "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0"
encodeRos1Time :: Ros1Time -> Either Word32 B.ByteString
encodeRos1Time value = do
  if (ros1Time_nsec value) >= 1000000000 then Left 22 else Right ()
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Time_sec value))
  b1 <- W.encodeUnsigned 4 (fromIntegral (ros1Time_nsec value))
  W.bounded 8 [b0, b1]
readRos1Time :: W.Decoder Ros1Time
readRos1Time = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- fromIntegral <$> W.unsigned 4
  let value = Ros1Time a0 a1
  case encodeRos1Time value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Time :: B.ByteString -> Either Word32 Ros1Time
decodeRos1Time = W.runDecoder 8 readRos1Time
instance Canonical Ros1Time where
  maximumBytes _ = 8
  encodeValue = encodeRos1Time
  readValue = readRos1Time
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
defaultRos1Std_msgsHeader :: Ros1Std_msgsHeader
defaultRos1Std_msgsHeader = Ros1Std_msgsHeader (0) (defaultRos1Time) (T.empty)
ros1Std_msgsHeaderCodecIdentity :: String
ros1Std_msgsHeaderCodecIdentity = "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435"
encodeRos1Std_msgsHeader :: Ros1Std_msgsHeader -> Either Word32 B.ByteString
encodeRos1Std_msgsHeader value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Std_msgsHeader_seq value))
  b1 <- encodeRos1Time (ros1Std_msgsHeader_stamp value)
  b2 <- W.encodeText 128 True (ros1Std_msgsHeader_frame_id value)
  W.bounded 144 [b0, b1, b2]
readRos1Std_msgsHeader :: W.Decoder Ros1Std_msgsHeader
readRos1Std_msgsHeader = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- readRos1Time
  a2 <- W.text 128 True
  let value = Ros1Std_msgsHeader a0 a1 a2
  case encodeRos1Std_msgsHeader value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Std_msgsHeader :: B.ByteString -> Either Word32 Ros1Std_msgsHeader
decodeRos1Std_msgsHeader = W.runDecoder 144 readRos1Std_msgsHeader
instance Canonical Ros1Std_msgsHeader where
  maximumBytes _ = 144
  encodeValue = encodeRos1Std_msgsHeader
  readValue = readRos1Std_msgsHeader
data Ros1Franka_msgsFrankaState = Ros1Franka_msgsFrankaState
  {
    -- | \@brief franka_msgs/FrankaState.header: std_msgs/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief franka_msgs/FrankaState.cartesian_collision: float64; exactly 6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_cartesian_collision :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.cartesian_contact: float64; exactly 6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_cartesian_contact :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.q: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_q :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.q_d: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_q_d :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.dq: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_dq :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.dq_d: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_dq_d :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.ddq_d: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_ddq_d :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.theta: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_theta :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.dtheta: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_dtheta :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.tau_J: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_tau_J :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.dtau_J: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_dtau_J :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.tau_J_d: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_tau_J_d :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.K_F_ext_hat_K: float64; exactly 6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_K_F_ext_hat_K :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.elbow: float64; exactly 2 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_elbow :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.elbow_d: float64; exactly 2 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_elbow_d :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.elbow_c: float64; exactly 2 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_elbow_c :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.delbow_c: float64; exactly 2 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_delbow_c :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.ddelbow_c: float64; exactly 2 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_ddelbow_c :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.joint_collision: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_joint_collision :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.joint_contact: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_joint_contact :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.O_F_ext_hat_K: float64; exactly 6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_O_F_ext_hat_K :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.O_dP_EE_d: float64; exactly 6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_O_dP_EE_d :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.O_ddP_O: float64; exactly 3 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_O_ddP_O :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.O_dP_EE_c: float64; exactly 6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_O_dP_EE_c :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.O_ddP_EE_c: float64; exactly 6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_O_ddP_EE_c :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.tau_ext_hat_filtered: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_tau_ext_hat_filtered :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.m_ee: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_m_ee :: Double
  ,
    -- | \@brief franka_msgs/FrankaState.F_x_Cee: float64; exactly 3 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_F_x_Cee :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.I_ee: float64; exactly 9 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_I_ee :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.m_load: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_m_load :: Double
  ,
    -- | \@brief franka_msgs/FrankaState.F_x_Cload: float64; exactly 3 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_F_x_Cload :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.I_load: float64; exactly 9 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_I_load :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.m_total: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_m_total :: Double
  ,
    -- | \@brief franka_msgs/FrankaState.F_x_Ctotal: float64; exactly 3 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_F_x_Ctotal :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.I_total: float64; exactly 9 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_I_total :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.O_T_EE: float64; exactly 16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_O_T_EE :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.O_T_EE_d: float64; exactly 16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_O_T_EE_d :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.O_T_EE_c: float64; exactly 16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_O_T_EE_c :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.F_T_EE: float64; exactly 16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_F_T_EE :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.F_T_NE: float64; exactly 16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_F_T_NE :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.NE_T_EE: float64; exactly 16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_NE_T_EE :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.EE_T_K: float64; exactly 16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_EE_T_K :: [Double]
  ,
    -- | \@brief franka_msgs/FrankaState.time: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_time :: Double
  ,
    -- | \@brief franka_msgs/FrankaState.control_command_success_rate: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_control_command_success_rate :: Double
  ,
    -- | \@brief franka_msgs/FrankaState.robot_mode: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_robot_mode :: Word8
  ,
    -- | \@brief franka_msgs/FrankaState.current_errors: franka_msgs/Errors.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_current_errors :: Ros1Franka_msgsErrors
  ,
    -- | \@brief franka_msgs/FrankaState.last_motion_errors: franka_msgs/Errors.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsFrankaState; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsFrankaState_last_motion_errors :: Ros1Franka_msgsErrors
  } deriving (Eq, Show)
defaultRos1Franka_msgsFrankaState :: Ros1Franka_msgsFrankaState
defaultRos1Franka_msgsFrankaState = Ros1Franka_msgsFrankaState (defaultRos1Std_msgsHeader) (replicate 6 (0)) (replicate 6 (0))
        (replicate 7 (0)) (replicate 7 (0)) (replicate 7 (0)) (replicate 7 (0)) (replicate 7 (0)) (replicate 7 (0)) (replicate 7
        (0)) (replicate 7 (0)) (replicate 7 (0)) (replicate 7 (0)) (replicate 6 (0)) (replicate 2 (0)) (replicate 2 (0)) (replicate
        2 (0)) (replicate 2 (0)) (replicate 2 (0)) (replicate 7 (0)) (replicate 7 (0)) (replicate 6 (0)) (replicate 6 (0))
        (replicate 3 (0)) (replicate 6 (0)) (replicate 6 (0)) (replicate 7 (0)) (0) (replicate 3 (0)) (replicate 9 (0)) (0)
        (replicate 3 (0)) (replicate 9 (0)) (0) (replicate 3 (0)) (replicate 9 (0)) (replicate 16 (0)) (replicate 16 (0)) (replicate
        16 (0)) (replicate 16 (0)) (replicate 16 (0)) (replicate 16 (0)) (replicate 16 (0)) (0) (0) (0)
        (defaultRos1Franka_msgsErrors) (defaultRos1Franka_msgsErrors)
ros1Franka_msgsFrankaStateCodecIdentity :: String
ros1Franka_msgsFrankaStateCodecIdentity = "UWVMROS1_79f22f36ce2c11f519ee29e65a248ec1b67240e27712b2667e9b803a2562ee71"
ros1Franka_msgsFrankaState_ROBOT_MODE_OTHER :: Word8
ros1Franka_msgsFrankaState_ROBOT_MODE_OTHER = 0
ros1Franka_msgsFrankaState_ROBOT_MODE_IDLE :: Word8
ros1Franka_msgsFrankaState_ROBOT_MODE_IDLE = 1
ros1Franka_msgsFrankaState_ROBOT_MODE_MOVE :: Word8
ros1Franka_msgsFrankaState_ROBOT_MODE_MOVE = 2
ros1Franka_msgsFrankaState_ROBOT_MODE_GUIDING :: Word8
ros1Franka_msgsFrankaState_ROBOT_MODE_GUIDING = 3
ros1Franka_msgsFrankaState_ROBOT_MODE_REFLEX :: Word8
ros1Franka_msgsFrankaState_ROBOT_MODE_REFLEX = 4
ros1Franka_msgsFrankaState_ROBOT_MODE_USER_STOPPED :: Word8
ros1Franka_msgsFrankaState_ROBOT_MODE_USER_STOPPED = 5
ros1Franka_msgsFrankaState_ROBOT_MODE_AUTOMATIC_ERROR_RECOVERY :: Word8
ros1Franka_msgsFrankaState_ROBOT_MODE_AUTOMATIC_ERROR_RECOVERY = 6
encodeRos1Franka_msgsFrankaState :: Ros1Franka_msgsFrankaState -> Either Word32 B.ByteString
encodeRos1Franka_msgsFrankaState value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Franka_msgsFrankaState_header value)
  if length (ros1Franka_msgsFrankaState_cartesian_collision value) /= 6 then Left 22 else Right ()
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_cartesian_collision value)
  if length (ros1Franka_msgsFrankaState_cartesian_contact value) /= 6 then Left 22 else Right ()
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_cartesian_contact value)
  if length (ros1Franka_msgsFrankaState_q value) /= 7 then Left 22 else Right ()
  b3 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_q value)
  if length (ros1Franka_msgsFrankaState_q_d value) /= 7 then Left 22 else Right ()
  b4 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_q_d value)
  if length (ros1Franka_msgsFrankaState_dq value) /= 7 then Left 22 else Right ()
  b5 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_dq value)
  if length (ros1Franka_msgsFrankaState_dq_d value) /= 7 then Left 22 else Right ()
  b6 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_dq_d value)
  if length (ros1Franka_msgsFrankaState_ddq_d value) /= 7 then Left 22 else Right ()
  b7 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_ddq_d value)
  if length (ros1Franka_msgsFrankaState_theta value) /= 7 then Left 22 else Right ()
  b8 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_theta value)
  if length (ros1Franka_msgsFrankaState_dtheta value) /= 7 then Left 22 else Right ()
  b9 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_dtheta value)
  if length (ros1Franka_msgsFrankaState_tau_J value) /= 7 then Left 22 else Right ()
  b10 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_tau_J value)
  if length (ros1Franka_msgsFrankaState_dtau_J value) /= 7 then Left 22 else Right ()
  b11 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_dtau_J value)
  if length (ros1Franka_msgsFrankaState_tau_J_d value) /= 7 then Left 22 else Right ()
  b12 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_tau_J_d value)
  if length (ros1Franka_msgsFrankaState_K_F_ext_hat_K value) /= 6 then Left 22 else Right ()
  b13 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_K_F_ext_hat_K value)
  if length (ros1Franka_msgsFrankaState_elbow value) /= 2 then Left 22 else Right ()
  b14 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_elbow value)
  if length (ros1Franka_msgsFrankaState_elbow_d value) /= 2 then Left 22 else Right ()
  b15 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_elbow_d value)
  if length (ros1Franka_msgsFrankaState_elbow_c value) /= 2 then Left 22 else Right ()
  b16 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_elbow_c value)
  if length (ros1Franka_msgsFrankaState_delbow_c value) /= 2 then Left 22 else Right ()
  b17 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_delbow_c value)
  if length (ros1Franka_msgsFrankaState_ddelbow_c value) /= 2 then Left 22 else Right ()
  b18 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_ddelbow_c value)
  if length (ros1Franka_msgsFrankaState_joint_collision value) /= 7 then Left 22 else Right ()
  b19 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_joint_collision value)
  if length (ros1Franka_msgsFrankaState_joint_contact value) /= 7 then Left 22 else Right ()
  b20 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_joint_contact value)
  if length (ros1Franka_msgsFrankaState_O_F_ext_hat_K value) /= 6 then Left 22 else Right ()
  b21 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_O_F_ext_hat_K value)
  if length (ros1Franka_msgsFrankaState_O_dP_EE_d value) /= 6 then Left 22 else Right ()
  b22 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_O_dP_EE_d value)
  if length (ros1Franka_msgsFrankaState_O_ddP_O value) /= 3 then Left 22 else Right ()
  b23 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_O_ddP_O value)
  if length (ros1Franka_msgsFrankaState_O_dP_EE_c value) /= 6 then Left 22 else Right ()
  b24 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_O_dP_EE_c value)
  if length (ros1Franka_msgsFrankaState_O_ddP_EE_c value) /= 6 then Left 22 else Right ()
  b25 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_O_ddP_EE_c value)
  if length (ros1Franka_msgsFrankaState_tau_ext_hat_filtered value) /= 7 then Left 22 else Right ()
  b26 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_tau_ext_hat_filtered value)
  b27 <- W.encodeFloat64 (ros1Franka_msgsFrankaState_m_ee value)
  if length (ros1Franka_msgsFrankaState_F_x_Cee value) /= 3 then Left 22 else Right ()
  b28 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_F_x_Cee value)
  if length (ros1Franka_msgsFrankaState_I_ee value) /= 9 then Left 22 else Right ()
  b29 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_I_ee value)
  b30 <- W.encodeFloat64 (ros1Franka_msgsFrankaState_m_load value)
  if length (ros1Franka_msgsFrankaState_F_x_Cload value) /= 3 then Left 22 else Right ()
  b31 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_F_x_Cload value)
  if length (ros1Franka_msgsFrankaState_I_load value) /= 9 then Left 22 else Right ()
  b32 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_I_load value)
  b33 <- W.encodeFloat64 (ros1Franka_msgsFrankaState_m_total value)
  if length (ros1Franka_msgsFrankaState_F_x_Ctotal value) /= 3 then Left 22 else Right ()
  b34 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_F_x_Ctotal value)
  if length (ros1Franka_msgsFrankaState_I_total value) /= 9 then Left 22 else Right ()
  b35 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_I_total value)
  if length (ros1Franka_msgsFrankaState_O_T_EE value) /= 16 then Left 22 else Right ()
  b36 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_O_T_EE value)
  if length (ros1Franka_msgsFrankaState_O_T_EE_d value) /= 16 then Left 22 else Right ()
  b37 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_O_T_EE_d value)
  if length (ros1Franka_msgsFrankaState_O_T_EE_c value) /= 16 then Left 22 else Right ()
  b38 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_O_T_EE_c value)
  if length (ros1Franka_msgsFrankaState_F_T_EE value) /= 16 then Left 22 else Right ()
  b39 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_F_T_EE value)
  if length (ros1Franka_msgsFrankaState_F_T_NE value) /= 16 then Left 22 else Right ()
  b40 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_F_T_NE value)
  if length (ros1Franka_msgsFrankaState_NE_T_EE value) /= 16 then Left 22 else Right ()
  b41 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_NE_T_EE value)
  if length (ros1Franka_msgsFrankaState_EE_T_K value) /= 16 then Left 22 else Right ()
  b42 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsFrankaState_EE_T_K value)
  b43 <- W.encodeFloat64 (ros1Franka_msgsFrankaState_time value)
  b44 <- W.encodeFloat64 (ros1Franka_msgsFrankaState_control_command_success_rate value)
  b45 <- W.encodeUnsigned 1 (fromIntegral (ros1Franka_msgsFrankaState_robot_mode value))
  b46 <- encodeRos1Franka_msgsErrors (ros1Franka_msgsFrankaState_current_errors value)
  b47 <- encodeRos1Franka_msgsErrors (ros1Franka_msgsFrankaState_last_motion_errors value)
  W.bounded 2619 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15, b16, b17, b18, b19, b20, b21, b22, b23, b24,
          b25, b26, b27, b28, b29, b30, b31, b32, b33, b34, b35, b36, b37, b38, b39, b40, b41, b42, b43, b44, b45, b46, b47]
readRos1Franka_msgsFrankaState :: W.Decoder Ros1Franka_msgsFrankaState
readRos1Franka_msgsFrankaState = do
  a0 <- readRos1Std_msgsHeader
  a1 <- replicateM 6 (W.float64)
  a2 <- replicateM 6 (W.float64)
  a3 <- replicateM 7 (W.float64)
  a4 <- replicateM 7 (W.float64)
  a5 <- replicateM 7 (W.float64)
  a6 <- replicateM 7 (W.float64)
  a7 <- replicateM 7 (W.float64)
  a8 <- replicateM 7 (W.float64)
  a9 <- replicateM 7 (W.float64)
  a10 <- replicateM 7 (W.float64)
  a11 <- replicateM 7 (W.float64)
  a12 <- replicateM 7 (W.float64)
  a13 <- replicateM 6 (W.float64)
  a14 <- replicateM 2 (W.float64)
  a15 <- replicateM 2 (W.float64)
  a16 <- replicateM 2 (W.float64)
  a17 <- replicateM 2 (W.float64)
  a18 <- replicateM 2 (W.float64)
  a19 <- replicateM 7 (W.float64)
  a20 <- replicateM 7 (W.float64)
  a21 <- replicateM 6 (W.float64)
  a22 <- replicateM 6 (W.float64)
  a23 <- replicateM 3 (W.float64)
  a24 <- replicateM 6 (W.float64)
  a25 <- replicateM 6 (W.float64)
  a26 <- replicateM 7 (W.float64)
  a27 <- W.float64
  a28 <- replicateM 3 (W.float64)
  a29 <- replicateM 9 (W.float64)
  a30 <- W.float64
  a31 <- replicateM 3 (W.float64)
  a32 <- replicateM 9 (W.float64)
  a33 <- W.float64
  a34 <- replicateM 3 (W.float64)
  a35 <- replicateM 9 (W.float64)
  a36 <- replicateM 16 (W.float64)
  a37 <- replicateM 16 (W.float64)
  a38 <- replicateM 16 (W.float64)
  a39 <- replicateM 16 (W.float64)
  a40 <- replicateM 16 (W.float64)
  a41 <- replicateM 16 (W.float64)
  a42 <- replicateM 16 (W.float64)
  a43 <- W.float64
  a44 <- W.float64
  a45 <- fromIntegral <$> W.unsigned 1
  a46 <- readRos1Franka_msgsErrors
  a47 <- readRos1Franka_msgsErrors
  let value = Ros1Franka_msgsFrankaState a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24
          a25 a26 a27 a28 a29 a30 a31 a32 a33 a34 a35 a36 a37 a38 a39 a40 a41 a42 a43 a44 a45 a46 a47
  case encodeRos1Franka_msgsFrankaState value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Franka_msgsFrankaState :: B.ByteString -> Either Word32 Ros1Franka_msgsFrankaState
decodeRos1Franka_msgsFrankaState = W.runDecoder 2619 readRos1Franka_msgsFrankaState
instance Canonical Ros1Franka_msgsFrankaState where
  maximumBytes _ = 2619
  encodeValue = encodeRos1Franka_msgsFrankaState
  readValue = readRos1Franka_msgsFrankaState
data Ros1Franka_msgsSetCartesianImpedanceRequest = Ros1Franka_msgsSetCartesianImpedanceRequest
  {
    -- | \@brief franka_msgs/SetCartesianImpedanceRequest.cartesian_stiffness: float64; exactly 6 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsSetCartesianImpedanceRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsSetCartesianImpedanceRequest_cartesian_stiffness :: [Double]
  } deriving (Eq, Show)
defaultRos1Franka_msgsSetCartesianImpedanceRequest :: Ros1Franka_msgsSetCartesianImpedanceRequest
defaultRos1Franka_msgsSetCartesianImpedanceRequest = Ros1Franka_msgsSetCartesianImpedanceRequest (replicate 6 (0))
ros1Franka_msgsSetCartesianImpedanceRequestCodecIdentity :: String
ros1Franka_msgsSetCartesianImpedanceRequestCodecIdentity =
        "UWVMROS1_ff604aae9ab1ef36b5af107966e64ee2115ee17618a4ece6f15997c889cacbdf"
encodeRos1Franka_msgsSetCartesianImpedanceRequest :: Ros1Franka_msgsSetCartesianImpedanceRequest -> Either Word32 B.ByteString
encodeRos1Franka_msgsSetCartesianImpedanceRequest value = do
  if length (ros1Franka_msgsSetCartesianImpedanceRequest_cartesian_stiffness value) /= 6 then Left 22 else Right ()
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsSetCartesianImpedanceRequest_cartesian_stiffness value)
  W.bounded 48 [b0]
readRos1Franka_msgsSetCartesianImpedanceRequest :: W.Decoder Ros1Franka_msgsSetCartesianImpedanceRequest
readRos1Franka_msgsSetCartesianImpedanceRequest = do
  a0 <- replicateM 6 (W.float64)
  let value = Ros1Franka_msgsSetCartesianImpedanceRequest a0
  case encodeRos1Franka_msgsSetCartesianImpedanceRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Franka_msgsSetCartesianImpedanceRequest :: B.ByteString -> Either Word32 Ros1Franka_msgsSetCartesianImpedanceRequest
decodeRos1Franka_msgsSetCartesianImpedanceRequest = W.runDecoder 48 readRos1Franka_msgsSetCartesianImpedanceRequest
instance Canonical Ros1Franka_msgsSetCartesianImpedanceRequest where
  maximumBytes _ = 48
  encodeValue = encodeRos1Franka_msgsSetCartesianImpedanceRequest
  readValue = readRos1Franka_msgsSetCartesianImpedanceRequest
data Ros1Franka_msgsSetCartesianImpedanceResponse = Ros1Franka_msgsSetCartesianImpedanceResponse
  {
    -- | \@brief franka_msgs/SetCartesianImpedanceResponse.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsSetCartesianImpedanceResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsSetCartesianImpedanceResponse_success :: Bool
  ,
    -- | \@brief franka_msgs/SetCartesianImpedanceResponse.error: string; each string is 0..256 bytes; strict UTF-8 with
    -- | no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsSetCartesianImpedanceResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsSetCartesianImpedanceResponse_error :: T.Text
  } deriving (Eq, Show)
defaultRos1Franka_msgsSetCartesianImpedanceResponse :: Ros1Franka_msgsSetCartesianImpedanceResponse
defaultRos1Franka_msgsSetCartesianImpedanceResponse = Ros1Franka_msgsSetCartesianImpedanceResponse (False) (T.empty)
ros1Franka_msgsSetCartesianImpedanceResponseCodecIdentity :: String
ros1Franka_msgsSetCartesianImpedanceResponseCodecIdentity =
        "UWVMROS1_b091d2fe98c84528460ba3d84524c38355e725c161456edf0034e62c6f63ab5b"
encodeRos1Franka_msgsSetCartesianImpedanceResponse :: Ros1Franka_msgsSetCartesianImpedanceResponse -> Either Word32 B.ByteString
encodeRos1Franka_msgsSetCartesianImpedanceResponse value = do
  b0 <- W.encodeBool (ros1Franka_msgsSetCartesianImpedanceResponse_success value)
  b1 <- W.encodeText 256 True (ros1Franka_msgsSetCartesianImpedanceResponse_error value)
  W.bounded 261 [b0, b1]
readRos1Franka_msgsSetCartesianImpedanceResponse :: W.Decoder Ros1Franka_msgsSetCartesianImpedanceResponse
readRos1Franka_msgsSetCartesianImpedanceResponse = do
  a0 <- W.boolean
  a1 <- W.text 256 True
  let value = Ros1Franka_msgsSetCartesianImpedanceResponse a0 a1
  case encodeRos1Franka_msgsSetCartesianImpedanceResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Franka_msgsSetCartesianImpedanceResponse :: B.ByteString -> Either Word32 Ros1Franka_msgsSetCartesianImpedanceResponse
decodeRos1Franka_msgsSetCartesianImpedanceResponse = W.runDecoder 261 readRos1Franka_msgsSetCartesianImpedanceResponse
instance Canonical Ros1Franka_msgsSetCartesianImpedanceResponse where
  maximumBytes _ = 261
  encodeValue = encodeRos1Franka_msgsSetCartesianImpedanceResponse
  readValue = readRos1Franka_msgsSetCartesianImpedanceResponse
data Ros1Franka_msgsSetEEFrameRequest = Ros1Franka_msgsSetEEFrameRequest
  {
    -- | \@brief franka_msgs/SetEEFrameRequest.NE_T_EE: float64; exactly 16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsSetEEFrameRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsSetEEFrameRequest_NE_T_EE :: [Double]
  } deriving (Eq, Show)
defaultRos1Franka_msgsSetEEFrameRequest :: Ros1Franka_msgsSetEEFrameRequest
defaultRos1Franka_msgsSetEEFrameRequest = Ros1Franka_msgsSetEEFrameRequest (replicate 16 (0))
ros1Franka_msgsSetEEFrameRequestCodecIdentity :: String
ros1Franka_msgsSetEEFrameRequestCodecIdentity = "UWVMROS1_1bc740d3998a14dd6c0604d5024ebda2b4916a8497950841b14a8073c6c1ecfc"
encodeRos1Franka_msgsSetEEFrameRequest :: Ros1Franka_msgsSetEEFrameRequest -> Either Word32 B.ByteString
encodeRos1Franka_msgsSetEEFrameRequest value = do
  if length (ros1Franka_msgsSetEEFrameRequest_NE_T_EE value) /= 16 then Left 22 else Right ()
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsSetEEFrameRequest_NE_T_EE value)
  W.bounded 128 [b0]
readRos1Franka_msgsSetEEFrameRequest :: W.Decoder Ros1Franka_msgsSetEEFrameRequest
readRos1Franka_msgsSetEEFrameRequest = do
  a0 <- replicateM 16 (W.float64)
  let value = Ros1Franka_msgsSetEEFrameRequest a0
  case encodeRos1Franka_msgsSetEEFrameRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Franka_msgsSetEEFrameRequest :: B.ByteString -> Either Word32 Ros1Franka_msgsSetEEFrameRequest
decodeRos1Franka_msgsSetEEFrameRequest = W.runDecoder 128 readRos1Franka_msgsSetEEFrameRequest
instance Canonical Ros1Franka_msgsSetEEFrameRequest where
  maximumBytes _ = 128
  encodeValue = encodeRos1Franka_msgsSetEEFrameRequest
  readValue = readRos1Franka_msgsSetEEFrameRequest
data Ros1Franka_msgsSetEEFrameResponse = Ros1Franka_msgsSetEEFrameResponse
  {
    -- | \@brief franka_msgs/SetEEFrameResponse.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsSetEEFrameResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsSetEEFrameResponse_success :: Bool
  ,
    -- | \@brief franka_msgs/SetEEFrameResponse.error: string; each string is 0..256 bytes; strict UTF-8 with no
    -- | embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsSetEEFrameResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsSetEEFrameResponse_error :: T.Text
  } deriving (Eq, Show)
defaultRos1Franka_msgsSetEEFrameResponse :: Ros1Franka_msgsSetEEFrameResponse
defaultRos1Franka_msgsSetEEFrameResponse = Ros1Franka_msgsSetEEFrameResponse (False) (T.empty)
ros1Franka_msgsSetEEFrameResponseCodecIdentity :: String
ros1Franka_msgsSetEEFrameResponseCodecIdentity = "UWVMROS1_b40c9595d57d6ed52ea4eca78e21f2c3d81f5a0afaad2420511211931f7d1c67"
encodeRos1Franka_msgsSetEEFrameResponse :: Ros1Franka_msgsSetEEFrameResponse -> Either Word32 B.ByteString
encodeRos1Franka_msgsSetEEFrameResponse value = do
  b0 <- W.encodeBool (ros1Franka_msgsSetEEFrameResponse_success value)
  b1 <- W.encodeText 256 True (ros1Franka_msgsSetEEFrameResponse_error value)
  W.bounded 261 [b0, b1]
readRos1Franka_msgsSetEEFrameResponse :: W.Decoder Ros1Franka_msgsSetEEFrameResponse
readRos1Franka_msgsSetEEFrameResponse = do
  a0 <- W.boolean
  a1 <- W.text 256 True
  let value = Ros1Franka_msgsSetEEFrameResponse a0 a1
  case encodeRos1Franka_msgsSetEEFrameResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Franka_msgsSetEEFrameResponse :: B.ByteString -> Either Word32 Ros1Franka_msgsSetEEFrameResponse
decodeRos1Franka_msgsSetEEFrameResponse = W.runDecoder 261 readRos1Franka_msgsSetEEFrameResponse
instance Canonical Ros1Franka_msgsSetEEFrameResponse where
  maximumBytes _ = 261
  encodeValue = encodeRos1Franka_msgsSetEEFrameResponse
  readValue = readRos1Franka_msgsSetEEFrameResponse
data Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest = Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest
  {
    -- | \@brief franka_msgs/SetForceTorqueCollisionBehaviorRequest.lower_torque_thresholds_nominal: float64; exactly 7
    -- | elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest_lower_torque_thresholds_nominal :: [Double]
  ,
    -- | \@brief franka_msgs/SetForceTorqueCollisionBehaviorRequest.upper_torque_thresholds_nominal: float64; exactly 7
    -- | elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest_upper_torque_thresholds_nominal :: [Double]
  ,
    -- | \@brief franka_msgs/SetForceTorqueCollisionBehaviorRequest.lower_force_thresholds_nominal: float64; exactly 6
    -- | elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest_lower_force_thresholds_nominal :: [Double]
  ,
    -- | \@brief franka_msgs/SetForceTorqueCollisionBehaviorRequest.upper_force_thresholds_nominal: float64; exactly 6
    -- | elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest_upper_force_thresholds_nominal :: [Double]
  } deriving (Eq, Show)
defaultRos1Franka_msgsSetForceTorqueCollisionBehaviorRequest :: Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest
defaultRos1Franka_msgsSetForceTorqueCollisionBehaviorRequest = Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest (replicate 7
        (0)) (replicate 7 (0)) (replicate 6 (0)) (replicate 6 (0))
ros1Franka_msgsSetForceTorqueCollisionBehaviorRequestCodecIdentity :: String
ros1Franka_msgsSetForceTorqueCollisionBehaviorRequestCodecIdentity =
        "UWVMROS1_2513f0ea74bf6a871a85ce00c0f822891f2c0bed890b87e35d25a637aa62c4b5"
encodeRos1Franka_msgsSetForceTorqueCollisionBehaviorRequest :: Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest -> Either
        Word32 B.ByteString
encodeRos1Franka_msgsSetForceTorqueCollisionBehaviorRequest value = do
  if length (ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest_lower_torque_thresholds_nominal value) /= 7 then Left 22 else
          Right ()
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e))
          (ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest_lower_torque_thresholds_nominal value)
  if length (ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest_upper_torque_thresholds_nominal value) /= 7 then Left 22 else
          Right ()
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e))
          (ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest_upper_torque_thresholds_nominal value)
  if length (ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest_lower_force_thresholds_nominal value) /= 6 then Left 22 else
          Right ()
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e))
          (ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest_lower_force_thresholds_nominal value)
  if length (ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest_upper_force_thresholds_nominal value) /= 6 then Left 22 else
          Right ()
  b3 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e))
          (ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest_upper_force_thresholds_nominal value)
  W.bounded 208 [b0, b1, b2, b3]
readRos1Franka_msgsSetForceTorqueCollisionBehaviorRequest :: W.Decoder Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest
readRos1Franka_msgsSetForceTorqueCollisionBehaviorRequest = do
  a0 <- replicateM 7 (W.float64)
  a1 <- replicateM 7 (W.float64)
  a2 <- replicateM 6 (W.float64)
  a3 <- replicateM 6 (W.float64)
  let value = Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest a0 a1 a2 a3
  case encodeRos1Franka_msgsSetForceTorqueCollisionBehaviorRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Franka_msgsSetForceTorqueCollisionBehaviorRequest :: B.ByteString -> Either Word32
        Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest
decodeRos1Franka_msgsSetForceTorqueCollisionBehaviorRequest = W.runDecoder 208
        readRos1Franka_msgsSetForceTorqueCollisionBehaviorRequest
instance Canonical Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest where
  maximumBytes _ = 208
  encodeValue = encodeRos1Franka_msgsSetForceTorqueCollisionBehaviorRequest
  readValue = readRos1Franka_msgsSetForceTorqueCollisionBehaviorRequest
data Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse = Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse
  {
    -- | \@brief franka_msgs/SetForceTorqueCollisionBehaviorResponse.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse_success :: Bool
  ,
    -- | \@brief franka_msgs/SetForceTorqueCollisionBehaviorResponse.error: string; each string is 0..256 bytes; strict
    -- | UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse_error :: T.Text
  } deriving (Eq, Show)
defaultRos1Franka_msgsSetForceTorqueCollisionBehaviorResponse :: Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse
defaultRos1Franka_msgsSetForceTorqueCollisionBehaviorResponse = Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse (False)
        (T.empty)
ros1Franka_msgsSetForceTorqueCollisionBehaviorResponseCodecIdentity :: String
ros1Franka_msgsSetForceTorqueCollisionBehaviorResponseCodecIdentity =
        "UWVMROS1_72418d73d504ae385d7ddce7e3cef859a104346dbfea7fc9da82e0f7e33ca2f5"
encodeRos1Franka_msgsSetForceTorqueCollisionBehaviorResponse :: Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse -> Either
        Word32 B.ByteString
encodeRos1Franka_msgsSetForceTorqueCollisionBehaviorResponse value = do
  b0 <- W.encodeBool (ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse_success value)
  b1 <- W.encodeText 256 True (ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse_error value)
  W.bounded 261 [b0, b1]
readRos1Franka_msgsSetForceTorqueCollisionBehaviorResponse :: W.Decoder Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse
readRos1Franka_msgsSetForceTorqueCollisionBehaviorResponse = do
  a0 <- W.boolean
  a1 <- W.text 256 True
  let value = Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse a0 a1
  case encodeRos1Franka_msgsSetForceTorqueCollisionBehaviorResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Franka_msgsSetForceTorqueCollisionBehaviorResponse :: B.ByteString -> Either Word32
        Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse
decodeRos1Franka_msgsSetForceTorqueCollisionBehaviorResponse = W.runDecoder 261
        readRos1Franka_msgsSetForceTorqueCollisionBehaviorResponse
instance Canonical Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse where
  maximumBytes _ = 261
  encodeValue = encodeRos1Franka_msgsSetForceTorqueCollisionBehaviorResponse
  readValue = readRos1Franka_msgsSetForceTorqueCollisionBehaviorResponse
data Ros1Franka_msgsSetFullCollisionBehaviorRequest = Ros1Franka_msgsSetFullCollisionBehaviorRequest
  {
    -- | \@brief franka_msgs/SetFullCollisionBehaviorRequest.lower_torque_thresholds_acceleration: float64; exactly 7
    -- | elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsSetFullCollisionBehaviorRequest_lower_torque_thresholds_acceleration :: [Double]
  ,
    -- | \@brief franka_msgs/SetFullCollisionBehaviorRequest.upper_torque_thresholds_acceleration: float64; exactly 7
    -- | elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsSetFullCollisionBehaviorRequest_upper_torque_thresholds_acceleration :: [Double]
  ,
    -- | \@brief franka_msgs/SetFullCollisionBehaviorRequest.lower_torque_thresholds_nominal: float64; exactly 7
    -- | elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsSetFullCollisionBehaviorRequest_lower_torque_thresholds_nominal :: [Double]
  ,
    -- | \@brief franka_msgs/SetFullCollisionBehaviorRequest.upper_torque_thresholds_nominal: float64; exactly 7
    -- | elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsSetFullCollisionBehaviorRequest_upper_torque_thresholds_nominal :: [Double]
  ,
    -- | \@brief franka_msgs/SetFullCollisionBehaviorRequest.lower_force_thresholds_acceleration: float64; exactly 6
    -- | elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsSetFullCollisionBehaviorRequest_lower_force_thresholds_acceleration :: [Double]
  ,
    -- | \@brief franka_msgs/SetFullCollisionBehaviorRequest.upper_force_thresholds_acceleration: float64; exactly 6
    -- | elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsSetFullCollisionBehaviorRequest_upper_force_thresholds_acceleration :: [Double]
  ,
    -- | \@brief franka_msgs/SetFullCollisionBehaviorRequest.lower_force_thresholds_nominal: float64; exactly 6
    -- | elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsSetFullCollisionBehaviorRequest_lower_force_thresholds_nominal :: [Double]
  ,
    -- | \@brief franka_msgs/SetFullCollisionBehaviorRequest.upper_force_thresholds_nominal: float64; exactly 6
    -- | elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsSetFullCollisionBehaviorRequest_upper_force_thresholds_nominal :: [Double]
  } deriving (Eq, Show)
defaultRos1Franka_msgsSetFullCollisionBehaviorRequest :: Ros1Franka_msgsSetFullCollisionBehaviorRequest
defaultRos1Franka_msgsSetFullCollisionBehaviorRequest = Ros1Franka_msgsSetFullCollisionBehaviorRequest (replicate 7 (0)) (replicate
        7 (0)) (replicate 7 (0)) (replicate 7 (0)) (replicate 6 (0)) (replicate 6 (0)) (replicate 6 (0)) (replicate 6 (0))
ros1Franka_msgsSetFullCollisionBehaviorRequestCodecIdentity :: String
ros1Franka_msgsSetFullCollisionBehaviorRequestCodecIdentity =
        "UWVMROS1_47a86620ec5abdd6cc820b095d8f5f4214c1d9af00ac1ff0740137bbdda7217c"
encodeRos1Franka_msgsSetFullCollisionBehaviorRequest :: Ros1Franka_msgsSetFullCollisionBehaviorRequest -> Either Word32 B.ByteString
encodeRos1Franka_msgsSetFullCollisionBehaviorRequest value = do
  if length (ros1Franka_msgsSetFullCollisionBehaviorRequest_lower_torque_thresholds_acceleration value) /= 7 then Left 22 else Right
          ()
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e))
          (ros1Franka_msgsSetFullCollisionBehaviorRequest_lower_torque_thresholds_acceleration value)
  if length (ros1Franka_msgsSetFullCollisionBehaviorRequest_upper_torque_thresholds_acceleration value) /= 7 then Left 22 else Right
          ()
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e))
          (ros1Franka_msgsSetFullCollisionBehaviorRequest_upper_torque_thresholds_acceleration value)
  if length (ros1Franka_msgsSetFullCollisionBehaviorRequest_lower_torque_thresholds_nominal value) /= 7 then Left 22 else Right ()
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e))
          (ros1Franka_msgsSetFullCollisionBehaviorRequest_lower_torque_thresholds_nominal value)
  if length (ros1Franka_msgsSetFullCollisionBehaviorRequest_upper_torque_thresholds_nominal value) /= 7 then Left 22 else Right ()
  b3 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e))
          (ros1Franka_msgsSetFullCollisionBehaviorRequest_upper_torque_thresholds_nominal value)
  if length (ros1Franka_msgsSetFullCollisionBehaviorRequest_lower_force_thresholds_acceleration value) /= 6 then Left 22 else Right
          ()
  b4 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e))
          (ros1Franka_msgsSetFullCollisionBehaviorRequest_lower_force_thresholds_acceleration value)
  if length (ros1Franka_msgsSetFullCollisionBehaviorRequest_upper_force_thresholds_acceleration value) /= 6 then Left 22 else Right
          ()
  b5 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e))
          (ros1Franka_msgsSetFullCollisionBehaviorRequest_upper_force_thresholds_acceleration value)
  if length (ros1Franka_msgsSetFullCollisionBehaviorRequest_lower_force_thresholds_nominal value) /= 6 then Left 22 else Right ()
  b6 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsSetFullCollisionBehaviorRequest_lower_force_thresholds_nominal
          value)
  if length (ros1Franka_msgsSetFullCollisionBehaviorRequest_upper_force_thresholds_nominal value) /= 6 then Left 22 else Right ()
  b7 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsSetFullCollisionBehaviorRequest_upper_force_thresholds_nominal
          value)
  W.bounded 416 [b0, b1, b2, b3, b4, b5, b6, b7]
readRos1Franka_msgsSetFullCollisionBehaviorRequest :: W.Decoder Ros1Franka_msgsSetFullCollisionBehaviorRequest
readRos1Franka_msgsSetFullCollisionBehaviorRequest = do
  a0 <- replicateM 7 (W.float64)
  a1 <- replicateM 7 (W.float64)
  a2 <- replicateM 7 (W.float64)
  a3 <- replicateM 7 (W.float64)
  a4 <- replicateM 6 (W.float64)
  a5 <- replicateM 6 (W.float64)
  a6 <- replicateM 6 (W.float64)
  a7 <- replicateM 6 (W.float64)
  let value = Ros1Franka_msgsSetFullCollisionBehaviorRequest a0 a1 a2 a3 a4 a5 a6 a7
  case encodeRos1Franka_msgsSetFullCollisionBehaviorRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Franka_msgsSetFullCollisionBehaviorRequest :: B.ByteString -> Either Word32 Ros1Franka_msgsSetFullCollisionBehaviorRequest
decodeRos1Franka_msgsSetFullCollisionBehaviorRequest = W.runDecoder 416 readRos1Franka_msgsSetFullCollisionBehaviorRequest
instance Canonical Ros1Franka_msgsSetFullCollisionBehaviorRequest where
  maximumBytes _ = 416
  encodeValue = encodeRos1Franka_msgsSetFullCollisionBehaviorRequest
  readValue = readRos1Franka_msgsSetFullCollisionBehaviorRequest
data Ros1Franka_msgsSetFullCollisionBehaviorResponse = Ros1Franka_msgsSetFullCollisionBehaviorResponse
  {
    -- | \@brief franka_msgs/SetFullCollisionBehaviorResponse.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsSetFullCollisionBehaviorResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsSetFullCollisionBehaviorResponse_success :: Bool
  ,
    -- | \@brief franka_msgs/SetFullCollisionBehaviorResponse.error: string; each string is 0..256 bytes; strict UTF-8
    -- | with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsSetFullCollisionBehaviorResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsSetFullCollisionBehaviorResponse_error :: T.Text
  } deriving (Eq, Show)
defaultRos1Franka_msgsSetFullCollisionBehaviorResponse :: Ros1Franka_msgsSetFullCollisionBehaviorResponse
defaultRos1Franka_msgsSetFullCollisionBehaviorResponse = Ros1Franka_msgsSetFullCollisionBehaviorResponse (False) (T.empty)
ros1Franka_msgsSetFullCollisionBehaviorResponseCodecIdentity :: String
ros1Franka_msgsSetFullCollisionBehaviorResponseCodecIdentity =
        "UWVMROS1_26f46e286c42d51a8ef45db7c8b3bf315fb02faf7b2be5d3741563d43169a0e2"
encodeRos1Franka_msgsSetFullCollisionBehaviorResponse :: Ros1Franka_msgsSetFullCollisionBehaviorResponse -> Either Word32
        B.ByteString
encodeRos1Franka_msgsSetFullCollisionBehaviorResponse value = do
  b0 <- W.encodeBool (ros1Franka_msgsSetFullCollisionBehaviorResponse_success value)
  b1 <- W.encodeText 256 True (ros1Franka_msgsSetFullCollisionBehaviorResponse_error value)
  W.bounded 261 [b0, b1]
readRos1Franka_msgsSetFullCollisionBehaviorResponse :: W.Decoder Ros1Franka_msgsSetFullCollisionBehaviorResponse
readRos1Franka_msgsSetFullCollisionBehaviorResponse = do
  a0 <- W.boolean
  a1 <- W.text 256 True
  let value = Ros1Franka_msgsSetFullCollisionBehaviorResponse a0 a1
  case encodeRos1Franka_msgsSetFullCollisionBehaviorResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Franka_msgsSetFullCollisionBehaviorResponse :: B.ByteString -> Either Word32
        Ros1Franka_msgsSetFullCollisionBehaviorResponse
decodeRos1Franka_msgsSetFullCollisionBehaviorResponse = W.runDecoder 261 readRos1Franka_msgsSetFullCollisionBehaviorResponse
instance Canonical Ros1Franka_msgsSetFullCollisionBehaviorResponse where
  maximumBytes _ = 261
  encodeValue = encodeRos1Franka_msgsSetFullCollisionBehaviorResponse
  readValue = readRos1Franka_msgsSetFullCollisionBehaviorResponse
data Ros1Franka_msgsSetJointImpedanceRequest = Ros1Franka_msgsSetJointImpedanceRequest
  {
    -- | \@brief franka_msgs/SetJointImpedanceRequest.joint_stiffness: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsSetJointImpedanceRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsSetJointImpedanceRequest_joint_stiffness :: [Double]
  } deriving (Eq, Show)
defaultRos1Franka_msgsSetJointImpedanceRequest :: Ros1Franka_msgsSetJointImpedanceRequest
defaultRos1Franka_msgsSetJointImpedanceRequest = Ros1Franka_msgsSetJointImpedanceRequest (replicate 7 (0))
ros1Franka_msgsSetJointImpedanceRequestCodecIdentity :: String
ros1Franka_msgsSetJointImpedanceRequestCodecIdentity = "UWVMROS1_29b5419f698b39452d38fbc58a0e3c572b8d285b70c8acf7d326c440eb417c53"
encodeRos1Franka_msgsSetJointImpedanceRequest :: Ros1Franka_msgsSetJointImpedanceRequest -> Either Word32 B.ByteString
encodeRos1Franka_msgsSetJointImpedanceRequest value = do
  if length (ros1Franka_msgsSetJointImpedanceRequest_joint_stiffness value) /= 7 then Left 22 else Right ()
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsSetJointImpedanceRequest_joint_stiffness value)
  W.bounded 56 [b0]
readRos1Franka_msgsSetJointImpedanceRequest :: W.Decoder Ros1Franka_msgsSetJointImpedanceRequest
readRos1Franka_msgsSetJointImpedanceRequest = do
  a0 <- replicateM 7 (W.float64)
  let value = Ros1Franka_msgsSetJointImpedanceRequest a0
  case encodeRos1Franka_msgsSetJointImpedanceRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Franka_msgsSetJointImpedanceRequest :: B.ByteString -> Either Word32 Ros1Franka_msgsSetJointImpedanceRequest
decodeRos1Franka_msgsSetJointImpedanceRequest = W.runDecoder 56 readRos1Franka_msgsSetJointImpedanceRequest
instance Canonical Ros1Franka_msgsSetJointImpedanceRequest where
  maximumBytes _ = 56
  encodeValue = encodeRos1Franka_msgsSetJointImpedanceRequest
  readValue = readRos1Franka_msgsSetJointImpedanceRequest
data Ros1Franka_msgsSetJointImpedanceResponse = Ros1Franka_msgsSetJointImpedanceResponse
  {
    -- | \@brief franka_msgs/SetJointImpedanceResponse.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsSetJointImpedanceResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsSetJointImpedanceResponse_success :: Bool
  ,
    -- | \@brief franka_msgs/SetJointImpedanceResponse.error: string; each string is 0..256 bytes; strict UTF-8 with no
    -- | embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsSetJointImpedanceResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsSetJointImpedanceResponse_error :: T.Text
  } deriving (Eq, Show)
defaultRos1Franka_msgsSetJointImpedanceResponse :: Ros1Franka_msgsSetJointImpedanceResponse
defaultRos1Franka_msgsSetJointImpedanceResponse = Ros1Franka_msgsSetJointImpedanceResponse (False) (T.empty)
ros1Franka_msgsSetJointImpedanceResponseCodecIdentity :: String
ros1Franka_msgsSetJointImpedanceResponseCodecIdentity = "UWVMROS1_1ae0cd7c4ad89de09ccffd6c4999435fa6965509e99a9adb98b7f3ebb3ea4c55"
encodeRos1Franka_msgsSetJointImpedanceResponse :: Ros1Franka_msgsSetJointImpedanceResponse -> Either Word32 B.ByteString
encodeRos1Franka_msgsSetJointImpedanceResponse value = do
  b0 <- W.encodeBool (ros1Franka_msgsSetJointImpedanceResponse_success value)
  b1 <- W.encodeText 256 True (ros1Franka_msgsSetJointImpedanceResponse_error value)
  W.bounded 261 [b0, b1]
readRos1Franka_msgsSetJointImpedanceResponse :: W.Decoder Ros1Franka_msgsSetJointImpedanceResponse
readRos1Franka_msgsSetJointImpedanceResponse = do
  a0 <- W.boolean
  a1 <- W.text 256 True
  let value = Ros1Franka_msgsSetJointImpedanceResponse a0 a1
  case encodeRos1Franka_msgsSetJointImpedanceResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Franka_msgsSetJointImpedanceResponse :: B.ByteString -> Either Word32 Ros1Franka_msgsSetJointImpedanceResponse
decodeRos1Franka_msgsSetJointImpedanceResponse = W.runDecoder 261 readRos1Franka_msgsSetJointImpedanceResponse
instance Canonical Ros1Franka_msgsSetJointImpedanceResponse where
  maximumBytes _ = 261
  encodeValue = encodeRos1Franka_msgsSetJointImpedanceResponse
  readValue = readRos1Franka_msgsSetJointImpedanceResponse
data Ros1Franka_msgsSetKFrameRequest = Ros1Franka_msgsSetKFrameRequest
  {
    -- | \@brief franka_msgs/SetKFrameRequest.EE_T_K: float64; exactly 16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsSetKFrameRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsSetKFrameRequest_EE_T_K :: [Double]
  } deriving (Eq, Show)
defaultRos1Franka_msgsSetKFrameRequest :: Ros1Franka_msgsSetKFrameRequest
defaultRos1Franka_msgsSetKFrameRequest = Ros1Franka_msgsSetKFrameRequest (replicate 16 (0))
ros1Franka_msgsSetKFrameRequestCodecIdentity :: String
ros1Franka_msgsSetKFrameRequestCodecIdentity = "UWVMROS1_36afcdc6402259fb5a71ae1b27be0bb8623a64dd93caffa376adea7862c86446"
encodeRos1Franka_msgsSetKFrameRequest :: Ros1Franka_msgsSetKFrameRequest -> Either Word32 B.ByteString
encodeRos1Franka_msgsSetKFrameRequest value = do
  if length (ros1Franka_msgsSetKFrameRequest_EE_T_K value) /= 16 then Left 22 else Right ()
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsSetKFrameRequest_EE_T_K value)
  W.bounded 128 [b0]
readRos1Franka_msgsSetKFrameRequest :: W.Decoder Ros1Franka_msgsSetKFrameRequest
readRos1Franka_msgsSetKFrameRequest = do
  a0 <- replicateM 16 (W.float64)
  let value = Ros1Franka_msgsSetKFrameRequest a0
  case encodeRos1Franka_msgsSetKFrameRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Franka_msgsSetKFrameRequest :: B.ByteString -> Either Word32 Ros1Franka_msgsSetKFrameRequest
decodeRos1Franka_msgsSetKFrameRequest = W.runDecoder 128 readRos1Franka_msgsSetKFrameRequest
instance Canonical Ros1Franka_msgsSetKFrameRequest where
  maximumBytes _ = 128
  encodeValue = encodeRos1Franka_msgsSetKFrameRequest
  readValue = readRos1Franka_msgsSetKFrameRequest
data Ros1Franka_msgsSetKFrameResponse = Ros1Franka_msgsSetKFrameResponse
  {
    -- | \@brief franka_msgs/SetKFrameResponse.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsSetKFrameResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsSetKFrameResponse_success :: Bool
  ,
    -- | \@brief franka_msgs/SetKFrameResponse.error: string; each string is 0..256 bytes; strict UTF-8 with no embedded
    -- | NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsSetKFrameResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsSetKFrameResponse_error :: T.Text
  } deriving (Eq, Show)
defaultRos1Franka_msgsSetKFrameResponse :: Ros1Franka_msgsSetKFrameResponse
defaultRos1Franka_msgsSetKFrameResponse = Ros1Franka_msgsSetKFrameResponse (False) (T.empty)
ros1Franka_msgsSetKFrameResponseCodecIdentity :: String
ros1Franka_msgsSetKFrameResponseCodecIdentity = "UWVMROS1_4ea77d3e827a9b9eaf3c3f9805f78c38bfe91789555d0469cffd4ff4266cd443"
encodeRos1Franka_msgsSetKFrameResponse :: Ros1Franka_msgsSetKFrameResponse -> Either Word32 B.ByteString
encodeRos1Franka_msgsSetKFrameResponse value = do
  b0 <- W.encodeBool (ros1Franka_msgsSetKFrameResponse_success value)
  b1 <- W.encodeText 256 True (ros1Franka_msgsSetKFrameResponse_error value)
  W.bounded 261 [b0, b1]
readRos1Franka_msgsSetKFrameResponse :: W.Decoder Ros1Franka_msgsSetKFrameResponse
readRos1Franka_msgsSetKFrameResponse = do
  a0 <- W.boolean
  a1 <- W.text 256 True
  let value = Ros1Franka_msgsSetKFrameResponse a0 a1
  case encodeRos1Franka_msgsSetKFrameResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Franka_msgsSetKFrameResponse :: B.ByteString -> Either Word32 Ros1Franka_msgsSetKFrameResponse
decodeRos1Franka_msgsSetKFrameResponse = W.runDecoder 261 readRos1Franka_msgsSetKFrameResponse
instance Canonical Ros1Franka_msgsSetKFrameResponse where
  maximumBytes _ = 261
  encodeValue = encodeRos1Franka_msgsSetKFrameResponse
  readValue = readRos1Franka_msgsSetKFrameResponse
data Ros1Franka_msgsSetLoadRequest = Ros1Franka_msgsSetLoadRequest
  {
    -- | \@brief franka_msgs/SetLoadRequest.mass: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsSetLoadRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsSetLoadRequest_mass :: Double
  ,
    -- | \@brief franka_msgs/SetLoadRequest.F_x_center_load: float64; exactly 3 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsSetLoadRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsSetLoadRequest_F_x_center_load :: [Double]
  ,
    -- | \@brief franka_msgs/SetLoadRequest.load_inertia: float64; exactly 9 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsSetLoadRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsSetLoadRequest_load_inertia :: [Double]
  } deriving (Eq, Show)
defaultRos1Franka_msgsSetLoadRequest :: Ros1Franka_msgsSetLoadRequest
defaultRos1Franka_msgsSetLoadRequest = Ros1Franka_msgsSetLoadRequest (0) (replicate 3 (0)) (replicate 9 (0))
ros1Franka_msgsSetLoadRequestCodecIdentity :: String
ros1Franka_msgsSetLoadRequestCodecIdentity = "UWVMROS1_d7c08dd9105cb7b83cb251e80c7d2dd1e9f7bb2a43f614bff6d00d808cccbcb5"
encodeRos1Franka_msgsSetLoadRequest :: Ros1Franka_msgsSetLoadRequest -> Either Word32 B.ByteString
encodeRos1Franka_msgsSetLoadRequest value = do
  b0 <- W.encodeFloat64 (ros1Franka_msgsSetLoadRequest_mass value)
  if length (ros1Franka_msgsSetLoadRequest_F_x_center_load value) /= 3 then Left 22 else Right ()
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsSetLoadRequest_F_x_center_load value)
  if length (ros1Franka_msgsSetLoadRequest_load_inertia value) /= 9 then Left 22 else Right ()
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Franka_msgsSetLoadRequest_load_inertia value)
  W.bounded 104 [b0, b1, b2]
readRos1Franka_msgsSetLoadRequest :: W.Decoder Ros1Franka_msgsSetLoadRequest
readRos1Franka_msgsSetLoadRequest = do
  a0 <- W.float64
  a1 <- replicateM 3 (W.float64)
  a2 <- replicateM 9 (W.float64)
  let value = Ros1Franka_msgsSetLoadRequest a0 a1 a2
  case encodeRos1Franka_msgsSetLoadRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Franka_msgsSetLoadRequest :: B.ByteString -> Either Word32 Ros1Franka_msgsSetLoadRequest
decodeRos1Franka_msgsSetLoadRequest = W.runDecoder 104 readRos1Franka_msgsSetLoadRequest
instance Canonical Ros1Franka_msgsSetLoadRequest where
  maximumBytes _ = 104
  encodeValue = encodeRos1Franka_msgsSetLoadRequest
  readValue = readRos1Franka_msgsSetLoadRequest
data Ros1Franka_msgsSetLoadResponse = Ros1Franka_msgsSetLoadResponse
  {
    -- | \@brief franka_msgs/SetLoadResponse.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsSetLoadResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsSetLoadResponse_success :: Bool
  ,
    -- | \@brief franka_msgs/SetLoadResponse.error: string; each string is 0..256 bytes; strict UTF-8 with no embedded
    -- | NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Franka_msgsSetLoadResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros1Franka_msgsSetLoadResponse_error :: T.Text
  } deriving (Eq, Show)
defaultRos1Franka_msgsSetLoadResponse :: Ros1Franka_msgsSetLoadResponse
defaultRos1Franka_msgsSetLoadResponse = Ros1Franka_msgsSetLoadResponse (False) (T.empty)
ros1Franka_msgsSetLoadResponseCodecIdentity :: String
ros1Franka_msgsSetLoadResponseCodecIdentity = "UWVMROS1_f18952407bf9e2813deeaa3734a781e90b74cb79892919c1218812ad71255cf3"
encodeRos1Franka_msgsSetLoadResponse :: Ros1Franka_msgsSetLoadResponse -> Either Word32 B.ByteString
encodeRos1Franka_msgsSetLoadResponse value = do
  b0 <- W.encodeBool (ros1Franka_msgsSetLoadResponse_success value)
  b1 <- W.encodeText 256 True (ros1Franka_msgsSetLoadResponse_error value)
  W.bounded 261 [b0, b1]
readRos1Franka_msgsSetLoadResponse :: W.Decoder Ros1Franka_msgsSetLoadResponse
readRos1Franka_msgsSetLoadResponse = do
  a0 <- W.boolean
  a1 <- W.text 256 True
  let value = Ros1Franka_msgsSetLoadResponse a0 a1
  case encodeRos1Franka_msgsSetLoadResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Franka_msgsSetLoadResponse :: B.ByteString -> Either Word32 Ros1Franka_msgsSetLoadResponse
decodeRos1Franka_msgsSetLoadResponse = W.runDecoder 261 readRos1Franka_msgsSetLoadResponse
instance Canonical Ros1Franka_msgsSetLoadResponse where
  maximumBytes _ = 261
  encodeValue = encodeRos1Franka_msgsSetLoadResponse
  readValue = readRos1Franka_msgsSetLoadResponse
