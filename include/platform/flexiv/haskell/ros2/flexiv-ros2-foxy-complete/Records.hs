-- Generated complete canonical values; all field selectors are record-qualified.
module Flexiv.Ros2Foxy.Records where
import Data.Int
import Data.Word
import qualified Data.ByteString as B
import qualified Data.Text as T
import GHC.Float
import Control.Monad (replicateM)
import qualified RosWasm.Wire as W
import RosWasm.Typed (Canonical(..))
data Ros2Flexiv_msgsMsgJointPosVel = Ros2Flexiv_msgsMsgJointPosVel
  {
    -- | \@brief flexiv_msgs/msg/JointPosVel.positions: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgJointPosVel; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgJointPosVel_positions :: [Double]
  ,
    -- | \@brief flexiv_msgs/msg/JointPosVel.velocities: float64; exactly 7 elements.
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
defaultRos2Flexiv_msgsMsgJointPosVel = Ros2Flexiv_msgsMsgJointPosVel (replicate 7 (0)) (replicate 7 (0))
ros2Flexiv_msgsMsgJointPosVelCodecIdentity :: String
ros2Flexiv_msgsMsgJointPosVelCodecIdentity = "UWVMROS1_c56feb3a74545187381d2d82c230038aaa70fca3a9243486374d69f3fc3103a8"
encodeRos2Flexiv_msgsMsgJointPosVel :: Ros2Flexiv_msgsMsgJointPosVel -> Either Word32 B.ByteString
encodeRos2Flexiv_msgsMsgJointPosVel value = do
  if length (ros2Flexiv_msgsMsgJointPosVel_positions value) /= 7 then Left 22 else Right ()
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Flexiv_msgsMsgJointPosVel_positions value)
  if length (ros2Flexiv_msgsMsgJointPosVel_velocities value) /= 7 then Left 22 else Right ()
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Flexiv_msgsMsgJointPosVel_velocities value)
  W.bounded 112 [b0, b1]
readRos2Flexiv_msgsMsgJointPosVel :: W.Decoder Ros2Flexiv_msgsMsgJointPosVel
readRos2Flexiv_msgsMsgJointPosVel = do
  a0 <- replicateM 7 (W.float64)
  a1 <- replicateM 7 (W.float64)
  let value = Ros2Flexiv_msgsMsgJointPosVel a0 a1
  case encodeRos2Flexiv_msgsMsgJointPosVel value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Flexiv_msgsMsgJointPosVel :: B.ByteString -> Either Word32 Ros2Flexiv_msgsMsgJointPosVel
decodeRos2Flexiv_msgsMsgJointPosVel = W.runDecoder 112 readRos2Flexiv_msgsMsgJointPosVel
instance Canonical Ros2Flexiv_msgsMsgJointPosVel where
  maximumBytes _ = 112
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
ros2Flexiv_msgsMsgModeCodecIdentity = "UWVMROS1_285581852d18aa98aa5f42e3d920b263b9bc6907766f17daa503c58e81a2064f"
ros2Flexiv_msgsMsgMode_MODE_UNKNOWN :: Int8
ros2Flexiv_msgsMsgMode_MODE_UNKNOWN = -1
ros2Flexiv_msgsMsgMode_MODE_IDLE :: Int8
ros2Flexiv_msgsMsgMode_MODE_IDLE = 0
ros2Flexiv_msgsMsgMode_MODE_RT_JOINT_TORQUE :: Int8
ros2Flexiv_msgsMsgMode_MODE_RT_JOINT_TORQUE = 1
ros2Flexiv_msgsMsgMode_MODE_RT_JOINT_POSITION :: Int8
ros2Flexiv_msgsMsgMode_MODE_RT_JOINT_POSITION = 2
ros2Flexiv_msgsMsgMode_MODE_NRT_JOINT_POSITION :: Int8
ros2Flexiv_msgsMsgMode_MODE_NRT_JOINT_POSITION = 3
ros2Flexiv_msgsMsgMode_MODE_NRT_PLAN_EXECUTION :: Int8
ros2Flexiv_msgsMsgMode_MODE_NRT_PLAN_EXECUTION = 4
ros2Flexiv_msgsMsgMode_MODE_NRT_PRIMITIVE_EXECUTION :: Int8
ros2Flexiv_msgsMsgMode_MODE_NRT_PRIMITIVE_EXECUTION = 5
ros2Flexiv_msgsMsgMode_MODE_RT_CARTESIAN_MOTION_FORCE_BASE :: Int8
ros2Flexiv_msgsMsgMode_MODE_RT_CARTESIAN_MOTION_FORCE_BASE = 6
ros2Flexiv_msgsMsgMode_MODE_RT_CARTESIAN_MOTION_FORCE_TCP :: Int8
ros2Flexiv_msgsMsgMode_MODE_RT_CARTESIAN_MOTION_FORCE_TCP = 7
ros2Flexiv_msgsMsgMode_MODE_NRT_CARTESIAN_MOTION_FORCE_BASE :: Int8
ros2Flexiv_msgsMsgMode_MODE_NRT_CARTESIAN_MOTION_FORCE_BASE = 8
ros2Flexiv_msgsMsgMode_MODE_NRT_CARTESIAN_MOTION_FORCE_TCP :: Int8
ros2Flexiv_msgsMsgMode_MODE_NRT_CARTESIAN_MOTION_FORCE_TCP = 9
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
data Ros2Flexiv_msgsMsgRobotStates = Ros2Flexiv_msgsMsgRobotStates
  {
    -- | \@brief flexiv_msgs/msg/RobotStates.q: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgRobotStates_q :: [Double]
  ,
    -- | \@brief flexiv_msgs/msg/RobotStates.theta: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgRobotStates_theta :: [Double]
  ,
    -- | \@brief flexiv_msgs/msg/RobotStates.dq: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgRobotStates_dq :: [Double]
  ,
    -- | \@brief flexiv_msgs/msg/RobotStates.dtheta: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgRobotStates_dtheta :: [Double]
  ,
    -- | \@brief flexiv_msgs/msg/RobotStates.tau: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgRobotStates_tau :: [Double]
  ,
    -- | \@brief flexiv_msgs/msg/RobotStates.tau_des: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgRobotStates_tau_des :: [Double]
  ,
    -- | \@brief flexiv_msgs/msg/RobotStates.tau_dot: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgRobotStates_tau_dot :: [Double]
  ,
    -- | \@brief flexiv_msgs/msg/RobotStates.tau_ext: float64; exactly 7 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgRobotStates_tau_ext :: [Double]
  ,
    -- | \@brief flexiv_msgs/msg/RobotStates.tcp_pose: geometry_msgs/msg/Pose.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgRobotStates_tcp_pose :: Ros2Geometry_msgsMsgPose
  ,
    -- | \@brief flexiv_msgs/msg/RobotStates.tcp_pose_des: geometry_msgs/msg/Pose.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgRobotStates_tcp_pose_des :: Ros2Geometry_msgsMsgPose
  ,
    -- | \@brief flexiv_msgs/msg/RobotStates.tcp_vel: geometry_msgs/msg/Accel.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgRobotStates_tcp_vel :: Ros2Geometry_msgsMsgAccel
  ,
    -- | \@brief flexiv_msgs/msg/RobotStates.cam_pose: geometry_msgs/msg/Pose.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgRobotStates_cam_pose :: Ros2Geometry_msgsMsgPose
  ,
    -- | \@brief flexiv_msgs/msg/RobotStates.flange_pose: geometry_msgs/msg/Pose.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgRobotStates_flange_pose :: Ros2Geometry_msgsMsgPose
  ,
    -- | \@brief flexiv_msgs/msg/RobotStates.ft_sensor_raw: geometry_msgs/msg/Wrench.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgRobotStates_ft_sensor_raw :: Ros2Geometry_msgsMsgWrench
  ,
    -- | \@brief flexiv_msgs/msg/RobotStates.ext_wrench_tcp_frame: geometry_msgs/msg/Wrench.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgRobotStates_ext_wrench_tcp_frame :: Ros2Geometry_msgsMsgWrench
  ,
    -- | \@brief flexiv_msgs/msg/RobotStates.ext_wrench_base_frame: geometry_msgs/msg/Wrench.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/haskell/API-CONTRACT.md
    ros2Flexiv_msgsMsgRobotStates_ext_wrench_base_frame :: Ros2Geometry_msgsMsgWrench
  } deriving (Eq, Show)
defaultRos2Flexiv_msgsMsgRobotStates :: Ros2Flexiv_msgsMsgRobotStates
defaultRos2Flexiv_msgsMsgRobotStates = Ros2Flexiv_msgsMsgRobotStates (replicate 7 (0)) (replicate 7 (0)) (replicate 7 (0))
        (replicate 7 (0)) (replicate 7 (0)) (replicate 7 (0)) (replicate 7 (0)) (replicate 7 (0)) (defaultRos2Geometry_msgsMsgPose)
        (defaultRos2Geometry_msgsMsgPose) (defaultRos2Geometry_msgsMsgAccel) (defaultRos2Geometry_msgsMsgPose)
        (defaultRos2Geometry_msgsMsgPose) (defaultRos2Geometry_msgsMsgWrench) (defaultRos2Geometry_msgsMsgWrench)
        (defaultRos2Geometry_msgsMsgWrench)
ros2Flexiv_msgsMsgRobotStatesCodecIdentity :: String
ros2Flexiv_msgsMsgRobotStatesCodecIdentity = "UWVMROS1_ce6c3a354edf285fa22f8cfb509c4a5f33c1ef82b7dc3d749ae1ecd29dde844b"
encodeRos2Flexiv_msgsMsgRobotStates :: Ros2Flexiv_msgsMsgRobotStates -> Either Word32 B.ByteString
encodeRos2Flexiv_msgsMsgRobotStates value = do
  if length (ros2Flexiv_msgsMsgRobotStates_q value) /= 7 then Left 22 else Right ()
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Flexiv_msgsMsgRobotStates_q value)
  if length (ros2Flexiv_msgsMsgRobotStates_theta value) /= 7 then Left 22 else Right ()
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Flexiv_msgsMsgRobotStates_theta value)
  if length (ros2Flexiv_msgsMsgRobotStates_dq value) /= 7 then Left 22 else Right ()
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Flexiv_msgsMsgRobotStates_dq value)
  if length (ros2Flexiv_msgsMsgRobotStates_dtheta value) /= 7 then Left 22 else Right ()
  b3 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Flexiv_msgsMsgRobotStates_dtheta value)
  if length (ros2Flexiv_msgsMsgRobotStates_tau value) /= 7 then Left 22 else Right ()
  b4 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Flexiv_msgsMsgRobotStates_tau value)
  if length (ros2Flexiv_msgsMsgRobotStates_tau_des value) /= 7 then Left 22 else Right ()
  b5 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Flexiv_msgsMsgRobotStates_tau_des value)
  if length (ros2Flexiv_msgsMsgRobotStates_tau_dot value) /= 7 then Left 22 else Right ()
  b6 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Flexiv_msgsMsgRobotStates_tau_dot value)
  if length (ros2Flexiv_msgsMsgRobotStates_tau_ext value) /= 7 then Left 22 else Right ()
  b7 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Flexiv_msgsMsgRobotStates_tau_ext value)
  b8 <- encodeRos2Geometry_msgsMsgPose (ros2Flexiv_msgsMsgRobotStates_tcp_pose value)
  b9 <- encodeRos2Geometry_msgsMsgPose (ros2Flexiv_msgsMsgRobotStates_tcp_pose_des value)
  b10 <- encodeRos2Geometry_msgsMsgAccel (ros2Flexiv_msgsMsgRobotStates_tcp_vel value)
  b11 <- encodeRos2Geometry_msgsMsgPose (ros2Flexiv_msgsMsgRobotStates_cam_pose value)
  b12 <- encodeRos2Geometry_msgsMsgPose (ros2Flexiv_msgsMsgRobotStates_flange_pose value)
  b13 <- encodeRos2Geometry_msgsMsgWrench (ros2Flexiv_msgsMsgRobotStates_ft_sensor_raw value)
  b14 <- encodeRos2Geometry_msgsMsgWrench (ros2Flexiv_msgsMsgRobotStates_ext_wrench_tcp_frame value)
  b15 <- encodeRos2Geometry_msgsMsgWrench (ros2Flexiv_msgsMsgRobotStates_ext_wrench_base_frame value)
  W.bounded 864 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15]
readRos2Flexiv_msgsMsgRobotStates :: W.Decoder Ros2Flexiv_msgsMsgRobotStates
readRos2Flexiv_msgsMsgRobotStates = do
  a0 <- replicateM 7 (W.float64)
  a1 <- replicateM 7 (W.float64)
  a2 <- replicateM 7 (W.float64)
  a3 <- replicateM 7 (W.float64)
  a4 <- replicateM 7 (W.float64)
  a5 <- replicateM 7 (W.float64)
  a6 <- replicateM 7 (W.float64)
  a7 <- replicateM 7 (W.float64)
  a8 <- readRos2Geometry_msgsMsgPose
  a9 <- readRos2Geometry_msgsMsgPose
  a10 <- readRos2Geometry_msgsMsgAccel
  a11 <- readRos2Geometry_msgsMsgPose
  a12 <- readRos2Geometry_msgsMsgPose
  a13 <- readRos2Geometry_msgsMsgWrench
  a14 <- readRos2Geometry_msgsMsgWrench
  a15 <- readRos2Geometry_msgsMsgWrench
  let value = Ros2Flexiv_msgsMsgRobotStates a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15
  case encodeRos2Flexiv_msgsMsgRobotStates value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Flexiv_msgsMsgRobotStates :: B.ByteString -> Either Word32 Ros2Flexiv_msgsMsgRobotStates
decodeRos2Flexiv_msgsMsgRobotStates = W.runDecoder 864 readRos2Flexiv_msgsMsgRobotStates
instance Canonical Ros2Flexiv_msgsMsgRobotStates where
  maximumBytes _ = 864
  encodeValue = encodeRos2Flexiv_msgsMsgRobotStates
  readValue = readRos2Flexiv_msgsMsgRobotStates
