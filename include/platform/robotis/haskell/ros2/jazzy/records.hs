-- Generated complete canonical values; all field selectors are record-qualified.
module RosWasm.Records where
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
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Builtin_interfacesMsgTime; document/platform/robotis/en_US/language/haskell/API.md
    ros2Builtin_interfacesMsgTime_sec :: Int32
  ,
    -- | \@brief builtin_interfaces/msg/Time.nanosec: uint32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Builtin_interfacesMsgTime; document/platform/robotis/en_US/language/haskell/API.md
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
data Ros2Geometry_msgsMsgPoint = Ros2Geometry_msgsMsgPoint
  {
    -- | \@brief geometry_msgs/msg/Point.x: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgPoint; document/platform/robotis/en_US/language/haskell/API.md
    ros2Geometry_msgsMsgPoint_x :: Double
  ,
    -- | \@brief geometry_msgs/msg/Point.y: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgPoint; document/platform/robotis/en_US/language/haskell/API.md
    ros2Geometry_msgsMsgPoint_y :: Double
  ,
    -- | \@brief geometry_msgs/msg/Point.z: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgPoint; document/platform/robotis/en_US/language/haskell/API.md
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
    --  \@details Schema default 0.0. Encoding preserves the original field position and signedness; invalid
    --  bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgQuaternion; document/platform/robotis/en_US/language/haskell/API.md
    ros2Geometry_msgsMsgQuaternion_x :: Double
  ,
    -- | \@brief geometry_msgs/msg/Quaternion.y: float64.
    --  \@details Schema default 0.0. Encoding preserves the original field position and signedness; invalid
    --  bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgQuaternion; document/platform/robotis/en_US/language/haskell/API.md
    ros2Geometry_msgsMsgQuaternion_y :: Double
  ,
    -- | \@brief geometry_msgs/msg/Quaternion.z: float64.
    --  \@details Schema default 0.0. Encoding preserves the original field position and signedness; invalid
    --  bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgQuaternion; document/platform/robotis/en_US/language/haskell/API.md
    ros2Geometry_msgsMsgQuaternion_z :: Double
  ,
    -- | \@brief geometry_msgs/msg/Quaternion.w: float64.
    --  \@details Schema default 1.0. Encoding preserves the original field position and signedness; invalid
    --  bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgQuaternion; document/platform/robotis/en_US/language/haskell/API.md
    ros2Geometry_msgsMsgQuaternion_w :: Double
  } deriving (Eq, Show)
defaultRos2Geometry_msgsMsgQuaternion :: Ros2Geometry_msgsMsgQuaternion
defaultRos2Geometry_msgsMsgQuaternion =
    Ros2Geometry_msgsMsgQuaternion
    (castWord64ToDouble 0x0)
    (castWord64ToDouble 0x0)
    (castWord64ToDouble 0x0)
    (castWord64ToDouble 0x3ff0000000000000)
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
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgPose; document/platform/robotis/en_US/language/haskell/API.md
    ros2Geometry_msgsMsgPose_position :: Ros2Geometry_msgsMsgPoint
  ,
    -- | \@brief geometry_msgs/msg/Pose.orientation: geometry_msgs/msg/Quaternion.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgPose; document/platform/robotis/en_US/language/haskell/API.md
    ros2Geometry_msgsMsgPose_orientation :: Ros2Geometry_msgsMsgQuaternion
  } deriving (Eq, Show)
defaultRos2Geometry_msgsMsgPose :: Ros2Geometry_msgsMsgPose
defaultRos2Geometry_msgsMsgPose = Ros2Geometry_msgsMsgPose (defaultRos2Geometry_msgsMsgPoint) (defaultRos2Geometry_msgsMsgQuaternion)
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
data Ros2Geometry_msgsMsgPoseWithCovariance = Ros2Geometry_msgsMsgPoseWithCovariance
  {
    -- | \@brief geometry_msgs/msg/PoseWithCovariance.pose: geometry_msgs/msg/Pose.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgPoseWithCovariance; document/platform/robotis/en_US/language/haskell/API.md
    ros2Geometry_msgsMsgPoseWithCovariance_pose :: Ros2Geometry_msgsMsgPose
  ,
    -- | \@brief geometry_msgs/msg/PoseWithCovariance.covariance: float64; exactly 36 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgPoseWithCovariance; document/platform/robotis/en_US/language/haskell/API.md
    ros2Geometry_msgsMsgPoseWithCovariance_covariance :: [Double]
  } deriving (Eq, Show)
defaultRos2Geometry_msgsMsgPoseWithCovariance :: Ros2Geometry_msgsMsgPoseWithCovariance
defaultRos2Geometry_msgsMsgPoseWithCovariance = Ros2Geometry_msgsMsgPoseWithCovariance (defaultRos2Geometry_msgsMsgPose) (replicate 36 (0))
ros2Geometry_msgsMsgPoseWithCovarianceCodecIdentity :: String
ros2Geometry_msgsMsgPoseWithCovarianceCodecIdentity = "UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2"
encodeRos2Geometry_msgsMsgPoseWithCovariance :: Ros2Geometry_msgsMsgPoseWithCovariance -> Either Word32 B.ByteString
encodeRos2Geometry_msgsMsgPoseWithCovariance value = do
  b0 <- encodeRos2Geometry_msgsMsgPose (ros2Geometry_msgsMsgPoseWithCovariance_pose value)
  if length (ros2Geometry_msgsMsgPoseWithCovariance_covariance value) /= 36 then Left 22 else Right ()
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Geometry_msgsMsgPoseWithCovariance_covariance value)
  W.bounded 344 [b0, b1]
readRos2Geometry_msgsMsgPoseWithCovariance :: W.Decoder Ros2Geometry_msgsMsgPoseWithCovariance
readRos2Geometry_msgsMsgPoseWithCovariance = do
  a0 <- readRos2Geometry_msgsMsgPose
  a1 <- replicateM 36 (W.float64)
  let value = Ros2Geometry_msgsMsgPoseWithCovariance a0 a1
  case encodeRos2Geometry_msgsMsgPoseWithCovariance value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Geometry_msgsMsgPoseWithCovariance :: B.ByteString -> Either Word32 Ros2Geometry_msgsMsgPoseWithCovariance
decodeRos2Geometry_msgsMsgPoseWithCovariance = W.runDecoder 344 readRos2Geometry_msgsMsgPoseWithCovariance
instance Canonical Ros2Geometry_msgsMsgPoseWithCovariance where
  maximumBytes _ = 344
  encodeValue = encodeRos2Geometry_msgsMsgPoseWithCovariance
  readValue = readRos2Geometry_msgsMsgPoseWithCovariance
data Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3
  {
    -- | \@brief geometry_msgs/msg/Vector3.x: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgVector3; document/platform/robotis/en_US/language/haskell/API.md
    ros2Geometry_msgsMsgVector3_x :: Double
  ,
    -- | \@brief geometry_msgs/msg/Vector3.y: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgVector3; document/platform/robotis/en_US/language/haskell/API.md
    ros2Geometry_msgsMsgVector3_y :: Double
  ,
    -- | \@brief geometry_msgs/msg/Vector3.z: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgVector3; document/platform/robotis/en_US/language/haskell/API.md
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
data Ros2Geometry_msgsMsgTransform = Ros2Geometry_msgsMsgTransform
  {
    -- | \@brief geometry_msgs/msg/Transform.translation: geometry_msgs/msg/Vector3.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgTransform; document/platform/robotis/en_US/language/haskell/API.md
    ros2Geometry_msgsMsgTransform_translation :: Ros2Geometry_msgsMsgVector3
  ,
    -- | \@brief geometry_msgs/msg/Transform.rotation: geometry_msgs/msg/Quaternion.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgTransform; document/platform/robotis/en_US/language/haskell/API.md
    ros2Geometry_msgsMsgTransform_rotation :: Ros2Geometry_msgsMsgQuaternion
  } deriving (Eq, Show)
defaultRos2Geometry_msgsMsgTransform :: Ros2Geometry_msgsMsgTransform
defaultRos2Geometry_msgsMsgTransform = Ros2Geometry_msgsMsgTransform (defaultRos2Geometry_msgsMsgVector3) (defaultRos2Geometry_msgsMsgQuaternion)
ros2Geometry_msgsMsgTransformCodecIdentity :: String
ros2Geometry_msgsMsgTransformCodecIdentity = "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b"
encodeRos2Geometry_msgsMsgTransform :: Ros2Geometry_msgsMsgTransform -> Either Word32 B.ByteString
encodeRos2Geometry_msgsMsgTransform value = do
  b0 <- encodeRos2Geometry_msgsMsgVector3 (ros2Geometry_msgsMsgTransform_translation value)
  b1 <- encodeRos2Geometry_msgsMsgQuaternion (ros2Geometry_msgsMsgTransform_rotation value)
  W.bounded 56 [b0, b1]
readRos2Geometry_msgsMsgTransform :: W.Decoder Ros2Geometry_msgsMsgTransform
readRos2Geometry_msgsMsgTransform = do
  a0 <- readRos2Geometry_msgsMsgVector3
  a1 <- readRos2Geometry_msgsMsgQuaternion
  let value = Ros2Geometry_msgsMsgTransform a0 a1
  case encodeRos2Geometry_msgsMsgTransform value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Geometry_msgsMsgTransform :: B.ByteString -> Either Word32 Ros2Geometry_msgsMsgTransform
decodeRos2Geometry_msgsMsgTransform = W.runDecoder 56 readRos2Geometry_msgsMsgTransform
instance Canonical Ros2Geometry_msgsMsgTransform where
  maximumBytes _ = 56
  encodeValue = encodeRos2Geometry_msgsMsgTransform
  readValue = readRos2Geometry_msgsMsgTransform
data Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader
  {
    -- | \@brief std_msgs/msg/Header.stamp: builtin_interfaces/msg/Time.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Std_msgsMsgHeader; document/platform/robotis/en_US/language/haskell/API.md
    ros2Std_msgsMsgHeader_stamp :: Ros2Builtin_interfacesMsgTime
  ,
    -- | \@brief std_msgs/msg/Header.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Std_msgsMsgHeader; document/platform/robotis/en_US/language/haskell/API.md
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
data Ros2Geometry_msgsMsgTransformStamped = Ros2Geometry_msgsMsgTransformStamped
  {
    -- | \@brief geometry_msgs/msg/TransformStamped.header: std_msgs/msg/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgTransformStamped; document/platform/robotis/en_US/language/haskell/API.md
    ros2Geometry_msgsMsgTransformStamped_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief geometry_msgs/msg/TransformStamped.child_frame_id: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgTransformStamped; document/platform/robotis/en_US/language/haskell/API.md
    ros2Geometry_msgsMsgTransformStamped_child_frame_id :: T.Text
  ,
    -- | \@brief geometry_msgs/msg/TransformStamped.transform: geometry_msgs/msg/Transform.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgTransformStamped; document/platform/robotis/en_US/language/haskell/API.md
    ros2Geometry_msgsMsgTransformStamped_transform :: Ros2Geometry_msgsMsgTransform
  } deriving (Eq, Show)
defaultRos2Geometry_msgsMsgTransformStamped :: Ros2Geometry_msgsMsgTransformStamped
defaultRos2Geometry_msgsMsgTransformStamped =
    Ros2Geometry_msgsMsgTransformStamped
    (defaultRos2Std_msgsMsgHeader)
    (T.empty)
    (defaultRos2Geometry_msgsMsgTransform)
ros2Geometry_msgsMsgTransformStampedCodecIdentity :: String
ros2Geometry_msgsMsgTransformStampedCodecIdentity = "UWVMROS1_1cb6033612e0632fe87e6cf44bf5a899220370c372ba25b989a066171925ee7a"
encodeRos2Geometry_msgsMsgTransformStamped :: Ros2Geometry_msgsMsgTransformStamped -> Either Word32 B.ByteString
encodeRos2Geometry_msgsMsgTransformStamped value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Geometry_msgsMsgTransformStamped_header value)
  b1 <- W.encodeText 256 True (ros2Geometry_msgsMsgTransformStamped_child_frame_id value)
  b2 <- encodeRos2Geometry_msgsMsgTransform (ros2Geometry_msgsMsgTransformStamped_transform value)
  W.bounded 456 [b0, b1, b2]
readRos2Geometry_msgsMsgTransformStamped :: W.Decoder Ros2Geometry_msgsMsgTransformStamped
readRos2Geometry_msgsMsgTransformStamped = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- W.text 256 True
  a2 <- readRos2Geometry_msgsMsgTransform
  let value = Ros2Geometry_msgsMsgTransformStamped a0 a1 a2
  case encodeRos2Geometry_msgsMsgTransformStamped value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Geometry_msgsMsgTransformStamped :: B.ByteString -> Either Word32 Ros2Geometry_msgsMsgTransformStamped
decodeRos2Geometry_msgsMsgTransformStamped = W.runDecoder 456 readRos2Geometry_msgsMsgTransformStamped
instance Canonical Ros2Geometry_msgsMsgTransformStamped where
  maximumBytes _ = 456
  encodeValue = encodeRos2Geometry_msgsMsgTransformStamped
  readValue = readRos2Geometry_msgsMsgTransformStamped
data Ros2Geometry_msgsMsgTwist = Ros2Geometry_msgsMsgTwist
  {
    -- | \@brief geometry_msgs/msg/Twist.linear: geometry_msgs/msg/Vector3.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgTwist; document/platform/robotis/en_US/language/haskell/API.md
    ros2Geometry_msgsMsgTwist_linear :: Ros2Geometry_msgsMsgVector3
  ,
    -- | \@brief geometry_msgs/msg/Twist.angular: geometry_msgs/msg/Vector3.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgTwist; document/platform/robotis/en_US/language/haskell/API.md
    ros2Geometry_msgsMsgTwist_angular :: Ros2Geometry_msgsMsgVector3
  } deriving (Eq, Show)
defaultRos2Geometry_msgsMsgTwist :: Ros2Geometry_msgsMsgTwist
defaultRos2Geometry_msgsMsgTwist = Ros2Geometry_msgsMsgTwist (defaultRos2Geometry_msgsMsgVector3) (defaultRos2Geometry_msgsMsgVector3)
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
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgTwistStamped; document/platform/robotis/en_US/language/haskell/API.md
    ros2Geometry_msgsMsgTwistStamped_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief geometry_msgs/msg/TwistStamped.twist: geometry_msgs/msg/Twist.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgTwistStamped; document/platform/robotis/en_US/language/haskell/API.md
    ros2Geometry_msgsMsgTwistStamped_twist :: Ros2Geometry_msgsMsgTwist
  } deriving (Eq, Show)
defaultRos2Geometry_msgsMsgTwistStamped :: Ros2Geometry_msgsMsgTwistStamped
defaultRos2Geometry_msgsMsgTwistStamped = Ros2Geometry_msgsMsgTwistStamped (defaultRos2Std_msgsMsgHeader) (defaultRos2Geometry_msgsMsgTwist)
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
data Ros2Geometry_msgsMsgTwistWithCovariance = Ros2Geometry_msgsMsgTwistWithCovariance
  {
    -- | \@brief geometry_msgs/msg/TwistWithCovariance.twist: geometry_msgs/msg/Twist.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgTwistWithCovariance; document/platform/robotis/en_US/language/haskell/API.md
    ros2Geometry_msgsMsgTwistWithCovariance_twist :: Ros2Geometry_msgsMsgTwist
  ,
    -- | \@brief geometry_msgs/msg/TwistWithCovariance.covariance: float64; exactly 36 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgTwistWithCovariance; document/platform/robotis/en_US/language/haskell/API.md
    ros2Geometry_msgsMsgTwistWithCovariance_covariance :: [Double]
  } deriving (Eq, Show)
defaultRos2Geometry_msgsMsgTwistWithCovariance :: Ros2Geometry_msgsMsgTwistWithCovariance
defaultRos2Geometry_msgsMsgTwistWithCovariance = Ros2Geometry_msgsMsgTwistWithCovariance (defaultRos2Geometry_msgsMsgTwist) (replicate 36 (0))
ros2Geometry_msgsMsgTwistWithCovarianceCodecIdentity :: String
ros2Geometry_msgsMsgTwistWithCovarianceCodecIdentity = "UWVMROS1_96c9fddad7b7c240e850d8c27ddb5f8343764cac791ef9e210196f7941aaf404"
encodeRos2Geometry_msgsMsgTwistWithCovariance :: Ros2Geometry_msgsMsgTwistWithCovariance -> Either Word32 B.ByteString
encodeRos2Geometry_msgsMsgTwistWithCovariance value = do
  b0 <- encodeRos2Geometry_msgsMsgTwist (ros2Geometry_msgsMsgTwistWithCovariance_twist value)
  if length (ros2Geometry_msgsMsgTwistWithCovariance_covariance value) /= 36 then Left 22 else Right ()
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Geometry_msgsMsgTwistWithCovariance_covariance value)
  W.bounded 336 [b0, b1]
readRos2Geometry_msgsMsgTwistWithCovariance :: W.Decoder Ros2Geometry_msgsMsgTwistWithCovariance
readRos2Geometry_msgsMsgTwistWithCovariance = do
  a0 <- readRos2Geometry_msgsMsgTwist
  a1 <- replicateM 36 (W.float64)
  let value = Ros2Geometry_msgsMsgTwistWithCovariance a0 a1
  case encodeRos2Geometry_msgsMsgTwistWithCovariance value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Geometry_msgsMsgTwistWithCovariance :: B.ByteString -> Either Word32 Ros2Geometry_msgsMsgTwistWithCovariance
decodeRos2Geometry_msgsMsgTwistWithCovariance = W.runDecoder 336 readRos2Geometry_msgsMsgTwistWithCovariance
instance Canonical Ros2Geometry_msgsMsgTwistWithCovariance where
  maximumBytes _ = 336
  encodeValue = encodeRos2Geometry_msgsMsgTwistWithCovariance
  readValue = readRos2Geometry_msgsMsgTwistWithCovariance
data Ros2Nav_msgsMsgOdometry = Ros2Nav_msgsMsgOdometry
  {
    -- | \@brief nav_msgs/msg/Odometry.header: std_msgs/msg/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Nav_msgsMsgOdometry; document/platform/robotis/en_US/language/haskell/API.md
    ros2Nav_msgsMsgOdometry_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief nav_msgs/msg/Odometry.child_frame_id: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Nav_msgsMsgOdometry; document/platform/robotis/en_US/language/haskell/API.md
    ros2Nav_msgsMsgOdometry_child_frame_id :: T.Text
  ,
    -- | \@brief nav_msgs/msg/Odometry.pose: geometry_msgs/msg/PoseWithCovariance.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Nav_msgsMsgOdometry; document/platform/robotis/en_US/language/haskell/API.md
    ros2Nav_msgsMsgOdometry_pose :: Ros2Geometry_msgsMsgPoseWithCovariance
  ,
    -- | \@brief nav_msgs/msg/Odometry.twist: geometry_msgs/msg/TwistWithCovariance.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Nav_msgsMsgOdometry; document/platform/robotis/en_US/language/haskell/API.md
    ros2Nav_msgsMsgOdometry_twist :: Ros2Geometry_msgsMsgTwistWithCovariance
  } deriving (Eq, Show)
defaultRos2Nav_msgsMsgOdometry :: Ros2Nav_msgsMsgOdometry
defaultRos2Nav_msgsMsgOdometry =
    Ros2Nav_msgsMsgOdometry
    (defaultRos2Std_msgsMsgHeader)
    (T.empty)
    (defaultRos2Geometry_msgsMsgPoseWithCovariance)
    (defaultRos2Geometry_msgsMsgTwistWithCovariance)
ros2Nav_msgsMsgOdometryCodecIdentity :: String
ros2Nav_msgsMsgOdometryCodecIdentity = "UWVMROS1_4eb9aa4edb3d288080deaae0326c26a75923e69d40c9b10219baf6d441ea8111"
encodeRos2Nav_msgsMsgOdometry :: Ros2Nav_msgsMsgOdometry -> Either Word32 B.ByteString
encodeRos2Nav_msgsMsgOdometry value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Nav_msgsMsgOdometry_header value)
  b1 <- W.encodeText 256 True (ros2Nav_msgsMsgOdometry_child_frame_id value)
  b2 <- encodeRos2Geometry_msgsMsgPoseWithCovariance (ros2Nav_msgsMsgOdometry_pose value)
  b3 <- encodeRos2Geometry_msgsMsgTwistWithCovariance (ros2Nav_msgsMsgOdometry_twist value)
  W.bounded 1080 [b0, b1, b2, b3]
readRos2Nav_msgsMsgOdometry :: W.Decoder Ros2Nav_msgsMsgOdometry
readRos2Nav_msgsMsgOdometry = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- W.text 256 True
  a2 <- readRos2Geometry_msgsMsgPoseWithCovariance
  a3 <- readRos2Geometry_msgsMsgTwistWithCovariance
  let value = Ros2Nav_msgsMsgOdometry a0 a1 a2 a3
  case encodeRos2Nav_msgsMsgOdometry value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Nav_msgsMsgOdometry :: B.ByteString -> Either Word32 Ros2Nav_msgsMsgOdometry
decodeRos2Nav_msgsMsgOdometry = W.runDecoder 1080 readRos2Nav_msgsMsgOdometry
instance Canonical Ros2Nav_msgsMsgOdometry where
  maximumBytes _ = 1080
  encodeValue = encodeRos2Nav_msgsMsgOdometry
  readValue = readRos2Nav_msgsMsgOdometry
data Ros2Sensor_msgsMsgBatteryState = Ros2Sensor_msgsMsgBatteryState
  {
    -- | \@brief sensor_msgs/msg/BatteryState.header: std_msgs/msg/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgBatteryState_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief sensor_msgs/msg/BatteryState.voltage: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgBatteryState_voltage :: Float
  ,
    -- | \@brief sensor_msgs/msg/BatteryState.temperature: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgBatteryState_temperature :: Float
  ,
    -- | \@brief sensor_msgs/msg/BatteryState.current: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgBatteryState_current :: Float
  ,
    -- | \@brief sensor_msgs/msg/BatteryState.charge: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgBatteryState_charge :: Float
  ,
    -- | \@brief sensor_msgs/msg/BatteryState.capacity: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgBatteryState_capacity :: Float
  ,
    -- | \@brief sensor_msgs/msg/BatteryState.design_capacity: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgBatteryState_design_capacity :: Float
  ,
    -- | \@brief sensor_msgs/msg/BatteryState.percentage: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgBatteryState_percentage :: Float
  ,
    -- | \@brief sensor_msgs/msg/BatteryState.power_supply_status: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgBatteryState_power_supply_status :: Word8
  ,
    -- | \@brief sensor_msgs/msg/BatteryState.power_supply_health: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgBatteryState_power_supply_health :: Word8
  ,
    -- | \@brief sensor_msgs/msg/BatteryState.power_supply_technology: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgBatteryState_power_supply_technology :: Word8
  ,
    -- | \@brief sensor_msgs/msg/BatteryState.present: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgBatteryState_present :: Bool
  ,
    -- | \@brief sensor_msgs/msg/BatteryState.cell_voltage: float32; 0..16 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgBatteryState_cell_voltage :: [Float]
  ,
    -- | \@brief sensor_msgs/msg/BatteryState.cell_temperature: float32; 0..16 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgBatteryState_cell_temperature :: [Float]
  ,
    -- | \@brief sensor_msgs/msg/BatteryState.location: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgBatteryState_location :: T.Text
  ,
    -- | \@brief sensor_msgs/msg/BatteryState.serial_number: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgBatteryState_serial_number :: T.Text
  } deriving (Eq, Show)
defaultRos2Sensor_msgsMsgBatteryState :: Ros2Sensor_msgsMsgBatteryState
defaultRos2Sensor_msgsMsgBatteryState =
    Ros2Sensor_msgsMsgBatteryState
    (defaultRos2Std_msgsMsgHeader)
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
    (False)
    ([])
    ([])
    (T.empty)
    (T.empty)
ros2Sensor_msgsMsgBatteryStateCodecIdentity :: String
ros2Sensor_msgsMsgBatteryStateCodecIdentity = "UWVMROS1_9083c57dde00bba912db4dd736027cb92bbed2b1a79f965570dee86e1ff5a96e"
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_STATUS_UNKNOWN :: Word8
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_STATUS_UNKNOWN = 0
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_STATUS_CHARGING :: Word8
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_STATUS_CHARGING = 1
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_STATUS_DISCHARGING :: Word8
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_STATUS_DISCHARGING = 2
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_STATUS_NOT_CHARGING :: Word8
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_STATUS_NOT_CHARGING = 3
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_STATUS_FULL :: Word8
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_STATUS_FULL = 4
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_HEALTH_UNKNOWN :: Word8
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_HEALTH_UNKNOWN = 0
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_HEALTH_GOOD :: Word8
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_HEALTH_GOOD = 1
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_HEALTH_OVERHEAT :: Word8
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_HEALTH_OVERHEAT = 2
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_HEALTH_DEAD :: Word8
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_HEALTH_DEAD = 3
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_HEALTH_OVERVOLTAGE :: Word8
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_HEALTH_OVERVOLTAGE = 4
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_HEALTH_UNSPEC_FAILURE :: Word8
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_HEALTH_UNSPEC_FAILURE = 5
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_HEALTH_COLD :: Word8
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_HEALTH_COLD = 6
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE :: Word8
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE = 7
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE :: Word8
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE = 8
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_TECHNOLOGY_UNKNOWN :: Word8
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_TECHNOLOGY_UNKNOWN = 0
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_TECHNOLOGY_NIMH :: Word8
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_TECHNOLOGY_NIMH = 1
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_TECHNOLOGY_LION :: Word8
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_TECHNOLOGY_LION = 2
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_TECHNOLOGY_LIPO :: Word8
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_TECHNOLOGY_LIPO = 3
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_TECHNOLOGY_LIFE :: Word8
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_TECHNOLOGY_LIFE = 4
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_TECHNOLOGY_NICD :: Word8
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_TECHNOLOGY_NICD = 5
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_TECHNOLOGY_LIMN :: Word8
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_TECHNOLOGY_LIMN = 6
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_TECHNOLOGY_TERNARY :: Word8
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_TECHNOLOGY_TERNARY = 7
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_TECHNOLOGY_VRLA :: Word8
ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_TECHNOLOGY_VRLA = 8
encodeRos2Sensor_msgsMsgBatteryState :: Ros2Sensor_msgsMsgBatteryState -> Either Word32 B.ByteString
encodeRos2Sensor_msgsMsgBatteryState value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Sensor_msgsMsgBatteryState_header value)
  b1 <- W.encodeFloat32 (ros2Sensor_msgsMsgBatteryState_voltage value)
  b2 <- W.encodeFloat32 (ros2Sensor_msgsMsgBatteryState_temperature value)
  b3 <- W.encodeFloat32 (ros2Sensor_msgsMsgBatteryState_current value)
  b4 <- W.encodeFloat32 (ros2Sensor_msgsMsgBatteryState_charge value)
  b5 <- W.encodeFloat32 (ros2Sensor_msgsMsgBatteryState_capacity value)
  b6 <- W.encodeFloat32 (ros2Sensor_msgsMsgBatteryState_design_capacity value)
  b7 <- W.encodeFloat32 (ros2Sensor_msgsMsgBatteryState_percentage value)
  b8 <- W.encodeUnsigned 1 (fromIntegral (ros2Sensor_msgsMsgBatteryState_power_supply_status value))
  b9 <- W.encodeUnsigned 1 (fromIntegral (ros2Sensor_msgsMsgBatteryState_power_supply_health value))
  b10 <- W.encodeUnsigned 1 (fromIntegral (ros2Sensor_msgsMsgBatteryState_power_supply_technology value))
  b11 <- W.encodeBool (ros2Sensor_msgsMsgBatteryState_present value)
  if length (ros2Sensor_msgsMsgBatteryState_cell_voltage value) > 16 then Left 22 else Right ()
  prefix12 <- W.encodeCount 16 (length (ros2Sensor_msgsMsgBatteryState_cell_voltage value))
  b12 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros2Sensor_msgsMsgBatteryState_cell_voltage value)
  if length (ros2Sensor_msgsMsgBatteryState_cell_temperature value) > 16 then Left 22 else Right ()
  prefix13 <- W.encodeCount 16 (length (ros2Sensor_msgsMsgBatteryState_cell_temperature value))
  b13 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros2Sensor_msgsMsgBatteryState_cell_temperature value)
  b14 <- W.encodeText 256 True (ros2Sensor_msgsMsgBatteryState_location value)
  b15 <- W.encodeText 256 True (ros2Sensor_msgsMsgBatteryState_serial_number value)
  W.bounded 828 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, prefix12, b12, prefix13, b13, b14, b15]
readRos2Sensor_msgsMsgBatteryState :: W.Decoder Ros2Sensor_msgsMsgBatteryState
readRos2Sensor_msgsMsgBatteryState = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  a6 <- W.float32
  a7 <- W.float32
  a8 <- fromIntegral <$> W.unsigned 1
  a9 <- fromIntegral <$> W.unsigned 1
  a10 <- fromIntegral <$> W.unsigned 1
  a11 <- W.boolean
  count12 <- W.count 16
  a12 <- replicateM count12 (W.float32)
  count13 <- W.count 16
  a13 <- replicateM count13 (W.float32)
  a14 <- W.text 256 True
  a15 <- W.text 256 True
  let value = Ros2Sensor_msgsMsgBatteryState a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15
  case encodeRos2Sensor_msgsMsgBatteryState value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Sensor_msgsMsgBatteryState :: B.ByteString -> Either Word32 Ros2Sensor_msgsMsgBatteryState
decodeRos2Sensor_msgsMsgBatteryState = W.runDecoder 828 readRos2Sensor_msgsMsgBatteryState
instance Canonical Ros2Sensor_msgsMsgBatteryState where
  maximumBytes _ = 828
  encodeValue = encodeRos2Sensor_msgsMsgBatteryState
  readValue = readRos2Sensor_msgsMsgBatteryState
data Ros2Sensor_msgsMsgImu = Ros2Sensor_msgsMsgImu
  {
    -- | \@brief sensor_msgs/msg/Imu.header: std_msgs/msg/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgImu_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief sensor_msgs/msg/Imu.orientation: geometry_msgs/msg/Quaternion.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgImu_orientation :: Ros2Geometry_msgsMsgQuaternion
  ,
    -- | \@brief sensor_msgs/msg/Imu.orientation_covariance: float64; exactly 9 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgImu_orientation_covariance :: [Double]
  ,
    -- | \@brief sensor_msgs/msg/Imu.angular_velocity: geometry_msgs/msg/Vector3.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgImu_angular_velocity :: Ros2Geometry_msgsMsgVector3
  ,
    -- | \@brief sensor_msgs/msg/Imu.angular_velocity_covariance: float64; exactly 9 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgImu_angular_velocity_covariance :: [Double]
  ,
    -- | \@brief sensor_msgs/msg/Imu.linear_acceleration: geometry_msgs/msg/Vector3.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgImu_linear_acceleration :: Ros2Geometry_msgsMsgVector3
  ,
    -- | \@brief sensor_msgs/msg/Imu.linear_acceleration_covariance: float64; exactly 9 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgImu_linear_acceleration_covariance :: [Double]
  } deriving (Eq, Show)
defaultRos2Sensor_msgsMsgImu :: Ros2Sensor_msgsMsgImu
defaultRos2Sensor_msgsMsgImu =
    Ros2Sensor_msgsMsgImu
    (defaultRos2Std_msgsMsgHeader)
    (defaultRos2Geometry_msgsMsgQuaternion)
    (replicate 9 (0))
    (defaultRos2Geometry_msgsMsgVector3)
    (replicate 9 (0))
    (defaultRos2Geometry_msgsMsgVector3)
    (replicate 9 (0))
ros2Sensor_msgsMsgImuCodecIdentity :: String
ros2Sensor_msgsMsgImuCodecIdentity = "UWVMROS1_e38d1c936a2a4a870b2f069af8d1796f69e6ce7b8cae0a792925ed2f6c0cae1b"
encodeRos2Sensor_msgsMsgImu :: Ros2Sensor_msgsMsgImu -> Either Word32 B.ByteString
encodeRos2Sensor_msgsMsgImu value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Sensor_msgsMsgImu_header value)
  b1 <- encodeRos2Geometry_msgsMsgQuaternion (ros2Sensor_msgsMsgImu_orientation value)
  if length (ros2Sensor_msgsMsgImu_orientation_covariance value) /= 9 then Left 22 else Right ()
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Sensor_msgsMsgImu_orientation_covariance value)
  b3 <- encodeRos2Geometry_msgsMsgVector3 (ros2Sensor_msgsMsgImu_angular_velocity value)
  if length (ros2Sensor_msgsMsgImu_angular_velocity_covariance value) /= 9 then Left 22 else Right ()
  b4 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Sensor_msgsMsgImu_angular_velocity_covariance value)
  b5 <- encodeRos2Geometry_msgsMsgVector3 (ros2Sensor_msgsMsgImu_linear_acceleration value)
  if length (ros2Sensor_msgsMsgImu_linear_acceleration_covariance value) /= 9 then Left 22 else Right ()
  b6 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Sensor_msgsMsgImu_linear_acceleration_covariance value)
  W.bounded 436 [b0, b1, b2, b3, b4, b5, b6]
readRos2Sensor_msgsMsgImu :: W.Decoder Ros2Sensor_msgsMsgImu
readRos2Sensor_msgsMsgImu = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- readRos2Geometry_msgsMsgQuaternion
  a2 <- replicateM 9 (W.float64)
  a3 <- readRos2Geometry_msgsMsgVector3
  a4 <- replicateM 9 (W.float64)
  a5 <- readRos2Geometry_msgsMsgVector3
  a6 <- replicateM 9 (W.float64)
  let value = Ros2Sensor_msgsMsgImu a0 a1 a2 a3 a4 a5 a6
  case encodeRos2Sensor_msgsMsgImu value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Sensor_msgsMsgImu :: B.ByteString -> Either Word32 Ros2Sensor_msgsMsgImu
decodeRos2Sensor_msgsMsgImu = W.runDecoder 436 readRos2Sensor_msgsMsgImu
instance Canonical Ros2Sensor_msgsMsgImu where
  maximumBytes _ = 436
  encodeValue = encodeRos2Sensor_msgsMsgImu
  readValue = readRos2Sensor_msgsMsgImu
data Ros2Sensor_msgsMsgJointState = Ros2Sensor_msgsMsgJointState
  {
    -- | \@brief sensor_msgs/msg/JointState.header: std_msgs/msg/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgJointState; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgJointState_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief sensor_msgs/msg/JointState.name: string; 0..2 elements; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgJointState; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgJointState_name :: [T.Text]
  ,
    -- | \@brief sensor_msgs/msg/JointState.position: float64; 0..2 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgJointState; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgJointState_position :: [Double]
  ,
    -- | \@brief sensor_msgs/msg/JointState.velocity: float64; 0..2 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgJointState; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgJointState_velocity :: [Double]
  ,
    -- | \@brief sensor_msgs/msg/JointState.effort: float64; 0..2 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgJointState; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgJointState_effort :: [Double]
  } deriving (Eq, Show)
defaultRos2Sensor_msgsMsgJointState :: Ros2Sensor_msgsMsgJointState
defaultRos2Sensor_msgsMsgJointState = Ros2Sensor_msgsMsgJointState (defaultRos2Std_msgsMsgHeader) ([]) ([]) ([]) ([])
ros2Sensor_msgsMsgJointStateCodecIdentity :: String
ros2Sensor_msgsMsgJointStateCodecIdentity = "UWVMROS1_5c4d1ef0128c748e20f6b30c9c3bb5ef6e3c529a0b05b81764ac4774ce765bcf"
encodeRos2Sensor_msgsMsgJointState :: Ros2Sensor_msgsMsgJointState -> Either Word32 B.ByteString
encodeRos2Sensor_msgsMsgJointState value = do
  if (length (ros2Sensor_msgsMsgJointState_name value) /= 0 &&
      length (ros2Sensor_msgsMsgJointState_position value) /= 0 &&
      length (ros2Sensor_msgsMsgJointState_name value) /= length (ros2Sensor_msgsMsgJointState_position value)) ||
      (length (ros2Sensor_msgsMsgJointState_name value) /= 0 &&
      length (ros2Sensor_msgsMsgJointState_velocity value) /= 0 &&
      length (ros2Sensor_msgsMsgJointState_name value) /= length (ros2Sensor_msgsMsgJointState_velocity value)) ||
      (length (ros2Sensor_msgsMsgJointState_name value) /= 0 &&
      length (ros2Sensor_msgsMsgJointState_effort value) /= 0 &&
      length (ros2Sensor_msgsMsgJointState_name value) /= length (ros2Sensor_msgsMsgJointState_effort value)) ||
      (length (ros2Sensor_msgsMsgJointState_position value) /= 0 &&
      length (ros2Sensor_msgsMsgJointState_velocity value) /= 0 &&
      length (ros2Sensor_msgsMsgJointState_position value) /= length (ros2Sensor_msgsMsgJointState_velocity value)) ||
      (length (ros2Sensor_msgsMsgJointState_position value) /= 0 &&
      length (ros2Sensor_msgsMsgJointState_effort value) /= 0 &&
      length (ros2Sensor_msgsMsgJointState_position value) /= length (ros2Sensor_msgsMsgJointState_effort value)) ||
      (length (ros2Sensor_msgsMsgJointState_velocity value) /= 0 &&
      length (ros2Sensor_msgsMsgJointState_effort value) /= 0 &&
      length (ros2Sensor_msgsMsgJointState_velocity value) /= length (ros2Sensor_msgsMsgJointState_effort value)) then Left 22 else Right ()
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Sensor_msgsMsgJointState_header value)
  if length (ros2Sensor_msgsMsgJointState_name value) > 2 then Left 22 else Right ()
  prefix1 <- W.encodeCount 2 (length (ros2Sensor_msgsMsgJointState_name value))
  b1 <- B.concat <$> mapM (\e -> W.encodeText 128 True (e)) (ros2Sensor_msgsMsgJointState_name value)
  if length (ros2Sensor_msgsMsgJointState_position value) > 2 then Left 22 else Right ()
  prefix2 <- W.encodeCount 2 (length (ros2Sensor_msgsMsgJointState_position value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Sensor_msgsMsgJointState_position value)
  if length (ros2Sensor_msgsMsgJointState_velocity value) > 2 then Left 22 else Right ()
  prefix3 <- W.encodeCount 2 (length (ros2Sensor_msgsMsgJointState_velocity value))
  b3 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Sensor_msgsMsgJointState_velocity value)
  if length (ros2Sensor_msgsMsgJointState_effort value) > 2 then Left 22 else Right ()
  prefix4 <- W.encodeCount 2 (length (ros2Sensor_msgsMsgJointState_effort value))
  b4 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Sensor_msgsMsgJointState_effort value)
  W.bounded 468 [b0, prefix1, b1, prefix2, b2, prefix3, b3, prefix4, b4]
readRos2Sensor_msgsMsgJointState :: W.Decoder Ros2Sensor_msgsMsgJointState
readRos2Sensor_msgsMsgJointState = do
  a0 <- readRos2Std_msgsMsgHeader
  count1 <- W.count 2
  a1 <- replicateM count1 (W.text 128 True)
  count2 <- W.count 2
  a2 <- replicateM count2 (W.float64)
  count3 <- W.count 2
  a3 <- replicateM count3 (W.float64)
  count4 <- W.count 2
  a4 <- replicateM count4 (W.float64)
  let value = Ros2Sensor_msgsMsgJointState a0 a1 a2 a3 a4
  case encodeRos2Sensor_msgsMsgJointState value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Sensor_msgsMsgJointState :: B.ByteString -> Either Word32 Ros2Sensor_msgsMsgJointState
decodeRos2Sensor_msgsMsgJointState = W.runDecoder 468 readRos2Sensor_msgsMsgJointState
instance Canonical Ros2Sensor_msgsMsgJointState where
  maximumBytes _ = 468
  encodeValue = encodeRos2Sensor_msgsMsgJointState
  readValue = readRos2Sensor_msgsMsgJointState
data Ros2Sensor_msgsMsgLaserScan = Ros2Sensor_msgsMsgLaserScan
  {
    -- | \@brief sensor_msgs/msg/LaserScan.header: std_msgs/msg/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgLaserScan_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief sensor_msgs/msg/LaserScan.angle_min: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgLaserScan_angle_min :: Float
  ,
    -- | \@brief sensor_msgs/msg/LaserScan.angle_max: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgLaserScan_angle_max :: Float
  ,
    -- | \@brief sensor_msgs/msg/LaserScan.angle_increment: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgLaserScan_angle_increment :: Float
  ,
    -- | \@brief sensor_msgs/msg/LaserScan.time_increment: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgLaserScan_time_increment :: Float
  ,
    -- | \@brief sensor_msgs/msg/LaserScan.scan_time: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgLaserScan_scan_time :: Float
  ,
    -- | \@brief sensor_msgs/msg/LaserScan.range_min: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgLaserScan_range_min :: Float
  ,
    -- | \@brief sensor_msgs/msg/LaserScan.range_max: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgLaserScan_range_max :: Float
  ,
    -- | \@brief sensor_msgs/msg/LaserScan.ranges: float32; 0..1024 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgLaserScan_ranges :: [Float]
  ,
    -- | \@brief sensor_msgs/msg/LaserScan.intensities: float32; 0..1024 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgLaserScan_intensities :: [Float]
  } deriving (Eq, Show)
defaultRos2Sensor_msgsMsgLaserScan :: Ros2Sensor_msgsMsgLaserScan
defaultRos2Sensor_msgsMsgLaserScan = Ros2Sensor_msgsMsgLaserScan (defaultRos2Std_msgsMsgHeader) (0) (0) (0) (0) (0) (0) (0) ([]) ([])
ros2Sensor_msgsMsgLaserScanCodecIdentity :: String
ros2Sensor_msgsMsgLaserScanCodecIdentity = "UWVMROS1_89faa8e14fc7f79a62a576d35c0bb377caf0cbaef6a6f181a5af2da0ead6cce4"
encodeRos2Sensor_msgsMsgLaserScan :: Ros2Sensor_msgsMsgLaserScan -> Either Word32 B.ByteString
encodeRos2Sensor_msgsMsgLaserScan value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Sensor_msgsMsgLaserScan_header value)
  b1 <- W.encodeFloat32 (ros2Sensor_msgsMsgLaserScan_angle_min value)
  b2 <- W.encodeFloat32 (ros2Sensor_msgsMsgLaserScan_angle_max value)
  b3 <- W.encodeFloat32 (ros2Sensor_msgsMsgLaserScan_angle_increment value)
  b4 <- W.encodeFloat32 (ros2Sensor_msgsMsgLaserScan_time_increment value)
  b5 <- W.encodeFloat32 (ros2Sensor_msgsMsgLaserScan_scan_time value)
  b6 <- W.encodeFloat32 (ros2Sensor_msgsMsgLaserScan_range_min value)
  b7 <- W.encodeFloat32 (ros2Sensor_msgsMsgLaserScan_range_max value)
  if length (ros2Sensor_msgsMsgLaserScan_ranges value) > 1024 then Left 22 else Right ()
  prefix8 <- W.encodeCount 1024 (length (ros2Sensor_msgsMsgLaserScan_ranges value))
  b8 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros2Sensor_msgsMsgLaserScan_ranges value)
  if length (ros2Sensor_msgsMsgLaserScan_intensities value) > 1024 then Left 22 else Right ()
  prefix9 <- W.encodeCount 1024 (length (ros2Sensor_msgsMsgLaserScan_intensities value))
  b9 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros2Sensor_msgsMsgLaserScan_intensities value)
  W.bounded 8368 [b0, b1, b2, b3, b4, b5, b6, b7, prefix8, b8, prefix9, b9]
readRos2Sensor_msgsMsgLaserScan :: W.Decoder Ros2Sensor_msgsMsgLaserScan
readRos2Sensor_msgsMsgLaserScan = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  a6 <- W.float32
  a7 <- W.float32
  count8 <- W.count 1024
  a8 <- replicateM count8 (W.float32)
  count9 <- W.count 1024
  a9 <- replicateM count9 (W.float32)
  let value = Ros2Sensor_msgsMsgLaserScan a0 a1 a2 a3 a4 a5 a6 a7 a8 a9
  case encodeRos2Sensor_msgsMsgLaserScan value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Sensor_msgsMsgLaserScan :: B.ByteString -> Either Word32 Ros2Sensor_msgsMsgLaserScan
decodeRos2Sensor_msgsMsgLaserScan = W.runDecoder 8368 readRos2Sensor_msgsMsgLaserScan
instance Canonical Ros2Sensor_msgsMsgLaserScan where
  maximumBytes _ = 8368
  encodeValue = encodeRos2Sensor_msgsMsgLaserScan
  readValue = readRos2Sensor_msgsMsgLaserScan
data Ros2Sensor_msgsMsgMagneticField = Ros2Sensor_msgsMsgMagneticField
  {
    -- | \@brief sensor_msgs/msg/MagneticField.header: std_msgs/msg/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgMagneticField; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgMagneticField_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief sensor_msgs/msg/MagneticField.magnetic_field: geometry_msgs/msg/Vector3.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgMagneticField; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgMagneticField_magnetic_field :: Ros2Geometry_msgsMsgVector3
  ,
    -- | \@brief sensor_msgs/msg/MagneticField.magnetic_field_covariance: float64; exactly 9 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Sensor_msgsMsgMagneticField; document/platform/robotis/en_US/language/haskell/API.md
    ros2Sensor_msgsMsgMagneticField_magnetic_field_covariance :: [Double]
  } deriving (Eq, Show)
defaultRos2Sensor_msgsMsgMagneticField :: Ros2Sensor_msgsMsgMagneticField
defaultRos2Sensor_msgsMsgMagneticField =
    Ros2Sensor_msgsMsgMagneticField
    (defaultRos2Std_msgsMsgHeader)
    (defaultRos2Geometry_msgsMsgVector3)
    (replicate 9 (0))
ros2Sensor_msgsMsgMagneticFieldCodecIdentity :: String
ros2Sensor_msgsMsgMagneticFieldCodecIdentity = "UWVMROS1_56ae1437e0fbe7a6722ecf4795483d15f4c616e2e891372c30fa78f18be2cf8b"
encodeRos2Sensor_msgsMsgMagneticField :: Ros2Sensor_msgsMsgMagneticField -> Either Word32 B.ByteString
encodeRos2Sensor_msgsMsgMagneticField value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Sensor_msgsMsgMagneticField_header value)
  b1 <- encodeRos2Geometry_msgsMsgVector3 (ros2Sensor_msgsMsgMagneticField_magnetic_field value)
  if length (ros2Sensor_msgsMsgMagneticField_magnetic_field_covariance value) /= 9 then Left 22 else Right ()
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros2Sensor_msgsMsgMagneticField_magnetic_field_covariance value)
  W.bounded 236 [b0, b1, b2]
readRos2Sensor_msgsMsgMagneticField :: W.Decoder Ros2Sensor_msgsMsgMagneticField
readRos2Sensor_msgsMsgMagneticField = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- readRos2Geometry_msgsMsgVector3
  a2 <- replicateM 9 (W.float64)
  let value = Ros2Sensor_msgsMsgMagneticField a0 a1 a2
  case encodeRos2Sensor_msgsMsgMagneticField value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Sensor_msgsMsgMagneticField :: B.ByteString -> Either Word32 Ros2Sensor_msgsMsgMagneticField
decodeRos2Sensor_msgsMsgMagneticField = W.runDecoder 236 readRos2Sensor_msgsMsgMagneticField
instance Canonical Ros2Sensor_msgsMsgMagneticField where
  maximumBytes _ = 236
  encodeValue = encodeRos2Sensor_msgsMsgMagneticField
  readValue = readRos2Sensor_msgsMsgMagneticField
data Ros2Std_srvsSrvSetBool_Request = Ros2Std_srvsSrvSetBool_Request
  {
    -- | \@brief std_srvs/srv/SetBool_Request.data: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Std_srvsSrvSetBool_Request; document/platform/robotis/en_US/language/haskell/API.md
    ros2Std_srvsSrvSetBool_Request_data :: Bool
  } deriving (Eq, Show)
defaultRos2Std_srvsSrvSetBool_Request :: Ros2Std_srvsSrvSetBool_Request
defaultRos2Std_srvsSrvSetBool_Request = Ros2Std_srvsSrvSetBool_Request (False)
ros2Std_srvsSrvSetBool_RequestCodecIdentity :: String
ros2Std_srvsSrvSetBool_RequestCodecIdentity = "UWVMROS1_2523e7915bb78fe01b68f2a856611b32a88f624a6e197a6ff312b613e8c65910"
encodeRos2Std_srvsSrvSetBool_Request :: Ros2Std_srvsSrvSetBool_Request -> Either Word32 B.ByteString
encodeRos2Std_srvsSrvSetBool_Request value = do
  b0 <- W.encodeBool (ros2Std_srvsSrvSetBool_Request_data value)
  W.bounded 1 [b0]
readRos2Std_srvsSrvSetBool_Request :: W.Decoder Ros2Std_srvsSrvSetBool_Request
readRos2Std_srvsSrvSetBool_Request = do
  a0 <- W.boolean
  let value = Ros2Std_srvsSrvSetBool_Request a0
  case encodeRos2Std_srvsSrvSetBool_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Std_srvsSrvSetBool_Request :: B.ByteString -> Either Word32 Ros2Std_srvsSrvSetBool_Request
decodeRos2Std_srvsSrvSetBool_Request = W.runDecoder 1 readRos2Std_srvsSrvSetBool_Request
instance Canonical Ros2Std_srvsSrvSetBool_Request where
  maximumBytes _ = 1
  encodeValue = encodeRos2Std_srvsSrvSetBool_Request
  readValue = readRos2Std_srvsSrvSetBool_Request
data Ros2Std_srvsSrvSetBool_Response = Ros2Std_srvsSrvSetBool_Response
  {
    -- | \@brief std_srvs/srv/SetBool_Response.success: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Std_srvsSrvSetBool_Response; document/platform/robotis/en_US/language/haskell/API.md
    ros2Std_srvsSrvSetBool_Response_success :: Bool
  ,
    -- | \@brief std_srvs/srv/SetBool_Response.message: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Std_srvsSrvSetBool_Response; document/platform/robotis/en_US/language/haskell/API.md
    ros2Std_srvsSrvSetBool_Response_message :: T.Text
  } deriving (Eq, Show)
defaultRos2Std_srvsSrvSetBool_Response :: Ros2Std_srvsSrvSetBool_Response
defaultRos2Std_srvsSrvSetBool_Response = Ros2Std_srvsSrvSetBool_Response (False) (T.empty)
ros2Std_srvsSrvSetBool_ResponseCodecIdentity :: String
ros2Std_srvsSrvSetBool_ResponseCodecIdentity = "UWVMROS1_f2d46a8440538094221a151716d8ec44db02455f59845c50aaf4e7964c27ebe4"
encodeRos2Std_srvsSrvSetBool_Response :: Ros2Std_srvsSrvSetBool_Response -> Either Word32 B.ByteString
encodeRos2Std_srvsSrvSetBool_Response value = do
  b0 <- W.encodeBool (ros2Std_srvsSrvSetBool_Response_success value)
  b1 <- W.encodeText 256 True (ros2Std_srvsSrvSetBool_Response_message value)
  W.bounded 261 [b0, b1]
readRos2Std_srvsSrvSetBool_Response :: W.Decoder Ros2Std_srvsSrvSetBool_Response
readRos2Std_srvsSrvSetBool_Response = do
  a0 <- W.boolean
  a1 <- W.text 256 True
  let value = Ros2Std_srvsSrvSetBool_Response a0 a1
  case encodeRos2Std_srvsSrvSetBool_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Std_srvsSrvSetBool_Response :: B.ByteString -> Either Word32 Ros2Std_srvsSrvSetBool_Response
decodeRos2Std_srvsSrvSetBool_Response = W.runDecoder 261 readRos2Std_srvsSrvSetBool_Response
instance Canonical Ros2Std_srvsSrvSetBool_Response where
  maximumBytes _ = 261
  encodeValue = encodeRos2Std_srvsSrvSetBool_Response
  readValue = readRos2Std_srvsSrvSetBool_Response
data Ros2Std_srvsSrvTrigger_Request = Ros2Std_srvsSrvTrigger_Request deriving (Eq, Show)
defaultRos2Std_srvsSrvTrigger_Request :: Ros2Std_srvsSrvTrigger_Request
defaultRos2Std_srvsSrvTrigger_Request = Ros2Std_srvsSrvTrigger_Request 
ros2Std_srvsSrvTrigger_RequestCodecIdentity :: String
ros2Std_srvsSrvTrigger_RequestCodecIdentity = "UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77"
encodeRos2Std_srvsSrvTrigger_Request :: Ros2Std_srvsSrvTrigger_Request -> Either Word32 B.ByteString
encodeRos2Std_srvsSrvTrigger_Request value = do
  W.bounded 0 []
readRos2Std_srvsSrvTrigger_Request :: W.Decoder Ros2Std_srvsSrvTrigger_Request
readRos2Std_srvsSrvTrigger_Request = do
  let value = Ros2Std_srvsSrvTrigger_Request 
  case encodeRos2Std_srvsSrvTrigger_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Std_srvsSrvTrigger_Request :: B.ByteString -> Either Word32 Ros2Std_srvsSrvTrigger_Request
decodeRos2Std_srvsSrvTrigger_Request = W.runDecoder 0 readRos2Std_srvsSrvTrigger_Request
instance Canonical Ros2Std_srvsSrvTrigger_Request where
  maximumBytes _ = 0
  encodeValue = encodeRos2Std_srvsSrvTrigger_Request
  readValue = readRos2Std_srvsSrvTrigger_Request
data Ros2Std_srvsSrvTrigger_Response = Ros2Std_srvsSrvTrigger_Response
  {
    -- | \@brief std_srvs/srv/Trigger_Response.success: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Std_srvsSrvTrigger_Response; document/platform/robotis/en_US/language/haskell/API.md
    ros2Std_srvsSrvTrigger_Response_success :: Bool
  ,
    -- | \@brief std_srvs/srv/Trigger_Response.message: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Std_srvsSrvTrigger_Response; document/platform/robotis/en_US/language/haskell/API.md
    ros2Std_srvsSrvTrigger_Response_message :: T.Text
  } deriving (Eq, Show)
defaultRos2Std_srvsSrvTrigger_Response :: Ros2Std_srvsSrvTrigger_Response
defaultRos2Std_srvsSrvTrigger_Response = Ros2Std_srvsSrvTrigger_Response (False) (T.empty)
ros2Std_srvsSrvTrigger_ResponseCodecIdentity :: String
ros2Std_srvsSrvTrigger_ResponseCodecIdentity = "UWVMROS1_58806c592727ad1011b32edb6bca3ca32d8e5dbe7f2fa20c86220daf64a10392"
encodeRos2Std_srvsSrvTrigger_Response :: Ros2Std_srvsSrvTrigger_Response -> Either Word32 B.ByteString
encodeRos2Std_srvsSrvTrigger_Response value = do
  b0 <- W.encodeBool (ros2Std_srvsSrvTrigger_Response_success value)
  b1 <- W.encodeText 256 True (ros2Std_srvsSrvTrigger_Response_message value)
  W.bounded 261 [b0, b1]
readRos2Std_srvsSrvTrigger_Response :: W.Decoder Ros2Std_srvsSrvTrigger_Response
readRos2Std_srvsSrvTrigger_Response = do
  a0 <- W.boolean
  a1 <- W.text 256 True
  let value = Ros2Std_srvsSrvTrigger_Response a0 a1
  case encodeRos2Std_srvsSrvTrigger_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Std_srvsSrvTrigger_Response :: B.ByteString -> Either Word32 Ros2Std_srvsSrvTrigger_Response
decodeRos2Std_srvsSrvTrigger_Response = W.runDecoder 261 readRos2Std_srvsSrvTrigger_Response
instance Canonical Ros2Std_srvsSrvTrigger_Response where
  maximumBytes _ = 261
  encodeValue = encodeRos2Std_srvsSrvTrigger_Response
  readValue = readRos2Std_srvsSrvTrigger_Response
data Ros2Turtlebot3_msgsActionPatrol_Goal = Ros2Turtlebot3_msgsActionPatrol_Goal
  {
    -- | \@brief turtlebot3_msgs/action/Patrol_Goal.goal: geometry_msgs/msg/Vector3.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Turtlebot3_msgsActionPatrol_Goal; document/platform/robotis/en_US/language/haskell/API.md
    ros2Turtlebot3_msgsActionPatrol_Goal_goal :: Ros2Geometry_msgsMsgVector3
  } deriving (Eq, Show)
defaultRos2Turtlebot3_msgsActionPatrol_Goal :: Ros2Turtlebot3_msgsActionPatrol_Goal
defaultRos2Turtlebot3_msgsActionPatrol_Goal = Ros2Turtlebot3_msgsActionPatrol_Goal (defaultRos2Geometry_msgsMsgVector3)
ros2Turtlebot3_msgsActionPatrol_GoalCodecIdentity :: String
ros2Turtlebot3_msgsActionPatrol_GoalCodecIdentity = "UWVMROS1_929abdbc422698464043e7e8d12c2a5edd418dcd52bbde4a542b33e6862ba96f"
encodeRos2Turtlebot3_msgsActionPatrol_Goal :: Ros2Turtlebot3_msgsActionPatrol_Goal -> Either Word32 B.ByteString
encodeRos2Turtlebot3_msgsActionPatrol_Goal value = do
  b0 <- encodeRos2Geometry_msgsMsgVector3 (ros2Turtlebot3_msgsActionPatrol_Goal_goal value)
  W.bounded 24 [b0]
readRos2Turtlebot3_msgsActionPatrol_Goal :: W.Decoder Ros2Turtlebot3_msgsActionPatrol_Goal
readRos2Turtlebot3_msgsActionPatrol_Goal = do
  a0 <- readRos2Geometry_msgsMsgVector3
  let value = Ros2Turtlebot3_msgsActionPatrol_Goal a0
  case encodeRos2Turtlebot3_msgsActionPatrol_Goal value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Turtlebot3_msgsActionPatrol_Goal :: B.ByteString -> Either Word32 Ros2Turtlebot3_msgsActionPatrol_Goal
decodeRos2Turtlebot3_msgsActionPatrol_Goal = W.runDecoder 24 readRos2Turtlebot3_msgsActionPatrol_Goal
instance Canonical Ros2Turtlebot3_msgsActionPatrol_Goal where
  maximumBytes _ = 24
  encodeValue = encodeRos2Turtlebot3_msgsActionPatrol_Goal
  readValue = readRos2Turtlebot3_msgsActionPatrol_Goal
data Ros2Turtlebot3_msgsActionPatrol_Result = Ros2Turtlebot3_msgsActionPatrol_Result
  {
    -- | \@brief turtlebot3_msgs/action/Patrol_Result.result: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Turtlebot3_msgsActionPatrol_Result; document/platform/robotis/en_US/language/haskell/API.md
    ros2Turtlebot3_msgsActionPatrol_Result_result :: T.Text
  } deriving (Eq, Show)
defaultRos2Turtlebot3_msgsActionPatrol_Result :: Ros2Turtlebot3_msgsActionPatrol_Result
defaultRos2Turtlebot3_msgsActionPatrol_Result = Ros2Turtlebot3_msgsActionPatrol_Result (T.empty)
ros2Turtlebot3_msgsActionPatrol_ResultCodecIdentity :: String
ros2Turtlebot3_msgsActionPatrol_ResultCodecIdentity = "UWVMROS1_1d1fa277be54e1df3bd314a632ff80d79f22a306fc232219a7c23cce7a7703a3"
encodeRos2Turtlebot3_msgsActionPatrol_Result :: Ros2Turtlebot3_msgsActionPatrol_Result -> Either Word32 B.ByteString
encodeRos2Turtlebot3_msgsActionPatrol_Result value = do
  b0 <- W.encodeText 256 True (ros2Turtlebot3_msgsActionPatrol_Result_result value)
  W.bounded 260 [b0]
readRos2Turtlebot3_msgsActionPatrol_Result :: W.Decoder Ros2Turtlebot3_msgsActionPatrol_Result
readRos2Turtlebot3_msgsActionPatrol_Result = do
  a0 <- W.text 256 True
  let value = Ros2Turtlebot3_msgsActionPatrol_Result a0
  case encodeRos2Turtlebot3_msgsActionPatrol_Result value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Turtlebot3_msgsActionPatrol_Result :: B.ByteString -> Either Word32 Ros2Turtlebot3_msgsActionPatrol_Result
decodeRos2Turtlebot3_msgsActionPatrol_Result = W.runDecoder 260 readRos2Turtlebot3_msgsActionPatrol_Result
instance Canonical Ros2Turtlebot3_msgsActionPatrol_Result where
  maximumBytes _ = 260
  encodeValue = encodeRos2Turtlebot3_msgsActionPatrol_Result
  readValue = readRos2Turtlebot3_msgsActionPatrol_Result
data Ros2Turtlebot3_msgsActionPatrol_Feedback = Ros2Turtlebot3_msgsActionPatrol_Feedback
  {
    -- | \@brief turtlebot3_msgs/action/Patrol_Feedback.state: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Turtlebot3_msgsActionPatrol_Feedback; document/platform/robotis/en_US/language/haskell/API.md
    ros2Turtlebot3_msgsActionPatrol_Feedback_state :: T.Text
  } deriving (Eq, Show)
defaultRos2Turtlebot3_msgsActionPatrol_Feedback :: Ros2Turtlebot3_msgsActionPatrol_Feedback
defaultRos2Turtlebot3_msgsActionPatrol_Feedback = Ros2Turtlebot3_msgsActionPatrol_Feedback (T.empty)
ros2Turtlebot3_msgsActionPatrol_FeedbackCodecIdentity :: String
ros2Turtlebot3_msgsActionPatrol_FeedbackCodecIdentity = "UWVMROS1_7c2f3824653a3048e1b93fa95584543a01efae8bb67253d3371a2988407a601e"
encodeRos2Turtlebot3_msgsActionPatrol_Feedback :: Ros2Turtlebot3_msgsActionPatrol_Feedback -> Either Word32 B.ByteString
encodeRos2Turtlebot3_msgsActionPatrol_Feedback value = do
  b0 <- W.encodeText 256 True (ros2Turtlebot3_msgsActionPatrol_Feedback_state value)
  W.bounded 260 [b0]
readRos2Turtlebot3_msgsActionPatrol_Feedback :: W.Decoder Ros2Turtlebot3_msgsActionPatrol_Feedback
readRos2Turtlebot3_msgsActionPatrol_Feedback = do
  a0 <- W.text 256 True
  let value = Ros2Turtlebot3_msgsActionPatrol_Feedback a0
  case encodeRos2Turtlebot3_msgsActionPatrol_Feedback value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Turtlebot3_msgsActionPatrol_Feedback :: B.ByteString -> Either Word32 Ros2Turtlebot3_msgsActionPatrol_Feedback
decodeRos2Turtlebot3_msgsActionPatrol_Feedback = W.runDecoder 260 readRos2Turtlebot3_msgsActionPatrol_Feedback
instance Canonical Ros2Turtlebot3_msgsActionPatrol_Feedback where
  maximumBytes _ = 260
  encodeValue = encodeRos2Turtlebot3_msgsActionPatrol_Feedback
  readValue = readRos2Turtlebot3_msgsActionPatrol_Feedback
data Ros2Turtlebot3_msgsMsgSensorState = Ros2Turtlebot3_msgsMsgSensorState
  {
    -- | \@brief turtlebot3_msgs/msg/SensorState.header: std_msgs/msg/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/haskell/API.md
    ros2Turtlebot3_msgsMsgSensorState_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief turtlebot3_msgs/msg/SensorState.bumper: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/haskell/API.md
    ros2Turtlebot3_msgsMsgSensorState_bumper :: Word8
  ,
    -- | \@brief turtlebot3_msgs/msg/SensorState.cliff: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/haskell/API.md
    ros2Turtlebot3_msgsMsgSensorState_cliff :: Float
  ,
    -- | \@brief turtlebot3_msgs/msg/SensorState.sonar: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/haskell/API.md
    ros2Turtlebot3_msgsMsgSensorState_sonar :: Float
  ,
    -- | \@brief turtlebot3_msgs/msg/SensorState.illumination: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/haskell/API.md
    ros2Turtlebot3_msgsMsgSensorState_illumination :: Float
  ,
    -- | \@brief turtlebot3_msgs/msg/SensorState.led: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/haskell/API.md
    ros2Turtlebot3_msgsMsgSensorState_led :: Word8
  ,
    -- | \@brief turtlebot3_msgs/msg/SensorState.button: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/haskell/API.md
    ros2Turtlebot3_msgsMsgSensorState_button :: Word8
  ,
    -- | \@brief turtlebot3_msgs/msg/SensorState.torque: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/haskell/API.md
    ros2Turtlebot3_msgsMsgSensorState_torque :: Bool
  ,
    -- | \@brief turtlebot3_msgs/msg/SensorState.left_encoder: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/haskell/API.md
    ros2Turtlebot3_msgsMsgSensorState_left_encoder :: Int32
  ,
    -- | \@brief turtlebot3_msgs/msg/SensorState.right_encoder: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/haskell/API.md
    ros2Turtlebot3_msgsMsgSensorState_right_encoder :: Int32
  ,
    -- | \@brief turtlebot3_msgs/msg/SensorState.battery: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/haskell/API.md
    ros2Turtlebot3_msgsMsgSensorState_battery :: Float
  } deriving (Eq, Show)
defaultRos2Turtlebot3_msgsMsgSensorState :: Ros2Turtlebot3_msgsMsgSensorState
defaultRos2Turtlebot3_msgsMsgSensorState = Ros2Turtlebot3_msgsMsgSensorState (defaultRos2Std_msgsMsgHeader) (0) (0) (0) (0) (0) (0) (False) (0) (0) (0)
ros2Turtlebot3_msgsMsgSensorStateCodecIdentity :: String
ros2Turtlebot3_msgsMsgSensorStateCodecIdentity = "UWVMROS1_7974ef7ca70ababf0e3f7a5e4099335a1398933833260798482f155291a62358"
ros2Turtlebot3_msgsMsgSensorState_BUMPER_FORWARD :: Word8
ros2Turtlebot3_msgsMsgSensorState_BUMPER_FORWARD = 1
ros2Turtlebot3_msgsMsgSensorState_BUMPER_BACKWARD :: Word8
ros2Turtlebot3_msgsMsgSensorState_BUMPER_BACKWARD = 2
ros2Turtlebot3_msgsMsgSensorState_CLIFF :: Word8
ros2Turtlebot3_msgsMsgSensorState_CLIFF = 1
ros2Turtlebot3_msgsMsgSensorState_SONAR :: Word8
ros2Turtlebot3_msgsMsgSensorState_SONAR = 1
ros2Turtlebot3_msgsMsgSensorState_ILLUMINATION :: Word8
ros2Turtlebot3_msgsMsgSensorState_ILLUMINATION = 1
ros2Turtlebot3_msgsMsgSensorState_BUTTON0 :: Word8
ros2Turtlebot3_msgsMsgSensorState_BUTTON0 = 1
ros2Turtlebot3_msgsMsgSensorState_BUTTON1 :: Word8
ros2Turtlebot3_msgsMsgSensorState_BUTTON1 = 2
ros2Turtlebot3_msgsMsgSensorState_ERROR_LEFT_MOTOR :: Word8
ros2Turtlebot3_msgsMsgSensorState_ERROR_LEFT_MOTOR = 1
ros2Turtlebot3_msgsMsgSensorState_ERROR_RIGHT_MOTOR :: Word8
ros2Turtlebot3_msgsMsgSensorState_ERROR_RIGHT_MOTOR = 2
ros2Turtlebot3_msgsMsgSensorState_TORQUE_ON :: Word8
ros2Turtlebot3_msgsMsgSensorState_TORQUE_ON = 1
ros2Turtlebot3_msgsMsgSensorState_TORQUE_OFF :: Word8
ros2Turtlebot3_msgsMsgSensorState_TORQUE_OFF = 2
encodeRos2Turtlebot3_msgsMsgSensorState :: Ros2Turtlebot3_msgsMsgSensorState -> Either Word32 B.ByteString
encodeRos2Turtlebot3_msgsMsgSensorState value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Turtlebot3_msgsMsgSensorState_header value)
  b1 <- W.encodeUnsigned 1 (fromIntegral (ros2Turtlebot3_msgsMsgSensorState_bumper value))
  b2 <- W.encodeFloat32 (ros2Turtlebot3_msgsMsgSensorState_cliff value)
  b3 <- W.encodeFloat32 (ros2Turtlebot3_msgsMsgSensorState_sonar value)
  b4 <- W.encodeFloat32 (ros2Turtlebot3_msgsMsgSensorState_illumination value)
  b5 <- W.encodeUnsigned 1 (fromIntegral (ros2Turtlebot3_msgsMsgSensorState_led value))
  b6 <- W.encodeUnsigned 1 (fromIntegral (ros2Turtlebot3_msgsMsgSensorState_button value))
  b7 <- W.encodeBool (ros2Turtlebot3_msgsMsgSensorState_torque value)
  b8 <- W.encodeSigned 4 (fromIntegral (ros2Turtlebot3_msgsMsgSensorState_left_encoder value))
  b9 <- W.encodeSigned 4 (fromIntegral (ros2Turtlebot3_msgsMsgSensorState_right_encoder value))
  b10 <- W.encodeFloat32 (ros2Turtlebot3_msgsMsgSensorState_battery value)
  W.bounded 168 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10]
readRos2Turtlebot3_msgsMsgSensorState :: W.Decoder Ros2Turtlebot3_msgsMsgSensorState
readRos2Turtlebot3_msgsMsgSensorState = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- fromIntegral <$> W.unsigned 1
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- fromIntegral <$> W.unsigned 1
  a6 <- fromIntegral <$> W.unsigned 1
  a7 <- W.boolean
  a8 <- fromIntegral <$> W.signed 4
  a9 <- fromIntegral <$> W.signed 4
  a10 <- W.float32
  let value = Ros2Turtlebot3_msgsMsgSensorState a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10
  case encodeRos2Turtlebot3_msgsMsgSensorState value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Turtlebot3_msgsMsgSensorState :: B.ByteString -> Either Word32 Ros2Turtlebot3_msgsMsgSensorState
decodeRos2Turtlebot3_msgsMsgSensorState = W.runDecoder 168 readRos2Turtlebot3_msgsMsgSensorState
instance Canonical Ros2Turtlebot3_msgsMsgSensorState where
  maximumBytes _ = 168
  encodeValue = encodeRos2Turtlebot3_msgsMsgSensorState
  readValue = readRos2Turtlebot3_msgsMsgSensorState
data Ros2Turtlebot3_msgsMsgSound = Ros2Turtlebot3_msgsMsgSound
  {
    -- | \@brief turtlebot3_msgs/msg/Sound.value: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Turtlebot3_msgsMsgSound; document/platform/robotis/en_US/language/haskell/API.md
    ros2Turtlebot3_msgsMsgSound_value :: Word8
  } deriving (Eq, Show)
defaultRos2Turtlebot3_msgsMsgSound :: Ros2Turtlebot3_msgsMsgSound
defaultRos2Turtlebot3_msgsMsgSound = Ros2Turtlebot3_msgsMsgSound (0)
ros2Turtlebot3_msgsMsgSoundCodecIdentity :: String
ros2Turtlebot3_msgsMsgSoundCodecIdentity = "UWVMROS1_e8bd9a5fdf84ad1df0f264bd13a0e8966918de19ab62e91c7524dd8fc17a4e4b"
ros2Turtlebot3_msgsMsgSound_OFF :: Word8
ros2Turtlebot3_msgsMsgSound_OFF = 0
ros2Turtlebot3_msgsMsgSound_ON :: Word8
ros2Turtlebot3_msgsMsgSound_ON = 1
ros2Turtlebot3_msgsMsgSound_LOW_BATTERY :: Word8
ros2Turtlebot3_msgsMsgSound_LOW_BATTERY = 2
ros2Turtlebot3_msgsMsgSound_ERROR :: Word8
ros2Turtlebot3_msgsMsgSound_ERROR = 3
ros2Turtlebot3_msgsMsgSound_BUTTON1 :: Word8
ros2Turtlebot3_msgsMsgSound_BUTTON1 = 4
ros2Turtlebot3_msgsMsgSound_BUTTON2 :: Word8
ros2Turtlebot3_msgsMsgSound_BUTTON2 = 5
encodeRos2Turtlebot3_msgsMsgSound :: Ros2Turtlebot3_msgsMsgSound -> Either Word32 B.ByteString
encodeRos2Turtlebot3_msgsMsgSound value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros2Turtlebot3_msgsMsgSound_value value))
  W.bounded 1 [b0]
readRos2Turtlebot3_msgsMsgSound :: W.Decoder Ros2Turtlebot3_msgsMsgSound
readRos2Turtlebot3_msgsMsgSound = do
  a0 <- fromIntegral <$> W.unsigned 1
  let value = Ros2Turtlebot3_msgsMsgSound a0
  case encodeRos2Turtlebot3_msgsMsgSound value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Turtlebot3_msgsMsgSound :: B.ByteString -> Either Word32 Ros2Turtlebot3_msgsMsgSound
decodeRos2Turtlebot3_msgsMsgSound = W.runDecoder 1 readRos2Turtlebot3_msgsMsgSound
instance Canonical Ros2Turtlebot3_msgsMsgSound where
  maximumBytes _ = 1
  encodeValue = encodeRos2Turtlebot3_msgsMsgSound
  readValue = readRos2Turtlebot3_msgsMsgSound
data Ros2Turtlebot3_msgsMsgVersionInfo = Ros2Turtlebot3_msgsMsgVersionInfo
  {
    -- | \@brief turtlebot3_msgs/msg/VersionInfo.hardware: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Turtlebot3_msgsMsgVersionInfo; document/platform/robotis/en_US/language/haskell/API.md
    ros2Turtlebot3_msgsMsgVersionInfo_hardware :: T.Text
  ,
    -- | \@brief turtlebot3_msgs/msg/VersionInfo.firmware: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Turtlebot3_msgsMsgVersionInfo; document/platform/robotis/en_US/language/haskell/API.md
    ros2Turtlebot3_msgsMsgVersionInfo_firmware :: T.Text
  ,
    -- | \@brief turtlebot3_msgs/msg/VersionInfo.software: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Turtlebot3_msgsMsgVersionInfo; document/platform/robotis/en_US/language/haskell/API.md
    ros2Turtlebot3_msgsMsgVersionInfo_software :: T.Text
  } deriving (Eq, Show)
defaultRos2Turtlebot3_msgsMsgVersionInfo :: Ros2Turtlebot3_msgsMsgVersionInfo
defaultRos2Turtlebot3_msgsMsgVersionInfo = Ros2Turtlebot3_msgsMsgVersionInfo (T.empty) (T.empty) (T.empty)
ros2Turtlebot3_msgsMsgVersionInfoCodecIdentity :: String
ros2Turtlebot3_msgsMsgVersionInfoCodecIdentity = "UWVMROS1_7668c77b01a05eeb8ba3c5f259f3f3a9dfad3d4fdf8aa566d65f6e8f1c0f2d6a"
encodeRos2Turtlebot3_msgsMsgVersionInfo :: Ros2Turtlebot3_msgsMsgVersionInfo -> Either Word32 B.ByteString
encodeRos2Turtlebot3_msgsMsgVersionInfo value = do
  b0 <- W.encodeText 256 True (ros2Turtlebot3_msgsMsgVersionInfo_hardware value)
  b1 <- W.encodeText 256 True (ros2Turtlebot3_msgsMsgVersionInfo_firmware value)
  b2 <- W.encodeText 256 True (ros2Turtlebot3_msgsMsgVersionInfo_software value)
  W.bounded 780 [b0, b1, b2]
readRos2Turtlebot3_msgsMsgVersionInfo :: W.Decoder Ros2Turtlebot3_msgsMsgVersionInfo
readRos2Turtlebot3_msgsMsgVersionInfo = do
  a0 <- W.text 256 True
  a1 <- W.text 256 True
  a2 <- W.text 256 True
  let value = Ros2Turtlebot3_msgsMsgVersionInfo a0 a1 a2
  case encodeRos2Turtlebot3_msgsMsgVersionInfo value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Turtlebot3_msgsMsgVersionInfo :: B.ByteString -> Either Word32 Ros2Turtlebot3_msgsMsgVersionInfo
decodeRos2Turtlebot3_msgsMsgVersionInfo = W.runDecoder 780 readRos2Turtlebot3_msgsMsgVersionInfo
instance Canonical Ros2Turtlebot3_msgsMsgVersionInfo where
  maximumBytes _ = 780
  encodeValue = encodeRos2Turtlebot3_msgsMsgVersionInfo
  readValue = readRos2Turtlebot3_msgsMsgVersionInfo
data Ros2Turtlebot3_msgsSrvDqn_Request = Ros2Turtlebot3_msgsSrvDqn_Request
  {
    -- | \@brief turtlebot3_msgs/srv/Dqn_Request.action: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Turtlebot3_msgsSrvDqn_Request; document/platform/robotis/en_US/language/haskell/API.md
    ros2Turtlebot3_msgsSrvDqn_Request_action :: Word8
  ,
    -- | \@brief turtlebot3_msgs/srv/Dqn_Request.init: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Turtlebot3_msgsSrvDqn_Request; document/platform/robotis/en_US/language/haskell/API.md
    ros2Turtlebot3_msgsSrvDqn_Request_init :: Bool
  } deriving (Eq, Show)
defaultRos2Turtlebot3_msgsSrvDqn_Request :: Ros2Turtlebot3_msgsSrvDqn_Request
defaultRos2Turtlebot3_msgsSrvDqn_Request = Ros2Turtlebot3_msgsSrvDqn_Request (0) (False)
ros2Turtlebot3_msgsSrvDqn_RequestCodecIdentity :: String
ros2Turtlebot3_msgsSrvDqn_RequestCodecIdentity = "UWVMROS1_14042e65db9f4feef7a43bfb44255795470bb0ed91a3cf301ebec98c2d4e2d0e"
encodeRos2Turtlebot3_msgsSrvDqn_Request :: Ros2Turtlebot3_msgsSrvDqn_Request -> Either Word32 B.ByteString
encodeRos2Turtlebot3_msgsSrvDqn_Request value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros2Turtlebot3_msgsSrvDqn_Request_action value))
  b1 <- W.encodeBool (ros2Turtlebot3_msgsSrvDqn_Request_init value)
  W.bounded 2 [b0, b1]
readRos2Turtlebot3_msgsSrvDqn_Request :: W.Decoder Ros2Turtlebot3_msgsSrvDqn_Request
readRos2Turtlebot3_msgsSrvDqn_Request = do
  a0 <- fromIntegral <$> W.unsigned 1
  a1 <- W.boolean
  let value = Ros2Turtlebot3_msgsSrvDqn_Request a0 a1
  case encodeRos2Turtlebot3_msgsSrvDqn_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Turtlebot3_msgsSrvDqn_Request :: B.ByteString -> Either Word32 Ros2Turtlebot3_msgsSrvDqn_Request
decodeRos2Turtlebot3_msgsSrvDqn_Request = W.runDecoder 2 readRos2Turtlebot3_msgsSrvDqn_Request
instance Canonical Ros2Turtlebot3_msgsSrvDqn_Request where
  maximumBytes _ = 2
  encodeValue = encodeRos2Turtlebot3_msgsSrvDqn_Request
  readValue = readRos2Turtlebot3_msgsSrvDqn_Request
data Ros2Turtlebot3_msgsSrvDqn_Response = Ros2Turtlebot3_msgsSrvDqn_Response
  {
    -- | \@brief turtlebot3_msgs/srv/Dqn_Response.state: float32; 0..128 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Turtlebot3_msgsSrvDqn_Response; document/platform/robotis/en_US/language/haskell/API.md
    ros2Turtlebot3_msgsSrvDqn_Response_state :: [Float]
  ,
    -- | \@brief turtlebot3_msgs/srv/Dqn_Response.reward: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Turtlebot3_msgsSrvDqn_Response; document/platform/robotis/en_US/language/haskell/API.md
    ros2Turtlebot3_msgsSrvDqn_Response_reward :: Float
  ,
    -- | \@brief turtlebot3_msgs/srv/Dqn_Response.done: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Turtlebot3_msgsSrvDqn_Response; document/platform/robotis/en_US/language/haskell/API.md
    ros2Turtlebot3_msgsSrvDqn_Response_done :: Bool
  } deriving (Eq, Show)
defaultRos2Turtlebot3_msgsSrvDqn_Response :: Ros2Turtlebot3_msgsSrvDqn_Response
defaultRos2Turtlebot3_msgsSrvDqn_Response = Ros2Turtlebot3_msgsSrvDqn_Response ([]) (0) (False)
ros2Turtlebot3_msgsSrvDqn_ResponseCodecIdentity :: String
ros2Turtlebot3_msgsSrvDqn_ResponseCodecIdentity = "UWVMROS1_5d256e9c87d7959917f07e7cfcc0049fc18f79f547d83b72bd388a63c1417c6e"
encodeRos2Turtlebot3_msgsSrvDqn_Response :: Ros2Turtlebot3_msgsSrvDqn_Response -> Either Word32 B.ByteString
encodeRos2Turtlebot3_msgsSrvDqn_Response value = do
  if length (ros2Turtlebot3_msgsSrvDqn_Response_state value) > 128 then Left 22 else Right ()
  prefix0 <- W.encodeCount 128 (length (ros2Turtlebot3_msgsSrvDqn_Response_state value))
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros2Turtlebot3_msgsSrvDqn_Response_state value)
  b1 <- W.encodeFloat32 (ros2Turtlebot3_msgsSrvDqn_Response_reward value)
  b2 <- W.encodeBool (ros2Turtlebot3_msgsSrvDqn_Response_done value)
  W.bounded 521 [prefix0, b0, b1, b2]
readRos2Turtlebot3_msgsSrvDqn_Response :: W.Decoder Ros2Turtlebot3_msgsSrvDqn_Response
readRos2Turtlebot3_msgsSrvDqn_Response = do
  count0 <- W.count 128
  a0 <- replicateM count0 (W.float32)
  a1 <- W.float32
  a2 <- W.boolean
  let value = Ros2Turtlebot3_msgsSrvDqn_Response a0 a1 a2
  case encodeRos2Turtlebot3_msgsSrvDqn_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Turtlebot3_msgsSrvDqn_Response :: B.ByteString -> Either Word32 Ros2Turtlebot3_msgsSrvDqn_Response
decodeRos2Turtlebot3_msgsSrvDqn_Response = W.runDecoder 521 readRos2Turtlebot3_msgsSrvDqn_Response
instance Canonical Ros2Turtlebot3_msgsSrvDqn_Response where
  maximumBytes _ = 521
  encodeValue = encodeRos2Turtlebot3_msgsSrvDqn_Response
  readValue = readRos2Turtlebot3_msgsSrvDqn_Response
data Ros2Turtlebot3_msgsSrvGoal_Request = Ros2Turtlebot3_msgsSrvGoal_Request deriving (Eq, Show)
defaultRos2Turtlebot3_msgsSrvGoal_Request :: Ros2Turtlebot3_msgsSrvGoal_Request
defaultRos2Turtlebot3_msgsSrvGoal_Request = Ros2Turtlebot3_msgsSrvGoal_Request 
ros2Turtlebot3_msgsSrvGoal_RequestCodecIdentity :: String
ros2Turtlebot3_msgsSrvGoal_RequestCodecIdentity = "UWVMROS1_f76094f3cf00772bb80b59e846f1160ae6255fc0d931bbcba362104081698ded"
encodeRos2Turtlebot3_msgsSrvGoal_Request :: Ros2Turtlebot3_msgsSrvGoal_Request -> Either Word32 B.ByteString
encodeRos2Turtlebot3_msgsSrvGoal_Request value = do
  W.bounded 0 []
readRos2Turtlebot3_msgsSrvGoal_Request :: W.Decoder Ros2Turtlebot3_msgsSrvGoal_Request
readRos2Turtlebot3_msgsSrvGoal_Request = do
  let value = Ros2Turtlebot3_msgsSrvGoal_Request 
  case encodeRos2Turtlebot3_msgsSrvGoal_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Turtlebot3_msgsSrvGoal_Request :: B.ByteString -> Either Word32 Ros2Turtlebot3_msgsSrvGoal_Request
decodeRos2Turtlebot3_msgsSrvGoal_Request = W.runDecoder 0 readRos2Turtlebot3_msgsSrvGoal_Request
instance Canonical Ros2Turtlebot3_msgsSrvGoal_Request where
  maximumBytes _ = 0
  encodeValue = encodeRos2Turtlebot3_msgsSrvGoal_Request
  readValue = readRos2Turtlebot3_msgsSrvGoal_Request
data Ros2Turtlebot3_msgsSrvGoal_Response = Ros2Turtlebot3_msgsSrvGoal_Response
  {
    -- | \@brief turtlebot3_msgs/srv/Goal_Response.pose_x: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Turtlebot3_msgsSrvGoal_Response; document/platform/robotis/en_US/language/haskell/API.md
    ros2Turtlebot3_msgsSrvGoal_Response_pose_x :: Float
  ,
    -- | \@brief turtlebot3_msgs/srv/Goal_Response.pose_y: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Turtlebot3_msgsSrvGoal_Response; document/platform/robotis/en_US/language/haskell/API.md
    ros2Turtlebot3_msgsSrvGoal_Response_pose_y :: Float
  ,
    -- | \@brief turtlebot3_msgs/srv/Goal_Response.success: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Turtlebot3_msgsSrvGoal_Response; document/platform/robotis/en_US/language/haskell/API.md
    ros2Turtlebot3_msgsSrvGoal_Response_success :: Bool
  } deriving (Eq, Show)
defaultRos2Turtlebot3_msgsSrvGoal_Response :: Ros2Turtlebot3_msgsSrvGoal_Response
defaultRos2Turtlebot3_msgsSrvGoal_Response = Ros2Turtlebot3_msgsSrvGoal_Response (0) (0) (False)
ros2Turtlebot3_msgsSrvGoal_ResponseCodecIdentity :: String
ros2Turtlebot3_msgsSrvGoal_ResponseCodecIdentity = "UWVMROS1_8b9022a7fb8c68a0b063b080cd05c230b653169badbe205bcd8051b8020f7990"
encodeRos2Turtlebot3_msgsSrvGoal_Response :: Ros2Turtlebot3_msgsSrvGoal_Response -> Either Word32 B.ByteString
encodeRos2Turtlebot3_msgsSrvGoal_Response value = do
  b0 <- W.encodeFloat32 (ros2Turtlebot3_msgsSrvGoal_Response_pose_x value)
  b1 <- W.encodeFloat32 (ros2Turtlebot3_msgsSrvGoal_Response_pose_y value)
  b2 <- W.encodeBool (ros2Turtlebot3_msgsSrvGoal_Response_success value)
  W.bounded 9 [b0, b1, b2]
readRos2Turtlebot3_msgsSrvGoal_Response :: W.Decoder Ros2Turtlebot3_msgsSrvGoal_Response
readRos2Turtlebot3_msgsSrvGoal_Response = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.boolean
  let value = Ros2Turtlebot3_msgsSrvGoal_Response a0 a1 a2
  case encodeRos2Turtlebot3_msgsSrvGoal_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Turtlebot3_msgsSrvGoal_Response :: B.ByteString -> Either Word32 Ros2Turtlebot3_msgsSrvGoal_Response
decodeRos2Turtlebot3_msgsSrvGoal_Response = W.runDecoder 9 readRos2Turtlebot3_msgsSrvGoal_Response
instance Canonical Ros2Turtlebot3_msgsSrvGoal_Response where
  maximumBytes _ = 9
  encodeValue = encodeRos2Turtlebot3_msgsSrvGoal_Response
  readValue = readRos2Turtlebot3_msgsSrvGoal_Response
data Ros2Turtlebot3_msgsSrvSound_Request = Ros2Turtlebot3_msgsSrvSound_Request
  {
    -- | \@brief turtlebot3_msgs/srv/Sound_Request.value: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Turtlebot3_msgsSrvSound_Request; document/platform/robotis/en_US/language/haskell/API.md
    ros2Turtlebot3_msgsSrvSound_Request_value :: Word8
  } deriving (Eq, Show)
defaultRos2Turtlebot3_msgsSrvSound_Request :: Ros2Turtlebot3_msgsSrvSound_Request
defaultRos2Turtlebot3_msgsSrvSound_Request = Ros2Turtlebot3_msgsSrvSound_Request (0)
ros2Turtlebot3_msgsSrvSound_RequestCodecIdentity :: String
ros2Turtlebot3_msgsSrvSound_RequestCodecIdentity = "UWVMROS1_0dcba95f5ba646d9a24b0054ba603daf1d1e5e4e9a6ffe7387cd61bff2e4151a"
encodeRos2Turtlebot3_msgsSrvSound_Request :: Ros2Turtlebot3_msgsSrvSound_Request -> Either Word32 B.ByteString
encodeRos2Turtlebot3_msgsSrvSound_Request value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros2Turtlebot3_msgsSrvSound_Request_value value))
  W.bounded 1 [b0]
readRos2Turtlebot3_msgsSrvSound_Request :: W.Decoder Ros2Turtlebot3_msgsSrvSound_Request
readRos2Turtlebot3_msgsSrvSound_Request = do
  a0 <- fromIntegral <$> W.unsigned 1
  let value = Ros2Turtlebot3_msgsSrvSound_Request a0
  case encodeRos2Turtlebot3_msgsSrvSound_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Turtlebot3_msgsSrvSound_Request :: B.ByteString -> Either Word32 Ros2Turtlebot3_msgsSrvSound_Request
decodeRos2Turtlebot3_msgsSrvSound_Request = W.runDecoder 1 readRos2Turtlebot3_msgsSrvSound_Request
instance Canonical Ros2Turtlebot3_msgsSrvSound_Request where
  maximumBytes _ = 1
  encodeValue = encodeRos2Turtlebot3_msgsSrvSound_Request
  readValue = readRos2Turtlebot3_msgsSrvSound_Request
data Ros2Turtlebot3_msgsSrvSound_Response = Ros2Turtlebot3_msgsSrvSound_Response
  {
    -- | \@brief turtlebot3_msgs/srv/Sound_Response.success: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Turtlebot3_msgsSrvSound_Response; document/platform/robotis/en_US/language/haskell/API.md
    ros2Turtlebot3_msgsSrvSound_Response_success :: Bool
  ,
    -- | \@brief turtlebot3_msgs/srv/Sound_Response.message: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Turtlebot3_msgsSrvSound_Response; document/platform/robotis/en_US/language/haskell/API.md
    ros2Turtlebot3_msgsSrvSound_Response_message :: T.Text
  } deriving (Eq, Show)
defaultRos2Turtlebot3_msgsSrvSound_Response :: Ros2Turtlebot3_msgsSrvSound_Response
defaultRos2Turtlebot3_msgsSrvSound_Response = Ros2Turtlebot3_msgsSrvSound_Response (False) (T.empty)
ros2Turtlebot3_msgsSrvSound_ResponseCodecIdentity :: String
ros2Turtlebot3_msgsSrvSound_ResponseCodecIdentity = "UWVMROS1_bc5a5fd3e2bf733a278b8a1315c8905b27fff49b4844df238d5574149068998e"
encodeRos2Turtlebot3_msgsSrvSound_Response :: Ros2Turtlebot3_msgsSrvSound_Response -> Either Word32 B.ByteString
encodeRos2Turtlebot3_msgsSrvSound_Response value = do
  b0 <- W.encodeBool (ros2Turtlebot3_msgsSrvSound_Response_success value)
  b1 <- W.encodeText 256 True (ros2Turtlebot3_msgsSrvSound_Response_message value)
  W.bounded 261 [b0, b1]
readRos2Turtlebot3_msgsSrvSound_Response :: W.Decoder Ros2Turtlebot3_msgsSrvSound_Response
readRos2Turtlebot3_msgsSrvSound_Response = do
  a0 <- W.boolean
  a1 <- W.text 256 True
  let value = Ros2Turtlebot3_msgsSrvSound_Response a0 a1
  case encodeRos2Turtlebot3_msgsSrvSound_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Turtlebot3_msgsSrvSound_Response :: B.ByteString -> Either Word32 Ros2Turtlebot3_msgsSrvSound_Response
decodeRos2Turtlebot3_msgsSrvSound_Response = W.runDecoder 261 readRos2Turtlebot3_msgsSrvSound_Response
instance Canonical Ros2Turtlebot3_msgsSrvSound_Response where
  maximumBytes _ = 261
  encodeValue = encodeRos2Turtlebot3_msgsSrvSound_Response
  readValue = readRos2Turtlebot3_msgsSrvSound_Response
