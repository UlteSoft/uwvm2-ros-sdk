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
    -- | \@brief std_msgs/msg/Header.frame_id: string; each string is 0..64 bytes; strict UTF-8 with no embedded NUL.
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
ros2Std_msgsMsgHeaderCodecIdentity = "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396"
encodeRos2Std_msgsMsgHeader :: Ros2Std_msgsMsgHeader -> Either Word32 B.ByteString
encodeRos2Std_msgsMsgHeader value = do
  b0 <- encodeRos2Builtin_interfacesMsgTime (ros2Std_msgsMsgHeader_stamp value)
  b1 <- W.encodeText 64 True (ros2Std_msgsMsgHeader_frame_id value)
  W.bounded 76 [b0, b1]
readRos2Std_msgsMsgHeader :: W.Decoder Ros2Std_msgsMsgHeader
readRos2Std_msgsMsgHeader = do
  a0 <- readRos2Builtin_interfacesMsgTime
  a1 <- W.text 64 True
  let value = Ros2Std_msgsMsgHeader a0 a1
  case encodeRos2Std_msgsMsgHeader value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Std_msgsMsgHeader :: B.ByteString -> Either Word32 Ros2Std_msgsMsgHeader
decodeRos2Std_msgsMsgHeader = W.runDecoder 76 readRos2Std_msgsMsgHeader
instance Canonical Ros2Std_msgsMsgHeader where
  maximumBytes _ = 76
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
ros2Geometry_msgsMsgQuaternionCodecIdentity =
    "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672"
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
defaultRos2Geometry_msgsMsgPose = Ros2Geometry_msgsMsgPose (defaultRos2Geometry_msgsMsgPoint) (
    defaultRos2Geometry_msgsMsgQuaternion)
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
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgPoseWithCovariance; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgPoseWithCovariance_pose :: Ros2Geometry_msgsMsgPose
  ,
    -- | \@brief geometry_msgs/msg/PoseWithCovariance.covariance: float64; exactly 36 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgPoseWithCovariance; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgPoseWithCovariance_covariance :: [Double]
  } deriving (Eq, Show)
defaultRos2Geometry_msgsMsgPoseWithCovariance :: Ros2Geometry_msgsMsgPoseWithCovariance
defaultRos2Geometry_msgsMsgPoseWithCovariance = Ros2Geometry_msgsMsgPoseWithCovariance (defaultRos2Geometry_msgsMsgPose)
    (replicate 36 (0))
ros2Geometry_msgsMsgPoseWithCovarianceCodecIdentity :: String
ros2Geometry_msgsMsgPoseWithCovarianceCodecIdentity =
    "UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2"
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
data Ros2Geometry_msgsMsgPoseWithCovarianceStamped = Ros2Geometry_msgsMsgPoseWithCovarianceStamped
  {
    -- | \@brief geometry_msgs/msg/PoseWithCovarianceStamped.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgPoseWithCovarianceStamped; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgPoseWithCovarianceStamped_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief geometry_msgs/msg/PoseWithCovarianceStamped.pose: geometry_msgs/msg/PoseWithCovariance.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Geometry_msgsMsgPoseWithCovarianceStamped; share/platform/ros/haskell/API-CONTRACT.md
    ros2Geometry_msgsMsgPoseWithCovarianceStamped_pose :: Ros2Geometry_msgsMsgPoseWithCovariance
  } deriving (Eq, Show)
defaultRos2Geometry_msgsMsgPoseWithCovarianceStamped :: Ros2Geometry_msgsMsgPoseWithCovarianceStamped
defaultRos2Geometry_msgsMsgPoseWithCovarianceStamped = Ros2Geometry_msgsMsgPoseWithCovarianceStamped (
    defaultRos2Std_msgsMsgHeader) (defaultRos2Geometry_msgsMsgPoseWithCovariance)
ros2Geometry_msgsMsgPoseWithCovarianceStampedCodecIdentity :: String
ros2Geometry_msgsMsgPoseWithCovarianceStampedCodecIdentity =
    "UWVMROS1_ea380172cde0ee5fef319aff50d92a80c314510e3d12efec45e9ae1f74974af3"
encodeRos2Geometry_msgsMsgPoseWithCovarianceStamped :: Ros2Geometry_msgsMsgPoseWithCovarianceStamped -> Either Word32
    B.ByteString
encodeRos2Geometry_msgsMsgPoseWithCovarianceStamped value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Geometry_msgsMsgPoseWithCovarianceStamped_header value)
  b1 <- encodeRos2Geometry_msgsMsgPoseWithCovariance (ros2Geometry_msgsMsgPoseWithCovarianceStamped_pose value)
  W.bounded 420 [b0, b1]
readRos2Geometry_msgsMsgPoseWithCovarianceStamped :: W.Decoder Ros2Geometry_msgsMsgPoseWithCovarianceStamped
readRos2Geometry_msgsMsgPoseWithCovarianceStamped = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- readRos2Geometry_msgsMsgPoseWithCovariance
  let value = Ros2Geometry_msgsMsgPoseWithCovarianceStamped a0 a1
  case encodeRos2Geometry_msgsMsgPoseWithCovarianceStamped value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Geometry_msgsMsgPoseWithCovarianceStamped :: B.ByteString -> Either Word32
    Ros2Geometry_msgsMsgPoseWithCovarianceStamped
decodeRos2Geometry_msgsMsgPoseWithCovarianceStamped = W.runDecoder 420 readRos2Geometry_msgsMsgPoseWithCovarianceStamped
instance Canonical Ros2Geometry_msgsMsgPoseWithCovarianceStamped where
  maximumBytes _ = 420
  encodeValue = encodeRos2Geometry_msgsMsgPoseWithCovarianceStamped
  readValue = readRos2Geometry_msgsMsgPoseWithCovarianceStamped
data Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection = Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection
  {
    -- | \@brief isaac_ros_apriltag_interfaces/msg/AprilTagDetection.family: string; each string is 0..64 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection; share/platform/ros/haskell/API-CONTRACT.md
    ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection_family :: T.Text
  ,
    -- | \@brief isaac_ros_apriltag_interfaces/msg/AprilTagDetection.id: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection; share/platform/ros/haskell/API-CONTRACT.md
    ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection_id :: Int32
  ,
    -- | \@brief isaac_ros_apriltag_interfaces/msg/AprilTagDetection.center: geometry_msgs/msg/Point.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection; share/platform/ros/haskell/API-CONTRACT.md
    ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection_center :: Ros2Geometry_msgsMsgPoint
  ,
    -- | \@brief isaac_ros_apriltag_interfaces/msg/AprilTagDetection.corners: geometry_msgs/msg/Point; exactly 4
    -- elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection; share/platform/ros/haskell/API-CONTRACT.md
    ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection_corners :: [Ros2Geometry_msgsMsgPoint]
  ,
    -- | \@brief isaac_ros_apriltag_interfaces/msg/AprilTagDetection.pose: geometry_msgs/msg/PoseWithCovarianceStamped.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection; share/platform/ros/haskell/API-CONTRACT.md
    ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection_pose :: Ros2Geometry_msgsMsgPoseWithCovarianceStamped
  } deriving (Eq, Show)
defaultRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection :: Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection
defaultRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection = Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection (
    T.empty) (0) (defaultRos2Geometry_msgsMsgPoint) (replicate 4 (defaultRos2Geometry_msgsMsgPoint)) (
    defaultRos2Geometry_msgsMsgPoseWithCovarianceStamped)
ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionCodecIdentity :: String
ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionCodecIdentity =
    "UWVMROS1_5d840f0d9239a948ce5d17bbee6e248db8151ff31070667e506e9c1647ac6fe7"
encodeRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection :: Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection ->
    Either Word32 B.ByteString
encodeRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection value = do
  b0 <- W.encodeText 64 True (ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection_family value)
  b1 <- W.encodeSigned 4 (fromIntegral (ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection_id value))
  b2 <- encodeRos2Geometry_msgsMsgPoint (ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection_center value)
  if length (ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection_corners value) /= 4 then Left 22 else Right ()
  b3 <- B.concat <$> mapM (\e -> encodeRos2Geometry_msgsMsgPoint (e)) (
      ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection_corners value)
  b4 <- encodeRos2Geometry_msgsMsgPoseWithCovarianceStamped (ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection_pose
      value)
  W.bounded 612 [b0, b1, b2, b3, b4]
readRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection :: W.Decoder
    Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection
readRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection = do
  a0 <- W.text 64 True
  a1 <- fromIntegral <$> W.signed 4
  a2 <- readRos2Geometry_msgsMsgPoint
  a3 <- replicateM 4 (readRos2Geometry_msgsMsgPoint)
  a4 <- readRos2Geometry_msgsMsgPoseWithCovarianceStamped
  let value = Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection a0 a1 a2 a3 a4
  case encodeRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection :: B.ByteString -> Either Word32
    Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection
decodeRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection = W.runDecoder 612
    readRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection
instance Canonical Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection where
  maximumBytes _ = 612
  encodeValue = encodeRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection
  readValue = readRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection
data Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray =
    Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray
  {
    -- | \@brief isaac_ros_apriltag_interfaces/msg/AprilTagDetectionArray.header: std_msgs/msg/Header.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray; share/platform/ros/haskell/API-CONTRACT.md
    ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief isaac_ros_apriltag_interfaces/msg/AprilTagDetectionArray.detections:
    -- isaac_ros_apriltag_interfaces/msg/AprilTagDetection; 0..16 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray; share/platform/ros/haskell/API-CONTRACT.md
    ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray_detections ::
        [Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection]
  } deriving (Eq, Show)
defaultRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray ::
    Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray
defaultRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray =
    Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray (defaultRos2Std_msgsMsgHeader) ([])
ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayCodecIdentity :: String
ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayCodecIdentity =
    "UWVMROS1_60359e405aedd2a627e60bc35e849989fe5ed1d426afb2a884036aef93bfe0a5"
encodeRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray ::
    Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray -> Either Word32 B.ByteString
encodeRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray_header value)
  if length (ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray_detections value) > 16 then Left 22 else Right (
      )
  prefix1 <- W.encodeCount 16 (length (ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray_detections value))
  b1 <- B.concat <$> mapM (\e -> encodeRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection (e)) (
      ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray_detections value)
  W.bounded 9872 [b0, prefix1, b1]
readRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray :: W.Decoder
    Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray
readRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray = do
  a0 <- readRos2Std_msgsMsgHeader
  count1 <- W.count 16
  a1 <- replicateM count1 (readRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection)
  let value = Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray a0 a1
  case encodeRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray :: B.ByteString -> Either Word32
    Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray
decodeRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray = W.runDecoder 9872
    readRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray
instance Canonical Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray where
  maximumBytes _ = 9872
  encodeValue = encodeRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray
  readValue = readRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray
