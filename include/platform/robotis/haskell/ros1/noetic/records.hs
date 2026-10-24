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
data Ros1Geometry_msgsPoint = Ros1Geometry_msgsPoint
  {
    -- | \@brief geometry_msgs/Point.x: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPoint; document/platform/robotis/en_US/language/haskell/API.md
    ros1Geometry_msgsPoint_x :: Double
  ,
    -- | \@brief geometry_msgs/Point.y: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPoint; document/platform/robotis/en_US/language/haskell/API.md
    ros1Geometry_msgsPoint_y :: Double
  ,
    -- | \@brief geometry_msgs/Point.z: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPoint; document/platform/robotis/en_US/language/haskell/API.md
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
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsQuaternion; document/platform/robotis/en_US/language/haskell/API.md
    ros1Geometry_msgsQuaternion_x :: Double
  ,
    -- | \@brief geometry_msgs/Quaternion.y: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsQuaternion; document/platform/robotis/en_US/language/haskell/API.md
    ros1Geometry_msgsQuaternion_y :: Double
  ,
    -- | \@brief geometry_msgs/Quaternion.z: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsQuaternion; document/platform/robotis/en_US/language/haskell/API.md
    ros1Geometry_msgsQuaternion_z :: Double
  ,
    -- | \@brief geometry_msgs/Quaternion.w: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsQuaternion; document/platform/robotis/en_US/language/haskell/API.md
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
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPose; document/platform/robotis/en_US/language/haskell/API.md
    ros1Geometry_msgsPose_position :: Ros1Geometry_msgsPoint
  ,
    -- | \@brief geometry_msgs/Pose.orientation: geometry_msgs/Quaternion.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPose; document/platform/robotis/en_US/language/haskell/API.md
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
data Ros1Geometry_msgsPoseWithCovariance = Ros1Geometry_msgsPoseWithCovariance
  {
    -- | \@brief geometry_msgs/PoseWithCovariance.pose: geometry_msgs/Pose.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPoseWithCovariance; document/platform/robotis/en_US/language/haskell/API.md
    ros1Geometry_msgsPoseWithCovariance_pose :: Ros1Geometry_msgsPose
  ,
    -- | \@brief geometry_msgs/PoseWithCovariance.covariance: float64; exactly 36 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPoseWithCovariance; document/platform/robotis/en_US/language/haskell/API.md
    ros1Geometry_msgsPoseWithCovariance_covariance :: [Double]
  } deriving (Eq, Show)
defaultRos1Geometry_msgsPoseWithCovariance :: Ros1Geometry_msgsPoseWithCovariance
defaultRos1Geometry_msgsPoseWithCovariance = Ros1Geometry_msgsPoseWithCovariance (defaultRos1Geometry_msgsPose) (replicate 36 (0))
ros1Geometry_msgsPoseWithCovarianceCodecIdentity :: String
ros1Geometry_msgsPoseWithCovarianceCodecIdentity = "UWVMROS1_17b25963aafb3adfd0432febe040c9b38a531a7a667949b89e0f3937585ef8cf"
encodeRos1Geometry_msgsPoseWithCovariance :: Ros1Geometry_msgsPoseWithCovariance -> Either Word32 B.ByteString
encodeRos1Geometry_msgsPoseWithCovariance value = do
  b0 <- encodeRos1Geometry_msgsPose (ros1Geometry_msgsPoseWithCovariance_pose value)
  if length (ros1Geometry_msgsPoseWithCovariance_covariance value) /= 36 then Left 22 else Right ()
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Geometry_msgsPoseWithCovariance_covariance value)
  W.bounded 344 [b0, b1]
readRos1Geometry_msgsPoseWithCovariance :: W.Decoder Ros1Geometry_msgsPoseWithCovariance
readRos1Geometry_msgsPoseWithCovariance = do
  a0 <- readRos1Geometry_msgsPose
  a1 <- replicateM 36 (W.float64)
  let value = Ros1Geometry_msgsPoseWithCovariance a0 a1
  case encodeRos1Geometry_msgsPoseWithCovariance value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Geometry_msgsPoseWithCovariance :: B.ByteString -> Either Word32 Ros1Geometry_msgsPoseWithCovariance
decodeRos1Geometry_msgsPoseWithCovariance = W.runDecoder 344 readRos1Geometry_msgsPoseWithCovariance
instance Canonical Ros1Geometry_msgsPoseWithCovariance where
  maximumBytes _ = 344
  encodeValue = encodeRos1Geometry_msgsPoseWithCovariance
  readValue = readRos1Geometry_msgsPoseWithCovariance
data Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3
  {
    -- | \@brief geometry_msgs/Vector3.x: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsVector3; document/platform/robotis/en_US/language/haskell/API.md
    ros1Geometry_msgsVector3_x :: Double
  ,
    -- | \@brief geometry_msgs/Vector3.y: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsVector3; document/platform/robotis/en_US/language/haskell/API.md
    ros1Geometry_msgsVector3_y :: Double
  ,
    -- | \@brief geometry_msgs/Vector3.z: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsVector3; document/platform/robotis/en_US/language/haskell/API.md
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
data Ros1Geometry_msgsTransform = Ros1Geometry_msgsTransform
  {
    -- | \@brief geometry_msgs/Transform.translation: geometry_msgs/Vector3.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsTransform; document/platform/robotis/en_US/language/haskell/API.md
    ros1Geometry_msgsTransform_translation :: Ros1Geometry_msgsVector3
  ,
    -- | \@brief geometry_msgs/Transform.rotation: geometry_msgs/Quaternion.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsTransform; document/platform/robotis/en_US/language/haskell/API.md
    ros1Geometry_msgsTransform_rotation :: Ros1Geometry_msgsQuaternion
  } deriving (Eq, Show)
defaultRos1Geometry_msgsTransform :: Ros1Geometry_msgsTransform
defaultRos1Geometry_msgsTransform = Ros1Geometry_msgsTransform (defaultRos1Geometry_msgsVector3) (defaultRos1Geometry_msgsQuaternion)
ros1Geometry_msgsTransformCodecIdentity :: String
ros1Geometry_msgsTransformCodecIdentity = "UWVMROS1_61aabab03e8f766ea05949c9e5f4989186d72a26f793b8d11752e53f1f300085"
encodeRos1Geometry_msgsTransform :: Ros1Geometry_msgsTransform -> Either Word32 B.ByteString
encodeRos1Geometry_msgsTransform value = do
  b0 <- encodeRos1Geometry_msgsVector3 (ros1Geometry_msgsTransform_translation value)
  b1 <- encodeRos1Geometry_msgsQuaternion (ros1Geometry_msgsTransform_rotation value)
  W.bounded 56 [b0, b1]
readRos1Geometry_msgsTransform :: W.Decoder Ros1Geometry_msgsTransform
readRos1Geometry_msgsTransform = do
  a0 <- readRos1Geometry_msgsVector3
  a1 <- readRos1Geometry_msgsQuaternion
  let value = Ros1Geometry_msgsTransform a0 a1
  case encodeRos1Geometry_msgsTransform value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Geometry_msgsTransform :: B.ByteString -> Either Word32 Ros1Geometry_msgsTransform
decodeRos1Geometry_msgsTransform = W.runDecoder 56 readRos1Geometry_msgsTransform
instance Canonical Ros1Geometry_msgsTransform where
  maximumBytes _ = 56
  encodeValue = encodeRos1Geometry_msgsTransform
  readValue = readRos1Geometry_msgsTransform
data Ros1Time = Ros1Time
  {
    -- | \@brief time.sec: uint32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Time; document/platform/robotis/en_US/language/haskell/API.md
    ros1Time_sec :: Word32
  ,
    -- | \@brief time.nsec: uint32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Time; document/platform/robotis/en_US/language/haskell/API.md
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
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Std_msgsHeader; document/platform/robotis/en_US/language/haskell/API.md
    ros1Std_msgsHeader_seq :: Word32
  ,
    -- | \@brief std_msgs/Header.stamp: time.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Std_msgsHeader; document/platform/robotis/en_US/language/haskell/API.md
    ros1Std_msgsHeader_stamp :: Ros1Time
  ,
    -- | \@brief std_msgs/Header.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Std_msgsHeader; document/platform/robotis/en_US/language/haskell/API.md
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
data Ros1Geometry_msgsTransformStamped = Ros1Geometry_msgsTransformStamped
  {
    -- | \@brief geometry_msgs/TransformStamped.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsTransformStamped; document/platform/robotis/en_US/language/haskell/API.md
    ros1Geometry_msgsTransformStamped_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief geometry_msgs/TransformStamped.child_frame_id: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsTransformStamped; document/platform/robotis/en_US/language/haskell/API.md
    ros1Geometry_msgsTransformStamped_child_frame_id :: T.Text
  ,
    -- | \@brief geometry_msgs/TransformStamped.transform: geometry_msgs/Transform.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsTransformStamped; document/platform/robotis/en_US/language/haskell/API.md
    ros1Geometry_msgsTransformStamped_transform :: Ros1Geometry_msgsTransform
  } deriving (Eq, Show)
defaultRos1Geometry_msgsTransformStamped :: Ros1Geometry_msgsTransformStamped
defaultRos1Geometry_msgsTransformStamped = Ros1Geometry_msgsTransformStamped (defaultRos1Std_msgsHeader) (T.empty) (defaultRos1Geometry_msgsTransform)
ros1Geometry_msgsTransformStampedCodecIdentity :: String
ros1Geometry_msgsTransformStampedCodecIdentity = "UWVMROS1_9237b5dc5d3beacf4310244ce746a4210b9864855b611d1bf54cf23c28d7b79a"
encodeRos1Geometry_msgsTransformStamped :: Ros1Geometry_msgsTransformStamped -> Either Word32 B.ByteString
encodeRos1Geometry_msgsTransformStamped value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Geometry_msgsTransformStamped_header value)
  b1 <- W.encodeText 256 True (ros1Geometry_msgsTransformStamped_child_frame_id value)
  b2 <- encodeRos1Geometry_msgsTransform (ros1Geometry_msgsTransformStamped_transform value)
  W.bounded 460 [b0, b1, b2]
readRos1Geometry_msgsTransformStamped :: W.Decoder Ros1Geometry_msgsTransformStamped
readRos1Geometry_msgsTransformStamped = do
  a0 <- readRos1Std_msgsHeader
  a1 <- W.text 256 True
  a2 <- readRos1Geometry_msgsTransform
  let value = Ros1Geometry_msgsTransformStamped a0 a1 a2
  case encodeRos1Geometry_msgsTransformStamped value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Geometry_msgsTransformStamped :: B.ByteString -> Either Word32 Ros1Geometry_msgsTransformStamped
decodeRos1Geometry_msgsTransformStamped = W.runDecoder 460 readRos1Geometry_msgsTransformStamped
instance Canonical Ros1Geometry_msgsTransformStamped where
  maximumBytes _ = 460
  encodeValue = encodeRos1Geometry_msgsTransformStamped
  readValue = readRos1Geometry_msgsTransformStamped
data Ros1Geometry_msgsTwist = Ros1Geometry_msgsTwist
  {
    -- | \@brief geometry_msgs/Twist.linear: geometry_msgs/Vector3.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsTwist; document/platform/robotis/en_US/language/haskell/API.md
    ros1Geometry_msgsTwist_linear :: Ros1Geometry_msgsVector3
  ,
    -- | \@brief geometry_msgs/Twist.angular: geometry_msgs/Vector3.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsTwist; document/platform/robotis/en_US/language/haskell/API.md
    ros1Geometry_msgsTwist_angular :: Ros1Geometry_msgsVector3
  } deriving (Eq, Show)
defaultRos1Geometry_msgsTwist :: Ros1Geometry_msgsTwist
defaultRos1Geometry_msgsTwist = Ros1Geometry_msgsTwist (defaultRos1Geometry_msgsVector3) (defaultRos1Geometry_msgsVector3)
ros1Geometry_msgsTwistCodecIdentity :: String
ros1Geometry_msgsTwistCodecIdentity = "UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921"
encodeRos1Geometry_msgsTwist :: Ros1Geometry_msgsTwist -> Either Word32 B.ByteString
encodeRos1Geometry_msgsTwist value = do
  b0 <- encodeRos1Geometry_msgsVector3 (ros1Geometry_msgsTwist_linear value)
  b1 <- encodeRos1Geometry_msgsVector3 (ros1Geometry_msgsTwist_angular value)
  W.bounded 48 [b0, b1]
readRos1Geometry_msgsTwist :: W.Decoder Ros1Geometry_msgsTwist
readRos1Geometry_msgsTwist = do
  a0 <- readRos1Geometry_msgsVector3
  a1 <- readRos1Geometry_msgsVector3
  let value = Ros1Geometry_msgsTwist a0 a1
  case encodeRos1Geometry_msgsTwist value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Geometry_msgsTwist :: B.ByteString -> Either Word32 Ros1Geometry_msgsTwist
decodeRos1Geometry_msgsTwist = W.runDecoder 48 readRos1Geometry_msgsTwist
instance Canonical Ros1Geometry_msgsTwist where
  maximumBytes _ = 48
  encodeValue = encodeRos1Geometry_msgsTwist
  readValue = readRos1Geometry_msgsTwist
data Ros1Geometry_msgsTwistStamped = Ros1Geometry_msgsTwistStamped
  {
    -- | \@brief geometry_msgs/TwistStamped.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsTwistStamped; document/platform/robotis/en_US/language/haskell/API.md
    ros1Geometry_msgsTwistStamped_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief geometry_msgs/TwistStamped.twist: geometry_msgs/Twist.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsTwistStamped; document/platform/robotis/en_US/language/haskell/API.md
    ros1Geometry_msgsTwistStamped_twist :: Ros1Geometry_msgsTwist
  } deriving (Eq, Show)
defaultRos1Geometry_msgsTwistStamped :: Ros1Geometry_msgsTwistStamped
defaultRos1Geometry_msgsTwistStamped = Ros1Geometry_msgsTwistStamped (defaultRos1Std_msgsHeader) (defaultRos1Geometry_msgsTwist)
ros1Geometry_msgsTwistStampedCodecIdentity :: String
ros1Geometry_msgsTwistStampedCodecIdentity = "UWVMROS1_27a31bcca6a50fbc6c6259b53d229872336a75628d6afd9de174eee2481946c7"
encodeRos1Geometry_msgsTwistStamped :: Ros1Geometry_msgsTwistStamped -> Either Word32 B.ByteString
encodeRos1Geometry_msgsTwistStamped value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Geometry_msgsTwistStamped_header value)
  b1 <- encodeRos1Geometry_msgsTwist (ros1Geometry_msgsTwistStamped_twist value)
  W.bounded 192 [b0, b1]
readRos1Geometry_msgsTwistStamped :: W.Decoder Ros1Geometry_msgsTwistStamped
readRos1Geometry_msgsTwistStamped = do
  a0 <- readRos1Std_msgsHeader
  a1 <- readRos1Geometry_msgsTwist
  let value = Ros1Geometry_msgsTwistStamped a0 a1
  case encodeRos1Geometry_msgsTwistStamped value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Geometry_msgsTwistStamped :: B.ByteString -> Either Word32 Ros1Geometry_msgsTwistStamped
decodeRos1Geometry_msgsTwistStamped = W.runDecoder 192 readRos1Geometry_msgsTwistStamped
instance Canonical Ros1Geometry_msgsTwistStamped where
  maximumBytes _ = 192
  encodeValue = encodeRos1Geometry_msgsTwistStamped
  readValue = readRos1Geometry_msgsTwistStamped
data Ros1Geometry_msgsTwistWithCovariance = Ros1Geometry_msgsTwistWithCovariance
  {
    -- | \@brief geometry_msgs/TwistWithCovariance.twist: geometry_msgs/Twist.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsTwistWithCovariance; document/platform/robotis/en_US/language/haskell/API.md
    ros1Geometry_msgsTwistWithCovariance_twist :: Ros1Geometry_msgsTwist
  ,
    -- | \@brief geometry_msgs/TwistWithCovariance.covariance: float64; exactly 36 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsTwistWithCovariance; document/platform/robotis/en_US/language/haskell/API.md
    ros1Geometry_msgsTwistWithCovariance_covariance :: [Double]
  } deriving (Eq, Show)
defaultRos1Geometry_msgsTwistWithCovariance :: Ros1Geometry_msgsTwistWithCovariance
defaultRos1Geometry_msgsTwistWithCovariance = Ros1Geometry_msgsTwistWithCovariance (defaultRos1Geometry_msgsTwist) (replicate 36 (0))
ros1Geometry_msgsTwistWithCovarianceCodecIdentity :: String
ros1Geometry_msgsTwistWithCovarianceCodecIdentity = "UWVMROS1_ff6790d181503b424d84726c8f4a7852cef14c6dd93e6d32cf3c37023f74bcdf"
encodeRos1Geometry_msgsTwistWithCovariance :: Ros1Geometry_msgsTwistWithCovariance -> Either Word32 B.ByteString
encodeRos1Geometry_msgsTwistWithCovariance value = do
  b0 <- encodeRos1Geometry_msgsTwist (ros1Geometry_msgsTwistWithCovariance_twist value)
  if length (ros1Geometry_msgsTwistWithCovariance_covariance value) /= 36 then Left 22 else Right ()
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Geometry_msgsTwistWithCovariance_covariance value)
  W.bounded 336 [b0, b1]
readRos1Geometry_msgsTwistWithCovariance :: W.Decoder Ros1Geometry_msgsTwistWithCovariance
readRos1Geometry_msgsTwistWithCovariance = do
  a0 <- readRos1Geometry_msgsTwist
  a1 <- replicateM 36 (W.float64)
  let value = Ros1Geometry_msgsTwistWithCovariance a0 a1
  case encodeRos1Geometry_msgsTwistWithCovariance value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Geometry_msgsTwistWithCovariance :: B.ByteString -> Either Word32 Ros1Geometry_msgsTwistWithCovariance
decodeRos1Geometry_msgsTwistWithCovariance = W.runDecoder 336 readRos1Geometry_msgsTwistWithCovariance
instance Canonical Ros1Geometry_msgsTwistWithCovariance where
  maximumBytes _ = 336
  encodeValue = encodeRos1Geometry_msgsTwistWithCovariance
  readValue = readRos1Geometry_msgsTwistWithCovariance
data Ros1Nav_msgsOdometry = Ros1Nav_msgsOdometry
  {
    -- | \@brief nav_msgs/Odometry.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Nav_msgsOdometry; document/platform/robotis/en_US/language/haskell/API.md
    ros1Nav_msgsOdometry_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief nav_msgs/Odometry.child_frame_id: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Nav_msgsOdometry; document/platform/robotis/en_US/language/haskell/API.md
    ros1Nav_msgsOdometry_child_frame_id :: T.Text
  ,
    -- | \@brief nav_msgs/Odometry.pose: geometry_msgs/PoseWithCovariance.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Nav_msgsOdometry; document/platform/robotis/en_US/language/haskell/API.md
    ros1Nav_msgsOdometry_pose :: Ros1Geometry_msgsPoseWithCovariance
  ,
    -- | \@brief nav_msgs/Odometry.twist: geometry_msgs/TwistWithCovariance.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Nav_msgsOdometry; document/platform/robotis/en_US/language/haskell/API.md
    ros1Nav_msgsOdometry_twist :: Ros1Geometry_msgsTwistWithCovariance
  } deriving (Eq, Show)
defaultRos1Nav_msgsOdometry :: Ros1Nav_msgsOdometry
defaultRos1Nav_msgsOdometry =
    Ros1Nav_msgsOdometry
    (defaultRos1Std_msgsHeader)
    (T.empty)
    (defaultRos1Geometry_msgsPoseWithCovariance)
    (defaultRos1Geometry_msgsTwistWithCovariance)
ros1Nav_msgsOdometryCodecIdentity :: String
ros1Nav_msgsOdometryCodecIdentity = "UWVMROS1_e0ff5eb7aef868891846ac7618249b12c18fcf0969653f24fdeaa7644e636ca0"
encodeRos1Nav_msgsOdometry :: Ros1Nav_msgsOdometry -> Either Word32 B.ByteString
encodeRos1Nav_msgsOdometry value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Nav_msgsOdometry_header value)
  b1 <- W.encodeText 256 True (ros1Nav_msgsOdometry_child_frame_id value)
  b2 <- encodeRos1Geometry_msgsPoseWithCovariance (ros1Nav_msgsOdometry_pose value)
  b3 <- encodeRos1Geometry_msgsTwistWithCovariance (ros1Nav_msgsOdometry_twist value)
  W.bounded 1084 [b0, b1, b2, b3]
readRos1Nav_msgsOdometry :: W.Decoder Ros1Nav_msgsOdometry
readRos1Nav_msgsOdometry = do
  a0 <- readRos1Std_msgsHeader
  a1 <- W.text 256 True
  a2 <- readRos1Geometry_msgsPoseWithCovariance
  a3 <- readRos1Geometry_msgsTwistWithCovariance
  let value = Ros1Nav_msgsOdometry a0 a1 a2 a3
  case encodeRos1Nav_msgsOdometry value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Nav_msgsOdometry :: B.ByteString -> Either Word32 Ros1Nav_msgsOdometry
decodeRos1Nav_msgsOdometry = W.runDecoder 1084 readRos1Nav_msgsOdometry
instance Canonical Ros1Nav_msgsOdometry where
  maximumBytes _ = 1084
  encodeValue = encodeRos1Nav_msgsOdometry
  readValue = readRos1Nav_msgsOdometry
data Ros1Sensor_msgsBatteryState = Ros1Sensor_msgsBatteryState
  {
    -- | \@brief sensor_msgs/BatteryState.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsBatteryState_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief sensor_msgs/BatteryState.voltage: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsBatteryState_voltage :: Float
  ,
    -- | \@brief sensor_msgs/BatteryState.temperature: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsBatteryState_temperature :: Float
  ,
    -- | \@brief sensor_msgs/BatteryState.current: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsBatteryState_current :: Float
  ,
    -- | \@brief sensor_msgs/BatteryState.charge: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsBatteryState_charge :: Float
  ,
    -- | \@brief sensor_msgs/BatteryState.capacity: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsBatteryState_capacity :: Float
  ,
    -- | \@brief sensor_msgs/BatteryState.design_capacity: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsBatteryState_design_capacity :: Float
  ,
    -- | \@brief sensor_msgs/BatteryState.percentage: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsBatteryState_percentage :: Float
  ,
    -- | \@brief sensor_msgs/BatteryState.power_supply_status: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsBatteryState_power_supply_status :: Word8
  ,
    -- | \@brief sensor_msgs/BatteryState.power_supply_health: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsBatteryState_power_supply_health :: Word8
  ,
    -- | \@brief sensor_msgs/BatteryState.power_supply_technology: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsBatteryState_power_supply_technology :: Word8
  ,
    -- | \@brief sensor_msgs/BatteryState.present: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsBatteryState_present :: Bool
  ,
    -- | \@brief sensor_msgs/BatteryState.cell_voltage: float32; 0..16 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsBatteryState_cell_voltage :: [Float]
  ,
    -- | \@brief sensor_msgs/BatteryState.cell_temperature: float32; 0..16 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsBatteryState_cell_temperature :: [Float]
  ,
    -- | \@brief sensor_msgs/BatteryState.location: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsBatteryState_location :: T.Text
  ,
    -- | \@brief sensor_msgs/BatteryState.serial_number: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsBatteryState_serial_number :: T.Text
  } deriving (Eq, Show)
defaultRos1Sensor_msgsBatteryState :: Ros1Sensor_msgsBatteryState
defaultRos1Sensor_msgsBatteryState =
    Ros1Sensor_msgsBatteryState
    (defaultRos1Std_msgsHeader)
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
ros1Sensor_msgsBatteryStateCodecIdentity :: String
ros1Sensor_msgsBatteryStateCodecIdentity = "UWVMROS1_4b176902362348cd3b7eec6ae21e2035d33df6990b4682ddf5123ef6e0339441"
ros1Sensor_msgsBatteryState_POWER_SUPPLY_STATUS_UNKNOWN :: Word8
ros1Sensor_msgsBatteryState_POWER_SUPPLY_STATUS_UNKNOWN = 0
ros1Sensor_msgsBatteryState_POWER_SUPPLY_STATUS_CHARGING :: Word8
ros1Sensor_msgsBatteryState_POWER_SUPPLY_STATUS_CHARGING = 1
ros1Sensor_msgsBatteryState_POWER_SUPPLY_STATUS_DISCHARGING :: Word8
ros1Sensor_msgsBatteryState_POWER_SUPPLY_STATUS_DISCHARGING = 2
ros1Sensor_msgsBatteryState_POWER_SUPPLY_STATUS_NOT_CHARGING :: Word8
ros1Sensor_msgsBatteryState_POWER_SUPPLY_STATUS_NOT_CHARGING = 3
ros1Sensor_msgsBatteryState_POWER_SUPPLY_STATUS_FULL :: Word8
ros1Sensor_msgsBatteryState_POWER_SUPPLY_STATUS_FULL = 4
ros1Sensor_msgsBatteryState_POWER_SUPPLY_HEALTH_UNKNOWN :: Word8
ros1Sensor_msgsBatteryState_POWER_SUPPLY_HEALTH_UNKNOWN = 0
ros1Sensor_msgsBatteryState_POWER_SUPPLY_HEALTH_GOOD :: Word8
ros1Sensor_msgsBatteryState_POWER_SUPPLY_HEALTH_GOOD = 1
ros1Sensor_msgsBatteryState_POWER_SUPPLY_HEALTH_OVERHEAT :: Word8
ros1Sensor_msgsBatteryState_POWER_SUPPLY_HEALTH_OVERHEAT = 2
ros1Sensor_msgsBatteryState_POWER_SUPPLY_HEALTH_DEAD :: Word8
ros1Sensor_msgsBatteryState_POWER_SUPPLY_HEALTH_DEAD = 3
ros1Sensor_msgsBatteryState_POWER_SUPPLY_HEALTH_OVERVOLTAGE :: Word8
ros1Sensor_msgsBatteryState_POWER_SUPPLY_HEALTH_OVERVOLTAGE = 4
ros1Sensor_msgsBatteryState_POWER_SUPPLY_HEALTH_UNSPEC_FAILURE :: Word8
ros1Sensor_msgsBatteryState_POWER_SUPPLY_HEALTH_UNSPEC_FAILURE = 5
ros1Sensor_msgsBatteryState_POWER_SUPPLY_HEALTH_COLD :: Word8
ros1Sensor_msgsBatteryState_POWER_SUPPLY_HEALTH_COLD = 6
ros1Sensor_msgsBatteryState_POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE :: Word8
ros1Sensor_msgsBatteryState_POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE = 7
ros1Sensor_msgsBatteryState_POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE :: Word8
ros1Sensor_msgsBatteryState_POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE = 8
ros1Sensor_msgsBatteryState_POWER_SUPPLY_TECHNOLOGY_UNKNOWN :: Word8
ros1Sensor_msgsBatteryState_POWER_SUPPLY_TECHNOLOGY_UNKNOWN = 0
ros1Sensor_msgsBatteryState_POWER_SUPPLY_TECHNOLOGY_NIMH :: Word8
ros1Sensor_msgsBatteryState_POWER_SUPPLY_TECHNOLOGY_NIMH = 1
ros1Sensor_msgsBatteryState_POWER_SUPPLY_TECHNOLOGY_LION :: Word8
ros1Sensor_msgsBatteryState_POWER_SUPPLY_TECHNOLOGY_LION = 2
ros1Sensor_msgsBatteryState_POWER_SUPPLY_TECHNOLOGY_LIPO :: Word8
ros1Sensor_msgsBatteryState_POWER_SUPPLY_TECHNOLOGY_LIPO = 3
ros1Sensor_msgsBatteryState_POWER_SUPPLY_TECHNOLOGY_LIFE :: Word8
ros1Sensor_msgsBatteryState_POWER_SUPPLY_TECHNOLOGY_LIFE = 4
ros1Sensor_msgsBatteryState_POWER_SUPPLY_TECHNOLOGY_NICD :: Word8
ros1Sensor_msgsBatteryState_POWER_SUPPLY_TECHNOLOGY_NICD = 5
ros1Sensor_msgsBatteryState_POWER_SUPPLY_TECHNOLOGY_LIMN :: Word8
ros1Sensor_msgsBatteryState_POWER_SUPPLY_TECHNOLOGY_LIMN = 6
encodeRos1Sensor_msgsBatteryState :: Ros1Sensor_msgsBatteryState -> Either Word32 B.ByteString
encodeRos1Sensor_msgsBatteryState value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Sensor_msgsBatteryState_header value)
  b1 <- W.encodeFloat32 (ros1Sensor_msgsBatteryState_voltage value)
  b2 <- W.encodeFloat32 (ros1Sensor_msgsBatteryState_temperature value)
  b3 <- W.encodeFloat32 (ros1Sensor_msgsBatteryState_current value)
  b4 <- W.encodeFloat32 (ros1Sensor_msgsBatteryState_charge value)
  b5 <- W.encodeFloat32 (ros1Sensor_msgsBatteryState_capacity value)
  b6 <- W.encodeFloat32 (ros1Sensor_msgsBatteryState_design_capacity value)
  b7 <- W.encodeFloat32 (ros1Sensor_msgsBatteryState_percentage value)
  b8 <- W.encodeUnsigned 1 (fromIntegral (ros1Sensor_msgsBatteryState_power_supply_status value))
  b9 <- W.encodeUnsigned 1 (fromIntegral (ros1Sensor_msgsBatteryState_power_supply_health value))
  b10 <- W.encodeUnsigned 1 (fromIntegral (ros1Sensor_msgsBatteryState_power_supply_technology value))
  b11 <- W.encodeBool (ros1Sensor_msgsBatteryState_present value)
  if length (ros1Sensor_msgsBatteryState_cell_voltage value) > 16 then Left 22 else Right ()
  prefix12 <- W.encodeCount 16 (length (ros1Sensor_msgsBatteryState_cell_voltage value))
  b12 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros1Sensor_msgsBatteryState_cell_voltage value)
  if length (ros1Sensor_msgsBatteryState_cell_temperature value) > 16 then Left 22 else Right ()
  prefix13 <- W.encodeCount 16 (length (ros1Sensor_msgsBatteryState_cell_temperature value))
  b13 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros1Sensor_msgsBatteryState_cell_temperature value)
  b14 <- W.encodeText 256 True (ros1Sensor_msgsBatteryState_location value)
  b15 <- W.encodeText 256 True (ros1Sensor_msgsBatteryState_serial_number value)
  W.bounded 832 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, prefix12, b12, prefix13, b13, b14, b15]
readRos1Sensor_msgsBatteryState :: W.Decoder Ros1Sensor_msgsBatteryState
readRos1Sensor_msgsBatteryState = do
  a0 <- readRos1Std_msgsHeader
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
  let value = Ros1Sensor_msgsBatteryState a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15
  case encodeRos1Sensor_msgsBatteryState value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Sensor_msgsBatteryState :: B.ByteString -> Either Word32 Ros1Sensor_msgsBatteryState
decodeRos1Sensor_msgsBatteryState = W.runDecoder 832 readRos1Sensor_msgsBatteryState
instance Canonical Ros1Sensor_msgsBatteryState where
  maximumBytes _ = 832
  encodeValue = encodeRos1Sensor_msgsBatteryState
  readValue = readRos1Sensor_msgsBatteryState
data Ros1Sensor_msgsImu = Ros1Sensor_msgsImu
  {
    -- | \@brief sensor_msgs/Imu.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsImu_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief sensor_msgs/Imu.orientation: geometry_msgs/Quaternion.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsImu_orientation :: Ros1Geometry_msgsQuaternion
  ,
    -- | \@brief sensor_msgs/Imu.orientation_covariance: float64; exactly 9 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsImu_orientation_covariance :: [Double]
  ,
    -- | \@brief sensor_msgs/Imu.angular_velocity: geometry_msgs/Vector3.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsImu_angular_velocity :: Ros1Geometry_msgsVector3
  ,
    -- | \@brief sensor_msgs/Imu.angular_velocity_covariance: float64; exactly 9 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsImu_angular_velocity_covariance :: [Double]
  ,
    -- | \@brief sensor_msgs/Imu.linear_acceleration: geometry_msgs/Vector3.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsImu_linear_acceleration :: Ros1Geometry_msgsVector3
  ,
    -- | \@brief sensor_msgs/Imu.linear_acceleration_covariance: float64; exactly 9 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsImu_linear_acceleration_covariance :: [Double]
  } deriving (Eq, Show)
defaultRos1Sensor_msgsImu :: Ros1Sensor_msgsImu
defaultRos1Sensor_msgsImu =
    Ros1Sensor_msgsImu
    (defaultRos1Std_msgsHeader)
    (defaultRos1Geometry_msgsQuaternion)
    (replicate 9 (0))
    (defaultRos1Geometry_msgsVector3)
    (replicate 9 (0))
    (defaultRos1Geometry_msgsVector3)
    (replicate 9 (0))
ros1Sensor_msgsImuCodecIdentity :: String
ros1Sensor_msgsImuCodecIdentity = "UWVMROS1_de9c3f5bb37e1dc20be73cb44f614a9ff8645c4cfbc305dc18425d8d9f130bc3"
encodeRos1Sensor_msgsImu :: Ros1Sensor_msgsImu -> Either Word32 B.ByteString
encodeRos1Sensor_msgsImu value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Sensor_msgsImu_header value)
  b1 <- encodeRos1Geometry_msgsQuaternion (ros1Sensor_msgsImu_orientation value)
  if length (ros1Sensor_msgsImu_orientation_covariance value) /= 9 then Left 22 else Right ()
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Sensor_msgsImu_orientation_covariance value)
  b3 <- encodeRos1Geometry_msgsVector3 (ros1Sensor_msgsImu_angular_velocity value)
  if length (ros1Sensor_msgsImu_angular_velocity_covariance value) /= 9 then Left 22 else Right ()
  b4 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Sensor_msgsImu_angular_velocity_covariance value)
  b5 <- encodeRos1Geometry_msgsVector3 (ros1Sensor_msgsImu_linear_acceleration value)
  if length (ros1Sensor_msgsImu_linear_acceleration_covariance value) /= 9 then Left 22 else Right ()
  b6 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Sensor_msgsImu_linear_acceleration_covariance value)
  W.bounded 440 [b0, b1, b2, b3, b4, b5, b6]
readRos1Sensor_msgsImu :: W.Decoder Ros1Sensor_msgsImu
readRos1Sensor_msgsImu = do
  a0 <- readRos1Std_msgsHeader
  a1 <- readRos1Geometry_msgsQuaternion
  a2 <- replicateM 9 (W.float64)
  a3 <- readRos1Geometry_msgsVector3
  a4 <- replicateM 9 (W.float64)
  a5 <- readRos1Geometry_msgsVector3
  a6 <- replicateM 9 (W.float64)
  let value = Ros1Sensor_msgsImu a0 a1 a2 a3 a4 a5 a6
  case encodeRos1Sensor_msgsImu value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Sensor_msgsImu :: B.ByteString -> Either Word32 Ros1Sensor_msgsImu
decodeRos1Sensor_msgsImu = W.runDecoder 440 readRos1Sensor_msgsImu
instance Canonical Ros1Sensor_msgsImu where
  maximumBytes _ = 440
  encodeValue = encodeRos1Sensor_msgsImu
  readValue = readRos1Sensor_msgsImu
data Ros1Sensor_msgsJointState = Ros1Sensor_msgsJointState
  {
    -- | \@brief sensor_msgs/JointState.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsJointState; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsJointState_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief sensor_msgs/JointState.name: string; 0..2 elements; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsJointState; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsJointState_name :: [T.Text]
  ,
    -- | \@brief sensor_msgs/JointState.position: float64; 0..2 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsJointState; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsJointState_position :: [Double]
  ,
    -- | \@brief sensor_msgs/JointState.velocity: float64; 0..2 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsJointState; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsJointState_velocity :: [Double]
  ,
    -- | \@brief sensor_msgs/JointState.effort: float64; 0..2 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsJointState; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsJointState_effort :: [Double]
  } deriving (Eq, Show)
defaultRos1Sensor_msgsJointState :: Ros1Sensor_msgsJointState
defaultRos1Sensor_msgsJointState = Ros1Sensor_msgsJointState (defaultRos1Std_msgsHeader) ([]) ([]) ([]) ([])
ros1Sensor_msgsJointStateCodecIdentity :: String
ros1Sensor_msgsJointStateCodecIdentity = "UWVMROS1_f27093d33cca1405ec35a9e525a95aa4002421a579cb78c6da3be3719f3cb66e"
encodeRos1Sensor_msgsJointState :: Ros1Sensor_msgsJointState -> Either Word32 B.ByteString
encodeRos1Sensor_msgsJointState value = do
  if (length (ros1Sensor_msgsJointState_name value) /= 0 &&
      length (ros1Sensor_msgsJointState_position value) /= 0 &&
      length (ros1Sensor_msgsJointState_name value) /= length (ros1Sensor_msgsJointState_position value)) ||
      (length (ros1Sensor_msgsJointState_name value) /= 0 &&
      length (ros1Sensor_msgsJointState_velocity value) /= 0 &&
      length (ros1Sensor_msgsJointState_name value) /= length (ros1Sensor_msgsJointState_velocity value)) ||
      (length (ros1Sensor_msgsJointState_name value) /= 0 &&
      length (ros1Sensor_msgsJointState_effort value) /= 0 &&
      length (ros1Sensor_msgsJointState_name value) /= length (ros1Sensor_msgsJointState_effort value)) ||
      (length (ros1Sensor_msgsJointState_position value) /= 0 &&
      length (ros1Sensor_msgsJointState_velocity value) /= 0 &&
      length (ros1Sensor_msgsJointState_position value) /= length (ros1Sensor_msgsJointState_velocity value)) ||
      (length (ros1Sensor_msgsJointState_position value) /= 0 &&
      length (ros1Sensor_msgsJointState_effort value) /= 0 &&
      length (ros1Sensor_msgsJointState_position value) /= length (ros1Sensor_msgsJointState_effort value)) ||
      (length (ros1Sensor_msgsJointState_velocity value) /= 0 &&
      length (ros1Sensor_msgsJointState_effort value) /= 0 &&
      length (ros1Sensor_msgsJointState_velocity value) /= length (ros1Sensor_msgsJointState_effort value)) then Left 22 else Right ()
  b0 <- encodeRos1Std_msgsHeader (ros1Sensor_msgsJointState_header value)
  if length (ros1Sensor_msgsJointState_name value) > 2 then Left 22 else Right ()
  prefix1 <- W.encodeCount 2 (length (ros1Sensor_msgsJointState_name value))
  b1 <- B.concat <$> mapM (\e -> W.encodeText 128 True (e)) (ros1Sensor_msgsJointState_name value)
  if length (ros1Sensor_msgsJointState_position value) > 2 then Left 22 else Right ()
  prefix2 <- W.encodeCount 2 (length (ros1Sensor_msgsJointState_position value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Sensor_msgsJointState_position value)
  if length (ros1Sensor_msgsJointState_velocity value) > 2 then Left 22 else Right ()
  prefix3 <- W.encodeCount 2 (length (ros1Sensor_msgsJointState_velocity value))
  b3 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Sensor_msgsJointState_velocity value)
  if length (ros1Sensor_msgsJointState_effort value) > 2 then Left 22 else Right ()
  prefix4 <- W.encodeCount 2 (length (ros1Sensor_msgsJointState_effort value))
  b4 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Sensor_msgsJointState_effort value)
  W.bounded 472 [b0, prefix1, b1, prefix2, b2, prefix3, b3, prefix4, b4]
readRos1Sensor_msgsJointState :: W.Decoder Ros1Sensor_msgsJointState
readRos1Sensor_msgsJointState = do
  a0 <- readRos1Std_msgsHeader
  count1 <- W.count 2
  a1 <- replicateM count1 (W.text 128 True)
  count2 <- W.count 2
  a2 <- replicateM count2 (W.float64)
  count3 <- W.count 2
  a3 <- replicateM count3 (W.float64)
  count4 <- W.count 2
  a4 <- replicateM count4 (W.float64)
  let value = Ros1Sensor_msgsJointState a0 a1 a2 a3 a4
  case encodeRos1Sensor_msgsJointState value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Sensor_msgsJointState :: B.ByteString -> Either Word32 Ros1Sensor_msgsJointState
decodeRos1Sensor_msgsJointState = W.runDecoder 472 readRos1Sensor_msgsJointState
instance Canonical Ros1Sensor_msgsJointState where
  maximumBytes _ = 472
  encodeValue = encodeRos1Sensor_msgsJointState
  readValue = readRos1Sensor_msgsJointState
data Ros1Sensor_msgsLaserScan = Ros1Sensor_msgsLaserScan
  {
    -- | \@brief sensor_msgs/LaserScan.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsLaserScan_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief sensor_msgs/LaserScan.angle_min: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsLaserScan_angle_min :: Float
  ,
    -- | \@brief sensor_msgs/LaserScan.angle_max: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsLaserScan_angle_max :: Float
  ,
    -- | \@brief sensor_msgs/LaserScan.angle_increment: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsLaserScan_angle_increment :: Float
  ,
    -- | \@brief sensor_msgs/LaserScan.time_increment: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsLaserScan_time_increment :: Float
  ,
    -- | \@brief sensor_msgs/LaserScan.scan_time: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsLaserScan_scan_time :: Float
  ,
    -- | \@brief sensor_msgs/LaserScan.range_min: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsLaserScan_range_min :: Float
  ,
    -- | \@brief sensor_msgs/LaserScan.range_max: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsLaserScan_range_max :: Float
  ,
    -- | \@brief sensor_msgs/LaserScan.ranges: float32; 0..1024 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsLaserScan_ranges :: [Float]
  ,
    -- | \@brief sensor_msgs/LaserScan.intensities: float32; 0..1024 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsLaserScan_intensities :: [Float]
  } deriving (Eq, Show)
defaultRos1Sensor_msgsLaserScan :: Ros1Sensor_msgsLaserScan
defaultRos1Sensor_msgsLaserScan = Ros1Sensor_msgsLaserScan (defaultRos1Std_msgsHeader) (0) (0) (0) (0) (0) (0) (0) ([]) ([])
ros1Sensor_msgsLaserScanCodecIdentity :: String
ros1Sensor_msgsLaserScanCodecIdentity = "UWVMROS1_f7aee00335bf7d165004957149192f58abe5a27b5c4884bdf8d1ae9be06b366b"
encodeRos1Sensor_msgsLaserScan :: Ros1Sensor_msgsLaserScan -> Either Word32 B.ByteString
encodeRos1Sensor_msgsLaserScan value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Sensor_msgsLaserScan_header value)
  b1 <- W.encodeFloat32 (ros1Sensor_msgsLaserScan_angle_min value)
  b2 <- W.encodeFloat32 (ros1Sensor_msgsLaserScan_angle_max value)
  b3 <- W.encodeFloat32 (ros1Sensor_msgsLaserScan_angle_increment value)
  b4 <- W.encodeFloat32 (ros1Sensor_msgsLaserScan_time_increment value)
  b5 <- W.encodeFloat32 (ros1Sensor_msgsLaserScan_scan_time value)
  b6 <- W.encodeFloat32 (ros1Sensor_msgsLaserScan_range_min value)
  b7 <- W.encodeFloat32 (ros1Sensor_msgsLaserScan_range_max value)
  if length (ros1Sensor_msgsLaserScan_ranges value) > 1024 then Left 22 else Right ()
  prefix8 <- W.encodeCount 1024 (length (ros1Sensor_msgsLaserScan_ranges value))
  b8 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros1Sensor_msgsLaserScan_ranges value)
  if length (ros1Sensor_msgsLaserScan_intensities value) > 1024 then Left 22 else Right ()
  prefix9 <- W.encodeCount 1024 (length (ros1Sensor_msgsLaserScan_intensities value))
  b9 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros1Sensor_msgsLaserScan_intensities value)
  W.bounded 8372 [b0, b1, b2, b3, b4, b5, b6, b7, prefix8, b8, prefix9, b9]
readRos1Sensor_msgsLaserScan :: W.Decoder Ros1Sensor_msgsLaserScan
readRos1Sensor_msgsLaserScan = do
  a0 <- readRos1Std_msgsHeader
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
  let value = Ros1Sensor_msgsLaserScan a0 a1 a2 a3 a4 a5 a6 a7 a8 a9
  case encodeRos1Sensor_msgsLaserScan value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Sensor_msgsLaserScan :: B.ByteString -> Either Word32 Ros1Sensor_msgsLaserScan
decodeRos1Sensor_msgsLaserScan = W.runDecoder 8372 readRos1Sensor_msgsLaserScan
instance Canonical Ros1Sensor_msgsLaserScan where
  maximumBytes _ = 8372
  encodeValue = encodeRos1Sensor_msgsLaserScan
  readValue = readRos1Sensor_msgsLaserScan
data Ros1Sensor_msgsMagneticField = Ros1Sensor_msgsMagneticField
  {
    -- | \@brief sensor_msgs/MagneticField.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsMagneticField; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsMagneticField_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief sensor_msgs/MagneticField.magnetic_field: geometry_msgs/Vector3.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsMagneticField; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsMagneticField_magnetic_field :: Ros1Geometry_msgsVector3
  ,
    -- | \@brief sensor_msgs/MagneticField.magnetic_field_covariance: float64; exactly 9 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsMagneticField; document/platform/robotis/en_US/language/haskell/API.md
    ros1Sensor_msgsMagneticField_magnetic_field_covariance :: [Double]
  } deriving (Eq, Show)
defaultRos1Sensor_msgsMagneticField :: Ros1Sensor_msgsMagneticField
defaultRos1Sensor_msgsMagneticField = Ros1Sensor_msgsMagneticField (defaultRos1Std_msgsHeader) (defaultRos1Geometry_msgsVector3) (replicate 9 (0))
ros1Sensor_msgsMagneticFieldCodecIdentity :: String
ros1Sensor_msgsMagneticFieldCodecIdentity = "UWVMROS1_1817b7ce8903797288ccf293373f81890c75af59d03d948339943a531ab754fe"
encodeRos1Sensor_msgsMagneticField :: Ros1Sensor_msgsMagneticField -> Either Word32 B.ByteString
encodeRos1Sensor_msgsMagneticField value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Sensor_msgsMagneticField_header value)
  b1 <- encodeRos1Geometry_msgsVector3 (ros1Sensor_msgsMagneticField_magnetic_field value)
  if length (ros1Sensor_msgsMagneticField_magnetic_field_covariance value) /= 9 then Left 22 else Right ()
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Sensor_msgsMagneticField_magnetic_field_covariance value)
  W.bounded 240 [b0, b1, b2]
readRos1Sensor_msgsMagneticField :: W.Decoder Ros1Sensor_msgsMagneticField
readRos1Sensor_msgsMagneticField = do
  a0 <- readRos1Std_msgsHeader
  a1 <- readRos1Geometry_msgsVector3
  a2 <- replicateM 9 (W.float64)
  let value = Ros1Sensor_msgsMagneticField a0 a1 a2
  case encodeRos1Sensor_msgsMagneticField value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Sensor_msgsMagneticField :: B.ByteString -> Either Word32 Ros1Sensor_msgsMagneticField
decodeRos1Sensor_msgsMagneticField = W.runDecoder 240 readRos1Sensor_msgsMagneticField
instance Canonical Ros1Sensor_msgsMagneticField where
  maximumBytes _ = 240
  encodeValue = encodeRos1Sensor_msgsMagneticField
  readValue = readRos1Sensor_msgsMagneticField
data Ros1Std_srvsSetBoolRequest = Ros1Std_srvsSetBoolRequest
  {
    -- | \@brief std_srvs/SetBoolRequest.data: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Std_srvsSetBoolRequest; document/platform/robotis/en_US/language/haskell/API.md
    ros1Std_srvsSetBoolRequest_data :: Bool
  } deriving (Eq, Show)
defaultRos1Std_srvsSetBoolRequest :: Ros1Std_srvsSetBoolRequest
defaultRos1Std_srvsSetBoolRequest = Ros1Std_srvsSetBoolRequest (False)
ros1Std_srvsSetBoolRequestCodecIdentity :: String
ros1Std_srvsSetBoolRequestCodecIdentity = "UWVMROS1_1621dbb16e2455a199cc871a0e784642a73bc57e76a4d524778163fab97f6aac"
encodeRos1Std_srvsSetBoolRequest :: Ros1Std_srvsSetBoolRequest -> Either Word32 B.ByteString
encodeRos1Std_srvsSetBoolRequest value = do
  b0 <- W.encodeBool (ros1Std_srvsSetBoolRequest_data value)
  W.bounded 1 [b0]
readRos1Std_srvsSetBoolRequest :: W.Decoder Ros1Std_srvsSetBoolRequest
readRos1Std_srvsSetBoolRequest = do
  a0 <- W.boolean
  let value = Ros1Std_srvsSetBoolRequest a0
  case encodeRos1Std_srvsSetBoolRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Std_srvsSetBoolRequest :: B.ByteString -> Either Word32 Ros1Std_srvsSetBoolRequest
decodeRos1Std_srvsSetBoolRequest = W.runDecoder 1 readRos1Std_srvsSetBoolRequest
instance Canonical Ros1Std_srvsSetBoolRequest where
  maximumBytes _ = 1
  encodeValue = encodeRos1Std_srvsSetBoolRequest
  readValue = readRos1Std_srvsSetBoolRequest
data Ros1Std_srvsSetBoolResponse = Ros1Std_srvsSetBoolResponse
  {
    -- | \@brief std_srvs/SetBoolResponse.success: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Std_srvsSetBoolResponse; document/platform/robotis/en_US/language/haskell/API.md
    ros1Std_srvsSetBoolResponse_success :: Bool
  ,
    -- | \@brief std_srvs/SetBoolResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Std_srvsSetBoolResponse; document/platform/robotis/en_US/language/haskell/API.md
    ros1Std_srvsSetBoolResponse_message :: T.Text
  } deriving (Eq, Show)
defaultRos1Std_srvsSetBoolResponse :: Ros1Std_srvsSetBoolResponse
defaultRos1Std_srvsSetBoolResponse = Ros1Std_srvsSetBoolResponse (False) (T.empty)
ros1Std_srvsSetBoolResponseCodecIdentity :: String
ros1Std_srvsSetBoolResponseCodecIdentity = "UWVMROS1_1e12b91618f540070e34e170e12db7659f8686cdf5fb8e1bf098b8d483522cd6"
encodeRos1Std_srvsSetBoolResponse :: Ros1Std_srvsSetBoolResponse -> Either Word32 B.ByteString
encodeRos1Std_srvsSetBoolResponse value = do
  b0 <- W.encodeBool (ros1Std_srvsSetBoolResponse_success value)
  b1 <- W.encodeText 256 True (ros1Std_srvsSetBoolResponse_message value)
  W.bounded 261 [b0, b1]
readRos1Std_srvsSetBoolResponse :: W.Decoder Ros1Std_srvsSetBoolResponse
readRos1Std_srvsSetBoolResponse = do
  a0 <- W.boolean
  a1 <- W.text 256 True
  let value = Ros1Std_srvsSetBoolResponse a0 a1
  case encodeRos1Std_srvsSetBoolResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Std_srvsSetBoolResponse :: B.ByteString -> Either Word32 Ros1Std_srvsSetBoolResponse
decodeRos1Std_srvsSetBoolResponse = W.runDecoder 261 readRos1Std_srvsSetBoolResponse
instance Canonical Ros1Std_srvsSetBoolResponse where
  maximumBytes _ = 261
  encodeValue = encodeRos1Std_srvsSetBoolResponse
  readValue = readRos1Std_srvsSetBoolResponse
data Ros1Std_srvsTriggerRequest = Ros1Std_srvsTriggerRequest deriving (Eq, Show)
defaultRos1Std_srvsTriggerRequest :: Ros1Std_srvsTriggerRequest
defaultRos1Std_srvsTriggerRequest = Ros1Std_srvsTriggerRequest 
ros1Std_srvsTriggerRequestCodecIdentity :: String
ros1Std_srvsTriggerRequestCodecIdentity = "UWVMROS1_d4e98dca9dc9a031d6b0f51937613f4f29c36156f0f05475339149794d47db1e"
encodeRos1Std_srvsTriggerRequest :: Ros1Std_srvsTriggerRequest -> Either Word32 B.ByteString
encodeRos1Std_srvsTriggerRequest value = do
  W.bounded 0 []
readRos1Std_srvsTriggerRequest :: W.Decoder Ros1Std_srvsTriggerRequest
readRos1Std_srvsTriggerRequest = do
  let value = Ros1Std_srvsTriggerRequest 
  case encodeRos1Std_srvsTriggerRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Std_srvsTriggerRequest :: B.ByteString -> Either Word32 Ros1Std_srvsTriggerRequest
decodeRos1Std_srvsTriggerRequest = W.runDecoder 0 readRos1Std_srvsTriggerRequest
instance Canonical Ros1Std_srvsTriggerRequest where
  maximumBytes _ = 0
  encodeValue = encodeRos1Std_srvsTriggerRequest
  readValue = readRos1Std_srvsTriggerRequest
data Ros1Std_srvsTriggerResponse = Ros1Std_srvsTriggerResponse
  {
    -- | \@brief std_srvs/TriggerResponse.success: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Std_srvsTriggerResponse; document/platform/robotis/en_US/language/haskell/API.md
    ros1Std_srvsTriggerResponse_success :: Bool
  ,
    -- | \@brief std_srvs/TriggerResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Std_srvsTriggerResponse; document/platform/robotis/en_US/language/haskell/API.md
    ros1Std_srvsTriggerResponse_message :: T.Text
  } deriving (Eq, Show)
defaultRos1Std_srvsTriggerResponse :: Ros1Std_srvsTriggerResponse
defaultRos1Std_srvsTriggerResponse = Ros1Std_srvsTriggerResponse (False) (T.empty)
ros1Std_srvsTriggerResponseCodecIdentity :: String
ros1Std_srvsTriggerResponseCodecIdentity = "UWVMROS1_e625281ddea64aff38d8647e2673b418b77474cae0501500b280cabb3d247d1d"
encodeRos1Std_srvsTriggerResponse :: Ros1Std_srvsTriggerResponse -> Either Word32 B.ByteString
encodeRos1Std_srvsTriggerResponse value = do
  b0 <- W.encodeBool (ros1Std_srvsTriggerResponse_success value)
  b1 <- W.encodeText 256 True (ros1Std_srvsTriggerResponse_message value)
  W.bounded 261 [b0, b1]
readRos1Std_srvsTriggerResponse :: W.Decoder Ros1Std_srvsTriggerResponse
readRos1Std_srvsTriggerResponse = do
  a0 <- W.boolean
  a1 <- W.text 256 True
  let value = Ros1Std_srvsTriggerResponse a0 a1
  case encodeRos1Std_srvsTriggerResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Std_srvsTriggerResponse :: B.ByteString -> Either Word32 Ros1Std_srvsTriggerResponse
decodeRos1Std_srvsTriggerResponse = W.runDecoder 261 readRos1Std_srvsTriggerResponse
instance Canonical Ros1Std_srvsTriggerResponse where
  maximumBytes _ = 261
  encodeValue = encodeRos1Std_srvsTriggerResponse
  readValue = readRos1Std_srvsTriggerResponse
data Ros1Turtlebot3_exampleTurtlebot3Goal = Ros1Turtlebot3_exampleTurtlebot3Goal
  {
    -- | \@brief turtlebot3_example/Turtlebot3Goal.goal: geometry_msgs/Vector3.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Turtlebot3_exampleTurtlebot3Goal; document/platform/robotis/en_US/language/haskell/API.md
    ros1Turtlebot3_exampleTurtlebot3Goal_goal :: Ros1Geometry_msgsVector3
  } deriving (Eq, Show)
defaultRos1Turtlebot3_exampleTurtlebot3Goal :: Ros1Turtlebot3_exampleTurtlebot3Goal
defaultRos1Turtlebot3_exampleTurtlebot3Goal = Ros1Turtlebot3_exampleTurtlebot3Goal (defaultRos1Geometry_msgsVector3)
ros1Turtlebot3_exampleTurtlebot3GoalCodecIdentity :: String
ros1Turtlebot3_exampleTurtlebot3GoalCodecIdentity = "UWVMROS1_f6eb642301e239005c1790cfd5b9ff00388d98d27a17cbb0edb103b6ac7bfad5"
encodeRos1Turtlebot3_exampleTurtlebot3Goal :: Ros1Turtlebot3_exampleTurtlebot3Goal -> Either Word32 B.ByteString
encodeRos1Turtlebot3_exampleTurtlebot3Goal value = do
  b0 <- encodeRos1Geometry_msgsVector3 (ros1Turtlebot3_exampleTurtlebot3Goal_goal value)
  W.bounded 24 [b0]
readRos1Turtlebot3_exampleTurtlebot3Goal :: W.Decoder Ros1Turtlebot3_exampleTurtlebot3Goal
readRos1Turtlebot3_exampleTurtlebot3Goal = do
  a0 <- readRos1Geometry_msgsVector3
  let value = Ros1Turtlebot3_exampleTurtlebot3Goal a0
  case encodeRos1Turtlebot3_exampleTurtlebot3Goal value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Turtlebot3_exampleTurtlebot3Goal :: B.ByteString -> Either Word32 Ros1Turtlebot3_exampleTurtlebot3Goal
decodeRos1Turtlebot3_exampleTurtlebot3Goal = W.runDecoder 24 readRos1Turtlebot3_exampleTurtlebot3Goal
instance Canonical Ros1Turtlebot3_exampleTurtlebot3Goal where
  maximumBytes _ = 24
  encodeValue = encodeRos1Turtlebot3_exampleTurtlebot3Goal
  readValue = readRos1Turtlebot3_exampleTurtlebot3Goal
data Ros1Turtlebot3_exampleTurtlebot3Result = Ros1Turtlebot3_exampleTurtlebot3Result
  {
    -- | \@brief turtlebot3_example/Turtlebot3Result.result: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Turtlebot3_exampleTurtlebot3Result; document/platform/robotis/en_US/language/haskell/API.md
    ros1Turtlebot3_exampleTurtlebot3Result_result :: T.Text
  } deriving (Eq, Show)
defaultRos1Turtlebot3_exampleTurtlebot3Result :: Ros1Turtlebot3_exampleTurtlebot3Result
defaultRos1Turtlebot3_exampleTurtlebot3Result = Ros1Turtlebot3_exampleTurtlebot3Result (T.empty)
ros1Turtlebot3_exampleTurtlebot3ResultCodecIdentity :: String
ros1Turtlebot3_exampleTurtlebot3ResultCodecIdentity = "UWVMROS1_c749a56ed9a0c74d1b167f69cc9b4435f9549d49144ef2951a4c3db501bad528"
encodeRos1Turtlebot3_exampleTurtlebot3Result :: Ros1Turtlebot3_exampleTurtlebot3Result -> Either Word32 B.ByteString
encodeRos1Turtlebot3_exampleTurtlebot3Result value = do
  b0 <- W.encodeText 256 True (ros1Turtlebot3_exampleTurtlebot3Result_result value)
  W.bounded 260 [b0]
readRos1Turtlebot3_exampleTurtlebot3Result :: W.Decoder Ros1Turtlebot3_exampleTurtlebot3Result
readRos1Turtlebot3_exampleTurtlebot3Result = do
  a0 <- W.text 256 True
  let value = Ros1Turtlebot3_exampleTurtlebot3Result a0
  case encodeRos1Turtlebot3_exampleTurtlebot3Result value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Turtlebot3_exampleTurtlebot3Result :: B.ByteString -> Either Word32 Ros1Turtlebot3_exampleTurtlebot3Result
decodeRos1Turtlebot3_exampleTurtlebot3Result = W.runDecoder 260 readRos1Turtlebot3_exampleTurtlebot3Result
instance Canonical Ros1Turtlebot3_exampleTurtlebot3Result where
  maximumBytes _ = 260
  encodeValue = encodeRos1Turtlebot3_exampleTurtlebot3Result
  readValue = readRos1Turtlebot3_exampleTurtlebot3Result
data Ros1Turtlebot3_exampleTurtlebot3Feedback = Ros1Turtlebot3_exampleTurtlebot3Feedback
  {
    -- | \@brief turtlebot3_example/Turtlebot3Feedback.state: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Turtlebot3_exampleTurtlebot3Feedback; document/platform/robotis/en_US/language/haskell/API.md
    ros1Turtlebot3_exampleTurtlebot3Feedback_state :: T.Text
  } deriving (Eq, Show)
defaultRos1Turtlebot3_exampleTurtlebot3Feedback :: Ros1Turtlebot3_exampleTurtlebot3Feedback
defaultRos1Turtlebot3_exampleTurtlebot3Feedback = Ros1Turtlebot3_exampleTurtlebot3Feedback (T.empty)
ros1Turtlebot3_exampleTurtlebot3FeedbackCodecIdentity :: String
ros1Turtlebot3_exampleTurtlebot3FeedbackCodecIdentity = "UWVMROS1_077b5593a1e4c23c89c4d6a87dc1d67d8fa1bf04fa3aa440f54c8eda60b688f8"
encodeRos1Turtlebot3_exampleTurtlebot3Feedback :: Ros1Turtlebot3_exampleTurtlebot3Feedback -> Either Word32 B.ByteString
encodeRos1Turtlebot3_exampleTurtlebot3Feedback value = do
  b0 <- W.encodeText 256 True (ros1Turtlebot3_exampleTurtlebot3Feedback_state value)
  W.bounded 260 [b0]
readRos1Turtlebot3_exampleTurtlebot3Feedback :: W.Decoder Ros1Turtlebot3_exampleTurtlebot3Feedback
readRos1Turtlebot3_exampleTurtlebot3Feedback = do
  a0 <- W.text 256 True
  let value = Ros1Turtlebot3_exampleTurtlebot3Feedback a0
  case encodeRos1Turtlebot3_exampleTurtlebot3Feedback value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Turtlebot3_exampleTurtlebot3Feedback :: B.ByteString -> Either Word32 Ros1Turtlebot3_exampleTurtlebot3Feedback
decodeRos1Turtlebot3_exampleTurtlebot3Feedback = W.runDecoder 260 readRos1Turtlebot3_exampleTurtlebot3Feedback
instance Canonical Ros1Turtlebot3_exampleTurtlebot3Feedback where
  maximumBytes _ = 260
  encodeValue = encodeRos1Turtlebot3_exampleTurtlebot3Feedback
  readValue = readRos1Turtlebot3_exampleTurtlebot3Feedback
data Ros1Turtlebot3_msgsSensorState = Ros1Turtlebot3_msgsSensorState
  {
    -- | \@brief turtlebot3_msgs/SensorState.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/haskell/API.md
    ros1Turtlebot3_msgsSensorState_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief turtlebot3_msgs/SensorState.bumper: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/haskell/API.md
    ros1Turtlebot3_msgsSensorState_bumper :: Word8
  ,
    -- | \@brief turtlebot3_msgs/SensorState.cliff: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/haskell/API.md
    ros1Turtlebot3_msgsSensorState_cliff :: Float
  ,
    -- | \@brief turtlebot3_msgs/SensorState.sonar: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/haskell/API.md
    ros1Turtlebot3_msgsSensorState_sonar :: Float
  ,
    -- | \@brief turtlebot3_msgs/SensorState.illumination: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/haskell/API.md
    ros1Turtlebot3_msgsSensorState_illumination :: Float
  ,
    -- | \@brief turtlebot3_msgs/SensorState.led: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/haskell/API.md
    ros1Turtlebot3_msgsSensorState_led :: Word8
  ,
    -- | \@brief turtlebot3_msgs/SensorState.button: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/haskell/API.md
    ros1Turtlebot3_msgsSensorState_button :: Word8
  ,
    -- | \@brief turtlebot3_msgs/SensorState.torque: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/haskell/API.md
    ros1Turtlebot3_msgsSensorState_torque :: Bool
  ,
    -- | \@brief turtlebot3_msgs/SensorState.left_encoder: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/haskell/API.md
    ros1Turtlebot3_msgsSensorState_left_encoder :: Int32
  ,
    -- | \@brief turtlebot3_msgs/SensorState.right_encoder: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/haskell/API.md
    ros1Turtlebot3_msgsSensorState_right_encoder :: Int32
  ,
    -- | \@brief turtlebot3_msgs/SensorState.battery: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/haskell/API.md
    ros1Turtlebot3_msgsSensorState_battery :: Float
  } deriving (Eq, Show)
defaultRos1Turtlebot3_msgsSensorState :: Ros1Turtlebot3_msgsSensorState
defaultRos1Turtlebot3_msgsSensorState = Ros1Turtlebot3_msgsSensorState (defaultRos1Std_msgsHeader) (0) (0) (0) (0) (0) (0) (False) (0) (0) (0)
ros1Turtlebot3_msgsSensorStateCodecIdentity :: String
ros1Turtlebot3_msgsSensorStateCodecIdentity = "UWVMROS1_0ef7dd1a4b965ae027b081a6b34f111731a3adfbabcc6fd547d4da7378fcb81f"
ros1Turtlebot3_msgsSensorState_BUMPER_FORWARD :: Word8
ros1Turtlebot3_msgsSensorState_BUMPER_FORWARD = 1
ros1Turtlebot3_msgsSensorState_BUMPER_BACKWARD :: Word8
ros1Turtlebot3_msgsSensorState_BUMPER_BACKWARD = 2
ros1Turtlebot3_msgsSensorState_CLIFF :: Word8
ros1Turtlebot3_msgsSensorState_CLIFF = 1
ros1Turtlebot3_msgsSensorState_SONAR :: Word8
ros1Turtlebot3_msgsSensorState_SONAR = 1
ros1Turtlebot3_msgsSensorState_ILLUMINATION :: Word8
ros1Turtlebot3_msgsSensorState_ILLUMINATION = 1
ros1Turtlebot3_msgsSensorState_BUTTON0 :: Word8
ros1Turtlebot3_msgsSensorState_BUTTON0 = 1
ros1Turtlebot3_msgsSensorState_BUTTON1 :: Word8
ros1Turtlebot3_msgsSensorState_BUTTON1 = 2
ros1Turtlebot3_msgsSensorState_ERROR_LEFT_MOTOR :: Word8
ros1Turtlebot3_msgsSensorState_ERROR_LEFT_MOTOR = 1
ros1Turtlebot3_msgsSensorState_ERROR_RIGHT_MOTOR :: Word8
ros1Turtlebot3_msgsSensorState_ERROR_RIGHT_MOTOR = 2
ros1Turtlebot3_msgsSensorState_TORQUE_ON :: Word8
ros1Turtlebot3_msgsSensorState_TORQUE_ON = 1
ros1Turtlebot3_msgsSensorState_TORQUE_OFF :: Word8
ros1Turtlebot3_msgsSensorState_TORQUE_OFF = 2
encodeRos1Turtlebot3_msgsSensorState :: Ros1Turtlebot3_msgsSensorState -> Either Word32 B.ByteString
encodeRos1Turtlebot3_msgsSensorState value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Turtlebot3_msgsSensorState_header value)
  b1 <- W.encodeUnsigned 1 (fromIntegral (ros1Turtlebot3_msgsSensorState_bumper value))
  b2 <- W.encodeFloat32 (ros1Turtlebot3_msgsSensorState_cliff value)
  b3 <- W.encodeFloat32 (ros1Turtlebot3_msgsSensorState_sonar value)
  b4 <- W.encodeFloat32 (ros1Turtlebot3_msgsSensorState_illumination value)
  b5 <- W.encodeUnsigned 1 (fromIntegral (ros1Turtlebot3_msgsSensorState_led value))
  b6 <- W.encodeUnsigned 1 (fromIntegral (ros1Turtlebot3_msgsSensorState_button value))
  b7 <- W.encodeBool (ros1Turtlebot3_msgsSensorState_torque value)
  b8 <- W.encodeSigned 4 (fromIntegral (ros1Turtlebot3_msgsSensorState_left_encoder value))
  b9 <- W.encodeSigned 4 (fromIntegral (ros1Turtlebot3_msgsSensorState_right_encoder value))
  b10 <- W.encodeFloat32 (ros1Turtlebot3_msgsSensorState_battery value)
  W.bounded 172 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10]
readRos1Turtlebot3_msgsSensorState :: W.Decoder Ros1Turtlebot3_msgsSensorState
readRos1Turtlebot3_msgsSensorState = do
  a0 <- readRos1Std_msgsHeader
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
  let value = Ros1Turtlebot3_msgsSensorState a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10
  case encodeRos1Turtlebot3_msgsSensorState value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Turtlebot3_msgsSensorState :: B.ByteString -> Either Word32 Ros1Turtlebot3_msgsSensorState
decodeRos1Turtlebot3_msgsSensorState = W.runDecoder 172 readRos1Turtlebot3_msgsSensorState
instance Canonical Ros1Turtlebot3_msgsSensorState where
  maximumBytes _ = 172
  encodeValue = encodeRos1Turtlebot3_msgsSensorState
  readValue = readRos1Turtlebot3_msgsSensorState
data Ros1Turtlebot3_msgsSound = Ros1Turtlebot3_msgsSound
  {
    -- | \@brief turtlebot3_msgs/Sound.value: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Turtlebot3_msgsSound; document/platform/robotis/en_US/language/haskell/API.md
    ros1Turtlebot3_msgsSound_value :: Word8
  } deriving (Eq, Show)
defaultRos1Turtlebot3_msgsSound :: Ros1Turtlebot3_msgsSound
defaultRos1Turtlebot3_msgsSound = Ros1Turtlebot3_msgsSound (0)
ros1Turtlebot3_msgsSoundCodecIdentity :: String
ros1Turtlebot3_msgsSoundCodecIdentity = "UWVMROS1_0e5af3d5a2acbfff5bf5ba94c1520490fe281e70aff02cfb6ad31acd89e7536a"
ros1Turtlebot3_msgsSound_OFF :: Word8
ros1Turtlebot3_msgsSound_OFF = 0
ros1Turtlebot3_msgsSound_ON :: Word8
ros1Turtlebot3_msgsSound_ON = 1
ros1Turtlebot3_msgsSound_LOW_BATTERY :: Word8
ros1Turtlebot3_msgsSound_LOW_BATTERY = 2
ros1Turtlebot3_msgsSound_ERROR :: Word8
ros1Turtlebot3_msgsSound_ERROR = 3
ros1Turtlebot3_msgsSound_BUTTON1 :: Word8
ros1Turtlebot3_msgsSound_BUTTON1 = 4
ros1Turtlebot3_msgsSound_BUTTON2 :: Word8
ros1Turtlebot3_msgsSound_BUTTON2 = 5
encodeRos1Turtlebot3_msgsSound :: Ros1Turtlebot3_msgsSound -> Either Word32 B.ByteString
encodeRos1Turtlebot3_msgsSound value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros1Turtlebot3_msgsSound_value value))
  W.bounded 1 [b0]
readRos1Turtlebot3_msgsSound :: W.Decoder Ros1Turtlebot3_msgsSound
readRos1Turtlebot3_msgsSound = do
  a0 <- fromIntegral <$> W.unsigned 1
  let value = Ros1Turtlebot3_msgsSound a0
  case encodeRos1Turtlebot3_msgsSound value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Turtlebot3_msgsSound :: B.ByteString -> Either Word32 Ros1Turtlebot3_msgsSound
decodeRos1Turtlebot3_msgsSound = W.runDecoder 1 readRos1Turtlebot3_msgsSound
instance Canonical Ros1Turtlebot3_msgsSound where
  maximumBytes _ = 1
  encodeValue = encodeRos1Turtlebot3_msgsSound
  readValue = readRos1Turtlebot3_msgsSound
data Ros1Turtlebot3_msgsVersionInfo = Ros1Turtlebot3_msgsVersionInfo
  {
    -- | \@brief turtlebot3_msgs/VersionInfo.hardware: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Turtlebot3_msgsVersionInfo; document/platform/robotis/en_US/language/haskell/API.md
    ros1Turtlebot3_msgsVersionInfo_hardware :: T.Text
  ,
    -- | \@brief turtlebot3_msgs/VersionInfo.firmware: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Turtlebot3_msgsVersionInfo; document/platform/robotis/en_US/language/haskell/API.md
    ros1Turtlebot3_msgsVersionInfo_firmware :: T.Text
  ,
    -- | \@brief turtlebot3_msgs/VersionInfo.software: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Turtlebot3_msgsVersionInfo; document/platform/robotis/en_US/language/haskell/API.md
    ros1Turtlebot3_msgsVersionInfo_software :: T.Text
  } deriving (Eq, Show)
defaultRos1Turtlebot3_msgsVersionInfo :: Ros1Turtlebot3_msgsVersionInfo
defaultRos1Turtlebot3_msgsVersionInfo = Ros1Turtlebot3_msgsVersionInfo (T.empty) (T.empty) (T.empty)
ros1Turtlebot3_msgsVersionInfoCodecIdentity :: String
ros1Turtlebot3_msgsVersionInfoCodecIdentity = "UWVMROS1_8f41d37cf43fda2e3649d85fcca83ad735dc5a8122f7829a98b18659bcad8b3a"
encodeRos1Turtlebot3_msgsVersionInfo :: Ros1Turtlebot3_msgsVersionInfo -> Either Word32 B.ByteString
encodeRos1Turtlebot3_msgsVersionInfo value = do
  b0 <- W.encodeText 256 True (ros1Turtlebot3_msgsVersionInfo_hardware value)
  b1 <- W.encodeText 256 True (ros1Turtlebot3_msgsVersionInfo_firmware value)
  b2 <- W.encodeText 256 True (ros1Turtlebot3_msgsVersionInfo_software value)
  W.bounded 780 [b0, b1, b2]
readRos1Turtlebot3_msgsVersionInfo :: W.Decoder Ros1Turtlebot3_msgsVersionInfo
readRos1Turtlebot3_msgsVersionInfo = do
  a0 <- W.text 256 True
  a1 <- W.text 256 True
  a2 <- W.text 256 True
  let value = Ros1Turtlebot3_msgsVersionInfo a0 a1 a2
  case encodeRos1Turtlebot3_msgsVersionInfo value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Turtlebot3_msgsVersionInfo :: B.ByteString -> Either Word32 Ros1Turtlebot3_msgsVersionInfo
decodeRos1Turtlebot3_msgsVersionInfo = W.runDecoder 780 readRos1Turtlebot3_msgsVersionInfo
instance Canonical Ros1Turtlebot3_msgsVersionInfo where
  maximumBytes _ = 780
  encodeValue = encodeRos1Turtlebot3_msgsVersionInfo
  readValue = readRos1Turtlebot3_msgsVersionInfo
