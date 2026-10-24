-- Generated complete canonical values; all field selectors are record-qualified.
module Flexiv.Ros2Humblev2.Records where
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
data Ros2Flexiv_msgsActionGrasp_Goal = Ros2Flexiv_msgsActionGrasp_Goal
  {
    -- | \@brief flexiv_msgs/action/Grasp_Goal.force: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsActionGrasp_Goal; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsActionGrasp_Goal_force :: Double
  } deriving (Eq, Show)
defaultRos2Flexiv_msgsActionGrasp_Goal :: Ros2Flexiv_msgsActionGrasp_Goal
defaultRos2Flexiv_msgsActionGrasp_Goal = Ros2Flexiv_msgsActionGrasp_Goal (0)
ros2Flexiv_msgsActionGrasp_GoalCodecIdentity :: String
ros2Flexiv_msgsActionGrasp_GoalCodecIdentity = "UWVMROS1_43565e364b5b889f4afe37a991d7b42a2b045737ead93475f771995882eb67ce"
encodeRos2Flexiv_msgsActionGrasp_Goal :: Ros2Flexiv_msgsActionGrasp_Goal -> Either Word32 B.ByteString
encodeRos2Flexiv_msgsActionGrasp_Goal value = do
  b0 <- W.encodeFloat64 (ros2Flexiv_msgsActionGrasp_Goal_force value)
  W.bounded 8 [b0]
readRos2Flexiv_msgsActionGrasp_Goal :: W.Decoder Ros2Flexiv_msgsActionGrasp_Goal
readRos2Flexiv_msgsActionGrasp_Goal = do
  a0 <- W.float64
  let value = Ros2Flexiv_msgsActionGrasp_Goal a0
  case encodeRos2Flexiv_msgsActionGrasp_Goal value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Flexiv_msgsActionGrasp_Goal :: B.ByteString -> Either Word32 Ros2Flexiv_msgsActionGrasp_Goal
decodeRos2Flexiv_msgsActionGrasp_Goal = W.runDecoder 8 readRos2Flexiv_msgsActionGrasp_Goal
instance Canonical Ros2Flexiv_msgsActionGrasp_Goal where
  maximumBytes _ = 8
  encodeValue = encodeRos2Flexiv_msgsActionGrasp_Goal
  readValue = readRos2Flexiv_msgsActionGrasp_Goal
data Ros2Flexiv_msgsActionGrasp_Result = Ros2Flexiv_msgsActionGrasp_Result
  {
    -- | \@brief flexiv_msgs/action/Grasp_Result.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsActionGrasp_Result; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsActionGrasp_Result_success :: Bool
  ,
    -- | \@brief flexiv_msgs/action/Grasp_Result.error: string; each string is 0..256 bytes; strict UTF-8 with no
    -- | embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsActionGrasp_Result; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsActionGrasp_Result_error :: T.Text
  } deriving (Eq, Show)
defaultRos2Flexiv_msgsActionGrasp_Result :: Ros2Flexiv_msgsActionGrasp_Result
defaultRos2Flexiv_msgsActionGrasp_Result = Ros2Flexiv_msgsActionGrasp_Result (False) (T.empty)
ros2Flexiv_msgsActionGrasp_ResultCodecIdentity :: String
ros2Flexiv_msgsActionGrasp_ResultCodecIdentity = "UWVMROS1_76337e629cae7403379d16725f13850a1d38a2bc53d1bd478e79f8139484341a"
encodeRos2Flexiv_msgsActionGrasp_Result :: Ros2Flexiv_msgsActionGrasp_Result -> Either Word32 B.ByteString
encodeRos2Flexiv_msgsActionGrasp_Result value = do
  b0 <- W.encodeBool (ros2Flexiv_msgsActionGrasp_Result_success value)
  b1 <- W.encodeText 256 True (ros2Flexiv_msgsActionGrasp_Result_error value)
  W.bounded 261 [b0, b1]
readRos2Flexiv_msgsActionGrasp_Result :: W.Decoder Ros2Flexiv_msgsActionGrasp_Result
readRos2Flexiv_msgsActionGrasp_Result = do
  a0 <- W.boolean
  a1 <- W.text 256 True
  let value = Ros2Flexiv_msgsActionGrasp_Result a0 a1
  case encodeRos2Flexiv_msgsActionGrasp_Result value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Flexiv_msgsActionGrasp_Result :: B.ByteString -> Either Word32 Ros2Flexiv_msgsActionGrasp_Result
decodeRos2Flexiv_msgsActionGrasp_Result = W.runDecoder 261 readRos2Flexiv_msgsActionGrasp_Result
instance Canonical Ros2Flexiv_msgsActionGrasp_Result where
  maximumBytes _ = 261
  encodeValue = encodeRos2Flexiv_msgsActionGrasp_Result
  readValue = readRos2Flexiv_msgsActionGrasp_Result
data Ros2Flexiv_msgsActionGrasp_Feedback = Ros2Flexiv_msgsActionGrasp_Feedback
  {
    -- | \@brief flexiv_msgs/action/Grasp_Feedback.current_width: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsActionGrasp_Feedback; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsActionGrasp_Feedback_current_width :: Double
  ,
    -- | \@brief flexiv_msgs/action/Grasp_Feedback.current_force: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsActionGrasp_Feedback; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsActionGrasp_Feedback_current_force :: Double
  ,
    -- | \@brief flexiv_msgs/action/Grasp_Feedback.moving: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsActionGrasp_Feedback; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsActionGrasp_Feedback_moving :: Bool
  } deriving (Eq, Show)
defaultRos2Flexiv_msgsActionGrasp_Feedback :: Ros2Flexiv_msgsActionGrasp_Feedback
defaultRos2Flexiv_msgsActionGrasp_Feedback = Ros2Flexiv_msgsActionGrasp_Feedback (0) (0) (False)
ros2Flexiv_msgsActionGrasp_FeedbackCodecIdentity :: String
ros2Flexiv_msgsActionGrasp_FeedbackCodecIdentity = "UWVMROS1_f546cfb58043f2dd44da229d9b5687e88d2712378aa6e1db8cf0082c07e96c05"
encodeRos2Flexiv_msgsActionGrasp_Feedback :: Ros2Flexiv_msgsActionGrasp_Feedback -> Either Word32 B.ByteString
encodeRos2Flexiv_msgsActionGrasp_Feedback value = do
  b0 <- W.encodeFloat64 (ros2Flexiv_msgsActionGrasp_Feedback_current_width value)
  b1 <- W.encodeFloat64 (ros2Flexiv_msgsActionGrasp_Feedback_current_force value)
  b2 <- W.encodeBool (ros2Flexiv_msgsActionGrasp_Feedback_moving value)
  W.bounded 17 [b0, b1, b2]
readRos2Flexiv_msgsActionGrasp_Feedback :: W.Decoder Ros2Flexiv_msgsActionGrasp_Feedback
readRos2Flexiv_msgsActionGrasp_Feedback = do
  a0 <- W.float64
  a1 <- W.float64
  a2 <- W.boolean
  let value = Ros2Flexiv_msgsActionGrasp_Feedback a0 a1 a2
  case encodeRos2Flexiv_msgsActionGrasp_Feedback value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Flexiv_msgsActionGrasp_Feedback :: B.ByteString -> Either Word32 Ros2Flexiv_msgsActionGrasp_Feedback
decodeRos2Flexiv_msgsActionGrasp_Feedback = W.runDecoder 17 readRos2Flexiv_msgsActionGrasp_Feedback
instance Canonical Ros2Flexiv_msgsActionGrasp_Feedback where
  maximumBytes _ = 17
  encodeValue = encodeRos2Flexiv_msgsActionGrasp_Feedback
  readValue = readRos2Flexiv_msgsActionGrasp_Feedback
data Ros2Flexiv_msgsActionMove_Goal = Ros2Flexiv_msgsActionMove_Goal
  {
    -- | \@brief flexiv_msgs/action/Move_Goal.width: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsActionMove_Goal; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsActionMove_Goal_width :: Double
  ,
    -- | \@brief flexiv_msgs/action/Move_Goal.velocity: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsActionMove_Goal; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsActionMove_Goal_velocity :: Double
  ,
    -- | \@brief flexiv_msgs/action/Move_Goal.max_force: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsActionMove_Goal; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsActionMove_Goal_max_force :: Double
  } deriving (Eq, Show)
defaultRos2Flexiv_msgsActionMove_Goal :: Ros2Flexiv_msgsActionMove_Goal
defaultRos2Flexiv_msgsActionMove_Goal = Ros2Flexiv_msgsActionMove_Goal (0) (0) (0)
ros2Flexiv_msgsActionMove_GoalCodecIdentity :: String
ros2Flexiv_msgsActionMove_GoalCodecIdentity = "UWVMROS1_aea1dfd4e0fe2ea72865a4f9e4408564fe63c7eff23cc9eaefdedbb4a3b87ce2"
encodeRos2Flexiv_msgsActionMove_Goal :: Ros2Flexiv_msgsActionMove_Goal -> Either Word32 B.ByteString
encodeRos2Flexiv_msgsActionMove_Goal value = do
  b0 <- W.encodeFloat64 (ros2Flexiv_msgsActionMove_Goal_width value)
  b1 <- W.encodeFloat64 (ros2Flexiv_msgsActionMove_Goal_velocity value)
  b2 <- W.encodeFloat64 (ros2Flexiv_msgsActionMove_Goal_max_force value)
  W.bounded 24 [b0, b1, b2]
readRos2Flexiv_msgsActionMove_Goal :: W.Decoder Ros2Flexiv_msgsActionMove_Goal
readRos2Flexiv_msgsActionMove_Goal = do
  a0 <- W.float64
  a1 <- W.float64
  a2 <- W.float64
  let value = Ros2Flexiv_msgsActionMove_Goal a0 a1 a2
  case encodeRos2Flexiv_msgsActionMove_Goal value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Flexiv_msgsActionMove_Goal :: B.ByteString -> Either Word32 Ros2Flexiv_msgsActionMove_Goal
decodeRos2Flexiv_msgsActionMove_Goal = W.runDecoder 24 readRos2Flexiv_msgsActionMove_Goal
instance Canonical Ros2Flexiv_msgsActionMove_Goal where
  maximumBytes _ = 24
  encodeValue = encodeRos2Flexiv_msgsActionMove_Goal
  readValue = readRos2Flexiv_msgsActionMove_Goal
data Ros2Flexiv_msgsActionMove_Result = Ros2Flexiv_msgsActionMove_Result
  {
    -- | \@brief flexiv_msgs/action/Move_Result.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsActionMove_Result; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsActionMove_Result_success :: Bool
  ,
    -- | \@brief flexiv_msgs/action/Move_Result.error: string; each string is 0..256 bytes; strict UTF-8 with no
    -- | embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsActionMove_Result; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsActionMove_Result_error :: T.Text
  } deriving (Eq, Show)
defaultRos2Flexiv_msgsActionMove_Result :: Ros2Flexiv_msgsActionMove_Result
defaultRos2Flexiv_msgsActionMove_Result = Ros2Flexiv_msgsActionMove_Result (False) (T.empty)
ros2Flexiv_msgsActionMove_ResultCodecIdentity :: String
ros2Flexiv_msgsActionMove_ResultCodecIdentity = "UWVMROS1_c95a78a3b488d7f47101110729258fcc28450dee51ab7666114da77ad139709d"
encodeRos2Flexiv_msgsActionMove_Result :: Ros2Flexiv_msgsActionMove_Result -> Either Word32 B.ByteString
encodeRos2Flexiv_msgsActionMove_Result value = do
  b0 <- W.encodeBool (ros2Flexiv_msgsActionMove_Result_success value)
  b1 <- W.encodeText 256 True (ros2Flexiv_msgsActionMove_Result_error value)
  W.bounded 261 [b0, b1]
readRos2Flexiv_msgsActionMove_Result :: W.Decoder Ros2Flexiv_msgsActionMove_Result
readRos2Flexiv_msgsActionMove_Result = do
  a0 <- W.boolean
  a1 <- W.text 256 True
  let value = Ros2Flexiv_msgsActionMove_Result a0 a1
  case encodeRos2Flexiv_msgsActionMove_Result value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Flexiv_msgsActionMove_Result :: B.ByteString -> Either Word32 Ros2Flexiv_msgsActionMove_Result
decodeRos2Flexiv_msgsActionMove_Result = W.runDecoder 261 readRos2Flexiv_msgsActionMove_Result
instance Canonical Ros2Flexiv_msgsActionMove_Result where
  maximumBytes _ = 261
  encodeValue = encodeRos2Flexiv_msgsActionMove_Result
  readValue = readRos2Flexiv_msgsActionMove_Result
data Ros2Flexiv_msgsActionMove_Feedback = Ros2Flexiv_msgsActionMove_Feedback
  {
    -- | \@brief flexiv_msgs/action/Move_Feedback.current_width: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsActionMove_Feedback; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsActionMove_Feedback_current_width :: Double
  ,
    -- | \@brief flexiv_msgs/action/Move_Feedback.current_force: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsActionMove_Feedback; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsActionMove_Feedback_current_force :: Double
  ,
    -- | \@brief flexiv_msgs/action/Move_Feedback.moving: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsActionMove_Feedback; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsActionMove_Feedback_moving :: Bool
  } deriving (Eq, Show)
defaultRos2Flexiv_msgsActionMove_Feedback :: Ros2Flexiv_msgsActionMove_Feedback
defaultRos2Flexiv_msgsActionMove_Feedback = Ros2Flexiv_msgsActionMove_Feedback (0) (0) (False)
ros2Flexiv_msgsActionMove_FeedbackCodecIdentity :: String
ros2Flexiv_msgsActionMove_FeedbackCodecIdentity = "UWVMROS1_b28cc267ea6cd964fb24bff71d4e6e8da37fae383f437aeec8afb01431a5cd38"
encodeRos2Flexiv_msgsActionMove_Feedback :: Ros2Flexiv_msgsActionMove_Feedback -> Either Word32 B.ByteString
encodeRos2Flexiv_msgsActionMove_Feedback value = do
  b0 <- W.encodeFloat64 (ros2Flexiv_msgsActionMove_Feedback_current_width value)
  b1 <- W.encodeFloat64 (ros2Flexiv_msgsActionMove_Feedback_current_force value)
  b2 <- W.encodeBool (ros2Flexiv_msgsActionMove_Feedback_moving value)
  W.bounded 17 [b0, b1, b2]
readRos2Flexiv_msgsActionMove_Feedback :: W.Decoder Ros2Flexiv_msgsActionMove_Feedback
readRos2Flexiv_msgsActionMove_Feedback = do
  a0 <- W.float64
  a1 <- W.float64
  a2 <- W.boolean
  let value = Ros2Flexiv_msgsActionMove_Feedback a0 a1 a2
  case encodeRos2Flexiv_msgsActionMove_Feedback value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Flexiv_msgsActionMove_Feedback :: B.ByteString -> Either Word32 Ros2Flexiv_msgsActionMove_Feedback
decodeRos2Flexiv_msgsActionMove_Feedback = W.runDecoder 17 readRos2Flexiv_msgsActionMove_Feedback
instance Canonical Ros2Flexiv_msgsActionMove_Feedback where
  maximumBytes _ = 17
  encodeValue = encodeRos2Flexiv_msgsActionMove_Feedback
  readValue = readRos2Flexiv_msgsActionMove_Feedback
data Ros2Flexiv_msgsMsgDigital = Ros2Flexiv_msgsMsgDigital
  {
    -- | \@brief flexiv_msgs/msg/Digital.pin: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgDigital; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgDigital_pin :: Word8
  ,
    -- | \@brief flexiv_msgs/msg/Digital.state: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgDigital; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgDigital_state :: Bool
  } deriving (Eq, Show)
defaultRos2Flexiv_msgsMsgDigital :: Ros2Flexiv_msgsMsgDigital
defaultRos2Flexiv_msgsMsgDigital = Ros2Flexiv_msgsMsgDigital (0) (False)
ros2Flexiv_msgsMsgDigitalCodecIdentity :: String
ros2Flexiv_msgsMsgDigitalCodecIdentity = "UWVMROS1_88d2ffaf88359d000dbb247773404361a70fbc86b08a6fad118a73723f2c6fbf"
encodeRos2Flexiv_msgsMsgDigital :: Ros2Flexiv_msgsMsgDigital -> Either Word32 B.ByteString
encodeRos2Flexiv_msgsMsgDigital value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros2Flexiv_msgsMsgDigital_pin value))
  b1 <- W.encodeBool (ros2Flexiv_msgsMsgDigital_state value)
  W.bounded 2 [b0, b1]
readRos2Flexiv_msgsMsgDigital :: W.Decoder Ros2Flexiv_msgsMsgDigital
readRos2Flexiv_msgsMsgDigital = do
  a0 <- fromIntegral <$> W.unsigned 1
  a1 <- W.boolean
  let value = Ros2Flexiv_msgsMsgDigital a0 a1
  case encodeRos2Flexiv_msgsMsgDigital value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Flexiv_msgsMsgDigital :: B.ByteString -> Either Word32 Ros2Flexiv_msgsMsgDigital
decodeRos2Flexiv_msgsMsgDigital = W.runDecoder 2 readRos2Flexiv_msgsMsgDigital
instance Canonical Ros2Flexiv_msgsMsgDigital where
  maximumBytes _ = 2
  encodeValue = encodeRos2Flexiv_msgsMsgDigital
  readValue = readRos2Flexiv_msgsMsgDigital
data Ros2Flexiv_msgsMsgGPIOStates = Ros2Flexiv_msgsMsgGPIOStates
  {
    -- | \@brief flexiv_msgs/msg/GPIOStates.states: flexiv_msgs/msg/Digital; 0..32 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgGPIOStates; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgGPIOStates_states :: [Ros2Flexiv_msgsMsgDigital]
  } deriving (Eq, Show)
defaultRos2Flexiv_msgsMsgGPIOStates :: Ros2Flexiv_msgsMsgGPIOStates
defaultRos2Flexiv_msgsMsgGPIOStates = Ros2Flexiv_msgsMsgGPIOStates ([])
ros2Flexiv_msgsMsgGPIOStatesCodecIdentity :: String
ros2Flexiv_msgsMsgGPIOStatesCodecIdentity = "UWVMROS1_befebf3e30b73f80820c51af2339e0c5a86bef6b155f42fd538540c3fbbd7b14"
encodeRos2Flexiv_msgsMsgGPIOStates :: Ros2Flexiv_msgsMsgGPIOStates -> Either Word32 B.ByteString
encodeRos2Flexiv_msgsMsgGPIOStates value = do
  if length (ros2Flexiv_msgsMsgGPIOStates_states value) > 32 then Left 22 else Right ()
  prefix0 <- W.encodeCount 32 (length (ros2Flexiv_msgsMsgGPIOStates_states value))
  b0 <- B.concat <$> mapM (\e -> encodeRos2Flexiv_msgsMsgDigital (e)) (ros2Flexiv_msgsMsgGPIOStates_states value)
  W.bounded 68 [prefix0, b0]
readRos2Flexiv_msgsMsgGPIOStates :: W.Decoder Ros2Flexiv_msgsMsgGPIOStates
readRos2Flexiv_msgsMsgGPIOStates = do
  count0 <- W.count 32
  a0 <- replicateM count0 (readRos2Flexiv_msgsMsgDigital)
  let value = Ros2Flexiv_msgsMsgGPIOStates a0
  case encodeRos2Flexiv_msgsMsgGPIOStates value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Flexiv_msgsMsgGPIOStates :: B.ByteString -> Either Word32 Ros2Flexiv_msgsMsgGPIOStates
decodeRos2Flexiv_msgsMsgGPIOStates = W.runDecoder 68 readRos2Flexiv_msgsMsgGPIOStates
instance Canonical Ros2Flexiv_msgsMsgGPIOStates where
  maximumBytes _ = 68
  encodeValue = encodeRos2Flexiv_msgsMsgGPIOStates
  readValue = readRos2Flexiv_msgsMsgGPIOStates
data Ros2Flexiv_msgsMsgJointPosVel = Ros2Flexiv_msgsMsgJointPosVel
  {
    -- | \@brief flexiv_msgs/msg/JointPosVel.positions: float64; 0..32 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgJointPosVel; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgJointPosVel_positions :: [Double]
  ,
    -- | \@brief flexiv_msgs/msg/JointPosVel.velocities: float64; 0..32 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgJointPosVel; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgJointPosVel_velocities :: [Double]
  } deriving (Eq, Show)
defaultRos2Flexiv_msgsMsgJointPosVel :: Ros2Flexiv_msgsMsgJointPosVel
defaultRos2Flexiv_msgsMsgJointPosVel = Ros2Flexiv_msgsMsgJointPosVel ([]) ([])
ros2Flexiv_msgsMsgJointPosVelCodecIdentity :: String
ros2Flexiv_msgsMsgJointPosVelCodecIdentity = "UWVMROS1_ab1060b13eacca41febd2b58a61f0b93df867a9d6579b4f2b43bf5280f2df4ca"
encodeRos2Flexiv_msgsMsgJointPosVel :: Ros2Flexiv_msgsMsgJointPosVel -> Either Word32 B.ByteString
encodeRos2Flexiv_msgsMsgJointPosVel value = do
  if length (ros2Flexiv_msgsMsgJointPosVel_positions value) > 32 then Left 22 else Right ()
  prefix0 <- W.encodeCount 32 (length (ros2Flexiv_msgsMsgJointPosVel_positions value))
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Flexiv_msgsMsgJointPosVel_positions value)
  if length (ros2Flexiv_msgsMsgJointPosVel_velocities value) > 32 then Left 22 else Right ()
  prefix1 <- W.encodeCount 32 (length (ros2Flexiv_msgsMsgJointPosVel_velocities value))
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Flexiv_msgsMsgJointPosVel_velocities value)
  W.bounded 520 [prefix0, b0, prefix1, b1]
readRos2Flexiv_msgsMsgJointPosVel :: W.Decoder Ros2Flexiv_msgsMsgJointPosVel
readRos2Flexiv_msgsMsgJointPosVel = do
  count0 <- W.count 32
  a0 <- replicateM count0 (W.float64)
  count1 <- W.count 32
  a1 <- replicateM count1 (W.float64)
  let value = Ros2Flexiv_msgsMsgJointPosVel a0 a1
  case encodeRos2Flexiv_msgsMsgJointPosVel value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Flexiv_msgsMsgJointPosVel :: B.ByteString -> Either Word32 Ros2Flexiv_msgsMsgJointPosVel
decodeRos2Flexiv_msgsMsgJointPosVel = W.runDecoder 520 readRos2Flexiv_msgsMsgJointPosVel
instance Canonical Ros2Flexiv_msgsMsgJointPosVel where
  maximumBytes _ = 520
  encodeValue = encodeRos2Flexiv_msgsMsgJointPosVel
  readValue = readRos2Flexiv_msgsMsgJointPosVel
data Ros2Flexiv_msgsMsgMode = Ros2Flexiv_msgsMsgMode
  {
    -- | \@brief flexiv_msgs/msg/Mode.mode: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgMode; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgMode_mode :: Int8
  } deriving (Eq, Show)
defaultRos2Flexiv_msgsMsgMode :: Ros2Flexiv_msgsMsgMode
defaultRos2Flexiv_msgsMsgMode = Ros2Flexiv_msgsMsgMode (0)
ros2Flexiv_msgsMsgModeCodecIdentity :: String
ros2Flexiv_msgsMsgModeCodecIdentity = "UWVMROS1_cccac829b8021d3eed69844ee81fbef0b785486d73a16ac212fd38b8100eb6d6"
ros2Flexiv_msgsMsgMode_MODE_UNKNOWN :: Int8
ros2Flexiv_msgsMsgMode_MODE_UNKNOWN = -1
ros2Flexiv_msgsMsgMode_MODE_IDLE :: Int8
ros2Flexiv_msgsMsgMode_MODE_IDLE = 0
ros2Flexiv_msgsMsgMode_MODE_RT_JOINT_TORQUE :: Int8
ros2Flexiv_msgsMsgMode_MODE_RT_JOINT_TORQUE = 1
ros2Flexiv_msgsMsgMode_MODE_RT_JOINT_IMPEDANCE :: Int8
ros2Flexiv_msgsMsgMode_MODE_RT_JOINT_IMPEDANCE = 2
ros2Flexiv_msgsMsgMode_MODE_NRT_JOINT_IMPEDANCE :: Int8
ros2Flexiv_msgsMsgMode_MODE_NRT_JOINT_IMPEDANCE = 3
ros2Flexiv_msgsMsgMode_MODE_RT_JOINT_POSITION :: Int8
ros2Flexiv_msgsMsgMode_MODE_RT_JOINT_POSITION = 4
ros2Flexiv_msgsMsgMode_MODE_NRT_JOINT_POSITION :: Int8
ros2Flexiv_msgsMsgMode_MODE_NRT_JOINT_POSITION = 5
ros2Flexiv_msgsMsgMode_MODE_NRT_PLAN_EXECUTION :: Int8
ros2Flexiv_msgsMsgMode_MODE_NRT_PLAN_EXECUTION = 6
ros2Flexiv_msgsMsgMode_MODE_NRT_PRIMITIVE_EXECUTION :: Int8
ros2Flexiv_msgsMsgMode_MODE_NRT_PRIMITIVE_EXECUTION = 7
ros2Flexiv_msgsMsgMode_MODE_RT_CARTESIAN_MOTION_FORCE :: Int8
ros2Flexiv_msgsMsgMode_MODE_RT_CARTESIAN_MOTION_FORCE = 8
ros2Flexiv_msgsMsgMode_MODE_NRT_CARTESIAN_MOTION_FORCE :: Int8
ros2Flexiv_msgsMsgMode_MODE_NRT_CARTESIAN_MOTION_FORCE = 9
ros2Flexiv_msgsMsgMode_MODE_NRT_SUPER_PRIMITIVE :: Int8
ros2Flexiv_msgsMsgMode_MODE_NRT_SUPER_PRIMITIVE = 10
encodeRos2Flexiv_msgsMsgMode :: Ros2Flexiv_msgsMsgMode -> Either Word32 B.ByteString
encodeRos2Flexiv_msgsMsgMode value = do
  b0 <- W.encodeSigned 1 (fromIntegral (ros2Flexiv_msgsMsgMode_mode value))
  W.bounded 1 [b0]
readRos2Flexiv_msgsMsgMode :: W.Decoder Ros2Flexiv_msgsMsgMode
readRos2Flexiv_msgsMsgMode = do
  a0 <- fromIntegral <$> W.signed 1
  let value = Ros2Flexiv_msgsMsgMode a0
  case encodeRos2Flexiv_msgsMsgMode value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Flexiv_msgsMsgMode :: B.ByteString -> Either Word32 Ros2Flexiv_msgsMsgMode
decodeRos2Flexiv_msgsMsgMode = W.runDecoder 1 readRos2Flexiv_msgsMsgMode
instance Canonical Ros2Flexiv_msgsMsgMode where
  maximumBytes _ = 1
  encodeValue = encodeRos2Flexiv_msgsMsgMode
  readValue = readRos2Flexiv_msgsMsgMode
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
    -- | \@brief std_msgs/msg/Header.frame_id: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
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
ros2Std_msgsMsgHeaderCodecIdentity = "UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b"
encodeRos2Std_msgsMsgHeader :: Ros2Std_msgsMsgHeader -> Either Word32 B.ByteString
encodeRos2Std_msgsMsgHeader value = do
  b0 <- encodeRos2Builtin_interfacesMsgTime (ros2Std_msgsMsgHeader_stamp value)
  b1 <- W.encodeText 256 True (ros2Std_msgsMsgHeader_frame_id value)
  W.bounded 268 [b0, b1]
readRos2Std_msgsMsgHeader :: W.Decoder Ros2Std_msgsMsgHeader
readRos2Std_msgsMsgHeader = do
  a0 <- readRos2Builtin_interfacesMsgTime
  a1 <- W.text 256 True
  let value = Ros2Std_msgsMsgHeader a0 a1
  case encodeRos2Std_msgsMsgHeader value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Std_msgsMsgHeader :: B.ByteString -> Either Word32 Ros2Std_msgsMsgHeader
decodeRos2Std_msgsMsgHeader = W.runDecoder 268 readRos2Std_msgsMsgHeader
instance Canonical Ros2Std_msgsMsgHeader where
  maximumBytes _ = 268
  encodeValue = encodeRos2Std_msgsMsgHeader
  readValue = readRos2Std_msgsMsgHeader
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
ros2Geometry_msgsMsgPoseStampedCodecIdentity = "UWVMROS1_a8495b0ebccf56849f2c0f798064894dde7c4eb15988d22b3a684a9fd18d05ad"
encodeRos2Geometry_msgsMsgPoseStamped :: Ros2Geometry_msgsMsgPoseStamped -> Either Word32 B.ByteString
encodeRos2Geometry_msgsMsgPoseStamped value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Geometry_msgsMsgPoseStamped_header value)
  b1 <- encodeRos2Geometry_msgsMsgPose (ros2Geometry_msgsMsgPoseStamped_pose value)
  W.bounded 324 [b0, b1]
readRos2Geometry_msgsMsgPoseStamped :: W.Decoder Ros2Geometry_msgsMsgPoseStamped
readRos2Geometry_msgsMsgPoseStamped = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- readRos2Geometry_msgsMsgPose
  let value = Ros2Geometry_msgsMsgPoseStamped a0 a1
  case encodeRos2Geometry_msgsMsgPoseStamped value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Geometry_msgsMsgPoseStamped :: B.ByteString -> Either Word32 Ros2Geometry_msgsMsgPoseStamped
decodeRos2Geometry_msgsMsgPoseStamped = W.runDecoder 324 readRos2Geometry_msgsMsgPoseStamped
instance Canonical Ros2Geometry_msgsMsgPoseStamped where
  maximumBytes _ = 324
  encodeValue = encodeRos2Geometry_msgsMsgPoseStamped
  readValue = readRos2Geometry_msgsMsgPoseStamped
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
ros2Geometry_msgsMsgTwistStampedCodecIdentity = "UWVMROS1_e26c5749f60e59245f541ae7c9d66b0d5fc47eef38fa163338aa39316751e308"
encodeRos2Geometry_msgsMsgTwistStamped :: Ros2Geometry_msgsMsgTwistStamped -> Either Word32 B.ByteString
encodeRos2Geometry_msgsMsgTwistStamped value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Geometry_msgsMsgTwistStamped_header value)
  b1 <- encodeRos2Geometry_msgsMsgTwist (ros2Geometry_msgsMsgTwistStamped_twist value)
  W.bounded 316 [b0, b1]
readRos2Geometry_msgsMsgTwistStamped :: W.Decoder Ros2Geometry_msgsMsgTwistStamped
readRos2Geometry_msgsMsgTwistStamped = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- readRos2Geometry_msgsMsgTwist
  let value = Ros2Geometry_msgsMsgTwistStamped a0 a1
  case encodeRos2Geometry_msgsMsgTwistStamped value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Geometry_msgsMsgTwistStamped :: B.ByteString -> Either Word32 Ros2Geometry_msgsMsgTwistStamped
decodeRos2Geometry_msgsMsgTwistStamped = W.runDecoder 316 readRos2Geometry_msgsMsgTwistStamped
instance Canonical Ros2Geometry_msgsMsgTwistStamped where
  maximumBytes _ = 316
  encodeValue = encodeRos2Geometry_msgsMsgTwistStamped
  readValue = readRos2Geometry_msgsMsgTwistStamped
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
ros2Geometry_msgsMsgWrenchStampedCodecIdentity = "UWVMROS1_b9573c0cc3e84b6782f303e91813d65244f61e9f58639477158795d710127177"
encodeRos2Geometry_msgsMsgWrenchStamped :: Ros2Geometry_msgsMsgWrenchStamped -> Either Word32 B.ByteString
encodeRos2Geometry_msgsMsgWrenchStamped value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Geometry_msgsMsgWrenchStamped_header value)
  b1 <- encodeRos2Geometry_msgsMsgWrench (ros2Geometry_msgsMsgWrenchStamped_wrench value)
  W.bounded 316 [b0, b1]
readRos2Geometry_msgsMsgWrenchStamped :: W.Decoder Ros2Geometry_msgsMsgWrenchStamped
readRos2Geometry_msgsMsgWrenchStamped = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- readRos2Geometry_msgsMsgWrench
  let value = Ros2Geometry_msgsMsgWrenchStamped a0 a1
  case encodeRos2Geometry_msgsMsgWrenchStamped value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Geometry_msgsMsgWrenchStamped :: B.ByteString -> Either Word32 Ros2Geometry_msgsMsgWrenchStamped
decodeRos2Geometry_msgsMsgWrenchStamped = W.runDecoder 316 readRos2Geometry_msgsMsgWrenchStamped
instance Canonical Ros2Geometry_msgsMsgWrenchStamped where
  maximumBytes _ = 316
  encodeValue = encodeRos2Geometry_msgsMsgWrenchStamped
  readValue = readRos2Geometry_msgsMsgWrenchStamped
data Ros2Flexiv_msgsMsgRobotStates = Ros2Flexiv_msgsMsgRobotStates
  {
    -- | \@brief flexiv_msgs/msg/RobotStates.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgRobotStates_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief flexiv_msgs/msg/RobotStates.robot_timestamp: builtin_interfaces/msg/Time.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgRobotStates_robot_timestamp :: Ros2Builtin_interfacesMsgTime
  ,
    -- | \@brief flexiv_msgs/msg/RobotStates.q: float64; 0..32 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgRobotStates_q :: [Double]
  ,
    -- | \@brief flexiv_msgs/msg/RobotStates.theta: float64; 0..32 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgRobotStates_theta :: [Double]
  ,
    -- | \@brief flexiv_msgs/msg/RobotStates.dq: float64; 0..32 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgRobotStates_dq :: [Double]
  ,
    -- | \@brief flexiv_msgs/msg/RobotStates.dtheta: float64; 0..32 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgRobotStates_dtheta :: [Double]
  ,
    -- | \@brief flexiv_msgs/msg/RobotStates.tau: float64; 0..32 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgRobotStates_tau :: [Double]
  ,
    -- | \@brief flexiv_msgs/msg/RobotStates.tau_dot: float64; 0..32 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgRobotStates_tau_dot :: [Double]
  ,
    -- | \@brief flexiv_msgs/msg/RobotStates.tau_ext: float64; 0..32 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgRobotStates_tau_ext :: [Double]
  ,
    -- | \@brief flexiv_msgs/msg/RobotStates.tau_interact: float64; 0..32 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgRobotStates_tau_interact :: [Double]
  ,
    -- | \@brief flexiv_msgs/msg/RobotStates.temperature: float64; 0..32 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgRobotStates_temperature :: [Double]
  ,
    -- | \@brief flexiv_msgs/msg/RobotStates.tcp_pose: geometry_msgs/msg/PoseStamped.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgRobotStates_tcp_pose :: Ros2Geometry_msgsMsgPoseStamped
  ,
    -- | \@brief flexiv_msgs/msg/RobotStates.tcp_twist: geometry_msgs/msg/TwistStamped.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgRobotStates_tcp_twist :: Ros2Geometry_msgsMsgTwistStamped
  ,
    -- | \@brief flexiv_msgs/msg/RobotStates.flange_pose: geometry_msgs/msg/PoseStamped.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgRobotStates_flange_pose :: Ros2Geometry_msgsMsgPoseStamped
  ,
    -- | \@brief flexiv_msgs/msg/RobotStates.raw_ft_sensor: geometry_msgs/msg/WrenchStamped.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgRobotStates_raw_ft_sensor :: Ros2Geometry_msgsMsgWrenchStamped
  ,
    -- | \@brief flexiv_msgs/msg/RobotStates.tcp_wrench_local: geometry_msgs/msg/WrenchStamped.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgRobotStates_tcp_wrench_local :: Ros2Geometry_msgsMsgWrenchStamped
  ,
    -- | \@brief flexiv_msgs/msg/RobotStates.tcp_wrench: geometry_msgs/msg/WrenchStamped.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgRobotStates_tcp_wrench :: Ros2Geometry_msgsMsgWrenchStamped
  ,
    -- | \@brief flexiv_msgs/msg/RobotStates.raw_tcp_wrench_local: geometry_msgs/msg/WrenchStamped.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgRobotStates_raw_tcp_wrench_local :: Ros2Geometry_msgsMsgWrenchStamped
  ,
    -- | \@brief flexiv_msgs/msg/RobotStates.raw_tcp_wrench: geometry_msgs/msg/WrenchStamped.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgRobotStates_raw_tcp_wrench :: Ros2Geometry_msgsMsgWrenchStamped
  } deriving (Eq, Show)
defaultRos2Flexiv_msgsMsgRobotStates :: Ros2Flexiv_msgsMsgRobotStates
defaultRos2Flexiv_msgsMsgRobotStates = Ros2Flexiv_msgsMsgRobotStates (defaultRos2Std_msgsMsgHeader)
        (defaultRos2Builtin_interfacesMsgTime) ([]) ([]) ([]) ([]) ([]) ([]) ([]) ([]) ([]) (defaultRos2Geometry_msgsMsgPoseStamped)
        (defaultRos2Geometry_msgsMsgTwistStamped) (defaultRos2Geometry_msgsMsgPoseStamped)
        (defaultRos2Geometry_msgsMsgWrenchStamped) (defaultRos2Geometry_msgsMsgWrenchStamped)
        (defaultRos2Geometry_msgsMsgWrenchStamped) (defaultRos2Geometry_msgsMsgWrenchStamped)
        (defaultRos2Geometry_msgsMsgWrenchStamped)
ros2Flexiv_msgsMsgRobotStatesCodecIdentity :: String
ros2Flexiv_msgsMsgRobotStatesCodecIdentity = "UWVMROS1_3faeb145bd2ce50b6478e44c55400cc484e619eb66783f56a4a0801d51af708a"
encodeRos2Flexiv_msgsMsgRobotStates :: Ros2Flexiv_msgsMsgRobotStates -> Either Word32 B.ByteString
encodeRos2Flexiv_msgsMsgRobotStates value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Flexiv_msgsMsgRobotStates_header value)
  b1 <- encodeRos2Builtin_interfacesMsgTime (ros2Flexiv_msgsMsgRobotStates_robot_timestamp value)
  if length (ros2Flexiv_msgsMsgRobotStates_q value) > 32 then Left 22 else Right ()
  prefix2 <- W.encodeCount 32 (length (ros2Flexiv_msgsMsgRobotStates_q value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Flexiv_msgsMsgRobotStates_q value)
  if length (ros2Flexiv_msgsMsgRobotStates_theta value) > 32 then Left 22 else Right ()
  prefix3 <- W.encodeCount 32 (length (ros2Flexiv_msgsMsgRobotStates_theta value))
  b3 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Flexiv_msgsMsgRobotStates_theta value)
  if length (ros2Flexiv_msgsMsgRobotStates_dq value) > 32 then Left 22 else Right ()
  prefix4 <- W.encodeCount 32 (length (ros2Flexiv_msgsMsgRobotStates_dq value))
  b4 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Flexiv_msgsMsgRobotStates_dq value)
  if length (ros2Flexiv_msgsMsgRobotStates_dtheta value) > 32 then Left 22 else Right ()
  prefix5 <- W.encodeCount 32 (length (ros2Flexiv_msgsMsgRobotStates_dtheta value))
  b5 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Flexiv_msgsMsgRobotStates_dtheta value)
  if length (ros2Flexiv_msgsMsgRobotStates_tau value) > 32 then Left 22 else Right ()
  prefix6 <- W.encodeCount 32 (length (ros2Flexiv_msgsMsgRobotStates_tau value))
  b6 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Flexiv_msgsMsgRobotStates_tau value)
  if length (ros2Flexiv_msgsMsgRobotStates_tau_dot value) > 32 then Left 22 else Right ()
  prefix7 <- W.encodeCount 32 (length (ros2Flexiv_msgsMsgRobotStates_tau_dot value))
  b7 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Flexiv_msgsMsgRobotStates_tau_dot value)
  if length (ros2Flexiv_msgsMsgRobotStates_tau_ext value) > 32 then Left 22 else Right ()
  prefix8 <- W.encodeCount 32 (length (ros2Flexiv_msgsMsgRobotStates_tau_ext value))
  b8 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Flexiv_msgsMsgRobotStates_tau_ext value)
  if length (ros2Flexiv_msgsMsgRobotStates_tau_interact value) > 32 then Left 22 else Right ()
  prefix9 <- W.encodeCount 32 (length (ros2Flexiv_msgsMsgRobotStates_tau_interact value))
  b9 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Flexiv_msgsMsgRobotStates_tau_interact value)
  if length (ros2Flexiv_msgsMsgRobotStates_temperature value) > 32 then Left 22 else Right ()
  prefix10 <- W.encodeCount 32 (length (ros2Flexiv_msgsMsgRobotStates_temperature value))
  b10 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Flexiv_msgsMsgRobotStates_temperature value)
  b11 <- encodeRos2Geometry_msgsMsgPoseStamped (ros2Flexiv_msgsMsgRobotStates_tcp_pose value)
  b12 <- encodeRos2Geometry_msgsMsgTwistStamped (ros2Flexiv_msgsMsgRobotStates_tcp_twist value)
  b13 <- encodeRos2Geometry_msgsMsgPoseStamped (ros2Flexiv_msgsMsgRobotStates_flange_pose value)
  b14 <- encodeRos2Geometry_msgsMsgWrenchStamped (ros2Flexiv_msgsMsgRobotStates_raw_ft_sensor value)
  b15 <- encodeRos2Geometry_msgsMsgWrenchStamped (ros2Flexiv_msgsMsgRobotStates_tcp_wrench_local value)
  b16 <- encodeRos2Geometry_msgsMsgWrenchStamped (ros2Flexiv_msgsMsgRobotStates_tcp_wrench value)
  b17 <- encodeRos2Geometry_msgsMsgWrenchStamped (ros2Flexiv_msgsMsgRobotStates_raw_tcp_wrench_local value)
  b18 <- encodeRos2Geometry_msgsMsgWrenchStamped (ros2Flexiv_msgsMsgRobotStates_raw_tcp_wrench value)
  W.bounded 5160 [b0, b1, prefix2, b2, prefix3, b3, prefix4, b4, prefix5, b5, prefix6, b6, prefix7, b7, prefix8, b8, prefix9, b9,
          prefix10, b10, b11, b12, b13, b14, b15, b16, b17, b18]
readRos2Flexiv_msgsMsgRobotStates :: W.Decoder Ros2Flexiv_msgsMsgRobotStates
readRos2Flexiv_msgsMsgRobotStates = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- readRos2Builtin_interfacesMsgTime
  count2 <- W.count 32
  a2 <- replicateM count2 (W.float64)
  count3 <- W.count 32
  a3 <- replicateM count3 (W.float64)
  count4 <- W.count 32
  a4 <- replicateM count4 (W.float64)
  count5 <- W.count 32
  a5 <- replicateM count5 (W.float64)
  count6 <- W.count 32
  a6 <- replicateM count6 (W.float64)
  count7 <- W.count 32
  a7 <- replicateM count7 (W.float64)
  count8 <- W.count 32
  a8 <- replicateM count8 (W.float64)
  count9 <- W.count 32
  a9 <- replicateM count9 (W.float64)
  count10 <- W.count 32
  a10 <- replicateM count10 (W.float64)
  a11 <- readRos2Geometry_msgsMsgPoseStamped
  a12 <- readRos2Geometry_msgsMsgTwistStamped
  a13 <- readRos2Geometry_msgsMsgPoseStamped
  a14 <- readRos2Geometry_msgsMsgWrenchStamped
  a15 <- readRos2Geometry_msgsMsgWrenchStamped
  a16 <- readRos2Geometry_msgsMsgWrenchStamped
  a17 <- readRos2Geometry_msgsMsgWrenchStamped
  a18 <- readRos2Geometry_msgsMsgWrenchStamped
  let value = Ros2Flexiv_msgsMsgRobotStates a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18
  case encodeRos2Flexiv_msgsMsgRobotStates value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Flexiv_msgsMsgRobotStates :: B.ByteString -> Either Word32 Ros2Flexiv_msgsMsgRobotStates
decodeRos2Flexiv_msgsMsgRobotStates = W.runDecoder 5160 readRos2Flexiv_msgsMsgRobotStates
instance Canonical Ros2Flexiv_msgsMsgRobotStates where
  maximumBytes _ = 5160
  encodeValue = encodeRos2Flexiv_msgsMsgRobotStates
  readValue = readRos2Flexiv_msgsMsgRobotStates
