-- Generated complete canonical values; all field selectors are record-qualified.
module Flexiv.Ros1Noetic.Records where
import Data.Int
import Data.Word
import qualified Data.ByteString as B
import qualified Data.Text as T
import GHC.Float
import Control.Monad (replicateM)
import qualified RosWasm.Wire as W
import RosWasm.Typed (Canonical(..))
data Ros1Flexiv_msgsJointPosVel = Ros1Flexiv_msgsJointPosVel
  {
    -- | \@brief flexiv_msgs/JointPosVel.positions: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Flexiv_msgsJointPosVel; share/platform/ros/haskell/API-CONTRACT.md
    ros1Flexiv_msgsJointPosVel_positions :: [Double]
  ,
    -- | \@brief flexiv_msgs/JointPosVel.velocities: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Flexiv_msgsJointPosVel; share/platform/ros/haskell/API-CONTRACT.md
    ros1Flexiv_msgsJointPosVel_velocities :: [Double]
  } deriving (Eq, Show)
defaultRos1Flexiv_msgsJointPosVel :: Ros1Flexiv_msgsJointPosVel
defaultRos1Flexiv_msgsJointPosVel = Ros1Flexiv_msgsJointPosVel (replicate 7 (0)) (replicate 7 (0))
ros1Flexiv_msgsJointPosVelCodecIdentity :: String
ros1Flexiv_msgsJointPosVelCodecIdentity = "UWVMROS1_60868295fe1798f349d7f675035bd476f0f6caa8b7568e7a66487c32459fdfaa"
encodeRos1Flexiv_msgsJointPosVel :: Ros1Flexiv_msgsJointPosVel -> Either Word32 B.ByteString
encodeRos1Flexiv_msgsJointPosVel value = do
  if length (ros1Flexiv_msgsJointPosVel_positions value) /= 7 then Left 22 else Right ()
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Flexiv_msgsJointPosVel_positions value)
  if length (ros1Flexiv_msgsJointPosVel_velocities value) /= 7 then Left 22 else Right ()
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Flexiv_msgsJointPosVel_velocities value)
  W.bounded 112 [b0, b1]
readRos1Flexiv_msgsJointPosVel :: W.Decoder Ros1Flexiv_msgsJointPosVel
readRos1Flexiv_msgsJointPosVel = do
  a0 <- replicateM 7 (W.float64)
  a1 <- replicateM 7 (W.float64)
  let value = Ros1Flexiv_msgsJointPosVel a0 a1
  case encodeRos1Flexiv_msgsJointPosVel value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Flexiv_msgsJointPosVel :: B.ByteString -> Either Word32 Ros1Flexiv_msgsJointPosVel
decodeRos1Flexiv_msgsJointPosVel = W.runDecoder 112 readRos1Flexiv_msgsJointPosVel
instance Canonical Ros1Flexiv_msgsJointPosVel where
  maximumBytes _ = 112
  encodeValue = encodeRos1Flexiv_msgsJointPosVel
  readValue = readRos1Flexiv_msgsJointPosVel
data Ros1Flexiv_msgsMode = Ros1Flexiv_msgsMode
  {
    -- | \@brief flexiv_msgs/Mode.mode: int8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Flexiv_msgsMode; share/platform/ros/haskell/API-CONTRACT.md
    ros1Flexiv_msgsMode_mode :: Int8
  } deriving (Eq, Show)
defaultRos1Flexiv_msgsMode :: Ros1Flexiv_msgsMode
defaultRos1Flexiv_msgsMode = Ros1Flexiv_msgsMode (0)
ros1Flexiv_msgsModeCodecIdentity :: String
ros1Flexiv_msgsModeCodecIdentity = "UWVMROS1_85789f97962c70edfe4703d5a78ed198655e3ebe300f5a9c588d739bae87f422"
ros1Flexiv_msgsMode_MODE_UNKNOWN :: Int8
ros1Flexiv_msgsMode_MODE_UNKNOWN = -1
ros1Flexiv_msgsMode_MODE_IDLE :: Int8
ros1Flexiv_msgsMode_MODE_IDLE = 0
ros1Flexiv_msgsMode_MODE_RT_JOINT_TORQUE :: Int8
ros1Flexiv_msgsMode_MODE_RT_JOINT_TORQUE = 1
ros1Flexiv_msgsMode_MODE_RT_JOINT_POSITION :: Int8
ros1Flexiv_msgsMode_MODE_RT_JOINT_POSITION = 2
ros1Flexiv_msgsMode_MODE_NRT_JOINT_POSITION :: Int8
ros1Flexiv_msgsMode_MODE_NRT_JOINT_POSITION = 3
ros1Flexiv_msgsMode_MODE_NRT_PLAN_EXECUTION :: Int8
ros1Flexiv_msgsMode_MODE_NRT_PLAN_EXECUTION = 4
ros1Flexiv_msgsMode_MODE_NRT_PRIMITIVE_EXECUTION :: Int8
ros1Flexiv_msgsMode_MODE_NRT_PRIMITIVE_EXECUTION = 5
ros1Flexiv_msgsMode_MODE_RT_CARTESIAN_MOTION_FORCE_BASE :: Int8
ros1Flexiv_msgsMode_MODE_RT_CARTESIAN_MOTION_FORCE_BASE = 6
ros1Flexiv_msgsMode_MODE_RT_CARTESIAN_MOTION_FORCE_TCP :: Int8
ros1Flexiv_msgsMode_MODE_RT_CARTESIAN_MOTION_FORCE_TCP = 7
ros1Flexiv_msgsMode_MODE_NRT_CARTESIAN_MOTION_FORCE_BASE :: Int8
ros1Flexiv_msgsMode_MODE_NRT_CARTESIAN_MOTION_FORCE_BASE = 8
ros1Flexiv_msgsMode_MODE_NRT_CARTESIAN_MOTION_FORCE_TCP :: Int8
ros1Flexiv_msgsMode_MODE_NRT_CARTESIAN_MOTION_FORCE_TCP = 9
encodeRos1Flexiv_msgsMode :: Ros1Flexiv_msgsMode -> Either Word32 B.ByteString
encodeRos1Flexiv_msgsMode value = do
  b0 <- W.encodeSigned 1 (fromIntegral (ros1Flexiv_msgsMode_mode value))
  W.bounded 1 [b0]
readRos1Flexiv_msgsMode :: W.Decoder Ros1Flexiv_msgsMode
readRos1Flexiv_msgsMode = do
  a0 <- fromIntegral <$> W.signed 1
  let value = Ros1Flexiv_msgsMode a0
  case encodeRos1Flexiv_msgsMode value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Flexiv_msgsMode :: B.ByteString -> Either Word32 Ros1Flexiv_msgsMode
decodeRos1Flexiv_msgsMode = W.runDecoder 1 readRos1Flexiv_msgsMode
instance Canonical Ros1Flexiv_msgsMode where
  maximumBytes _ = 1
  encodeValue = encodeRos1Flexiv_msgsMode
  readValue = readRos1Flexiv_msgsMode
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
defaultRos1Geometry_msgsPoint :: Ros1Geometry_msgsPoint
defaultRos1Geometry_msgsPoint = Ros1Geometry_msgsPoint (0) (0) (0)
ros1Geometry_msgsPointCodecIdentity :: String
ros1Geometry_msgsPointCodecIdentity = "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b"
encodeRos1Geometry_msgsPoint :: Ros1Geometry_msgsPoint -> Either Word32 B.ByteString
encodeRos1Geometry_msgsPoint value = do
  b0 <- W.encodeFloat64 (ros1Geometry_msgsPoint_x value)
  b1 <- W.encodeFloat64 (ros1Geometry_msgsPoint_y value)
  b2 <- W.encodeFloat64 (ros1Geometry_msgsPoint_z value)
  W.bounded 24 [b0, b1, b2]
readRos1Geometry_msgsPoint :: W.Decoder Ros1Geometry_msgsPoint
readRos1Geometry_msgsPoint = do
  a0 <- W.float64
  a1 <- W.float64
  a2 <- W.float64
  let value = Ros1Geometry_msgsPoint a0 a1 a2
  case encodeRos1Geometry_msgsPoint value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Geometry_msgsPoint :: B.ByteString -> Either Word32 Ros1Geometry_msgsPoint
decodeRos1Geometry_msgsPoint = W.runDecoder 24 readRos1Geometry_msgsPoint
instance Canonical Ros1Geometry_msgsPoint where
  maximumBytes _ = 24
  encodeValue = encodeRos1Geometry_msgsPoint
  readValue = readRos1Geometry_msgsPoint
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
defaultRos1Geometry_msgsQuaternion :: Ros1Geometry_msgsQuaternion
defaultRos1Geometry_msgsQuaternion = Ros1Geometry_msgsQuaternion (0) (0) (0) (0)
ros1Geometry_msgsQuaternionCodecIdentity :: String
ros1Geometry_msgsQuaternionCodecIdentity = "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934"
encodeRos1Geometry_msgsQuaternion :: Ros1Geometry_msgsQuaternion -> Either Word32 B.ByteString
encodeRos1Geometry_msgsQuaternion value = do
  b0 <- W.encodeFloat64 (ros1Geometry_msgsQuaternion_x value)
  b1 <- W.encodeFloat64 (ros1Geometry_msgsQuaternion_y value)
  b2 <- W.encodeFloat64 (ros1Geometry_msgsQuaternion_z value)
  b3 <- W.encodeFloat64 (ros1Geometry_msgsQuaternion_w value)
  W.bounded 32 [b0, b1, b2, b3]
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
decodeRos1Geometry_msgsQuaternion :: B.ByteString -> Either Word32 Ros1Geometry_msgsQuaternion
decodeRos1Geometry_msgsQuaternion = W.runDecoder 32 readRos1Geometry_msgsQuaternion
instance Canonical Ros1Geometry_msgsQuaternion where
  maximumBytes _ = 32
  encodeValue = encodeRos1Geometry_msgsQuaternion
  readValue = readRos1Geometry_msgsQuaternion
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
defaultRos1Geometry_msgsPose :: Ros1Geometry_msgsPose
defaultRos1Geometry_msgsPose = Ros1Geometry_msgsPose (defaultRos1Geometry_msgsPoint) (defaultRos1Geometry_msgsQuaternion)
ros1Geometry_msgsPoseCodecIdentity :: String
ros1Geometry_msgsPoseCodecIdentity = "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471"
encodeRos1Geometry_msgsPose :: Ros1Geometry_msgsPose -> Either Word32 B.ByteString
encodeRos1Geometry_msgsPose value = do
  b0 <- encodeRos1Geometry_msgsPoint (ros1Geometry_msgsPose_position value)
  b1 <- encodeRos1Geometry_msgsQuaternion (ros1Geometry_msgsPose_orientation value)
  W.bounded 56 [b0, b1]
readRos1Geometry_msgsPose :: W.Decoder Ros1Geometry_msgsPose
readRos1Geometry_msgsPose = do
  a0 <- readRos1Geometry_msgsPoint
  a1 <- readRos1Geometry_msgsQuaternion
  let value = Ros1Geometry_msgsPose a0 a1
  case encodeRos1Geometry_msgsPose value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Geometry_msgsPose :: B.ByteString -> Either Word32 Ros1Geometry_msgsPose
decodeRos1Geometry_msgsPose = W.runDecoder 56 readRos1Geometry_msgsPose
instance Canonical Ros1Geometry_msgsPose where
  maximumBytes _ = 56
  encodeValue = encodeRos1Geometry_msgsPose
  readValue = readRos1Geometry_msgsPose
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
defaultRos1Geometry_msgsVector3 :: Ros1Geometry_msgsVector3
defaultRos1Geometry_msgsVector3 = Ros1Geometry_msgsVector3 (0) (0) (0)
ros1Geometry_msgsVector3CodecIdentity :: String
ros1Geometry_msgsVector3CodecIdentity = "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc"
encodeRos1Geometry_msgsVector3 :: Ros1Geometry_msgsVector3 -> Either Word32 B.ByteString
encodeRos1Geometry_msgsVector3 value = do
  b0 <- W.encodeFloat64 (ros1Geometry_msgsVector3_x value)
  b1 <- W.encodeFloat64 (ros1Geometry_msgsVector3_y value)
  b2 <- W.encodeFloat64 (ros1Geometry_msgsVector3_z value)
  W.bounded 24 [b0, b1, b2]
readRos1Geometry_msgsVector3 :: W.Decoder Ros1Geometry_msgsVector3
readRos1Geometry_msgsVector3 = do
  a0 <- W.float64
  a1 <- W.float64
  a2 <- W.float64
  let value = Ros1Geometry_msgsVector3 a0 a1 a2
  case encodeRos1Geometry_msgsVector3 value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Geometry_msgsVector3 :: B.ByteString -> Either Word32 Ros1Geometry_msgsVector3
decodeRos1Geometry_msgsVector3 = W.runDecoder 24 readRos1Geometry_msgsVector3
instance Canonical Ros1Geometry_msgsVector3 where
  maximumBytes _ = 24
  encodeValue = encodeRos1Geometry_msgsVector3
  readValue = readRos1Geometry_msgsVector3
data Ros1Geometry_msgsAccel = Ros1Geometry_msgsAccel
  {
    -- | \@brief geometry_msgs/Accel.linear: geometry_msgs/Vector3.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsAccel; share/platform/ros/haskell/API-CONTRACT.md
    ros1Geometry_msgsAccel_linear :: Ros1Geometry_msgsVector3
  ,
    -- | \@brief geometry_msgs/Accel.angular: geometry_msgs/Vector3.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsAccel; share/platform/ros/haskell/API-CONTRACT.md
    ros1Geometry_msgsAccel_angular :: Ros1Geometry_msgsVector3
  } deriving (Eq, Show)
defaultRos1Geometry_msgsAccel :: Ros1Geometry_msgsAccel
defaultRos1Geometry_msgsAccel = Ros1Geometry_msgsAccel (defaultRos1Geometry_msgsVector3) (defaultRos1Geometry_msgsVector3)
ros1Geometry_msgsAccelCodecIdentity :: String
ros1Geometry_msgsAccelCodecIdentity = "UWVMROS1_3345762fc354a5698d41098276702c7d3cee87fe9a531b0229111b9b3bf700ed"
encodeRos1Geometry_msgsAccel :: Ros1Geometry_msgsAccel -> Either Word32 B.ByteString
encodeRos1Geometry_msgsAccel value = do
  b0 <- encodeRos1Geometry_msgsVector3 (ros1Geometry_msgsAccel_linear value)
  b1 <- encodeRos1Geometry_msgsVector3 (ros1Geometry_msgsAccel_angular value)
  W.bounded 48 [b0, b1]
readRos1Geometry_msgsAccel :: W.Decoder Ros1Geometry_msgsAccel
readRos1Geometry_msgsAccel = do
  a0 <- readRos1Geometry_msgsVector3
  a1 <- readRos1Geometry_msgsVector3
  let value = Ros1Geometry_msgsAccel a0 a1
  case encodeRos1Geometry_msgsAccel value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Geometry_msgsAccel :: B.ByteString -> Either Word32 Ros1Geometry_msgsAccel
decodeRos1Geometry_msgsAccel = W.runDecoder 48 readRos1Geometry_msgsAccel
instance Canonical Ros1Geometry_msgsAccel where
  maximumBytes _ = 48
  encodeValue = encodeRos1Geometry_msgsAccel
  readValue = readRos1Geometry_msgsAccel
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
defaultRos1Geometry_msgsWrench :: Ros1Geometry_msgsWrench
defaultRos1Geometry_msgsWrench = Ros1Geometry_msgsWrench (defaultRos1Geometry_msgsVector3) (defaultRos1Geometry_msgsVector3)
ros1Geometry_msgsWrenchCodecIdentity :: String
ros1Geometry_msgsWrenchCodecIdentity = "UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3"
encodeRos1Geometry_msgsWrench :: Ros1Geometry_msgsWrench -> Either Word32 B.ByteString
encodeRos1Geometry_msgsWrench value = do
  b0 <- encodeRos1Geometry_msgsVector3 (ros1Geometry_msgsWrench_force value)
  b1 <- encodeRos1Geometry_msgsVector3 (ros1Geometry_msgsWrench_torque value)
  W.bounded 48 [b0, b1]
readRos1Geometry_msgsWrench :: W.Decoder Ros1Geometry_msgsWrench
readRos1Geometry_msgsWrench = do
  a0 <- readRos1Geometry_msgsVector3
  a1 <- readRos1Geometry_msgsVector3
  let value = Ros1Geometry_msgsWrench a0 a1
  case encodeRos1Geometry_msgsWrench value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Geometry_msgsWrench :: B.ByteString -> Either Word32 Ros1Geometry_msgsWrench
decodeRos1Geometry_msgsWrench = W.runDecoder 48 readRos1Geometry_msgsWrench
instance Canonical Ros1Geometry_msgsWrench where
  maximumBytes _ = 48
  encodeValue = encodeRos1Geometry_msgsWrench
  readValue = readRos1Geometry_msgsWrench
data Ros1Flexiv_msgsRobotStates = Ros1Flexiv_msgsRobotStates
  {
    -- | \@brief flexiv_msgs/RobotStates.q: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Flexiv_msgsRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros1Flexiv_msgsRobotStates_q :: [Double]
  ,
    -- | \@brief flexiv_msgs/RobotStates.theta: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Flexiv_msgsRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros1Flexiv_msgsRobotStates_theta :: [Double]
  ,
    -- | \@brief flexiv_msgs/RobotStates.dq: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Flexiv_msgsRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros1Flexiv_msgsRobotStates_dq :: [Double]
  ,
    -- | \@brief flexiv_msgs/RobotStates.dtheta: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Flexiv_msgsRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros1Flexiv_msgsRobotStates_dtheta :: [Double]
  ,
    -- | \@brief flexiv_msgs/RobotStates.tau: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Flexiv_msgsRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros1Flexiv_msgsRobotStates_tau :: [Double]
  ,
    -- | \@brief flexiv_msgs/RobotStates.tau_des: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Flexiv_msgsRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros1Flexiv_msgsRobotStates_tau_des :: [Double]
  ,
    -- | \@brief flexiv_msgs/RobotStates.tau_dot: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Flexiv_msgsRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros1Flexiv_msgsRobotStates_tau_dot :: [Double]
  ,
    -- | \@brief flexiv_msgs/RobotStates.tau_ext: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Flexiv_msgsRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros1Flexiv_msgsRobotStates_tau_ext :: [Double]
  ,
    -- | \@brief flexiv_msgs/RobotStates.tcp_pose: geometry_msgs/Pose.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Flexiv_msgsRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros1Flexiv_msgsRobotStates_tcp_pose :: Ros1Geometry_msgsPose
  ,
    -- | \@brief flexiv_msgs/RobotStates.tcp_pose_des: geometry_msgs/Pose.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Flexiv_msgsRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros1Flexiv_msgsRobotStates_tcp_pose_des :: Ros1Geometry_msgsPose
  ,
    -- | \@brief flexiv_msgs/RobotStates.tcp_vel: geometry_msgs/Accel.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Flexiv_msgsRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros1Flexiv_msgsRobotStates_tcp_vel :: Ros1Geometry_msgsAccel
  ,
    -- | \@brief flexiv_msgs/RobotStates.cam_pose: geometry_msgs/Pose.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Flexiv_msgsRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros1Flexiv_msgsRobotStates_cam_pose :: Ros1Geometry_msgsPose
  ,
    -- | \@brief flexiv_msgs/RobotStates.flange_pose: geometry_msgs/Pose.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Flexiv_msgsRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros1Flexiv_msgsRobotStates_flange_pose :: Ros1Geometry_msgsPose
  ,
    -- | \@brief flexiv_msgs/RobotStates.ft_sensor_raw: geometry_msgs/Wrench.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Flexiv_msgsRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros1Flexiv_msgsRobotStates_ft_sensor_raw :: Ros1Geometry_msgsWrench
  ,
    -- | \@brief flexiv_msgs/RobotStates.ext_wrench_tcp_frame: geometry_msgs/Wrench.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Flexiv_msgsRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros1Flexiv_msgsRobotStates_ext_wrench_tcp_frame :: Ros1Geometry_msgsWrench
  ,
    -- | \@brief flexiv_msgs/RobotStates.ext_wrench_base_frame: geometry_msgs/Wrench.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros1Flexiv_msgsRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros1Flexiv_msgsRobotStates_ext_wrench_base_frame :: Ros1Geometry_msgsWrench
  } deriving (Eq, Show)
defaultRos1Flexiv_msgsRobotStates :: Ros1Flexiv_msgsRobotStates
defaultRos1Flexiv_msgsRobotStates = Ros1Flexiv_msgsRobotStates (replicate 7 (0)) (replicate 7 (0)) (replicate 7 (0)) (replicate 7
        (0)) (replicate 7 (0)) (replicate 7 (0)) (replicate 7 (0)) (replicate 7 (0)) (defaultRos1Geometry_msgsPose)
        (defaultRos1Geometry_msgsPose) (defaultRos1Geometry_msgsAccel) (defaultRos1Geometry_msgsPose) (defaultRos1Geometry_msgsPose)
        (defaultRos1Geometry_msgsWrench) (defaultRos1Geometry_msgsWrench) (defaultRos1Geometry_msgsWrench)
ros1Flexiv_msgsRobotStatesCodecIdentity :: String
ros1Flexiv_msgsRobotStatesCodecIdentity = "UWVMROS1_a64419da913e6fafce645177a491cc77a1dcee9ef785bc04380e7aebaeeb12a8"
encodeRos1Flexiv_msgsRobotStates :: Ros1Flexiv_msgsRobotStates -> Either Word32 B.ByteString
encodeRos1Flexiv_msgsRobotStates value = do
  if length (ros1Flexiv_msgsRobotStates_q value) /= 7 then Left 22 else Right ()
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Flexiv_msgsRobotStates_q value)
  if length (ros1Flexiv_msgsRobotStates_theta value) /= 7 then Left 22 else Right ()
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Flexiv_msgsRobotStates_theta value)
  if length (ros1Flexiv_msgsRobotStates_dq value) /= 7 then Left 22 else Right ()
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Flexiv_msgsRobotStates_dq value)
  if length (ros1Flexiv_msgsRobotStates_dtheta value) /= 7 then Left 22 else Right ()
  b3 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Flexiv_msgsRobotStates_dtheta value)
  if length (ros1Flexiv_msgsRobotStates_tau value) /= 7 then Left 22 else Right ()
  b4 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Flexiv_msgsRobotStates_tau value)
  if length (ros1Flexiv_msgsRobotStates_tau_des value) /= 7 then Left 22 else Right ()
  b5 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Flexiv_msgsRobotStates_tau_des value)
  if length (ros1Flexiv_msgsRobotStates_tau_dot value) /= 7 then Left 22 else Right ()
  b6 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Flexiv_msgsRobotStates_tau_dot value)
  if length (ros1Flexiv_msgsRobotStates_tau_ext value) /= 7 then Left 22 else Right ()
  b7 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Flexiv_msgsRobotStates_tau_ext value)
  b8 <- encodeRos1Geometry_msgsPose (ros1Flexiv_msgsRobotStates_tcp_pose value)
  b9 <- encodeRos1Geometry_msgsPose (ros1Flexiv_msgsRobotStates_tcp_pose_des value)
  b10 <- encodeRos1Geometry_msgsAccel (ros1Flexiv_msgsRobotStates_tcp_vel value)
  b11 <- encodeRos1Geometry_msgsPose (ros1Flexiv_msgsRobotStates_cam_pose value)
  b12 <- encodeRos1Geometry_msgsPose (ros1Flexiv_msgsRobotStates_flange_pose value)
  b13 <- encodeRos1Geometry_msgsWrench (ros1Flexiv_msgsRobotStates_ft_sensor_raw value)
  b14 <- encodeRos1Geometry_msgsWrench (ros1Flexiv_msgsRobotStates_ext_wrench_tcp_frame value)
  b15 <- encodeRos1Geometry_msgsWrench (ros1Flexiv_msgsRobotStates_ext_wrench_base_frame value)
  W.bounded 864 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15]
readRos1Flexiv_msgsRobotStates :: W.Decoder Ros1Flexiv_msgsRobotStates
readRos1Flexiv_msgsRobotStates = do
  a0 <- replicateM 7 (W.float64)
  a1 <- replicateM 7 (W.float64)
  a2 <- replicateM 7 (W.float64)
  a3 <- replicateM 7 (W.float64)
  a4 <- replicateM 7 (W.float64)
  a5 <- replicateM 7 (W.float64)
  a6 <- replicateM 7 (W.float64)
  a7 <- replicateM 7 (W.float64)
  a8 <- readRos1Geometry_msgsPose
  a9 <- readRos1Geometry_msgsPose
  a10 <- readRos1Geometry_msgsAccel
  a11 <- readRos1Geometry_msgsPose
  a12 <- readRos1Geometry_msgsPose
  a13 <- readRos1Geometry_msgsWrench
  a14 <- readRos1Geometry_msgsWrench
  a15 <- readRos1Geometry_msgsWrench
  let value = Ros1Flexiv_msgsRobotStates a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15
  case encodeRos1Flexiv_msgsRobotStates value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Flexiv_msgsRobotStates :: B.ByteString -> Either Word32 Ros1Flexiv_msgsRobotStates
decodeRos1Flexiv_msgsRobotStates = W.runDecoder 864 readRos1Flexiv_msgsRobotStates
instance Canonical Ros1Flexiv_msgsRobotStates where
  maximumBytes _ = 864
  encodeValue = encodeRos1Flexiv_msgsRobotStates
  readValue = readRos1Flexiv_msgsRobotStates
