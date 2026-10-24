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
data Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3
  {
    -- | \@brief geometry_msgs/Vector3.x: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsVector3; document/platform/pal/en_US/language/haskell/API.md
    ros1Geometry_msgsVector3_x :: Double
  ,
    -- | \@brief geometry_msgs/Vector3.y: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsVector3; document/platform/pal/en_US/language/haskell/API.md
    ros1Geometry_msgsVector3_y :: Double
  ,
    -- | \@brief geometry_msgs/Vector3.z: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsVector3; document/platform/pal/en_US/language/haskell/API.md
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
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsAccel; document/platform/pal/en_US/language/haskell/API.md
    ros1Geometry_msgsAccel_linear :: Ros1Geometry_msgsVector3
  ,
    -- | \@brief geometry_msgs/Accel.angular: geometry_msgs/Vector3.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsAccel; document/platform/pal/en_US/language/haskell/API.md
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
data Ros1Geometry_msgsPoint = Ros1Geometry_msgsPoint
  {
    -- | \@brief geometry_msgs/Point.x: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPoint; document/platform/pal/en_US/language/haskell/API.md
    ros1Geometry_msgsPoint_x :: Double
  ,
    -- | \@brief geometry_msgs/Point.y: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPoint; document/platform/pal/en_US/language/haskell/API.md
    ros1Geometry_msgsPoint_y :: Double
  ,
    -- | \@brief geometry_msgs/Point.z: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPoint; document/platform/pal/en_US/language/haskell/API.md
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
data Ros1Geometry_msgsPoint32 = Ros1Geometry_msgsPoint32
  {
    -- | \@brief geometry_msgs/Point32.x: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPoint32; document/platform/pal/en_US/language/haskell/API.md
    ros1Geometry_msgsPoint32_x :: Float
  ,
    -- | \@brief geometry_msgs/Point32.y: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPoint32; document/platform/pal/en_US/language/haskell/API.md
    ros1Geometry_msgsPoint32_y :: Float
  ,
    -- | \@brief geometry_msgs/Point32.z: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPoint32; document/platform/pal/en_US/language/haskell/API.md
    ros1Geometry_msgsPoint32_z :: Float
  } deriving (Eq, Show)
defaultRos1Geometry_msgsPoint32 :: Ros1Geometry_msgsPoint32
defaultRos1Geometry_msgsPoint32 = Ros1Geometry_msgsPoint32 (0) (0) (0)
ros1Geometry_msgsPoint32CodecIdentity :: String
ros1Geometry_msgsPoint32CodecIdentity = "UWVMROS1_ac11d311f1db295f3e53b300246dbb111148097fe50787e812cd1bf627ecc59d"
encodeRos1Geometry_msgsPoint32 :: Ros1Geometry_msgsPoint32 -> Either Word32 B.ByteString
encodeRos1Geometry_msgsPoint32 value = do
  b0 <- W.encodeFloat32 (ros1Geometry_msgsPoint32_x value)
  b1 <- W.encodeFloat32 (ros1Geometry_msgsPoint32_y value)
  b2 <- W.encodeFloat32 (ros1Geometry_msgsPoint32_z value)
  W.bounded 12 [b0, b1, b2]
readRos1Geometry_msgsPoint32 :: W.Decoder Ros1Geometry_msgsPoint32
readRos1Geometry_msgsPoint32 = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  let value = Ros1Geometry_msgsPoint32 a0 a1 a2
  case encodeRos1Geometry_msgsPoint32 value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Geometry_msgsPoint32 :: B.ByteString -> Either Word32 Ros1Geometry_msgsPoint32
decodeRos1Geometry_msgsPoint32 = W.runDecoder 12 readRos1Geometry_msgsPoint32
instance Canonical Ros1Geometry_msgsPoint32 where
  maximumBytes _ = 12
  encodeValue = encodeRos1Geometry_msgsPoint32
  readValue = readRos1Geometry_msgsPoint32
data Ros1Time = Ros1Time
  {
    -- | \@brief time.sec: uint32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Time; document/platform/pal/en_US/language/haskell/API.md
    ros1Time_sec :: Word32
  ,
    -- | \@brief time.nsec: uint32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Time; document/platform/pal/en_US/language/haskell/API.md
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
    -- \@see Ros1Std_msgsHeader; document/platform/pal/en_US/language/haskell/API.md
    ros1Std_msgsHeader_seq :: Word32
  ,
    -- | \@brief std_msgs/Header.stamp: time.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Std_msgsHeader; document/platform/pal/en_US/language/haskell/API.md
    ros1Std_msgsHeader_stamp :: Ros1Time
  ,
    -- | \@brief std_msgs/Header.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Std_msgsHeader; document/platform/pal/en_US/language/haskell/API.md
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
data Ros1Geometry_msgsPointStamped = Ros1Geometry_msgsPointStamped
  {
    -- | \@brief geometry_msgs/PointStamped.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPointStamped; document/platform/pal/en_US/language/haskell/API.md
    ros1Geometry_msgsPointStamped_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief geometry_msgs/PointStamped.point: geometry_msgs/Point.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPointStamped; document/platform/pal/en_US/language/haskell/API.md
    ros1Geometry_msgsPointStamped_point :: Ros1Geometry_msgsPoint
  } deriving (Eq, Show)
defaultRos1Geometry_msgsPointStamped :: Ros1Geometry_msgsPointStamped
defaultRos1Geometry_msgsPointStamped = Ros1Geometry_msgsPointStamped (defaultRos1Std_msgsHeader) (defaultRos1Geometry_msgsPoint)
ros1Geometry_msgsPointStampedCodecIdentity :: String
ros1Geometry_msgsPointStampedCodecIdentity = "UWVMROS1_4292765fd525ff25fcdf66cba24b1680e01d7a3f036f66a1d5bc21f5db935e90"
encodeRos1Geometry_msgsPointStamped :: Ros1Geometry_msgsPointStamped -> Either Word32 B.ByteString
encodeRos1Geometry_msgsPointStamped value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Geometry_msgsPointStamped_header value)
  b1 <- encodeRos1Geometry_msgsPoint (ros1Geometry_msgsPointStamped_point value)
  W.bounded 168 [b0, b1]
readRos1Geometry_msgsPointStamped :: W.Decoder Ros1Geometry_msgsPointStamped
readRos1Geometry_msgsPointStamped = do
  a0 <- readRos1Std_msgsHeader
  a1 <- readRos1Geometry_msgsPoint
  let value = Ros1Geometry_msgsPointStamped a0 a1
  case encodeRos1Geometry_msgsPointStamped value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Geometry_msgsPointStamped :: B.ByteString -> Either Word32 Ros1Geometry_msgsPointStamped
decodeRos1Geometry_msgsPointStamped = W.runDecoder 168 readRos1Geometry_msgsPointStamped
instance Canonical Ros1Geometry_msgsPointStamped where
  maximumBytes _ = 168
  encodeValue = encodeRos1Geometry_msgsPointStamped
  readValue = readRos1Geometry_msgsPointStamped
data Ros1Geometry_msgsQuaternion = Ros1Geometry_msgsQuaternion
  {
    -- | \@brief geometry_msgs/Quaternion.x: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsQuaternion; document/platform/pal/en_US/language/haskell/API.md
    ros1Geometry_msgsQuaternion_x :: Double
  ,
    -- | \@brief geometry_msgs/Quaternion.y: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsQuaternion; document/platform/pal/en_US/language/haskell/API.md
    ros1Geometry_msgsQuaternion_y :: Double
  ,
    -- | \@brief geometry_msgs/Quaternion.z: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsQuaternion; document/platform/pal/en_US/language/haskell/API.md
    ros1Geometry_msgsQuaternion_z :: Double
  ,
    -- | \@brief geometry_msgs/Quaternion.w: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsQuaternion; document/platform/pal/en_US/language/haskell/API.md
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
    -- \@see Ros1Geometry_msgsPose; document/platform/pal/en_US/language/haskell/API.md
    ros1Geometry_msgsPose_position :: Ros1Geometry_msgsPoint
  ,
    -- | \@brief geometry_msgs/Pose.orientation: geometry_msgs/Quaternion.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPose; document/platform/pal/en_US/language/haskell/API.md
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
data Ros1Geometry_msgsPose2D = Ros1Geometry_msgsPose2D
  {
    -- | \@brief geometry_msgs/Pose2D.x: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPose2D; document/platform/pal/en_US/language/haskell/API.md
    ros1Geometry_msgsPose2D_x :: Double
  ,
    -- | \@brief geometry_msgs/Pose2D.y: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPose2D; document/platform/pal/en_US/language/haskell/API.md
    ros1Geometry_msgsPose2D_y :: Double
  ,
    -- | \@brief geometry_msgs/Pose2D.theta: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPose2D; document/platform/pal/en_US/language/haskell/API.md
    ros1Geometry_msgsPose2D_theta :: Double
  } deriving (Eq, Show)
defaultRos1Geometry_msgsPose2D :: Ros1Geometry_msgsPose2D
defaultRos1Geometry_msgsPose2D = Ros1Geometry_msgsPose2D (0) (0) (0)
ros1Geometry_msgsPose2DCodecIdentity :: String
ros1Geometry_msgsPose2DCodecIdentity = "UWVMROS1_272e907f7422675f272752642d2421c870d46b48b101f1fc6dec5e9ea70b8b0f"
encodeRos1Geometry_msgsPose2D :: Ros1Geometry_msgsPose2D -> Either Word32 B.ByteString
encodeRos1Geometry_msgsPose2D value = do
  b0 <- W.encodeFloat64 (ros1Geometry_msgsPose2D_x value)
  b1 <- W.encodeFloat64 (ros1Geometry_msgsPose2D_y value)
  b2 <- W.encodeFloat64 (ros1Geometry_msgsPose2D_theta value)
  W.bounded 24 [b0, b1, b2]
readRos1Geometry_msgsPose2D :: W.Decoder Ros1Geometry_msgsPose2D
readRos1Geometry_msgsPose2D = do
  a0 <- W.float64
  a1 <- W.float64
  a2 <- W.float64
  let value = Ros1Geometry_msgsPose2D a0 a1 a2
  case encodeRos1Geometry_msgsPose2D value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Geometry_msgsPose2D :: B.ByteString -> Either Word32 Ros1Geometry_msgsPose2D
decodeRos1Geometry_msgsPose2D = W.runDecoder 24 readRos1Geometry_msgsPose2D
instance Canonical Ros1Geometry_msgsPose2D where
  maximumBytes _ = 24
  encodeValue = encodeRos1Geometry_msgsPose2D
  readValue = readRos1Geometry_msgsPose2D
data Ros1Geometry_msgsPoseArray = Ros1Geometry_msgsPoseArray
  {
    -- | \@brief geometry_msgs/PoseArray.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPoseArray; document/platform/pal/en_US/language/haskell/API.md
    ros1Geometry_msgsPoseArray_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief geometry_msgs/PoseArray.poses: geometry_msgs/Pose; 0..4 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPoseArray; document/platform/pal/en_US/language/haskell/API.md
    ros1Geometry_msgsPoseArray_poses :: [Ros1Geometry_msgsPose]
  } deriving (Eq, Show)
defaultRos1Geometry_msgsPoseArray :: Ros1Geometry_msgsPoseArray
defaultRos1Geometry_msgsPoseArray = Ros1Geometry_msgsPoseArray (defaultRos1Std_msgsHeader) ([])
ros1Geometry_msgsPoseArrayCodecIdentity :: String
ros1Geometry_msgsPoseArrayCodecIdentity = "UWVMROS1_cc369b2d02464c719f6c9c6eb8f4e328e7623ddd455372cea2085f44bb782900"
encodeRos1Geometry_msgsPoseArray :: Ros1Geometry_msgsPoseArray -> Either Word32 B.ByteString
encodeRos1Geometry_msgsPoseArray value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Geometry_msgsPoseArray_header value)
  if length (ros1Geometry_msgsPoseArray_poses value) > 4 then Left 22 else Right ()
  prefix1 <- W.encodeCount 4 (length (ros1Geometry_msgsPoseArray_poses value))
  b1 <- B.concat <$> mapM (\e -> encodeRos1Geometry_msgsPose (e)) (ros1Geometry_msgsPoseArray_poses value)
  W.bounded 372 [b0, prefix1, b1]
readRos1Geometry_msgsPoseArray :: W.Decoder Ros1Geometry_msgsPoseArray
readRos1Geometry_msgsPoseArray = do
  a0 <- readRos1Std_msgsHeader
  count1 <- W.count 4
  a1 <- replicateM count1 (readRos1Geometry_msgsPose)
  let value = Ros1Geometry_msgsPoseArray a0 a1
  case encodeRos1Geometry_msgsPoseArray value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Geometry_msgsPoseArray :: B.ByteString -> Either Word32 Ros1Geometry_msgsPoseArray
decodeRos1Geometry_msgsPoseArray = W.runDecoder 372 readRos1Geometry_msgsPoseArray
instance Canonical Ros1Geometry_msgsPoseArray where
  maximumBytes _ = 372
  encodeValue = encodeRos1Geometry_msgsPoseArray
  readValue = readRos1Geometry_msgsPoseArray
data Ros1Geometry_msgsPoseWithCovariance = Ros1Geometry_msgsPoseWithCovariance
  {
    -- | \@brief geometry_msgs/PoseWithCovariance.pose: geometry_msgs/Pose.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPoseWithCovariance; document/platform/pal/en_US/language/haskell/API.md
    ros1Geometry_msgsPoseWithCovariance_pose :: Ros1Geometry_msgsPose
  ,
    -- | \@brief geometry_msgs/PoseWithCovariance.covariance: float64; exactly 36 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPoseWithCovariance; document/platform/pal/en_US/language/haskell/API.md
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
data Ros1Geometry_msgsPoseWithCovarianceStamped = Ros1Geometry_msgsPoseWithCovarianceStamped
  {
    -- | \@brief geometry_msgs/PoseWithCovarianceStamped.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPoseWithCovarianceStamped; document/platform/pal/en_US/language/haskell/API.md
    ros1Geometry_msgsPoseWithCovarianceStamped_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief geometry_msgs/PoseWithCovarianceStamped.pose: geometry_msgs/PoseWithCovariance.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsPoseWithCovarianceStamped; document/platform/pal/en_US/language/haskell/API.md
    ros1Geometry_msgsPoseWithCovarianceStamped_pose :: Ros1Geometry_msgsPoseWithCovariance
  } deriving (Eq, Show)
defaultRos1Geometry_msgsPoseWithCovarianceStamped :: Ros1Geometry_msgsPoseWithCovarianceStamped
defaultRos1Geometry_msgsPoseWithCovarianceStamped =
    Ros1Geometry_msgsPoseWithCovarianceStamped
    (defaultRos1Std_msgsHeader)
    (defaultRos1Geometry_msgsPoseWithCovariance)
ros1Geometry_msgsPoseWithCovarianceStampedCodecIdentity :: String
ros1Geometry_msgsPoseWithCovarianceStampedCodecIdentity = "UWVMROS1_6708292fe381a7f14aaf84f47a969f55af7446087bfcb309d3b86ab95f34a2d9"
encodeRos1Geometry_msgsPoseWithCovarianceStamped :: Ros1Geometry_msgsPoseWithCovarianceStamped -> Either Word32 B.ByteString
encodeRos1Geometry_msgsPoseWithCovarianceStamped value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Geometry_msgsPoseWithCovarianceStamped_header value)
  b1 <- encodeRos1Geometry_msgsPoseWithCovariance (ros1Geometry_msgsPoseWithCovarianceStamped_pose value)
  W.bounded 488 [b0, b1]
readRos1Geometry_msgsPoseWithCovarianceStamped :: W.Decoder Ros1Geometry_msgsPoseWithCovarianceStamped
readRos1Geometry_msgsPoseWithCovarianceStamped = do
  a0 <- readRos1Std_msgsHeader
  a1 <- readRos1Geometry_msgsPoseWithCovariance
  let value = Ros1Geometry_msgsPoseWithCovarianceStamped a0 a1
  case encodeRos1Geometry_msgsPoseWithCovarianceStamped value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Geometry_msgsPoseWithCovarianceStamped :: B.ByteString -> Either Word32 Ros1Geometry_msgsPoseWithCovarianceStamped
decodeRos1Geometry_msgsPoseWithCovarianceStamped = W.runDecoder 488 readRos1Geometry_msgsPoseWithCovarianceStamped
instance Canonical Ros1Geometry_msgsPoseWithCovarianceStamped where
  maximumBytes _ = 488
  encodeValue = encodeRos1Geometry_msgsPoseWithCovarianceStamped
  readValue = readRos1Geometry_msgsPoseWithCovarianceStamped
data Ros1Geometry_msgsTransform = Ros1Geometry_msgsTransform
  {
    -- | \@brief geometry_msgs/Transform.translation: geometry_msgs/Vector3.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsTransform; document/platform/pal/en_US/language/haskell/API.md
    ros1Geometry_msgsTransform_translation :: Ros1Geometry_msgsVector3
  ,
    -- | \@brief geometry_msgs/Transform.rotation: geometry_msgs/Quaternion.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsTransform; document/platform/pal/en_US/language/haskell/API.md
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
data Ros1Geometry_msgsTransformStamped = Ros1Geometry_msgsTransformStamped
  {
    -- | \@brief geometry_msgs/TransformStamped.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsTransformStamped; document/platform/pal/en_US/language/haskell/API.md
    ros1Geometry_msgsTransformStamped_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief geometry_msgs/TransformStamped.child_frame_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsTransformStamped; document/platform/pal/en_US/language/haskell/API.md
    ros1Geometry_msgsTransformStamped_child_frame_id :: T.Text
  ,
    -- | \@brief geometry_msgs/TransformStamped.transform: geometry_msgs/Transform.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsTransformStamped; document/platform/pal/en_US/language/haskell/API.md
    ros1Geometry_msgsTransformStamped_transform :: Ros1Geometry_msgsTransform
  } deriving (Eq, Show)
defaultRos1Geometry_msgsTransformStamped :: Ros1Geometry_msgsTransformStamped
defaultRos1Geometry_msgsTransformStamped = Ros1Geometry_msgsTransformStamped (defaultRos1Std_msgsHeader) (T.empty) (defaultRos1Geometry_msgsTransform)
ros1Geometry_msgsTransformStampedCodecIdentity :: String
ros1Geometry_msgsTransformStampedCodecIdentity = "UWVMROS1_f4e1d7f868984da7e3717192245f9adf2cc18c76bebaac6357ae2ed30b5b132c"
encodeRos1Geometry_msgsTransformStamped :: Ros1Geometry_msgsTransformStamped -> Either Word32 B.ByteString
encodeRos1Geometry_msgsTransformStamped value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Geometry_msgsTransformStamped_header value)
  b1 <- W.encodeText 128 True (ros1Geometry_msgsTransformStamped_child_frame_id value)
  b2 <- encodeRos1Geometry_msgsTransform (ros1Geometry_msgsTransformStamped_transform value)
  W.bounded 332 [b0, b1, b2]
readRos1Geometry_msgsTransformStamped :: W.Decoder Ros1Geometry_msgsTransformStamped
readRos1Geometry_msgsTransformStamped = do
  a0 <- readRos1Std_msgsHeader
  a1 <- W.text 128 True
  a2 <- readRos1Geometry_msgsTransform
  let value = Ros1Geometry_msgsTransformStamped a0 a1 a2
  case encodeRos1Geometry_msgsTransformStamped value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Geometry_msgsTransformStamped :: B.ByteString -> Either Word32 Ros1Geometry_msgsTransformStamped
decodeRos1Geometry_msgsTransformStamped = W.runDecoder 332 readRos1Geometry_msgsTransformStamped
instance Canonical Ros1Geometry_msgsTransformStamped where
  maximumBytes _ = 332
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
    -- \@see Ros1Geometry_msgsTwist; document/platform/pal/en_US/language/haskell/API.md
    ros1Geometry_msgsTwist_linear :: Ros1Geometry_msgsVector3
  ,
    -- | \@brief geometry_msgs/Twist.angular: geometry_msgs/Vector3.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsTwist; document/platform/pal/en_US/language/haskell/API.md
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
data Ros1Geometry_msgsWrench = Ros1Geometry_msgsWrench
  {
    -- | \@brief geometry_msgs/Wrench.force: geometry_msgs/Vector3.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsWrench; document/platform/pal/en_US/language/haskell/API.md
    ros1Geometry_msgsWrench_force :: Ros1Geometry_msgsVector3
  ,
    -- | \@brief geometry_msgs/Wrench.torque: geometry_msgs/Vector3.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Geometry_msgsWrench; document/platform/pal/en_US/language/haskell/API.md
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
data Ros1Humanoid_nav_msgsStepTarget = Ros1Humanoid_nav_msgsStepTarget
  {
    -- | \@brief humanoid_nav_msgs/StepTarget.pose: geometry_msgs/Pose2D.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Humanoid_nav_msgsStepTarget; document/platform/pal/en_US/language/haskell/API.md
    ros1Humanoid_nav_msgsStepTarget_pose :: Ros1Geometry_msgsPose2D
  ,
    -- | \@brief humanoid_nav_msgs/StepTarget.leg: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Humanoid_nav_msgsStepTarget; document/platform/pal/en_US/language/haskell/API.md
    ros1Humanoid_nav_msgsStepTarget_leg :: Word8
  } deriving (Eq, Show)
defaultRos1Humanoid_nav_msgsStepTarget :: Ros1Humanoid_nav_msgsStepTarget
defaultRos1Humanoid_nav_msgsStepTarget = Ros1Humanoid_nav_msgsStepTarget (defaultRos1Geometry_msgsPose2D) (0)
ros1Humanoid_nav_msgsStepTargetCodecIdentity :: String
ros1Humanoid_nav_msgsStepTargetCodecIdentity = "UWVMROS1_569ffb799d7e55047bf9191eee9af61296726974e01efa8e3b59be779f25c0e6"
ros1Humanoid_nav_msgsStepTarget_right :: Word8
ros1Humanoid_nav_msgsStepTarget_right = 0
ros1Humanoid_nav_msgsStepTarget_left :: Word8
ros1Humanoid_nav_msgsStepTarget_left = 1
encodeRos1Humanoid_nav_msgsStepTarget :: Ros1Humanoid_nav_msgsStepTarget -> Either Word32 B.ByteString
encodeRos1Humanoid_nav_msgsStepTarget value = do
  b0 <- encodeRos1Geometry_msgsPose2D (ros1Humanoid_nav_msgsStepTarget_pose value)
  b1 <- W.encodeUnsigned 1 (fromIntegral (ros1Humanoid_nav_msgsStepTarget_leg value))
  W.bounded 25 [b0, b1]
readRos1Humanoid_nav_msgsStepTarget :: W.Decoder Ros1Humanoid_nav_msgsStepTarget
readRos1Humanoid_nav_msgsStepTarget = do
  a0 <- readRos1Geometry_msgsPose2D
  a1 <- fromIntegral <$> W.unsigned 1
  let value = Ros1Humanoid_nav_msgsStepTarget a0 a1
  case encodeRos1Humanoid_nav_msgsStepTarget value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Humanoid_nav_msgsStepTarget :: B.ByteString -> Either Word32 Ros1Humanoid_nav_msgsStepTarget
decodeRos1Humanoid_nav_msgsStepTarget = W.runDecoder 25 readRos1Humanoid_nav_msgsStepTarget
instance Canonical Ros1Humanoid_nav_msgsStepTarget where
  maximumBytes _ = 25
  encodeValue = encodeRos1Humanoid_nav_msgsStepTarget
  readValue = readRos1Humanoid_nav_msgsStepTarget
data Ros1Nav_msgsMapMetaData = Ros1Nav_msgsMapMetaData
  {
    -- | \@brief nav_msgs/MapMetaData.map_load_time: time.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Nav_msgsMapMetaData; document/platform/pal/en_US/language/haskell/API.md
    ros1Nav_msgsMapMetaData_map_load_time :: Ros1Time
  ,
    -- | \@brief nav_msgs/MapMetaData.resolution: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Nav_msgsMapMetaData; document/platform/pal/en_US/language/haskell/API.md
    ros1Nav_msgsMapMetaData_resolution :: Float
  ,
    -- | \@brief nav_msgs/MapMetaData.width: uint32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Nav_msgsMapMetaData; document/platform/pal/en_US/language/haskell/API.md
    ros1Nav_msgsMapMetaData_width :: Word32
  ,
    -- | \@brief nav_msgs/MapMetaData.height: uint32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Nav_msgsMapMetaData; document/platform/pal/en_US/language/haskell/API.md
    ros1Nav_msgsMapMetaData_height :: Word32
  ,
    -- | \@brief nav_msgs/MapMetaData.origin: geometry_msgs/Pose.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Nav_msgsMapMetaData; document/platform/pal/en_US/language/haskell/API.md
    ros1Nav_msgsMapMetaData_origin :: Ros1Geometry_msgsPose
  } deriving (Eq, Show)
defaultRos1Nav_msgsMapMetaData :: Ros1Nav_msgsMapMetaData
defaultRos1Nav_msgsMapMetaData = Ros1Nav_msgsMapMetaData (defaultRos1Time) (0) (0) (0) (defaultRos1Geometry_msgsPose)
ros1Nav_msgsMapMetaDataCodecIdentity :: String
ros1Nav_msgsMapMetaDataCodecIdentity = "UWVMROS1_2bd90889cc46f8b6669b9bdbdd911747e873c2e3fb948cd3c94a1add8c4555ec"
encodeRos1Nav_msgsMapMetaData :: Ros1Nav_msgsMapMetaData -> Either Word32 B.ByteString
encodeRos1Nav_msgsMapMetaData value = do
  b0 <- encodeRos1Time (ros1Nav_msgsMapMetaData_map_load_time value)
  b1 <- W.encodeFloat32 (ros1Nav_msgsMapMetaData_resolution value)
  b2 <- W.encodeUnsigned 4 (fromIntegral (ros1Nav_msgsMapMetaData_width value))
  b3 <- W.encodeUnsigned 4 (fromIntegral (ros1Nav_msgsMapMetaData_height value))
  b4 <- encodeRos1Geometry_msgsPose (ros1Nav_msgsMapMetaData_origin value)
  W.bounded 76 [b0, b1, b2, b3, b4]
readRos1Nav_msgsMapMetaData :: W.Decoder Ros1Nav_msgsMapMetaData
readRos1Nav_msgsMapMetaData = do
  a0 <- readRos1Time
  a1 <- W.float32
  a2 <- fromIntegral <$> W.unsigned 4
  a3 <- fromIntegral <$> W.unsigned 4
  a4 <- readRos1Geometry_msgsPose
  let value = Ros1Nav_msgsMapMetaData a0 a1 a2 a3 a4
  case encodeRos1Nav_msgsMapMetaData value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Nav_msgsMapMetaData :: B.ByteString -> Either Word32 Ros1Nav_msgsMapMetaData
decodeRos1Nav_msgsMapMetaData = W.runDecoder 76 readRos1Nav_msgsMapMetaData
instance Canonical Ros1Nav_msgsMapMetaData where
  maximumBytes _ = 76
  encodeValue = encodeRos1Nav_msgsMapMetaData
  readValue = readRos1Nav_msgsMapMetaData
data Ros1Pal_behaviour_msgsBehaviourArgument = Ros1Pal_behaviour_msgsBehaviourArgument
  {
    -- | \@brief pal_behaviour_msgs/BehaviourArgument.key: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_behaviour_msgsBehaviourArgument; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_behaviour_msgsBehaviourArgument_key :: T.Text
  ,
    -- | \@brief pal_behaviour_msgs/BehaviourArgument.value: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_behaviour_msgsBehaviourArgument; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_behaviour_msgsBehaviourArgument_value :: T.Text
  } deriving (Eq, Show)
defaultRos1Pal_behaviour_msgsBehaviourArgument :: Ros1Pal_behaviour_msgsBehaviourArgument
defaultRos1Pal_behaviour_msgsBehaviourArgument = Ros1Pal_behaviour_msgsBehaviourArgument (T.empty) (T.empty)
ros1Pal_behaviour_msgsBehaviourArgumentCodecIdentity :: String
ros1Pal_behaviour_msgsBehaviourArgumentCodecIdentity = "UWVMROS1_024bb88cf3b278e19491258b73c01eca83b0ccfd9381e96b9bb5733227bc4bc0"
encodeRos1Pal_behaviour_msgsBehaviourArgument :: Ros1Pal_behaviour_msgsBehaviourArgument -> Either Word32 B.ByteString
encodeRos1Pal_behaviour_msgsBehaviourArgument value = do
  b0 <- W.encodeText 128 True (ros1Pal_behaviour_msgsBehaviourArgument_key value)
  b1 <- W.encodeText 128 True (ros1Pal_behaviour_msgsBehaviourArgument_value value)
  W.bounded 264 [b0, b1]
readRos1Pal_behaviour_msgsBehaviourArgument :: W.Decoder Ros1Pal_behaviour_msgsBehaviourArgument
readRos1Pal_behaviour_msgsBehaviourArgument = do
  a0 <- W.text 128 True
  a1 <- W.text 128 True
  let value = Ros1Pal_behaviour_msgsBehaviourArgument a0 a1
  case encodeRos1Pal_behaviour_msgsBehaviourArgument value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_behaviour_msgsBehaviourArgument :: B.ByteString -> Either Word32 Ros1Pal_behaviour_msgsBehaviourArgument
decodeRos1Pal_behaviour_msgsBehaviourArgument = W.runDecoder 264 readRos1Pal_behaviour_msgsBehaviourArgument
instance Canonical Ros1Pal_behaviour_msgsBehaviourArgument where
  maximumBytes _ = 264
  encodeValue = encodeRos1Pal_behaviour_msgsBehaviourArgument
  readValue = readRos1Pal_behaviour_msgsBehaviourArgument
data Ros1Pal_behaviour_msgsBehaviourEventRequest = Ros1Pal_behaviour_msgsBehaviourEventRequest
  {
    -- | \@brief pal_behaviour_msgs/BehaviourEventRequest.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_behaviour_msgsBehaviourEventRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_behaviour_msgsBehaviourEventRequest_name :: T.Text
  ,
    -- | \@brief pal_behaviour_msgs/BehaviourEventRequest.arguments: pal_behaviour_msgs/BehaviourArgument; 0..4 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_behaviour_msgsBehaviourEventRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_behaviour_msgsBehaviourEventRequest_arguments :: [Ros1Pal_behaviour_msgsBehaviourArgument]
  } deriving (Eq, Show)
defaultRos1Pal_behaviour_msgsBehaviourEventRequest :: Ros1Pal_behaviour_msgsBehaviourEventRequest
defaultRos1Pal_behaviour_msgsBehaviourEventRequest = Ros1Pal_behaviour_msgsBehaviourEventRequest (T.empty) ([])
ros1Pal_behaviour_msgsBehaviourEventRequestCodecIdentity :: String
ros1Pal_behaviour_msgsBehaviourEventRequestCodecIdentity = "UWVMROS1_048535054a3fb576c8101615baffb84809d2e09e6570527a185e54b54460374c"
encodeRos1Pal_behaviour_msgsBehaviourEventRequest :: Ros1Pal_behaviour_msgsBehaviourEventRequest -> Either Word32 B.ByteString
encodeRos1Pal_behaviour_msgsBehaviourEventRequest value = do
  b0 <- W.encodeText 128 True (ros1Pal_behaviour_msgsBehaviourEventRequest_name value)
  if length (ros1Pal_behaviour_msgsBehaviourEventRequest_arguments value) > 4 then Left 22 else Right ()
  prefix1 <- W.encodeCount 4 (length (ros1Pal_behaviour_msgsBehaviourEventRequest_arguments value))
  b1 <- B.concat <$> mapM (\e -> encodeRos1Pal_behaviour_msgsBehaviourArgument (e)) (ros1Pal_behaviour_msgsBehaviourEventRequest_arguments value)
  W.bounded 1192 [b0, prefix1, b1]
readRos1Pal_behaviour_msgsBehaviourEventRequest :: W.Decoder Ros1Pal_behaviour_msgsBehaviourEventRequest
readRos1Pal_behaviour_msgsBehaviourEventRequest = do
  a0 <- W.text 128 True
  count1 <- W.count 4
  a1 <- replicateM count1 (readRos1Pal_behaviour_msgsBehaviourArgument)
  let value = Ros1Pal_behaviour_msgsBehaviourEventRequest a0 a1
  case encodeRos1Pal_behaviour_msgsBehaviourEventRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_behaviour_msgsBehaviourEventRequest :: B.ByteString -> Either Word32 Ros1Pal_behaviour_msgsBehaviourEventRequest
decodeRos1Pal_behaviour_msgsBehaviourEventRequest = W.runDecoder 1192 readRos1Pal_behaviour_msgsBehaviourEventRequest
instance Canonical Ros1Pal_behaviour_msgsBehaviourEventRequest where
  maximumBytes _ = 1192
  encodeValue = encodeRos1Pal_behaviour_msgsBehaviourEventRequest
  readValue = readRos1Pal_behaviour_msgsBehaviourEventRequest
data Ros1Pal_behaviour_msgsBehaviourEventResponse = Ros1Pal_behaviour_msgsBehaviourEventResponse
  {
    -- | \@brief pal_behaviour_msgs/BehaviourEventResponse.response: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_behaviour_msgsBehaviourEventResponse; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_behaviour_msgsBehaviourEventResponse_response :: T.Text
  } deriving (Eq, Show)
defaultRos1Pal_behaviour_msgsBehaviourEventResponse :: Ros1Pal_behaviour_msgsBehaviourEventResponse
defaultRos1Pal_behaviour_msgsBehaviourEventResponse = Ros1Pal_behaviour_msgsBehaviourEventResponse (T.empty)
ros1Pal_behaviour_msgsBehaviourEventResponseCodecIdentity :: String
ros1Pal_behaviour_msgsBehaviourEventResponseCodecIdentity = "UWVMROS1_5d4451abae7cf7d65e7385b4e447df7f991644aa8763758b129e5df6920ba1fd"
encodeRos1Pal_behaviour_msgsBehaviourEventResponse :: Ros1Pal_behaviour_msgsBehaviourEventResponse -> Either Word32 B.ByteString
encodeRos1Pal_behaviour_msgsBehaviourEventResponse value = do
  b0 <- W.encodeText 128 True (ros1Pal_behaviour_msgsBehaviourEventResponse_response value)
  W.bounded 132 [b0]
readRos1Pal_behaviour_msgsBehaviourEventResponse :: W.Decoder Ros1Pal_behaviour_msgsBehaviourEventResponse
readRos1Pal_behaviour_msgsBehaviourEventResponse = do
  a0 <- W.text 128 True
  let value = Ros1Pal_behaviour_msgsBehaviourEventResponse a0
  case encodeRos1Pal_behaviour_msgsBehaviourEventResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_behaviour_msgsBehaviourEventResponse :: B.ByteString -> Either Word32 Ros1Pal_behaviour_msgsBehaviourEventResponse
decodeRos1Pal_behaviour_msgsBehaviourEventResponse = W.runDecoder 132 readRos1Pal_behaviour_msgsBehaviourEventResponse
instance Canonical Ros1Pal_behaviour_msgsBehaviourEventResponse where
  maximumBytes _ = 132
  encodeValue = encodeRos1Pal_behaviour_msgsBehaviourEventResponse
  readValue = readRos1Pal_behaviour_msgsBehaviourEventResponse
data Ros1Pal_behaviour_msgsBehaviourTaskGoal = Ros1Pal_behaviour_msgsBehaviourTaskGoal
  {
    -- | \@brief pal_behaviour_msgs/BehaviourTaskGoal.taskName: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_behaviour_msgsBehaviourTaskGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_behaviour_msgsBehaviourTaskGoal_taskName :: T.Text
  ,
    -- | \@brief pal_behaviour_msgs/BehaviourTaskGoal.arguments: pal_behaviour_msgs/BehaviourArgument; 0..4 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_behaviour_msgsBehaviourTaskGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_behaviour_msgsBehaviourTaskGoal_arguments :: [Ros1Pal_behaviour_msgsBehaviourArgument]
  } deriving (Eq, Show)
defaultRos1Pal_behaviour_msgsBehaviourTaskGoal :: Ros1Pal_behaviour_msgsBehaviourTaskGoal
defaultRos1Pal_behaviour_msgsBehaviourTaskGoal = Ros1Pal_behaviour_msgsBehaviourTaskGoal (T.empty) ([])
ros1Pal_behaviour_msgsBehaviourTaskGoalCodecIdentity :: String
ros1Pal_behaviour_msgsBehaviourTaskGoalCodecIdentity = "UWVMROS1_298df310a5cc1085df5355d10a2ecd627415e85f1399f52eaba19a3e16f2389f"
encodeRos1Pal_behaviour_msgsBehaviourTaskGoal :: Ros1Pal_behaviour_msgsBehaviourTaskGoal -> Either Word32 B.ByteString
encodeRos1Pal_behaviour_msgsBehaviourTaskGoal value = do
  b0 <- W.encodeText 128 True (ros1Pal_behaviour_msgsBehaviourTaskGoal_taskName value)
  if length (ros1Pal_behaviour_msgsBehaviourTaskGoal_arguments value) > 4 then Left 22 else Right ()
  prefix1 <- W.encodeCount 4 (length (ros1Pal_behaviour_msgsBehaviourTaskGoal_arguments value))
  b1 <- B.concat <$> mapM (\e -> encodeRos1Pal_behaviour_msgsBehaviourArgument (e)) (ros1Pal_behaviour_msgsBehaviourTaskGoal_arguments value)
  W.bounded 1192 [b0, prefix1, b1]
readRos1Pal_behaviour_msgsBehaviourTaskGoal :: W.Decoder Ros1Pal_behaviour_msgsBehaviourTaskGoal
readRos1Pal_behaviour_msgsBehaviourTaskGoal = do
  a0 <- W.text 128 True
  count1 <- W.count 4
  a1 <- replicateM count1 (readRos1Pal_behaviour_msgsBehaviourArgument)
  let value = Ros1Pal_behaviour_msgsBehaviourTaskGoal a0 a1
  case encodeRos1Pal_behaviour_msgsBehaviourTaskGoal value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_behaviour_msgsBehaviourTaskGoal :: B.ByteString -> Either Word32 Ros1Pal_behaviour_msgsBehaviourTaskGoal
decodeRos1Pal_behaviour_msgsBehaviourTaskGoal = W.runDecoder 1192 readRos1Pal_behaviour_msgsBehaviourTaskGoal
instance Canonical Ros1Pal_behaviour_msgsBehaviourTaskGoal where
  maximumBytes _ = 1192
  encodeValue = encodeRos1Pal_behaviour_msgsBehaviourTaskGoal
  readValue = readRos1Pal_behaviour_msgsBehaviourTaskGoal
data Ros1Pal_behaviour_msgsBehaviourTaskResult = Ros1Pal_behaviour_msgsBehaviourTaskResult deriving (Eq, Show)
defaultRos1Pal_behaviour_msgsBehaviourTaskResult :: Ros1Pal_behaviour_msgsBehaviourTaskResult
defaultRos1Pal_behaviour_msgsBehaviourTaskResult = Ros1Pal_behaviour_msgsBehaviourTaskResult 
ros1Pal_behaviour_msgsBehaviourTaskResultCodecIdentity :: String
ros1Pal_behaviour_msgsBehaviourTaskResultCodecIdentity = "UWVMROS1_e18dbdb679b8d00ba9ba5f72201ccf93eec866891009b3639f0892c64da18491"
encodeRos1Pal_behaviour_msgsBehaviourTaskResult :: Ros1Pal_behaviour_msgsBehaviourTaskResult -> Either Word32 B.ByteString
encodeRos1Pal_behaviour_msgsBehaviourTaskResult value = do
  W.bounded 0 []
readRos1Pal_behaviour_msgsBehaviourTaskResult :: W.Decoder Ros1Pal_behaviour_msgsBehaviourTaskResult
readRos1Pal_behaviour_msgsBehaviourTaskResult = do
  let value = Ros1Pal_behaviour_msgsBehaviourTaskResult 
  case encodeRos1Pal_behaviour_msgsBehaviourTaskResult value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_behaviour_msgsBehaviourTaskResult :: B.ByteString -> Either Word32 Ros1Pal_behaviour_msgsBehaviourTaskResult
decodeRos1Pal_behaviour_msgsBehaviourTaskResult = W.runDecoder 0 readRos1Pal_behaviour_msgsBehaviourTaskResult
instance Canonical Ros1Pal_behaviour_msgsBehaviourTaskResult where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_behaviour_msgsBehaviourTaskResult
  readValue = readRos1Pal_behaviour_msgsBehaviourTaskResult
data Ros1Pal_behaviour_msgsBehaviourTaskFeedback = Ros1Pal_behaviour_msgsBehaviourTaskFeedback deriving (Eq, Show)
defaultRos1Pal_behaviour_msgsBehaviourTaskFeedback :: Ros1Pal_behaviour_msgsBehaviourTaskFeedback
defaultRos1Pal_behaviour_msgsBehaviourTaskFeedback = Ros1Pal_behaviour_msgsBehaviourTaskFeedback 
ros1Pal_behaviour_msgsBehaviourTaskFeedbackCodecIdentity :: String
ros1Pal_behaviour_msgsBehaviourTaskFeedbackCodecIdentity = "UWVMROS1_4270594f10120216110afd3b219cec42018a71cc751bf09a379e608ce99b1752"
encodeRos1Pal_behaviour_msgsBehaviourTaskFeedback :: Ros1Pal_behaviour_msgsBehaviourTaskFeedback -> Either Word32 B.ByteString
encodeRos1Pal_behaviour_msgsBehaviourTaskFeedback value = do
  W.bounded 0 []
readRos1Pal_behaviour_msgsBehaviourTaskFeedback :: W.Decoder Ros1Pal_behaviour_msgsBehaviourTaskFeedback
readRos1Pal_behaviour_msgsBehaviourTaskFeedback = do
  let value = Ros1Pal_behaviour_msgsBehaviourTaskFeedback 
  case encodeRos1Pal_behaviour_msgsBehaviourTaskFeedback value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_behaviour_msgsBehaviourTaskFeedback :: B.ByteString -> Either Word32 Ros1Pal_behaviour_msgsBehaviourTaskFeedback
decodeRos1Pal_behaviour_msgsBehaviourTaskFeedback = W.runDecoder 0 readRos1Pal_behaviour_msgsBehaviourTaskFeedback
instance Canonical Ros1Pal_behaviour_msgsBehaviourTaskFeedback where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_behaviour_msgsBehaviourTaskFeedback
  readValue = readRos1Pal_behaviour_msgsBehaviourTaskFeedback
data Ros1Pal_behaviour_msgsPresentationGoal = Ros1Pal_behaviour_msgsPresentationGoal
  {
    -- | \@brief pal_behaviour_msgs/PresentationGoal.presentationFile: string; each string is 0..128 bytes;
    --  strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_behaviour_msgsPresentationGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_behaviour_msgsPresentationGoal_presentationFile :: T.Text
  } deriving (Eq, Show)
defaultRos1Pal_behaviour_msgsPresentationGoal :: Ros1Pal_behaviour_msgsPresentationGoal
defaultRos1Pal_behaviour_msgsPresentationGoal = Ros1Pal_behaviour_msgsPresentationGoal (T.empty)
ros1Pal_behaviour_msgsPresentationGoalCodecIdentity :: String
ros1Pal_behaviour_msgsPresentationGoalCodecIdentity = "UWVMROS1_f63991747249e4417a36723dcfe3620fb3efc20784b6a60334f46b3476c76b96"
encodeRos1Pal_behaviour_msgsPresentationGoal :: Ros1Pal_behaviour_msgsPresentationGoal -> Either Word32 B.ByteString
encodeRos1Pal_behaviour_msgsPresentationGoal value = do
  b0 <- W.encodeText 128 True (ros1Pal_behaviour_msgsPresentationGoal_presentationFile value)
  W.bounded 132 [b0]
readRos1Pal_behaviour_msgsPresentationGoal :: W.Decoder Ros1Pal_behaviour_msgsPresentationGoal
readRos1Pal_behaviour_msgsPresentationGoal = do
  a0 <- W.text 128 True
  let value = Ros1Pal_behaviour_msgsPresentationGoal a0
  case encodeRos1Pal_behaviour_msgsPresentationGoal value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_behaviour_msgsPresentationGoal :: B.ByteString -> Either Word32 Ros1Pal_behaviour_msgsPresentationGoal
decodeRos1Pal_behaviour_msgsPresentationGoal = W.runDecoder 132 readRos1Pal_behaviour_msgsPresentationGoal
instance Canonical Ros1Pal_behaviour_msgsPresentationGoal where
  maximumBytes _ = 132
  encodeValue = encodeRos1Pal_behaviour_msgsPresentationGoal
  readValue = readRos1Pal_behaviour_msgsPresentationGoal
data Ros1Pal_behaviour_msgsPresentationResult = Ros1Pal_behaviour_msgsPresentationResult deriving (Eq, Show)
defaultRos1Pal_behaviour_msgsPresentationResult :: Ros1Pal_behaviour_msgsPresentationResult
defaultRos1Pal_behaviour_msgsPresentationResult = Ros1Pal_behaviour_msgsPresentationResult 
ros1Pal_behaviour_msgsPresentationResultCodecIdentity :: String
ros1Pal_behaviour_msgsPresentationResultCodecIdentity = "UWVMROS1_416d43dac88c97f0b25fb206e5529d660fbadb5c8bf98c78190616eaae7c8c41"
encodeRos1Pal_behaviour_msgsPresentationResult :: Ros1Pal_behaviour_msgsPresentationResult -> Either Word32 B.ByteString
encodeRos1Pal_behaviour_msgsPresentationResult value = do
  W.bounded 0 []
readRos1Pal_behaviour_msgsPresentationResult :: W.Decoder Ros1Pal_behaviour_msgsPresentationResult
readRos1Pal_behaviour_msgsPresentationResult = do
  let value = Ros1Pal_behaviour_msgsPresentationResult 
  case encodeRos1Pal_behaviour_msgsPresentationResult value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_behaviour_msgsPresentationResult :: B.ByteString -> Either Word32 Ros1Pal_behaviour_msgsPresentationResult
decodeRos1Pal_behaviour_msgsPresentationResult = W.runDecoder 0 readRos1Pal_behaviour_msgsPresentationResult
instance Canonical Ros1Pal_behaviour_msgsPresentationResult where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_behaviour_msgsPresentationResult
  readValue = readRos1Pal_behaviour_msgsPresentationResult
data Ros1Pal_behaviour_msgsPresentationFeedback = Ros1Pal_behaviour_msgsPresentationFeedback deriving (Eq, Show)
defaultRos1Pal_behaviour_msgsPresentationFeedback :: Ros1Pal_behaviour_msgsPresentationFeedback
defaultRos1Pal_behaviour_msgsPresentationFeedback = Ros1Pal_behaviour_msgsPresentationFeedback 
ros1Pal_behaviour_msgsPresentationFeedbackCodecIdentity :: String
ros1Pal_behaviour_msgsPresentationFeedbackCodecIdentity = "UWVMROS1_a80db9d9290af9c76e0d611c42e60939bcfc26897ba56efb2cefd5df072f5970"
encodeRos1Pal_behaviour_msgsPresentationFeedback :: Ros1Pal_behaviour_msgsPresentationFeedback -> Either Word32 B.ByteString
encodeRos1Pal_behaviour_msgsPresentationFeedback value = do
  W.bounded 0 []
readRos1Pal_behaviour_msgsPresentationFeedback :: W.Decoder Ros1Pal_behaviour_msgsPresentationFeedback
readRos1Pal_behaviour_msgsPresentationFeedback = do
  let value = Ros1Pal_behaviour_msgsPresentationFeedback 
  case encodeRos1Pal_behaviour_msgsPresentationFeedback value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_behaviour_msgsPresentationFeedback :: B.ByteString -> Either Word32 Ros1Pal_behaviour_msgsPresentationFeedback
decodeRos1Pal_behaviour_msgsPresentationFeedback = W.runDecoder 0 readRos1Pal_behaviour_msgsPresentationFeedback
instance Canonical Ros1Pal_behaviour_msgsPresentationFeedback where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_behaviour_msgsPresentationFeedback
  readValue = readRos1Pal_behaviour_msgsPresentationFeedback
data Ros1Pal_common_msgsDisableGoal = Ros1Pal_common_msgsDisableGoal
  {
    -- | \@brief pal_common_msgs/DisableGoal.duration: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_common_msgsDisableGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_common_msgsDisableGoal_duration :: Float
  } deriving (Eq, Show)
defaultRos1Pal_common_msgsDisableGoal :: Ros1Pal_common_msgsDisableGoal
defaultRos1Pal_common_msgsDisableGoal = Ros1Pal_common_msgsDisableGoal (0)
ros1Pal_common_msgsDisableGoalCodecIdentity :: String
ros1Pal_common_msgsDisableGoalCodecIdentity = "UWVMROS1_7b506fba552b6058cfbd7275e45a82399b686d73dc891bfee6dc506a02f1db3a"
encodeRos1Pal_common_msgsDisableGoal :: Ros1Pal_common_msgsDisableGoal -> Either Word32 B.ByteString
encodeRos1Pal_common_msgsDisableGoal value = do
  b0 <- W.encodeFloat32 (ros1Pal_common_msgsDisableGoal_duration value)
  W.bounded 4 [b0]
readRos1Pal_common_msgsDisableGoal :: W.Decoder Ros1Pal_common_msgsDisableGoal
readRos1Pal_common_msgsDisableGoal = do
  a0 <- W.float32
  let value = Ros1Pal_common_msgsDisableGoal a0
  case encodeRos1Pal_common_msgsDisableGoal value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_common_msgsDisableGoal :: B.ByteString -> Either Word32 Ros1Pal_common_msgsDisableGoal
decodeRos1Pal_common_msgsDisableGoal = W.runDecoder 4 readRos1Pal_common_msgsDisableGoal
instance Canonical Ros1Pal_common_msgsDisableGoal where
  maximumBytes _ = 4
  encodeValue = encodeRos1Pal_common_msgsDisableGoal
  readValue = readRos1Pal_common_msgsDisableGoal
data Ros1Pal_common_msgsDisableResult = Ros1Pal_common_msgsDisableResult deriving (Eq, Show)
defaultRos1Pal_common_msgsDisableResult :: Ros1Pal_common_msgsDisableResult
defaultRos1Pal_common_msgsDisableResult = Ros1Pal_common_msgsDisableResult 
ros1Pal_common_msgsDisableResultCodecIdentity :: String
ros1Pal_common_msgsDisableResultCodecIdentity = "UWVMROS1_e16cdbd4052e095ead5edfda8c339d94483de63d5442139e0c8b0c5300a2056f"
encodeRos1Pal_common_msgsDisableResult :: Ros1Pal_common_msgsDisableResult -> Either Word32 B.ByteString
encodeRos1Pal_common_msgsDisableResult value = do
  W.bounded 0 []
readRos1Pal_common_msgsDisableResult :: W.Decoder Ros1Pal_common_msgsDisableResult
readRos1Pal_common_msgsDisableResult = do
  let value = Ros1Pal_common_msgsDisableResult 
  case encodeRos1Pal_common_msgsDisableResult value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_common_msgsDisableResult :: B.ByteString -> Either Word32 Ros1Pal_common_msgsDisableResult
decodeRos1Pal_common_msgsDisableResult = W.runDecoder 0 readRos1Pal_common_msgsDisableResult
instance Canonical Ros1Pal_common_msgsDisableResult where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_common_msgsDisableResult
  readValue = readRos1Pal_common_msgsDisableResult
data Ros1Pal_common_msgsDisableFeedback = Ros1Pal_common_msgsDisableFeedback deriving (Eq, Show)
defaultRos1Pal_common_msgsDisableFeedback :: Ros1Pal_common_msgsDisableFeedback
defaultRos1Pal_common_msgsDisableFeedback = Ros1Pal_common_msgsDisableFeedback 
ros1Pal_common_msgsDisableFeedbackCodecIdentity :: String
ros1Pal_common_msgsDisableFeedbackCodecIdentity = "UWVMROS1_892e1dc5726b25276dfd880aff5c9741922b938048d8fc044662fd6f11939555"
encodeRos1Pal_common_msgsDisableFeedback :: Ros1Pal_common_msgsDisableFeedback -> Either Word32 B.ByteString
encodeRos1Pal_common_msgsDisableFeedback value = do
  W.bounded 0 []
readRos1Pal_common_msgsDisableFeedback :: W.Decoder Ros1Pal_common_msgsDisableFeedback
readRos1Pal_common_msgsDisableFeedback = do
  let value = Ros1Pal_common_msgsDisableFeedback 
  case encodeRos1Pal_common_msgsDisableFeedback value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_common_msgsDisableFeedback :: B.ByteString -> Either Word32 Ros1Pal_common_msgsDisableFeedback
decodeRos1Pal_common_msgsDisableFeedback = W.runDecoder 0 readRos1Pal_common_msgsDisableFeedback
instance Canonical Ros1Pal_common_msgsDisableFeedback where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_common_msgsDisableFeedback
  readValue = readRos1Pal_common_msgsDisableFeedback
data Ros1Pal_common_msgsEmptyGoal = Ros1Pal_common_msgsEmptyGoal deriving (Eq, Show)
defaultRos1Pal_common_msgsEmptyGoal :: Ros1Pal_common_msgsEmptyGoal
defaultRos1Pal_common_msgsEmptyGoal = Ros1Pal_common_msgsEmptyGoal 
ros1Pal_common_msgsEmptyGoalCodecIdentity :: String
ros1Pal_common_msgsEmptyGoalCodecIdentity = "UWVMROS1_b2e8505fe9480002666ccc1bc6ed3e250f521f1e0fb2165336de288f0798c7ce"
encodeRos1Pal_common_msgsEmptyGoal :: Ros1Pal_common_msgsEmptyGoal -> Either Word32 B.ByteString
encodeRos1Pal_common_msgsEmptyGoal value = do
  W.bounded 0 []
readRos1Pal_common_msgsEmptyGoal :: W.Decoder Ros1Pal_common_msgsEmptyGoal
readRos1Pal_common_msgsEmptyGoal = do
  let value = Ros1Pal_common_msgsEmptyGoal 
  case encodeRos1Pal_common_msgsEmptyGoal value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_common_msgsEmptyGoal :: B.ByteString -> Either Word32 Ros1Pal_common_msgsEmptyGoal
decodeRos1Pal_common_msgsEmptyGoal = W.runDecoder 0 readRos1Pal_common_msgsEmptyGoal
instance Canonical Ros1Pal_common_msgsEmptyGoal where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_common_msgsEmptyGoal
  readValue = readRos1Pal_common_msgsEmptyGoal
data Ros1Pal_common_msgsEmptyResult = Ros1Pal_common_msgsEmptyResult deriving (Eq, Show)
defaultRos1Pal_common_msgsEmptyResult :: Ros1Pal_common_msgsEmptyResult
defaultRos1Pal_common_msgsEmptyResult = Ros1Pal_common_msgsEmptyResult 
ros1Pal_common_msgsEmptyResultCodecIdentity :: String
ros1Pal_common_msgsEmptyResultCodecIdentity = "UWVMROS1_7e831f6ff8bda7d3ff2a477bb867ce2b965d82e60c8c089a68a030be1c56202a"
encodeRos1Pal_common_msgsEmptyResult :: Ros1Pal_common_msgsEmptyResult -> Either Word32 B.ByteString
encodeRos1Pal_common_msgsEmptyResult value = do
  W.bounded 0 []
readRos1Pal_common_msgsEmptyResult :: W.Decoder Ros1Pal_common_msgsEmptyResult
readRos1Pal_common_msgsEmptyResult = do
  let value = Ros1Pal_common_msgsEmptyResult 
  case encodeRos1Pal_common_msgsEmptyResult value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_common_msgsEmptyResult :: B.ByteString -> Either Word32 Ros1Pal_common_msgsEmptyResult
decodeRos1Pal_common_msgsEmptyResult = W.runDecoder 0 readRos1Pal_common_msgsEmptyResult
instance Canonical Ros1Pal_common_msgsEmptyResult where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_common_msgsEmptyResult
  readValue = readRos1Pal_common_msgsEmptyResult
data Ros1Pal_common_msgsEmptyFeedback = Ros1Pal_common_msgsEmptyFeedback deriving (Eq, Show)
defaultRos1Pal_common_msgsEmptyFeedback :: Ros1Pal_common_msgsEmptyFeedback
defaultRos1Pal_common_msgsEmptyFeedback = Ros1Pal_common_msgsEmptyFeedback 
ros1Pal_common_msgsEmptyFeedbackCodecIdentity :: String
ros1Pal_common_msgsEmptyFeedbackCodecIdentity = "UWVMROS1_4e37b746163e601913c21f82128415e9493467848b1203b0744a4f7697125160"
encodeRos1Pal_common_msgsEmptyFeedback :: Ros1Pal_common_msgsEmptyFeedback -> Either Word32 B.ByteString
encodeRos1Pal_common_msgsEmptyFeedback value = do
  W.bounded 0 []
readRos1Pal_common_msgsEmptyFeedback :: W.Decoder Ros1Pal_common_msgsEmptyFeedback
readRos1Pal_common_msgsEmptyFeedback = do
  let value = Ros1Pal_common_msgsEmptyFeedback 
  case encodeRos1Pal_common_msgsEmptyFeedback value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_common_msgsEmptyFeedback :: B.ByteString -> Either Word32 Ros1Pal_common_msgsEmptyFeedback
decodeRos1Pal_common_msgsEmptyFeedback = W.runDecoder 0 readRos1Pal_common_msgsEmptyFeedback
instance Canonical Ros1Pal_common_msgsEmptyFeedback where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_common_msgsEmptyFeedback
  readValue = readRos1Pal_common_msgsEmptyFeedback
data Ros1Pal_common_msgsGetStringRequest = Ros1Pal_common_msgsGetStringRequest deriving (Eq, Show)
defaultRos1Pal_common_msgsGetStringRequest :: Ros1Pal_common_msgsGetStringRequest
defaultRos1Pal_common_msgsGetStringRequest = Ros1Pal_common_msgsGetStringRequest 
ros1Pal_common_msgsGetStringRequestCodecIdentity :: String
ros1Pal_common_msgsGetStringRequestCodecIdentity = "UWVMROS1_5da980a34f4dc0c571eccf18e9b5ba9e3f600ec33066d5632e5eed6a57432975"
encodeRos1Pal_common_msgsGetStringRequest :: Ros1Pal_common_msgsGetStringRequest -> Either Word32 B.ByteString
encodeRos1Pal_common_msgsGetStringRequest value = do
  W.bounded 0 []
readRos1Pal_common_msgsGetStringRequest :: W.Decoder Ros1Pal_common_msgsGetStringRequest
readRos1Pal_common_msgsGetStringRequest = do
  let value = Ros1Pal_common_msgsGetStringRequest 
  case encodeRos1Pal_common_msgsGetStringRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_common_msgsGetStringRequest :: B.ByteString -> Either Word32 Ros1Pal_common_msgsGetStringRequest
decodeRos1Pal_common_msgsGetStringRequest = W.runDecoder 0 readRos1Pal_common_msgsGetStringRequest
instance Canonical Ros1Pal_common_msgsGetStringRequest where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_common_msgsGetStringRequest
  readValue = readRos1Pal_common_msgsGetStringRequest
data Ros1Pal_common_msgsGetStringResponse = Ros1Pal_common_msgsGetStringResponse
  {
    -- | \@brief pal_common_msgs/GetStringResponse.data: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_common_msgsGetStringResponse; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_common_msgsGetStringResponse_data :: T.Text
  ,
    -- | \@brief pal_common_msgs/GetStringResponse.success: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_common_msgsGetStringResponse; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_common_msgsGetStringResponse_success :: Bool
  } deriving (Eq, Show)
defaultRos1Pal_common_msgsGetStringResponse :: Ros1Pal_common_msgsGetStringResponse
defaultRos1Pal_common_msgsGetStringResponse = Ros1Pal_common_msgsGetStringResponse (T.empty) (False)
ros1Pal_common_msgsGetStringResponseCodecIdentity :: String
ros1Pal_common_msgsGetStringResponseCodecIdentity = "UWVMROS1_92faf0451e15a3363daed687078ea103a59e98135e888ad54f8dd9d282443a59"
encodeRos1Pal_common_msgsGetStringResponse :: Ros1Pal_common_msgsGetStringResponse -> Either Word32 B.ByteString
encodeRos1Pal_common_msgsGetStringResponse value = do
  b0 <- W.encodeText 128 True (ros1Pal_common_msgsGetStringResponse_data value)
  b1 <- W.encodeBool (ros1Pal_common_msgsGetStringResponse_success value)
  W.bounded 133 [b0, b1]
readRos1Pal_common_msgsGetStringResponse :: W.Decoder Ros1Pal_common_msgsGetStringResponse
readRos1Pal_common_msgsGetStringResponse = do
  a0 <- W.text 128 True
  a1 <- W.boolean
  let value = Ros1Pal_common_msgsGetStringResponse a0 a1
  case encodeRos1Pal_common_msgsGetStringResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_common_msgsGetStringResponse :: B.ByteString -> Either Word32 Ros1Pal_common_msgsGetStringResponse
decodeRos1Pal_common_msgsGetStringResponse = W.runDecoder 133 readRos1Pal_common_msgsGetStringResponse
instance Canonical Ros1Pal_common_msgsGetStringResponse where
  maximumBytes _ = 133
  encodeValue = encodeRos1Pal_common_msgsGetStringResponse
  readValue = readRos1Pal_common_msgsGetStringResponse
data Ros1Pal_common_msgsJointCurrent = Ros1Pal_common_msgsJointCurrent
  {
    -- | \@brief pal_common_msgs/JointCurrent.joints: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_common_msgsJointCurrent; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_common_msgsJointCurrent_joints :: T.Text
  ,
    -- | \@brief pal_common_msgs/JointCurrent.current_limit: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_common_msgsJointCurrent; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_common_msgsJointCurrent_current_limit :: Float
  } deriving (Eq, Show)
defaultRos1Pal_common_msgsJointCurrent :: Ros1Pal_common_msgsJointCurrent
defaultRos1Pal_common_msgsJointCurrent = Ros1Pal_common_msgsJointCurrent (T.empty) (0)
ros1Pal_common_msgsJointCurrentCodecIdentity :: String
ros1Pal_common_msgsJointCurrentCodecIdentity = "UWVMROS1_5c8818c8e15e17e0696cd7301896246ea43e5309f24e8d00e3254283199a5b39"
encodeRos1Pal_common_msgsJointCurrent :: Ros1Pal_common_msgsJointCurrent -> Either Word32 B.ByteString
encodeRos1Pal_common_msgsJointCurrent value = do
  b0 <- W.encodeText 128 True (ros1Pal_common_msgsJointCurrent_joints value)
  b1 <- W.encodeFloat32 (ros1Pal_common_msgsJointCurrent_current_limit value)
  W.bounded 136 [b0, b1]
readRos1Pal_common_msgsJointCurrent :: W.Decoder Ros1Pal_common_msgsJointCurrent
readRos1Pal_common_msgsJointCurrent = do
  a0 <- W.text 128 True
  a1 <- W.float32
  let value = Ros1Pal_common_msgsJointCurrent a0 a1
  case encodeRos1Pal_common_msgsJointCurrent value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_common_msgsJointCurrent :: B.ByteString -> Either Word32 Ros1Pal_common_msgsJointCurrent
decodeRos1Pal_common_msgsJointCurrent = W.runDecoder 136 readRos1Pal_common_msgsJointCurrent
instance Canonical Ros1Pal_common_msgsJointCurrent where
  maximumBytes _ = 136
  encodeValue = encodeRos1Pal_common_msgsJointCurrent
  readValue = readRos1Pal_common_msgsJointCurrent
data Ros1Pal_common_msgsSetStringRequest = Ros1Pal_common_msgsSetStringRequest
  {
    -- | \@brief pal_common_msgs/SetStringRequest.data: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_common_msgsSetStringRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_common_msgsSetStringRequest_data :: T.Text
  } deriving (Eq, Show)
defaultRos1Pal_common_msgsSetStringRequest :: Ros1Pal_common_msgsSetStringRequest
defaultRos1Pal_common_msgsSetStringRequest = Ros1Pal_common_msgsSetStringRequest (T.empty)
ros1Pal_common_msgsSetStringRequestCodecIdentity :: String
ros1Pal_common_msgsSetStringRequestCodecIdentity = "UWVMROS1_1266d5e50f2f3ada01139b7cf49daf4dd6a9a358edf26519c6b85bd2b9c675b3"
encodeRos1Pal_common_msgsSetStringRequest :: Ros1Pal_common_msgsSetStringRequest -> Either Word32 B.ByteString
encodeRos1Pal_common_msgsSetStringRequest value = do
  b0 <- W.encodeText 128 True (ros1Pal_common_msgsSetStringRequest_data value)
  W.bounded 132 [b0]
readRos1Pal_common_msgsSetStringRequest :: W.Decoder Ros1Pal_common_msgsSetStringRequest
readRos1Pal_common_msgsSetStringRequest = do
  a0 <- W.text 128 True
  let value = Ros1Pal_common_msgsSetStringRequest a0
  case encodeRos1Pal_common_msgsSetStringRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_common_msgsSetStringRequest :: B.ByteString -> Either Word32 Ros1Pal_common_msgsSetStringRequest
decodeRos1Pal_common_msgsSetStringRequest = W.runDecoder 132 readRos1Pal_common_msgsSetStringRequest
instance Canonical Ros1Pal_common_msgsSetStringRequest where
  maximumBytes _ = 132
  encodeValue = encodeRos1Pal_common_msgsSetStringRequest
  readValue = readRos1Pal_common_msgsSetStringRequest
data Ros1Pal_common_msgsSetStringResponse = Ros1Pal_common_msgsSetStringResponse
  {
    -- | \@brief pal_common_msgs/SetStringResponse.success: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_common_msgsSetStringResponse; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_common_msgsSetStringResponse_success :: Bool
  } deriving (Eq, Show)
defaultRos1Pal_common_msgsSetStringResponse :: Ros1Pal_common_msgsSetStringResponse
defaultRos1Pal_common_msgsSetStringResponse = Ros1Pal_common_msgsSetStringResponse (False)
ros1Pal_common_msgsSetStringResponseCodecIdentity :: String
ros1Pal_common_msgsSetStringResponseCodecIdentity = "UWVMROS1_77c77473e16b6242e69e1674bf3c1faf66169bb858144992be3f6cfd712bd370"
encodeRos1Pal_common_msgsSetStringResponse :: Ros1Pal_common_msgsSetStringResponse -> Either Word32 B.ByteString
encodeRos1Pal_common_msgsSetStringResponse value = do
  b0 <- W.encodeBool (ros1Pal_common_msgsSetStringResponse_success value)
  W.bounded 1 [b0]
readRos1Pal_common_msgsSetStringResponse :: W.Decoder Ros1Pal_common_msgsSetStringResponse
readRos1Pal_common_msgsSetStringResponse = do
  a0 <- W.boolean
  let value = Ros1Pal_common_msgsSetStringResponse a0
  case encodeRos1Pal_common_msgsSetStringResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_common_msgsSetStringResponse :: B.ByteString -> Either Word32 Ros1Pal_common_msgsSetStringResponse
decodeRos1Pal_common_msgsSetStringResponse = W.runDecoder 1 readRos1Pal_common_msgsSetStringResponse
instance Canonical Ros1Pal_common_msgsSetStringResponse where
  maximumBytes _ = 1
  encodeValue = encodeRos1Pal_common_msgsSetStringResponse
  readValue = readRos1Pal_common_msgsSetStringResponse
data Ros1Pal_control_msgsActuatorCurrentLimit = Ros1Pal_control_msgsActuatorCurrentLimit
  {
    -- | \@brief pal_control_msgs/ActuatorCurrentLimit.actuator_names: string; 0..16 elements; each string is
    --  0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_control_msgsActuatorCurrentLimit; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_control_msgsActuatorCurrentLimit_actuator_names :: [T.Text]
  ,
    -- | \@brief pal_control_msgs/ActuatorCurrentLimit.current_limits: float64; 0..16 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_control_msgsActuatorCurrentLimit; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_control_msgsActuatorCurrentLimit_current_limits :: [Double]
  } deriving (Eq, Show)
defaultRos1Pal_control_msgsActuatorCurrentLimit :: Ros1Pal_control_msgsActuatorCurrentLimit
defaultRos1Pal_control_msgsActuatorCurrentLimit = Ros1Pal_control_msgsActuatorCurrentLimit ([]) ([])
ros1Pal_control_msgsActuatorCurrentLimitCodecIdentity :: String
ros1Pal_control_msgsActuatorCurrentLimitCodecIdentity = "UWVMROS1_cf7369861a4d556cc9edc22cc60c79f484ca84e295c508a2ff7d7332247addbe"
encodeRos1Pal_control_msgsActuatorCurrentLimit :: Ros1Pal_control_msgsActuatorCurrentLimit -> Either Word32 B.ByteString
encodeRos1Pal_control_msgsActuatorCurrentLimit value = do
  if length (ros1Pal_control_msgsActuatorCurrentLimit_actuator_names value) > 16 then Left 22 else Right ()
  prefix0 <- W.encodeCount 16 (length (ros1Pal_control_msgsActuatorCurrentLimit_actuator_names value))
  b0 <- B.concat <$> mapM (\e -> W.encodeText 128 True (e)) (ros1Pal_control_msgsActuatorCurrentLimit_actuator_names value)
  if length (ros1Pal_control_msgsActuatorCurrentLimit_current_limits value) > 16 then Left 22 else Right ()
  prefix1 <- W.encodeCount 16 (length (ros1Pal_control_msgsActuatorCurrentLimit_current_limits value))
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Pal_control_msgsActuatorCurrentLimit_current_limits value)
  W.bounded 2248 [prefix0, b0, prefix1, b1]
readRos1Pal_control_msgsActuatorCurrentLimit :: W.Decoder Ros1Pal_control_msgsActuatorCurrentLimit
readRos1Pal_control_msgsActuatorCurrentLimit = do
  count0 <- W.count 16
  a0 <- replicateM count0 (W.text 128 True)
  count1 <- W.count 16
  a1 <- replicateM count1 (W.float64)
  let value = Ros1Pal_control_msgsActuatorCurrentLimit a0 a1
  case encodeRos1Pal_control_msgsActuatorCurrentLimit value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_control_msgsActuatorCurrentLimit :: B.ByteString -> Either Word32 Ros1Pal_control_msgsActuatorCurrentLimit
decodeRos1Pal_control_msgsActuatorCurrentLimit = W.runDecoder 2248 readRos1Pal_control_msgsActuatorCurrentLimit
instance Canonical Ros1Pal_control_msgsActuatorCurrentLimit where
  maximumBytes _ = 2248
  encodeValue = encodeRos1Pal_control_msgsActuatorCurrentLimit
  readValue = readRos1Pal_control_msgsActuatorCurrentLimit
data Ros1Pal_control_msgsCurrentLimitRequest = Ros1Pal_control_msgsCurrentLimitRequest
  {
    -- | \@brief pal_control_msgs/CurrentLimitRequest.actuator_name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_control_msgsCurrentLimitRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_control_msgsCurrentLimitRequest_actuator_name :: T.Text
  ,
    -- | \@brief pal_control_msgs/CurrentLimitRequest.current_limit: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_control_msgsCurrentLimitRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_control_msgsCurrentLimitRequest_current_limit :: Double
  } deriving (Eq, Show)
defaultRos1Pal_control_msgsCurrentLimitRequest :: Ros1Pal_control_msgsCurrentLimitRequest
defaultRos1Pal_control_msgsCurrentLimitRequest = Ros1Pal_control_msgsCurrentLimitRequest (T.empty) (0)
ros1Pal_control_msgsCurrentLimitRequestCodecIdentity :: String
ros1Pal_control_msgsCurrentLimitRequestCodecIdentity = "UWVMROS1_b029cf04f0b1c9db6817fbd10f193d7402afbc84853aed53dc62646e56d030b5"
encodeRos1Pal_control_msgsCurrentLimitRequest :: Ros1Pal_control_msgsCurrentLimitRequest -> Either Word32 B.ByteString
encodeRos1Pal_control_msgsCurrentLimitRequest value = do
  b0 <- W.encodeText 128 True (ros1Pal_control_msgsCurrentLimitRequest_actuator_name value)
  b1 <- W.encodeFloat64 (ros1Pal_control_msgsCurrentLimitRequest_current_limit value)
  W.bounded 140 [b0, b1]
readRos1Pal_control_msgsCurrentLimitRequest :: W.Decoder Ros1Pal_control_msgsCurrentLimitRequest
readRos1Pal_control_msgsCurrentLimitRequest = do
  a0 <- W.text 128 True
  a1 <- W.float64
  let value = Ros1Pal_control_msgsCurrentLimitRequest a0 a1
  case encodeRos1Pal_control_msgsCurrentLimitRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_control_msgsCurrentLimitRequest :: B.ByteString -> Either Word32 Ros1Pal_control_msgsCurrentLimitRequest
decodeRos1Pal_control_msgsCurrentLimitRequest = W.runDecoder 140 readRos1Pal_control_msgsCurrentLimitRequest
instance Canonical Ros1Pal_control_msgsCurrentLimitRequest where
  maximumBytes _ = 140
  encodeValue = encodeRos1Pal_control_msgsCurrentLimitRequest
  readValue = readRos1Pal_control_msgsCurrentLimitRequest
data Ros1Pal_control_msgsCurrentLimitResponse = Ros1Pal_control_msgsCurrentLimitResponse
  {
    -- | \@brief pal_control_msgs/CurrentLimitResponse.status: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_control_msgsCurrentLimitResponse; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_control_msgsCurrentLimitResponse_status :: T.Text
  } deriving (Eq, Show)
defaultRos1Pal_control_msgsCurrentLimitResponse :: Ros1Pal_control_msgsCurrentLimitResponse
defaultRos1Pal_control_msgsCurrentLimitResponse = Ros1Pal_control_msgsCurrentLimitResponse (T.empty)
ros1Pal_control_msgsCurrentLimitResponseCodecIdentity :: String
ros1Pal_control_msgsCurrentLimitResponseCodecIdentity = "UWVMROS1_e3b16641e9b7be7b3cb0cf7198a63b41ebd0b38eb7dc6b7bd9263650279b0c37"
encodeRos1Pal_control_msgsCurrentLimitResponse :: Ros1Pal_control_msgsCurrentLimitResponse -> Either Word32 B.ByteString
encodeRos1Pal_control_msgsCurrentLimitResponse value = do
  b0 <- W.encodeText 128 True (ros1Pal_control_msgsCurrentLimitResponse_status value)
  W.bounded 132 [b0]
readRos1Pal_control_msgsCurrentLimitResponse :: W.Decoder Ros1Pal_control_msgsCurrentLimitResponse
readRos1Pal_control_msgsCurrentLimitResponse = do
  a0 <- W.text 128 True
  let value = Ros1Pal_control_msgsCurrentLimitResponse a0
  case encodeRos1Pal_control_msgsCurrentLimitResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_control_msgsCurrentLimitResponse :: B.ByteString -> Either Word32 Ros1Pal_control_msgsCurrentLimitResponse
decodeRos1Pal_control_msgsCurrentLimitResponse = W.runDecoder 132 readRos1Pal_control_msgsCurrentLimitResponse
instance Canonical Ros1Pal_control_msgsCurrentLimitResponse where
  maximumBytes _ = 132
  encodeValue = encodeRos1Pal_control_msgsCurrentLimitResponse
  readValue = readRos1Pal_control_msgsCurrentLimitResponse
data Ros1Pal_control_msgsMotionManagerGoal = Ros1Pal_control_msgsMotionManagerGoal
  {
    -- | \@brief pal_control_msgs/MotionManagerGoal.filename: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_control_msgsMotionManagerGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_control_msgsMotionManagerGoal_filename :: T.Text
  ,
    -- | \@brief pal_control_msgs/MotionManagerGoal.plan: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_control_msgsMotionManagerGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_control_msgsMotionManagerGoal_plan :: Bool
  ,
    -- | \@brief pal_control_msgs/MotionManagerGoal.checkSafety: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_control_msgsMotionManagerGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_control_msgsMotionManagerGoal_checkSafety :: Bool
  ,
    -- | \@brief pal_control_msgs/MotionManagerGoal.repeat: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_control_msgsMotionManagerGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_control_msgsMotionManagerGoal_repeat :: Bool
  ,
    -- | \@brief pal_control_msgs/MotionManagerGoal.priority: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_control_msgsMotionManagerGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_control_msgsMotionManagerGoal_priority :: Word8
  ,
    -- | \@brief pal_control_msgs/MotionManagerGoal.queueTimeout: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_control_msgsMotionManagerGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_control_msgsMotionManagerGoal_queueTimeout :: Int32
  } deriving (Eq, Show)
defaultRos1Pal_control_msgsMotionManagerGoal :: Ros1Pal_control_msgsMotionManagerGoal
defaultRos1Pal_control_msgsMotionManagerGoal = Ros1Pal_control_msgsMotionManagerGoal (T.empty) (False) (False) (False) (0) (0)
ros1Pal_control_msgsMotionManagerGoalCodecIdentity :: String
ros1Pal_control_msgsMotionManagerGoalCodecIdentity = "UWVMROS1_d2191004950c3f14c8fd71cc2c59cbe39eb76a3c521327293e7355f88e8d2383"
encodeRos1Pal_control_msgsMotionManagerGoal :: Ros1Pal_control_msgsMotionManagerGoal -> Either Word32 B.ByteString
encodeRos1Pal_control_msgsMotionManagerGoal value = do
  b0 <- W.encodeText 128 True (ros1Pal_control_msgsMotionManagerGoal_filename value)
  b1 <- W.encodeBool (ros1Pal_control_msgsMotionManagerGoal_plan value)
  b2 <- W.encodeBool (ros1Pal_control_msgsMotionManagerGoal_checkSafety value)
  b3 <- W.encodeBool (ros1Pal_control_msgsMotionManagerGoal_repeat value)
  b4 <- W.encodeUnsigned 1 (fromIntegral (ros1Pal_control_msgsMotionManagerGoal_priority value))
  b5 <- W.encodeSigned 4 (fromIntegral (ros1Pal_control_msgsMotionManagerGoal_queueTimeout value))
  W.bounded 140 [b0, b1, b2, b3, b4, b5]
readRos1Pal_control_msgsMotionManagerGoal :: W.Decoder Ros1Pal_control_msgsMotionManagerGoal
readRos1Pal_control_msgsMotionManagerGoal = do
  a0 <- W.text 128 True
  a1 <- W.boolean
  a2 <- W.boolean
  a3 <- W.boolean
  a4 <- fromIntegral <$> W.unsigned 1
  a5 <- fromIntegral <$> W.signed 4
  let value = Ros1Pal_control_msgsMotionManagerGoal a0 a1 a2 a3 a4 a5
  case encodeRos1Pal_control_msgsMotionManagerGoal value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_control_msgsMotionManagerGoal :: B.ByteString -> Either Word32 Ros1Pal_control_msgsMotionManagerGoal
decodeRos1Pal_control_msgsMotionManagerGoal = W.runDecoder 140 readRos1Pal_control_msgsMotionManagerGoal
instance Canonical Ros1Pal_control_msgsMotionManagerGoal where
  maximumBytes _ = 140
  encodeValue = encodeRos1Pal_control_msgsMotionManagerGoal
  readValue = readRos1Pal_control_msgsMotionManagerGoal
data Ros1Pal_control_msgsMotionManagerResult = Ros1Pal_control_msgsMotionManagerResult
  {
    -- | \@brief pal_control_msgs/MotionManagerResult.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_control_msgsMotionManagerResult; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_control_msgsMotionManagerResult_message :: T.Text
  } deriving (Eq, Show)
defaultRos1Pal_control_msgsMotionManagerResult :: Ros1Pal_control_msgsMotionManagerResult
defaultRos1Pal_control_msgsMotionManagerResult = Ros1Pal_control_msgsMotionManagerResult (T.empty)
ros1Pal_control_msgsMotionManagerResultCodecIdentity :: String
ros1Pal_control_msgsMotionManagerResultCodecIdentity = "UWVMROS1_8c9a1d39fe8d1a23621b871bb0752196123c9eab96c31055c384d0056da3165c"
encodeRos1Pal_control_msgsMotionManagerResult :: Ros1Pal_control_msgsMotionManagerResult -> Either Word32 B.ByteString
encodeRos1Pal_control_msgsMotionManagerResult value = do
  b0 <- W.encodeText 128 True (ros1Pal_control_msgsMotionManagerResult_message value)
  W.bounded 132 [b0]
readRos1Pal_control_msgsMotionManagerResult :: W.Decoder Ros1Pal_control_msgsMotionManagerResult
readRos1Pal_control_msgsMotionManagerResult = do
  a0 <- W.text 128 True
  let value = Ros1Pal_control_msgsMotionManagerResult a0
  case encodeRos1Pal_control_msgsMotionManagerResult value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_control_msgsMotionManagerResult :: B.ByteString -> Either Word32 Ros1Pal_control_msgsMotionManagerResult
decodeRos1Pal_control_msgsMotionManagerResult = W.runDecoder 132 readRos1Pal_control_msgsMotionManagerResult
instance Canonical Ros1Pal_control_msgsMotionManagerResult where
  maximumBytes _ = 132
  encodeValue = encodeRos1Pal_control_msgsMotionManagerResult
  readValue = readRos1Pal_control_msgsMotionManagerResult
data Ros1Pal_control_msgsMotionManagerFeedback = Ros1Pal_control_msgsMotionManagerFeedback deriving (Eq, Show)
defaultRos1Pal_control_msgsMotionManagerFeedback :: Ros1Pal_control_msgsMotionManagerFeedback
defaultRos1Pal_control_msgsMotionManagerFeedback = Ros1Pal_control_msgsMotionManagerFeedback 
ros1Pal_control_msgsMotionManagerFeedbackCodecIdentity :: String
ros1Pal_control_msgsMotionManagerFeedbackCodecIdentity = "UWVMROS1_90343a2a84a0db6a4730b7c9cb437ba55e9dd30c10b662db6dabe561ecf48009"
encodeRos1Pal_control_msgsMotionManagerFeedback :: Ros1Pal_control_msgsMotionManagerFeedback -> Either Word32 B.ByteString
encodeRos1Pal_control_msgsMotionManagerFeedback value = do
  W.bounded 0 []
readRos1Pal_control_msgsMotionManagerFeedback :: W.Decoder Ros1Pal_control_msgsMotionManagerFeedback
readRos1Pal_control_msgsMotionManagerFeedback = do
  let value = Ros1Pal_control_msgsMotionManagerFeedback 
  case encodeRos1Pal_control_msgsMotionManagerFeedback value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_control_msgsMotionManagerFeedback :: B.ByteString -> Either Word32 Ros1Pal_control_msgsMotionManagerFeedback
decodeRos1Pal_control_msgsMotionManagerFeedback = W.runDecoder 0 readRos1Pal_control_msgsMotionManagerFeedback
instance Canonical Ros1Pal_control_msgsMotionManagerFeedback where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_control_msgsMotionManagerFeedback
  readValue = readRos1Pal_control_msgsMotionManagerFeedback
data Ros1Duration = Ros1Duration
  {
    -- | \@brief duration.sec: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Duration; document/platform/pal/en_US/language/haskell/API.md
    ros1Duration_sec :: Int32
  ,
    -- | \@brief duration.nsec: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Duration; document/platform/pal/en_US/language/haskell/API.md
    ros1Duration_nsec :: Int32
  } deriving (Eq, Show)
defaultRos1Duration :: Ros1Duration
defaultRos1Duration = Ros1Duration (0) (0)
ros1DurationCodecIdentity :: String
ros1DurationCodecIdentity = "UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8"
encodeRos1Duration :: Ros1Duration -> Either Word32 B.ByteString
encodeRos1Duration value = do
  if (ros1Duration_nsec value) >= 1000000000 || (ros1Duration_nsec value) < 0 then Left 22 else Right ()
  b0 <- W.encodeSigned 4 (fromIntegral (ros1Duration_sec value))
  b1 <- W.encodeSigned 4 (fromIntegral (ros1Duration_nsec value))
  W.bounded 8 [b0, b1]
readRos1Duration :: W.Decoder Ros1Duration
readRos1Duration = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- fromIntegral <$> W.signed 4
  let value = Ros1Duration a0 a1
  case encodeRos1Duration value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Duration :: B.ByteString -> Either Word32 Ros1Duration
decodeRos1Duration = W.runDecoder 8 readRos1Duration
instance Canonical Ros1Duration where
  maximumBytes _ = 8
  encodeValue = encodeRos1Duration
  readValue = readRos1Duration
data Ros1Pal_control_msgsOperationalSpaceGoal = Ros1Pal_control_msgsOperationalSpaceGoal
  {
    -- | \@brief pal_control_msgs/OperationalSpaceGoal.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_control_msgsOperationalSpaceGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_control_msgsOperationalSpaceGoal_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief pal_control_msgs/OperationalSpaceGoal.has_vel: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_control_msgsOperationalSpaceGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_control_msgsOperationalSpaceGoal_has_vel :: Bool
  ,
    -- | \@brief pal_control_msgs/OperationalSpaceGoal.has_accel: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_control_msgsOperationalSpaceGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_control_msgsOperationalSpaceGoal_has_accel :: Bool
  ,
    -- | \@brief pal_control_msgs/OperationalSpaceGoal.duration: duration.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_control_msgsOperationalSpaceGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_control_msgsOperationalSpaceGoal_duration :: Ros1Duration
  ,
    -- | \@brief pal_control_msgs/OperationalSpaceGoal.pose: geometry_msgs/Pose.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_control_msgsOperationalSpaceGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_control_msgsOperationalSpaceGoal_pose :: Ros1Geometry_msgsPose
  ,
    -- | \@brief pal_control_msgs/OperationalSpaceGoal.velocity: geometry_msgs/Twist.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_control_msgsOperationalSpaceGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_control_msgsOperationalSpaceGoal_velocity :: Ros1Geometry_msgsTwist
  ,
    -- | \@brief pal_control_msgs/OperationalSpaceGoal.acceleration: geometry_msgs/Accel.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_control_msgsOperationalSpaceGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_control_msgsOperationalSpaceGoal_acceleration :: Ros1Geometry_msgsAccel
  } deriving (Eq, Show)
defaultRos1Pal_control_msgsOperationalSpaceGoal :: Ros1Pal_control_msgsOperationalSpaceGoal
defaultRos1Pal_control_msgsOperationalSpaceGoal =
    Ros1Pal_control_msgsOperationalSpaceGoal
    (defaultRos1Std_msgsHeader)
    (False)
    (False)
    (defaultRos1Duration)
    (defaultRos1Geometry_msgsPose)
    (defaultRos1Geometry_msgsTwist)
    (defaultRos1Geometry_msgsAccel)
ros1Pal_control_msgsOperationalSpaceGoalCodecIdentity :: String
ros1Pal_control_msgsOperationalSpaceGoalCodecIdentity = "UWVMROS1_c2a633eaaae880b4becdac4e48068d798b121a63ed50339ae5f8eb455416c752"
encodeRos1Pal_control_msgsOperationalSpaceGoal :: Ros1Pal_control_msgsOperationalSpaceGoal -> Either Word32 B.ByteString
encodeRos1Pal_control_msgsOperationalSpaceGoal value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Pal_control_msgsOperationalSpaceGoal_header value)
  b1 <- W.encodeBool (ros1Pal_control_msgsOperationalSpaceGoal_has_vel value)
  b2 <- W.encodeBool (ros1Pal_control_msgsOperationalSpaceGoal_has_accel value)
  b3 <- encodeRos1Duration (ros1Pal_control_msgsOperationalSpaceGoal_duration value)
  b4 <- encodeRos1Geometry_msgsPose (ros1Pal_control_msgsOperationalSpaceGoal_pose value)
  b5 <- encodeRos1Geometry_msgsTwist (ros1Pal_control_msgsOperationalSpaceGoal_velocity value)
  b6 <- encodeRos1Geometry_msgsAccel (ros1Pal_control_msgsOperationalSpaceGoal_acceleration value)
  W.bounded 306 [b0, b1, b2, b3, b4, b5, b6]
readRos1Pal_control_msgsOperationalSpaceGoal :: W.Decoder Ros1Pal_control_msgsOperationalSpaceGoal
readRos1Pal_control_msgsOperationalSpaceGoal = do
  a0 <- readRos1Std_msgsHeader
  a1 <- W.boolean
  a2 <- W.boolean
  a3 <- readRos1Duration
  a4 <- readRos1Geometry_msgsPose
  a5 <- readRos1Geometry_msgsTwist
  a6 <- readRos1Geometry_msgsAccel
  let value = Ros1Pal_control_msgsOperationalSpaceGoal a0 a1 a2 a3 a4 a5 a6
  case encodeRos1Pal_control_msgsOperationalSpaceGoal value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_control_msgsOperationalSpaceGoal :: B.ByteString -> Either Word32 Ros1Pal_control_msgsOperationalSpaceGoal
decodeRos1Pal_control_msgsOperationalSpaceGoal = W.runDecoder 306 readRos1Pal_control_msgsOperationalSpaceGoal
instance Canonical Ros1Pal_control_msgsOperationalSpaceGoal where
  maximumBytes _ = 306
  encodeValue = encodeRos1Pal_control_msgsOperationalSpaceGoal
  readValue = readRos1Pal_control_msgsOperationalSpaceGoal
data Ros1Pal_control_msgsRigidBodyTrajectoryPoint = Ros1Pal_control_msgsRigidBodyTrajectoryPoint
  {
    -- | \@brief pal_control_msgs/RigidBodyTrajectoryPoint.duration: duration.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_control_msgsRigidBodyTrajectoryPoint; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_control_msgsRigidBodyTrajectoryPoint_duration :: Ros1Duration
  ,
    -- | \@brief pal_control_msgs/RigidBodyTrajectoryPoint.pose: geometry_msgs/Pose.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_control_msgsRigidBodyTrajectoryPoint; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_control_msgsRigidBodyTrajectoryPoint_pose :: Ros1Geometry_msgsPose
  ,
    -- | \@brief pal_control_msgs/RigidBodyTrajectoryPoint.velocity: geometry_msgs/Twist.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_control_msgsRigidBodyTrajectoryPoint; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_control_msgsRigidBodyTrajectoryPoint_velocity :: Ros1Geometry_msgsTwist
  ,
    -- | \@brief pal_control_msgs/RigidBodyTrajectoryPoint.acceleration: geometry_msgs/Accel.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_control_msgsRigidBodyTrajectoryPoint; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_control_msgsRigidBodyTrajectoryPoint_acceleration :: Ros1Geometry_msgsAccel
  } deriving (Eq, Show)
defaultRos1Pal_control_msgsRigidBodyTrajectoryPoint :: Ros1Pal_control_msgsRigidBodyTrajectoryPoint
defaultRos1Pal_control_msgsRigidBodyTrajectoryPoint =
    Ros1Pal_control_msgsRigidBodyTrajectoryPoint
    (defaultRos1Duration)
    (defaultRos1Geometry_msgsPose)
    (defaultRos1Geometry_msgsTwist)
    (defaultRos1Geometry_msgsAccel)
ros1Pal_control_msgsRigidBodyTrajectoryPointCodecIdentity :: String
ros1Pal_control_msgsRigidBodyTrajectoryPointCodecIdentity = "UWVMROS1_25a24ab0d2eea5acbd4f1e0e0ba45262aa18750fcfb7cd6e57361ac782006d8f"
encodeRos1Pal_control_msgsRigidBodyTrajectoryPoint :: Ros1Pal_control_msgsRigidBodyTrajectoryPoint -> Either Word32 B.ByteString
encodeRos1Pal_control_msgsRigidBodyTrajectoryPoint value = do
  b0 <- encodeRos1Duration (ros1Pal_control_msgsRigidBodyTrajectoryPoint_duration value)
  b1 <- encodeRos1Geometry_msgsPose (ros1Pal_control_msgsRigidBodyTrajectoryPoint_pose value)
  b2 <- encodeRos1Geometry_msgsTwist (ros1Pal_control_msgsRigidBodyTrajectoryPoint_velocity value)
  b3 <- encodeRos1Geometry_msgsAccel (ros1Pal_control_msgsRigidBodyTrajectoryPoint_acceleration value)
  W.bounded 160 [b0, b1, b2, b3]
readRos1Pal_control_msgsRigidBodyTrajectoryPoint :: W.Decoder Ros1Pal_control_msgsRigidBodyTrajectoryPoint
readRos1Pal_control_msgsRigidBodyTrajectoryPoint = do
  a0 <- readRos1Duration
  a1 <- readRos1Geometry_msgsPose
  a2 <- readRos1Geometry_msgsTwist
  a3 <- readRos1Geometry_msgsAccel
  let value = Ros1Pal_control_msgsRigidBodyTrajectoryPoint a0 a1 a2 a3
  case encodeRos1Pal_control_msgsRigidBodyTrajectoryPoint value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_control_msgsRigidBodyTrajectoryPoint :: B.ByteString -> Either Word32 Ros1Pal_control_msgsRigidBodyTrajectoryPoint
decodeRos1Pal_control_msgsRigidBodyTrajectoryPoint = W.runDecoder 160 readRos1Pal_control_msgsRigidBodyTrajectoryPoint
instance Canonical Ros1Pal_control_msgsRigidBodyTrajectoryPoint where
  maximumBytes _ = 160
  encodeValue = encodeRos1Pal_control_msgsRigidBodyTrajectoryPoint
  readValue = readRos1Pal_control_msgsRigidBodyTrajectoryPoint
data Ros1Pal_control_msgsRigidBodyTrajectoryGoal = Ros1Pal_control_msgsRigidBodyTrajectoryGoal
  {
    -- | \@brief pal_control_msgs/RigidBodyTrajectoryGoal.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_control_msgsRigidBodyTrajectoryGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_control_msgsRigidBodyTrajectoryGoal_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief pal_control_msgs/RigidBodyTrajectoryGoal.interpolation_type: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_control_msgsRigidBodyTrajectoryGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_control_msgsRigidBodyTrajectoryGoal_interpolation_type :: Int8
  ,
    -- | \@brief pal_control_msgs/RigidBodyTrajectoryGoal.trajectory: pal_control_msgs/RigidBodyTrajectoryPoint; 0..4 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_control_msgsRigidBodyTrajectoryGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_control_msgsRigidBodyTrajectoryGoal_trajectory :: [Ros1Pal_control_msgsRigidBodyTrajectoryPoint]
  } deriving (Eq, Show)
defaultRos1Pal_control_msgsRigidBodyTrajectoryGoal :: Ros1Pal_control_msgsRigidBodyTrajectoryGoal
defaultRos1Pal_control_msgsRigidBodyTrajectoryGoal = Ros1Pal_control_msgsRigidBodyTrajectoryGoal (defaultRos1Std_msgsHeader) (0) ([])
ros1Pal_control_msgsRigidBodyTrajectoryGoalCodecIdentity :: String
ros1Pal_control_msgsRigidBodyTrajectoryGoalCodecIdentity = "UWVMROS1_03623f36fd48567680ea44e05f1e8fceb65f85bbbbfc9c76e19005deb2b2f599"
encodeRos1Pal_control_msgsRigidBodyTrajectoryGoal :: Ros1Pal_control_msgsRigidBodyTrajectoryGoal -> Either Word32 B.ByteString
encodeRos1Pal_control_msgsRigidBodyTrajectoryGoal value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Pal_control_msgsRigidBodyTrajectoryGoal_header value)
  b1 <- W.encodeSigned 1 (fromIntegral (ros1Pal_control_msgsRigidBodyTrajectoryGoal_interpolation_type value))
  if length (ros1Pal_control_msgsRigidBodyTrajectoryGoal_trajectory value) > 4 then Left 22 else Right ()
  prefix2 <- W.encodeCount 4 (length (ros1Pal_control_msgsRigidBodyTrajectoryGoal_trajectory value))
  b2 <- B.concat <$> mapM (\e -> encodeRos1Pal_control_msgsRigidBodyTrajectoryPoint (e)) (ros1Pal_control_msgsRigidBodyTrajectoryGoal_trajectory value)
  W.bounded 789 [b0, b1, prefix2, b2]
readRos1Pal_control_msgsRigidBodyTrajectoryGoal :: W.Decoder Ros1Pal_control_msgsRigidBodyTrajectoryGoal
readRos1Pal_control_msgsRigidBodyTrajectoryGoal = do
  a0 <- readRos1Std_msgsHeader
  a1 <- fromIntegral <$> W.signed 1
  count2 <- W.count 4
  a2 <- replicateM count2 (readRos1Pal_control_msgsRigidBodyTrajectoryPoint)
  let value = Ros1Pal_control_msgsRigidBodyTrajectoryGoal a0 a1 a2
  case encodeRos1Pal_control_msgsRigidBodyTrajectoryGoal value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_control_msgsRigidBodyTrajectoryGoal :: B.ByteString -> Either Word32 Ros1Pal_control_msgsRigidBodyTrajectoryGoal
decodeRos1Pal_control_msgsRigidBodyTrajectoryGoal = W.runDecoder 789 readRos1Pal_control_msgsRigidBodyTrajectoryGoal
instance Canonical Ros1Pal_control_msgsRigidBodyTrajectoryGoal where
  maximumBytes _ = 789
  encodeValue = encodeRos1Pal_control_msgsRigidBodyTrajectoryGoal
  readValue = readRos1Pal_control_msgsRigidBodyTrajectoryGoal
data Ros1Pal_control_msgsRigidBodyTrajectoryResult = Ros1Pal_control_msgsRigidBodyTrajectoryResult
  {
    -- | \@brief pal_control_msgs/RigidBodyTrajectoryResult.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_control_msgsRigidBodyTrajectoryResult; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_control_msgsRigidBodyTrajectoryResult_message :: T.Text
  } deriving (Eq, Show)
defaultRos1Pal_control_msgsRigidBodyTrajectoryResult :: Ros1Pal_control_msgsRigidBodyTrajectoryResult
defaultRos1Pal_control_msgsRigidBodyTrajectoryResult = Ros1Pal_control_msgsRigidBodyTrajectoryResult (T.empty)
ros1Pal_control_msgsRigidBodyTrajectoryResultCodecIdentity :: String
ros1Pal_control_msgsRigidBodyTrajectoryResultCodecIdentity = "UWVMROS1_7f2a255f550c28c0d817ada4d3a0419b4d44347d0d9050821395a65ae6431f9f"
encodeRos1Pal_control_msgsRigidBodyTrajectoryResult :: Ros1Pal_control_msgsRigidBodyTrajectoryResult -> Either Word32 B.ByteString
encodeRos1Pal_control_msgsRigidBodyTrajectoryResult value = do
  b0 <- W.encodeText 128 True (ros1Pal_control_msgsRigidBodyTrajectoryResult_message value)
  W.bounded 132 [b0]
readRos1Pal_control_msgsRigidBodyTrajectoryResult :: W.Decoder Ros1Pal_control_msgsRigidBodyTrajectoryResult
readRos1Pal_control_msgsRigidBodyTrajectoryResult = do
  a0 <- W.text 128 True
  let value = Ros1Pal_control_msgsRigidBodyTrajectoryResult a0
  case encodeRos1Pal_control_msgsRigidBodyTrajectoryResult value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_control_msgsRigidBodyTrajectoryResult :: B.ByteString -> Either Word32 Ros1Pal_control_msgsRigidBodyTrajectoryResult
decodeRos1Pal_control_msgsRigidBodyTrajectoryResult = W.runDecoder 132 readRos1Pal_control_msgsRigidBodyTrajectoryResult
instance Canonical Ros1Pal_control_msgsRigidBodyTrajectoryResult where
  maximumBytes _ = 132
  encodeValue = encodeRos1Pal_control_msgsRigidBodyTrajectoryResult
  readValue = readRos1Pal_control_msgsRigidBodyTrajectoryResult
data Ros1Pal_control_msgsRigidBodyTrajectoryFeedback = Ros1Pal_control_msgsRigidBodyTrajectoryFeedback deriving (Eq, Show)
defaultRos1Pal_control_msgsRigidBodyTrajectoryFeedback :: Ros1Pal_control_msgsRigidBodyTrajectoryFeedback
defaultRos1Pal_control_msgsRigidBodyTrajectoryFeedback = Ros1Pal_control_msgsRigidBodyTrajectoryFeedback 
ros1Pal_control_msgsRigidBodyTrajectoryFeedbackCodecIdentity :: String
ros1Pal_control_msgsRigidBodyTrajectoryFeedbackCodecIdentity = "UWVMROS1_2ea6f2ce67dcc51782fa6db213b7a9e0c758b608961efc1e0783c8f14dbabd96"
encodeRos1Pal_control_msgsRigidBodyTrajectoryFeedback :: Ros1Pal_control_msgsRigidBodyTrajectoryFeedback -> Either Word32 B.ByteString
encodeRos1Pal_control_msgsRigidBodyTrajectoryFeedback value = do
  W.bounded 0 []
readRos1Pal_control_msgsRigidBodyTrajectoryFeedback :: W.Decoder Ros1Pal_control_msgsRigidBodyTrajectoryFeedback
readRos1Pal_control_msgsRigidBodyTrajectoryFeedback = do
  let value = Ros1Pal_control_msgsRigidBodyTrajectoryFeedback 
  case encodeRos1Pal_control_msgsRigidBodyTrajectoryFeedback value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_control_msgsRigidBodyTrajectoryFeedback :: B.ByteString -> Either Word32 Ros1Pal_control_msgsRigidBodyTrajectoryFeedback
decodeRos1Pal_control_msgsRigidBodyTrajectoryFeedback = W.runDecoder 0 readRos1Pal_control_msgsRigidBodyTrajectoryFeedback
instance Canonical Ros1Pal_control_msgsRigidBodyTrajectoryFeedback where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_control_msgsRigidBodyTrajectoryFeedback
  readValue = readRos1Pal_control_msgsRigidBodyTrajectoryFeedback
data Ros1Sensor_msgsImage = Ros1Sensor_msgsImage
  {
    -- | \@brief sensor_msgs/Image.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsImage; document/platform/pal/en_US/language/haskell/API.md
    ros1Sensor_msgsImage_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief sensor_msgs/Image.height: uint32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsImage; document/platform/pal/en_US/language/haskell/API.md
    ros1Sensor_msgsImage_height :: Word32
  ,
    -- | \@brief sensor_msgs/Image.width: uint32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsImage; document/platform/pal/en_US/language/haskell/API.md
    ros1Sensor_msgsImage_width :: Word32
  ,
    -- | \@brief sensor_msgs/Image.encoding: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsImage; document/platform/pal/en_US/language/haskell/API.md
    ros1Sensor_msgsImage_encoding :: T.Text
  ,
    -- | \@brief sensor_msgs/Image.is_bigendian: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsImage; document/platform/pal/en_US/language/haskell/API.md
    ros1Sensor_msgsImage_is_bigendian :: Word8
  ,
    -- | \@brief sensor_msgs/Image.step: uint32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsImage; document/platform/pal/en_US/language/haskell/API.md
    ros1Sensor_msgsImage_step :: Word32
  ,
    -- | \@brief sensor_msgs/Image.data: uint8; 0..4096 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsImage; document/platform/pal/en_US/language/haskell/API.md
    ros1Sensor_msgsImage_data :: [Word8]
  } deriving (Eq, Show)
defaultRos1Sensor_msgsImage :: Ros1Sensor_msgsImage
defaultRos1Sensor_msgsImage = Ros1Sensor_msgsImage (defaultRos1Std_msgsHeader) (0) (0) (T.empty) (0) (0) ([])
ros1Sensor_msgsImageCodecIdentity :: String
ros1Sensor_msgsImageCodecIdentity = "UWVMROS1_da3bee65c72205c46f51ab123a4399369df1a0a1419c32fdcd350f16bd5f76ce"
encodeRos1Sensor_msgsImage :: Ros1Sensor_msgsImage -> Either Word32 B.ByteString
encodeRos1Sensor_msgsImage value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Sensor_msgsImage_header value)
  b1 <- W.encodeUnsigned 4 (fromIntegral (ros1Sensor_msgsImage_height value))
  b2 <- W.encodeUnsigned 4 (fromIntegral (ros1Sensor_msgsImage_width value))
  b3 <- W.encodeText 128 True (ros1Sensor_msgsImage_encoding value)
  b4 <- W.encodeUnsigned 1 (fromIntegral (ros1Sensor_msgsImage_is_bigendian value))
  b5 <- W.encodeUnsigned 4 (fromIntegral (ros1Sensor_msgsImage_step value))
  if length (ros1Sensor_msgsImage_data value) > 4096 then Left 22 else Right ()
  prefix6 <- W.encodeCount 4096 (length (ros1Sensor_msgsImage_data value))
  b6 <- B.concat <$> mapM (\e -> W.encodeUnsigned 1 (fromIntegral (e))) (ros1Sensor_msgsImage_data value)
  W.bounded 4389 [b0, b1, b2, b3, b4, b5, prefix6, b6]
readRos1Sensor_msgsImage :: W.Decoder Ros1Sensor_msgsImage
readRos1Sensor_msgsImage = do
  a0 <- readRos1Std_msgsHeader
  a1 <- fromIntegral <$> W.unsigned 4
  a2 <- fromIntegral <$> W.unsigned 4
  a3 <- W.text 128 True
  a4 <- fromIntegral <$> W.unsigned 1
  a5 <- fromIntegral <$> W.unsigned 4
  count6 <- W.count 4096
  a6 <- replicateM count6 (fromIntegral <$> W.unsigned 1)
  let value = Ros1Sensor_msgsImage a0 a1 a2 a3 a4 a5 a6
  case encodeRos1Sensor_msgsImage value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Sensor_msgsImage :: B.ByteString -> Either Word32 Ros1Sensor_msgsImage
decodeRos1Sensor_msgsImage = W.runDecoder 4389 readRos1Sensor_msgsImage
instance Canonical Ros1Sensor_msgsImage where
  maximumBytes _ = 4389
  encodeValue = encodeRos1Sensor_msgsImage
  readValue = readRos1Sensor_msgsImage
data Ros1Pal_detection_msgsAddTexturedObjectRequest = Ros1Pal_detection_msgsAddTexturedObjectRequest
  {
    -- | \@brief pal_detection_msgs/AddTexturedObjectRequest.img: sensor_msgs/Image.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsAddTexturedObjectRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsAddTexturedObjectRequest_img :: Ros1Sensor_msgsImage
  ,
    -- | \@brief pal_detection_msgs/AddTexturedObjectRequest.fullPathFileName: string; each string is 0..128
    --  bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsAddTexturedObjectRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsAddTexturedObjectRequest_fullPathFileName :: T.Text
  } deriving (Eq, Show)
defaultRos1Pal_detection_msgsAddTexturedObjectRequest :: Ros1Pal_detection_msgsAddTexturedObjectRequest
defaultRos1Pal_detection_msgsAddTexturedObjectRequest = Ros1Pal_detection_msgsAddTexturedObjectRequest (defaultRos1Sensor_msgsImage) (T.empty)
ros1Pal_detection_msgsAddTexturedObjectRequestCodecIdentity :: String
ros1Pal_detection_msgsAddTexturedObjectRequestCodecIdentity = "UWVMROS1_0462d396de70e5db24dbbe0dab8c326f81120356b4d632fd3b56b433d89f616d"
encodeRos1Pal_detection_msgsAddTexturedObjectRequest :: Ros1Pal_detection_msgsAddTexturedObjectRequest -> Either Word32 B.ByteString
encodeRos1Pal_detection_msgsAddTexturedObjectRequest value = do
  b0 <- encodeRos1Sensor_msgsImage (ros1Pal_detection_msgsAddTexturedObjectRequest_img value)
  b1 <- W.encodeText 128 True (ros1Pal_detection_msgsAddTexturedObjectRequest_fullPathFileName value)
  W.bounded 4521 [b0, b1]
readRos1Pal_detection_msgsAddTexturedObjectRequest :: W.Decoder Ros1Pal_detection_msgsAddTexturedObjectRequest
readRos1Pal_detection_msgsAddTexturedObjectRequest = do
  a0 <- readRos1Sensor_msgsImage
  a1 <- W.text 128 True
  let value = Ros1Pal_detection_msgsAddTexturedObjectRequest a0 a1
  case encodeRos1Pal_detection_msgsAddTexturedObjectRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_detection_msgsAddTexturedObjectRequest :: B.ByteString -> Either Word32 Ros1Pal_detection_msgsAddTexturedObjectRequest
decodeRos1Pal_detection_msgsAddTexturedObjectRequest = W.runDecoder 4521 readRos1Pal_detection_msgsAddTexturedObjectRequest
instance Canonical Ros1Pal_detection_msgsAddTexturedObjectRequest where
  maximumBytes _ = 4521
  encodeValue = encodeRos1Pal_detection_msgsAddTexturedObjectRequest
  readValue = readRos1Pal_detection_msgsAddTexturedObjectRequest
data Ros1Pal_detection_msgsAddTexturedObjectResponse = Ros1Pal_detection_msgsAddTexturedObjectResponse
  {
    -- | \@brief pal_detection_msgs/AddTexturedObjectResponse.result: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsAddTexturedObjectResponse; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsAddTexturedObjectResponse_result :: Bool
  } deriving (Eq, Show)
defaultRos1Pal_detection_msgsAddTexturedObjectResponse :: Ros1Pal_detection_msgsAddTexturedObjectResponse
defaultRos1Pal_detection_msgsAddTexturedObjectResponse = Ros1Pal_detection_msgsAddTexturedObjectResponse (False)
ros1Pal_detection_msgsAddTexturedObjectResponseCodecIdentity :: String
ros1Pal_detection_msgsAddTexturedObjectResponseCodecIdentity = "UWVMROS1_6eb1d5f37f64d4f141251e607533ebf037973dc704dbcf3e06d4fb8d2c86ee1d"
encodeRos1Pal_detection_msgsAddTexturedObjectResponse :: Ros1Pal_detection_msgsAddTexturedObjectResponse -> Either Word32 B.ByteString
encodeRos1Pal_detection_msgsAddTexturedObjectResponse value = do
  b0 <- W.encodeBool (ros1Pal_detection_msgsAddTexturedObjectResponse_result value)
  W.bounded 1 [b0]
readRos1Pal_detection_msgsAddTexturedObjectResponse :: W.Decoder Ros1Pal_detection_msgsAddTexturedObjectResponse
readRos1Pal_detection_msgsAddTexturedObjectResponse = do
  a0 <- W.boolean
  let value = Ros1Pal_detection_msgsAddTexturedObjectResponse a0
  case encodeRos1Pal_detection_msgsAddTexturedObjectResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_detection_msgsAddTexturedObjectResponse :: B.ByteString -> Either Word32 Ros1Pal_detection_msgsAddTexturedObjectResponse
decodeRos1Pal_detection_msgsAddTexturedObjectResponse = W.runDecoder 1 readRos1Pal_detection_msgsAddTexturedObjectResponse
instance Canonical Ros1Pal_detection_msgsAddTexturedObjectResponse where
  maximumBytes _ = 1
  encodeValue = encodeRos1Pal_detection_msgsAddTexturedObjectResponse
  readValue = readRos1Pal_detection_msgsAddTexturedObjectResponse
data Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest = Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest
  {
    -- | \@brief pal_detection_msgs/ChangeObjectRecognizerModelRequest.model_name: string; each string is
    --  0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsChangeObjectRecognizerModelRequest_model_name :: T.Text
  ,
    -- | \@brief pal_detection_msgs/ChangeObjectRecognizerModelRequest.reset_desired_classes_param: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsChangeObjectRecognizerModelRequest_reset_desired_classes_param :: Bool
  } deriving (Eq, Show)
defaultRos1Pal_detection_msgsChangeObjectRecognizerModelRequest :: Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest
defaultRos1Pal_detection_msgsChangeObjectRecognizerModelRequest = Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest (T.empty) (False)
ros1Pal_detection_msgsChangeObjectRecognizerModelRequestCodecIdentity :: String
ros1Pal_detection_msgsChangeObjectRecognizerModelRequestCodecIdentity = "UWVMROS1_d8071195e710803f51bfd07d74bd9450c5ce1ca21b464414ad806695692e0342"
encodeRos1Pal_detection_msgsChangeObjectRecognizerModelRequest :: Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest -> Either Word32 B.ByteString
encodeRos1Pal_detection_msgsChangeObjectRecognizerModelRequest value = do
  b0 <- W.encodeText 128 True (ros1Pal_detection_msgsChangeObjectRecognizerModelRequest_model_name value)
  b1 <- W.encodeBool (ros1Pal_detection_msgsChangeObjectRecognizerModelRequest_reset_desired_classes_param value)
  W.bounded 133 [b0, b1]
readRos1Pal_detection_msgsChangeObjectRecognizerModelRequest :: W.Decoder Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest
readRos1Pal_detection_msgsChangeObjectRecognizerModelRequest = do
  a0 <- W.text 128 True
  a1 <- W.boolean
  let value = Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest a0 a1
  case encodeRos1Pal_detection_msgsChangeObjectRecognizerModelRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_detection_msgsChangeObjectRecognizerModelRequest :: B.ByteString -> Either Word32 Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest
decodeRos1Pal_detection_msgsChangeObjectRecognizerModelRequest = W.runDecoder 133 readRos1Pal_detection_msgsChangeObjectRecognizerModelRequest
instance Canonical Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest where
  maximumBytes _ = 133
  encodeValue = encodeRos1Pal_detection_msgsChangeObjectRecognizerModelRequest
  readValue = readRos1Pal_detection_msgsChangeObjectRecognizerModelRequest
data Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse = Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse
  {
    -- | \@brief pal_detection_msgs/ChangeObjectRecognizerModelResponse.status: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsChangeObjectRecognizerModelResponse_status :: Bool
  } deriving (Eq, Show)
defaultRos1Pal_detection_msgsChangeObjectRecognizerModelResponse :: Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse
defaultRos1Pal_detection_msgsChangeObjectRecognizerModelResponse = Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse (False)
ros1Pal_detection_msgsChangeObjectRecognizerModelResponseCodecIdentity :: String
ros1Pal_detection_msgsChangeObjectRecognizerModelResponseCodecIdentity = "UWVMROS1_cd5c9ca75201a47ae2eb04ec69ecea7762257b946bb2777a2c7224b51515775d"
encodeRos1Pal_detection_msgsChangeObjectRecognizerModelResponse :: Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse -> Either Word32 B.ByteString
encodeRos1Pal_detection_msgsChangeObjectRecognizerModelResponse value = do
  b0 <- W.encodeBool (ros1Pal_detection_msgsChangeObjectRecognizerModelResponse_status value)
  W.bounded 1 [b0]
readRos1Pal_detection_msgsChangeObjectRecognizerModelResponse :: W.Decoder Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse
readRos1Pal_detection_msgsChangeObjectRecognizerModelResponse = do
  a0 <- W.boolean
  let value = Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse a0
  case encodeRos1Pal_detection_msgsChangeObjectRecognizerModelResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_detection_msgsChangeObjectRecognizerModelResponse :: B.ByteString -> Either Word32 Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse
decodeRos1Pal_detection_msgsChangeObjectRecognizerModelResponse = W.runDecoder 1 readRos1Pal_detection_msgsChangeObjectRecognizerModelResponse
instance Canonical Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse where
  maximumBytes _ = 1
  encodeValue = encodeRos1Pal_detection_msgsChangeObjectRecognizerModelResponse
  readValue = readRos1Pal_detection_msgsChangeObjectRecognizerModelResponse
data Ros1Pal_detection_msgsDetection2d = Ros1Pal_detection_msgsDetection2d
  {
    -- | \@brief pal_detection_msgs/Detection2d.x: int64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsDetection2d; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsDetection2d_x :: Int64
  ,
    -- | \@brief pal_detection_msgs/Detection2d.y: int64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsDetection2d; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsDetection2d_y :: Int64
  ,
    -- | \@brief pal_detection_msgs/Detection2d.width: int64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsDetection2d; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsDetection2d_width :: Int64
  ,
    -- | \@brief pal_detection_msgs/Detection2d.height: int64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsDetection2d; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsDetection2d_height :: Int64
  } deriving (Eq, Show)
defaultRos1Pal_detection_msgsDetection2d :: Ros1Pal_detection_msgsDetection2d
defaultRos1Pal_detection_msgsDetection2d = Ros1Pal_detection_msgsDetection2d (0) (0) (0) (0)
ros1Pal_detection_msgsDetection2dCodecIdentity :: String
ros1Pal_detection_msgsDetection2dCodecIdentity = "UWVMROS1_4f0e64fd7996b772586fce060823565b53147a7b29456c8a3b5f8fa48e81663e"
encodeRos1Pal_detection_msgsDetection2d :: Ros1Pal_detection_msgsDetection2d -> Either Word32 B.ByteString
encodeRos1Pal_detection_msgsDetection2d value = do
  b0 <- W.encodeSigned 8 (fromIntegral (ros1Pal_detection_msgsDetection2d_x value))
  b1 <- W.encodeSigned 8 (fromIntegral (ros1Pal_detection_msgsDetection2d_y value))
  b2 <- W.encodeSigned 8 (fromIntegral (ros1Pal_detection_msgsDetection2d_width value))
  b3 <- W.encodeSigned 8 (fromIntegral (ros1Pal_detection_msgsDetection2d_height value))
  W.bounded 32 [b0, b1, b2, b3]
readRos1Pal_detection_msgsDetection2d :: W.Decoder Ros1Pal_detection_msgsDetection2d
readRos1Pal_detection_msgsDetection2d = do
  a0 <- fromIntegral <$> W.signed 8
  a1 <- fromIntegral <$> W.signed 8
  a2 <- fromIntegral <$> W.signed 8
  a3 <- fromIntegral <$> W.signed 8
  let value = Ros1Pal_detection_msgsDetection2d a0 a1 a2 a3
  case encodeRos1Pal_detection_msgsDetection2d value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_detection_msgsDetection2d :: B.ByteString -> Either Word32 Ros1Pal_detection_msgsDetection2d
decodeRos1Pal_detection_msgsDetection2d = W.runDecoder 32 readRos1Pal_detection_msgsDetection2d
instance Canonical Ros1Pal_detection_msgsDetection2d where
  maximumBytes _ = 32
  encodeValue = encodeRos1Pal_detection_msgsDetection2d
  readValue = readRos1Pal_detection_msgsDetection2d
data Ros1Pal_detection_msgsDetections2d = Ros1Pal_detection_msgsDetections2d
  {
    -- | \@brief pal_detection_msgs/Detections2d.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsDetections2d; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsDetections2d_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief pal_detection_msgs/Detections2d.detections: pal_detection_msgs/Detection2d; 0..4 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsDetections2d; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsDetections2d_detections :: [Ros1Pal_detection_msgsDetection2d]
  ,
    -- | \@brief pal_detection_msgs/Detections2d.camera_pose: geometry_msgs/TransformStamped.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsDetections2d; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsDetections2d_camera_pose :: Ros1Geometry_msgsTransformStamped
  } deriving (Eq, Show)
defaultRos1Pal_detection_msgsDetections2d :: Ros1Pal_detection_msgsDetections2d
defaultRos1Pal_detection_msgsDetections2d = Ros1Pal_detection_msgsDetections2d (defaultRos1Std_msgsHeader) ([]) (defaultRos1Geometry_msgsTransformStamped)
ros1Pal_detection_msgsDetections2dCodecIdentity :: String
ros1Pal_detection_msgsDetections2dCodecIdentity = "UWVMROS1_0b21e2e5d47b2e4e46f46506940a84b3df0acef77d7e3c66716bc9cc7b0b8e04"
encodeRos1Pal_detection_msgsDetections2d :: Ros1Pal_detection_msgsDetections2d -> Either Word32 B.ByteString
encodeRos1Pal_detection_msgsDetections2d value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Pal_detection_msgsDetections2d_header value)
  if length (ros1Pal_detection_msgsDetections2d_detections value) > 4 then Left 22 else Right ()
  prefix1 <- W.encodeCount 4 (length (ros1Pal_detection_msgsDetections2d_detections value))
  b1 <- B.concat <$> mapM (\e -> encodeRos1Pal_detection_msgsDetection2d (e)) (ros1Pal_detection_msgsDetections2d_detections value)
  b2 <- encodeRos1Geometry_msgsTransformStamped (ros1Pal_detection_msgsDetections2d_camera_pose value)
  W.bounded 608 [b0, prefix1, b1, b2]
readRos1Pal_detection_msgsDetections2d :: W.Decoder Ros1Pal_detection_msgsDetections2d
readRos1Pal_detection_msgsDetections2d = do
  a0 <- readRos1Std_msgsHeader
  count1 <- W.count 4
  a1 <- replicateM count1 (readRos1Pal_detection_msgsDetection2d)
  a2 <- readRos1Geometry_msgsTransformStamped
  let value = Ros1Pal_detection_msgsDetections2d a0 a1 a2
  case encodeRos1Pal_detection_msgsDetections2d value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_detection_msgsDetections2d :: B.ByteString -> Either Word32 Ros1Pal_detection_msgsDetections2d
decodeRos1Pal_detection_msgsDetections2d = W.runDecoder 608 readRos1Pal_detection_msgsDetections2d
instance Canonical Ros1Pal_detection_msgsDetections2d where
  maximumBytes _ = 608
  encodeValue = encodeRos1Pal_detection_msgsDetections2d
  readValue = readRos1Pal_detection_msgsDetections2d
data Ros1Pal_detection_msgsFaceDetection = Ros1Pal_detection_msgsFaceDetection
  {
    -- | \@brief pal_detection_msgs/FaceDetection.x: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsFaceDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsFaceDetection_x :: Int32
  ,
    -- | \@brief pal_detection_msgs/FaceDetection.y: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsFaceDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsFaceDetection_y :: Int32
  ,
    -- | \@brief pal_detection_msgs/FaceDetection.width: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsFaceDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsFaceDetection_width :: Int32
  ,
    -- | \@brief pal_detection_msgs/FaceDetection.height: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsFaceDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsFaceDetection_height :: Int32
  ,
    -- | \@brief pal_detection_msgs/FaceDetection.eyesLocated: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsFaceDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsFaceDetection_eyesLocated :: Bool
  ,
    -- | \@brief pal_detection_msgs/FaceDetection.leftEyeX: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsFaceDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsFaceDetection_leftEyeX :: Int32
  ,
    -- | \@brief pal_detection_msgs/FaceDetection.leftEyeY: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsFaceDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsFaceDetection_leftEyeY :: Int32
  ,
    -- | \@brief pal_detection_msgs/FaceDetection.rightEyeX: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsFaceDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsFaceDetection_rightEyeX :: Int32
  ,
    -- | \@brief pal_detection_msgs/FaceDetection.rightEyeY: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsFaceDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsFaceDetection_rightEyeY :: Int32
  ,
    -- | \@brief pal_detection_msgs/FaceDetection.position: geometry_msgs/Point32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsFaceDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsFaceDetection_position :: Ros1Geometry_msgsPoint32
  ,
    -- | \@brief pal_detection_msgs/FaceDetection.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsFaceDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsFaceDetection_name :: T.Text
  ,
    -- | \@brief pal_detection_msgs/FaceDetection.confidence: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsFaceDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsFaceDetection_confidence :: Float
  ,
    -- | \@brief pal_detection_msgs/FaceDetection.gender: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsFaceDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsFaceDetection_gender :: T.Text
  ,
    -- | \@brief pal_detection_msgs/FaceDetection.genderConfidence: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsFaceDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsFaceDetection_genderConfidence :: Float
  ,
    -- | \@brief pal_detection_msgs/FaceDetection.expression: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsFaceDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsFaceDetection_expression :: T.Text
  ,
    -- | \@brief pal_detection_msgs/FaceDetection.expression_confidence: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsFaceDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsFaceDetection_expression_confidence :: Float
  ,
    -- | \@brief pal_detection_msgs/FaceDetection.emotion_anger_confidence: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsFaceDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsFaceDetection_emotion_anger_confidence :: Float
  ,
    -- | \@brief pal_detection_msgs/FaceDetection.emotion_disgust_confidence: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsFaceDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsFaceDetection_emotion_disgust_confidence :: Float
  ,
    -- | \@brief pal_detection_msgs/FaceDetection.emotion_fear_confidence: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsFaceDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsFaceDetection_emotion_fear_confidence :: Float
  ,
    -- | \@brief pal_detection_msgs/FaceDetection.emotion_happiness_confidence: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsFaceDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsFaceDetection_emotion_happiness_confidence :: Float
  ,
    -- | \@brief pal_detection_msgs/FaceDetection.emotion_neutral_confidence: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsFaceDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsFaceDetection_emotion_neutral_confidence :: Float
  ,
    -- | \@brief pal_detection_msgs/FaceDetection.emotion_sadness_confidence: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsFaceDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsFaceDetection_emotion_sadness_confidence :: Float
  ,
    -- | \@brief pal_detection_msgs/FaceDetection.emotion_surprise_confidence: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsFaceDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsFaceDetection_emotion_surprise_confidence :: Float
  } deriving (Eq, Show)
defaultRos1Pal_detection_msgsFaceDetection :: Ros1Pal_detection_msgsFaceDetection
defaultRos1Pal_detection_msgsFaceDetection =
    Ros1Pal_detection_msgsFaceDetection
    (0)
    (0)
    (0)
    (0)
    (False)
    (0)
    (0)
    (0)
    (0)
    (defaultRos1Geometry_msgsPoint32)
    (T.empty)
    (0)
    (T.empty)
    (0)
    (T.empty)
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
    (0)
ros1Pal_detection_msgsFaceDetectionCodecIdentity :: String
ros1Pal_detection_msgsFaceDetectionCodecIdentity = "UWVMROS1_792fe21dbe06a6a47493a66571ff9b324dba17447855965b2e4f3e79cd302395"
ros1Pal_detection_msgsFaceDetection_EXPRESSION_NEUTRAL :: T.Text
ros1Pal_detection_msgsFaceDetection_EXPRESSION_NEUTRAL = T.pack [toEnum 0x6e, toEnum 0x65, toEnum 0x75, toEnum 0x74, toEnum 0x72, toEnum 0x61, toEnum 0x6c]
ros1Pal_detection_msgsFaceDetection_EXPRESSION_SMILE :: T.Text
ros1Pal_detection_msgsFaceDetection_EXPRESSION_SMILE = T.pack [toEnum 0x73, toEnum 0x6d, toEnum 0x69, toEnum 0x6c, toEnum 0x65]
ros1Pal_detection_msgsFaceDetection_EXPRESSION_RAISED_BROWS :: T.Text
ros1Pal_detection_msgsFaceDetection_EXPRESSION_RAISED_BROWS = T.pack [toEnum 0x72, toEnum 0x61, toEnum 0x69, toEnum 0x73, toEnum 0x65, toEnum 0x64,
    toEnum 0x20, toEnum 0x62, toEnum 0x72, toEnum 0x6f, toEnum 0x77, toEnum 0x73]
ros1Pal_detection_msgsFaceDetection_EXPRESSION_EYES_AWAY :: T.Text
ros1Pal_detection_msgsFaceDetection_EXPRESSION_EYES_AWAY = T.pack [toEnum 0x65, toEnum 0x79, toEnum 0x65, toEnum 0x73, toEnum 0x20, toEnum 0x61,
    toEnum 0x77, toEnum 0x61, toEnum 0x79]
ros1Pal_detection_msgsFaceDetection_EXPRESSION_SQUINTING :: T.Text
ros1Pal_detection_msgsFaceDetection_EXPRESSION_SQUINTING = T.pack [toEnum 0x73, toEnum 0x71, toEnum 0x75, toEnum 0x69, toEnum 0x6e, toEnum 0x74,
    toEnum 0x69, toEnum 0x6e, toEnum 0x67]
ros1Pal_detection_msgsFaceDetection_EXPRESSION_FROWNING :: T.Text
ros1Pal_detection_msgsFaceDetection_EXPRESSION_FROWNING = T.pack [toEnum 0x66, toEnum 0x72, toEnum 0x6f, toEnum 0x77, toEnum 0x6e, toEnum 0x69, toEnum 0x6e, toEnum 0x67]
encodeRos1Pal_detection_msgsFaceDetection :: Ros1Pal_detection_msgsFaceDetection -> Either Word32 B.ByteString
encodeRos1Pal_detection_msgsFaceDetection value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros1Pal_detection_msgsFaceDetection_x value))
  b1 <- W.encodeSigned 4 (fromIntegral (ros1Pal_detection_msgsFaceDetection_y value))
  b2 <- W.encodeSigned 4 (fromIntegral (ros1Pal_detection_msgsFaceDetection_width value))
  b3 <- W.encodeSigned 4 (fromIntegral (ros1Pal_detection_msgsFaceDetection_height value))
  b4 <- W.encodeBool (ros1Pal_detection_msgsFaceDetection_eyesLocated value)
  b5 <- W.encodeSigned 4 (fromIntegral (ros1Pal_detection_msgsFaceDetection_leftEyeX value))
  b6 <- W.encodeSigned 4 (fromIntegral (ros1Pal_detection_msgsFaceDetection_leftEyeY value))
  b7 <- W.encodeSigned 4 (fromIntegral (ros1Pal_detection_msgsFaceDetection_rightEyeX value))
  b8 <- W.encodeSigned 4 (fromIntegral (ros1Pal_detection_msgsFaceDetection_rightEyeY value))
  b9 <- encodeRos1Geometry_msgsPoint32 (ros1Pal_detection_msgsFaceDetection_position value)
  b10 <- W.encodeText 128 True (ros1Pal_detection_msgsFaceDetection_name value)
  b11 <- W.encodeFloat32 (ros1Pal_detection_msgsFaceDetection_confidence value)
  b12 <- W.encodeText 128 True (ros1Pal_detection_msgsFaceDetection_gender value)
  b13 <- W.encodeFloat32 (ros1Pal_detection_msgsFaceDetection_genderConfidence value)
  b14 <- W.encodeText 128 True (ros1Pal_detection_msgsFaceDetection_expression value)
  b15 <- W.encodeFloat32 (ros1Pal_detection_msgsFaceDetection_expression_confidence value)
  b16 <- W.encodeFloat32 (ros1Pal_detection_msgsFaceDetection_emotion_anger_confidence value)
  b17 <- W.encodeFloat32 (ros1Pal_detection_msgsFaceDetection_emotion_disgust_confidence value)
  b18 <- W.encodeFloat32 (ros1Pal_detection_msgsFaceDetection_emotion_fear_confidence value)
  b19 <- W.encodeFloat32 (ros1Pal_detection_msgsFaceDetection_emotion_happiness_confidence value)
  b20 <- W.encodeFloat32 (ros1Pal_detection_msgsFaceDetection_emotion_neutral_confidence value)
  b21 <- W.encodeFloat32 (ros1Pal_detection_msgsFaceDetection_emotion_sadness_confidence value)
  b22 <- W.encodeFloat32 (ros1Pal_detection_msgsFaceDetection_emotion_surprise_confidence value)
  W.bounded 481 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15, b16, b17, b18, b19, b20, b21, b22]
readRos1Pal_detection_msgsFaceDetection :: W.Decoder Ros1Pal_detection_msgsFaceDetection
readRos1Pal_detection_msgsFaceDetection = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- fromIntegral <$> W.signed 4
  a2 <- fromIntegral <$> W.signed 4
  a3 <- fromIntegral <$> W.signed 4
  a4 <- W.boolean
  a5 <- fromIntegral <$> W.signed 4
  a6 <- fromIntegral <$> W.signed 4
  a7 <- fromIntegral <$> W.signed 4
  a8 <- fromIntegral <$> W.signed 4
  a9 <- readRos1Geometry_msgsPoint32
  a10 <- W.text 128 True
  a11 <- W.float32
  a12 <- W.text 128 True
  a13 <- W.float32
  a14 <- W.text 128 True
  a15 <- W.float32
  a16 <- W.float32
  a17 <- W.float32
  a18 <- W.float32
  a19 <- W.float32
  a20 <- W.float32
  a21 <- W.float32
  a22 <- W.float32
  let value = Ros1Pal_detection_msgsFaceDetection a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22
  case encodeRos1Pal_detection_msgsFaceDetection value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_detection_msgsFaceDetection :: B.ByteString -> Either Word32 Ros1Pal_detection_msgsFaceDetection
decodeRos1Pal_detection_msgsFaceDetection = W.runDecoder 481 readRos1Pal_detection_msgsFaceDetection
instance Canonical Ros1Pal_detection_msgsFaceDetection where
  maximumBytes _ = 481
  encodeValue = encodeRos1Pal_detection_msgsFaceDetection
  readValue = readRos1Pal_detection_msgsFaceDetection
data Ros1Pal_detection_msgsFaceDetections = Ros1Pal_detection_msgsFaceDetections
  {
    -- | \@brief pal_detection_msgs/FaceDetections.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsFaceDetections; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsFaceDetections_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief pal_detection_msgs/FaceDetections.faces: pal_detection_msgs/FaceDetection; 0..4 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsFaceDetections; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsFaceDetections_faces :: [Ros1Pal_detection_msgsFaceDetection]
  ,
    -- | \@brief pal_detection_msgs/FaceDetections.camera_pose: geometry_msgs/TransformStamped.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsFaceDetections; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsFaceDetections_camera_pose :: Ros1Geometry_msgsTransformStamped
  } deriving (Eq, Show)
defaultRos1Pal_detection_msgsFaceDetections :: Ros1Pal_detection_msgsFaceDetections
defaultRos1Pal_detection_msgsFaceDetections =
    Ros1Pal_detection_msgsFaceDetections
    (defaultRos1Std_msgsHeader)
    ([])
    (defaultRos1Geometry_msgsTransformStamped)
ros1Pal_detection_msgsFaceDetectionsCodecIdentity :: String
ros1Pal_detection_msgsFaceDetectionsCodecIdentity = "UWVMROS1_ee4b1061b4a4d0bd25f5f2ae4725248e53c82181ab685036cc246100f6019a4b"
encodeRos1Pal_detection_msgsFaceDetections :: Ros1Pal_detection_msgsFaceDetections -> Either Word32 B.ByteString
encodeRos1Pal_detection_msgsFaceDetections value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Pal_detection_msgsFaceDetections_header value)
  if length (ros1Pal_detection_msgsFaceDetections_faces value) > 4 then Left 22 else Right ()
  prefix1 <- W.encodeCount 4 (length (ros1Pal_detection_msgsFaceDetections_faces value))
  b1 <- B.concat <$> mapM (\e -> encodeRos1Pal_detection_msgsFaceDetection (e)) (ros1Pal_detection_msgsFaceDetections_faces value)
  b2 <- encodeRos1Geometry_msgsTransformStamped (ros1Pal_detection_msgsFaceDetections_camera_pose value)
  W.bounded 2404 [b0, prefix1, b1, b2]
readRos1Pal_detection_msgsFaceDetections :: W.Decoder Ros1Pal_detection_msgsFaceDetections
readRos1Pal_detection_msgsFaceDetections = do
  a0 <- readRos1Std_msgsHeader
  count1 <- W.count 4
  a1 <- replicateM count1 (readRos1Pal_detection_msgsFaceDetection)
  a2 <- readRos1Geometry_msgsTransformStamped
  let value = Ros1Pal_detection_msgsFaceDetections a0 a1 a2
  case encodeRos1Pal_detection_msgsFaceDetections value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_detection_msgsFaceDetections :: B.ByteString -> Either Word32 Ros1Pal_detection_msgsFaceDetections
decodeRos1Pal_detection_msgsFaceDetections = W.runDecoder 2404 readRos1Pal_detection_msgsFaceDetections
instance Canonical Ros1Pal_detection_msgsFaceDetections where
  maximumBytes _ = 2404
  encodeValue = encodeRos1Pal_detection_msgsFaceDetections
  readValue = readRos1Pal_detection_msgsFaceDetections
data Ros1Sensor_msgsRegionOfInterest = Ros1Sensor_msgsRegionOfInterest
  {
    -- | \@brief sensor_msgs/RegionOfInterest.x_offset: uint32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsRegionOfInterest; document/platform/pal/en_US/language/haskell/API.md
    ros1Sensor_msgsRegionOfInterest_x_offset :: Word32
  ,
    -- | \@brief sensor_msgs/RegionOfInterest.y_offset: uint32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsRegionOfInterest; document/platform/pal/en_US/language/haskell/API.md
    ros1Sensor_msgsRegionOfInterest_y_offset :: Word32
  ,
    -- | \@brief sensor_msgs/RegionOfInterest.height: uint32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsRegionOfInterest; document/platform/pal/en_US/language/haskell/API.md
    ros1Sensor_msgsRegionOfInterest_height :: Word32
  ,
    -- | \@brief sensor_msgs/RegionOfInterest.width: uint32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsRegionOfInterest; document/platform/pal/en_US/language/haskell/API.md
    ros1Sensor_msgsRegionOfInterest_width :: Word32
  ,
    -- | \@brief sensor_msgs/RegionOfInterest.do_rectify: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsRegionOfInterest; document/platform/pal/en_US/language/haskell/API.md
    ros1Sensor_msgsRegionOfInterest_do_rectify :: Bool
  } deriving (Eq, Show)
defaultRos1Sensor_msgsRegionOfInterest :: Ros1Sensor_msgsRegionOfInterest
defaultRos1Sensor_msgsRegionOfInterest = Ros1Sensor_msgsRegionOfInterest (0) (0) (0) (0) (False)
ros1Sensor_msgsRegionOfInterestCodecIdentity :: String
ros1Sensor_msgsRegionOfInterestCodecIdentity = "UWVMROS1_28eb54e504fa3d32a4848f5b534e998656e34ce4fee49fd120b0fd729e569c86"
encodeRos1Sensor_msgsRegionOfInterest :: Ros1Sensor_msgsRegionOfInterest -> Either Word32 B.ByteString
encodeRos1Sensor_msgsRegionOfInterest value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Sensor_msgsRegionOfInterest_x_offset value))
  b1 <- W.encodeUnsigned 4 (fromIntegral (ros1Sensor_msgsRegionOfInterest_y_offset value))
  b2 <- W.encodeUnsigned 4 (fromIntegral (ros1Sensor_msgsRegionOfInterest_height value))
  b3 <- W.encodeUnsigned 4 (fromIntegral (ros1Sensor_msgsRegionOfInterest_width value))
  b4 <- W.encodeBool (ros1Sensor_msgsRegionOfInterest_do_rectify value)
  W.bounded 17 [b0, b1, b2, b3, b4]
readRos1Sensor_msgsRegionOfInterest :: W.Decoder Ros1Sensor_msgsRegionOfInterest
readRos1Sensor_msgsRegionOfInterest = do
  a0 <- fromIntegral <$> W.unsigned 4
  a1 <- fromIntegral <$> W.unsigned 4
  a2 <- fromIntegral <$> W.unsigned 4
  a3 <- fromIntegral <$> W.unsigned 4
  a4 <- W.boolean
  let value = Ros1Sensor_msgsRegionOfInterest a0 a1 a2 a3 a4
  case encodeRos1Sensor_msgsRegionOfInterest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Sensor_msgsRegionOfInterest :: B.ByteString -> Either Word32 Ros1Sensor_msgsRegionOfInterest
decodeRos1Sensor_msgsRegionOfInterest = W.runDecoder 17 readRos1Sensor_msgsRegionOfInterest
instance Canonical Ros1Sensor_msgsRegionOfInterest where
  maximumBytes _ = 17
  encodeValue = encodeRos1Sensor_msgsRegionOfInterest
  readValue = readRos1Sensor_msgsRegionOfInterest
data Ros1Pal_detection_msgsFaceThermalDetections = Ros1Pal_detection_msgsFaceThermalDetections
  {
    -- | \@brief pal_detection_msgs/FaceThermalDetections.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsFaceThermalDetections; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsFaceThermalDetections_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief pal_detection_msgs/FaceThermalDetections.faces: sensor_msgs/RegionOfInterest; 0..4 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsFaceThermalDetections; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsFaceThermalDetections_faces :: [Ros1Sensor_msgsRegionOfInterest]
  } deriving (Eq, Show)
defaultRos1Pal_detection_msgsFaceThermalDetections :: Ros1Pal_detection_msgsFaceThermalDetections
defaultRos1Pal_detection_msgsFaceThermalDetections = Ros1Pal_detection_msgsFaceThermalDetections (defaultRos1Std_msgsHeader) ([])
ros1Pal_detection_msgsFaceThermalDetectionsCodecIdentity :: String
ros1Pal_detection_msgsFaceThermalDetectionsCodecIdentity = "UWVMROS1_056b2da5537a5a7a7cb428e134dc11c22e271780146febf7af837a516fb9b07d"
encodeRos1Pal_detection_msgsFaceThermalDetections :: Ros1Pal_detection_msgsFaceThermalDetections -> Either Word32 B.ByteString
encodeRos1Pal_detection_msgsFaceThermalDetections value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Pal_detection_msgsFaceThermalDetections_header value)
  if length (ros1Pal_detection_msgsFaceThermalDetections_faces value) > 4 then Left 22 else Right ()
  prefix1 <- W.encodeCount 4 (length (ros1Pal_detection_msgsFaceThermalDetections_faces value))
  b1 <- B.concat <$> mapM (\e -> encodeRos1Sensor_msgsRegionOfInterest (e)) (ros1Pal_detection_msgsFaceThermalDetections_faces value)
  W.bounded 216 [b0, prefix1, b1]
readRos1Pal_detection_msgsFaceThermalDetections :: W.Decoder Ros1Pal_detection_msgsFaceThermalDetections
readRos1Pal_detection_msgsFaceThermalDetections = do
  a0 <- readRos1Std_msgsHeader
  count1 <- W.count 4
  a1 <- replicateM count1 (readRos1Sensor_msgsRegionOfInterest)
  let value = Ros1Pal_detection_msgsFaceThermalDetections a0 a1
  case encodeRos1Pal_detection_msgsFaceThermalDetections value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_detection_msgsFaceThermalDetections :: B.ByteString -> Either Word32 Ros1Pal_detection_msgsFaceThermalDetections
decodeRos1Pal_detection_msgsFaceThermalDetections = W.runDecoder 216 readRos1Pal_detection_msgsFaceThermalDetections
instance Canonical Ros1Pal_detection_msgsFaceThermalDetections where
  maximumBytes _ = 216
  encodeValue = encodeRos1Pal_detection_msgsFaceThermalDetections
  readValue = readRos1Pal_detection_msgsFaceThermalDetections
data Ros1Pal_detection_msgsGesture = Ros1Pal_detection_msgsGesture
  {
    -- | \@brief pal_detection_msgs/Gesture.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsGesture; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsGesture_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief pal_detection_msgs/Gesture.gestureId: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsGesture; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsGesture_gestureId :: T.Text
  ,
    -- | \@brief pal_detection_msgs/Gesture.position3D: geometry_msgs/Point.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsGesture; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsGesture_position3D :: Ros1Geometry_msgsPoint
  } deriving (Eq, Show)
defaultRos1Pal_detection_msgsGesture :: Ros1Pal_detection_msgsGesture
defaultRos1Pal_detection_msgsGesture = Ros1Pal_detection_msgsGesture (defaultRos1Std_msgsHeader) (T.empty) (defaultRos1Geometry_msgsPoint)
ros1Pal_detection_msgsGestureCodecIdentity :: String
ros1Pal_detection_msgsGestureCodecIdentity = "UWVMROS1_d9a3e3adffc40a24a70a967fa616ee81a8d21eb08d7656830e0915cd0945ac38"
encodeRos1Pal_detection_msgsGesture :: Ros1Pal_detection_msgsGesture -> Either Word32 B.ByteString
encodeRos1Pal_detection_msgsGesture value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Pal_detection_msgsGesture_header value)
  b1 <- W.encodeText 128 True (ros1Pal_detection_msgsGesture_gestureId value)
  b2 <- encodeRos1Geometry_msgsPoint (ros1Pal_detection_msgsGesture_position3D value)
  W.bounded 300 [b0, b1, b2]
readRos1Pal_detection_msgsGesture :: W.Decoder Ros1Pal_detection_msgsGesture
readRos1Pal_detection_msgsGesture = do
  a0 <- readRos1Std_msgsHeader
  a1 <- W.text 128 True
  a2 <- readRos1Geometry_msgsPoint
  let value = Ros1Pal_detection_msgsGesture a0 a1 a2
  case encodeRos1Pal_detection_msgsGesture value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_detection_msgsGesture :: B.ByteString -> Either Word32 Ros1Pal_detection_msgsGesture
decodeRos1Pal_detection_msgsGesture = W.runDecoder 300 readRos1Pal_detection_msgsGesture
instance Canonical Ros1Pal_detection_msgsGesture where
  maximumBytes _ = 300
  encodeValue = encodeRos1Pal_detection_msgsGesture
  readValue = readRos1Pal_detection_msgsGesture
data Ros1Pal_detection_msgsLegDetections = Ros1Pal_detection_msgsLegDetections
  {
    -- | \@brief pal_detection_msgs/LegDetections.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsLegDetections; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsLegDetections_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief pal_detection_msgs/LegDetections.position3D: geometry_msgs/Point; 0..4 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsLegDetections; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsLegDetections_position3D :: [Ros1Geometry_msgsPoint]
  ,
    -- | \@brief pal_detection_msgs/LegDetections.laser_pose: geometry_msgs/TransformStamped.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsLegDetections; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsLegDetections_laser_pose :: Ros1Geometry_msgsTransformStamped
  } deriving (Eq, Show)
defaultRos1Pal_detection_msgsLegDetections :: Ros1Pal_detection_msgsLegDetections
defaultRos1Pal_detection_msgsLegDetections =
    Ros1Pal_detection_msgsLegDetections
    (defaultRos1Std_msgsHeader)
    ([])
    (defaultRos1Geometry_msgsTransformStamped)
ros1Pal_detection_msgsLegDetectionsCodecIdentity :: String
ros1Pal_detection_msgsLegDetectionsCodecIdentity = "UWVMROS1_eaaabdd63d786de0b4bf51199a211f86024e9f835ede77f9bcf92dc77f67ac1d"
encodeRos1Pal_detection_msgsLegDetections :: Ros1Pal_detection_msgsLegDetections -> Either Word32 B.ByteString
encodeRos1Pal_detection_msgsLegDetections value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Pal_detection_msgsLegDetections_header value)
  if length (ros1Pal_detection_msgsLegDetections_position3D value) > 4 then Left 22 else Right ()
  prefix1 <- W.encodeCount 4 (length (ros1Pal_detection_msgsLegDetections_position3D value))
  b1 <- B.concat <$> mapM (\e -> encodeRos1Geometry_msgsPoint (e)) (ros1Pal_detection_msgsLegDetections_position3D value)
  b2 <- encodeRos1Geometry_msgsTransformStamped (ros1Pal_detection_msgsLegDetections_laser_pose value)
  W.bounded 576 [b0, prefix1, b1, b2]
readRos1Pal_detection_msgsLegDetections :: W.Decoder Ros1Pal_detection_msgsLegDetections
readRos1Pal_detection_msgsLegDetections = do
  a0 <- readRos1Std_msgsHeader
  count1 <- W.count 4
  a1 <- replicateM count1 (readRos1Geometry_msgsPoint)
  a2 <- readRos1Geometry_msgsTransformStamped
  let value = Ros1Pal_detection_msgsLegDetections a0 a1 a2
  case encodeRos1Pal_detection_msgsLegDetections value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_detection_msgsLegDetections :: B.ByteString -> Either Word32 Ros1Pal_detection_msgsLegDetections
decodeRos1Pal_detection_msgsLegDetections = W.runDecoder 576 readRos1Pal_detection_msgsLegDetections
instance Canonical Ros1Pal_detection_msgsLegDetections where
  maximumBytes _ = 576
  encodeValue = encodeRos1Pal_detection_msgsLegDetections
  readValue = readRos1Pal_detection_msgsLegDetections
data Ros1Pal_detection_msgsObstacle = Ros1Pal_detection_msgsObstacle
  {
    -- | \@brief pal_detection_msgs/Obstacle.id: int64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsObstacle; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsObstacle_id :: Int64
  ,
    -- | \@brief pal_detection_msgs/Obstacle.position: geometry_msgs/Point.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsObstacle; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsObstacle_position :: Ros1Geometry_msgsPoint
  ,
    -- | \@brief pal_detection_msgs/Obstacle.position_covariance: float64; exactly 4 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsObstacle; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsObstacle_position_covariance :: [Double]
  ,
    -- | \@brief pal_detection_msgs/Obstacle.width: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsObstacle; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsObstacle_width :: Float
  ,
    -- | \@brief pal_detection_msgs/Obstacle.height: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsObstacle; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsObstacle_height :: Float
  } deriving (Eq, Show)
defaultRos1Pal_detection_msgsObstacle :: Ros1Pal_detection_msgsObstacle
defaultRos1Pal_detection_msgsObstacle = Ros1Pal_detection_msgsObstacle (0) (defaultRos1Geometry_msgsPoint) (replicate 4 (0)) (0) (0)
ros1Pal_detection_msgsObstacleCodecIdentity :: String
ros1Pal_detection_msgsObstacleCodecIdentity = "UWVMROS1_ebc85fb238f48ed8d9d595afd92f5f28c4ead850154e350733e09ec1d407c661"
encodeRos1Pal_detection_msgsObstacle :: Ros1Pal_detection_msgsObstacle -> Either Word32 B.ByteString
encodeRos1Pal_detection_msgsObstacle value = do
  b0 <- W.encodeSigned 8 (fromIntegral (ros1Pal_detection_msgsObstacle_id value))
  b1 <- encodeRos1Geometry_msgsPoint (ros1Pal_detection_msgsObstacle_position value)
  if length (ros1Pal_detection_msgsObstacle_position_covariance value) /= 4 then Left 22 else Right ()
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Pal_detection_msgsObstacle_position_covariance value)
  b3 <- W.encodeFloat32 (ros1Pal_detection_msgsObstacle_width value)
  b4 <- W.encodeFloat32 (ros1Pal_detection_msgsObstacle_height value)
  W.bounded 72 [b0, b1, b2, b3, b4]
readRos1Pal_detection_msgsObstacle :: W.Decoder Ros1Pal_detection_msgsObstacle
readRos1Pal_detection_msgsObstacle = do
  a0 <- fromIntegral <$> W.signed 8
  a1 <- readRos1Geometry_msgsPoint
  a2 <- replicateM 4 (W.float64)
  a3 <- W.float32
  a4 <- W.float32
  let value = Ros1Pal_detection_msgsObstacle a0 a1 a2 a3 a4
  case encodeRos1Pal_detection_msgsObstacle value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_detection_msgsObstacle :: B.ByteString -> Either Word32 Ros1Pal_detection_msgsObstacle
decodeRos1Pal_detection_msgsObstacle = W.runDecoder 72 readRos1Pal_detection_msgsObstacle
instance Canonical Ros1Pal_detection_msgsObstacle where
  maximumBytes _ = 72
  encodeValue = encodeRos1Pal_detection_msgsObstacle
  readValue = readRos1Pal_detection_msgsObstacle
data Ros1Pal_detection_msgsObstacles = Ros1Pal_detection_msgsObstacles
  {
    -- | \@brief pal_detection_msgs/Obstacles.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsObstacles; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsObstacles_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief pal_detection_msgs/Obstacles.obstacles: pal_detection_msgs/Obstacle; 0..4 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsObstacles; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsObstacles_obstacles :: [Ros1Pal_detection_msgsObstacle]
  } deriving (Eq, Show)
defaultRos1Pal_detection_msgsObstacles :: Ros1Pal_detection_msgsObstacles
defaultRos1Pal_detection_msgsObstacles = Ros1Pal_detection_msgsObstacles (defaultRos1Std_msgsHeader) ([])
ros1Pal_detection_msgsObstaclesCodecIdentity :: String
ros1Pal_detection_msgsObstaclesCodecIdentity = "UWVMROS1_4dba9077149d1e00d54b01031f5de9ef885904c00e2ec10b262302fccb86fe7e"
encodeRos1Pal_detection_msgsObstacles :: Ros1Pal_detection_msgsObstacles -> Either Word32 B.ByteString
encodeRos1Pal_detection_msgsObstacles value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Pal_detection_msgsObstacles_header value)
  if length (ros1Pal_detection_msgsObstacles_obstacles value) > 4 then Left 22 else Right ()
  prefix1 <- W.encodeCount 4 (length (ros1Pal_detection_msgsObstacles_obstacles value))
  b1 <- B.concat <$> mapM (\e -> encodeRos1Pal_detection_msgsObstacle (e)) (ros1Pal_detection_msgsObstacles_obstacles value)
  W.bounded 436 [b0, prefix1, b1]
readRos1Pal_detection_msgsObstacles :: W.Decoder Ros1Pal_detection_msgsObstacles
readRos1Pal_detection_msgsObstacles = do
  a0 <- readRos1Std_msgsHeader
  count1 <- W.count 4
  a1 <- replicateM count1 (readRos1Pal_detection_msgsObstacle)
  let value = Ros1Pal_detection_msgsObstacles a0 a1
  case encodeRos1Pal_detection_msgsObstacles value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_detection_msgsObstacles :: B.ByteString -> Either Word32 Ros1Pal_detection_msgsObstacles
decodeRos1Pal_detection_msgsObstacles = W.runDecoder 436 readRos1Pal_detection_msgsObstacles
instance Canonical Ros1Pal_detection_msgsObstacles where
  maximumBytes _ = 436
  encodeValue = encodeRos1Pal_detection_msgsObstacles
  readValue = readRos1Pal_detection_msgsObstacles
data Ros1Pal_detection_msgsPersonDetection = Ros1Pal_detection_msgsPersonDetection
  {
    -- | \@brief pal_detection_msgs/PersonDetection.full_body: pal_detection_msgs/Detection2d.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsPersonDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsPersonDetection_full_body :: Ros1Pal_detection_msgsDetection2d
  ,
    -- | \@brief pal_detection_msgs/PersonDetection.face: pal_detection_msgs/FaceDetection.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsPersonDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsPersonDetection_face :: Ros1Pal_detection_msgsFaceDetection
  ,
    -- | \@brief pal_detection_msgs/PersonDetection.legs: pal_detection_msgs/LegDetections.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsPersonDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsPersonDetection_legs :: Ros1Pal_detection_msgsLegDetections
  ,
    -- | \@brief pal_detection_msgs/PersonDetection.position3D: geometry_msgs/PointStamped.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsPersonDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsPersonDetection_position3D :: Ros1Geometry_msgsPointStamped
  } deriving (Eq, Show)
defaultRos1Pal_detection_msgsPersonDetection :: Ros1Pal_detection_msgsPersonDetection
defaultRos1Pal_detection_msgsPersonDetection =
    Ros1Pal_detection_msgsPersonDetection
    (defaultRos1Pal_detection_msgsDetection2d)
    (defaultRos1Pal_detection_msgsFaceDetection)
    (defaultRos1Pal_detection_msgsLegDetections)
    (defaultRos1Geometry_msgsPointStamped)
ros1Pal_detection_msgsPersonDetectionCodecIdentity :: String
ros1Pal_detection_msgsPersonDetectionCodecIdentity = "UWVMROS1_4da91c014135c4fc077060bdfdde36f82e41d45729fe56642b33b83157d07853"
encodeRos1Pal_detection_msgsPersonDetection :: Ros1Pal_detection_msgsPersonDetection -> Either Word32 B.ByteString
encodeRos1Pal_detection_msgsPersonDetection value = do
  b0 <- encodeRos1Pal_detection_msgsDetection2d (ros1Pal_detection_msgsPersonDetection_full_body value)
  b1 <- encodeRos1Pal_detection_msgsFaceDetection (ros1Pal_detection_msgsPersonDetection_face value)
  b2 <- encodeRos1Pal_detection_msgsLegDetections (ros1Pal_detection_msgsPersonDetection_legs value)
  b3 <- encodeRos1Geometry_msgsPointStamped (ros1Pal_detection_msgsPersonDetection_position3D value)
  W.bounded 1257 [b0, b1, b2, b3]
readRos1Pal_detection_msgsPersonDetection :: W.Decoder Ros1Pal_detection_msgsPersonDetection
readRos1Pal_detection_msgsPersonDetection = do
  a0 <- readRos1Pal_detection_msgsDetection2d
  a1 <- readRos1Pal_detection_msgsFaceDetection
  a2 <- readRos1Pal_detection_msgsLegDetections
  a3 <- readRos1Geometry_msgsPointStamped
  let value = Ros1Pal_detection_msgsPersonDetection a0 a1 a2 a3
  case encodeRos1Pal_detection_msgsPersonDetection value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_detection_msgsPersonDetection :: B.ByteString -> Either Word32 Ros1Pal_detection_msgsPersonDetection
decodeRos1Pal_detection_msgsPersonDetection = W.runDecoder 1257 readRos1Pal_detection_msgsPersonDetection
instance Canonical Ros1Pal_detection_msgsPersonDetection where
  maximumBytes _ = 1257
  encodeValue = encodeRos1Pal_detection_msgsPersonDetection
  readValue = readRos1Pal_detection_msgsPersonDetection
data Ros1Pal_detection_msgsPersonDetections = Ros1Pal_detection_msgsPersonDetections
  {
    -- | \@brief pal_detection_msgs/PersonDetections.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsPersonDetections; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsPersonDetections_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief pal_detection_msgs/PersonDetections.persons: pal_detection_msgs/PersonDetection; 0..4 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsPersonDetections; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsPersonDetections_persons :: [Ros1Pal_detection_msgsPersonDetection]
  ,
    -- | \@brief pal_detection_msgs/PersonDetections.camera_pose: geometry_msgs/TransformStamped.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsPersonDetections; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsPersonDetections_camera_pose :: Ros1Geometry_msgsTransformStamped
  } deriving (Eq, Show)
defaultRos1Pal_detection_msgsPersonDetections :: Ros1Pal_detection_msgsPersonDetections
defaultRos1Pal_detection_msgsPersonDetections =
    Ros1Pal_detection_msgsPersonDetections
    (defaultRos1Std_msgsHeader)
    ([])
    (defaultRos1Geometry_msgsTransformStamped)
ros1Pal_detection_msgsPersonDetectionsCodecIdentity :: String
ros1Pal_detection_msgsPersonDetectionsCodecIdentity = "UWVMROS1_cafbf2a5df82057119e9638012e379e0126c0cb951ca159747ebe69c1ed0fd91"
encodeRos1Pal_detection_msgsPersonDetections :: Ros1Pal_detection_msgsPersonDetections -> Either Word32 B.ByteString
encodeRos1Pal_detection_msgsPersonDetections value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Pal_detection_msgsPersonDetections_header value)
  if length (ros1Pal_detection_msgsPersonDetections_persons value) > 4 then Left 22 else Right ()
  prefix1 <- W.encodeCount 4 (length (ros1Pal_detection_msgsPersonDetections_persons value))
  b1 <- B.concat <$> mapM (\e -> encodeRos1Pal_detection_msgsPersonDetection (e)) (ros1Pal_detection_msgsPersonDetections_persons value)
  b2 <- encodeRos1Geometry_msgsTransformStamped (ros1Pal_detection_msgsPersonDetections_camera_pose value)
  W.bounded 5508 [b0, prefix1, b1, b2]
readRos1Pal_detection_msgsPersonDetections :: W.Decoder Ros1Pal_detection_msgsPersonDetections
readRos1Pal_detection_msgsPersonDetections = do
  a0 <- readRos1Std_msgsHeader
  count1 <- W.count 4
  a1 <- replicateM count1 (readRos1Pal_detection_msgsPersonDetection)
  a2 <- readRos1Geometry_msgsTransformStamped
  let value = Ros1Pal_detection_msgsPersonDetections a0 a1 a2
  case encodeRos1Pal_detection_msgsPersonDetections value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_detection_msgsPersonDetections :: B.ByteString -> Either Word32 Ros1Pal_detection_msgsPersonDetections
decodeRos1Pal_detection_msgsPersonDetections = W.runDecoder 5508 readRos1Pal_detection_msgsPersonDetections
instance Canonical Ros1Pal_detection_msgsPersonDetections where
  maximumBytes _ = 5508
  encodeValue = encodeRos1Pal_detection_msgsPersonDetections
  readValue = readRos1Pal_detection_msgsPersonDetections
data Ros1Sensor_msgsCompressedImage = Ros1Sensor_msgsCompressedImage
  {
    -- | \@brief sensor_msgs/CompressedImage.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsCompressedImage; document/platform/pal/en_US/language/haskell/API.md
    ros1Sensor_msgsCompressedImage_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief sensor_msgs/CompressedImage.format: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsCompressedImage; document/platform/pal/en_US/language/haskell/API.md
    ros1Sensor_msgsCompressedImage_format :: T.Text
  ,
    -- | \@brief sensor_msgs/CompressedImage.data: uint8; 0..4096 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Sensor_msgsCompressedImage; document/platform/pal/en_US/language/haskell/API.md
    ros1Sensor_msgsCompressedImage_data :: [Word8]
  } deriving (Eq, Show)
defaultRos1Sensor_msgsCompressedImage :: Ros1Sensor_msgsCompressedImage
defaultRos1Sensor_msgsCompressedImage = Ros1Sensor_msgsCompressedImage (defaultRos1Std_msgsHeader) (T.empty) ([])
ros1Sensor_msgsCompressedImageCodecIdentity :: String
ros1Sensor_msgsCompressedImageCodecIdentity = "UWVMROS1_c72a32a46b8b10037ccaa32f7c5d403f908eed838df86faf2c7d36344cea958d"
encodeRos1Sensor_msgsCompressedImage :: Ros1Sensor_msgsCompressedImage -> Either Word32 B.ByteString
encodeRos1Sensor_msgsCompressedImage value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Sensor_msgsCompressedImage_header value)
  b1 <- W.encodeText 128 True (ros1Sensor_msgsCompressedImage_format value)
  if length (ros1Sensor_msgsCompressedImage_data value) > 4096 then Left 22 else Right ()
  prefix2 <- W.encodeCount 4096 (length (ros1Sensor_msgsCompressedImage_data value))
  b2 <- B.concat <$> mapM (\e -> W.encodeUnsigned 1 (fromIntegral (e))) (ros1Sensor_msgsCompressedImage_data value)
  W.bounded 4376 [b0, b1, prefix2, b2]
readRos1Sensor_msgsCompressedImage :: W.Decoder Ros1Sensor_msgsCompressedImage
readRos1Sensor_msgsCompressedImage = do
  a0 <- readRos1Std_msgsHeader
  a1 <- W.text 128 True
  count2 <- W.count 4096
  a2 <- replicateM count2 (fromIntegral <$> W.unsigned 1)
  let value = Ros1Sensor_msgsCompressedImage a0 a1 a2
  case encodeRos1Sensor_msgsCompressedImage value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Sensor_msgsCompressedImage :: B.ByteString -> Either Word32 Ros1Sensor_msgsCompressedImage
decodeRos1Sensor_msgsCompressedImage = W.runDecoder 4376 readRos1Sensor_msgsCompressedImage
instance Canonical Ros1Sensor_msgsCompressedImage where
  maximumBytes _ = 4376
  encodeValue = encodeRos1Sensor_msgsCompressedImage
  readValue = readRos1Sensor_msgsCompressedImage
data Ros1Pal_detection_msgsRecognizeObjectsGoal = Ros1Pal_detection_msgsRecognizeObjectsGoal
  {
    -- | \@brief pal_detection_msgs/RecognizeObjectsGoal.input_image: sensor_msgs/CompressedImage.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsRecognizeObjectsGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsRecognizeObjectsGoal_input_image :: Ros1Sensor_msgsCompressedImage
  } deriving (Eq, Show)
defaultRos1Pal_detection_msgsRecognizeObjectsGoal :: Ros1Pal_detection_msgsRecognizeObjectsGoal
defaultRos1Pal_detection_msgsRecognizeObjectsGoal = Ros1Pal_detection_msgsRecognizeObjectsGoal (defaultRos1Sensor_msgsCompressedImage)
ros1Pal_detection_msgsRecognizeObjectsGoalCodecIdentity :: String
ros1Pal_detection_msgsRecognizeObjectsGoalCodecIdentity = "UWVMROS1_9d87bc6c703c50a0b900a7d4bdcefeda5363c5b2f9affe4e9466a3b4f6dfc585"
encodeRos1Pal_detection_msgsRecognizeObjectsGoal :: Ros1Pal_detection_msgsRecognizeObjectsGoal -> Either Word32 B.ByteString
encodeRos1Pal_detection_msgsRecognizeObjectsGoal value = do
  b0 <- encodeRos1Sensor_msgsCompressedImage (ros1Pal_detection_msgsRecognizeObjectsGoal_input_image value)
  W.bounded 4376 [b0]
readRos1Pal_detection_msgsRecognizeObjectsGoal :: W.Decoder Ros1Pal_detection_msgsRecognizeObjectsGoal
readRos1Pal_detection_msgsRecognizeObjectsGoal = do
  a0 <- readRos1Sensor_msgsCompressedImage
  let value = Ros1Pal_detection_msgsRecognizeObjectsGoal a0
  case encodeRos1Pal_detection_msgsRecognizeObjectsGoal value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_detection_msgsRecognizeObjectsGoal :: B.ByteString -> Either Word32 Ros1Pal_detection_msgsRecognizeObjectsGoal
decodeRos1Pal_detection_msgsRecognizeObjectsGoal = W.runDecoder 4376 readRos1Pal_detection_msgsRecognizeObjectsGoal
instance Canonical Ros1Pal_detection_msgsRecognizeObjectsGoal where
  maximumBytes _ = 4376
  encodeValue = encodeRos1Pal_detection_msgsRecognizeObjectsGoal
  readValue = readRos1Pal_detection_msgsRecognizeObjectsGoal
data Ros1Pal_detection_msgsRecognizedObject = Ros1Pal_detection_msgsRecognizedObject
  {
    -- | \@brief pal_detection_msgs/RecognizedObject.object_class: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsRecognizedObject; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsRecognizedObject_object_class :: T.Text
  ,
    -- | \@brief pal_detection_msgs/RecognizedObject.confidence: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsRecognizedObject; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsRecognizedObject_confidence :: Float
  ,
    -- | \@brief pal_detection_msgs/RecognizedObject.bounding_box: sensor_msgs/RegionOfInterest.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsRecognizedObject; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsRecognizedObject_bounding_box :: Ros1Sensor_msgsRegionOfInterest
  } deriving (Eq, Show)
defaultRos1Pal_detection_msgsRecognizedObject :: Ros1Pal_detection_msgsRecognizedObject
defaultRos1Pal_detection_msgsRecognizedObject = Ros1Pal_detection_msgsRecognizedObject (T.empty) (0) (defaultRos1Sensor_msgsRegionOfInterest)
ros1Pal_detection_msgsRecognizedObjectCodecIdentity :: String
ros1Pal_detection_msgsRecognizedObjectCodecIdentity = "UWVMROS1_36cc36b8ff12ed25b3feadadc7e58a76c1e9c57aaa68b2a295c341c5075203fd"
encodeRos1Pal_detection_msgsRecognizedObject :: Ros1Pal_detection_msgsRecognizedObject -> Either Word32 B.ByteString
encodeRos1Pal_detection_msgsRecognizedObject value = do
  b0 <- W.encodeText 128 True (ros1Pal_detection_msgsRecognizedObject_object_class value)
  b1 <- W.encodeFloat32 (ros1Pal_detection_msgsRecognizedObject_confidence value)
  b2 <- encodeRos1Sensor_msgsRegionOfInterest (ros1Pal_detection_msgsRecognizedObject_bounding_box value)
  W.bounded 153 [b0, b1, b2]
readRos1Pal_detection_msgsRecognizedObject :: W.Decoder Ros1Pal_detection_msgsRecognizedObject
readRos1Pal_detection_msgsRecognizedObject = do
  a0 <- W.text 128 True
  a1 <- W.float32
  a2 <- readRos1Sensor_msgsRegionOfInterest
  let value = Ros1Pal_detection_msgsRecognizedObject a0 a1 a2
  case encodeRos1Pal_detection_msgsRecognizedObject value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_detection_msgsRecognizedObject :: B.ByteString -> Either Word32 Ros1Pal_detection_msgsRecognizedObject
decodeRos1Pal_detection_msgsRecognizedObject = W.runDecoder 153 readRos1Pal_detection_msgsRecognizedObject
instance Canonical Ros1Pal_detection_msgsRecognizedObject where
  maximumBytes _ = 153
  encodeValue = encodeRos1Pal_detection_msgsRecognizedObject
  readValue = readRos1Pal_detection_msgsRecognizedObject
data Ros1Pal_detection_msgsRecognizedObjectArray = Ros1Pal_detection_msgsRecognizedObjectArray
  {
    -- | \@brief pal_detection_msgs/RecognizedObjectArray.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsRecognizedObjectArray; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsRecognizedObjectArray_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief pal_detection_msgs/RecognizedObjectArray.objects: pal_detection_msgs/RecognizedObject; 0..4 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsRecognizedObjectArray; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsRecognizedObjectArray_objects :: [Ros1Pal_detection_msgsRecognizedObject]
  } deriving (Eq, Show)
defaultRos1Pal_detection_msgsRecognizedObjectArray :: Ros1Pal_detection_msgsRecognizedObjectArray
defaultRos1Pal_detection_msgsRecognizedObjectArray = Ros1Pal_detection_msgsRecognizedObjectArray (defaultRos1Std_msgsHeader) ([])
ros1Pal_detection_msgsRecognizedObjectArrayCodecIdentity :: String
ros1Pal_detection_msgsRecognizedObjectArrayCodecIdentity = "UWVMROS1_8d781116572e1ba9b5cc79b9d4ae844c64e3ef56a274da3de56cc2400baa51e0"
encodeRos1Pal_detection_msgsRecognizedObjectArray :: Ros1Pal_detection_msgsRecognizedObjectArray -> Either Word32 B.ByteString
encodeRos1Pal_detection_msgsRecognizedObjectArray value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Pal_detection_msgsRecognizedObjectArray_header value)
  if length (ros1Pal_detection_msgsRecognizedObjectArray_objects value) > 4 then Left 22 else Right ()
  prefix1 <- W.encodeCount 4 (length (ros1Pal_detection_msgsRecognizedObjectArray_objects value))
  b1 <- B.concat <$> mapM (\e -> encodeRos1Pal_detection_msgsRecognizedObject (e)) (ros1Pal_detection_msgsRecognizedObjectArray_objects value)
  W.bounded 760 [b0, prefix1, b1]
readRos1Pal_detection_msgsRecognizedObjectArray :: W.Decoder Ros1Pal_detection_msgsRecognizedObjectArray
readRos1Pal_detection_msgsRecognizedObjectArray = do
  a0 <- readRos1Std_msgsHeader
  count1 <- W.count 4
  a1 <- replicateM count1 (readRos1Pal_detection_msgsRecognizedObject)
  let value = Ros1Pal_detection_msgsRecognizedObjectArray a0 a1
  case encodeRos1Pal_detection_msgsRecognizedObjectArray value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_detection_msgsRecognizedObjectArray :: B.ByteString -> Either Word32 Ros1Pal_detection_msgsRecognizedObjectArray
decodeRos1Pal_detection_msgsRecognizedObjectArray = W.runDecoder 760 readRos1Pal_detection_msgsRecognizedObjectArray
instance Canonical Ros1Pal_detection_msgsRecognizedObjectArray where
  maximumBytes _ = 760
  encodeValue = encodeRos1Pal_detection_msgsRecognizedObjectArray
  readValue = readRos1Pal_detection_msgsRecognizedObjectArray
data Ros1Pal_detection_msgsRecognizeObjectsResult = Ros1Pal_detection_msgsRecognizeObjectsResult
  {
    -- | \@brief pal_detection_msgs/RecognizeObjectsResult.image: sensor_msgs/CompressedImage.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsRecognizeObjectsResult; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsRecognizeObjectsResult_image :: Ros1Sensor_msgsCompressedImage
  ,
    -- | \@brief pal_detection_msgs/RecognizeObjectsResult.num_detections: int16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsRecognizeObjectsResult; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsRecognizeObjectsResult_num_detections :: Int16
  ,
    -- | \@brief pal_detection_msgs/RecognizeObjectsResult.recognized_objects: pal_detection_msgs/RecognizedObjectArray.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsRecognizeObjectsResult; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsRecognizeObjectsResult_recognized_objects :: Ros1Pal_detection_msgsRecognizedObjectArray
  } deriving (Eq, Show)
defaultRos1Pal_detection_msgsRecognizeObjectsResult :: Ros1Pal_detection_msgsRecognizeObjectsResult
defaultRos1Pal_detection_msgsRecognizeObjectsResult =
    Ros1Pal_detection_msgsRecognizeObjectsResult
    (defaultRos1Sensor_msgsCompressedImage)
    (0)
    (defaultRos1Pal_detection_msgsRecognizedObjectArray)
ros1Pal_detection_msgsRecognizeObjectsResultCodecIdentity :: String
ros1Pal_detection_msgsRecognizeObjectsResultCodecIdentity = "UWVMROS1_1d30540a71461481094e70b11d19c4a327881fd6ed81689bc948b3de5853b8da"
encodeRos1Pal_detection_msgsRecognizeObjectsResult :: Ros1Pal_detection_msgsRecognizeObjectsResult -> Either Word32 B.ByteString
encodeRos1Pal_detection_msgsRecognizeObjectsResult value = do
  b0 <- encodeRos1Sensor_msgsCompressedImage (ros1Pal_detection_msgsRecognizeObjectsResult_image value)
  b1 <- W.encodeSigned 2 (fromIntegral (ros1Pal_detection_msgsRecognizeObjectsResult_num_detections value))
  b2 <- encodeRos1Pal_detection_msgsRecognizedObjectArray (ros1Pal_detection_msgsRecognizeObjectsResult_recognized_objects value)
  W.bounded 5138 [b0, b1, b2]
readRos1Pal_detection_msgsRecognizeObjectsResult :: W.Decoder Ros1Pal_detection_msgsRecognizeObjectsResult
readRos1Pal_detection_msgsRecognizeObjectsResult = do
  a0 <- readRos1Sensor_msgsCompressedImage
  a1 <- fromIntegral <$> W.signed 2
  a2 <- readRos1Pal_detection_msgsRecognizedObjectArray
  let value = Ros1Pal_detection_msgsRecognizeObjectsResult a0 a1 a2
  case encodeRos1Pal_detection_msgsRecognizeObjectsResult value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_detection_msgsRecognizeObjectsResult :: B.ByteString -> Either Word32 Ros1Pal_detection_msgsRecognizeObjectsResult
decodeRos1Pal_detection_msgsRecognizeObjectsResult = W.runDecoder 5138 readRos1Pal_detection_msgsRecognizeObjectsResult
instance Canonical Ros1Pal_detection_msgsRecognizeObjectsResult where
  maximumBytes _ = 5138
  encodeValue = encodeRos1Pal_detection_msgsRecognizeObjectsResult
  readValue = readRos1Pal_detection_msgsRecognizeObjectsResult
data Ros1Pal_detection_msgsRecognizeObjectsFeedback = Ros1Pal_detection_msgsRecognizeObjectsFeedback deriving (Eq, Show)
defaultRos1Pal_detection_msgsRecognizeObjectsFeedback :: Ros1Pal_detection_msgsRecognizeObjectsFeedback
defaultRos1Pal_detection_msgsRecognizeObjectsFeedback = Ros1Pal_detection_msgsRecognizeObjectsFeedback 
ros1Pal_detection_msgsRecognizeObjectsFeedbackCodecIdentity :: String
ros1Pal_detection_msgsRecognizeObjectsFeedbackCodecIdentity = "UWVMROS1_c18fdb9db683f1ae2a17cc0a7cdc2bcc3ca060ef0c05cacb4defc35af0829f94"
encodeRos1Pal_detection_msgsRecognizeObjectsFeedback :: Ros1Pal_detection_msgsRecognizeObjectsFeedback -> Either Word32 B.ByteString
encodeRos1Pal_detection_msgsRecognizeObjectsFeedback value = do
  W.bounded 0 []
readRos1Pal_detection_msgsRecognizeObjectsFeedback :: W.Decoder Ros1Pal_detection_msgsRecognizeObjectsFeedback
readRos1Pal_detection_msgsRecognizeObjectsFeedback = do
  let value = Ros1Pal_detection_msgsRecognizeObjectsFeedback 
  case encodeRos1Pal_detection_msgsRecognizeObjectsFeedback value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_detection_msgsRecognizeObjectsFeedback :: B.ByteString -> Either Word32 Ros1Pal_detection_msgsRecognizeObjectsFeedback
decodeRos1Pal_detection_msgsRecognizeObjectsFeedback = W.runDecoder 0 readRos1Pal_detection_msgsRecognizeObjectsFeedback
instance Canonical Ros1Pal_detection_msgsRecognizeObjectsFeedback where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_detection_msgsRecognizeObjectsFeedback
  readValue = readRos1Pal_detection_msgsRecognizeObjectsFeedback
data Ros1Pal_detection_msgsRecognizedActions = Ros1Pal_detection_msgsRecognizedActions
  {
    -- | \@brief pal_detection_msgs/RecognizedActions.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsRecognizedActions; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsRecognizedActions_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief pal_detection_msgs/RecognizedActions.action_name: string; 0..16 elements; each string is
    --  0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsRecognizedActions; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsRecognizedActions_action_name :: [T.Text]
  ,
    -- | \@brief pal_detection_msgs/RecognizedActions.u: int64; 0..16 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsRecognizedActions; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsRecognizedActions_u :: [Int64]
  ,
    -- | \@brief pal_detection_msgs/RecognizedActions.v: int64; 0..16 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsRecognizedActions; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsRecognizedActions_v :: [Int64]
  } deriving (Eq, Show)
defaultRos1Pal_detection_msgsRecognizedActions :: Ros1Pal_detection_msgsRecognizedActions
defaultRos1Pal_detection_msgsRecognizedActions = Ros1Pal_detection_msgsRecognizedActions (defaultRos1Std_msgsHeader) ([]) ([]) ([])
ros1Pal_detection_msgsRecognizedActionsCodecIdentity :: String
ros1Pal_detection_msgsRecognizedActionsCodecIdentity = "UWVMROS1_b061282e0a4039af635d355d554c8f93af760ff116dfae31f36535b8b9378c33"
encodeRos1Pal_detection_msgsRecognizedActions :: Ros1Pal_detection_msgsRecognizedActions -> Either Word32 B.ByteString
encodeRos1Pal_detection_msgsRecognizedActions value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Pal_detection_msgsRecognizedActions_header value)
  if length (ros1Pal_detection_msgsRecognizedActions_action_name value) > 16 then Left 22 else Right ()
  prefix1 <- W.encodeCount 16 (length (ros1Pal_detection_msgsRecognizedActions_action_name value))
  b1 <- B.concat <$> mapM (\e -> W.encodeText 128 True (e)) (ros1Pal_detection_msgsRecognizedActions_action_name value)
  if length (ros1Pal_detection_msgsRecognizedActions_u value) > 16 then Left 22 else Right ()
  prefix2 <- W.encodeCount 16 (length (ros1Pal_detection_msgsRecognizedActions_u value))
  b2 <- B.concat <$> mapM (\e -> W.encodeSigned 8 (fromIntegral (e))) (ros1Pal_detection_msgsRecognizedActions_u value)
  if length (ros1Pal_detection_msgsRecognizedActions_v value) > 16 then Left 22 else Right ()
  prefix3 <- W.encodeCount 16 (length (ros1Pal_detection_msgsRecognizedActions_v value))
  b3 <- B.concat <$> mapM (\e -> W.encodeSigned 8 (fromIntegral (e))) (ros1Pal_detection_msgsRecognizedActions_v value)
  W.bounded 2524 [b0, prefix1, b1, prefix2, b2, prefix3, b3]
readRos1Pal_detection_msgsRecognizedActions :: W.Decoder Ros1Pal_detection_msgsRecognizedActions
readRos1Pal_detection_msgsRecognizedActions = do
  a0 <- readRos1Std_msgsHeader
  count1 <- W.count 16
  a1 <- replicateM count1 (W.text 128 True)
  count2 <- W.count 16
  a2 <- replicateM count2 (fromIntegral <$> W.signed 8)
  count3 <- W.count 16
  a3 <- replicateM count3 (fromIntegral <$> W.signed 8)
  let value = Ros1Pal_detection_msgsRecognizedActions a0 a1 a2 a3
  case encodeRos1Pal_detection_msgsRecognizedActions value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_detection_msgsRecognizedActions :: B.ByteString -> Either Word32 Ros1Pal_detection_msgsRecognizedActions
decodeRos1Pal_detection_msgsRecognizedActions = W.runDecoder 2524 readRos1Pal_detection_msgsRecognizedActions
instance Canonical Ros1Pal_detection_msgsRecognizedActions where
  maximumBytes _ = 2524
  encodeValue = encodeRos1Pal_detection_msgsRecognizedActions
  readValue = readRos1Pal_detection_msgsRecognizedActions
data Ros1Pal_detection_msgsRecognizerRequest = Ros1Pal_detection_msgsRecognizerRequest
  {
    -- | \@brief pal_detection_msgs/RecognizerRequest.enabled: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsRecognizerRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsRecognizerRequest_enabled :: Bool
  ,
    -- | \@brief pal_detection_msgs/RecognizerRequest.minConfidence: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsRecognizerRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsRecognizerRequest_minConfidence :: Float
  } deriving (Eq, Show)
defaultRos1Pal_detection_msgsRecognizerRequest :: Ros1Pal_detection_msgsRecognizerRequest
defaultRos1Pal_detection_msgsRecognizerRequest = Ros1Pal_detection_msgsRecognizerRequest (False) (0)
ros1Pal_detection_msgsRecognizerRequestCodecIdentity :: String
ros1Pal_detection_msgsRecognizerRequestCodecIdentity = "UWVMROS1_0d3ff43e5e851b33f710c9477383884c1db45971e4959df5892abff59fe29f55"
encodeRos1Pal_detection_msgsRecognizerRequest :: Ros1Pal_detection_msgsRecognizerRequest -> Either Word32 B.ByteString
encodeRos1Pal_detection_msgsRecognizerRequest value = do
  b0 <- W.encodeBool (ros1Pal_detection_msgsRecognizerRequest_enabled value)
  b1 <- W.encodeFloat32 (ros1Pal_detection_msgsRecognizerRequest_minConfidence value)
  W.bounded 5 [b0, b1]
readRos1Pal_detection_msgsRecognizerRequest :: W.Decoder Ros1Pal_detection_msgsRecognizerRequest
readRos1Pal_detection_msgsRecognizerRequest = do
  a0 <- W.boolean
  a1 <- W.float32
  let value = Ros1Pal_detection_msgsRecognizerRequest a0 a1
  case encodeRos1Pal_detection_msgsRecognizerRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_detection_msgsRecognizerRequest :: B.ByteString -> Either Word32 Ros1Pal_detection_msgsRecognizerRequest
decodeRos1Pal_detection_msgsRecognizerRequest = W.runDecoder 5 readRos1Pal_detection_msgsRecognizerRequest
instance Canonical Ros1Pal_detection_msgsRecognizerRequest where
  maximumBytes _ = 5
  encodeValue = encodeRos1Pal_detection_msgsRecognizerRequest
  readValue = readRos1Pal_detection_msgsRecognizerRequest
data Ros1Pal_detection_msgsRecognizerResponse = Ros1Pal_detection_msgsRecognizerResponse deriving (Eq, Show)
defaultRos1Pal_detection_msgsRecognizerResponse :: Ros1Pal_detection_msgsRecognizerResponse
defaultRos1Pal_detection_msgsRecognizerResponse = Ros1Pal_detection_msgsRecognizerResponse 
ros1Pal_detection_msgsRecognizerResponseCodecIdentity :: String
ros1Pal_detection_msgsRecognizerResponseCodecIdentity = "UWVMROS1_604e61f18d602f79b4e5a4145530ded34ac47d7a0ed97185c31457cef365935a"
encodeRos1Pal_detection_msgsRecognizerResponse :: Ros1Pal_detection_msgsRecognizerResponse -> Either Word32 B.ByteString
encodeRos1Pal_detection_msgsRecognizerResponse value = do
  W.bounded 0 []
readRos1Pal_detection_msgsRecognizerResponse :: W.Decoder Ros1Pal_detection_msgsRecognizerResponse
readRos1Pal_detection_msgsRecognizerResponse = do
  let value = Ros1Pal_detection_msgsRecognizerResponse 
  case encodeRos1Pal_detection_msgsRecognizerResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_detection_msgsRecognizerResponse :: B.ByteString -> Either Word32 Ros1Pal_detection_msgsRecognizerResponse
decodeRos1Pal_detection_msgsRecognizerResponse = W.runDecoder 0 readRos1Pal_detection_msgsRecognizerResponse
instance Canonical Ros1Pal_detection_msgsRecognizerResponse where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_detection_msgsRecognizerResponse
  readValue = readRos1Pal_detection_msgsRecognizerResponse
data Ros1Pal_detection_msgsRotatedDetection2d = Ros1Pal_detection_msgsRotatedDetection2d
  {
    -- | \@brief pal_detection_msgs/RotatedDetection2d.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsRotatedDetection2d; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsRotatedDetection2d_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief pal_detection_msgs/RotatedDetection2d.x: int64; 0..16 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsRotatedDetection2d; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsRotatedDetection2d_x :: [Int64]
  ,
    -- | \@brief pal_detection_msgs/RotatedDetection2d.y: int64; 0..16 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsRotatedDetection2d; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsRotatedDetection2d_y :: [Int64]
  } deriving (Eq, Show)
defaultRos1Pal_detection_msgsRotatedDetection2d :: Ros1Pal_detection_msgsRotatedDetection2d
defaultRos1Pal_detection_msgsRotatedDetection2d = Ros1Pal_detection_msgsRotatedDetection2d (defaultRos1Std_msgsHeader) ([]) ([])
ros1Pal_detection_msgsRotatedDetection2dCodecIdentity :: String
ros1Pal_detection_msgsRotatedDetection2dCodecIdentity = "UWVMROS1_2f22137d0171356fffb61ee8f668d07f90deadad0f900a2aa83ee0edfde0e52d"
encodeRos1Pal_detection_msgsRotatedDetection2d :: Ros1Pal_detection_msgsRotatedDetection2d -> Either Word32 B.ByteString
encodeRos1Pal_detection_msgsRotatedDetection2d value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Pal_detection_msgsRotatedDetection2d_header value)
  if length (ros1Pal_detection_msgsRotatedDetection2d_x value) > 16 then Left 22 else Right ()
  prefix1 <- W.encodeCount 16 (length (ros1Pal_detection_msgsRotatedDetection2d_x value))
  b1 <- B.concat <$> mapM (\e -> W.encodeSigned 8 (fromIntegral (e))) (ros1Pal_detection_msgsRotatedDetection2d_x value)
  if length (ros1Pal_detection_msgsRotatedDetection2d_y value) > 16 then Left 22 else Right ()
  prefix2 <- W.encodeCount 16 (length (ros1Pal_detection_msgsRotatedDetection2d_y value))
  b2 <- B.concat <$> mapM (\e -> W.encodeSigned 8 (fromIntegral (e))) (ros1Pal_detection_msgsRotatedDetection2d_y value)
  W.bounded 408 [b0, prefix1, b1, prefix2, b2]
readRos1Pal_detection_msgsRotatedDetection2d :: W.Decoder Ros1Pal_detection_msgsRotatedDetection2d
readRos1Pal_detection_msgsRotatedDetection2d = do
  a0 <- readRos1Std_msgsHeader
  count1 <- W.count 16
  a1 <- replicateM count1 (fromIntegral <$> W.signed 8)
  count2 <- W.count 16
  a2 <- replicateM count2 (fromIntegral <$> W.signed 8)
  let value = Ros1Pal_detection_msgsRotatedDetection2d a0 a1 a2
  case encodeRos1Pal_detection_msgsRotatedDetection2d value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_detection_msgsRotatedDetection2d :: B.ByteString -> Either Word32 Ros1Pal_detection_msgsRotatedDetection2d
decodeRos1Pal_detection_msgsRotatedDetection2d = W.runDecoder 408 readRos1Pal_detection_msgsRotatedDetection2d
instance Canonical Ros1Pal_detection_msgsRotatedDetection2d where
  maximumBytes _ = 408
  encodeValue = encodeRos1Pal_detection_msgsRotatedDetection2d
  readValue = readRos1Pal_detection_msgsRotatedDetection2d
data Ros1Pal_detection_msgsSelectTexturedObjectRequest = Ros1Pal_detection_msgsSelectTexturedObjectRequest
  {
    -- | \@brief pal_detection_msgs/SelectTexturedObjectRequest.imageFullPathFileName: string; each string is
    --  0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsSelectTexturedObjectRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsSelectTexturedObjectRequest_imageFullPathFileName :: T.Text
  ,
    -- | \@brief pal_detection_msgs/SelectTexturedObjectRequest.width: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsSelectTexturedObjectRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsSelectTexturedObjectRequest_width :: Double
  ,
    -- | \@brief pal_detection_msgs/SelectTexturedObjectRequest.height: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsSelectTexturedObjectRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsSelectTexturedObjectRequest_height :: Double
  } deriving (Eq, Show)
defaultRos1Pal_detection_msgsSelectTexturedObjectRequest :: Ros1Pal_detection_msgsSelectTexturedObjectRequest
defaultRos1Pal_detection_msgsSelectTexturedObjectRequest = Ros1Pal_detection_msgsSelectTexturedObjectRequest (T.empty) (0) (0)
ros1Pal_detection_msgsSelectTexturedObjectRequestCodecIdentity :: String
ros1Pal_detection_msgsSelectTexturedObjectRequestCodecIdentity = "UWVMROS1_866b10e9fcb4e51c9aa5f5a9b7c9c36cbef544fd685f3cfd77de8a3b759e1004"
encodeRos1Pal_detection_msgsSelectTexturedObjectRequest :: Ros1Pal_detection_msgsSelectTexturedObjectRequest -> Either Word32 B.ByteString
encodeRos1Pal_detection_msgsSelectTexturedObjectRequest value = do
  b0 <- W.encodeText 128 True (ros1Pal_detection_msgsSelectTexturedObjectRequest_imageFullPathFileName value)
  b1 <- W.encodeFloat64 (ros1Pal_detection_msgsSelectTexturedObjectRequest_width value)
  b2 <- W.encodeFloat64 (ros1Pal_detection_msgsSelectTexturedObjectRequest_height value)
  W.bounded 148 [b0, b1, b2]
readRos1Pal_detection_msgsSelectTexturedObjectRequest :: W.Decoder Ros1Pal_detection_msgsSelectTexturedObjectRequest
readRos1Pal_detection_msgsSelectTexturedObjectRequest = do
  a0 <- W.text 128 True
  a1 <- W.float64
  a2 <- W.float64
  let value = Ros1Pal_detection_msgsSelectTexturedObjectRequest a0 a1 a2
  case encodeRos1Pal_detection_msgsSelectTexturedObjectRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_detection_msgsSelectTexturedObjectRequest :: B.ByteString -> Either Word32 Ros1Pal_detection_msgsSelectTexturedObjectRequest
decodeRos1Pal_detection_msgsSelectTexturedObjectRequest = W.runDecoder 148 readRos1Pal_detection_msgsSelectTexturedObjectRequest
instance Canonical Ros1Pal_detection_msgsSelectTexturedObjectRequest where
  maximumBytes _ = 148
  encodeValue = encodeRos1Pal_detection_msgsSelectTexturedObjectRequest
  readValue = readRos1Pal_detection_msgsSelectTexturedObjectRequest
data Ros1Pal_detection_msgsSelectTexturedObjectResponse = Ros1Pal_detection_msgsSelectTexturedObjectResponse
  {
    -- | \@brief pal_detection_msgs/SelectTexturedObjectResponse.result: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsSelectTexturedObjectResponse; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsSelectTexturedObjectResponse_result :: Bool
  } deriving (Eq, Show)
defaultRos1Pal_detection_msgsSelectTexturedObjectResponse :: Ros1Pal_detection_msgsSelectTexturedObjectResponse
defaultRos1Pal_detection_msgsSelectTexturedObjectResponse = Ros1Pal_detection_msgsSelectTexturedObjectResponse (False)
ros1Pal_detection_msgsSelectTexturedObjectResponseCodecIdentity :: String
ros1Pal_detection_msgsSelectTexturedObjectResponseCodecIdentity = "UWVMROS1_98857d1de78a0b8014ea0dfd0597f41b908869229b1ef9d815a983571180db22"
encodeRos1Pal_detection_msgsSelectTexturedObjectResponse :: Ros1Pal_detection_msgsSelectTexturedObjectResponse -> Either Word32 B.ByteString
encodeRos1Pal_detection_msgsSelectTexturedObjectResponse value = do
  b0 <- W.encodeBool (ros1Pal_detection_msgsSelectTexturedObjectResponse_result value)
  W.bounded 1 [b0]
readRos1Pal_detection_msgsSelectTexturedObjectResponse :: W.Decoder Ros1Pal_detection_msgsSelectTexturedObjectResponse
readRos1Pal_detection_msgsSelectTexturedObjectResponse = do
  a0 <- W.boolean
  let value = Ros1Pal_detection_msgsSelectTexturedObjectResponse a0
  case encodeRos1Pal_detection_msgsSelectTexturedObjectResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_detection_msgsSelectTexturedObjectResponse :: B.ByteString -> Either Word32 Ros1Pal_detection_msgsSelectTexturedObjectResponse
decodeRos1Pal_detection_msgsSelectTexturedObjectResponse = W.runDecoder 1 readRos1Pal_detection_msgsSelectTexturedObjectResponse
instance Canonical Ros1Pal_detection_msgsSelectTexturedObjectResponse where
  maximumBytes _ = 1
  encodeValue = encodeRos1Pal_detection_msgsSelectTexturedObjectResponse
  readValue = readRos1Pal_detection_msgsSelectTexturedObjectResponse
data Ros1Pal_detection_msgsSetDatabaseRequest = Ros1Pal_detection_msgsSetDatabaseRequest
  {
    -- | \@brief pal_detection_msgs/SetDatabaseRequest.databaseName: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsSetDatabaseRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsSetDatabaseRequest_databaseName :: T.Text
  ,
    -- | \@brief pal_detection_msgs/SetDatabaseRequest.purgeAll: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsSetDatabaseRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsSetDatabaseRequest_purgeAll :: Bool
  } deriving (Eq, Show)
defaultRos1Pal_detection_msgsSetDatabaseRequest :: Ros1Pal_detection_msgsSetDatabaseRequest
defaultRos1Pal_detection_msgsSetDatabaseRequest = Ros1Pal_detection_msgsSetDatabaseRequest (T.empty) (False)
ros1Pal_detection_msgsSetDatabaseRequestCodecIdentity :: String
ros1Pal_detection_msgsSetDatabaseRequestCodecIdentity = "UWVMROS1_fa4b3a519fcae8b8ac43d6e764203d720939a001c7f572e43e03c2f64904308b"
encodeRos1Pal_detection_msgsSetDatabaseRequest :: Ros1Pal_detection_msgsSetDatabaseRequest -> Either Word32 B.ByteString
encodeRos1Pal_detection_msgsSetDatabaseRequest value = do
  b0 <- W.encodeText 128 True (ros1Pal_detection_msgsSetDatabaseRequest_databaseName value)
  b1 <- W.encodeBool (ros1Pal_detection_msgsSetDatabaseRequest_purgeAll value)
  W.bounded 133 [b0, b1]
readRos1Pal_detection_msgsSetDatabaseRequest :: W.Decoder Ros1Pal_detection_msgsSetDatabaseRequest
readRos1Pal_detection_msgsSetDatabaseRequest = do
  a0 <- W.text 128 True
  a1 <- W.boolean
  let value = Ros1Pal_detection_msgsSetDatabaseRequest a0 a1
  case encodeRos1Pal_detection_msgsSetDatabaseRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_detection_msgsSetDatabaseRequest :: B.ByteString -> Either Word32 Ros1Pal_detection_msgsSetDatabaseRequest
decodeRos1Pal_detection_msgsSetDatabaseRequest = W.runDecoder 133 readRos1Pal_detection_msgsSetDatabaseRequest
instance Canonical Ros1Pal_detection_msgsSetDatabaseRequest where
  maximumBytes _ = 133
  encodeValue = encodeRos1Pal_detection_msgsSetDatabaseRequest
  readValue = readRos1Pal_detection_msgsSetDatabaseRequest
data Ros1Pal_detection_msgsSetDatabaseResponse = Ros1Pal_detection_msgsSetDatabaseResponse deriving (Eq, Show)
defaultRos1Pal_detection_msgsSetDatabaseResponse :: Ros1Pal_detection_msgsSetDatabaseResponse
defaultRos1Pal_detection_msgsSetDatabaseResponse = Ros1Pal_detection_msgsSetDatabaseResponse 
ros1Pal_detection_msgsSetDatabaseResponseCodecIdentity :: String
ros1Pal_detection_msgsSetDatabaseResponseCodecIdentity = "UWVMROS1_31307d8d81296f69a5bb7dbd54bc10aea47a41b1d1458b6d5451d53bdc2f9b46"
encodeRos1Pal_detection_msgsSetDatabaseResponse :: Ros1Pal_detection_msgsSetDatabaseResponse -> Either Word32 B.ByteString
encodeRos1Pal_detection_msgsSetDatabaseResponse value = do
  W.bounded 0 []
readRos1Pal_detection_msgsSetDatabaseResponse :: W.Decoder Ros1Pal_detection_msgsSetDatabaseResponse
readRos1Pal_detection_msgsSetDatabaseResponse = do
  let value = Ros1Pal_detection_msgsSetDatabaseResponse 
  case encodeRos1Pal_detection_msgsSetDatabaseResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_detection_msgsSetDatabaseResponse :: B.ByteString -> Either Word32 Ros1Pal_detection_msgsSetDatabaseResponse
decodeRos1Pal_detection_msgsSetDatabaseResponse = W.runDecoder 0 readRos1Pal_detection_msgsSetDatabaseResponse
instance Canonical Ros1Pal_detection_msgsSetDatabaseResponse where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_detection_msgsSetDatabaseResponse
  readValue = readRos1Pal_detection_msgsSetDatabaseResponse
data Ros1Pal_detection_msgsStartEnrollmentRequest = Ros1Pal_detection_msgsStartEnrollmentRequest
  {
    -- | \@brief pal_detection_msgs/StartEnrollmentRequest.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsStartEnrollmentRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsStartEnrollmentRequest_name :: T.Text
  } deriving (Eq, Show)
defaultRos1Pal_detection_msgsStartEnrollmentRequest :: Ros1Pal_detection_msgsStartEnrollmentRequest
defaultRos1Pal_detection_msgsStartEnrollmentRequest = Ros1Pal_detection_msgsStartEnrollmentRequest (T.empty)
ros1Pal_detection_msgsStartEnrollmentRequestCodecIdentity :: String
ros1Pal_detection_msgsStartEnrollmentRequestCodecIdentity = "UWVMROS1_d1175a40ec4050b7d53f0929d9fb9ca6d33155c6df2295082e159db96e2fa7d8"
encodeRos1Pal_detection_msgsStartEnrollmentRequest :: Ros1Pal_detection_msgsStartEnrollmentRequest -> Either Word32 B.ByteString
encodeRos1Pal_detection_msgsStartEnrollmentRequest value = do
  b0 <- W.encodeText 128 True (ros1Pal_detection_msgsStartEnrollmentRequest_name value)
  W.bounded 132 [b0]
readRos1Pal_detection_msgsStartEnrollmentRequest :: W.Decoder Ros1Pal_detection_msgsStartEnrollmentRequest
readRos1Pal_detection_msgsStartEnrollmentRequest = do
  a0 <- W.text 128 True
  let value = Ros1Pal_detection_msgsStartEnrollmentRequest a0
  case encodeRos1Pal_detection_msgsStartEnrollmentRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_detection_msgsStartEnrollmentRequest :: B.ByteString -> Either Word32 Ros1Pal_detection_msgsStartEnrollmentRequest
decodeRos1Pal_detection_msgsStartEnrollmentRequest = W.runDecoder 132 readRos1Pal_detection_msgsStartEnrollmentRequest
instance Canonical Ros1Pal_detection_msgsStartEnrollmentRequest where
  maximumBytes _ = 132
  encodeValue = encodeRos1Pal_detection_msgsStartEnrollmentRequest
  readValue = readRos1Pal_detection_msgsStartEnrollmentRequest
data Ros1Pal_detection_msgsStartEnrollmentResponse = Ros1Pal_detection_msgsStartEnrollmentResponse
  {
    -- | \@brief pal_detection_msgs/StartEnrollmentResponse.result: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsStartEnrollmentResponse; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsStartEnrollmentResponse_result :: Bool
  } deriving (Eq, Show)
defaultRos1Pal_detection_msgsStartEnrollmentResponse :: Ros1Pal_detection_msgsStartEnrollmentResponse
defaultRos1Pal_detection_msgsStartEnrollmentResponse = Ros1Pal_detection_msgsStartEnrollmentResponse (False)
ros1Pal_detection_msgsStartEnrollmentResponseCodecIdentity :: String
ros1Pal_detection_msgsStartEnrollmentResponseCodecIdentity = "UWVMROS1_7d24b04c596d75db09309a7244e275e5980344aaf020f91a44bef100927d5b62"
encodeRos1Pal_detection_msgsStartEnrollmentResponse :: Ros1Pal_detection_msgsStartEnrollmentResponse -> Either Word32 B.ByteString
encodeRos1Pal_detection_msgsStartEnrollmentResponse value = do
  b0 <- W.encodeBool (ros1Pal_detection_msgsStartEnrollmentResponse_result value)
  W.bounded 1 [b0]
readRos1Pal_detection_msgsStartEnrollmentResponse :: W.Decoder Ros1Pal_detection_msgsStartEnrollmentResponse
readRos1Pal_detection_msgsStartEnrollmentResponse = do
  a0 <- W.boolean
  let value = Ros1Pal_detection_msgsStartEnrollmentResponse a0
  case encodeRos1Pal_detection_msgsStartEnrollmentResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_detection_msgsStartEnrollmentResponse :: B.ByteString -> Either Word32 Ros1Pal_detection_msgsStartEnrollmentResponse
decodeRos1Pal_detection_msgsStartEnrollmentResponse = W.runDecoder 1 readRos1Pal_detection_msgsStartEnrollmentResponse
instance Canonical Ros1Pal_detection_msgsStartEnrollmentResponse where
  maximumBytes _ = 1
  encodeValue = encodeRos1Pal_detection_msgsStartEnrollmentResponse
  readValue = readRos1Pal_detection_msgsStartEnrollmentResponse
data Ros1Pal_detection_msgsStopEnrollmentRequest = Ros1Pal_detection_msgsStopEnrollmentRequest deriving (Eq, Show)
defaultRos1Pal_detection_msgsStopEnrollmentRequest :: Ros1Pal_detection_msgsStopEnrollmentRequest
defaultRos1Pal_detection_msgsStopEnrollmentRequest = Ros1Pal_detection_msgsStopEnrollmentRequest 
ros1Pal_detection_msgsStopEnrollmentRequestCodecIdentity :: String
ros1Pal_detection_msgsStopEnrollmentRequestCodecIdentity = "UWVMROS1_627511d9388c67421ccbd8f1928ec5a7e87ad1cc19f0e6b69b4be089ea69d3df"
encodeRos1Pal_detection_msgsStopEnrollmentRequest :: Ros1Pal_detection_msgsStopEnrollmentRequest -> Either Word32 B.ByteString
encodeRos1Pal_detection_msgsStopEnrollmentRequest value = do
  W.bounded 0 []
readRos1Pal_detection_msgsStopEnrollmentRequest :: W.Decoder Ros1Pal_detection_msgsStopEnrollmentRequest
readRos1Pal_detection_msgsStopEnrollmentRequest = do
  let value = Ros1Pal_detection_msgsStopEnrollmentRequest 
  case encodeRos1Pal_detection_msgsStopEnrollmentRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_detection_msgsStopEnrollmentRequest :: B.ByteString -> Either Word32 Ros1Pal_detection_msgsStopEnrollmentRequest
decodeRos1Pal_detection_msgsStopEnrollmentRequest = W.runDecoder 0 readRos1Pal_detection_msgsStopEnrollmentRequest
instance Canonical Ros1Pal_detection_msgsStopEnrollmentRequest where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_detection_msgsStopEnrollmentRequest
  readValue = readRos1Pal_detection_msgsStopEnrollmentRequest
data Ros1Pal_detection_msgsStopEnrollmentResponse = Ros1Pal_detection_msgsStopEnrollmentResponse
  {
    -- | \@brief pal_detection_msgs/StopEnrollmentResponse.enrollment_ok: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsStopEnrollmentResponse; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsStopEnrollmentResponse_enrollment_ok :: Bool
  ,
    -- | \@brief pal_detection_msgs/StopEnrollmentResponse.numFacesEnrolled: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsStopEnrollmentResponse; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsStopEnrollmentResponse_numFacesEnrolled :: Int32
  ,
    -- | \@brief pal_detection_msgs/StopEnrollmentResponse.error_msg: string; each string is 0..128 bytes;
    --  strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsStopEnrollmentResponse; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsStopEnrollmentResponse_error_msg :: T.Text
  } deriving (Eq, Show)
defaultRos1Pal_detection_msgsStopEnrollmentResponse :: Ros1Pal_detection_msgsStopEnrollmentResponse
defaultRos1Pal_detection_msgsStopEnrollmentResponse = Ros1Pal_detection_msgsStopEnrollmentResponse (False) (0) (T.empty)
ros1Pal_detection_msgsStopEnrollmentResponseCodecIdentity :: String
ros1Pal_detection_msgsStopEnrollmentResponseCodecIdentity = "UWVMROS1_30384a8e564b227756bc3e778edf7d0a0b60440baf8e966352600b15b1a9a1aa"
encodeRos1Pal_detection_msgsStopEnrollmentResponse :: Ros1Pal_detection_msgsStopEnrollmentResponse -> Either Word32 B.ByteString
encodeRos1Pal_detection_msgsStopEnrollmentResponse value = do
  b0 <- W.encodeBool (ros1Pal_detection_msgsStopEnrollmentResponse_enrollment_ok value)
  b1 <- W.encodeSigned 4 (fromIntegral (ros1Pal_detection_msgsStopEnrollmentResponse_numFacesEnrolled value))
  b2 <- W.encodeText 128 True (ros1Pal_detection_msgsStopEnrollmentResponse_error_msg value)
  W.bounded 137 [b0, b1, b2]
readRos1Pal_detection_msgsStopEnrollmentResponse :: W.Decoder Ros1Pal_detection_msgsStopEnrollmentResponse
readRos1Pal_detection_msgsStopEnrollmentResponse = do
  a0 <- W.boolean
  a1 <- fromIntegral <$> W.signed 4
  a2 <- W.text 128 True
  let value = Ros1Pal_detection_msgsStopEnrollmentResponse a0 a1 a2
  case encodeRos1Pal_detection_msgsStopEnrollmentResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_detection_msgsStopEnrollmentResponse :: B.ByteString -> Either Word32 Ros1Pal_detection_msgsStopEnrollmentResponse
decodeRos1Pal_detection_msgsStopEnrollmentResponse = W.runDecoder 137 readRos1Pal_detection_msgsStopEnrollmentResponse
instance Canonical Ros1Pal_detection_msgsStopEnrollmentResponse where
  maximumBytes _ = 137
  encodeValue = encodeRos1Pal_detection_msgsStopEnrollmentResponse
  readValue = readRos1Pal_detection_msgsStopEnrollmentResponse
data Ros1Pal_detection_msgsTexturedObjectDetection = Ros1Pal_detection_msgsTexturedObjectDetection
  {
    -- | \@brief pal_detection_msgs/TexturedObjectDetection.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsTexturedObjectDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsTexturedObjectDetection_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief pal_detection_msgs/TexturedObjectDetection.img: sensor_msgs/CompressedImage.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsTexturedObjectDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsTexturedObjectDetection_img :: Ros1Sensor_msgsCompressedImage
  ,
    -- | \@brief pal_detection_msgs/TexturedObjectDetection.roi: pal_detection_msgs/RotatedDetection2d.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsTexturedObjectDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsTexturedObjectDetection_roi :: Ros1Pal_detection_msgsRotatedDetection2d
  } deriving (Eq, Show)
defaultRos1Pal_detection_msgsTexturedObjectDetection :: Ros1Pal_detection_msgsTexturedObjectDetection
defaultRos1Pal_detection_msgsTexturedObjectDetection =
    Ros1Pal_detection_msgsTexturedObjectDetection
    (defaultRos1Std_msgsHeader)
    (defaultRos1Sensor_msgsCompressedImage)
    (defaultRos1Pal_detection_msgsRotatedDetection2d)
ros1Pal_detection_msgsTexturedObjectDetectionCodecIdentity :: String
ros1Pal_detection_msgsTexturedObjectDetectionCodecIdentity = "UWVMROS1_4a13d12a14db4a3f8883d2bd66317d4b50bd2246fde7de5cdc966d4d35cff204"
encodeRos1Pal_detection_msgsTexturedObjectDetection :: Ros1Pal_detection_msgsTexturedObjectDetection -> Either Word32 B.ByteString
encodeRos1Pal_detection_msgsTexturedObjectDetection value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Pal_detection_msgsTexturedObjectDetection_header value)
  b1 <- encodeRos1Sensor_msgsCompressedImage (ros1Pal_detection_msgsTexturedObjectDetection_img value)
  b2 <- encodeRos1Pal_detection_msgsRotatedDetection2d (ros1Pal_detection_msgsTexturedObjectDetection_roi value)
  W.bounded 4928 [b0, b1, b2]
readRos1Pal_detection_msgsTexturedObjectDetection :: W.Decoder Ros1Pal_detection_msgsTexturedObjectDetection
readRos1Pal_detection_msgsTexturedObjectDetection = do
  a0 <- readRos1Std_msgsHeader
  a1 <- readRos1Sensor_msgsCompressedImage
  a2 <- readRos1Pal_detection_msgsRotatedDetection2d
  let value = Ros1Pal_detection_msgsTexturedObjectDetection a0 a1 a2
  case encodeRos1Pal_detection_msgsTexturedObjectDetection value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_detection_msgsTexturedObjectDetection :: B.ByteString -> Either Word32 Ros1Pal_detection_msgsTexturedObjectDetection
decodeRos1Pal_detection_msgsTexturedObjectDetection = W.runDecoder 4928 readRos1Pal_detection_msgsTexturedObjectDetection
instance Canonical Ros1Pal_detection_msgsTexturedObjectDetection where
  maximumBytes _ = 4928
  encodeValue = encodeRos1Pal_detection_msgsTexturedObjectDetection
  readValue = readRos1Pal_detection_msgsTexturedObjectDetection
data Ros1Pal_detection_msgsWaveDetection = Ros1Pal_detection_msgsWaveDetection
  {
    -- | \@brief pal_detection_msgs/WaveDetection.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsWaveDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsWaveDetection_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief pal_detection_msgs/WaveDetection.wave: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsWaveDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsWaveDetection_wave :: Bool
  ,
    -- | \@brief pal_detection_msgs/WaveDetection.u: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsWaveDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsWaveDetection_u :: Int8
  ,
    -- | \@brief pal_detection_msgs/WaveDetection.v: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_detection_msgsWaveDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_detection_msgsWaveDetection_v :: Int8
  } deriving (Eq, Show)
defaultRos1Pal_detection_msgsWaveDetection :: Ros1Pal_detection_msgsWaveDetection
defaultRos1Pal_detection_msgsWaveDetection = Ros1Pal_detection_msgsWaveDetection (defaultRos1Std_msgsHeader) (False) (0) (0)
ros1Pal_detection_msgsWaveDetectionCodecIdentity :: String
ros1Pal_detection_msgsWaveDetectionCodecIdentity = "UWVMROS1_9c121f0ad95f8e28a13b1b7b80c32f0cea55b737edccf63fe92908ed806db52e"
encodeRos1Pal_detection_msgsWaveDetection :: Ros1Pal_detection_msgsWaveDetection -> Either Word32 B.ByteString
encodeRos1Pal_detection_msgsWaveDetection value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Pal_detection_msgsWaveDetection_header value)
  b1 <- W.encodeBool (ros1Pal_detection_msgsWaveDetection_wave value)
  b2 <- W.encodeSigned 1 (fromIntegral (ros1Pal_detection_msgsWaveDetection_u value))
  b3 <- W.encodeSigned 1 (fromIntegral (ros1Pal_detection_msgsWaveDetection_v value))
  W.bounded 147 [b0, b1, b2, b3]
readRos1Pal_detection_msgsWaveDetection :: W.Decoder Ros1Pal_detection_msgsWaveDetection
readRos1Pal_detection_msgsWaveDetection = do
  a0 <- readRos1Std_msgsHeader
  a1 <- W.boolean
  a2 <- fromIntegral <$> W.signed 1
  a3 <- fromIntegral <$> W.signed 1
  let value = Ros1Pal_detection_msgsWaveDetection a0 a1 a2 a3
  case encodeRos1Pal_detection_msgsWaveDetection value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_detection_msgsWaveDetection :: B.ByteString -> Either Word32 Ros1Pal_detection_msgsWaveDetection
decodeRos1Pal_detection_msgsWaveDetection = W.runDecoder 147 readRos1Pal_detection_msgsWaveDetection
instance Canonical Ros1Pal_detection_msgsWaveDetection where
  maximumBytes _ = 147
  encodeValue = encodeRos1Pal_detection_msgsWaveDetection
  readValue = readRos1Pal_detection_msgsWaveDetection
data Ros1Pal_device_msgsBatteryState = Ros1Pal_device_msgsBatteryState
  {
    -- | \@brief pal_device_msgs/BatteryState.chargeState: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsBatteryState; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsBatteryState_chargeState :: Int8
  ,
    -- | \@brief pal_device_msgs/BatteryState.batteryPercentage: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsBatteryState; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsBatteryState_batteryPercentage :: Float
  } deriving (Eq, Show)
defaultRos1Pal_device_msgsBatteryState :: Ros1Pal_device_msgsBatteryState
defaultRos1Pal_device_msgsBatteryState = Ros1Pal_device_msgsBatteryState (0) (0)
ros1Pal_device_msgsBatteryStateCodecIdentity :: String
ros1Pal_device_msgsBatteryStateCodecIdentity = "UWVMROS1_0c5a63bef9a7aa5a22424277d8d442de7b2330cb3c61e80548dae5a58d70527b"
ros1Pal_device_msgsBatteryState_FULL :: Int8
ros1Pal_device_msgsBatteryState_FULL = 5
ros1Pal_device_msgsBatteryState_HIGH :: Int8
ros1Pal_device_msgsBatteryState_HIGH = 4
ros1Pal_device_msgsBatteryState_MEDIUM :: Int8
ros1Pal_device_msgsBatteryState_MEDIUM = 3
ros1Pal_device_msgsBatteryState_LOW :: Int8
ros1Pal_device_msgsBatteryState_LOW = 2
ros1Pal_device_msgsBatteryState_CRITICAL_LOW :: Int8
ros1Pal_device_msgsBatteryState_CRITICAL_LOW = 1
encodeRos1Pal_device_msgsBatteryState :: Ros1Pal_device_msgsBatteryState -> Either Word32 B.ByteString
encodeRos1Pal_device_msgsBatteryState value = do
  b0 <- W.encodeSigned 1 (fromIntegral (ros1Pal_device_msgsBatteryState_chargeState value))
  b1 <- W.encodeFloat32 (ros1Pal_device_msgsBatteryState_batteryPercentage value)
  W.bounded 5 [b0, b1]
readRos1Pal_device_msgsBatteryState :: W.Decoder Ros1Pal_device_msgsBatteryState
readRos1Pal_device_msgsBatteryState = do
  a0 <- fromIntegral <$> W.signed 1
  a1 <- W.float32
  let value = Ros1Pal_device_msgsBatteryState a0 a1
  case encodeRos1Pal_device_msgsBatteryState value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_device_msgsBatteryState :: B.ByteString -> Either Word32 Ros1Pal_device_msgsBatteryState
decodeRos1Pal_device_msgsBatteryState = W.runDecoder 5 readRos1Pal_device_msgsBatteryState
instance Canonical Ros1Pal_device_msgsBatteryState where
  maximumBytes _ = 5
  encodeValue = encodeRos1Pal_device_msgsBatteryState
  readValue = readRos1Pal_device_msgsBatteryState
data Ros1Pal_device_msgsBumper = Ros1Pal_device_msgsBumper
  {
    -- | \@brief pal_device_msgs/Bumper.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsBumper; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsBumper_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief pal_device_msgs/Bumper.is_pressed: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsBumper; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsBumper_is_pressed :: Bool
  } deriving (Eq, Show)
defaultRos1Pal_device_msgsBumper :: Ros1Pal_device_msgsBumper
defaultRos1Pal_device_msgsBumper = Ros1Pal_device_msgsBumper (defaultRos1Std_msgsHeader) (False)
ros1Pal_device_msgsBumperCodecIdentity :: String
ros1Pal_device_msgsBumperCodecIdentity = "UWVMROS1_696d3699d4b707663768df69acccade49e0108ed6d1c91b87fc260cc5c6b8ac9"
encodeRos1Pal_device_msgsBumper :: Ros1Pal_device_msgsBumper -> Either Word32 B.ByteString
encodeRos1Pal_device_msgsBumper value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Pal_device_msgsBumper_header value)
  b1 <- W.encodeBool (ros1Pal_device_msgsBumper_is_pressed value)
  W.bounded 145 [b0, b1]
readRos1Pal_device_msgsBumper :: W.Decoder Ros1Pal_device_msgsBumper
readRos1Pal_device_msgsBumper = do
  a0 <- readRos1Std_msgsHeader
  a1 <- W.boolean
  let value = Ros1Pal_device_msgsBumper a0 a1
  case encodeRos1Pal_device_msgsBumper value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_device_msgsBumper :: B.ByteString -> Either Word32 Ros1Pal_device_msgsBumper
decodeRos1Pal_device_msgsBumper = W.runDecoder 145 readRos1Pal_device_msgsBumper
instance Canonical Ros1Pal_device_msgsBumper where
  maximumBytes _ = 145
  encodeValue = encodeRos1Pal_device_msgsBumper
  readValue = readRos1Pal_device_msgsBumper
data Ros1Pal_device_msgsCancelEffectRequest = Ros1Pal_device_msgsCancelEffectRequest
  {
    -- | \@brief pal_device_msgs/CancelEffectRequest.effectId: uint32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsCancelEffectRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsCancelEffectRequest_effectId :: Word32
  } deriving (Eq, Show)
defaultRos1Pal_device_msgsCancelEffectRequest :: Ros1Pal_device_msgsCancelEffectRequest
defaultRos1Pal_device_msgsCancelEffectRequest = Ros1Pal_device_msgsCancelEffectRequest (0)
ros1Pal_device_msgsCancelEffectRequestCodecIdentity :: String
ros1Pal_device_msgsCancelEffectRequestCodecIdentity = "UWVMROS1_7d1029daaad94f262487491600881e1ec56b29b7f743652b46315b80b9aa4929"
encodeRos1Pal_device_msgsCancelEffectRequest :: Ros1Pal_device_msgsCancelEffectRequest -> Either Word32 B.ByteString
encodeRos1Pal_device_msgsCancelEffectRequest value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Pal_device_msgsCancelEffectRequest_effectId value))
  W.bounded 4 [b0]
readRos1Pal_device_msgsCancelEffectRequest :: W.Decoder Ros1Pal_device_msgsCancelEffectRequest
readRos1Pal_device_msgsCancelEffectRequest = do
  a0 <- fromIntegral <$> W.unsigned 4
  let value = Ros1Pal_device_msgsCancelEffectRequest a0
  case encodeRos1Pal_device_msgsCancelEffectRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_device_msgsCancelEffectRequest :: B.ByteString -> Either Word32 Ros1Pal_device_msgsCancelEffectRequest
decodeRos1Pal_device_msgsCancelEffectRequest = W.runDecoder 4 readRos1Pal_device_msgsCancelEffectRequest
instance Canonical Ros1Pal_device_msgsCancelEffectRequest where
  maximumBytes _ = 4
  encodeValue = encodeRos1Pal_device_msgsCancelEffectRequest
  readValue = readRos1Pal_device_msgsCancelEffectRequest
data Ros1Pal_device_msgsCancelEffectResponse = Ros1Pal_device_msgsCancelEffectResponse deriving (Eq, Show)
defaultRos1Pal_device_msgsCancelEffectResponse :: Ros1Pal_device_msgsCancelEffectResponse
defaultRos1Pal_device_msgsCancelEffectResponse = Ros1Pal_device_msgsCancelEffectResponse 
ros1Pal_device_msgsCancelEffectResponseCodecIdentity :: String
ros1Pal_device_msgsCancelEffectResponseCodecIdentity = "UWVMROS1_5dc811711832b14077af8da7c5a7e5f0813f3428a12e5b4bb80467571f7b9360"
encodeRos1Pal_device_msgsCancelEffectResponse :: Ros1Pal_device_msgsCancelEffectResponse -> Either Word32 B.ByteString
encodeRos1Pal_device_msgsCancelEffectResponse value = do
  W.bounded 0 []
readRos1Pal_device_msgsCancelEffectResponse :: W.Decoder Ros1Pal_device_msgsCancelEffectResponse
readRos1Pal_device_msgsCancelEffectResponse = do
  let value = Ros1Pal_device_msgsCancelEffectResponse 
  case encodeRos1Pal_device_msgsCancelEffectResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_device_msgsCancelEffectResponse :: B.ByteString -> Either Word32 Ros1Pal_device_msgsCancelEffectResponse
decodeRos1Pal_device_msgsCancelEffectResponse = W.runDecoder 0 readRos1Pal_device_msgsCancelEffectResponse
instance Canonical Ros1Pal_device_msgsCancelEffectResponse where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_device_msgsCancelEffectResponse
  readValue = readRos1Pal_device_msgsCancelEffectResponse
data Ros1Std_msgsColorRGBA = Ros1Std_msgsColorRGBA
  {
    -- | \@brief std_msgs/ColorRGBA.r: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Std_msgsColorRGBA; document/platform/pal/en_US/language/haskell/API.md
    ros1Std_msgsColorRGBA_r :: Float
  ,
    -- | \@brief std_msgs/ColorRGBA.g: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Std_msgsColorRGBA; document/platform/pal/en_US/language/haskell/API.md
    ros1Std_msgsColorRGBA_g :: Float
  ,
    -- | \@brief std_msgs/ColorRGBA.b: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Std_msgsColorRGBA; document/platform/pal/en_US/language/haskell/API.md
    ros1Std_msgsColorRGBA_b :: Float
  ,
    -- | \@brief std_msgs/ColorRGBA.a: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Std_msgsColorRGBA; document/platform/pal/en_US/language/haskell/API.md
    ros1Std_msgsColorRGBA_a :: Float
  } deriving (Eq, Show)
defaultRos1Std_msgsColorRGBA :: Ros1Std_msgsColorRGBA
defaultRos1Std_msgsColorRGBA = Ros1Std_msgsColorRGBA (0) (0) (0) (0)
ros1Std_msgsColorRGBACodecIdentity :: String
ros1Std_msgsColorRGBACodecIdentity = "UWVMROS1_2c956a9dd28dc999fc04f9704e68021ae940136f6c54d151975792a9344da90d"
encodeRos1Std_msgsColorRGBA :: Ros1Std_msgsColorRGBA -> Either Word32 B.ByteString
encodeRos1Std_msgsColorRGBA value = do
  b0 <- W.encodeFloat32 (ros1Std_msgsColorRGBA_r value)
  b1 <- W.encodeFloat32 (ros1Std_msgsColorRGBA_g value)
  b2 <- W.encodeFloat32 (ros1Std_msgsColorRGBA_b value)
  b3 <- W.encodeFloat32 (ros1Std_msgsColorRGBA_a value)
  W.bounded 16 [b0, b1, b2, b3]
readRos1Std_msgsColorRGBA :: W.Decoder Ros1Std_msgsColorRGBA
readRos1Std_msgsColorRGBA = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  let value = Ros1Std_msgsColorRGBA a0 a1 a2 a3
  case encodeRos1Std_msgsColorRGBA value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Std_msgsColorRGBA :: B.ByteString -> Either Word32 Ros1Std_msgsColorRGBA
decodeRos1Std_msgsColorRGBA = W.runDecoder 16 readRos1Std_msgsColorRGBA
instance Canonical Ros1Std_msgsColorRGBA where
  maximumBytes _ = 16
  encodeValue = encodeRos1Std_msgsColorRGBA
  readValue = readRos1Std_msgsColorRGBA
data Ros1Pal_device_msgsLedFixedColorParams = Ros1Pal_device_msgsLedFixedColorParams
  {
    -- | \@brief pal_device_msgs/LedFixedColorParams.color: std_msgs/ColorRGBA.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsLedFixedColorParams; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsLedFixedColorParams_color :: Ros1Std_msgsColorRGBA
  } deriving (Eq, Show)
defaultRos1Pal_device_msgsLedFixedColorParams :: Ros1Pal_device_msgsLedFixedColorParams
defaultRos1Pal_device_msgsLedFixedColorParams = Ros1Pal_device_msgsLedFixedColorParams (defaultRos1Std_msgsColorRGBA)
ros1Pal_device_msgsLedFixedColorParamsCodecIdentity :: String
ros1Pal_device_msgsLedFixedColorParamsCodecIdentity = "UWVMROS1_48ff1292535293f3a3e5e93e2650ea8e949f01c38fa5344e83f3c101d79dab2b"
encodeRos1Pal_device_msgsLedFixedColorParams :: Ros1Pal_device_msgsLedFixedColorParams -> Either Word32 B.ByteString
encodeRos1Pal_device_msgsLedFixedColorParams value = do
  b0 <- encodeRos1Std_msgsColorRGBA (ros1Pal_device_msgsLedFixedColorParams_color value)
  W.bounded 16 [b0]
readRos1Pal_device_msgsLedFixedColorParams :: W.Decoder Ros1Pal_device_msgsLedFixedColorParams
readRos1Pal_device_msgsLedFixedColorParams = do
  a0 <- readRos1Std_msgsColorRGBA
  let value = Ros1Pal_device_msgsLedFixedColorParams a0
  case encodeRos1Pal_device_msgsLedFixedColorParams value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_device_msgsLedFixedColorParams :: B.ByteString -> Either Word32 Ros1Pal_device_msgsLedFixedColorParams
decodeRos1Pal_device_msgsLedFixedColorParams = W.runDecoder 16 readRos1Pal_device_msgsLedFixedColorParams
instance Canonical Ros1Pal_device_msgsLedFixedColorParams where
  maximumBytes _ = 16
  encodeValue = encodeRos1Pal_device_msgsLedFixedColorParams
  readValue = readRos1Pal_device_msgsLedFixedColorParams
data Ros1Pal_device_msgsLedRainbowParams = Ros1Pal_device_msgsLedRainbowParams
  {
    -- | \@brief pal_device_msgs/LedRainbowParams.transition_duration: duration.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsLedRainbowParams; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsLedRainbowParams_transition_duration :: Ros1Duration
  } deriving (Eq, Show)
defaultRos1Pal_device_msgsLedRainbowParams :: Ros1Pal_device_msgsLedRainbowParams
defaultRos1Pal_device_msgsLedRainbowParams = Ros1Pal_device_msgsLedRainbowParams (defaultRos1Duration)
ros1Pal_device_msgsLedRainbowParamsCodecIdentity :: String
ros1Pal_device_msgsLedRainbowParamsCodecIdentity = "UWVMROS1_78566593a51307fafdf358be01818b05b93bb22cb9c56241ca9ed3ab99e45ef9"
encodeRos1Pal_device_msgsLedRainbowParams :: Ros1Pal_device_msgsLedRainbowParams -> Either Word32 B.ByteString
encodeRos1Pal_device_msgsLedRainbowParams value = do
  b0 <- encodeRos1Duration (ros1Pal_device_msgsLedRainbowParams_transition_duration value)
  W.bounded 8 [b0]
readRos1Pal_device_msgsLedRainbowParams :: W.Decoder Ros1Pal_device_msgsLedRainbowParams
readRos1Pal_device_msgsLedRainbowParams = do
  a0 <- readRos1Duration
  let value = Ros1Pal_device_msgsLedRainbowParams a0
  case encodeRos1Pal_device_msgsLedRainbowParams value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_device_msgsLedRainbowParams :: B.ByteString -> Either Word32 Ros1Pal_device_msgsLedRainbowParams
decodeRos1Pal_device_msgsLedRainbowParams = W.runDecoder 8 readRos1Pal_device_msgsLedRainbowParams
instance Canonical Ros1Pal_device_msgsLedRainbowParams where
  maximumBytes _ = 8
  encodeValue = encodeRos1Pal_device_msgsLedRainbowParams
  readValue = readRos1Pal_device_msgsLedRainbowParams
data Ros1Pal_device_msgsLedFadeParams = Ros1Pal_device_msgsLedFadeParams
  {
    -- | \@brief pal_device_msgs/LedFadeParams.first_color: std_msgs/ColorRGBA.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsLedFadeParams; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsLedFadeParams_first_color :: Ros1Std_msgsColorRGBA
  ,
    -- | \@brief pal_device_msgs/LedFadeParams.second_color: std_msgs/ColorRGBA.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsLedFadeParams; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsLedFadeParams_second_color :: Ros1Std_msgsColorRGBA
  ,
    -- | \@brief pal_device_msgs/LedFadeParams.transition_duration: duration.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsLedFadeParams; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsLedFadeParams_transition_duration :: Ros1Duration
  ,
    -- | \@brief pal_device_msgs/LedFadeParams.reverse_fade: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsLedFadeParams; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsLedFadeParams_reverse_fade :: Bool
  } deriving (Eq, Show)
defaultRos1Pal_device_msgsLedFadeParams :: Ros1Pal_device_msgsLedFadeParams
defaultRos1Pal_device_msgsLedFadeParams =
    Ros1Pal_device_msgsLedFadeParams
    (defaultRos1Std_msgsColorRGBA)
    (defaultRos1Std_msgsColorRGBA)
    (defaultRos1Duration)
    (False)
ros1Pal_device_msgsLedFadeParamsCodecIdentity :: String
ros1Pal_device_msgsLedFadeParamsCodecIdentity = "UWVMROS1_ef4e86603f7f13e7595cb43ee879ad87ce8cb2b77c4fbf918b930066bdf88e6f"
encodeRos1Pal_device_msgsLedFadeParams :: Ros1Pal_device_msgsLedFadeParams -> Either Word32 B.ByteString
encodeRos1Pal_device_msgsLedFadeParams value = do
  b0 <- encodeRos1Std_msgsColorRGBA (ros1Pal_device_msgsLedFadeParams_first_color value)
  b1 <- encodeRos1Std_msgsColorRGBA (ros1Pal_device_msgsLedFadeParams_second_color value)
  b2 <- encodeRos1Duration (ros1Pal_device_msgsLedFadeParams_transition_duration value)
  b3 <- W.encodeBool (ros1Pal_device_msgsLedFadeParams_reverse_fade value)
  W.bounded 41 [b0, b1, b2, b3]
readRos1Pal_device_msgsLedFadeParams :: W.Decoder Ros1Pal_device_msgsLedFadeParams
readRos1Pal_device_msgsLedFadeParams = do
  a0 <- readRos1Std_msgsColorRGBA
  a1 <- readRos1Std_msgsColorRGBA
  a2 <- readRos1Duration
  a3 <- W.boolean
  let value = Ros1Pal_device_msgsLedFadeParams a0 a1 a2 a3
  case encodeRos1Pal_device_msgsLedFadeParams value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_device_msgsLedFadeParams :: B.ByteString -> Either Word32 Ros1Pal_device_msgsLedFadeParams
decodeRos1Pal_device_msgsLedFadeParams = W.runDecoder 41 readRos1Pal_device_msgsLedFadeParams
instance Canonical Ros1Pal_device_msgsLedFadeParams where
  maximumBytes _ = 41
  encodeValue = encodeRos1Pal_device_msgsLedFadeParams
  readValue = readRos1Pal_device_msgsLedFadeParams
data Ros1Pal_device_msgsLedBlinkParams = Ros1Pal_device_msgsLedBlinkParams
  {
    -- | \@brief pal_device_msgs/LedBlinkParams.first_color: std_msgs/ColorRGBA.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsLedBlinkParams; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsLedBlinkParams_first_color :: Ros1Std_msgsColorRGBA
  ,
    -- | \@brief pal_device_msgs/LedBlinkParams.second_color: std_msgs/ColorRGBA.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsLedBlinkParams; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsLedBlinkParams_second_color :: Ros1Std_msgsColorRGBA
  ,
    -- | \@brief pal_device_msgs/LedBlinkParams.first_color_duration: duration.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsLedBlinkParams; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsLedBlinkParams_first_color_duration :: Ros1Duration
  ,
    -- | \@brief pal_device_msgs/LedBlinkParams.second_color_duration: duration.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsLedBlinkParams; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsLedBlinkParams_second_color_duration :: Ros1Duration
  } deriving (Eq, Show)
defaultRos1Pal_device_msgsLedBlinkParams :: Ros1Pal_device_msgsLedBlinkParams
defaultRos1Pal_device_msgsLedBlinkParams =
    Ros1Pal_device_msgsLedBlinkParams
    (defaultRos1Std_msgsColorRGBA)
    (defaultRos1Std_msgsColorRGBA)
    (defaultRos1Duration)
    (defaultRos1Duration)
ros1Pal_device_msgsLedBlinkParamsCodecIdentity :: String
ros1Pal_device_msgsLedBlinkParamsCodecIdentity = "UWVMROS1_d8d4df17343bdef6d9ab19c2127c2375e0b97160517c8a59a5b4dc8967c250e2"
encodeRos1Pal_device_msgsLedBlinkParams :: Ros1Pal_device_msgsLedBlinkParams -> Either Word32 B.ByteString
encodeRos1Pal_device_msgsLedBlinkParams value = do
  b0 <- encodeRos1Std_msgsColorRGBA (ros1Pal_device_msgsLedBlinkParams_first_color value)
  b1 <- encodeRos1Std_msgsColorRGBA (ros1Pal_device_msgsLedBlinkParams_second_color value)
  b2 <- encodeRos1Duration (ros1Pal_device_msgsLedBlinkParams_first_color_duration value)
  b3 <- encodeRos1Duration (ros1Pal_device_msgsLedBlinkParams_second_color_duration value)
  W.bounded 48 [b0, b1, b2, b3]
readRos1Pal_device_msgsLedBlinkParams :: W.Decoder Ros1Pal_device_msgsLedBlinkParams
readRos1Pal_device_msgsLedBlinkParams = do
  a0 <- readRos1Std_msgsColorRGBA
  a1 <- readRos1Std_msgsColorRGBA
  a2 <- readRos1Duration
  a3 <- readRos1Duration
  let value = Ros1Pal_device_msgsLedBlinkParams a0 a1 a2 a3
  case encodeRos1Pal_device_msgsLedBlinkParams value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_device_msgsLedBlinkParams :: B.ByteString -> Either Word32 Ros1Pal_device_msgsLedBlinkParams
decodeRos1Pal_device_msgsLedBlinkParams = W.runDecoder 48 readRos1Pal_device_msgsLedBlinkParams
instance Canonical Ros1Pal_device_msgsLedBlinkParams where
  maximumBytes _ = 48
  encodeValue = encodeRos1Pal_device_msgsLedBlinkParams
  readValue = readRos1Pal_device_msgsLedBlinkParams
data Ros1Pal_device_msgsLedProgressParams = Ros1Pal_device_msgsLedProgressParams
  {
    -- | \@brief pal_device_msgs/LedProgressParams.first_color: std_msgs/ColorRGBA.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsLedProgressParams; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsLedProgressParams_first_color :: Ros1Std_msgsColorRGBA
  ,
    -- | \@brief pal_device_msgs/LedProgressParams.second_color: std_msgs/ColorRGBA.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsLedProgressParams; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsLedProgressParams_second_color :: Ros1Std_msgsColorRGBA
  ,
    -- | \@brief pal_device_msgs/LedProgressParams.percentage: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsLedProgressParams; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsLedProgressParams_percentage :: Float
  ,
    -- | \@brief pal_device_msgs/LedProgressParams.led_offset: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsLedProgressParams; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsLedProgressParams_led_offset :: Float
  } deriving (Eq, Show)
defaultRos1Pal_device_msgsLedProgressParams :: Ros1Pal_device_msgsLedProgressParams
defaultRos1Pal_device_msgsLedProgressParams = Ros1Pal_device_msgsLedProgressParams (defaultRos1Std_msgsColorRGBA) (defaultRos1Std_msgsColorRGBA) (0) (0)
ros1Pal_device_msgsLedProgressParamsCodecIdentity :: String
ros1Pal_device_msgsLedProgressParamsCodecIdentity = "UWVMROS1_e16b3b7d1c4a997f806a4e5bd67f150f947c0f06c0e1e810e34006d010a3b85e"
encodeRos1Pal_device_msgsLedProgressParams :: Ros1Pal_device_msgsLedProgressParams -> Either Word32 B.ByteString
encodeRos1Pal_device_msgsLedProgressParams value = do
  b0 <- encodeRos1Std_msgsColorRGBA (ros1Pal_device_msgsLedProgressParams_first_color value)
  b1 <- encodeRos1Std_msgsColorRGBA (ros1Pal_device_msgsLedProgressParams_second_color value)
  b2 <- W.encodeFloat32 (ros1Pal_device_msgsLedProgressParams_percentage value)
  b3 <- W.encodeFloat32 (ros1Pal_device_msgsLedProgressParams_led_offset value)
  W.bounded 40 [b0, b1, b2, b3]
readRos1Pal_device_msgsLedProgressParams :: W.Decoder Ros1Pal_device_msgsLedProgressParams
readRos1Pal_device_msgsLedProgressParams = do
  a0 <- readRos1Std_msgsColorRGBA
  a1 <- readRos1Std_msgsColorRGBA
  a2 <- W.float32
  a3 <- W.float32
  let value = Ros1Pal_device_msgsLedProgressParams a0 a1 a2 a3
  case encodeRos1Pal_device_msgsLedProgressParams value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_device_msgsLedProgressParams :: B.ByteString -> Either Word32 Ros1Pal_device_msgsLedProgressParams
decodeRos1Pal_device_msgsLedProgressParams = W.runDecoder 40 readRos1Pal_device_msgsLedProgressParams
instance Canonical Ros1Pal_device_msgsLedProgressParams where
  maximumBytes _ = 40
  encodeValue = encodeRos1Pal_device_msgsLedProgressParams
  readValue = readRos1Pal_device_msgsLedProgressParams
data Ros1Pal_device_msgsLedFlowParams = Ros1Pal_device_msgsLedFlowParams
  {
    -- | \@brief pal_device_msgs/LedFlowParams.first_color: std_msgs/ColorRGBA.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsLedFlowParams; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsLedFlowParams_first_color :: Ros1Std_msgsColorRGBA
  ,
    -- | \@brief pal_device_msgs/LedFlowParams.second_color: std_msgs/ColorRGBA.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsLedFlowParams; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsLedFlowParams_second_color :: Ros1Std_msgsColorRGBA
  ,
    -- | \@brief pal_device_msgs/LedFlowParams.percentage: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsLedFlowParams; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsLedFlowParams_percentage :: Float
  ,
    -- | \@brief pal_device_msgs/LedFlowParams.velocity: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsLedFlowParams; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsLedFlowParams_velocity :: Float
  } deriving (Eq, Show)
defaultRos1Pal_device_msgsLedFlowParams :: Ros1Pal_device_msgsLedFlowParams
defaultRos1Pal_device_msgsLedFlowParams = Ros1Pal_device_msgsLedFlowParams (defaultRos1Std_msgsColorRGBA) (defaultRos1Std_msgsColorRGBA) (0) (0)
ros1Pal_device_msgsLedFlowParamsCodecIdentity :: String
ros1Pal_device_msgsLedFlowParamsCodecIdentity = "UWVMROS1_b056dfced68aebfe2fda868b0d012ff75254be3787cf16f83a3ed939d7647aa7"
encodeRos1Pal_device_msgsLedFlowParams :: Ros1Pal_device_msgsLedFlowParams -> Either Word32 B.ByteString
encodeRos1Pal_device_msgsLedFlowParams value = do
  b0 <- encodeRos1Std_msgsColorRGBA (ros1Pal_device_msgsLedFlowParams_first_color value)
  b1 <- encodeRos1Std_msgsColorRGBA (ros1Pal_device_msgsLedFlowParams_second_color value)
  b2 <- W.encodeFloat32 (ros1Pal_device_msgsLedFlowParams_percentage value)
  b3 <- W.encodeFloat32 (ros1Pal_device_msgsLedFlowParams_velocity value)
  W.bounded 40 [b0, b1, b2, b3]
readRos1Pal_device_msgsLedFlowParams :: W.Decoder Ros1Pal_device_msgsLedFlowParams
readRos1Pal_device_msgsLedFlowParams = do
  a0 <- readRos1Std_msgsColorRGBA
  a1 <- readRos1Std_msgsColorRGBA
  a2 <- W.float32
  a3 <- W.float32
  let value = Ros1Pal_device_msgsLedFlowParams a0 a1 a2 a3
  case encodeRos1Pal_device_msgsLedFlowParams value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_device_msgsLedFlowParams :: B.ByteString -> Either Word32 Ros1Pal_device_msgsLedFlowParams
decodeRos1Pal_device_msgsLedFlowParams = W.runDecoder 40 readRos1Pal_device_msgsLedFlowParams
instance Canonical Ros1Pal_device_msgsLedFlowParams where
  maximumBytes _ = 40
  encodeValue = encodeRos1Pal_device_msgsLedFlowParams
  readValue = readRos1Pal_device_msgsLedFlowParams
data Ros1Pal_device_msgsLedPreProgrammedParams = Ros1Pal_device_msgsLedPreProgrammedParams
  {
    -- | \@brief pal_device_msgs/LedPreProgrammedParams.preprogrammed_id: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsLedPreProgrammedParams; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsLedPreProgrammedParams_preprogrammed_id :: Word8
  } deriving (Eq, Show)
defaultRos1Pal_device_msgsLedPreProgrammedParams :: Ros1Pal_device_msgsLedPreProgrammedParams
defaultRos1Pal_device_msgsLedPreProgrammedParams = Ros1Pal_device_msgsLedPreProgrammedParams (0)
ros1Pal_device_msgsLedPreProgrammedParamsCodecIdentity :: String
ros1Pal_device_msgsLedPreProgrammedParamsCodecIdentity = "UWVMROS1_86d21feddc513d20ae7c9772636027d56ce7244e56b18d7f4a6814eb246e2f1c"
encodeRos1Pal_device_msgsLedPreProgrammedParams :: Ros1Pal_device_msgsLedPreProgrammedParams -> Either Word32 B.ByteString
encodeRos1Pal_device_msgsLedPreProgrammedParams value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros1Pal_device_msgsLedPreProgrammedParams_preprogrammed_id value))
  W.bounded 1 [b0]
readRos1Pal_device_msgsLedPreProgrammedParams :: W.Decoder Ros1Pal_device_msgsLedPreProgrammedParams
readRos1Pal_device_msgsLedPreProgrammedParams = do
  a0 <- fromIntegral <$> W.unsigned 1
  let value = Ros1Pal_device_msgsLedPreProgrammedParams a0
  case encodeRos1Pal_device_msgsLedPreProgrammedParams value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_device_msgsLedPreProgrammedParams :: B.ByteString -> Either Word32 Ros1Pal_device_msgsLedPreProgrammedParams
decodeRos1Pal_device_msgsLedPreProgrammedParams = W.runDecoder 1 readRos1Pal_device_msgsLedPreProgrammedParams
instance Canonical Ros1Pal_device_msgsLedPreProgrammedParams where
  maximumBytes _ = 1
  encodeValue = encodeRos1Pal_device_msgsLedPreProgrammedParams
  readValue = readRos1Pal_device_msgsLedPreProgrammedParams
data Ros1Pal_device_msgsLedEffectViaTopicParams = Ros1Pal_device_msgsLedEffectViaTopicParams
  {
    -- | \@brief pal_device_msgs/LedEffectViaTopicParams.topic_name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsLedEffectViaTopicParams; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsLedEffectViaTopicParams_topic_name :: T.Text
  } deriving (Eq, Show)
defaultRos1Pal_device_msgsLedEffectViaTopicParams :: Ros1Pal_device_msgsLedEffectViaTopicParams
defaultRos1Pal_device_msgsLedEffectViaTopicParams = Ros1Pal_device_msgsLedEffectViaTopicParams (T.empty)
ros1Pal_device_msgsLedEffectViaTopicParamsCodecIdentity :: String
ros1Pal_device_msgsLedEffectViaTopicParamsCodecIdentity = "UWVMROS1_0ecb4f17c68f4e0dc1d682a09e40c4177a0f568e4465b5810b8371e8dc544042"
encodeRos1Pal_device_msgsLedEffectViaTopicParams :: Ros1Pal_device_msgsLedEffectViaTopicParams -> Either Word32 B.ByteString
encodeRos1Pal_device_msgsLedEffectViaTopicParams value = do
  b0 <- W.encodeText 128 True (ros1Pal_device_msgsLedEffectViaTopicParams_topic_name value)
  W.bounded 132 [b0]
readRos1Pal_device_msgsLedEffectViaTopicParams :: W.Decoder Ros1Pal_device_msgsLedEffectViaTopicParams
readRos1Pal_device_msgsLedEffectViaTopicParams = do
  a0 <- W.text 128 True
  let value = Ros1Pal_device_msgsLedEffectViaTopicParams a0
  case encodeRos1Pal_device_msgsLedEffectViaTopicParams value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_device_msgsLedEffectViaTopicParams :: B.ByteString -> Either Word32 Ros1Pal_device_msgsLedEffectViaTopicParams
decodeRos1Pal_device_msgsLedEffectViaTopicParams = W.runDecoder 132 readRos1Pal_device_msgsLedEffectViaTopicParams
instance Canonical Ros1Pal_device_msgsLedEffectViaTopicParams where
  maximumBytes _ = 132
  encodeValue = encodeRos1Pal_device_msgsLedEffectViaTopicParams
  readValue = readRos1Pal_device_msgsLedEffectViaTopicParams
data Ros1Pal_device_msgsLedDataArrayParams = Ros1Pal_device_msgsLedDataArrayParams
  {
    -- | \@brief pal_device_msgs/LedDataArrayParams.data: std_msgs/ColorRGBA; 0..4 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsLedDataArrayParams; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsLedDataArrayParams_data :: [Ros1Std_msgsColorRGBA]
  } deriving (Eq, Show)
defaultRos1Pal_device_msgsLedDataArrayParams :: Ros1Pal_device_msgsLedDataArrayParams
defaultRos1Pal_device_msgsLedDataArrayParams = Ros1Pal_device_msgsLedDataArrayParams ([])
ros1Pal_device_msgsLedDataArrayParamsCodecIdentity :: String
ros1Pal_device_msgsLedDataArrayParamsCodecIdentity = "UWVMROS1_edd98b3ea577b8bb6bc3e66afcf900c719fe0b3e964a636f0e87b5bf1f7fe56a"
encodeRos1Pal_device_msgsLedDataArrayParams :: Ros1Pal_device_msgsLedDataArrayParams -> Either Word32 B.ByteString
encodeRos1Pal_device_msgsLedDataArrayParams value = do
  if length (ros1Pal_device_msgsLedDataArrayParams_data value) > 4 then Left 22 else Right ()
  prefix0 <- W.encodeCount 4 (length (ros1Pal_device_msgsLedDataArrayParams_data value))
  b0 <- B.concat <$> mapM (\e -> encodeRos1Std_msgsColorRGBA (e)) (ros1Pal_device_msgsLedDataArrayParams_data value)
  W.bounded 68 [prefix0, b0]
readRos1Pal_device_msgsLedDataArrayParams :: W.Decoder Ros1Pal_device_msgsLedDataArrayParams
readRos1Pal_device_msgsLedDataArrayParams = do
  count0 <- W.count 4
  a0 <- replicateM count0 (readRos1Std_msgsColorRGBA)
  let value = Ros1Pal_device_msgsLedDataArrayParams a0
  case encodeRos1Pal_device_msgsLedDataArrayParams value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_device_msgsLedDataArrayParams :: B.ByteString -> Either Word32 Ros1Pal_device_msgsLedDataArrayParams
decodeRos1Pal_device_msgsLedDataArrayParams = W.runDecoder 68 readRos1Pal_device_msgsLedDataArrayParams
instance Canonical Ros1Pal_device_msgsLedDataArrayParams where
  maximumBytes _ = 68
  encodeValue = encodeRos1Pal_device_msgsLedDataArrayParams
  readValue = readRos1Pal_device_msgsLedDataArrayParams
data Ros1Pal_device_msgsLedEffectParams = Ros1Pal_device_msgsLedEffectParams
  {
    -- | \@brief pal_device_msgs/LedEffectParams.effectType: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsLedEffectParams; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsLedEffectParams_effectType :: Word8
  ,
    -- | \@brief pal_device_msgs/LedEffectParams.fixed_color: pal_device_msgs/LedFixedColorParams.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsLedEffectParams; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsLedEffectParams_fixed_color :: Ros1Pal_device_msgsLedFixedColorParams
  ,
    -- | \@brief pal_device_msgs/LedEffectParams.rainbow: pal_device_msgs/LedRainbowParams.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsLedEffectParams; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsLedEffectParams_rainbow :: Ros1Pal_device_msgsLedRainbowParams
  ,
    -- | \@brief pal_device_msgs/LedEffectParams.fade: pal_device_msgs/LedFadeParams.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsLedEffectParams; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsLedEffectParams_fade :: Ros1Pal_device_msgsLedFadeParams
  ,
    -- | \@brief pal_device_msgs/LedEffectParams.blink: pal_device_msgs/LedBlinkParams.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsLedEffectParams; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsLedEffectParams_blink :: Ros1Pal_device_msgsLedBlinkParams
  ,
    -- | \@brief pal_device_msgs/LedEffectParams.progress: pal_device_msgs/LedProgressParams.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsLedEffectParams; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsLedEffectParams_progress :: Ros1Pal_device_msgsLedProgressParams
  ,
    -- | \@brief pal_device_msgs/LedEffectParams.flow: pal_device_msgs/LedFlowParams.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsLedEffectParams; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsLedEffectParams_flow :: Ros1Pal_device_msgsLedFlowParams
  ,
    -- | \@brief pal_device_msgs/LedEffectParams.preprogrammed: pal_device_msgs/LedPreProgrammedParams.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsLedEffectParams; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsLedEffectParams_preprogrammed :: Ros1Pal_device_msgsLedPreProgrammedParams
  ,
    -- | \@brief pal_device_msgs/LedEffectParams.effect_via_topic: pal_device_msgs/LedEffectViaTopicParams.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsLedEffectParams; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsLedEffectParams_effect_via_topic :: Ros1Pal_device_msgsLedEffectViaTopicParams
  ,
    -- | \@brief pal_device_msgs/LedEffectParams.data_array: pal_device_msgs/LedDataArrayParams.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsLedEffectParams; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsLedEffectParams_data_array :: Ros1Pal_device_msgsLedDataArrayParams
  } deriving (Eq, Show)
defaultRos1Pal_device_msgsLedEffectParams :: Ros1Pal_device_msgsLedEffectParams
defaultRos1Pal_device_msgsLedEffectParams =
    Ros1Pal_device_msgsLedEffectParams
    (0)
    (defaultRos1Pal_device_msgsLedFixedColorParams)
    (defaultRos1Pal_device_msgsLedRainbowParams)
    (defaultRos1Pal_device_msgsLedFadeParams)
    (defaultRos1Pal_device_msgsLedBlinkParams)
    (defaultRos1Pal_device_msgsLedProgressParams)
    (defaultRos1Pal_device_msgsLedFlowParams)
    (defaultRos1Pal_device_msgsLedPreProgrammedParams)
    (defaultRos1Pal_device_msgsLedEffectViaTopicParams)
    (defaultRos1Pal_device_msgsLedDataArrayParams)
ros1Pal_device_msgsLedEffectParamsCodecIdentity :: String
ros1Pal_device_msgsLedEffectParamsCodecIdentity = "UWVMROS1_c2d7568c4d0e241b555b76b29424dc46d72587421f5c2e0647204b792b9b17a6"
ros1Pal_device_msgsLedEffectParams_FIXED_COLOR :: Word8
ros1Pal_device_msgsLedEffectParams_FIXED_COLOR = 0
ros1Pal_device_msgsLedEffectParams_RAINBOW :: Word8
ros1Pal_device_msgsLedEffectParams_RAINBOW = 1
ros1Pal_device_msgsLedEffectParams_FADE :: Word8
ros1Pal_device_msgsLedEffectParams_FADE = 2
ros1Pal_device_msgsLedEffectParams_BLINK :: Word8
ros1Pal_device_msgsLedEffectParams_BLINK = 3
ros1Pal_device_msgsLedEffectParams_PROGRESS :: Word8
ros1Pal_device_msgsLedEffectParams_PROGRESS = 4
ros1Pal_device_msgsLedEffectParams_FLOW :: Word8
ros1Pal_device_msgsLedEffectParams_FLOW = 5
ros1Pal_device_msgsLedEffectParams_PREPROGRAMMED_EFFECT :: Word8
ros1Pal_device_msgsLedEffectParams_PREPROGRAMMED_EFFECT = 6
ros1Pal_device_msgsLedEffectParams_EFFECT_VIA_TOPIC :: Word8
ros1Pal_device_msgsLedEffectParams_EFFECT_VIA_TOPIC = 7
ros1Pal_device_msgsLedEffectParams_DATA_ARRAY :: Word8
ros1Pal_device_msgsLedEffectParams_DATA_ARRAY = 8
encodeRos1Pal_device_msgsLedEffectParams :: Ros1Pal_device_msgsLedEffectParams -> Either Word32 B.ByteString
encodeRos1Pal_device_msgsLedEffectParams value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros1Pal_device_msgsLedEffectParams_effectType value))
  b1 <- encodeRos1Pal_device_msgsLedFixedColorParams (ros1Pal_device_msgsLedEffectParams_fixed_color value)
  b2 <- encodeRos1Pal_device_msgsLedRainbowParams (ros1Pal_device_msgsLedEffectParams_rainbow value)
  b3 <- encodeRos1Pal_device_msgsLedFadeParams (ros1Pal_device_msgsLedEffectParams_fade value)
  b4 <- encodeRos1Pal_device_msgsLedBlinkParams (ros1Pal_device_msgsLedEffectParams_blink value)
  b5 <- encodeRos1Pal_device_msgsLedProgressParams (ros1Pal_device_msgsLedEffectParams_progress value)
  b6 <- encodeRos1Pal_device_msgsLedFlowParams (ros1Pal_device_msgsLedEffectParams_flow value)
  b7 <- encodeRos1Pal_device_msgsLedPreProgrammedParams (ros1Pal_device_msgsLedEffectParams_preprogrammed value)
  b8 <- encodeRos1Pal_device_msgsLedEffectViaTopicParams (ros1Pal_device_msgsLedEffectParams_effect_via_topic value)
  b9 <- encodeRos1Pal_device_msgsLedDataArrayParams (ros1Pal_device_msgsLedEffectParams_data_array value)
  W.bounded 395 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9]
readRos1Pal_device_msgsLedEffectParams :: W.Decoder Ros1Pal_device_msgsLedEffectParams
readRos1Pal_device_msgsLedEffectParams = do
  a0 <- fromIntegral <$> W.unsigned 1
  a1 <- readRos1Pal_device_msgsLedFixedColorParams
  a2 <- readRos1Pal_device_msgsLedRainbowParams
  a3 <- readRos1Pal_device_msgsLedFadeParams
  a4 <- readRos1Pal_device_msgsLedBlinkParams
  a5 <- readRos1Pal_device_msgsLedProgressParams
  a6 <- readRos1Pal_device_msgsLedFlowParams
  a7 <- readRos1Pal_device_msgsLedPreProgrammedParams
  a8 <- readRos1Pal_device_msgsLedEffectViaTopicParams
  a9 <- readRos1Pal_device_msgsLedDataArrayParams
  let value = Ros1Pal_device_msgsLedEffectParams a0 a1 a2 a3 a4 a5 a6 a7 a8 a9
  case encodeRos1Pal_device_msgsLedEffectParams value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_device_msgsLedEffectParams :: B.ByteString -> Either Word32 Ros1Pal_device_msgsLedEffectParams
decodeRos1Pal_device_msgsLedEffectParams = W.runDecoder 395 readRos1Pal_device_msgsLedEffectParams
instance Canonical Ros1Pal_device_msgsLedEffectParams where
  maximumBytes _ = 395
  encodeValue = encodeRos1Pal_device_msgsLedEffectParams
  readValue = readRos1Pal_device_msgsLedEffectParams
data Ros1Pal_device_msgsDoTimedLedEffectGoal = Ros1Pal_device_msgsDoTimedLedEffectGoal
  {
    -- | \@brief pal_device_msgs/DoTimedLedEffectGoal.devices: uint32; 0..16 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsDoTimedLedEffectGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsDoTimedLedEffectGoal_devices :: [Word32]
  ,
    -- | \@brief pal_device_msgs/DoTimedLedEffectGoal.params: pal_device_msgs/LedEffectParams.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsDoTimedLedEffectGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsDoTimedLedEffectGoal_params :: Ros1Pal_device_msgsLedEffectParams
  ,
    -- | \@brief pal_device_msgs/DoTimedLedEffectGoal.effectDuration: duration.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsDoTimedLedEffectGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsDoTimedLedEffectGoal_effectDuration :: Ros1Duration
  ,
    -- | \@brief pal_device_msgs/DoTimedLedEffectGoal.priority: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsDoTimedLedEffectGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsDoTimedLedEffectGoal_priority :: Word8
  } deriving (Eq, Show)
defaultRos1Pal_device_msgsDoTimedLedEffectGoal :: Ros1Pal_device_msgsDoTimedLedEffectGoal
defaultRos1Pal_device_msgsDoTimedLedEffectGoal =
    Ros1Pal_device_msgsDoTimedLedEffectGoal
    ([])
    (defaultRos1Pal_device_msgsLedEffectParams)
    (defaultRos1Duration)
    (0)
ros1Pal_device_msgsDoTimedLedEffectGoalCodecIdentity :: String
ros1Pal_device_msgsDoTimedLedEffectGoalCodecIdentity = "UWVMROS1_683df32baf5dae0e44c1f7345d0867d5f68ae493d0652b44b314e8d6d348b7dc"
encodeRos1Pal_device_msgsDoTimedLedEffectGoal :: Ros1Pal_device_msgsDoTimedLedEffectGoal -> Either Word32 B.ByteString
encodeRos1Pal_device_msgsDoTimedLedEffectGoal value = do
  if length (ros1Pal_device_msgsDoTimedLedEffectGoal_devices value) > 16 then Left 22 else Right ()
  prefix0 <- W.encodeCount 16 (length (ros1Pal_device_msgsDoTimedLedEffectGoal_devices value))
  b0 <- B.concat <$> mapM (\e -> W.encodeUnsigned 4 (fromIntegral (e))) (ros1Pal_device_msgsDoTimedLedEffectGoal_devices value)
  b1 <- encodeRos1Pal_device_msgsLedEffectParams (ros1Pal_device_msgsDoTimedLedEffectGoal_params value)
  b2 <- encodeRos1Duration (ros1Pal_device_msgsDoTimedLedEffectGoal_effectDuration value)
  b3 <- W.encodeUnsigned 1 (fromIntegral (ros1Pal_device_msgsDoTimedLedEffectGoal_priority value))
  W.bounded 472 [prefix0, b0, b1, b2, b3]
readRos1Pal_device_msgsDoTimedLedEffectGoal :: W.Decoder Ros1Pal_device_msgsDoTimedLedEffectGoal
readRos1Pal_device_msgsDoTimedLedEffectGoal = do
  count0 <- W.count 16
  a0 <- replicateM count0 (fromIntegral <$> W.unsigned 4)
  a1 <- readRos1Pal_device_msgsLedEffectParams
  a2 <- readRos1Duration
  a3 <- fromIntegral <$> W.unsigned 1
  let value = Ros1Pal_device_msgsDoTimedLedEffectGoal a0 a1 a2 a3
  case encodeRos1Pal_device_msgsDoTimedLedEffectGoal value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_device_msgsDoTimedLedEffectGoal :: B.ByteString -> Either Word32 Ros1Pal_device_msgsDoTimedLedEffectGoal
decodeRos1Pal_device_msgsDoTimedLedEffectGoal = W.runDecoder 472 readRos1Pal_device_msgsDoTimedLedEffectGoal
instance Canonical Ros1Pal_device_msgsDoTimedLedEffectGoal where
  maximumBytes _ = 472
  encodeValue = encodeRos1Pal_device_msgsDoTimedLedEffectGoal
  readValue = readRos1Pal_device_msgsDoTimedLedEffectGoal
data Ros1Pal_device_msgsDoTimedLedEffectResult = Ros1Pal_device_msgsDoTimedLedEffectResult deriving (Eq, Show)
defaultRos1Pal_device_msgsDoTimedLedEffectResult :: Ros1Pal_device_msgsDoTimedLedEffectResult
defaultRos1Pal_device_msgsDoTimedLedEffectResult = Ros1Pal_device_msgsDoTimedLedEffectResult 
ros1Pal_device_msgsDoTimedLedEffectResultCodecIdentity :: String
ros1Pal_device_msgsDoTimedLedEffectResultCodecIdentity = "UWVMROS1_b23c6e239b4bf2ca3810eeb253d87a1e834c8ccb4b3c0c473cb4097aa3456be8"
encodeRos1Pal_device_msgsDoTimedLedEffectResult :: Ros1Pal_device_msgsDoTimedLedEffectResult -> Either Word32 B.ByteString
encodeRos1Pal_device_msgsDoTimedLedEffectResult value = do
  W.bounded 0 []
readRos1Pal_device_msgsDoTimedLedEffectResult :: W.Decoder Ros1Pal_device_msgsDoTimedLedEffectResult
readRos1Pal_device_msgsDoTimedLedEffectResult = do
  let value = Ros1Pal_device_msgsDoTimedLedEffectResult 
  case encodeRos1Pal_device_msgsDoTimedLedEffectResult value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_device_msgsDoTimedLedEffectResult :: B.ByteString -> Either Word32 Ros1Pal_device_msgsDoTimedLedEffectResult
decodeRos1Pal_device_msgsDoTimedLedEffectResult = W.runDecoder 0 readRos1Pal_device_msgsDoTimedLedEffectResult
instance Canonical Ros1Pal_device_msgsDoTimedLedEffectResult where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_device_msgsDoTimedLedEffectResult
  readValue = readRos1Pal_device_msgsDoTimedLedEffectResult
data Ros1Pal_device_msgsDoTimedLedEffectFeedback = Ros1Pal_device_msgsDoTimedLedEffectFeedback deriving (Eq, Show)
defaultRos1Pal_device_msgsDoTimedLedEffectFeedback :: Ros1Pal_device_msgsDoTimedLedEffectFeedback
defaultRos1Pal_device_msgsDoTimedLedEffectFeedback = Ros1Pal_device_msgsDoTimedLedEffectFeedback 
ros1Pal_device_msgsDoTimedLedEffectFeedbackCodecIdentity :: String
ros1Pal_device_msgsDoTimedLedEffectFeedbackCodecIdentity = "UWVMROS1_75ad5b9ac229b54a0b9883961cf275a9c11a0dd4c7761913326a8df0aea182f6"
encodeRos1Pal_device_msgsDoTimedLedEffectFeedback :: Ros1Pal_device_msgsDoTimedLedEffectFeedback -> Either Word32 B.ByteString
encodeRos1Pal_device_msgsDoTimedLedEffectFeedback value = do
  W.bounded 0 []
readRos1Pal_device_msgsDoTimedLedEffectFeedback :: W.Decoder Ros1Pal_device_msgsDoTimedLedEffectFeedback
readRos1Pal_device_msgsDoTimedLedEffectFeedback = do
  let value = Ros1Pal_device_msgsDoTimedLedEffectFeedback 
  case encodeRos1Pal_device_msgsDoTimedLedEffectFeedback value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_device_msgsDoTimedLedEffectFeedback :: B.ByteString -> Either Word32 Ros1Pal_device_msgsDoTimedLedEffectFeedback
decodeRos1Pal_device_msgsDoTimedLedEffectFeedback = W.runDecoder 0 readRos1Pal_device_msgsDoTimedLedEffectFeedback
instance Canonical Ros1Pal_device_msgsDoTimedLedEffectFeedback where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_device_msgsDoTimedLedEffectFeedback
  readValue = readRos1Pal_device_msgsDoTimedLedEffectFeedback
data Ros1Pal_device_msgsLedGroup = Ros1Pal_device_msgsLedGroup
  {
    -- | \@brief pal_device_msgs/LedGroup.ledMask: uint32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsLedGroup; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsLedGroup_ledMask :: Word32
  } deriving (Eq, Show)
defaultRos1Pal_device_msgsLedGroup :: Ros1Pal_device_msgsLedGroup
defaultRos1Pal_device_msgsLedGroup = Ros1Pal_device_msgsLedGroup (0)
ros1Pal_device_msgsLedGroupCodecIdentity :: String
ros1Pal_device_msgsLedGroupCodecIdentity = "UWVMROS1_d28d4258c918d58634c62cd20e417ca06734a5a2de8516b65663a9a3be82b008"
ros1Pal_device_msgsLedGroup_LEFT_EAR :: Int8
ros1Pal_device_msgsLedGroup_LEFT_EAR = 1
ros1Pal_device_msgsLedGroup_RIGHT_EAR :: Int8
ros1Pal_device_msgsLedGroup_RIGHT_EAR = 2
encodeRos1Pal_device_msgsLedGroup :: Ros1Pal_device_msgsLedGroup -> Either Word32 B.ByteString
encodeRos1Pal_device_msgsLedGroup value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Pal_device_msgsLedGroup_ledMask value))
  W.bounded 4 [b0]
readRos1Pal_device_msgsLedGroup :: W.Decoder Ros1Pal_device_msgsLedGroup
readRos1Pal_device_msgsLedGroup = do
  a0 <- fromIntegral <$> W.unsigned 4
  let value = Ros1Pal_device_msgsLedGroup a0
  case encodeRos1Pal_device_msgsLedGroup value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_device_msgsLedGroup :: B.ByteString -> Either Word32 Ros1Pal_device_msgsLedGroup
decodeRos1Pal_device_msgsLedGroup = W.runDecoder 4 readRos1Pal_device_msgsLedGroup
instance Canonical Ros1Pal_device_msgsLedGroup where
  maximumBytes _ = 4
  encodeValue = encodeRos1Pal_device_msgsLedGroup
  readValue = readRos1Pal_device_msgsLedGroup
data Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest = Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest
  {
    -- | \@brief pal_device_msgs/ShutdownAndWakeUpRobotRequest.shutdown_duration: duration.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsShutdownAndWakeUpRobotRequest_shutdown_duration :: Ros1Duration
  } deriving (Eq, Show)
defaultRos1Pal_device_msgsShutdownAndWakeUpRobotRequest :: Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest
defaultRos1Pal_device_msgsShutdownAndWakeUpRobotRequest = Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest (defaultRos1Duration)
ros1Pal_device_msgsShutdownAndWakeUpRobotRequestCodecIdentity :: String
ros1Pal_device_msgsShutdownAndWakeUpRobotRequestCodecIdentity = "UWVMROS1_e4fee1d5bb74578f009ac582242bf11237d0af2a1b8ff57b750e74dd338e3cbf"
encodeRos1Pal_device_msgsShutdownAndWakeUpRobotRequest :: Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest -> Either Word32 B.ByteString
encodeRos1Pal_device_msgsShutdownAndWakeUpRobotRequest value = do
  b0 <- encodeRos1Duration (ros1Pal_device_msgsShutdownAndWakeUpRobotRequest_shutdown_duration value)
  W.bounded 8 [b0]
readRos1Pal_device_msgsShutdownAndWakeUpRobotRequest :: W.Decoder Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest
readRos1Pal_device_msgsShutdownAndWakeUpRobotRequest = do
  a0 <- readRos1Duration
  let value = Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest a0
  case encodeRos1Pal_device_msgsShutdownAndWakeUpRobotRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_device_msgsShutdownAndWakeUpRobotRequest :: B.ByteString -> Either Word32 Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest
decodeRos1Pal_device_msgsShutdownAndWakeUpRobotRequest = W.runDecoder 8 readRos1Pal_device_msgsShutdownAndWakeUpRobotRequest
instance Canonical Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest where
  maximumBytes _ = 8
  encodeValue = encodeRos1Pal_device_msgsShutdownAndWakeUpRobotRequest
  readValue = readRos1Pal_device_msgsShutdownAndWakeUpRobotRequest
data Ros1Pal_device_msgsShutdownAndWakeUpRobotResponse = Ros1Pal_device_msgsShutdownAndWakeUpRobotResponse deriving (Eq, Show)
defaultRos1Pal_device_msgsShutdownAndWakeUpRobotResponse :: Ros1Pal_device_msgsShutdownAndWakeUpRobotResponse
defaultRos1Pal_device_msgsShutdownAndWakeUpRobotResponse = Ros1Pal_device_msgsShutdownAndWakeUpRobotResponse 
ros1Pal_device_msgsShutdownAndWakeUpRobotResponseCodecIdentity :: String
ros1Pal_device_msgsShutdownAndWakeUpRobotResponseCodecIdentity = "UWVMROS1_e4d1f2b350c53536e168ee2b8b51f439084939dd2ff14769152d99d52f16c3a8"
encodeRos1Pal_device_msgsShutdownAndWakeUpRobotResponse :: Ros1Pal_device_msgsShutdownAndWakeUpRobotResponse -> Either Word32 B.ByteString
encodeRos1Pal_device_msgsShutdownAndWakeUpRobotResponse value = do
  W.bounded 0 []
readRos1Pal_device_msgsShutdownAndWakeUpRobotResponse :: W.Decoder Ros1Pal_device_msgsShutdownAndWakeUpRobotResponse
readRos1Pal_device_msgsShutdownAndWakeUpRobotResponse = do
  let value = Ros1Pal_device_msgsShutdownAndWakeUpRobotResponse 
  case encodeRos1Pal_device_msgsShutdownAndWakeUpRobotResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_device_msgsShutdownAndWakeUpRobotResponse :: B.ByteString -> Either Word32 Ros1Pal_device_msgsShutdownAndWakeUpRobotResponse
decodeRos1Pal_device_msgsShutdownAndWakeUpRobotResponse = W.runDecoder 0 readRos1Pal_device_msgsShutdownAndWakeUpRobotResponse
instance Canonical Ros1Pal_device_msgsShutdownAndWakeUpRobotResponse where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_device_msgsShutdownAndWakeUpRobotResponse
  readValue = readRos1Pal_device_msgsShutdownAndWakeUpRobotResponse
data Ros1Pal_device_msgsTimedBlinkEffectRequest = Ros1Pal_device_msgsTimedBlinkEffectRequest
  {
    -- | \@brief pal_device_msgs/TimedBlinkEffectRequest.leds: pal_device_msgs/LedGroup.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsTimedBlinkEffectRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsTimedBlinkEffectRequest_leds :: Ros1Pal_device_msgsLedGroup
  ,
    -- | \@brief pal_device_msgs/TimedBlinkEffectRequest.firstColor: std_msgs/ColorRGBA.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsTimedBlinkEffectRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsTimedBlinkEffectRequest_firstColor :: Ros1Std_msgsColorRGBA
  ,
    -- | \@brief pal_device_msgs/TimedBlinkEffectRequest.secondColor: std_msgs/ColorRGBA.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsTimedBlinkEffectRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsTimedBlinkEffectRequest_secondColor :: Ros1Std_msgsColorRGBA
  ,
    -- | \@brief pal_device_msgs/TimedBlinkEffectRequest.firstColorDuration: duration.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsTimedBlinkEffectRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsTimedBlinkEffectRequest_firstColorDuration :: Ros1Duration
  ,
    -- | \@brief pal_device_msgs/TimedBlinkEffectRequest.secondColorDuration: duration.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsTimedBlinkEffectRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsTimedBlinkEffectRequest_secondColorDuration :: Ros1Duration
  ,
    -- | \@brief pal_device_msgs/TimedBlinkEffectRequest.effectDuration: duration.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsTimedBlinkEffectRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsTimedBlinkEffectRequest_effectDuration :: Ros1Duration
  ,
    -- | \@brief pal_device_msgs/TimedBlinkEffectRequest.priority: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsTimedBlinkEffectRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsTimedBlinkEffectRequest_priority :: Word8
  } deriving (Eq, Show)
defaultRos1Pal_device_msgsTimedBlinkEffectRequest :: Ros1Pal_device_msgsTimedBlinkEffectRequest
defaultRos1Pal_device_msgsTimedBlinkEffectRequest =
    Ros1Pal_device_msgsTimedBlinkEffectRequest
    (defaultRos1Pal_device_msgsLedGroup)
    (defaultRos1Std_msgsColorRGBA)
    (defaultRos1Std_msgsColorRGBA)
    (defaultRos1Duration)
    (defaultRos1Duration)
    (defaultRos1Duration)
    (0)
ros1Pal_device_msgsTimedBlinkEffectRequestCodecIdentity :: String
ros1Pal_device_msgsTimedBlinkEffectRequestCodecIdentity = "UWVMROS1_8ec92359735c7aabcb8896987a538b39e66996ae82805fb82e0dfc6099bd2fb9"
encodeRos1Pal_device_msgsTimedBlinkEffectRequest :: Ros1Pal_device_msgsTimedBlinkEffectRequest -> Either Word32 B.ByteString
encodeRos1Pal_device_msgsTimedBlinkEffectRequest value = do
  b0 <- encodeRos1Pal_device_msgsLedGroup (ros1Pal_device_msgsTimedBlinkEffectRequest_leds value)
  b1 <- encodeRos1Std_msgsColorRGBA (ros1Pal_device_msgsTimedBlinkEffectRequest_firstColor value)
  b2 <- encodeRos1Std_msgsColorRGBA (ros1Pal_device_msgsTimedBlinkEffectRequest_secondColor value)
  b3 <- encodeRos1Duration (ros1Pal_device_msgsTimedBlinkEffectRequest_firstColorDuration value)
  b4 <- encodeRos1Duration (ros1Pal_device_msgsTimedBlinkEffectRequest_secondColorDuration value)
  b5 <- encodeRos1Duration (ros1Pal_device_msgsTimedBlinkEffectRequest_effectDuration value)
  b6 <- W.encodeUnsigned 1 (fromIntegral (ros1Pal_device_msgsTimedBlinkEffectRequest_priority value))
  W.bounded 61 [b0, b1, b2, b3, b4, b5, b6]
readRos1Pal_device_msgsTimedBlinkEffectRequest :: W.Decoder Ros1Pal_device_msgsTimedBlinkEffectRequest
readRos1Pal_device_msgsTimedBlinkEffectRequest = do
  a0 <- readRos1Pal_device_msgsLedGroup
  a1 <- readRos1Std_msgsColorRGBA
  a2 <- readRos1Std_msgsColorRGBA
  a3 <- readRos1Duration
  a4 <- readRos1Duration
  a5 <- readRos1Duration
  a6 <- fromIntegral <$> W.unsigned 1
  let value = Ros1Pal_device_msgsTimedBlinkEffectRequest a0 a1 a2 a3 a4 a5 a6
  case encodeRos1Pal_device_msgsTimedBlinkEffectRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_device_msgsTimedBlinkEffectRequest :: B.ByteString -> Either Word32 Ros1Pal_device_msgsTimedBlinkEffectRequest
decodeRos1Pal_device_msgsTimedBlinkEffectRequest = W.runDecoder 61 readRos1Pal_device_msgsTimedBlinkEffectRequest
instance Canonical Ros1Pal_device_msgsTimedBlinkEffectRequest where
  maximumBytes _ = 61
  encodeValue = encodeRos1Pal_device_msgsTimedBlinkEffectRequest
  readValue = readRos1Pal_device_msgsTimedBlinkEffectRequest
data Ros1Pal_device_msgsTimedBlinkEffectResponse = Ros1Pal_device_msgsTimedBlinkEffectResponse
  {
    -- | \@brief pal_device_msgs/TimedBlinkEffectResponse.effectId: uint32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsTimedBlinkEffectResponse; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsTimedBlinkEffectResponse_effectId :: Word32
  } deriving (Eq, Show)
defaultRos1Pal_device_msgsTimedBlinkEffectResponse :: Ros1Pal_device_msgsTimedBlinkEffectResponse
defaultRos1Pal_device_msgsTimedBlinkEffectResponse = Ros1Pal_device_msgsTimedBlinkEffectResponse (0)
ros1Pal_device_msgsTimedBlinkEffectResponseCodecIdentity :: String
ros1Pal_device_msgsTimedBlinkEffectResponseCodecIdentity = "UWVMROS1_40ddabd6ab74343f2fd4be29e2987fcd382376d3d5f1873220524f47667b00bd"
encodeRos1Pal_device_msgsTimedBlinkEffectResponse :: Ros1Pal_device_msgsTimedBlinkEffectResponse -> Either Word32 B.ByteString
encodeRos1Pal_device_msgsTimedBlinkEffectResponse value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Pal_device_msgsTimedBlinkEffectResponse_effectId value))
  W.bounded 4 [b0]
readRos1Pal_device_msgsTimedBlinkEffectResponse :: W.Decoder Ros1Pal_device_msgsTimedBlinkEffectResponse
readRos1Pal_device_msgsTimedBlinkEffectResponse = do
  a0 <- fromIntegral <$> W.unsigned 4
  let value = Ros1Pal_device_msgsTimedBlinkEffectResponse a0
  case encodeRos1Pal_device_msgsTimedBlinkEffectResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_device_msgsTimedBlinkEffectResponse :: B.ByteString -> Either Word32 Ros1Pal_device_msgsTimedBlinkEffectResponse
decodeRos1Pal_device_msgsTimedBlinkEffectResponse = W.runDecoder 4 readRos1Pal_device_msgsTimedBlinkEffectResponse
instance Canonical Ros1Pal_device_msgsTimedBlinkEffectResponse where
  maximumBytes _ = 4
  encodeValue = encodeRos1Pal_device_msgsTimedBlinkEffectResponse
  readValue = readRos1Pal_device_msgsTimedBlinkEffectResponse
data Ros1Pal_device_msgsTimedColourEffectRequest = Ros1Pal_device_msgsTimedColourEffectRequest
  {
    -- | \@brief pal_device_msgs/TimedColourEffectRequest.leds: pal_device_msgs/LedGroup.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsTimedColourEffectRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsTimedColourEffectRequest_leds :: Ros1Pal_device_msgsLedGroup
  ,
    -- | \@brief pal_device_msgs/TimedColourEffectRequest.color: std_msgs/ColorRGBA.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsTimedColourEffectRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsTimedColourEffectRequest_color :: Ros1Std_msgsColorRGBA
  ,
    -- | \@brief pal_device_msgs/TimedColourEffectRequest.effectDuration: duration.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsTimedColourEffectRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsTimedColourEffectRequest_effectDuration :: Ros1Duration
  ,
    -- | \@brief pal_device_msgs/TimedColourEffectRequest.priority: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsTimedColourEffectRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsTimedColourEffectRequest_priority :: Word8
  } deriving (Eq, Show)
defaultRos1Pal_device_msgsTimedColourEffectRequest :: Ros1Pal_device_msgsTimedColourEffectRequest
defaultRos1Pal_device_msgsTimedColourEffectRequest =
    Ros1Pal_device_msgsTimedColourEffectRequest
    (defaultRos1Pal_device_msgsLedGroup)
    (defaultRos1Std_msgsColorRGBA)
    (defaultRos1Duration)
    (0)
ros1Pal_device_msgsTimedColourEffectRequestCodecIdentity :: String
ros1Pal_device_msgsTimedColourEffectRequestCodecIdentity = "UWVMROS1_ad05e8c9bbc7cececa0735b5828b81adcd042b7e738f346ffa758407cd20ded3"
encodeRos1Pal_device_msgsTimedColourEffectRequest :: Ros1Pal_device_msgsTimedColourEffectRequest -> Either Word32 B.ByteString
encodeRos1Pal_device_msgsTimedColourEffectRequest value = do
  b0 <- encodeRos1Pal_device_msgsLedGroup (ros1Pal_device_msgsTimedColourEffectRequest_leds value)
  b1 <- encodeRos1Std_msgsColorRGBA (ros1Pal_device_msgsTimedColourEffectRequest_color value)
  b2 <- encodeRos1Duration (ros1Pal_device_msgsTimedColourEffectRequest_effectDuration value)
  b3 <- W.encodeUnsigned 1 (fromIntegral (ros1Pal_device_msgsTimedColourEffectRequest_priority value))
  W.bounded 29 [b0, b1, b2, b3]
readRos1Pal_device_msgsTimedColourEffectRequest :: W.Decoder Ros1Pal_device_msgsTimedColourEffectRequest
readRos1Pal_device_msgsTimedColourEffectRequest = do
  a0 <- readRos1Pal_device_msgsLedGroup
  a1 <- readRos1Std_msgsColorRGBA
  a2 <- readRos1Duration
  a3 <- fromIntegral <$> W.unsigned 1
  let value = Ros1Pal_device_msgsTimedColourEffectRequest a0 a1 a2 a3
  case encodeRos1Pal_device_msgsTimedColourEffectRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_device_msgsTimedColourEffectRequest :: B.ByteString -> Either Word32 Ros1Pal_device_msgsTimedColourEffectRequest
decodeRos1Pal_device_msgsTimedColourEffectRequest = W.runDecoder 29 readRos1Pal_device_msgsTimedColourEffectRequest
instance Canonical Ros1Pal_device_msgsTimedColourEffectRequest where
  maximumBytes _ = 29
  encodeValue = encodeRos1Pal_device_msgsTimedColourEffectRequest
  readValue = readRos1Pal_device_msgsTimedColourEffectRequest
data Ros1Pal_device_msgsTimedColourEffectResponse = Ros1Pal_device_msgsTimedColourEffectResponse
  {
    -- | \@brief pal_device_msgs/TimedColourEffectResponse.effectId: uint32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsTimedColourEffectResponse; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsTimedColourEffectResponse_effectId :: Word32
  } deriving (Eq, Show)
defaultRos1Pal_device_msgsTimedColourEffectResponse :: Ros1Pal_device_msgsTimedColourEffectResponse
defaultRos1Pal_device_msgsTimedColourEffectResponse = Ros1Pal_device_msgsTimedColourEffectResponse (0)
ros1Pal_device_msgsTimedColourEffectResponseCodecIdentity :: String
ros1Pal_device_msgsTimedColourEffectResponseCodecIdentity = "UWVMROS1_2fe607c0e0a960342b47148f85c8d887b4fe51b065e05529cf540260890f9484"
encodeRos1Pal_device_msgsTimedColourEffectResponse :: Ros1Pal_device_msgsTimedColourEffectResponse -> Either Word32 B.ByteString
encodeRos1Pal_device_msgsTimedColourEffectResponse value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Pal_device_msgsTimedColourEffectResponse_effectId value))
  W.bounded 4 [b0]
readRos1Pal_device_msgsTimedColourEffectResponse :: W.Decoder Ros1Pal_device_msgsTimedColourEffectResponse
readRos1Pal_device_msgsTimedColourEffectResponse = do
  a0 <- fromIntegral <$> W.unsigned 4
  let value = Ros1Pal_device_msgsTimedColourEffectResponse a0
  case encodeRos1Pal_device_msgsTimedColourEffectResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_device_msgsTimedColourEffectResponse :: B.ByteString -> Either Word32 Ros1Pal_device_msgsTimedColourEffectResponse
decodeRos1Pal_device_msgsTimedColourEffectResponse = W.runDecoder 4 readRos1Pal_device_msgsTimedColourEffectResponse
instance Canonical Ros1Pal_device_msgsTimedColourEffectResponse where
  maximumBytes _ = 4
  encodeValue = encodeRos1Pal_device_msgsTimedColourEffectResponse
  readValue = readRos1Pal_device_msgsTimedColourEffectResponse
data Ros1Pal_device_msgsTimedFadeEffectRequest = Ros1Pal_device_msgsTimedFadeEffectRequest
  {
    -- | \@brief pal_device_msgs/TimedFadeEffectRequest.leds: pal_device_msgs/LedGroup.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsTimedFadeEffectRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsTimedFadeEffectRequest_leds :: Ros1Pal_device_msgsLedGroup
  ,
    -- | \@brief pal_device_msgs/TimedFadeEffectRequest.firstColor: std_msgs/ColorRGBA.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsTimedFadeEffectRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsTimedFadeEffectRequest_firstColor :: Ros1Std_msgsColorRGBA
  ,
    -- | \@brief pal_device_msgs/TimedFadeEffectRequest.secondColor: std_msgs/ColorRGBA.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsTimedFadeEffectRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsTimedFadeEffectRequest_secondColor :: Ros1Std_msgsColorRGBA
  ,
    -- | \@brief pal_device_msgs/TimedFadeEffectRequest.colorChangeDuration: duration.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsTimedFadeEffectRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsTimedFadeEffectRequest_colorChangeDuration :: Ros1Duration
  ,
    -- | \@brief pal_device_msgs/TimedFadeEffectRequest.reverseFade: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsTimedFadeEffectRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsTimedFadeEffectRequest_reverseFade :: Bool
  ,
    -- | \@brief pal_device_msgs/TimedFadeEffectRequest.effectDuration: duration.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsTimedFadeEffectRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsTimedFadeEffectRequest_effectDuration :: Ros1Duration
  ,
    -- | \@brief pal_device_msgs/TimedFadeEffectRequest.priority: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsTimedFadeEffectRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsTimedFadeEffectRequest_priority :: Word8
  } deriving (Eq, Show)
defaultRos1Pal_device_msgsTimedFadeEffectRequest :: Ros1Pal_device_msgsTimedFadeEffectRequest
defaultRos1Pal_device_msgsTimedFadeEffectRequest =
    Ros1Pal_device_msgsTimedFadeEffectRequest
    (defaultRos1Pal_device_msgsLedGroup)
    (defaultRos1Std_msgsColorRGBA)
    (defaultRos1Std_msgsColorRGBA)
    (defaultRos1Duration)
    (False)
    (defaultRos1Duration)
    (0)
ros1Pal_device_msgsTimedFadeEffectRequestCodecIdentity :: String
ros1Pal_device_msgsTimedFadeEffectRequestCodecIdentity = "UWVMROS1_a23170818bde569a005dff556b11553e7973cb7e8c126a5fd292daca2dafe458"
encodeRos1Pal_device_msgsTimedFadeEffectRequest :: Ros1Pal_device_msgsTimedFadeEffectRequest -> Either Word32 B.ByteString
encodeRos1Pal_device_msgsTimedFadeEffectRequest value = do
  b0 <- encodeRos1Pal_device_msgsLedGroup (ros1Pal_device_msgsTimedFadeEffectRequest_leds value)
  b1 <- encodeRos1Std_msgsColorRGBA (ros1Pal_device_msgsTimedFadeEffectRequest_firstColor value)
  b2 <- encodeRos1Std_msgsColorRGBA (ros1Pal_device_msgsTimedFadeEffectRequest_secondColor value)
  b3 <- encodeRos1Duration (ros1Pal_device_msgsTimedFadeEffectRequest_colorChangeDuration value)
  b4 <- W.encodeBool (ros1Pal_device_msgsTimedFadeEffectRequest_reverseFade value)
  b5 <- encodeRos1Duration (ros1Pal_device_msgsTimedFadeEffectRequest_effectDuration value)
  b6 <- W.encodeUnsigned 1 (fromIntegral (ros1Pal_device_msgsTimedFadeEffectRequest_priority value))
  W.bounded 54 [b0, b1, b2, b3, b4, b5, b6]
readRos1Pal_device_msgsTimedFadeEffectRequest :: W.Decoder Ros1Pal_device_msgsTimedFadeEffectRequest
readRos1Pal_device_msgsTimedFadeEffectRequest = do
  a0 <- readRos1Pal_device_msgsLedGroup
  a1 <- readRos1Std_msgsColorRGBA
  a2 <- readRos1Std_msgsColorRGBA
  a3 <- readRos1Duration
  a4 <- W.boolean
  a5 <- readRos1Duration
  a6 <- fromIntegral <$> W.unsigned 1
  let value = Ros1Pal_device_msgsTimedFadeEffectRequest a0 a1 a2 a3 a4 a5 a6
  case encodeRos1Pal_device_msgsTimedFadeEffectRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_device_msgsTimedFadeEffectRequest :: B.ByteString -> Either Word32 Ros1Pal_device_msgsTimedFadeEffectRequest
decodeRos1Pal_device_msgsTimedFadeEffectRequest = W.runDecoder 54 readRos1Pal_device_msgsTimedFadeEffectRequest
instance Canonical Ros1Pal_device_msgsTimedFadeEffectRequest where
  maximumBytes _ = 54
  encodeValue = encodeRos1Pal_device_msgsTimedFadeEffectRequest
  readValue = readRos1Pal_device_msgsTimedFadeEffectRequest
data Ros1Pal_device_msgsTimedFadeEffectResponse = Ros1Pal_device_msgsTimedFadeEffectResponse
  {
    -- | \@brief pal_device_msgs/TimedFadeEffectResponse.effectId: uint32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_device_msgsTimedFadeEffectResponse; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_device_msgsTimedFadeEffectResponse_effectId :: Word32
  } deriving (Eq, Show)
defaultRos1Pal_device_msgsTimedFadeEffectResponse :: Ros1Pal_device_msgsTimedFadeEffectResponse
defaultRos1Pal_device_msgsTimedFadeEffectResponse = Ros1Pal_device_msgsTimedFadeEffectResponse (0)
ros1Pal_device_msgsTimedFadeEffectResponseCodecIdentity :: String
ros1Pal_device_msgsTimedFadeEffectResponseCodecIdentity = "UWVMROS1_75811f0336a7e87b571ddbdb8a062b120b60b4b142c63e7af328fe9c4ea9ae15"
encodeRos1Pal_device_msgsTimedFadeEffectResponse :: Ros1Pal_device_msgsTimedFadeEffectResponse -> Either Word32 B.ByteString
encodeRos1Pal_device_msgsTimedFadeEffectResponse value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros1Pal_device_msgsTimedFadeEffectResponse_effectId value))
  W.bounded 4 [b0]
readRos1Pal_device_msgsTimedFadeEffectResponse :: W.Decoder Ros1Pal_device_msgsTimedFadeEffectResponse
readRos1Pal_device_msgsTimedFadeEffectResponse = do
  a0 <- fromIntegral <$> W.unsigned 4
  let value = Ros1Pal_device_msgsTimedFadeEffectResponse a0
  case encodeRos1Pal_device_msgsTimedFadeEffectResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_device_msgsTimedFadeEffectResponse :: B.ByteString -> Either Word32 Ros1Pal_device_msgsTimedFadeEffectResponse
decodeRos1Pal_device_msgsTimedFadeEffectResponse = W.runDecoder 4 readRos1Pal_device_msgsTimedFadeEffectResponse
instance Canonical Ros1Pal_device_msgsTimedFadeEffectResponse where
  maximumBytes _ = 4
  encodeValue = encodeRos1Pal_device_msgsTimedFadeEffectResponse
  readValue = readRos1Pal_device_msgsTimedFadeEffectResponse
data Ros1Pal_interaction_msgsASRActivation = Ros1Pal_interaction_msgsASRActivation
  {
    -- | \@brief pal_interaction_msgs/ASRActivation.action: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsASRActivation; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsASRActivation_action :: Int8
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsASRActivation :: Ros1Pal_interaction_msgsASRActivation
defaultRos1Pal_interaction_msgsASRActivation = Ros1Pal_interaction_msgsASRActivation (0)
ros1Pal_interaction_msgsASRActivationCodecIdentity :: String
ros1Pal_interaction_msgsASRActivationCodecIdentity = "UWVMROS1_30f9e3f26cd145518ec1957bab9ca45f4cbe4ac25f82c8853ad1997bad1fdda7"
ros1Pal_interaction_msgsASRActivation_ACTIVATE :: Int8
ros1Pal_interaction_msgsASRActivation_ACTIVATE = 1
ros1Pal_interaction_msgsASRActivation_DEACTIVATE :: Int8
ros1Pal_interaction_msgsASRActivation_DEACTIVATE = 2
ros1Pal_interaction_msgsASRActivation_PAUSE :: Int8
ros1Pal_interaction_msgsASRActivation_PAUSE = 3
ros1Pal_interaction_msgsASRActivation_RESUME :: Int8
ros1Pal_interaction_msgsASRActivation_RESUME = 4
ros1Pal_interaction_msgsASRActivation_CALIBRATE :: Int8
ros1Pal_interaction_msgsASRActivation_CALIBRATE = 5
encodeRos1Pal_interaction_msgsASRActivation :: Ros1Pal_interaction_msgsASRActivation -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsASRActivation value = do
  b0 <- W.encodeSigned 1 (fromIntegral (ros1Pal_interaction_msgsASRActivation_action value))
  W.bounded 1 [b0]
readRos1Pal_interaction_msgsASRActivation :: W.Decoder Ros1Pal_interaction_msgsASRActivation
readRos1Pal_interaction_msgsASRActivation = do
  a0 <- fromIntegral <$> W.signed 1
  let value = Ros1Pal_interaction_msgsASRActivation a0
  case encodeRos1Pal_interaction_msgsASRActivation value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsASRActivation :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsASRActivation
decodeRos1Pal_interaction_msgsASRActivation = W.runDecoder 1 readRos1Pal_interaction_msgsASRActivation
instance Canonical Ros1Pal_interaction_msgsASRActivation where
  maximumBytes _ = 1
  encodeValue = encodeRos1Pal_interaction_msgsASRActivation
  readValue = readRos1Pal_interaction_msgsASRActivation
data Ros1Pal_interaction_msgsActiontag = Ros1Pal_interaction_msgsActiontag
  {
    -- | \@brief pal_interaction_msgs/actiontag.key: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsActiontag; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsActiontag_key :: T.Text
  ,
    -- | \@brief pal_interaction_msgs/actiontag.value: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsActiontag; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsActiontag_value :: T.Text
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsActiontag :: Ros1Pal_interaction_msgsActiontag
defaultRos1Pal_interaction_msgsActiontag = Ros1Pal_interaction_msgsActiontag (T.empty) (T.empty)
ros1Pal_interaction_msgsActiontagCodecIdentity :: String
ros1Pal_interaction_msgsActiontagCodecIdentity = "UWVMROS1_bd76d0c6a24ccccf66c8723e96bdb0bacf4b9f89fd569482dbb05b8c3a0e7a08"
encodeRos1Pal_interaction_msgsActiontag :: Ros1Pal_interaction_msgsActiontag -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsActiontag value = do
  b0 <- W.encodeText 128 True (ros1Pal_interaction_msgsActiontag_key value)
  b1 <- W.encodeText 128 True (ros1Pal_interaction_msgsActiontag_value value)
  W.bounded 264 [b0, b1]
readRos1Pal_interaction_msgsActiontag :: W.Decoder Ros1Pal_interaction_msgsActiontag
readRos1Pal_interaction_msgsActiontag = do
  a0 <- W.text 128 True
  a1 <- W.text 128 True
  let value = Ros1Pal_interaction_msgsActiontag a0 a1
  case encodeRos1Pal_interaction_msgsActiontag value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsActiontag :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsActiontag
decodeRos1Pal_interaction_msgsActiontag = W.runDecoder 264 readRos1Pal_interaction_msgsActiontag
instance Canonical Ros1Pal_interaction_msgsActiontag where
  maximumBytes _ = 264
  encodeValue = encodeRos1Pal_interaction_msgsActiontag
  readValue = readRos1Pal_interaction_msgsActiontag
data Ros1Pal_interaction_msgsAsrresult = Ros1Pal_interaction_msgsAsrresult
  {
    -- | \@brief pal_interaction_msgs/asrresult.text: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsAsrresult; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsAsrresult_text :: T.Text
  ,
    -- | \@brief pal_interaction_msgs/asrresult.confidence: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsAsrresult; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsAsrresult_confidence :: Int8
  ,
    -- | \@brief pal_interaction_msgs/asrresult.start: time.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsAsrresult; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsAsrresult_start :: Ros1Time
  ,
    -- | \@brief pal_interaction_msgs/asrresult.end: time.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsAsrresult; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsAsrresult_end :: Ros1Time
  ,
    -- | \@brief pal_interaction_msgs/asrresult.tags: pal_interaction_msgs/actiontag; 0..4 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsAsrresult; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsAsrresult_tags :: [Ros1Pal_interaction_msgsActiontag]
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsAsrresult :: Ros1Pal_interaction_msgsAsrresult
defaultRos1Pal_interaction_msgsAsrresult = Ros1Pal_interaction_msgsAsrresult (T.empty) (0) (defaultRos1Time) (defaultRos1Time) ([])
ros1Pal_interaction_msgsAsrresultCodecIdentity :: String
ros1Pal_interaction_msgsAsrresultCodecIdentity = "UWVMROS1_b259acfd1ed092ec360582155843297af7f18152debe9cfae0573c695f271058"
ros1Pal_interaction_msgsAsrresult_CONFIDENCE_UNDEFINED :: Int8
ros1Pal_interaction_msgsAsrresult_CONFIDENCE_UNDEFINED = -1
ros1Pal_interaction_msgsAsrresult_CONFIDENCE_POOR :: Int8
ros1Pal_interaction_msgsAsrresult_CONFIDENCE_POOR = 1
ros1Pal_interaction_msgsAsrresult_CONFIDENCE_LOW :: Int8
ros1Pal_interaction_msgsAsrresult_CONFIDENCE_LOW = 2
ros1Pal_interaction_msgsAsrresult_CONFIDENCE_GOOD :: Int8
ros1Pal_interaction_msgsAsrresult_CONFIDENCE_GOOD = 3
ros1Pal_interaction_msgsAsrresult_CONFIDENCE_MAX :: Int8
ros1Pal_interaction_msgsAsrresult_CONFIDENCE_MAX = 4
encodeRos1Pal_interaction_msgsAsrresult :: Ros1Pal_interaction_msgsAsrresult -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsAsrresult value = do
  b0 <- W.encodeText 128 True (ros1Pal_interaction_msgsAsrresult_text value)
  b1 <- W.encodeSigned 1 (fromIntegral (ros1Pal_interaction_msgsAsrresult_confidence value))
  b2 <- encodeRos1Time (ros1Pal_interaction_msgsAsrresult_start value)
  b3 <- encodeRos1Time (ros1Pal_interaction_msgsAsrresult_end value)
  if length (ros1Pal_interaction_msgsAsrresult_tags value) > 4 then Left 22 else Right ()
  prefix4 <- W.encodeCount 4 (length (ros1Pal_interaction_msgsAsrresult_tags value))
  b4 <- B.concat <$> mapM (\e -> encodeRos1Pal_interaction_msgsActiontag (e)) (ros1Pal_interaction_msgsAsrresult_tags value)
  W.bounded 1209 [b0, b1, b2, b3, prefix4, b4]
readRos1Pal_interaction_msgsAsrresult :: W.Decoder Ros1Pal_interaction_msgsAsrresult
readRos1Pal_interaction_msgsAsrresult = do
  a0 <- W.text 128 True
  a1 <- fromIntegral <$> W.signed 1
  a2 <- readRos1Time
  a3 <- readRos1Time
  count4 <- W.count 4
  a4 <- replicateM count4 (readRos1Pal_interaction_msgsActiontag)
  let value = Ros1Pal_interaction_msgsAsrresult a0 a1 a2 a3 a4
  case encodeRos1Pal_interaction_msgsAsrresult value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsAsrresult :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsAsrresult
decodeRos1Pal_interaction_msgsAsrresult = W.runDecoder 1209 readRos1Pal_interaction_msgsAsrresult
instance Canonical Ros1Pal_interaction_msgsAsrresult where
  maximumBytes _ = 1209
  encodeValue = encodeRos1Pal_interaction_msgsAsrresult
  readValue = readRos1Pal_interaction_msgsAsrresult
data Ros1Pal_interaction_msgsASREvent = Ros1Pal_interaction_msgsASREvent
  {
    -- | \@brief pal_interaction_msgs/ASREvent.event_id: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsASREvent; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsASREvent_event_id :: Int8
  ,
    -- | \@brief pal_interaction_msgs/ASREvent.listen_state: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsASREvent; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsASREvent_listen_state :: Int8
  ,
    -- | \@brief pal_interaction_msgs/ASREvent.recognized_utterance: pal_interaction_msgs/asrresult.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsASREvent; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsASREvent_recognized_utterance :: Ros1Pal_interaction_msgsAsrresult
  ,
    -- | \@brief pal_interaction_msgs/ASREvent.active: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsASREvent; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsASREvent_active :: Bool
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsASREvent :: Ros1Pal_interaction_msgsASREvent
defaultRos1Pal_interaction_msgsASREvent = Ros1Pal_interaction_msgsASREvent (0) (0) (defaultRos1Pal_interaction_msgsAsrresult) (False)
ros1Pal_interaction_msgsASREventCodecIdentity :: String
ros1Pal_interaction_msgsASREventCodecIdentity = "UWVMROS1_459ea9c0c0a993881cc4189329bc42ae244d6133b8d3ae789206dbc4655a0926"
ros1Pal_interaction_msgsASREvent_EVENT_UNDEFINED :: Int8
ros1Pal_interaction_msgsASREvent_EVENT_UNDEFINED = -1
ros1Pal_interaction_msgsASREvent_EVENT_LISTEN_STATE :: Int8
ros1Pal_interaction_msgsASREvent_EVENT_LISTEN_STATE = 1
ros1Pal_interaction_msgsASREvent_EVENT_RECOGNIZED_UTT :: Int8
ros1Pal_interaction_msgsASREvent_EVENT_RECOGNIZED_UTT = 2
ros1Pal_interaction_msgsASREvent_EVENT_ASR_ACTIVATION :: Int8
ros1Pal_interaction_msgsASREvent_EVENT_ASR_ACTIVATION = 3
ros1Pal_interaction_msgsASREvent_EVENT_FAILED_DECODING :: Int8
ros1Pal_interaction_msgsASREvent_EVENT_FAILED_DECODING = 4
ros1Pal_interaction_msgsASREvent_LISTEN_UNDEFINED :: Int8
ros1Pal_interaction_msgsASREvent_LISTEN_UNDEFINED = 20
ros1Pal_interaction_msgsASREvent_LISTEN_CALIBRATION :: Int8
ros1Pal_interaction_msgsASREvent_LISTEN_CALIBRATION = 21
ros1Pal_interaction_msgsASREvent_LISTEN_WAITING_FOR_SPEECH :: Int8
ros1Pal_interaction_msgsASREvent_LISTEN_WAITING_FOR_SPEECH = 22
ros1Pal_interaction_msgsASREvent_LISTEN_SPEECH_DETECTED :: Int8
ros1Pal_interaction_msgsASREvent_LISTEN_SPEECH_DETECTED = 23
ros1Pal_interaction_msgsASREvent_LISTEN_END_OF_SPEECH :: Int8
ros1Pal_interaction_msgsASREvent_LISTEN_END_OF_SPEECH = 24
encodeRos1Pal_interaction_msgsASREvent :: Ros1Pal_interaction_msgsASREvent -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsASREvent value = do
  b0 <- W.encodeSigned 1 (fromIntegral (ros1Pal_interaction_msgsASREvent_event_id value))
  b1 <- W.encodeSigned 1 (fromIntegral (ros1Pal_interaction_msgsASREvent_listen_state value))
  b2 <- encodeRos1Pal_interaction_msgsAsrresult (ros1Pal_interaction_msgsASREvent_recognized_utterance value)
  b3 <- W.encodeBool (ros1Pal_interaction_msgsASREvent_active value)
  W.bounded 1212 [b0, b1, b2, b3]
readRos1Pal_interaction_msgsASREvent :: W.Decoder Ros1Pal_interaction_msgsASREvent
readRos1Pal_interaction_msgsASREvent = do
  a0 <- fromIntegral <$> W.signed 1
  a1 <- fromIntegral <$> W.signed 1
  a2 <- readRos1Pal_interaction_msgsAsrresult
  a3 <- W.boolean
  let value = Ros1Pal_interaction_msgsASREvent a0 a1 a2 a3
  case encodeRos1Pal_interaction_msgsASREvent value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsASREvent :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsASREvent
decodeRos1Pal_interaction_msgsASREvent = W.runDecoder 1212 readRos1Pal_interaction_msgsASREvent
instance Canonical Ros1Pal_interaction_msgsASREvent where
  maximumBytes _ = 1212
  encodeValue = encodeRos1Pal_interaction_msgsASREvent
  readValue = readRos1Pal_interaction_msgsASREvent
data Ros1Pal_interaction_msgsASRFileGoal = Ros1Pal_interaction_msgsASRFileGoal
  {
    -- | \@brief pal_interaction_msgs/ASRFileGoal.file: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsASRFileGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsASRFileGoal_file :: T.Text
  ,
    -- | \@brief pal_interaction_msgs/ASRFileGoal.lang_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsASRFileGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsASRFileGoal_lang_id :: T.Text
  ,
    -- | \@brief pal_interaction_msgs/ASRFileGoal.grammar: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsASRFileGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsASRFileGoal_grammar :: T.Text
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsASRFileGoal :: Ros1Pal_interaction_msgsASRFileGoal
defaultRos1Pal_interaction_msgsASRFileGoal = Ros1Pal_interaction_msgsASRFileGoal (T.empty) (T.empty) (T.empty)
ros1Pal_interaction_msgsASRFileGoalCodecIdentity :: String
ros1Pal_interaction_msgsASRFileGoalCodecIdentity = "UWVMROS1_9ccba4b3d861d0e759312bec211e5f198eb11bd3838088906a7cba85ab56dd35"
encodeRos1Pal_interaction_msgsASRFileGoal :: Ros1Pal_interaction_msgsASRFileGoal -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsASRFileGoal value = do
  b0 <- W.encodeText 128 True (ros1Pal_interaction_msgsASRFileGoal_file value)
  b1 <- W.encodeText 128 True (ros1Pal_interaction_msgsASRFileGoal_lang_id value)
  b2 <- W.encodeText 128 True (ros1Pal_interaction_msgsASRFileGoal_grammar value)
  W.bounded 396 [b0, b1, b2]
readRos1Pal_interaction_msgsASRFileGoal :: W.Decoder Ros1Pal_interaction_msgsASRFileGoal
readRos1Pal_interaction_msgsASRFileGoal = do
  a0 <- W.text 128 True
  a1 <- W.text 128 True
  a2 <- W.text 128 True
  let value = Ros1Pal_interaction_msgsASRFileGoal a0 a1 a2
  case encodeRos1Pal_interaction_msgsASRFileGoal value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsASRFileGoal :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsASRFileGoal
decodeRos1Pal_interaction_msgsASRFileGoal = W.runDecoder 396 readRos1Pal_interaction_msgsASRFileGoal
instance Canonical Ros1Pal_interaction_msgsASRFileGoal where
  maximumBytes _ = 396
  encodeValue = encodeRos1Pal_interaction_msgsASRFileGoal
  readValue = readRos1Pal_interaction_msgsASRFileGoal
data Ros1Pal_interaction_msgsASRFileResult = Ros1Pal_interaction_msgsASRFileResult
  {
    -- | \@brief pal_interaction_msgs/ASRFileResult.file: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsASRFileResult; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsASRFileResult_file :: T.Text
  ,
    -- | \@brief pal_interaction_msgs/ASRFileResult.msg: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsASRFileResult; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsASRFileResult_msg :: T.Text
  ,
    -- | \@brief pal_interaction_msgs/ASRFileResult.recognised_utterances: pal_interaction_msgs/asrresult; 0..4 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsASRFileResult; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsASRFileResult_recognised_utterances :: [Ros1Pal_interaction_msgsAsrresult]
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsASRFileResult :: Ros1Pal_interaction_msgsASRFileResult
defaultRos1Pal_interaction_msgsASRFileResult = Ros1Pal_interaction_msgsASRFileResult (T.empty) (T.empty) ([])
ros1Pal_interaction_msgsASRFileResultCodecIdentity :: String
ros1Pal_interaction_msgsASRFileResultCodecIdentity = "UWVMROS1_8fef2b5f288de2136bf3d58eca596fcb8d41c43e0eb428d5fac61cc0dfdc9db2"
encodeRos1Pal_interaction_msgsASRFileResult :: Ros1Pal_interaction_msgsASRFileResult -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsASRFileResult value = do
  b0 <- W.encodeText 128 True (ros1Pal_interaction_msgsASRFileResult_file value)
  b1 <- W.encodeText 128 True (ros1Pal_interaction_msgsASRFileResult_msg value)
  if length (ros1Pal_interaction_msgsASRFileResult_recognised_utterances value) > 4 then Left 22 else Right ()
  prefix2 <- W.encodeCount 4 (length (ros1Pal_interaction_msgsASRFileResult_recognised_utterances value))
  b2 <- B.concat <$> mapM (\e -> encodeRos1Pal_interaction_msgsAsrresult (e)) (ros1Pal_interaction_msgsASRFileResult_recognised_utterances value)
  W.bounded 5104 [b0, b1, prefix2, b2]
readRos1Pal_interaction_msgsASRFileResult :: W.Decoder Ros1Pal_interaction_msgsASRFileResult
readRos1Pal_interaction_msgsASRFileResult = do
  a0 <- W.text 128 True
  a1 <- W.text 128 True
  count2 <- W.count 4
  a2 <- replicateM count2 (readRos1Pal_interaction_msgsAsrresult)
  let value = Ros1Pal_interaction_msgsASRFileResult a0 a1 a2
  case encodeRos1Pal_interaction_msgsASRFileResult value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsASRFileResult :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsASRFileResult
decodeRos1Pal_interaction_msgsASRFileResult = W.runDecoder 5104 readRos1Pal_interaction_msgsASRFileResult
instance Canonical Ros1Pal_interaction_msgsASRFileResult where
  maximumBytes _ = 5104
  encodeValue = encodeRos1Pal_interaction_msgsASRFileResult
  readValue = readRos1Pal_interaction_msgsASRFileResult
data Ros1Pal_interaction_msgsASRFileFeedback = Ros1Pal_interaction_msgsASRFileFeedback
  {
    -- | \@brief pal_interaction_msgs/ASRFileFeedback.recognised_utterance: pal_interaction_msgs/asrresult.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsASRFileFeedback; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsASRFileFeedback_recognised_utterance :: Ros1Pal_interaction_msgsAsrresult
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsASRFileFeedback :: Ros1Pal_interaction_msgsASRFileFeedback
defaultRos1Pal_interaction_msgsASRFileFeedback = Ros1Pal_interaction_msgsASRFileFeedback (defaultRos1Pal_interaction_msgsAsrresult)
ros1Pal_interaction_msgsASRFileFeedbackCodecIdentity :: String
ros1Pal_interaction_msgsASRFileFeedbackCodecIdentity = "UWVMROS1_c5a53add76fa297f74af24e0ecb0d3dc68b3ce85eaecdff21a26a7441e2ad9c3"
encodeRos1Pal_interaction_msgsASRFileFeedback :: Ros1Pal_interaction_msgsASRFileFeedback -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsASRFileFeedback value = do
  b0 <- encodeRos1Pal_interaction_msgsAsrresult (ros1Pal_interaction_msgsASRFileFeedback_recognised_utterance value)
  W.bounded 1209 [b0]
readRos1Pal_interaction_msgsASRFileFeedback :: W.Decoder Ros1Pal_interaction_msgsASRFileFeedback
readRos1Pal_interaction_msgsASRFileFeedback = do
  a0 <- readRos1Pal_interaction_msgsAsrresult
  let value = Ros1Pal_interaction_msgsASRFileFeedback a0
  case encodeRos1Pal_interaction_msgsASRFileFeedback value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsASRFileFeedback :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsASRFileFeedback
decodeRos1Pal_interaction_msgsASRFileFeedback = W.runDecoder 1209 readRos1Pal_interaction_msgsASRFileFeedback
instance Canonical Ros1Pal_interaction_msgsASRFileFeedback where
  maximumBytes _ = 1209
  encodeValue = encodeRos1Pal_interaction_msgsASRFileFeedback
  readValue = readRos1Pal_interaction_msgsASRFileFeedback
data Ros1Pal_interaction_msgsASRLangModelMngmt = Ros1Pal_interaction_msgsASRLangModelMngmt
  {
    -- | \@brief pal_interaction_msgs/ASRLangModelMngmt.action: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsASRLangModelMngmt; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsASRLangModelMngmt_action :: Int8
  ,
    -- | \@brief pal_interaction_msgs/ASRLangModelMngmt.modelName: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsASRLangModelMngmt; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsASRLangModelMngmt_modelName :: T.Text
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsASRLangModelMngmt :: Ros1Pal_interaction_msgsASRLangModelMngmt
defaultRos1Pal_interaction_msgsASRLangModelMngmt = Ros1Pal_interaction_msgsASRLangModelMngmt (0) (T.empty)
ros1Pal_interaction_msgsASRLangModelMngmtCodecIdentity :: String
ros1Pal_interaction_msgsASRLangModelMngmtCodecIdentity = "UWVMROS1_9ef368d2c72d86f541952fd520429be4998fd28e46c32da1d60edc1cd63c3b09"
ros1Pal_interaction_msgsASRLangModelMngmt_ENABLE :: Int8
ros1Pal_interaction_msgsASRLangModelMngmt_ENABLE = 1
ros1Pal_interaction_msgsASRLangModelMngmt_DISABLE :: Int8
ros1Pal_interaction_msgsASRLangModelMngmt_DISABLE = 2
ros1Pal_interaction_msgsASRLangModelMngmt_LOAD :: Int8
ros1Pal_interaction_msgsASRLangModelMngmt_LOAD = 3
ros1Pal_interaction_msgsASRLangModelMngmt_UNLOAD :: Int8
ros1Pal_interaction_msgsASRLangModelMngmt_UNLOAD = 4
encodeRos1Pal_interaction_msgsASRLangModelMngmt :: Ros1Pal_interaction_msgsASRLangModelMngmt -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsASRLangModelMngmt value = do
  b0 <- W.encodeSigned 1 (fromIntegral (ros1Pal_interaction_msgsASRLangModelMngmt_action value))
  b1 <- W.encodeText 128 True (ros1Pal_interaction_msgsASRLangModelMngmt_modelName value)
  W.bounded 133 [b0, b1]
readRos1Pal_interaction_msgsASRLangModelMngmt :: W.Decoder Ros1Pal_interaction_msgsASRLangModelMngmt
readRos1Pal_interaction_msgsASRLangModelMngmt = do
  a0 <- fromIntegral <$> W.signed 1
  a1 <- W.text 128 True
  let value = Ros1Pal_interaction_msgsASRLangModelMngmt a0 a1
  case encodeRos1Pal_interaction_msgsASRLangModelMngmt value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsASRLangModelMngmt :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsASRLangModelMngmt
decodeRos1Pal_interaction_msgsASRLangModelMngmt = W.runDecoder 133 readRos1Pal_interaction_msgsASRLangModelMngmt
instance Canonical Ros1Pal_interaction_msgsASRLangModelMngmt where
  maximumBytes _ = 133
  encodeValue = encodeRos1Pal_interaction_msgsASRLangModelMngmt
  readValue = readRos1Pal_interaction_msgsASRLangModelMngmt
data Ros1Pal_interaction_msgsASRLanguage = Ros1Pal_interaction_msgsASRLanguage
  {
    -- | \@brief pal_interaction_msgs/ASRLanguage.language: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsASRLanguage; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsASRLanguage_language :: T.Text
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsASRLanguage :: Ros1Pal_interaction_msgsASRLanguage
defaultRos1Pal_interaction_msgsASRLanguage = Ros1Pal_interaction_msgsASRLanguage (T.empty)
ros1Pal_interaction_msgsASRLanguageCodecIdentity :: String
ros1Pal_interaction_msgsASRLanguageCodecIdentity = "UWVMROS1_227aee498814954d3800e631b8dce3a5fd3d22dc5437ec24b03b5f8cc48000eb"
encodeRos1Pal_interaction_msgsASRLanguage :: Ros1Pal_interaction_msgsASRLanguage -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsASRLanguage value = do
  b0 <- W.encodeText 128 True (ros1Pal_interaction_msgsASRLanguage_language value)
  W.bounded 132 [b0]
readRos1Pal_interaction_msgsASRLanguage :: W.Decoder Ros1Pal_interaction_msgsASRLanguage
readRos1Pal_interaction_msgsASRLanguage = do
  a0 <- W.text 128 True
  let value = Ros1Pal_interaction_msgsASRLanguage a0
  case encodeRos1Pal_interaction_msgsASRLanguage value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsASRLanguage :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsASRLanguage
decodeRos1Pal_interaction_msgsASRLanguage = W.runDecoder 132 readRos1Pal_interaction_msgsASRLanguage
instance Canonical Ros1Pal_interaction_msgsASRLanguage where
  maximumBytes _ = 132
  encodeValue = encodeRos1Pal_interaction_msgsASRLanguage
  readValue = readRos1Pal_interaction_msgsASRLanguage
data Ros1Pal_interaction_msgsASRSrvRequest = Ros1Pal_interaction_msgsASRSrvRequest
  {
    -- | \@brief pal_interaction_msgs/ASRSrvRequest.requests: int8; 0..256 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsASRSrvRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsASRSrvRequest_requests :: [Int8]
  ,
    -- | \@brief pal_interaction_msgs/ASRSrvRequest.activation: pal_interaction_msgs/ASRActivation.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsASRSrvRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsASRSrvRequest_activation :: Ros1Pal_interaction_msgsASRActivation
  ,
    -- | \@brief pal_interaction_msgs/ASRSrvRequest.model: pal_interaction_msgs/ASRLangModelMngmt.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsASRSrvRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsASRSrvRequest_model :: Ros1Pal_interaction_msgsASRLangModelMngmt
  ,
    -- | \@brief pal_interaction_msgs/ASRSrvRequest.lang: pal_interaction_msgs/ASRLanguage.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsASRSrvRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsASRSrvRequest_lang :: Ros1Pal_interaction_msgsASRLanguage
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsASRSrvRequest :: Ros1Pal_interaction_msgsASRSrvRequest
defaultRos1Pal_interaction_msgsASRSrvRequest =
    Ros1Pal_interaction_msgsASRSrvRequest
    ([])
    (defaultRos1Pal_interaction_msgsASRActivation)
    (defaultRos1Pal_interaction_msgsASRLangModelMngmt)
    (defaultRos1Pal_interaction_msgsASRLanguage)
ros1Pal_interaction_msgsASRSrvRequestCodecIdentity :: String
ros1Pal_interaction_msgsASRSrvRequestCodecIdentity = "UWVMROS1_3a7fc134e8d1e0c32421ff0ad9831a892e7bc94b211d8309f8a2c2e99720e170"
ros1Pal_interaction_msgsASRSrvRequest_ACTIVATION :: Int8
ros1Pal_interaction_msgsASRSrvRequest_ACTIVATION = 1
ros1Pal_interaction_msgsASRSrvRequest_GRAMMAR :: Int8
ros1Pal_interaction_msgsASRSrvRequest_GRAMMAR = 2
ros1Pal_interaction_msgsASRSrvRequest_LANGUAGE :: Int8
ros1Pal_interaction_msgsASRSrvRequest_LANGUAGE = 3
ros1Pal_interaction_msgsASRSrvRequest_STATUS :: Int8
ros1Pal_interaction_msgsASRSrvRequest_STATUS = 4
ros1Pal_interaction_msgsASRSrvRequest_KWSPOTTING :: Int8
ros1Pal_interaction_msgsASRSrvRequest_KWSPOTTING = 5
encodeRos1Pal_interaction_msgsASRSrvRequest :: Ros1Pal_interaction_msgsASRSrvRequest -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsASRSrvRequest value = do
  if length (ros1Pal_interaction_msgsASRSrvRequest_requests value) > 256 then Left 22 else Right ()
  prefix0 <- W.encodeCount 256 (length (ros1Pal_interaction_msgsASRSrvRequest_requests value))
  b0 <- B.concat <$> mapM (\e -> W.encodeSigned 1 (fromIntegral (e))) (ros1Pal_interaction_msgsASRSrvRequest_requests value)
  b1 <- encodeRos1Pal_interaction_msgsASRActivation (ros1Pal_interaction_msgsASRSrvRequest_activation value)
  b2 <- encodeRos1Pal_interaction_msgsASRLangModelMngmt (ros1Pal_interaction_msgsASRSrvRequest_model value)
  b3 <- encodeRos1Pal_interaction_msgsASRLanguage (ros1Pal_interaction_msgsASRSrvRequest_lang value)
  W.bounded 526 [prefix0, b0, b1, b2, b3]
readRos1Pal_interaction_msgsASRSrvRequest :: W.Decoder Ros1Pal_interaction_msgsASRSrvRequest
readRos1Pal_interaction_msgsASRSrvRequest = do
  count0 <- W.count 256
  a0 <- replicateM count0 (fromIntegral <$> W.signed 1)
  a1 <- readRos1Pal_interaction_msgsASRActivation
  a2 <- readRos1Pal_interaction_msgsASRLangModelMngmt
  a3 <- readRos1Pal_interaction_msgsASRLanguage
  let value = Ros1Pal_interaction_msgsASRSrvRequest a0 a1 a2 a3
  case encodeRos1Pal_interaction_msgsASRSrvRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsASRSrvRequest :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsASRSrvRequest
decodeRos1Pal_interaction_msgsASRSrvRequest = W.runDecoder 526 readRos1Pal_interaction_msgsASRSrvRequest
instance Canonical Ros1Pal_interaction_msgsASRSrvRequest where
  maximumBytes _ = 526
  encodeValue = encodeRos1Pal_interaction_msgsASRSrvRequest
  readValue = readRos1Pal_interaction_msgsASRSrvRequest
data Ros1Pal_interaction_msgsASRServiceRequest = Ros1Pal_interaction_msgsASRServiceRequest
  {
    -- | \@brief pal_interaction_msgs/ASRServiceRequest.request: pal_interaction_msgs/ASRSrvRequest.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsASRServiceRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsASRServiceRequest_request :: Ros1Pal_interaction_msgsASRSrvRequest
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsASRServiceRequest :: Ros1Pal_interaction_msgsASRServiceRequest
defaultRos1Pal_interaction_msgsASRServiceRequest = Ros1Pal_interaction_msgsASRServiceRequest (defaultRos1Pal_interaction_msgsASRSrvRequest)
ros1Pal_interaction_msgsASRServiceRequestCodecIdentity :: String
ros1Pal_interaction_msgsASRServiceRequestCodecIdentity = "UWVMROS1_c78e78d5d88eb264ecc15c534da9e28e04bc6e3bb33685e24b9cf695aee73715"
encodeRos1Pal_interaction_msgsASRServiceRequest :: Ros1Pal_interaction_msgsASRServiceRequest -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsASRServiceRequest value = do
  b0 <- encodeRos1Pal_interaction_msgsASRSrvRequest (ros1Pal_interaction_msgsASRServiceRequest_request value)
  W.bounded 526 [b0]
readRos1Pal_interaction_msgsASRServiceRequest :: W.Decoder Ros1Pal_interaction_msgsASRServiceRequest
readRos1Pal_interaction_msgsASRServiceRequest = do
  a0 <- readRos1Pal_interaction_msgsASRSrvRequest
  let value = Ros1Pal_interaction_msgsASRServiceRequest a0
  case encodeRos1Pal_interaction_msgsASRServiceRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsASRServiceRequest :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsASRServiceRequest
decodeRos1Pal_interaction_msgsASRServiceRequest = W.runDecoder 526 readRos1Pal_interaction_msgsASRServiceRequest
instance Canonical Ros1Pal_interaction_msgsASRServiceRequest where
  maximumBytes _ = 526
  encodeValue = encodeRos1Pal_interaction_msgsASRServiceRequest
  readValue = readRos1Pal_interaction_msgsASRServiceRequest
data Ros1Pal_interaction_msgsAudioDeviceDescription = Ros1Pal_interaction_msgsAudioDeviceDescription
  {
    -- | \@brief pal_interaction_msgs/AudioDeviceDescription.device_name: string; each string is 0..128 bytes;
    --  strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsAudioDeviceDescription; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsAudioDeviceDescription_device_name :: T.Text
  ,
    -- | \@brief pal_interaction_msgs/AudioDeviceDescription.sample_rate: uint32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsAudioDeviceDescription; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsAudioDeviceDescription_sample_rate :: Word32
  ,
    -- | \@brief pal_interaction_msgs/AudioDeviceDescription.sample_size: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsAudioDeviceDescription; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsAudioDeviceDescription_sample_size :: Int8
  ,
    -- | \@brief pal_interaction_msgs/AudioDeviceDescription.format: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsAudioDeviceDescription; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsAudioDeviceDescription_format :: Int8
  ,
    -- | \@brief pal_interaction_msgs/AudioDeviceDescription.buffer_size: uint16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsAudioDeviceDescription; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsAudioDeviceDescription_buffer_size :: Word16
  ,
    -- | \@brief pal_interaction_msgs/AudioDeviceDescription.number_of_channels: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsAudioDeviceDescription; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsAudioDeviceDescription_number_of_channels :: Int8
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsAudioDeviceDescription :: Ros1Pal_interaction_msgsAudioDeviceDescription
defaultRos1Pal_interaction_msgsAudioDeviceDescription = Ros1Pal_interaction_msgsAudioDeviceDescription (T.empty) (0) (0) (0) (0) (0)
ros1Pal_interaction_msgsAudioDeviceDescriptionCodecIdentity :: String
ros1Pal_interaction_msgsAudioDeviceDescriptionCodecIdentity = "UWVMROS1_899a8393d0b03ca92891b0c60871b5e3a697750b036ef34b37709eed88139857"
ros1Pal_interaction_msgsAudioDeviceDescription_SIGNED :: Int8
ros1Pal_interaction_msgsAudioDeviceDescription_SIGNED = 0
ros1Pal_interaction_msgsAudioDeviceDescription_UNSIGNED :: Int8
ros1Pal_interaction_msgsAudioDeviceDescription_UNSIGNED = 1
encodeRos1Pal_interaction_msgsAudioDeviceDescription :: Ros1Pal_interaction_msgsAudioDeviceDescription -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsAudioDeviceDescription value = do
  b0 <- W.encodeText 128 True (ros1Pal_interaction_msgsAudioDeviceDescription_device_name value)
  b1 <- W.encodeUnsigned 4 (fromIntegral (ros1Pal_interaction_msgsAudioDeviceDescription_sample_rate value))
  b2 <- W.encodeSigned 1 (fromIntegral (ros1Pal_interaction_msgsAudioDeviceDescription_sample_size value))
  b3 <- W.encodeSigned 1 (fromIntegral (ros1Pal_interaction_msgsAudioDeviceDescription_format value))
  b4 <- W.encodeUnsigned 2 (fromIntegral (ros1Pal_interaction_msgsAudioDeviceDescription_buffer_size value))
  b5 <- W.encodeSigned 1 (fromIntegral (ros1Pal_interaction_msgsAudioDeviceDescription_number_of_channels value))
  W.bounded 141 [b0, b1, b2, b3, b4, b5]
readRos1Pal_interaction_msgsAudioDeviceDescription :: W.Decoder Ros1Pal_interaction_msgsAudioDeviceDescription
readRos1Pal_interaction_msgsAudioDeviceDescription = do
  a0 <- W.text 128 True
  a1 <- fromIntegral <$> W.unsigned 4
  a2 <- fromIntegral <$> W.signed 1
  a3 <- fromIntegral <$> W.signed 1
  a4 <- fromIntegral <$> W.unsigned 2
  a5 <- fromIntegral <$> W.signed 1
  let value = Ros1Pal_interaction_msgsAudioDeviceDescription a0 a1 a2 a3 a4 a5
  case encodeRos1Pal_interaction_msgsAudioDeviceDescription value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsAudioDeviceDescription :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsAudioDeviceDescription
decodeRos1Pal_interaction_msgsAudioDeviceDescription = W.runDecoder 141 readRos1Pal_interaction_msgsAudioDeviceDescription
instance Canonical Ros1Pal_interaction_msgsAudioDeviceDescription where
  maximumBytes _ = 141
  encodeValue = encodeRos1Pal_interaction_msgsAudioDeviceDescription
  readValue = readRos1Pal_interaction_msgsAudioDeviceDescription
data Ros1Pal_interaction_msgsASRStatus = Ros1Pal_interaction_msgsASRStatus
  {
    -- | \@brief pal_interaction_msgs/ASRStatus.active: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsASRStatus; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsASRStatus_active :: Bool
  ,
    -- | \@brief pal_interaction_msgs/ASRStatus.language: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsASRStatus; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsASRStatus_language :: T.Text
  ,
    -- | \@brief pal_interaction_msgs/ASRStatus.enabled_grammar: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsASRStatus; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsASRStatus_enabled_grammar :: T.Text
  ,
    -- | \@brief pal_interaction_msgs/ASRStatus.acoustic_env: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsASRStatus; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsASRStatus_acoustic_env :: T.Text
  ,
    -- | \@brief pal_interaction_msgs/ASRStatus.device: pal_interaction_msgs/AudioDeviceDescription.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsASRStatus; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsASRStatus_device :: Ros1Pal_interaction_msgsAudioDeviceDescription
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsASRStatus :: Ros1Pal_interaction_msgsASRStatus
defaultRos1Pal_interaction_msgsASRStatus =
    Ros1Pal_interaction_msgsASRStatus
    (False)
    (T.empty)
    (T.empty)
    (T.empty)
    (defaultRos1Pal_interaction_msgsAudioDeviceDescription)
ros1Pal_interaction_msgsASRStatusCodecIdentity :: String
ros1Pal_interaction_msgsASRStatusCodecIdentity = "UWVMROS1_0469173f91448cb5069e27cab54cfd117d9a22d757e8a8303ac5cb1c53e7e985"
encodeRos1Pal_interaction_msgsASRStatus :: Ros1Pal_interaction_msgsASRStatus -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsASRStatus value = do
  b0 <- W.encodeBool (ros1Pal_interaction_msgsASRStatus_active value)
  b1 <- W.encodeText 128 True (ros1Pal_interaction_msgsASRStatus_language value)
  b2 <- W.encodeText 128 True (ros1Pal_interaction_msgsASRStatus_enabled_grammar value)
  b3 <- W.encodeText 128 True (ros1Pal_interaction_msgsASRStatus_acoustic_env value)
  b4 <- encodeRos1Pal_interaction_msgsAudioDeviceDescription (ros1Pal_interaction_msgsASRStatus_device value)
  W.bounded 538 [b0, b1, b2, b3, b4]
readRos1Pal_interaction_msgsASRStatus :: W.Decoder Ros1Pal_interaction_msgsASRStatus
readRos1Pal_interaction_msgsASRStatus = do
  a0 <- W.boolean
  a1 <- W.text 128 True
  a2 <- W.text 128 True
  a3 <- W.text 128 True
  a4 <- readRos1Pal_interaction_msgsAudioDeviceDescription
  let value = Ros1Pal_interaction_msgsASRStatus a0 a1 a2 a3 a4
  case encodeRos1Pal_interaction_msgsASRStatus value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsASRStatus :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsASRStatus
decodeRos1Pal_interaction_msgsASRStatus = W.runDecoder 538 readRos1Pal_interaction_msgsASRStatus
instance Canonical Ros1Pal_interaction_msgsASRStatus where
  maximumBytes _ = 538
  encodeValue = encodeRos1Pal_interaction_msgsASRStatus
  readValue = readRos1Pal_interaction_msgsASRStatus
data Ros1Pal_interaction_msgsASRSrvResponse = Ros1Pal_interaction_msgsASRSrvResponse
  {
    -- | \@brief pal_interaction_msgs/ASRSrvResponse.status: pal_interaction_msgs/ASRStatus.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsASRSrvResponse; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsASRSrvResponse_status :: Ros1Pal_interaction_msgsASRStatus
  ,
    -- | \@brief pal_interaction_msgs/ASRSrvResponse.error_msg: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsASRSrvResponse; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsASRSrvResponse_error_msg :: T.Text
  ,
    -- | \@brief pal_interaction_msgs/ASRSrvResponse.warn_msg: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsASRSrvResponse; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsASRSrvResponse_warn_msg :: T.Text
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsASRSrvResponse :: Ros1Pal_interaction_msgsASRSrvResponse
defaultRos1Pal_interaction_msgsASRSrvResponse = Ros1Pal_interaction_msgsASRSrvResponse (defaultRos1Pal_interaction_msgsASRStatus) (T.empty) (T.empty)
ros1Pal_interaction_msgsASRSrvResponseCodecIdentity :: String
ros1Pal_interaction_msgsASRSrvResponseCodecIdentity = "UWVMROS1_b0d47bec71896b9a6090ee0e99c5dad16272306b7b266a99e3da0db334e24d3a"
encodeRos1Pal_interaction_msgsASRSrvResponse :: Ros1Pal_interaction_msgsASRSrvResponse -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsASRSrvResponse value = do
  b0 <- encodeRos1Pal_interaction_msgsASRStatus (ros1Pal_interaction_msgsASRSrvResponse_status value)
  b1 <- W.encodeText 128 True (ros1Pal_interaction_msgsASRSrvResponse_error_msg value)
  b2 <- W.encodeText 128 True (ros1Pal_interaction_msgsASRSrvResponse_warn_msg value)
  W.bounded 802 [b0, b1, b2]
readRos1Pal_interaction_msgsASRSrvResponse :: W.Decoder Ros1Pal_interaction_msgsASRSrvResponse
readRos1Pal_interaction_msgsASRSrvResponse = do
  a0 <- readRos1Pal_interaction_msgsASRStatus
  a1 <- W.text 128 True
  a2 <- W.text 128 True
  let value = Ros1Pal_interaction_msgsASRSrvResponse a0 a1 a2
  case encodeRos1Pal_interaction_msgsASRSrvResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsASRSrvResponse :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsASRSrvResponse
decodeRos1Pal_interaction_msgsASRSrvResponse = W.runDecoder 802 readRos1Pal_interaction_msgsASRSrvResponse
instance Canonical Ros1Pal_interaction_msgsASRSrvResponse where
  maximumBytes _ = 802
  encodeValue = encodeRos1Pal_interaction_msgsASRSrvResponse
  readValue = readRos1Pal_interaction_msgsASRSrvResponse
data Ros1Pal_interaction_msgsASRServiceResponse = Ros1Pal_interaction_msgsASRServiceResponse
  {
    -- | \@brief pal_interaction_msgs/ASRServiceResponse.response: pal_interaction_msgs/ASRSrvResponse.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsASRServiceResponse; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsASRServiceResponse_response :: Ros1Pal_interaction_msgsASRSrvResponse
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsASRServiceResponse :: Ros1Pal_interaction_msgsASRServiceResponse
defaultRos1Pal_interaction_msgsASRServiceResponse = Ros1Pal_interaction_msgsASRServiceResponse (defaultRos1Pal_interaction_msgsASRSrvResponse)
ros1Pal_interaction_msgsASRServiceResponseCodecIdentity :: String
ros1Pal_interaction_msgsASRServiceResponseCodecIdentity = "UWVMROS1_bfa0a5701b04c4f637febfb3c24d5f49ebd690b82089ec88e21d7dca40028680"
encodeRos1Pal_interaction_msgsASRServiceResponse :: Ros1Pal_interaction_msgsASRServiceResponse -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsASRServiceResponse value = do
  b0 <- encodeRos1Pal_interaction_msgsASRSrvResponse (ros1Pal_interaction_msgsASRServiceResponse_response value)
  W.bounded 802 [b0]
readRos1Pal_interaction_msgsASRServiceResponse :: W.Decoder Ros1Pal_interaction_msgsASRServiceResponse
readRos1Pal_interaction_msgsASRServiceResponse = do
  a0 <- readRos1Pal_interaction_msgsASRSrvResponse
  let value = Ros1Pal_interaction_msgsASRServiceResponse a0
  case encodeRos1Pal_interaction_msgsASRServiceResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsASRServiceResponse :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsASRServiceResponse
decodeRos1Pal_interaction_msgsASRServiceResponse = W.runDecoder 802 readRos1Pal_interaction_msgsASRServiceResponse
instance Canonical Ros1Pal_interaction_msgsASRServiceResponse where
  maximumBytes _ = 802
  encodeValue = encodeRos1Pal_interaction_msgsASRServiceResponse
  readValue = readRos1Pal_interaction_msgsASRServiceResponse
data Ros1Pal_interaction_msgsAudioPlayGoal = Ros1Pal_interaction_msgsAudioPlayGoal
  {
    -- | \@brief pal_interaction_msgs/AudioPlayGoal.file: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsAudioPlayGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsAudioPlayGoal_file :: T.Text
  ,
    -- | \@brief pal_interaction_msgs/AudioPlayGoal.priority: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsAudioPlayGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsAudioPlayGoal_priority :: Word8
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsAudioPlayGoal :: Ros1Pal_interaction_msgsAudioPlayGoal
defaultRos1Pal_interaction_msgsAudioPlayGoal = Ros1Pal_interaction_msgsAudioPlayGoal (T.empty) (0)
ros1Pal_interaction_msgsAudioPlayGoalCodecIdentity :: String
ros1Pal_interaction_msgsAudioPlayGoalCodecIdentity = "UWVMROS1_1c2b6894e5b00f204c3d36af18802e5b54e2950b2ef22d3294460f3e7bd84e30"
encodeRos1Pal_interaction_msgsAudioPlayGoal :: Ros1Pal_interaction_msgsAudioPlayGoal -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsAudioPlayGoal value = do
  b0 <- W.encodeText 128 True (ros1Pal_interaction_msgsAudioPlayGoal_file value)
  b1 <- W.encodeUnsigned 1 (fromIntegral (ros1Pal_interaction_msgsAudioPlayGoal_priority value))
  W.bounded 133 [b0, b1]
readRos1Pal_interaction_msgsAudioPlayGoal :: W.Decoder Ros1Pal_interaction_msgsAudioPlayGoal
readRos1Pal_interaction_msgsAudioPlayGoal = do
  a0 <- W.text 128 True
  a1 <- fromIntegral <$> W.unsigned 1
  let value = Ros1Pal_interaction_msgsAudioPlayGoal a0 a1
  case encodeRos1Pal_interaction_msgsAudioPlayGoal value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsAudioPlayGoal :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsAudioPlayGoal
decodeRos1Pal_interaction_msgsAudioPlayGoal = W.runDecoder 133 readRos1Pal_interaction_msgsAudioPlayGoal
instance Canonical Ros1Pal_interaction_msgsAudioPlayGoal where
  maximumBytes _ = 133
  encodeValue = encodeRos1Pal_interaction_msgsAudioPlayGoal
  readValue = readRos1Pal_interaction_msgsAudioPlayGoal
data Ros1Pal_interaction_msgsAudioPlayResult = Ros1Pal_interaction_msgsAudioPlayResult deriving (Eq, Show)
defaultRos1Pal_interaction_msgsAudioPlayResult :: Ros1Pal_interaction_msgsAudioPlayResult
defaultRos1Pal_interaction_msgsAudioPlayResult = Ros1Pal_interaction_msgsAudioPlayResult 
ros1Pal_interaction_msgsAudioPlayResultCodecIdentity :: String
ros1Pal_interaction_msgsAudioPlayResultCodecIdentity = "UWVMROS1_46d6efb4dbf5cca76894398daf8b70e0f6577f624e90dc088beeca147a4f91fe"
encodeRos1Pal_interaction_msgsAudioPlayResult :: Ros1Pal_interaction_msgsAudioPlayResult -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsAudioPlayResult value = do
  W.bounded 0 []
readRos1Pal_interaction_msgsAudioPlayResult :: W.Decoder Ros1Pal_interaction_msgsAudioPlayResult
readRos1Pal_interaction_msgsAudioPlayResult = do
  let value = Ros1Pal_interaction_msgsAudioPlayResult 
  case encodeRos1Pal_interaction_msgsAudioPlayResult value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsAudioPlayResult :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsAudioPlayResult
decodeRos1Pal_interaction_msgsAudioPlayResult = W.runDecoder 0 readRos1Pal_interaction_msgsAudioPlayResult
instance Canonical Ros1Pal_interaction_msgsAudioPlayResult where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_interaction_msgsAudioPlayResult
  readValue = readRos1Pal_interaction_msgsAudioPlayResult
data Ros1Pal_interaction_msgsAudioPlayFeedback = Ros1Pal_interaction_msgsAudioPlayFeedback deriving (Eq, Show)
defaultRos1Pal_interaction_msgsAudioPlayFeedback :: Ros1Pal_interaction_msgsAudioPlayFeedback
defaultRos1Pal_interaction_msgsAudioPlayFeedback = Ros1Pal_interaction_msgsAudioPlayFeedback 
ros1Pal_interaction_msgsAudioPlayFeedbackCodecIdentity :: String
ros1Pal_interaction_msgsAudioPlayFeedbackCodecIdentity = "UWVMROS1_8715716200235ab9076d7f152ef277236349ffb02f01b16ba5f10ede343729bd"
encodeRos1Pal_interaction_msgsAudioPlayFeedback :: Ros1Pal_interaction_msgsAudioPlayFeedback -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsAudioPlayFeedback value = do
  W.bounded 0 []
readRos1Pal_interaction_msgsAudioPlayFeedback :: W.Decoder Ros1Pal_interaction_msgsAudioPlayFeedback
readRos1Pal_interaction_msgsAudioPlayFeedback = do
  let value = Ros1Pal_interaction_msgsAudioPlayFeedback 
  case encodeRos1Pal_interaction_msgsAudioPlayFeedback value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsAudioPlayFeedback :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsAudioPlayFeedback
decodeRos1Pal_interaction_msgsAudioPlayFeedback = W.runDecoder 0 readRos1Pal_interaction_msgsAudioPlayFeedback
instance Canonical Ros1Pal_interaction_msgsAudioPlayFeedback where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_interaction_msgsAudioPlayFeedback
  readValue = readRos1Pal_interaction_msgsAudioPlayFeedback
data Ros1Pal_interaction_msgsAudioPlayerState = Ros1Pal_interaction_msgsAudioPlayerState
  {
    -- | \@brief pal_interaction_msgs/AudioPlayerState.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsAudioPlayerState; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsAudioPlayerState_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief pal_interaction_msgs/AudioPlayerState.isPlaying: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsAudioPlayerState; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsAudioPlayerState_isPlaying :: Bool
  ,
    -- | \@brief pal_interaction_msgs/AudioPlayerState.msg: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsAudioPlayerState; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsAudioPlayerState_msg :: T.Text
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsAudioPlayerState :: Ros1Pal_interaction_msgsAudioPlayerState
defaultRos1Pal_interaction_msgsAudioPlayerState = Ros1Pal_interaction_msgsAudioPlayerState (defaultRos1Std_msgsHeader) (False) (T.empty)
ros1Pal_interaction_msgsAudioPlayerStateCodecIdentity :: String
ros1Pal_interaction_msgsAudioPlayerStateCodecIdentity = "UWVMROS1_01549954e3ca3bfb4dd7e5c82e8697d0a480d16757826cc4708266794ec85675"
encodeRos1Pal_interaction_msgsAudioPlayerState :: Ros1Pal_interaction_msgsAudioPlayerState -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsAudioPlayerState value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Pal_interaction_msgsAudioPlayerState_header value)
  b1 <- W.encodeBool (ros1Pal_interaction_msgsAudioPlayerState_isPlaying value)
  b2 <- W.encodeText 128 True (ros1Pal_interaction_msgsAudioPlayerState_msg value)
  W.bounded 277 [b0, b1, b2]
readRos1Pal_interaction_msgsAudioPlayerState :: W.Decoder Ros1Pal_interaction_msgsAudioPlayerState
readRos1Pal_interaction_msgsAudioPlayerState = do
  a0 <- readRos1Std_msgsHeader
  a1 <- W.boolean
  a2 <- W.text 128 True
  let value = Ros1Pal_interaction_msgsAudioPlayerState a0 a1 a2
  case encodeRos1Pal_interaction_msgsAudioPlayerState value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsAudioPlayerState :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsAudioPlayerState
decodeRos1Pal_interaction_msgsAudioPlayerState = W.runDecoder 277 readRos1Pal_interaction_msgsAudioPlayerState
instance Canonical Ros1Pal_interaction_msgsAudioPlayerState where
  maximumBytes _ = 277
  encodeValue = encodeRos1Pal_interaction_msgsAudioPlayerState
  readValue = readRos1Pal_interaction_msgsAudioPlayerState
data Ros1Pal_interaction_msgsDirectionOfArrival = Ros1Pal_interaction_msgsDirectionOfArrival
  {
    -- | \@brief pal_interaction_msgs/DirectionOfArrival.doa: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsDirectionOfArrival; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsDirectionOfArrival_doa :: Float
  ,
    -- | \@brief pal_interaction_msgs/DirectionOfArrival.prob: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsDirectionOfArrival; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsDirectionOfArrival_prob :: Float
  ,
    -- | \@brief pal_interaction_msgs/DirectionOfArrival.power: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsDirectionOfArrival; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsDirectionOfArrival_power :: Float
  ,
    -- | \@brief pal_interaction_msgs/DirectionOfArrival.metadoa: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsDirectionOfArrival; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsDirectionOfArrival_metadoa :: T.Text
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsDirectionOfArrival :: Ros1Pal_interaction_msgsDirectionOfArrival
defaultRos1Pal_interaction_msgsDirectionOfArrival = Ros1Pal_interaction_msgsDirectionOfArrival (0) (0) (0) (T.empty)
ros1Pal_interaction_msgsDirectionOfArrivalCodecIdentity :: String
ros1Pal_interaction_msgsDirectionOfArrivalCodecIdentity = "UWVMROS1_1569630ee3abd3caad9a14797d6381b68e764f0c00266d2de5c450f002c8f5fd"
encodeRos1Pal_interaction_msgsDirectionOfArrival :: Ros1Pal_interaction_msgsDirectionOfArrival -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsDirectionOfArrival value = do
  b0 <- W.encodeFloat32 (ros1Pal_interaction_msgsDirectionOfArrival_doa value)
  b1 <- W.encodeFloat32 (ros1Pal_interaction_msgsDirectionOfArrival_prob value)
  b2 <- W.encodeFloat32 (ros1Pal_interaction_msgsDirectionOfArrival_power value)
  b3 <- W.encodeText 128 True (ros1Pal_interaction_msgsDirectionOfArrival_metadoa value)
  W.bounded 144 [b0, b1, b2, b3]
readRos1Pal_interaction_msgsDirectionOfArrival :: W.Decoder Ros1Pal_interaction_msgsDirectionOfArrival
readRos1Pal_interaction_msgsDirectionOfArrival = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.text 128 True
  let value = Ros1Pal_interaction_msgsDirectionOfArrival a0 a1 a2 a3
  case encodeRos1Pal_interaction_msgsDirectionOfArrival value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsDirectionOfArrival :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsDirectionOfArrival
decodeRos1Pal_interaction_msgsDirectionOfArrival = W.runDecoder 144 readRos1Pal_interaction_msgsDirectionOfArrival
instance Canonical Ros1Pal_interaction_msgsDirectionOfArrival where
  maximumBytes _ = 144
  encodeValue = encodeRos1Pal_interaction_msgsDirectionOfArrival
  readValue = readRos1Pal_interaction_msgsDirectionOfArrival
data Ros1Pal_interaction_msgsEnablingSoundLocalisation = Ros1Pal_interaction_msgsEnablingSoundLocalisation
  {
    -- | \@brief pal_interaction_msgs/EnablingSoundLocalisation.enable: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsEnablingSoundLocalisation; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsEnablingSoundLocalisation_enable :: Bool
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsEnablingSoundLocalisation :: Ros1Pal_interaction_msgsEnablingSoundLocalisation
defaultRos1Pal_interaction_msgsEnablingSoundLocalisation = Ros1Pal_interaction_msgsEnablingSoundLocalisation (False)
ros1Pal_interaction_msgsEnablingSoundLocalisationCodecIdentity :: String
ros1Pal_interaction_msgsEnablingSoundLocalisationCodecIdentity = "UWVMROS1_8df033349e2f5d7072336e535fc87c1ff6148ed15bc36cc952a99d133a69d495"
encodeRos1Pal_interaction_msgsEnablingSoundLocalisation :: Ros1Pal_interaction_msgsEnablingSoundLocalisation -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsEnablingSoundLocalisation value = do
  b0 <- W.encodeBool (ros1Pal_interaction_msgsEnablingSoundLocalisation_enable value)
  W.bounded 1 [b0]
readRos1Pal_interaction_msgsEnablingSoundLocalisation :: W.Decoder Ros1Pal_interaction_msgsEnablingSoundLocalisation
readRos1Pal_interaction_msgsEnablingSoundLocalisation = do
  a0 <- W.boolean
  let value = Ros1Pal_interaction_msgsEnablingSoundLocalisation a0
  case encodeRos1Pal_interaction_msgsEnablingSoundLocalisation value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsEnablingSoundLocalisation :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsEnablingSoundLocalisation
decodeRos1Pal_interaction_msgsEnablingSoundLocalisation = W.runDecoder 1 readRos1Pal_interaction_msgsEnablingSoundLocalisation
instance Canonical Ros1Pal_interaction_msgsEnablingSoundLocalisation where
  maximumBytes _ = 1
  encodeValue = encodeRos1Pal_interaction_msgsEnablingSoundLocalisation
  readValue = readRos1Pal_interaction_msgsEnablingSoundLocalisation
data Ros1Pal_interaction_msgsI18nArgument = Ros1Pal_interaction_msgsI18nArgument
  {
    -- | \@brief pal_interaction_msgs/I18nArgument.section: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsI18nArgument; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsI18nArgument_section :: T.Text
  ,
    -- | \@brief pal_interaction_msgs/I18nArgument.key: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsI18nArgument; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsI18nArgument_key :: T.Text
  ,
    -- | \@brief pal_interaction_msgs/I18nArgument.expanded: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsI18nArgument; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsI18nArgument_expanded :: T.Text
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsI18nArgument :: Ros1Pal_interaction_msgsI18nArgument
defaultRos1Pal_interaction_msgsI18nArgument = Ros1Pal_interaction_msgsI18nArgument (T.empty) (T.empty) (T.empty)
ros1Pal_interaction_msgsI18nArgumentCodecIdentity :: String
ros1Pal_interaction_msgsI18nArgumentCodecIdentity = "UWVMROS1_2ca48fd9d8f6dc4a1bc9b69c33c407ea1d6c400f22ceff31f784f161f41f27fb"
encodeRos1Pal_interaction_msgsI18nArgument :: Ros1Pal_interaction_msgsI18nArgument -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsI18nArgument value = do
  b0 <- W.encodeText 128 True (ros1Pal_interaction_msgsI18nArgument_section value)
  b1 <- W.encodeText 128 True (ros1Pal_interaction_msgsI18nArgument_key value)
  b2 <- W.encodeText 128 True (ros1Pal_interaction_msgsI18nArgument_expanded value)
  W.bounded 396 [b0, b1, b2]
readRos1Pal_interaction_msgsI18nArgument :: W.Decoder Ros1Pal_interaction_msgsI18nArgument
readRos1Pal_interaction_msgsI18nArgument = do
  a0 <- W.text 128 True
  a1 <- W.text 128 True
  a2 <- W.text 128 True
  let value = Ros1Pal_interaction_msgsI18nArgument a0 a1 a2
  case encodeRos1Pal_interaction_msgsI18nArgument value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsI18nArgument :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsI18nArgument
decodeRos1Pal_interaction_msgsI18nArgument = W.runDecoder 396 readRos1Pal_interaction_msgsI18nArgument
instance Canonical Ros1Pal_interaction_msgsI18nArgument where
  maximumBytes _ = 396
  encodeValue = encodeRos1Pal_interaction_msgsI18nArgument
  readValue = readRos1Pal_interaction_msgsI18nArgument
data Ros1Pal_interaction_msgsI18nText = Ros1Pal_interaction_msgsI18nText
  {
    -- | \@brief pal_interaction_msgs/I18nText.section: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsI18nText; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsI18nText_section :: T.Text
  ,
    -- | \@brief pal_interaction_msgs/I18nText.key: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsI18nText; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsI18nText_key :: T.Text
  ,
    -- | \@brief pal_interaction_msgs/I18nText.lang_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsI18nText; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsI18nText_lang_id :: T.Text
  ,
    -- | \@brief pal_interaction_msgs/I18nText.arguments: pal_interaction_msgs/I18nArgument; 0..4 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsI18nText; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsI18nText_arguments :: [Ros1Pal_interaction_msgsI18nArgument]
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsI18nText :: Ros1Pal_interaction_msgsI18nText
defaultRos1Pal_interaction_msgsI18nText = Ros1Pal_interaction_msgsI18nText (T.empty) (T.empty) (T.empty) ([])
ros1Pal_interaction_msgsI18nTextCodecIdentity :: String
ros1Pal_interaction_msgsI18nTextCodecIdentity = "UWVMROS1_b3e1cb48129a6ed9cad7f0b543c770aa8b7b0362d00e71185bb6b5ad8c38816c"
encodeRos1Pal_interaction_msgsI18nText :: Ros1Pal_interaction_msgsI18nText -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsI18nText value = do
  b0 <- W.encodeText 128 True (ros1Pal_interaction_msgsI18nText_section value)
  b1 <- W.encodeText 128 True (ros1Pal_interaction_msgsI18nText_key value)
  b2 <- W.encodeText 128 True (ros1Pal_interaction_msgsI18nText_lang_id value)
  if length (ros1Pal_interaction_msgsI18nText_arguments value) > 4 then Left 22 else Right ()
  prefix3 <- W.encodeCount 4 (length (ros1Pal_interaction_msgsI18nText_arguments value))
  b3 <- B.concat <$> mapM (\e -> encodeRos1Pal_interaction_msgsI18nArgument (e)) (ros1Pal_interaction_msgsI18nText_arguments value)
  W.bounded 1984 [b0, b1, b2, prefix3, b3]
readRos1Pal_interaction_msgsI18nText :: W.Decoder Ros1Pal_interaction_msgsI18nText
readRos1Pal_interaction_msgsI18nText = do
  a0 <- W.text 128 True
  a1 <- W.text 128 True
  a2 <- W.text 128 True
  count3 <- W.count 4
  a3 <- replicateM count3 (readRos1Pal_interaction_msgsI18nArgument)
  let value = Ros1Pal_interaction_msgsI18nText a0 a1 a2 a3
  case encodeRos1Pal_interaction_msgsI18nText value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsI18nText :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsI18nText
decodeRos1Pal_interaction_msgsI18nText = W.runDecoder 1984 readRos1Pal_interaction_msgsI18nText
instance Canonical Ros1Pal_interaction_msgsI18nText where
  maximumBytes _ = 1984
  encodeValue = encodeRos1Pal_interaction_msgsI18nText
  readValue = readRos1Pal_interaction_msgsI18nText
data Ros1Pal_interaction_msgsTtsText = Ros1Pal_interaction_msgsTtsText
  {
    -- | \@brief pal_interaction_msgs/TtsText.text: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsTtsText; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsTtsText_text :: T.Text
  ,
    -- | \@brief pal_interaction_msgs/TtsText.lang_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsTtsText; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsTtsText_lang_id :: T.Text
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsTtsText :: Ros1Pal_interaction_msgsTtsText
defaultRos1Pal_interaction_msgsTtsText = Ros1Pal_interaction_msgsTtsText (T.empty) (T.empty)
ros1Pal_interaction_msgsTtsTextCodecIdentity :: String
ros1Pal_interaction_msgsTtsTextCodecIdentity = "UWVMROS1_0bf14fabb5b62c5341e606b8ac9f6abaf74a85033a10e9a8f1e5b8bdfe178a87"
encodeRos1Pal_interaction_msgsTtsText :: Ros1Pal_interaction_msgsTtsText -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsTtsText value = do
  b0 <- W.encodeText 128 True (ros1Pal_interaction_msgsTtsText_text value)
  b1 <- W.encodeText 128 True (ros1Pal_interaction_msgsTtsText_lang_id value)
  W.bounded 264 [b0, b1]
readRos1Pal_interaction_msgsTtsText :: W.Decoder Ros1Pal_interaction_msgsTtsText
readRos1Pal_interaction_msgsTtsText = do
  a0 <- W.text 128 True
  a1 <- W.text 128 True
  let value = Ros1Pal_interaction_msgsTtsText a0 a1
  case encodeRos1Pal_interaction_msgsTtsText value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsTtsText :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsTtsText
decodeRos1Pal_interaction_msgsTtsText = W.runDecoder 264 readRos1Pal_interaction_msgsTtsText
instance Canonical Ros1Pal_interaction_msgsTtsText where
  maximumBytes _ = 264
  encodeValue = encodeRos1Pal_interaction_msgsTtsText
  readValue = readRos1Pal_interaction_msgsTtsText
data Ros1Pal_interaction_msgsGetSpeechDurationRequest = Ros1Pal_interaction_msgsGetSpeechDurationRequest
  {
    -- | \@brief pal_interaction_msgs/GetSpeechDurationRequest.text: pal_interaction_msgs/I18nText.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsGetSpeechDurationRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsGetSpeechDurationRequest_text :: Ros1Pal_interaction_msgsI18nText
  ,
    -- | \@brief pal_interaction_msgs/GetSpeechDurationRequest.rawtext: pal_interaction_msgs/TtsText.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsGetSpeechDurationRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsGetSpeechDurationRequest_rawtext :: Ros1Pal_interaction_msgsTtsText
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsGetSpeechDurationRequest :: Ros1Pal_interaction_msgsGetSpeechDurationRequest
defaultRos1Pal_interaction_msgsGetSpeechDurationRequest =
    Ros1Pal_interaction_msgsGetSpeechDurationRequest
    (defaultRos1Pal_interaction_msgsI18nText)
    (defaultRos1Pal_interaction_msgsTtsText)
ros1Pal_interaction_msgsGetSpeechDurationRequestCodecIdentity :: String
ros1Pal_interaction_msgsGetSpeechDurationRequestCodecIdentity = "UWVMROS1_0926f4515183e6c9fd4cd5b20c6aa53014ba7dbd4e64113c9b6c514123ba7dc5"
encodeRos1Pal_interaction_msgsGetSpeechDurationRequest :: Ros1Pal_interaction_msgsGetSpeechDurationRequest -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsGetSpeechDurationRequest value = do
  b0 <- encodeRos1Pal_interaction_msgsI18nText (ros1Pal_interaction_msgsGetSpeechDurationRequest_text value)
  b1 <- encodeRos1Pal_interaction_msgsTtsText (ros1Pal_interaction_msgsGetSpeechDurationRequest_rawtext value)
  W.bounded 2248 [b0, b1]
readRos1Pal_interaction_msgsGetSpeechDurationRequest :: W.Decoder Ros1Pal_interaction_msgsGetSpeechDurationRequest
readRos1Pal_interaction_msgsGetSpeechDurationRequest = do
  a0 <- readRos1Pal_interaction_msgsI18nText
  a1 <- readRos1Pal_interaction_msgsTtsText
  let value = Ros1Pal_interaction_msgsGetSpeechDurationRequest a0 a1
  case encodeRos1Pal_interaction_msgsGetSpeechDurationRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsGetSpeechDurationRequest :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsGetSpeechDurationRequest
decodeRos1Pal_interaction_msgsGetSpeechDurationRequest = W.runDecoder 2248 readRos1Pal_interaction_msgsGetSpeechDurationRequest
instance Canonical Ros1Pal_interaction_msgsGetSpeechDurationRequest where
  maximumBytes _ = 2248
  encodeValue = encodeRos1Pal_interaction_msgsGetSpeechDurationRequest
  readValue = readRos1Pal_interaction_msgsGetSpeechDurationRequest
data Ros1Pal_interaction_msgsGetSpeechDurationResponse = Ros1Pal_interaction_msgsGetSpeechDurationResponse
  {
    -- | \@brief pal_interaction_msgs/GetSpeechDurationResponse.ok: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsGetSpeechDurationResponse; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsGetSpeechDurationResponse_ok :: Bool
  ,
    -- | \@brief pal_interaction_msgs/GetSpeechDurationResponse.words: string; 0..16 elements; each string is
    --  0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsGetSpeechDurationResponse; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsGetSpeechDurationResponse_words :: [T.Text]
  ,
    -- | \@brief pal_interaction_msgs/GetSpeechDurationResponse.word_durations: duration; 0..16 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsGetSpeechDurationResponse; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsGetSpeechDurationResponse_word_durations :: [Ros1Duration]
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsGetSpeechDurationResponse :: Ros1Pal_interaction_msgsGetSpeechDurationResponse
defaultRos1Pal_interaction_msgsGetSpeechDurationResponse = Ros1Pal_interaction_msgsGetSpeechDurationResponse (False) ([]) ([])
ros1Pal_interaction_msgsGetSpeechDurationResponseCodecIdentity :: String
ros1Pal_interaction_msgsGetSpeechDurationResponseCodecIdentity = "UWVMROS1_44379b24ddf4582ec184a0da7993d27b9f4ec5d430a129468bf8aef6d5437578"
encodeRos1Pal_interaction_msgsGetSpeechDurationResponse :: Ros1Pal_interaction_msgsGetSpeechDurationResponse -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsGetSpeechDurationResponse value = do
  b0 <- W.encodeBool (ros1Pal_interaction_msgsGetSpeechDurationResponse_ok value)
  if length (ros1Pal_interaction_msgsGetSpeechDurationResponse_words value) > 16 then Left 22 else Right ()
  prefix1 <- W.encodeCount 16 (length (ros1Pal_interaction_msgsGetSpeechDurationResponse_words value))
  b1 <- B.concat <$> mapM (\e -> W.encodeText 128 True (e)) (ros1Pal_interaction_msgsGetSpeechDurationResponse_words value)
  if length (ros1Pal_interaction_msgsGetSpeechDurationResponse_word_durations value) > 16 then Left 22 else Right ()
  prefix2 <- W.encodeCount 16 (length (ros1Pal_interaction_msgsGetSpeechDurationResponse_word_durations value))
  b2 <- B.concat <$> mapM (\e -> encodeRos1Duration (e)) (ros1Pal_interaction_msgsGetSpeechDurationResponse_word_durations value)
  W.bounded 2249 [b0, prefix1, b1, prefix2, b2]
readRos1Pal_interaction_msgsGetSpeechDurationResponse :: W.Decoder Ros1Pal_interaction_msgsGetSpeechDurationResponse
readRos1Pal_interaction_msgsGetSpeechDurationResponse = do
  a0 <- W.boolean
  count1 <- W.count 16
  a1 <- replicateM count1 (W.text 128 True)
  count2 <- W.count 16
  a2 <- replicateM count2 (readRos1Duration)
  let value = Ros1Pal_interaction_msgsGetSpeechDurationResponse a0 a1 a2
  case encodeRos1Pal_interaction_msgsGetSpeechDurationResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsGetSpeechDurationResponse :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsGetSpeechDurationResponse
decodeRos1Pal_interaction_msgsGetSpeechDurationResponse = W.runDecoder 2249 readRos1Pal_interaction_msgsGetSpeechDurationResponse
instance Canonical Ros1Pal_interaction_msgsGetSpeechDurationResponse where
  maximumBytes _ = 2249
  encodeValue = encodeRos1Pal_interaction_msgsGetSpeechDurationResponse
  readValue = readRos1Pal_interaction_msgsGetSpeechDurationResponse
data Ros1Pal_interaction_msgsInputArgument = Ros1Pal_interaction_msgsInputArgument
  {
    -- | \@brief pal_interaction_msgs/InputArgument.key: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsInputArgument; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsInputArgument_key :: T.Text
  ,
    -- | \@brief pal_interaction_msgs/InputArgument.value: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsInputArgument; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsInputArgument_value :: T.Text
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsInputArgument :: Ros1Pal_interaction_msgsInputArgument
defaultRos1Pal_interaction_msgsInputArgument = Ros1Pal_interaction_msgsInputArgument (T.empty) (T.empty)
ros1Pal_interaction_msgsInputArgumentCodecIdentity :: String
ros1Pal_interaction_msgsInputArgumentCodecIdentity = "UWVMROS1_96c3c0967199a746bf47ffd146123f31ec2f1949b7f3a343cad3825b8b1e8dd0"
encodeRos1Pal_interaction_msgsInputArgument :: Ros1Pal_interaction_msgsInputArgument -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsInputArgument value = do
  b0 <- W.encodeText 128 True (ros1Pal_interaction_msgsInputArgument_key value)
  b1 <- W.encodeText 128 True (ros1Pal_interaction_msgsInputArgument_value value)
  W.bounded 264 [b0, b1]
readRos1Pal_interaction_msgsInputArgument :: W.Decoder Ros1Pal_interaction_msgsInputArgument
readRos1Pal_interaction_msgsInputArgument = do
  a0 <- W.text 128 True
  a1 <- W.text 128 True
  let value = Ros1Pal_interaction_msgsInputArgument a0 a1
  case encodeRos1Pal_interaction_msgsInputArgument value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsInputArgument :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsInputArgument
decodeRos1Pal_interaction_msgsInputArgument = W.runDecoder 264 readRos1Pal_interaction_msgsInputArgument
instance Canonical Ros1Pal_interaction_msgsInputArgument where
  maximumBytes _ = 264
  encodeValue = encodeRos1Pal_interaction_msgsInputArgument
  readValue = readRos1Pal_interaction_msgsInputArgument
data Ros1Pal_interaction_msgsInput = Ros1Pal_interaction_msgsInput
  {
    -- | \@brief pal_interaction_msgs/Input.action: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsInput; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsInput_action :: T.Text
  ,
    -- | \@brief pal_interaction_msgs/Input.args: pal_interaction_msgs/InputArgument; 0..4 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsInput; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsInput_args :: [Ros1Pal_interaction_msgsInputArgument]
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsInput :: Ros1Pal_interaction_msgsInput
defaultRos1Pal_interaction_msgsInput = Ros1Pal_interaction_msgsInput (T.empty) ([])
ros1Pal_interaction_msgsInputCodecIdentity :: String
ros1Pal_interaction_msgsInputCodecIdentity = "UWVMROS1_11478aeb5c676f50680ee5c4e75973b10cec5df40f09cbb8573ddad4eb91d307"
ros1Pal_interaction_msgsInput_INPUT_ACCEPT :: T.Text
ros1Pal_interaction_msgsInput_INPUT_ACCEPT = T.pack [toEnum 0x49, toEnum 0x4e, toEnum 0x50, toEnum 0x55, toEnum 0x54, toEnum 0x5f, toEnum 0x41, toEnum
    0x43, toEnum 0x43, toEnum 0x45, toEnum 0x50, toEnum 0x54]
ros1Pal_interaction_msgsInput_INPUT_REJECT :: T.Text
ros1Pal_interaction_msgsInput_INPUT_REJECT = T.pack [toEnum 0x49, toEnum 0x4e, toEnum 0x50, toEnum 0x55, toEnum 0x54, toEnum 0x5f, toEnum 0x52, toEnum
    0x45, toEnum 0x4a, toEnum 0x45, toEnum 0x43, toEnum 0x54]
ros1Pal_interaction_msgsInput_INPUT_CANCEL :: T.Text
ros1Pal_interaction_msgsInput_INPUT_CANCEL = T.pack [toEnum 0x49, toEnum 0x4e, toEnum 0x50, toEnum 0x55, toEnum 0x54, toEnum 0x5f, toEnum 0x43, toEnum
    0x41, toEnum 0x4e, toEnum 0x43, toEnum 0x45, toEnum 0x4c]
ros1Pal_interaction_msgsInput_OK :: T.Text
ros1Pal_interaction_msgsInput_OK = T.pack [toEnum 0x6f, toEnum 0x6b]
ros1Pal_interaction_msgsInput_YES :: T.Text
ros1Pal_interaction_msgsInput_YES = T.pack [toEnum 0x79, toEnum 0x65, toEnum 0x73]
ros1Pal_interaction_msgsInput_NO :: T.Text
ros1Pal_interaction_msgsInput_NO = T.pack [toEnum 0x6e, toEnum 0x6f]
ros1Pal_interaction_msgsInput_CANCEL :: T.Text
ros1Pal_interaction_msgsInput_CANCEL = T.pack [toEnum 0x63, toEnum 0x61, toEnum 0x6e, toEnum 0x63, toEnum 0x65, toEnum 0x6c]
ros1Pal_interaction_msgsInput_ABORT :: T.Text
ros1Pal_interaction_msgsInput_ABORT = T.pack [toEnum 0x61, toEnum 0x62, toEnum 0x6f, toEnum 0x72, toEnum 0x74]
encodeRos1Pal_interaction_msgsInput :: Ros1Pal_interaction_msgsInput -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsInput value = do
  b0 <- W.encodeText 128 True (ros1Pal_interaction_msgsInput_action value)
  if length (ros1Pal_interaction_msgsInput_args value) > 4 then Left 22 else Right ()
  prefix1 <- W.encodeCount 4 (length (ros1Pal_interaction_msgsInput_args value))
  b1 <- B.concat <$> mapM (\e -> encodeRos1Pal_interaction_msgsInputArgument (e)) (ros1Pal_interaction_msgsInput_args value)
  W.bounded 1192 [b0, prefix1, b1]
readRos1Pal_interaction_msgsInput :: W.Decoder Ros1Pal_interaction_msgsInput
readRos1Pal_interaction_msgsInput = do
  a0 <- W.text 128 True
  count1 <- W.count 4
  a1 <- replicateM count1 (readRos1Pal_interaction_msgsInputArgument)
  let value = Ros1Pal_interaction_msgsInput a0 a1
  case encodeRos1Pal_interaction_msgsInput value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsInput :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsInput
decodeRos1Pal_interaction_msgsInput = W.runDecoder 1192 readRos1Pal_interaction_msgsInput
instance Canonical Ros1Pal_interaction_msgsInput where
  maximumBytes _ = 1192
  encodeValue = encodeRos1Pal_interaction_msgsInput
  readValue = readRos1Pal_interaction_msgsInput
data Ros1Pal_interaction_msgsSoundGoal = Ros1Pal_interaction_msgsSoundGoal
  {
    -- | \@brief pal_interaction_msgs/SoundGoal.text: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsSoundGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsSoundGoal_text :: T.Text
  ,
    -- | \@brief pal_interaction_msgs/SoundGoal.lang_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsSoundGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsSoundGoal_lang_id :: T.Text
  ,
    -- | \@brief pal_interaction_msgs/SoundGoal.wait_before_speaking: duration.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsSoundGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsSoundGoal_wait_before_speaking :: Ros1Duration
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsSoundGoal :: Ros1Pal_interaction_msgsSoundGoal
defaultRos1Pal_interaction_msgsSoundGoal = Ros1Pal_interaction_msgsSoundGoal (T.empty) (T.empty) (defaultRos1Duration)
ros1Pal_interaction_msgsSoundGoalCodecIdentity :: String
ros1Pal_interaction_msgsSoundGoalCodecIdentity = "UWVMROS1_07b9c59deb5669b601a4e02708bd14d16a19263edde6f8fef3a4781724a4f3db"
encodeRos1Pal_interaction_msgsSoundGoal :: Ros1Pal_interaction_msgsSoundGoal -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsSoundGoal value = do
  b0 <- W.encodeText 128 True (ros1Pal_interaction_msgsSoundGoal_text value)
  b1 <- W.encodeText 128 True (ros1Pal_interaction_msgsSoundGoal_lang_id value)
  b2 <- encodeRos1Duration (ros1Pal_interaction_msgsSoundGoal_wait_before_speaking value)
  W.bounded 272 [b0, b1, b2]
readRos1Pal_interaction_msgsSoundGoal :: W.Decoder Ros1Pal_interaction_msgsSoundGoal
readRos1Pal_interaction_msgsSoundGoal = do
  a0 <- W.text 128 True
  a1 <- W.text 128 True
  a2 <- readRos1Duration
  let value = Ros1Pal_interaction_msgsSoundGoal a0 a1 a2
  case encodeRos1Pal_interaction_msgsSoundGoal value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsSoundGoal :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsSoundGoal
decodeRos1Pal_interaction_msgsSoundGoal = W.runDecoder 272 readRos1Pal_interaction_msgsSoundGoal
instance Canonical Ros1Pal_interaction_msgsSoundGoal where
  maximumBytes _ = 272
  encodeValue = encodeRos1Pal_interaction_msgsSoundGoal
  readValue = readRos1Pal_interaction_msgsSoundGoal
data Ros1Pal_interaction_msgsSoundResult = Ros1Pal_interaction_msgsSoundResult
  {
    -- | \@brief pal_interaction_msgs/SoundResult.text: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsSoundResult; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsSoundResult_text :: T.Text
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsSoundResult :: Ros1Pal_interaction_msgsSoundResult
defaultRos1Pal_interaction_msgsSoundResult = Ros1Pal_interaction_msgsSoundResult (T.empty)
ros1Pal_interaction_msgsSoundResultCodecIdentity :: String
ros1Pal_interaction_msgsSoundResultCodecIdentity = "UWVMROS1_53c3ab50649a2ffe113e4ae246aa05736090d42f5a0158f2878292319ee89a86"
encodeRos1Pal_interaction_msgsSoundResult :: Ros1Pal_interaction_msgsSoundResult -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsSoundResult value = do
  b0 <- W.encodeText 128 True (ros1Pal_interaction_msgsSoundResult_text value)
  W.bounded 132 [b0]
readRos1Pal_interaction_msgsSoundResult :: W.Decoder Ros1Pal_interaction_msgsSoundResult
readRos1Pal_interaction_msgsSoundResult = do
  a0 <- W.text 128 True
  let value = Ros1Pal_interaction_msgsSoundResult a0
  case encodeRos1Pal_interaction_msgsSoundResult value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsSoundResult :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsSoundResult
decodeRos1Pal_interaction_msgsSoundResult = W.runDecoder 132 readRos1Pal_interaction_msgsSoundResult
instance Canonical Ros1Pal_interaction_msgsSoundResult where
  maximumBytes _ = 132
  encodeValue = encodeRos1Pal_interaction_msgsSoundResult
  readValue = readRos1Pal_interaction_msgsSoundResult
data Ros1Pal_interaction_msgsSoundFeedback = Ros1Pal_interaction_msgsSoundFeedback deriving (Eq, Show)
defaultRos1Pal_interaction_msgsSoundFeedback :: Ros1Pal_interaction_msgsSoundFeedback
defaultRos1Pal_interaction_msgsSoundFeedback = Ros1Pal_interaction_msgsSoundFeedback 
ros1Pal_interaction_msgsSoundFeedbackCodecIdentity :: String
ros1Pal_interaction_msgsSoundFeedbackCodecIdentity = "UWVMROS1_e9a77075706815852fbf5684df54d9d655925f7fecc7caa407d9076adc645d7d"
encodeRos1Pal_interaction_msgsSoundFeedback :: Ros1Pal_interaction_msgsSoundFeedback -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsSoundFeedback value = do
  W.bounded 0 []
readRos1Pal_interaction_msgsSoundFeedback :: W.Decoder Ros1Pal_interaction_msgsSoundFeedback
readRos1Pal_interaction_msgsSoundFeedback = do
  let value = Ros1Pal_interaction_msgsSoundFeedback 
  case encodeRos1Pal_interaction_msgsSoundFeedback value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsSoundFeedback :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsSoundFeedback
decodeRos1Pal_interaction_msgsSoundFeedback = W.runDecoder 0 readRos1Pal_interaction_msgsSoundFeedback
instance Canonical Ros1Pal_interaction_msgsSoundFeedback where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_interaction_msgsSoundFeedback
  readValue = readRos1Pal_interaction_msgsSoundFeedback
data Ros1Pal_interaction_msgsSoundLocalisationServiceRequest = Ros1Pal_interaction_msgsSoundLocalisationServiceRequest
  {
    -- | \@brief pal_interaction_msgs/SoundLocalisationServiceRequest.enabling: pal_interaction_msgs/EnablingSoundLocalisation.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsSoundLocalisationServiceRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsSoundLocalisationServiceRequest_enabling :: Ros1Pal_interaction_msgsEnablingSoundLocalisation
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsSoundLocalisationServiceRequest :: Ros1Pal_interaction_msgsSoundLocalisationServiceRequest
defaultRos1Pal_interaction_msgsSoundLocalisationServiceRequest =
    Ros1Pal_interaction_msgsSoundLocalisationServiceRequest
    (defaultRos1Pal_interaction_msgsEnablingSoundLocalisation)
ros1Pal_interaction_msgsSoundLocalisationServiceRequestCodecIdentity :: String
ros1Pal_interaction_msgsSoundLocalisationServiceRequestCodecIdentity = "UWVMROS1_e7505ba44b9dc511311f5609c1618a1214362063600b32e2057dbe9cc2d32feb"
encodeRos1Pal_interaction_msgsSoundLocalisationServiceRequest :: Ros1Pal_interaction_msgsSoundLocalisationServiceRequest -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsSoundLocalisationServiceRequest value = do
  b0 <- encodeRos1Pal_interaction_msgsEnablingSoundLocalisation (ros1Pal_interaction_msgsSoundLocalisationServiceRequest_enabling value)
  W.bounded 1 [b0]
readRos1Pal_interaction_msgsSoundLocalisationServiceRequest :: W.Decoder Ros1Pal_interaction_msgsSoundLocalisationServiceRequest
readRos1Pal_interaction_msgsSoundLocalisationServiceRequest = do
  a0 <- readRos1Pal_interaction_msgsEnablingSoundLocalisation
  let value = Ros1Pal_interaction_msgsSoundLocalisationServiceRequest a0
  case encodeRos1Pal_interaction_msgsSoundLocalisationServiceRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsSoundLocalisationServiceRequest :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsSoundLocalisationServiceRequest
decodeRos1Pal_interaction_msgsSoundLocalisationServiceRequest = W.runDecoder 1 readRos1Pal_interaction_msgsSoundLocalisationServiceRequest
instance Canonical Ros1Pal_interaction_msgsSoundLocalisationServiceRequest where
  maximumBytes _ = 1
  encodeValue = encodeRos1Pal_interaction_msgsSoundLocalisationServiceRequest
  readValue = readRos1Pal_interaction_msgsSoundLocalisationServiceRequest
data Ros1Pal_interaction_msgsSoundLocalisationServiceResponse = Ros1Pal_interaction_msgsSoundLocalisationServiceResponse deriving (Eq, Show)
defaultRos1Pal_interaction_msgsSoundLocalisationServiceResponse :: Ros1Pal_interaction_msgsSoundLocalisationServiceResponse
defaultRos1Pal_interaction_msgsSoundLocalisationServiceResponse = Ros1Pal_interaction_msgsSoundLocalisationServiceResponse 
ros1Pal_interaction_msgsSoundLocalisationServiceResponseCodecIdentity :: String
ros1Pal_interaction_msgsSoundLocalisationServiceResponseCodecIdentity = "UWVMROS1_205fe5e2195345e29bac8477e95059862a44b476a359d808551427941c64ad6e"
encodeRos1Pal_interaction_msgsSoundLocalisationServiceResponse :: Ros1Pal_interaction_msgsSoundLocalisationServiceResponse -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsSoundLocalisationServiceResponse value = do
  W.bounded 0 []
readRos1Pal_interaction_msgsSoundLocalisationServiceResponse :: W.Decoder Ros1Pal_interaction_msgsSoundLocalisationServiceResponse
readRos1Pal_interaction_msgsSoundLocalisationServiceResponse = do
  let value = Ros1Pal_interaction_msgsSoundLocalisationServiceResponse 
  case encodeRos1Pal_interaction_msgsSoundLocalisationServiceResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsSoundLocalisationServiceResponse :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsSoundLocalisationServiceResponse
decodeRos1Pal_interaction_msgsSoundLocalisationServiceResponse = W.runDecoder 0 readRos1Pal_interaction_msgsSoundLocalisationServiceResponse
instance Canonical Ros1Pal_interaction_msgsSoundLocalisationServiceResponse where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_interaction_msgsSoundLocalisationServiceResponse
  readValue = readRos1Pal_interaction_msgsSoundLocalisationServiceResponse
data Ros1Pal_interaction_msgsTTSstate = Ros1Pal_interaction_msgsTTSstate
  {
    -- | \@brief pal_interaction_msgs/TTSstate.isSpeaking: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsTTSstate; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsTTSstate_isSpeaking :: Bool
  ,
    -- | \@brief pal_interaction_msgs/TTSstate.text: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsTTSstate; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsTTSstate_text :: T.Text
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsTTSstate :: Ros1Pal_interaction_msgsTTSstate
defaultRos1Pal_interaction_msgsTTSstate = Ros1Pal_interaction_msgsTTSstate (False) (T.empty)
ros1Pal_interaction_msgsTTSstateCodecIdentity :: String
ros1Pal_interaction_msgsTTSstateCodecIdentity = "UWVMROS1_b9269838ab729ac39efc69c373314419ace1b43a2bf47176c822671aba9d9987"
encodeRos1Pal_interaction_msgsTTSstate :: Ros1Pal_interaction_msgsTTSstate -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsTTSstate value = do
  b0 <- W.encodeBool (ros1Pal_interaction_msgsTTSstate_isSpeaking value)
  b1 <- W.encodeText 128 True (ros1Pal_interaction_msgsTTSstate_text value)
  W.bounded 133 [b0, b1]
readRos1Pal_interaction_msgsTTSstate :: W.Decoder Ros1Pal_interaction_msgsTTSstate
readRos1Pal_interaction_msgsTTSstate = do
  a0 <- W.boolean
  a1 <- W.text 128 True
  let value = Ros1Pal_interaction_msgsTTSstate a0 a1
  case encodeRos1Pal_interaction_msgsTTSstate value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsTTSstate :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsTTSstate
decodeRos1Pal_interaction_msgsTTSstate = W.runDecoder 133 readRos1Pal_interaction_msgsTTSstate
instance Canonical Ros1Pal_interaction_msgsTTSstate where
  maximumBytes _ = 133
  encodeValue = encodeRos1Pal_interaction_msgsTTSstate
  readValue = readRos1Pal_interaction_msgsTTSstate
data Ros1Pal_interaction_msgsTtsGoal = Ros1Pal_interaction_msgsTtsGoal
  {
    -- | \@brief pal_interaction_msgs/TtsGoal.text: pal_interaction_msgs/I18nText.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsTtsGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsTtsGoal_text :: Ros1Pal_interaction_msgsI18nText
  ,
    -- | \@brief pal_interaction_msgs/TtsGoal.rawtext: pal_interaction_msgs/TtsText.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsTtsGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsTtsGoal_rawtext :: Ros1Pal_interaction_msgsTtsText
  ,
    -- | \@brief pal_interaction_msgs/TtsGoal.speakerName: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsTtsGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsTtsGoal_speakerName :: T.Text
  ,
    -- | \@brief pal_interaction_msgs/TtsGoal.wait_before_speaking: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsTtsGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsTtsGoal_wait_before_speaking :: Double
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsTtsGoal :: Ros1Pal_interaction_msgsTtsGoal
defaultRos1Pal_interaction_msgsTtsGoal =
    Ros1Pal_interaction_msgsTtsGoal
    (defaultRos1Pal_interaction_msgsI18nText)
    (defaultRos1Pal_interaction_msgsTtsText)
    (T.empty)
    (0)
ros1Pal_interaction_msgsTtsGoalCodecIdentity :: String
ros1Pal_interaction_msgsTtsGoalCodecIdentity = "UWVMROS1_d128a99394120e1688e4feb9906b033af53982dbf12040604502aeb8f59304c7"
encodeRos1Pal_interaction_msgsTtsGoal :: Ros1Pal_interaction_msgsTtsGoal -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsTtsGoal value = do
  b0 <- encodeRos1Pal_interaction_msgsI18nText (ros1Pal_interaction_msgsTtsGoal_text value)
  b1 <- encodeRos1Pal_interaction_msgsTtsText (ros1Pal_interaction_msgsTtsGoal_rawtext value)
  b2 <- W.encodeText 128 True (ros1Pal_interaction_msgsTtsGoal_speakerName value)
  b3 <- W.encodeFloat64 (ros1Pal_interaction_msgsTtsGoal_wait_before_speaking value)
  W.bounded 2388 [b0, b1, b2, b3]
readRos1Pal_interaction_msgsTtsGoal :: W.Decoder Ros1Pal_interaction_msgsTtsGoal
readRos1Pal_interaction_msgsTtsGoal = do
  a0 <- readRos1Pal_interaction_msgsI18nText
  a1 <- readRos1Pal_interaction_msgsTtsText
  a2 <- W.text 128 True
  a3 <- W.float64
  let value = Ros1Pal_interaction_msgsTtsGoal a0 a1 a2 a3
  case encodeRos1Pal_interaction_msgsTtsGoal value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsTtsGoal :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsTtsGoal
decodeRos1Pal_interaction_msgsTtsGoal = W.runDecoder 2388 readRos1Pal_interaction_msgsTtsGoal
instance Canonical Ros1Pal_interaction_msgsTtsGoal where
  maximumBytes _ = 2388
  encodeValue = encodeRos1Pal_interaction_msgsTtsGoal
  readValue = readRos1Pal_interaction_msgsTtsGoal
data Ros1Pal_interaction_msgsTtsResult = Ros1Pal_interaction_msgsTtsResult
  {
    -- | \@brief pal_interaction_msgs/TtsResult.text: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsTtsResult; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsTtsResult_text :: T.Text
  ,
    -- | \@brief pal_interaction_msgs/TtsResult.msg: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsTtsResult; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsTtsResult_msg :: T.Text
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsTtsResult :: Ros1Pal_interaction_msgsTtsResult
defaultRos1Pal_interaction_msgsTtsResult = Ros1Pal_interaction_msgsTtsResult (T.empty) (T.empty)
ros1Pal_interaction_msgsTtsResultCodecIdentity :: String
ros1Pal_interaction_msgsTtsResultCodecIdentity = "UWVMROS1_74f6eebecfd7e0e50e48ca3393fc0f9e9e24baec834bf39cb30455e9f0d9cf56"
encodeRos1Pal_interaction_msgsTtsResult :: Ros1Pal_interaction_msgsTtsResult -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsTtsResult value = do
  b0 <- W.encodeText 128 True (ros1Pal_interaction_msgsTtsResult_text value)
  b1 <- W.encodeText 128 True (ros1Pal_interaction_msgsTtsResult_msg value)
  W.bounded 264 [b0, b1]
readRos1Pal_interaction_msgsTtsResult :: W.Decoder Ros1Pal_interaction_msgsTtsResult
readRos1Pal_interaction_msgsTtsResult = do
  a0 <- W.text 128 True
  a1 <- W.text 128 True
  let value = Ros1Pal_interaction_msgsTtsResult a0 a1
  case encodeRos1Pal_interaction_msgsTtsResult value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsTtsResult :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsTtsResult
decodeRos1Pal_interaction_msgsTtsResult = W.runDecoder 264 readRos1Pal_interaction_msgsTtsResult
instance Canonical Ros1Pal_interaction_msgsTtsResult where
  maximumBytes _ = 264
  encodeValue = encodeRos1Pal_interaction_msgsTtsResult
  readValue = readRos1Pal_interaction_msgsTtsResult
data Ros1Pal_interaction_msgsTtsMark = Ros1Pal_interaction_msgsTtsMark
  {
    -- | \@brief pal_interaction_msgs/TtsMark.id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsTtsMark; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsTtsMark_id :: T.Text
  ,
    -- | \@brief pal_interaction_msgs/TtsMark.keys: string; 0..16 elements; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsTtsMark; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsTtsMark_keys :: [T.Text]
  ,
    -- | \@brief pal_interaction_msgs/TtsMark.value: string; 0..16 elements; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsTtsMark; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsTtsMark_value :: [T.Text]
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsTtsMark :: Ros1Pal_interaction_msgsTtsMark
defaultRos1Pal_interaction_msgsTtsMark = Ros1Pal_interaction_msgsTtsMark (T.empty) ([]) ([])
ros1Pal_interaction_msgsTtsMarkCodecIdentity :: String
ros1Pal_interaction_msgsTtsMarkCodecIdentity = "UWVMROS1_4f92d66f3ec5bc7645da4cb0dabce2d662ebffe13a67c999c5cf3d771f11fc95"
encodeRos1Pal_interaction_msgsTtsMark :: Ros1Pal_interaction_msgsTtsMark -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsTtsMark value = do
  b0 <- W.encodeText 128 True (ros1Pal_interaction_msgsTtsMark_id value)
  if length (ros1Pal_interaction_msgsTtsMark_keys value) > 16 then Left 22 else Right ()
  prefix1 <- W.encodeCount 16 (length (ros1Pal_interaction_msgsTtsMark_keys value))
  b1 <- B.concat <$> mapM (\e -> W.encodeText 128 True (e)) (ros1Pal_interaction_msgsTtsMark_keys value)
  if length (ros1Pal_interaction_msgsTtsMark_value value) > 16 then Left 22 else Right ()
  prefix2 <- W.encodeCount 16 (length (ros1Pal_interaction_msgsTtsMark_value value))
  b2 <- B.concat <$> mapM (\e -> W.encodeText 128 True (e)) (ros1Pal_interaction_msgsTtsMark_value value)
  W.bounded 4364 [b0, prefix1, b1, prefix2, b2]
readRos1Pal_interaction_msgsTtsMark :: W.Decoder Ros1Pal_interaction_msgsTtsMark
readRos1Pal_interaction_msgsTtsMark = do
  a0 <- W.text 128 True
  count1 <- W.count 16
  a1 <- replicateM count1 (W.text 128 True)
  count2 <- W.count 16
  a2 <- replicateM count2 (W.text 128 True)
  let value = Ros1Pal_interaction_msgsTtsMark a0 a1 a2
  case encodeRos1Pal_interaction_msgsTtsMark value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsTtsMark :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsTtsMark
decodeRos1Pal_interaction_msgsTtsMark = W.runDecoder 4364 readRos1Pal_interaction_msgsTtsMark
instance Canonical Ros1Pal_interaction_msgsTtsMark where
  maximumBytes _ = 4364
  encodeValue = encodeRos1Pal_interaction_msgsTtsMark
  readValue = readRos1Pal_interaction_msgsTtsMark
data Ros1Pal_interaction_msgsTtsFeedback = Ros1Pal_interaction_msgsTtsFeedback
  {
    -- | \@brief pal_interaction_msgs/TtsFeedback.event_type: uint16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsTtsFeedback; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsTtsFeedback_event_type :: Word16
  ,
    -- | \@brief pal_interaction_msgs/TtsFeedback.timestamp: time.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsTtsFeedback; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsTtsFeedback_timestamp :: Ros1Time
  ,
    -- | \@brief pal_interaction_msgs/TtsFeedback.text_said: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsTtsFeedback; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsTtsFeedback_text_said :: T.Text
  ,
    -- | \@brief pal_interaction_msgs/TtsFeedback.next_word: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsTtsFeedback; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsTtsFeedback_next_word :: T.Text
  ,
    -- | \@brief pal_interaction_msgs/TtsFeedback.viseme_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsTtsFeedback; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsTtsFeedback_viseme_id :: T.Text
  ,
    -- | \@brief pal_interaction_msgs/TtsFeedback.marks: pal_interaction_msgs/TtsMark.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsTtsFeedback; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsTtsFeedback_marks :: Ros1Pal_interaction_msgsTtsMark
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsTtsFeedback :: Ros1Pal_interaction_msgsTtsFeedback
defaultRos1Pal_interaction_msgsTtsFeedback =
    Ros1Pal_interaction_msgsTtsFeedback
    (0)
    (defaultRos1Time)
    (T.empty)
    (T.empty)
    (T.empty)
    (defaultRos1Pal_interaction_msgsTtsMark)
ros1Pal_interaction_msgsTtsFeedbackCodecIdentity :: String
ros1Pal_interaction_msgsTtsFeedbackCodecIdentity = "UWVMROS1_3154aa11cda4bc9750910ea8283b14106fc992d9b4f99055bdefd226bf784894"
ros1Pal_interaction_msgsTtsFeedback_TTS_EVENT_INITIALIZATION :: Word16
ros1Pal_interaction_msgsTtsFeedback_TTS_EVENT_INITIALIZATION = 1
ros1Pal_interaction_msgsTtsFeedback_TTS_EVENT_SHUTDOWN :: Word16
ros1Pal_interaction_msgsTtsFeedback_TTS_EVENT_SHUTDOWN = 2
ros1Pal_interaction_msgsTtsFeedback_TTS_EVENT_SYNCHRONIZATION :: Word16
ros1Pal_interaction_msgsTtsFeedback_TTS_EVENT_SYNCHRONIZATION = 4
ros1Pal_interaction_msgsTtsFeedback_TTS_EVENT_FINISHED_PLAYING_UTTERANCE :: Word16
ros1Pal_interaction_msgsTtsFeedback_TTS_EVENT_FINISHED_PLAYING_UTTERANCE = 8
ros1Pal_interaction_msgsTtsFeedback_TTS_EVENT_MARK :: Word16
ros1Pal_interaction_msgsTtsFeedback_TTS_EVENT_MARK = 16
ros1Pal_interaction_msgsTtsFeedback_TTS_EVENT_STARTED_PLAYING_WORD :: Word16
ros1Pal_interaction_msgsTtsFeedback_TTS_EVENT_STARTED_PLAYING_WORD = 32
ros1Pal_interaction_msgsTtsFeedback_TTS_EVENT_FINISHED_PLAYING_PHRASE :: Word16
ros1Pal_interaction_msgsTtsFeedback_TTS_EVENT_FINISHED_PLAYING_PHRASE = 64
ros1Pal_interaction_msgsTtsFeedback_TTS_EVENT_FINISHED_PLAYING_SENTENCE :: Word16
ros1Pal_interaction_msgsTtsFeedback_TTS_EVENT_FINISHED_PLAYING_SENTENCE = 128
ros1Pal_interaction_msgsTtsFeedback_TTS_EVENT_VISEME :: Word16
ros1Pal_interaction_msgsTtsFeedback_TTS_EVENT_VISEME = 256
encodeRos1Pal_interaction_msgsTtsFeedback :: Ros1Pal_interaction_msgsTtsFeedback -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsTtsFeedback value = do
  b0 <- W.encodeUnsigned 2 (fromIntegral (ros1Pal_interaction_msgsTtsFeedback_event_type value))
  b1 <- encodeRos1Time (ros1Pal_interaction_msgsTtsFeedback_timestamp value)
  b2 <- W.encodeText 128 True (ros1Pal_interaction_msgsTtsFeedback_text_said value)
  b3 <- W.encodeText 128 True (ros1Pal_interaction_msgsTtsFeedback_next_word value)
  b4 <- W.encodeText 128 True (ros1Pal_interaction_msgsTtsFeedback_viseme_id value)
  b5 <- encodeRos1Pal_interaction_msgsTtsMark (ros1Pal_interaction_msgsTtsFeedback_marks value)
  W.bounded 4770 [b0, b1, b2, b3, b4, b5]
readRos1Pal_interaction_msgsTtsFeedback :: W.Decoder Ros1Pal_interaction_msgsTtsFeedback
readRos1Pal_interaction_msgsTtsFeedback = do
  a0 <- fromIntegral <$> W.unsigned 2
  a1 <- readRos1Time
  a2 <- W.text 128 True
  a3 <- W.text 128 True
  a4 <- W.text 128 True
  a5 <- readRos1Pal_interaction_msgsTtsMark
  let value = Ros1Pal_interaction_msgsTtsFeedback a0 a1 a2 a3 a4 a5
  case encodeRos1Pal_interaction_msgsTtsFeedback value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsTtsFeedback :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsTtsFeedback
decodeRos1Pal_interaction_msgsTtsFeedback = W.runDecoder 4770 readRos1Pal_interaction_msgsTtsFeedback
instance Canonical Ros1Pal_interaction_msgsTtsFeedback where
  maximumBytes _ = 4770
  encodeValue = encodeRos1Pal_interaction_msgsTtsFeedback
  readValue = readRos1Pal_interaction_msgsTtsFeedback
data Ros1Pal_interaction_msgsVoiceActivity = Ros1Pal_interaction_msgsVoiceActivity
  {
    -- | \@brief pal_interaction_msgs/VoiceActivity.isSpeech: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsVoiceActivity; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsVoiceActivity_isSpeech :: Bool
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsVoiceActivity :: Ros1Pal_interaction_msgsVoiceActivity
defaultRos1Pal_interaction_msgsVoiceActivity = Ros1Pal_interaction_msgsVoiceActivity (False)
ros1Pal_interaction_msgsVoiceActivityCodecIdentity :: String
ros1Pal_interaction_msgsVoiceActivityCodecIdentity = "UWVMROS1_c33952dbed35f2e6e08dd4dd8b7adf5c71a52106e2b274b988ec3218648b42a7"
encodeRos1Pal_interaction_msgsVoiceActivity :: Ros1Pal_interaction_msgsVoiceActivity -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsVoiceActivity value = do
  b0 <- W.encodeBool (ros1Pal_interaction_msgsVoiceActivity_isSpeech value)
  W.bounded 1 [b0]
readRos1Pal_interaction_msgsVoiceActivity :: W.Decoder Ros1Pal_interaction_msgsVoiceActivity
readRos1Pal_interaction_msgsVoiceActivity = do
  a0 <- W.boolean
  let value = Ros1Pal_interaction_msgsVoiceActivity a0
  case encodeRos1Pal_interaction_msgsVoiceActivity value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsVoiceActivity :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsVoiceActivity
decodeRos1Pal_interaction_msgsVoiceActivity = W.runDecoder 1 readRos1Pal_interaction_msgsVoiceActivity
instance Canonical Ros1Pal_interaction_msgsVoiceActivity where
  maximumBytes _ = 1
  encodeValue = encodeRos1Pal_interaction_msgsVoiceActivity
  readValue = readRos1Pal_interaction_msgsVoiceActivity
data Ros1Pal_interaction_msgsWebGuiEvent = Ros1Pal_interaction_msgsWebGuiEvent
  {
    -- | \@brief pal_interaction_msgs/WebGuiEvent.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsWebGuiEvent; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsWebGuiEvent_name :: T.Text
  ,
    -- | \@brief pal_interaction_msgs/WebGuiEvent.arg: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsWebGuiEvent; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsWebGuiEvent_arg :: T.Text
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsWebGuiEvent :: Ros1Pal_interaction_msgsWebGuiEvent
defaultRos1Pal_interaction_msgsWebGuiEvent = Ros1Pal_interaction_msgsWebGuiEvent (T.empty) (T.empty)
ros1Pal_interaction_msgsWebGuiEventCodecIdentity :: String
ros1Pal_interaction_msgsWebGuiEventCodecIdentity = "UWVMROS1_fb8030a4cb371da5dae852d62b28d8e7b03c3d37f0f6390c904ef3dc84084e23"
encodeRos1Pal_interaction_msgsWebGuiEvent :: Ros1Pal_interaction_msgsWebGuiEvent -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsWebGuiEvent value = do
  b0 <- W.encodeText 128 True (ros1Pal_interaction_msgsWebGuiEvent_name value)
  b1 <- W.encodeText 128 True (ros1Pal_interaction_msgsWebGuiEvent_arg value)
  W.bounded 264 [b0, b1]
readRos1Pal_interaction_msgsWebGuiEvent :: W.Decoder Ros1Pal_interaction_msgsWebGuiEvent
readRos1Pal_interaction_msgsWebGuiEvent = do
  a0 <- W.text 128 True
  a1 <- W.text 128 True
  let value = Ros1Pal_interaction_msgsWebGuiEvent a0 a1
  case encodeRos1Pal_interaction_msgsWebGuiEvent value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsWebGuiEvent :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsWebGuiEvent
decodeRos1Pal_interaction_msgsWebGuiEvent = W.runDecoder 264 readRos1Pal_interaction_msgsWebGuiEvent
instance Canonical Ros1Pal_interaction_msgsWebGuiEvent where
  maximumBytes _ = 264
  encodeValue = encodeRos1Pal_interaction_msgsWebGuiEvent
  readValue = readRos1Pal_interaction_msgsWebGuiEvent
data Ros1Pal_interaction_msgsAsrupdate = Ros1Pal_interaction_msgsAsrupdate
  {
    -- | \@brief pal_interaction_msgs/asrupdate.language: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsAsrupdate; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsAsrupdate_language :: T.Text
  ,
    -- | \@brief pal_interaction_msgs/asrupdate.enable_grammar: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsAsrupdate; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsAsrupdate_enable_grammar :: T.Text
  ,
    -- | \@brief pal_interaction_msgs/asrupdate.disable_grammar: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsAsrupdate; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsAsrupdate_disable_grammar :: T.Text
  ,
    -- | \@brief pal_interaction_msgs/asrupdate.acousticenv: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsAsrupdate; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsAsrupdate_acousticenv :: T.Text
  ,
    -- | \@brief pal_interaction_msgs/asrupdate.active: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsAsrupdate; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsAsrupdate_active :: Bool
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsAsrupdate :: Ros1Pal_interaction_msgsAsrupdate
defaultRos1Pal_interaction_msgsAsrupdate = Ros1Pal_interaction_msgsAsrupdate (T.empty) (T.empty) (T.empty) (T.empty) (False)
ros1Pal_interaction_msgsAsrupdateCodecIdentity :: String
ros1Pal_interaction_msgsAsrupdateCodecIdentity = "UWVMROS1_34584358ab6faa36c96fbbe2de2bef7cba7ae6eb5879cd6b676a1826fb154fda"
encodeRos1Pal_interaction_msgsAsrupdate :: Ros1Pal_interaction_msgsAsrupdate -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsAsrupdate value = do
  b0 <- W.encodeText 128 True (ros1Pal_interaction_msgsAsrupdate_language value)
  b1 <- W.encodeText 128 True (ros1Pal_interaction_msgsAsrupdate_enable_grammar value)
  b2 <- W.encodeText 128 True (ros1Pal_interaction_msgsAsrupdate_disable_grammar value)
  b3 <- W.encodeText 128 True (ros1Pal_interaction_msgsAsrupdate_acousticenv value)
  b4 <- W.encodeBool (ros1Pal_interaction_msgsAsrupdate_active value)
  W.bounded 529 [b0, b1, b2, b3, b4]
readRos1Pal_interaction_msgsAsrupdate :: W.Decoder Ros1Pal_interaction_msgsAsrupdate
readRos1Pal_interaction_msgsAsrupdate = do
  a0 <- W.text 128 True
  a1 <- W.text 128 True
  a2 <- W.text 128 True
  a3 <- W.text 128 True
  a4 <- W.boolean
  let value = Ros1Pal_interaction_msgsAsrupdate a0 a1 a2 a3 a4
  case encodeRos1Pal_interaction_msgsAsrupdate value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsAsrupdate :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsAsrupdate
decodeRos1Pal_interaction_msgsAsrupdate = W.runDecoder 529 readRos1Pal_interaction_msgsAsrupdate
instance Canonical Ros1Pal_interaction_msgsAsrupdate where
  maximumBytes _ = 529
  encodeValue = encodeRos1Pal_interaction_msgsAsrupdate
  readValue = readRos1Pal_interaction_msgsAsrupdate
data Ros1Pal_interaction_msgsAudiosignal = Ros1Pal_interaction_msgsAudiosignal
  {
    -- | \@brief pal_interaction_msgs/audiosignal.channel0: float64; 0..16 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsAudiosignal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsAudiosignal_channel0 :: [Double]
  ,
    -- | \@brief pal_interaction_msgs/audiosignal.channel1: float64; 0..16 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsAudiosignal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsAudiosignal_channel1 :: [Double]
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsAudiosignal :: Ros1Pal_interaction_msgsAudiosignal
defaultRos1Pal_interaction_msgsAudiosignal = Ros1Pal_interaction_msgsAudiosignal ([]) ([])
ros1Pal_interaction_msgsAudiosignalCodecIdentity :: String
ros1Pal_interaction_msgsAudiosignalCodecIdentity = "UWVMROS1_f70d9a987e0f5443060a55d2f617d9a8fc9e59fe110a9acd256a186b64e5e809"
encodeRos1Pal_interaction_msgsAudiosignal :: Ros1Pal_interaction_msgsAudiosignal -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsAudiosignal value = do
  if length (ros1Pal_interaction_msgsAudiosignal_channel0 value) > 16 then Left 22 else Right ()
  prefix0 <- W.encodeCount 16 (length (ros1Pal_interaction_msgsAudiosignal_channel0 value))
  b0 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Pal_interaction_msgsAudiosignal_channel0 value)
  if length (ros1Pal_interaction_msgsAudiosignal_channel1 value) > 16 then Left 22 else Right ()
  prefix1 <- W.encodeCount 16 (length (ros1Pal_interaction_msgsAudiosignal_channel1 value))
  b1 <- B.concat <$> mapM (\e -> W.encodeFloat64 (e)) (ros1Pal_interaction_msgsAudiosignal_channel1 value)
  W.bounded 264 [prefix0, b0, prefix1, b1]
readRos1Pal_interaction_msgsAudiosignal :: W.Decoder Ros1Pal_interaction_msgsAudiosignal
readRos1Pal_interaction_msgsAudiosignal = do
  count0 <- W.count 16
  a0 <- replicateM count0 (W.float64)
  count1 <- W.count 16
  a1 <- replicateM count1 (W.float64)
  let value = Ros1Pal_interaction_msgsAudiosignal a0 a1
  case encodeRos1Pal_interaction_msgsAudiosignal value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsAudiosignal :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsAudiosignal
decodeRos1Pal_interaction_msgsAudiosignal = W.runDecoder 264 readRos1Pal_interaction_msgsAudiosignal
instance Canonical Ros1Pal_interaction_msgsAudiosignal where
  maximumBytes _ = 264
  encodeValue = encodeRos1Pal_interaction_msgsAudiosignal
  readValue = readRos1Pal_interaction_msgsAudiosignal
data Ros1Pal_interaction_msgsRecognizerServiceRequest = Ros1Pal_interaction_msgsRecognizerServiceRequest
  {
    -- | \@brief pal_interaction_msgs/recognizerServiceRequest.asrupdate: pal_interaction_msgs/asrupdate.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_interaction_msgsRecognizerServiceRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_interaction_msgsRecognizerServiceRequest_asrupdate :: Ros1Pal_interaction_msgsAsrupdate
  } deriving (Eq, Show)
defaultRos1Pal_interaction_msgsRecognizerServiceRequest :: Ros1Pal_interaction_msgsRecognizerServiceRequest
defaultRos1Pal_interaction_msgsRecognizerServiceRequest = Ros1Pal_interaction_msgsRecognizerServiceRequest (defaultRos1Pal_interaction_msgsAsrupdate)
ros1Pal_interaction_msgsRecognizerServiceRequestCodecIdentity :: String
ros1Pal_interaction_msgsRecognizerServiceRequestCodecIdentity = "UWVMROS1_369151b882d849a0ab75110068aedd9eac22d87afe7b5bc13af87a6f78588edc"
encodeRos1Pal_interaction_msgsRecognizerServiceRequest :: Ros1Pal_interaction_msgsRecognizerServiceRequest -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsRecognizerServiceRequest value = do
  b0 <- encodeRos1Pal_interaction_msgsAsrupdate (ros1Pal_interaction_msgsRecognizerServiceRequest_asrupdate value)
  W.bounded 529 [b0]
readRos1Pal_interaction_msgsRecognizerServiceRequest :: W.Decoder Ros1Pal_interaction_msgsRecognizerServiceRequest
readRos1Pal_interaction_msgsRecognizerServiceRequest = do
  a0 <- readRos1Pal_interaction_msgsAsrupdate
  let value = Ros1Pal_interaction_msgsRecognizerServiceRequest a0
  case encodeRos1Pal_interaction_msgsRecognizerServiceRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsRecognizerServiceRequest :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsRecognizerServiceRequest
decodeRos1Pal_interaction_msgsRecognizerServiceRequest = W.runDecoder 529 readRos1Pal_interaction_msgsRecognizerServiceRequest
instance Canonical Ros1Pal_interaction_msgsRecognizerServiceRequest where
  maximumBytes _ = 529
  encodeValue = encodeRos1Pal_interaction_msgsRecognizerServiceRequest
  readValue = readRos1Pal_interaction_msgsRecognizerServiceRequest
data Ros1Pal_interaction_msgsRecognizerServiceResponse = Ros1Pal_interaction_msgsRecognizerServiceResponse deriving (Eq, Show)
defaultRos1Pal_interaction_msgsRecognizerServiceResponse :: Ros1Pal_interaction_msgsRecognizerServiceResponse
defaultRos1Pal_interaction_msgsRecognizerServiceResponse = Ros1Pal_interaction_msgsRecognizerServiceResponse 
ros1Pal_interaction_msgsRecognizerServiceResponseCodecIdentity :: String
ros1Pal_interaction_msgsRecognizerServiceResponseCodecIdentity = "UWVMROS1_3598ef995f13f4377e0e4eff270a9e277c3c94018f60aeb944119ce9f5b25813"
encodeRos1Pal_interaction_msgsRecognizerServiceResponse :: Ros1Pal_interaction_msgsRecognizerServiceResponse -> Either Word32 B.ByteString
encodeRos1Pal_interaction_msgsRecognizerServiceResponse value = do
  W.bounded 0 []
readRos1Pal_interaction_msgsRecognizerServiceResponse :: W.Decoder Ros1Pal_interaction_msgsRecognizerServiceResponse
readRos1Pal_interaction_msgsRecognizerServiceResponse = do
  let value = Ros1Pal_interaction_msgsRecognizerServiceResponse 
  case encodeRos1Pal_interaction_msgsRecognizerServiceResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_interaction_msgsRecognizerServiceResponse :: B.ByteString -> Either Word32 Ros1Pal_interaction_msgsRecognizerServiceResponse
decodeRos1Pal_interaction_msgsRecognizerServiceResponse = W.runDecoder 0 readRos1Pal_interaction_msgsRecognizerServiceResponse
instance Canonical Ros1Pal_interaction_msgsRecognizerServiceResponse where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_interaction_msgsRecognizerServiceResponse
  readValue = readRos1Pal_interaction_msgsRecognizerServiceResponse
data Ros1Pal_motion_model_msgsGetMotionMapRequest = Ros1Pal_motion_model_msgsGetMotionMapRequest deriving (Eq, Show)
defaultRos1Pal_motion_model_msgsGetMotionMapRequest :: Ros1Pal_motion_model_msgsGetMotionMapRequest
defaultRos1Pal_motion_model_msgsGetMotionMapRequest = Ros1Pal_motion_model_msgsGetMotionMapRequest 
ros1Pal_motion_model_msgsGetMotionMapRequestCodecIdentity :: String
ros1Pal_motion_model_msgsGetMotionMapRequestCodecIdentity = "UWVMROS1_4bfce8e9cc79e30ec211aa18bafb432fa0d3ff4fa18569a1c0ef178fe2729e97"
encodeRos1Pal_motion_model_msgsGetMotionMapRequest :: Ros1Pal_motion_model_msgsGetMotionMapRequest -> Either Word32 B.ByteString
encodeRos1Pal_motion_model_msgsGetMotionMapRequest value = do
  W.bounded 0 []
readRos1Pal_motion_model_msgsGetMotionMapRequest :: W.Decoder Ros1Pal_motion_model_msgsGetMotionMapRequest
readRos1Pal_motion_model_msgsGetMotionMapRequest = do
  let value = Ros1Pal_motion_model_msgsGetMotionMapRequest 
  case encodeRos1Pal_motion_model_msgsGetMotionMapRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_motion_model_msgsGetMotionMapRequest :: B.ByteString -> Either Word32 Ros1Pal_motion_model_msgsGetMotionMapRequest
decodeRos1Pal_motion_model_msgsGetMotionMapRequest = W.runDecoder 0 readRos1Pal_motion_model_msgsGetMotionMapRequest
instance Canonical Ros1Pal_motion_model_msgsGetMotionMapRequest where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_motion_model_msgsGetMotionMapRequest
  readValue = readRos1Pal_motion_model_msgsGetMotionMapRequest
data Ros1Pal_motion_model_msgsMotionModel = Ros1Pal_motion_model_msgsMotionModel
  {
    -- | \@brief pal_motion_model_msgs/MotionModel.heading_mean: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_motion_model_msgsMotionModel; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_motion_model_msgsMotionModel_heading_mean :: Float
  ,
    -- | \@brief pal_motion_model_msgs/MotionModel.heading_std_dev: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_motion_model_msgsMotionModel; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_motion_model_msgsMotionModel_heading_std_dev :: Float
  ,
    -- | \@brief pal_motion_model_msgs/MotionModel.linear_speed_mean: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_motion_model_msgsMotionModel; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_motion_model_msgsMotionModel_linear_speed_mean :: Float
  ,
    -- | \@brief pal_motion_model_msgs/MotionModel.linear_speed_std_dev: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_motion_model_msgsMotionModel; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_motion_model_msgsMotionModel_linear_speed_std_dev :: Float
  ,
    -- | \@brief pal_motion_model_msgs/MotionModel.angular_speed_mean: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_motion_model_msgsMotionModel; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_motion_model_msgsMotionModel_angular_speed_mean :: Float
  ,
    -- | \@brief pal_motion_model_msgs/MotionModel.angular_speed_std_dev: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_motion_model_msgsMotionModel; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_motion_model_msgsMotionModel_angular_speed_std_dev :: Float
  } deriving (Eq, Show)
defaultRos1Pal_motion_model_msgsMotionModel :: Ros1Pal_motion_model_msgsMotionModel
defaultRos1Pal_motion_model_msgsMotionModel = Ros1Pal_motion_model_msgsMotionModel (0) (0) (0) (0) (0) (0)
ros1Pal_motion_model_msgsMotionModelCodecIdentity :: String
ros1Pal_motion_model_msgsMotionModelCodecIdentity = "UWVMROS1_3d44b889a1c70d5e84107202bccf2143c8dd559a2cd5499d0c7319568469c1ea"
encodeRos1Pal_motion_model_msgsMotionModel :: Ros1Pal_motion_model_msgsMotionModel -> Either Word32 B.ByteString
encodeRos1Pal_motion_model_msgsMotionModel value = do
  b0 <- W.encodeFloat32 (ros1Pal_motion_model_msgsMotionModel_heading_mean value)
  b1 <- W.encodeFloat32 (ros1Pal_motion_model_msgsMotionModel_heading_std_dev value)
  b2 <- W.encodeFloat32 (ros1Pal_motion_model_msgsMotionModel_linear_speed_mean value)
  b3 <- W.encodeFloat32 (ros1Pal_motion_model_msgsMotionModel_linear_speed_std_dev value)
  b4 <- W.encodeFloat32 (ros1Pal_motion_model_msgsMotionModel_angular_speed_mean value)
  b5 <- W.encodeFloat32 (ros1Pal_motion_model_msgsMotionModel_angular_speed_std_dev value)
  W.bounded 24 [b0, b1, b2, b3, b4, b5]
readRos1Pal_motion_model_msgsMotionModel :: W.Decoder Ros1Pal_motion_model_msgsMotionModel
readRos1Pal_motion_model_msgsMotionModel = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  a4 <- W.float32
  a5 <- W.float32
  let value = Ros1Pal_motion_model_msgsMotionModel a0 a1 a2 a3 a4 a5
  case encodeRos1Pal_motion_model_msgsMotionModel value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_motion_model_msgsMotionModel :: B.ByteString -> Either Word32 Ros1Pal_motion_model_msgsMotionModel
decodeRos1Pal_motion_model_msgsMotionModel = W.runDecoder 24 readRos1Pal_motion_model_msgsMotionModel
instance Canonical Ros1Pal_motion_model_msgsMotionModel where
  maximumBytes _ = 24
  encodeValue = encodeRos1Pal_motion_model_msgsMotionModel
  readValue = readRos1Pal_motion_model_msgsMotionModel
data Ros1Pal_motion_model_msgsMotionModelList = Ros1Pal_motion_model_msgsMotionModelList
  {
    -- | \@brief pal_motion_model_msgs/MotionModelList.models: pal_motion_model_msgs/MotionModel; 0..4 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_motion_model_msgsMotionModelList; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_motion_model_msgsMotionModelList_models :: [Ros1Pal_motion_model_msgsMotionModel]
  } deriving (Eq, Show)
defaultRos1Pal_motion_model_msgsMotionModelList :: Ros1Pal_motion_model_msgsMotionModelList
defaultRos1Pal_motion_model_msgsMotionModelList = Ros1Pal_motion_model_msgsMotionModelList ([])
ros1Pal_motion_model_msgsMotionModelListCodecIdentity :: String
ros1Pal_motion_model_msgsMotionModelListCodecIdentity = "UWVMROS1_f85f87d53cc9ae6392347e9d2cc41d306260335b4568e671890ebdd43a27a294"
encodeRos1Pal_motion_model_msgsMotionModelList :: Ros1Pal_motion_model_msgsMotionModelList -> Either Word32 B.ByteString
encodeRos1Pal_motion_model_msgsMotionModelList value = do
  if length (ros1Pal_motion_model_msgsMotionModelList_models value) > 4 then Left 22 else Right ()
  prefix0 <- W.encodeCount 4 (length (ros1Pal_motion_model_msgsMotionModelList_models value))
  b0 <- B.concat <$> mapM (\e -> encodeRos1Pal_motion_model_msgsMotionModel (e)) (ros1Pal_motion_model_msgsMotionModelList_models value)
  W.bounded 100 [prefix0, b0]
readRos1Pal_motion_model_msgsMotionModelList :: W.Decoder Ros1Pal_motion_model_msgsMotionModelList
readRos1Pal_motion_model_msgsMotionModelList = do
  count0 <- W.count 4
  a0 <- replicateM count0 (readRos1Pal_motion_model_msgsMotionModel)
  let value = Ros1Pal_motion_model_msgsMotionModelList a0
  case encodeRos1Pal_motion_model_msgsMotionModelList value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_motion_model_msgsMotionModelList :: B.ByteString -> Either Word32 Ros1Pal_motion_model_msgsMotionModelList
decodeRos1Pal_motion_model_msgsMotionModelList = W.runDecoder 100 readRos1Pal_motion_model_msgsMotionModelList
instance Canonical Ros1Pal_motion_model_msgsMotionModelList where
  maximumBytes _ = 100
  encodeValue = encodeRos1Pal_motion_model_msgsMotionModelList
  readValue = readRos1Pal_motion_model_msgsMotionModelList
data Ros1Pal_motion_model_msgsMotionModelMap = Ros1Pal_motion_model_msgsMotionModelMap
  {
    -- | \@brief pal_motion_model_msgs/MotionModelMap.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_motion_model_msgsMotionModelMap; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_motion_model_msgsMotionModelMap_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief pal_motion_model_msgs/MotionModelMap.info: nav_msgs/MapMetaData.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_motion_model_msgsMotionModelMap; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_motion_model_msgsMotionModelMap_info :: Ros1Nav_msgsMapMetaData
  ,
    -- | \@brief pal_motion_model_msgs/MotionModelMap.data: pal_motion_model_msgs/MotionModelList; 0..4 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_motion_model_msgsMotionModelMap; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_motion_model_msgsMotionModelMap_data :: [Ros1Pal_motion_model_msgsMotionModelList]
  } deriving (Eq, Show)
defaultRos1Pal_motion_model_msgsMotionModelMap :: Ros1Pal_motion_model_msgsMotionModelMap
defaultRos1Pal_motion_model_msgsMotionModelMap = Ros1Pal_motion_model_msgsMotionModelMap (defaultRos1Std_msgsHeader) (defaultRos1Nav_msgsMapMetaData) ([])
ros1Pal_motion_model_msgsMotionModelMapCodecIdentity :: String
ros1Pal_motion_model_msgsMotionModelMapCodecIdentity = "UWVMROS1_6f1702acedc40207e16d9a06d68581fb055ac1b42135efdbbbd1477eff42b289"
encodeRos1Pal_motion_model_msgsMotionModelMap :: Ros1Pal_motion_model_msgsMotionModelMap -> Either Word32 B.ByteString
encodeRos1Pal_motion_model_msgsMotionModelMap value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Pal_motion_model_msgsMotionModelMap_header value)
  b1 <- encodeRos1Nav_msgsMapMetaData (ros1Pal_motion_model_msgsMotionModelMap_info value)
  if length (ros1Pal_motion_model_msgsMotionModelMap_data value) > 4 then Left 22 else Right ()
  prefix2 <- W.encodeCount 4 (length (ros1Pal_motion_model_msgsMotionModelMap_data value))
  b2 <- B.concat <$> mapM (\e -> encodeRos1Pal_motion_model_msgsMotionModelList (e)) (ros1Pal_motion_model_msgsMotionModelMap_data value)
  W.bounded 624 [b0, b1, prefix2, b2]
readRos1Pal_motion_model_msgsMotionModelMap :: W.Decoder Ros1Pal_motion_model_msgsMotionModelMap
readRos1Pal_motion_model_msgsMotionModelMap = do
  a0 <- readRos1Std_msgsHeader
  a1 <- readRos1Nav_msgsMapMetaData
  count2 <- W.count 4
  a2 <- replicateM count2 (readRos1Pal_motion_model_msgsMotionModelList)
  let value = Ros1Pal_motion_model_msgsMotionModelMap a0 a1 a2
  case encodeRos1Pal_motion_model_msgsMotionModelMap value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_motion_model_msgsMotionModelMap :: B.ByteString -> Either Word32 Ros1Pal_motion_model_msgsMotionModelMap
decodeRos1Pal_motion_model_msgsMotionModelMap = W.runDecoder 624 readRos1Pal_motion_model_msgsMotionModelMap
instance Canonical Ros1Pal_motion_model_msgsMotionModelMap where
  maximumBytes _ = 624
  encodeValue = encodeRos1Pal_motion_model_msgsMotionModelMap
  readValue = readRos1Pal_motion_model_msgsMotionModelMap
data Ros1Pal_motion_model_msgsGetMotionMapResponse = Ros1Pal_motion_model_msgsGetMotionMapResponse
  {
    -- | \@brief pal_motion_model_msgs/GetMotionMapResponse.map: pal_motion_model_msgs/MotionModelMap.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_motion_model_msgsGetMotionMapResponse; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_motion_model_msgsGetMotionMapResponse_map :: Ros1Pal_motion_model_msgsMotionModelMap
  } deriving (Eq, Show)
defaultRos1Pal_motion_model_msgsGetMotionMapResponse :: Ros1Pal_motion_model_msgsGetMotionMapResponse
defaultRos1Pal_motion_model_msgsGetMotionMapResponse = Ros1Pal_motion_model_msgsGetMotionMapResponse (defaultRos1Pal_motion_model_msgsMotionModelMap)
ros1Pal_motion_model_msgsGetMotionMapResponseCodecIdentity :: String
ros1Pal_motion_model_msgsGetMotionMapResponseCodecIdentity = "UWVMROS1_b031c17ef990e784eeeb7fbf270b482207c5de43323a9cbf37306ac07b159440"
encodeRos1Pal_motion_model_msgsGetMotionMapResponse :: Ros1Pal_motion_model_msgsGetMotionMapResponse -> Either Word32 B.ByteString
encodeRos1Pal_motion_model_msgsGetMotionMapResponse value = do
  b0 <- encodeRos1Pal_motion_model_msgsMotionModelMap (ros1Pal_motion_model_msgsGetMotionMapResponse_map value)
  W.bounded 624 [b0]
readRos1Pal_motion_model_msgsGetMotionMapResponse :: W.Decoder Ros1Pal_motion_model_msgsGetMotionMapResponse
readRos1Pal_motion_model_msgsGetMotionMapResponse = do
  a0 <- readRos1Pal_motion_model_msgsMotionModelMap
  let value = Ros1Pal_motion_model_msgsGetMotionMapResponse a0
  case encodeRos1Pal_motion_model_msgsGetMotionMapResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_motion_model_msgsGetMotionMapResponse :: B.ByteString -> Either Word32 Ros1Pal_motion_model_msgsGetMotionMapResponse
decodeRos1Pal_motion_model_msgsGetMotionMapResponse = W.runDecoder 624 readRos1Pal_motion_model_msgsGetMotionMapResponse
instance Canonical Ros1Pal_motion_model_msgsGetMotionMapResponse where
  maximumBytes _ = 624
  encodeValue = encodeRos1Pal_motion_model_msgsGetMotionMapResponse
  readValue = readRos1Pal_motion_model_msgsGetMotionMapResponse
data Ros1Pal_multirobot_msgsWifiServiceDetection = Ros1Pal_multirobot_msgsWifiServiceDetection
  {
    -- | \@brief pal_multirobot_msgs/WifiServiceDetection.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_multirobot_msgsWifiServiceDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_multirobot_msgsWifiServiceDetection_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief pal_multirobot_msgs/WifiServiceDetection.id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_multirobot_msgsWifiServiceDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_multirobot_msgsWifiServiceDetection_id :: T.Text
  ,
    -- | \@brief pal_multirobot_msgs/WifiServiceDetection.signal: int16.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_multirobot_msgsWifiServiceDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_multirobot_msgsWifiServiceDetection_signal :: Int16
  } deriving (Eq, Show)
defaultRos1Pal_multirobot_msgsWifiServiceDetection :: Ros1Pal_multirobot_msgsWifiServiceDetection
defaultRos1Pal_multirobot_msgsWifiServiceDetection = Ros1Pal_multirobot_msgsWifiServiceDetection (defaultRos1Std_msgsHeader) (T.empty) (0)
ros1Pal_multirobot_msgsWifiServiceDetectionCodecIdentity :: String
ros1Pal_multirobot_msgsWifiServiceDetectionCodecIdentity = "UWVMROS1_1f9a244c4e98ec5f4eb60bd008a62b94a91a6982b56273510c3019b95f1b5741"
encodeRos1Pal_multirobot_msgsWifiServiceDetection :: Ros1Pal_multirobot_msgsWifiServiceDetection -> Either Word32 B.ByteString
encodeRos1Pal_multirobot_msgsWifiServiceDetection value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Pal_multirobot_msgsWifiServiceDetection_header value)
  b1 <- W.encodeText 128 True (ros1Pal_multirobot_msgsWifiServiceDetection_id value)
  b2 <- W.encodeSigned 2 (fromIntegral (ros1Pal_multirobot_msgsWifiServiceDetection_signal value))
  W.bounded 278 [b0, b1, b2]
readRos1Pal_multirobot_msgsWifiServiceDetection :: W.Decoder Ros1Pal_multirobot_msgsWifiServiceDetection
readRos1Pal_multirobot_msgsWifiServiceDetection = do
  a0 <- readRos1Std_msgsHeader
  a1 <- W.text 128 True
  a2 <- fromIntegral <$> W.signed 2
  let value = Ros1Pal_multirobot_msgsWifiServiceDetection a0 a1 a2
  case encodeRos1Pal_multirobot_msgsWifiServiceDetection value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_multirobot_msgsWifiServiceDetection :: B.ByteString -> Either Word32 Ros1Pal_multirobot_msgsWifiServiceDetection
decodeRos1Pal_multirobot_msgsWifiServiceDetection = W.runDecoder 278 readRos1Pal_multirobot_msgsWifiServiceDetection
instance Canonical Ros1Pal_multirobot_msgsWifiServiceDetection where
  maximumBytes _ = 278
  encodeValue = encodeRos1Pal_multirobot_msgsWifiServiceDetection
  readValue = readRos1Pal_multirobot_msgsWifiServiceDetection
data Ros1Pal_simulation_msgsExternalWrench = Ros1Pal_simulation_msgsExternalWrench
  {
    -- | \@brief pal_simulation_msgs/ExternalWrench.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_simulation_msgsExternalWrench; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_simulation_msgsExternalWrench_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief pal_simulation_msgs/ExternalWrench.link_name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_simulation_msgsExternalWrench; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_simulation_msgsExternalWrench_link_name :: T.Text
  ,
    -- | \@brief pal_simulation_msgs/ExternalWrench.wrench: geometry_msgs/Wrench.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_simulation_msgsExternalWrench; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_simulation_msgsExternalWrench_wrench :: Ros1Geometry_msgsWrench
  ,
    -- | \@brief pal_simulation_msgs/ExternalWrench.application_point: geometry_msgs/Point.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_simulation_msgsExternalWrench; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_simulation_msgsExternalWrench_application_point :: Ros1Geometry_msgsPoint
  ,
    -- | \@brief pal_simulation_msgs/ExternalWrench.duration: duration.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_simulation_msgsExternalWrench; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_simulation_msgsExternalWrench_duration :: Ros1Duration
  } deriving (Eq, Show)
defaultRos1Pal_simulation_msgsExternalWrench :: Ros1Pal_simulation_msgsExternalWrench
defaultRos1Pal_simulation_msgsExternalWrench =
    Ros1Pal_simulation_msgsExternalWrench
    (defaultRos1Std_msgsHeader)
    (T.empty)
    (defaultRos1Geometry_msgsWrench)
    (defaultRos1Geometry_msgsPoint)
    (defaultRos1Duration)
ros1Pal_simulation_msgsExternalWrenchCodecIdentity :: String
ros1Pal_simulation_msgsExternalWrenchCodecIdentity = "UWVMROS1_b85249fbffa7b83dd13e2f42d71c5a4136743e892760cf0eb65bbaf3dfd0824c"
encodeRos1Pal_simulation_msgsExternalWrench :: Ros1Pal_simulation_msgsExternalWrench -> Either Word32 B.ByteString
encodeRos1Pal_simulation_msgsExternalWrench value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Pal_simulation_msgsExternalWrench_header value)
  b1 <- W.encodeText 128 True (ros1Pal_simulation_msgsExternalWrench_link_name value)
  b2 <- encodeRos1Geometry_msgsWrench (ros1Pal_simulation_msgsExternalWrench_wrench value)
  b3 <- encodeRos1Geometry_msgsPoint (ros1Pal_simulation_msgsExternalWrench_application_point value)
  b4 <- encodeRos1Duration (ros1Pal_simulation_msgsExternalWrench_duration value)
  W.bounded 356 [b0, b1, b2, b3, b4]
readRos1Pal_simulation_msgsExternalWrench :: W.Decoder Ros1Pal_simulation_msgsExternalWrench
readRos1Pal_simulation_msgsExternalWrench = do
  a0 <- readRos1Std_msgsHeader
  a1 <- W.text 128 True
  a2 <- readRos1Geometry_msgsWrench
  a3 <- readRos1Geometry_msgsPoint
  a4 <- readRos1Duration
  let value = Ros1Pal_simulation_msgsExternalWrench a0 a1 a2 a3 a4
  case encodeRos1Pal_simulation_msgsExternalWrench value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_simulation_msgsExternalWrench :: B.ByteString -> Either Word32 Ros1Pal_simulation_msgsExternalWrench
decodeRos1Pal_simulation_msgsExternalWrench = W.runDecoder 356 readRos1Pal_simulation_msgsExternalWrench
instance Canonical Ros1Pal_simulation_msgsExternalWrench where
  maximumBytes _ = 356
  encodeValue = encodeRos1Pal_simulation_msgsExternalWrench
  readValue = readRos1Pal_simulation_msgsExternalWrench
data Ros1Std_msgsString = Ros1Std_msgsString
  {
    -- | \@brief std_msgs/String.data: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Std_msgsString; document/platform/pal/en_US/language/haskell/API.md
    ros1Std_msgsString_data :: T.Text
  } deriving (Eq, Show)
defaultRos1Std_msgsString :: Ros1Std_msgsString
defaultRos1Std_msgsString = Ros1Std_msgsString (T.empty)
ros1Std_msgsStringCodecIdentity :: String
ros1Std_msgsStringCodecIdentity = "UWVMROS1_8a71a2d5957414e5a34318653c6314c005aab13980a35fa331401a4acd4442dc"
encodeRos1Std_msgsString :: Ros1Std_msgsString -> Either Word32 B.ByteString
encodeRos1Std_msgsString value = do
  b0 <- W.encodeText 128 True (ros1Std_msgsString_data value)
  W.bounded 132 [b0]
readRos1Std_msgsString :: W.Decoder Ros1Std_msgsString
readRos1Std_msgsString = do
  a0 <- W.text 128 True
  let value = Ros1Std_msgsString a0
  case encodeRos1Std_msgsString value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Std_msgsString :: B.ByteString -> Either Word32 Ros1Std_msgsString
decodeRos1Std_msgsString = W.runDecoder 132 readRos1Std_msgsString
instance Canonical Ros1Std_msgsString where
  maximumBytes _ = 132
  encodeValue = encodeRos1Std_msgsString
  readValue = readRos1Std_msgsString
data Ros1Std_msgsBool = Ros1Std_msgsBool
  {
    -- | \@brief std_msgs/Bool.data: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Std_msgsBool; document/platform/pal/en_US/language/haskell/API.md
    ros1Std_msgsBool_data :: Bool
  } deriving (Eq, Show)
defaultRos1Std_msgsBool :: Ros1Std_msgsBool
defaultRos1Std_msgsBool = Ros1Std_msgsBool (False)
ros1Std_msgsBoolCodecIdentity :: String
ros1Std_msgsBoolCodecIdentity = "UWVMROS1_cbbbbbf2df23f98389500cbf265f45ca9210c3495622a1fd122c1b8b76ce7d33"
encodeRos1Std_msgsBool :: Ros1Std_msgsBool -> Either Word32 B.ByteString
encodeRos1Std_msgsBool value = do
  b0 <- W.encodeBool (ros1Std_msgsBool_data value)
  W.bounded 1 [b0]
readRos1Std_msgsBool :: W.Decoder Ros1Std_msgsBool
readRos1Std_msgsBool = do
  a0 <- W.boolean
  let value = Ros1Std_msgsBool a0
  case encodeRos1Std_msgsBool value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Std_msgsBool :: B.ByteString -> Either Word32 Ros1Std_msgsBool
decodeRos1Std_msgsBool = W.runDecoder 1 readRos1Std_msgsBool
instance Canonical Ros1Std_msgsBool where
  maximumBytes _ = 1
  encodeValue = encodeRos1Std_msgsBool
  readValue = readRos1Std_msgsBool
data Ros1Pal_tablet_msgsFunctionalityStatus = Ros1Pal_tablet_msgsFunctionalityStatus
  {
    -- | \@brief pal_tablet_msgs/FunctionalityStatus.errMessage: std_msgs/String.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_tablet_msgsFunctionalityStatus; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_tablet_msgsFunctionalityStatus_errMessage :: Ros1Std_msgsString
  ,
    -- | \@brief pal_tablet_msgs/FunctionalityStatus.errStatus: std_msgs/Bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_tablet_msgsFunctionalityStatus; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_tablet_msgsFunctionalityStatus_errStatus :: Ros1Std_msgsBool
  } deriving (Eq, Show)
defaultRos1Pal_tablet_msgsFunctionalityStatus :: Ros1Pal_tablet_msgsFunctionalityStatus
defaultRos1Pal_tablet_msgsFunctionalityStatus = Ros1Pal_tablet_msgsFunctionalityStatus (defaultRos1Std_msgsString) (defaultRos1Std_msgsBool)
ros1Pal_tablet_msgsFunctionalityStatusCodecIdentity :: String
ros1Pal_tablet_msgsFunctionalityStatusCodecIdentity = "UWVMROS1_ce7e4fc9d13688058739c422c63a6af44d883b54b3efde8aed4e3272f8b0de35"
encodeRos1Pal_tablet_msgsFunctionalityStatus :: Ros1Pal_tablet_msgsFunctionalityStatus -> Either Word32 B.ByteString
encodeRos1Pal_tablet_msgsFunctionalityStatus value = do
  b0 <- encodeRos1Std_msgsString (ros1Pal_tablet_msgsFunctionalityStatus_errMessage value)
  b1 <- encodeRos1Std_msgsBool (ros1Pal_tablet_msgsFunctionalityStatus_errStatus value)
  W.bounded 133 [b0, b1]
readRos1Pal_tablet_msgsFunctionalityStatus :: W.Decoder Ros1Pal_tablet_msgsFunctionalityStatus
readRos1Pal_tablet_msgsFunctionalityStatus = do
  a0 <- readRos1Std_msgsString
  a1 <- readRos1Std_msgsBool
  let value = Ros1Pal_tablet_msgsFunctionalityStatus a0 a1
  case encodeRos1Pal_tablet_msgsFunctionalityStatus value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_tablet_msgsFunctionalityStatus :: B.ByteString -> Either Word32 Ros1Pal_tablet_msgsFunctionalityStatus
decodeRos1Pal_tablet_msgsFunctionalityStatus = W.runDecoder 133 readRos1Pal_tablet_msgsFunctionalityStatus
instance Canonical Ros1Pal_tablet_msgsFunctionalityStatus where
  maximumBytes _ = 133
  encodeValue = encodeRos1Pal_tablet_msgsFunctionalityStatus
  readValue = readRos1Pal_tablet_msgsFunctionalityStatus
data Ros1Pal_tablet_msgsRobotStatus = Ros1Pal_tablet_msgsRobotStatus
  {
    -- | \@brief pal_tablet_msgs/RobotStatus.messages: pal_tablet_msgs/FunctionalityStatus; 0..4 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_tablet_msgsRobotStatus; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_tablet_msgsRobotStatus_messages :: [Ros1Pal_tablet_msgsFunctionalityStatus]
  } deriving (Eq, Show)
defaultRos1Pal_tablet_msgsRobotStatus :: Ros1Pal_tablet_msgsRobotStatus
defaultRos1Pal_tablet_msgsRobotStatus = Ros1Pal_tablet_msgsRobotStatus ([])
ros1Pal_tablet_msgsRobotStatusCodecIdentity :: String
ros1Pal_tablet_msgsRobotStatusCodecIdentity = "UWVMROS1_b01e5783832f7b816d0dca678bca11f49554304116bf9a8fccc9b36b18b4478d"
encodeRos1Pal_tablet_msgsRobotStatus :: Ros1Pal_tablet_msgsRobotStatus -> Either Word32 B.ByteString
encodeRos1Pal_tablet_msgsRobotStatus value = do
  if length (ros1Pal_tablet_msgsRobotStatus_messages value) > 4 then Left 22 else Right ()
  prefix0 <- W.encodeCount 4 (length (ros1Pal_tablet_msgsRobotStatus_messages value))
  b0 <- B.concat <$> mapM (\e -> encodeRos1Pal_tablet_msgsFunctionalityStatus (e)) (ros1Pal_tablet_msgsRobotStatus_messages value)
  W.bounded 536 [prefix0, b0]
readRos1Pal_tablet_msgsRobotStatus :: W.Decoder Ros1Pal_tablet_msgsRobotStatus
readRos1Pal_tablet_msgsRobotStatus = do
  count0 <- W.count 4
  a0 <- replicateM count0 (readRos1Pal_tablet_msgsFunctionalityStatus)
  let value = Ros1Pal_tablet_msgsRobotStatus a0
  case encodeRos1Pal_tablet_msgsRobotStatus value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_tablet_msgsRobotStatus :: B.ByteString -> Either Word32 Ros1Pal_tablet_msgsRobotStatus
decodeRos1Pal_tablet_msgsRobotStatus = W.runDecoder 536 readRos1Pal_tablet_msgsRobotStatus
instance Canonical Ros1Pal_tablet_msgsRobotStatus where
  maximumBytes _ = 536
  encodeValue = encodeRos1Pal_tablet_msgsRobotStatus
  readValue = readRos1Pal_tablet_msgsRobotStatus
data Ros1Pal_video_recording_msgsStartRecordingRequest = Ros1Pal_video_recording_msgsStartRecordingRequest deriving (Eq, Show)
defaultRos1Pal_video_recording_msgsStartRecordingRequest :: Ros1Pal_video_recording_msgsStartRecordingRequest
defaultRos1Pal_video_recording_msgsStartRecordingRequest = Ros1Pal_video_recording_msgsStartRecordingRequest 
ros1Pal_video_recording_msgsStartRecordingRequestCodecIdentity :: String
ros1Pal_video_recording_msgsStartRecordingRequestCodecIdentity = "UWVMROS1_214a2bd3c382b4bd7dbb15d1b694e6d385bd9b2656944068177bd0408a16d914"
encodeRos1Pal_video_recording_msgsStartRecordingRequest :: Ros1Pal_video_recording_msgsStartRecordingRequest -> Either Word32 B.ByteString
encodeRos1Pal_video_recording_msgsStartRecordingRequest value = do
  W.bounded 0 []
readRos1Pal_video_recording_msgsStartRecordingRequest :: W.Decoder Ros1Pal_video_recording_msgsStartRecordingRequest
readRos1Pal_video_recording_msgsStartRecordingRequest = do
  let value = Ros1Pal_video_recording_msgsStartRecordingRequest 
  case encodeRos1Pal_video_recording_msgsStartRecordingRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_video_recording_msgsStartRecordingRequest :: B.ByteString -> Either Word32 Ros1Pal_video_recording_msgsStartRecordingRequest
decodeRos1Pal_video_recording_msgsStartRecordingRequest = W.runDecoder 0 readRos1Pal_video_recording_msgsStartRecordingRequest
instance Canonical Ros1Pal_video_recording_msgsStartRecordingRequest where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_video_recording_msgsStartRecordingRequest
  readValue = readRos1Pal_video_recording_msgsStartRecordingRequest
data Ros1Pal_video_recording_msgsStartRecordingResponse = Ros1Pal_video_recording_msgsStartRecordingResponse deriving (Eq, Show)
defaultRos1Pal_video_recording_msgsStartRecordingResponse :: Ros1Pal_video_recording_msgsStartRecordingResponse
defaultRos1Pal_video_recording_msgsStartRecordingResponse = Ros1Pal_video_recording_msgsStartRecordingResponse 
ros1Pal_video_recording_msgsStartRecordingResponseCodecIdentity :: String
ros1Pal_video_recording_msgsStartRecordingResponseCodecIdentity = "UWVMROS1_03b8bcd879b02864300b8a90d721958a4335f53bd17abbd29178471de736d9b6"
encodeRos1Pal_video_recording_msgsStartRecordingResponse :: Ros1Pal_video_recording_msgsStartRecordingResponse -> Either Word32 B.ByteString
encodeRos1Pal_video_recording_msgsStartRecordingResponse value = do
  W.bounded 0 []
readRos1Pal_video_recording_msgsStartRecordingResponse :: W.Decoder Ros1Pal_video_recording_msgsStartRecordingResponse
readRos1Pal_video_recording_msgsStartRecordingResponse = do
  let value = Ros1Pal_video_recording_msgsStartRecordingResponse 
  case encodeRos1Pal_video_recording_msgsStartRecordingResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_video_recording_msgsStartRecordingResponse :: B.ByteString -> Either Word32 Ros1Pal_video_recording_msgsStartRecordingResponse
decodeRos1Pal_video_recording_msgsStartRecordingResponse = W.runDecoder 0 readRos1Pal_video_recording_msgsStartRecordingResponse
instance Canonical Ros1Pal_video_recording_msgsStartRecordingResponse where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_video_recording_msgsStartRecordingResponse
  readValue = readRos1Pal_video_recording_msgsStartRecordingResponse
data Ros1Pal_video_recording_msgsStopRecordingRequest = Ros1Pal_video_recording_msgsStopRecordingRequest deriving (Eq, Show)
defaultRos1Pal_video_recording_msgsStopRecordingRequest :: Ros1Pal_video_recording_msgsStopRecordingRequest
defaultRos1Pal_video_recording_msgsStopRecordingRequest = Ros1Pal_video_recording_msgsStopRecordingRequest 
ros1Pal_video_recording_msgsStopRecordingRequestCodecIdentity :: String
ros1Pal_video_recording_msgsStopRecordingRequestCodecIdentity = "UWVMROS1_2fe53f84621ac67f592d86f028c2d5be67f4fee13663b82a9b128d50a8a1c4f5"
encodeRos1Pal_video_recording_msgsStopRecordingRequest :: Ros1Pal_video_recording_msgsStopRecordingRequest -> Either Word32 B.ByteString
encodeRos1Pal_video_recording_msgsStopRecordingRequest value = do
  W.bounded 0 []
readRos1Pal_video_recording_msgsStopRecordingRequest :: W.Decoder Ros1Pal_video_recording_msgsStopRecordingRequest
readRos1Pal_video_recording_msgsStopRecordingRequest = do
  let value = Ros1Pal_video_recording_msgsStopRecordingRequest 
  case encodeRos1Pal_video_recording_msgsStopRecordingRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_video_recording_msgsStopRecordingRequest :: B.ByteString -> Either Word32 Ros1Pal_video_recording_msgsStopRecordingRequest
decodeRos1Pal_video_recording_msgsStopRecordingRequest = W.runDecoder 0 readRos1Pal_video_recording_msgsStopRecordingRequest
instance Canonical Ros1Pal_video_recording_msgsStopRecordingRequest where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_video_recording_msgsStopRecordingRequest
  readValue = readRos1Pal_video_recording_msgsStopRecordingRequest
data Ros1Pal_video_recording_msgsStopRecordingResponse = Ros1Pal_video_recording_msgsStopRecordingResponse deriving (Eq, Show)
defaultRos1Pal_video_recording_msgsStopRecordingResponse :: Ros1Pal_video_recording_msgsStopRecordingResponse
defaultRos1Pal_video_recording_msgsStopRecordingResponse = Ros1Pal_video_recording_msgsStopRecordingResponse 
ros1Pal_video_recording_msgsStopRecordingResponseCodecIdentity :: String
ros1Pal_video_recording_msgsStopRecordingResponseCodecIdentity = "UWVMROS1_0e7555737246a82dcf9203313b8bfc43c808fa1d8a405c4159bf3b837545b7c2"
encodeRos1Pal_video_recording_msgsStopRecordingResponse :: Ros1Pal_video_recording_msgsStopRecordingResponse -> Either Word32 B.ByteString
encodeRos1Pal_video_recording_msgsStopRecordingResponse value = do
  W.bounded 0 []
readRos1Pal_video_recording_msgsStopRecordingResponse :: W.Decoder Ros1Pal_video_recording_msgsStopRecordingResponse
readRos1Pal_video_recording_msgsStopRecordingResponse = do
  let value = Ros1Pal_video_recording_msgsStopRecordingResponse 
  case encodeRos1Pal_video_recording_msgsStopRecordingResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_video_recording_msgsStopRecordingResponse :: B.ByteString -> Either Word32 Ros1Pal_video_recording_msgsStopRecordingResponse
decodeRos1Pal_video_recording_msgsStopRecordingResponse = W.runDecoder 0 readRos1Pal_video_recording_msgsStopRecordingResponse
instance Canonical Ros1Pal_video_recording_msgsStopRecordingResponse where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_video_recording_msgsStopRecordingResponse
  readValue = readRos1Pal_video_recording_msgsStopRecordingResponse
data Ros1Pal_vision_msgsDetectedObject = Ros1Pal_vision_msgsDetectedObject
  {
    -- | \@brief pal_vision_msgs/DetectedObject.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsDetectedObject; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsDetectedObject_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief pal_vision_msgs/DetectedObject.position3D: geometry_msgs/Point.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsDetectedObject; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsDetectedObject_position3D :: Ros1Geometry_msgsPoint
  } deriving (Eq, Show)
defaultRos1Pal_vision_msgsDetectedObject :: Ros1Pal_vision_msgsDetectedObject
defaultRos1Pal_vision_msgsDetectedObject = Ros1Pal_vision_msgsDetectedObject (defaultRos1Std_msgsHeader) (defaultRos1Geometry_msgsPoint)
ros1Pal_vision_msgsDetectedObjectCodecIdentity :: String
ros1Pal_vision_msgsDetectedObjectCodecIdentity = "UWVMROS1_49ddd55b2f5fc8053980d77760c563c563113d1dafc899b0b5d619f98ab7ad25"
encodeRos1Pal_vision_msgsDetectedObject :: Ros1Pal_vision_msgsDetectedObject -> Either Word32 B.ByteString
encodeRos1Pal_vision_msgsDetectedObject value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Pal_vision_msgsDetectedObject_header value)
  b1 <- encodeRos1Geometry_msgsPoint (ros1Pal_vision_msgsDetectedObject_position3D value)
  W.bounded 168 [b0, b1]
readRos1Pal_vision_msgsDetectedObject :: W.Decoder Ros1Pal_vision_msgsDetectedObject
readRos1Pal_vision_msgsDetectedObject = do
  a0 <- readRos1Std_msgsHeader
  a1 <- readRos1Geometry_msgsPoint
  let value = Ros1Pal_vision_msgsDetectedObject a0 a1
  case encodeRos1Pal_vision_msgsDetectedObject value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_vision_msgsDetectedObject :: B.ByteString -> Either Word32 Ros1Pal_vision_msgsDetectedObject
decodeRos1Pal_vision_msgsDetectedObject = W.runDecoder 168 readRos1Pal_vision_msgsDetectedObject
instance Canonical Ros1Pal_vision_msgsDetectedObject where
  maximumBytes _ = 168
  encodeValue = encodeRos1Pal_vision_msgsDetectedObject
  readValue = readRos1Pal_vision_msgsDetectedObject
data Ros1Pal_vision_msgsRectangle = Ros1Pal_vision_msgsRectangle
  {
    -- | \@brief pal_vision_msgs/Rectangle.x: int64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsRectangle; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsRectangle_x :: Int64
  ,
    -- | \@brief pal_vision_msgs/Rectangle.y: int64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsRectangle; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsRectangle_y :: Int64
  ,
    -- | \@brief pal_vision_msgs/Rectangle.width: int64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsRectangle; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsRectangle_width :: Int64
  ,
    -- | \@brief pal_vision_msgs/Rectangle.height: int64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsRectangle; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsRectangle_height :: Int64
  } deriving (Eq, Show)
defaultRos1Pal_vision_msgsRectangle :: Ros1Pal_vision_msgsRectangle
defaultRos1Pal_vision_msgsRectangle = Ros1Pal_vision_msgsRectangle (0) (0) (0) (0)
ros1Pal_vision_msgsRectangleCodecIdentity :: String
ros1Pal_vision_msgsRectangleCodecIdentity = "UWVMROS1_fa96c9ba0ef62b6f620e1200ffde47ce33ae8d41e444c39ae65e6aa3b27954c4"
encodeRos1Pal_vision_msgsRectangle :: Ros1Pal_vision_msgsRectangle -> Either Word32 B.ByteString
encodeRos1Pal_vision_msgsRectangle value = do
  b0 <- W.encodeSigned 8 (fromIntegral (ros1Pal_vision_msgsRectangle_x value))
  b1 <- W.encodeSigned 8 (fromIntegral (ros1Pal_vision_msgsRectangle_y value))
  b2 <- W.encodeSigned 8 (fromIntegral (ros1Pal_vision_msgsRectangle_width value))
  b3 <- W.encodeSigned 8 (fromIntegral (ros1Pal_vision_msgsRectangle_height value))
  W.bounded 32 [b0, b1, b2, b3]
readRos1Pal_vision_msgsRectangle :: W.Decoder Ros1Pal_vision_msgsRectangle
readRos1Pal_vision_msgsRectangle = do
  a0 <- fromIntegral <$> W.signed 8
  a1 <- fromIntegral <$> W.signed 8
  a2 <- fromIntegral <$> W.signed 8
  a3 <- fromIntegral <$> W.signed 8
  let value = Ros1Pal_vision_msgsRectangle a0 a1 a2 a3
  case encodeRos1Pal_vision_msgsRectangle value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_vision_msgsRectangle :: B.ByteString -> Either Word32 Ros1Pal_vision_msgsRectangle
decodeRos1Pal_vision_msgsRectangle = W.runDecoder 32 readRos1Pal_vision_msgsRectangle
instance Canonical Ros1Pal_vision_msgsRectangle where
  maximumBytes _ = 32
  encodeValue = encodeRos1Pal_vision_msgsRectangle
  readValue = readRos1Pal_vision_msgsRectangle
data Ros1Pal_vision_msgsDetectedPerson = Ros1Pal_vision_msgsDetectedPerson
  {
    -- | \@brief pal_vision_msgs/DetectedPerson.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsDetectedPerson; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsDetectedPerson_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief pal_vision_msgs/DetectedPerson.objectId: int64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsDetectedPerson; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsDetectedPerson_objectId :: Int64
  ,
    -- | \@brief pal_vision_msgs/DetectedPerson.boxColour: std_msgs/ColorRGBA.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsDetectedPerson; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsDetectedPerson_boxColour :: Ros1Std_msgsColorRGBA
  ,
    -- | \@brief pal_vision_msgs/DetectedPerson.confidence: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsDetectedPerson; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsDetectedPerson_confidence :: Double
  ,
    -- | \@brief pal_vision_msgs/DetectedPerson.position3D: geometry_msgs/Point.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsDetectedPerson; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsDetectedPerson_position3D :: Ros1Geometry_msgsPoint
  ,
    -- | \@brief pal_vision_msgs/DetectedPerson.box: pal_vision_msgs/Rectangle.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsDetectedPerson; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsDetectedPerson_box :: Ros1Pal_vision_msgsRectangle
  ,
    -- | \@brief pal_vision_msgs/DetectedPerson.faceBox: pal_vision_msgs/Rectangle.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsDetectedPerson; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsDetectedPerson_faceBox :: Ros1Pal_vision_msgsRectangle
  } deriving (Eq, Show)
defaultRos1Pal_vision_msgsDetectedPerson :: Ros1Pal_vision_msgsDetectedPerson
defaultRos1Pal_vision_msgsDetectedPerson =
    Ros1Pal_vision_msgsDetectedPerson
    (defaultRos1Std_msgsHeader)
    (0)
    (defaultRos1Std_msgsColorRGBA)
    (0)
    (defaultRos1Geometry_msgsPoint)
    (defaultRos1Pal_vision_msgsRectangle)
    (defaultRos1Pal_vision_msgsRectangle)
ros1Pal_vision_msgsDetectedPersonCodecIdentity :: String
ros1Pal_vision_msgsDetectedPersonCodecIdentity = "UWVMROS1_ce1f7b8789e0928dc98ba3819be067f6bb077a9144f475f5c50a849be781c82e"
encodeRos1Pal_vision_msgsDetectedPerson :: Ros1Pal_vision_msgsDetectedPerson -> Either Word32 B.ByteString
encodeRos1Pal_vision_msgsDetectedPerson value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Pal_vision_msgsDetectedPerson_header value)
  b1 <- W.encodeSigned 8 (fromIntegral (ros1Pal_vision_msgsDetectedPerson_objectId value))
  b2 <- encodeRos1Std_msgsColorRGBA (ros1Pal_vision_msgsDetectedPerson_boxColour value)
  b3 <- W.encodeFloat64 (ros1Pal_vision_msgsDetectedPerson_confidence value)
  b4 <- encodeRos1Geometry_msgsPoint (ros1Pal_vision_msgsDetectedPerson_position3D value)
  b5 <- encodeRos1Pal_vision_msgsRectangle (ros1Pal_vision_msgsDetectedPerson_box value)
  b6 <- encodeRos1Pal_vision_msgsRectangle (ros1Pal_vision_msgsDetectedPerson_faceBox value)
  W.bounded 264 [b0, b1, b2, b3, b4, b5, b6]
readRos1Pal_vision_msgsDetectedPerson :: W.Decoder Ros1Pal_vision_msgsDetectedPerson
readRos1Pal_vision_msgsDetectedPerson = do
  a0 <- readRos1Std_msgsHeader
  a1 <- fromIntegral <$> W.signed 8
  a2 <- readRos1Std_msgsColorRGBA
  a3 <- W.float64
  a4 <- readRos1Geometry_msgsPoint
  a5 <- readRos1Pal_vision_msgsRectangle
  a6 <- readRos1Pal_vision_msgsRectangle
  let value = Ros1Pal_vision_msgsDetectedPerson a0 a1 a2 a3 a4 a5 a6
  case encodeRos1Pal_vision_msgsDetectedPerson value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_vision_msgsDetectedPerson :: B.ByteString -> Either Word32 Ros1Pal_vision_msgsDetectedPerson
decodeRos1Pal_vision_msgsDetectedPerson = W.runDecoder 264 readRos1Pal_vision_msgsDetectedPerson
instance Canonical Ros1Pal_vision_msgsDetectedPerson where
  maximumBytes _ = 264
  encodeValue = encodeRos1Pal_vision_msgsDetectedPerson
  readValue = readRos1Pal_vision_msgsDetectedPerson
data Ros1Pal_vision_msgsFaceDetection = Ros1Pal_vision_msgsFaceDetection
  {
    -- | \@brief pal_vision_msgs/FaceDetection.position3D: geometry_msgs/Point.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsFaceDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsFaceDetection_position3D :: Ros1Geometry_msgsPoint
  ,
    -- | \@brief pal_vision_msgs/FaceDetection.imageBoundingBox: pal_vision_msgs/Rectangle.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsFaceDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsFaceDetection_imageBoundingBox :: Ros1Pal_vision_msgsRectangle
  ,
    -- | \@brief pal_vision_msgs/FaceDetection.hog: float32; 0..16 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsFaceDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsFaceDetection_hog :: [Float]
  } deriving (Eq, Show)
defaultRos1Pal_vision_msgsFaceDetection :: Ros1Pal_vision_msgsFaceDetection
defaultRos1Pal_vision_msgsFaceDetection = Ros1Pal_vision_msgsFaceDetection (defaultRos1Geometry_msgsPoint) (defaultRos1Pal_vision_msgsRectangle) ([])
ros1Pal_vision_msgsFaceDetectionCodecIdentity :: String
ros1Pal_vision_msgsFaceDetectionCodecIdentity = "UWVMROS1_57943eb9a19b9558fc5e7390bfbb3f7ab271cfb5ab7892bc1442a43c8d3217d5"
encodeRos1Pal_vision_msgsFaceDetection :: Ros1Pal_vision_msgsFaceDetection -> Either Word32 B.ByteString
encodeRos1Pal_vision_msgsFaceDetection value = do
  b0 <- encodeRos1Geometry_msgsPoint (ros1Pal_vision_msgsFaceDetection_position3D value)
  b1 <- encodeRos1Pal_vision_msgsRectangle (ros1Pal_vision_msgsFaceDetection_imageBoundingBox value)
  if length (ros1Pal_vision_msgsFaceDetection_hog value) > 16 then Left 22 else Right ()
  prefix2 <- W.encodeCount 16 (length (ros1Pal_vision_msgsFaceDetection_hog value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros1Pal_vision_msgsFaceDetection_hog value)
  W.bounded 124 [b0, b1, prefix2, b2]
readRos1Pal_vision_msgsFaceDetection :: W.Decoder Ros1Pal_vision_msgsFaceDetection
readRos1Pal_vision_msgsFaceDetection = do
  a0 <- readRos1Geometry_msgsPoint
  a1 <- readRos1Pal_vision_msgsRectangle
  count2 <- W.count 16
  a2 <- replicateM count2 (W.float32)
  let value = Ros1Pal_vision_msgsFaceDetection a0 a1 a2
  case encodeRos1Pal_vision_msgsFaceDetection value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_vision_msgsFaceDetection :: B.ByteString -> Either Word32 Ros1Pal_vision_msgsFaceDetection
decodeRos1Pal_vision_msgsFaceDetection = W.runDecoder 124 readRos1Pal_vision_msgsFaceDetection
instance Canonical Ros1Pal_vision_msgsFaceDetection where
  maximumBytes _ = 124
  encodeValue = encodeRos1Pal_vision_msgsFaceDetection
  readValue = readRos1Pal_vision_msgsFaceDetection
data Ros1Pal_vision_msgsFaceDetections = Ros1Pal_vision_msgsFaceDetections
  {
    -- | \@brief pal_vision_msgs/FaceDetections.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsFaceDetections; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsFaceDetections_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief pal_vision_msgs/FaceDetections.imgID: uint32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsFaceDetections; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsFaceDetections_imgID :: Word32
  ,
    -- | \@brief pal_vision_msgs/FaceDetections.faces: pal_vision_msgs/FaceDetection; 0..4 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsFaceDetections; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsFaceDetections_faces :: [Ros1Pal_vision_msgsFaceDetection]
  } deriving (Eq, Show)
defaultRos1Pal_vision_msgsFaceDetections :: Ros1Pal_vision_msgsFaceDetections
defaultRos1Pal_vision_msgsFaceDetections = Ros1Pal_vision_msgsFaceDetections (defaultRos1Std_msgsHeader) (0) ([])
ros1Pal_vision_msgsFaceDetectionsCodecIdentity :: String
ros1Pal_vision_msgsFaceDetectionsCodecIdentity = "UWVMROS1_bc135c2c93419e99b87edabfe3a72e744e574ec703e77919736ae90f069417a0"
encodeRos1Pal_vision_msgsFaceDetections :: Ros1Pal_vision_msgsFaceDetections -> Either Word32 B.ByteString
encodeRos1Pal_vision_msgsFaceDetections value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Pal_vision_msgsFaceDetections_header value)
  b1 <- W.encodeUnsigned 4 (fromIntegral (ros1Pal_vision_msgsFaceDetections_imgID value))
  if length (ros1Pal_vision_msgsFaceDetections_faces value) > 4 then Left 22 else Right ()
  prefix2 <- W.encodeCount 4 (length (ros1Pal_vision_msgsFaceDetections_faces value))
  b2 <- B.concat <$> mapM (\e -> encodeRos1Pal_vision_msgsFaceDetection (e)) (ros1Pal_vision_msgsFaceDetections_faces value)
  W.bounded 648 [b0, b1, prefix2, b2]
readRos1Pal_vision_msgsFaceDetections :: W.Decoder Ros1Pal_vision_msgsFaceDetections
readRos1Pal_vision_msgsFaceDetections = do
  a0 <- readRos1Std_msgsHeader
  a1 <- fromIntegral <$> W.unsigned 4
  count2 <- W.count 4
  a2 <- replicateM count2 (readRos1Pal_vision_msgsFaceDetection)
  let value = Ros1Pal_vision_msgsFaceDetections a0 a1 a2
  case encodeRos1Pal_vision_msgsFaceDetections value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_vision_msgsFaceDetections :: B.ByteString -> Either Word32 Ros1Pal_vision_msgsFaceDetections
decodeRos1Pal_vision_msgsFaceDetections = W.runDecoder 648 readRos1Pal_vision_msgsFaceDetections
instance Canonical Ros1Pal_vision_msgsFaceDetections where
  maximumBytes _ = 648
  encodeValue = encodeRos1Pal_vision_msgsFaceDetections
  readValue = readRos1Pal_vision_msgsFaceDetections
data Ros1Pal_vision_msgsFaceRecognitionGoal = Ros1Pal_vision_msgsFaceRecognitionGoal
  {
    -- | \@brief pal_vision_msgs/FaceRecognitionGoal.order_id: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsFaceRecognitionGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsFaceRecognitionGoal_order_id :: Word8
  ,
    -- | \@brief pal_vision_msgs/FaceRecognitionGoal.order_argument: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsFaceRecognitionGoal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsFaceRecognitionGoal_order_argument :: T.Text
  } deriving (Eq, Show)
defaultRos1Pal_vision_msgsFaceRecognitionGoal :: Ros1Pal_vision_msgsFaceRecognitionGoal
defaultRos1Pal_vision_msgsFaceRecognitionGoal = Ros1Pal_vision_msgsFaceRecognitionGoal (0) (T.empty)
ros1Pal_vision_msgsFaceRecognitionGoalCodecIdentity :: String
ros1Pal_vision_msgsFaceRecognitionGoalCodecIdentity = "UWVMROS1_bcf0281ebf646f90ea48d50971aedcd174eec9bdf8cb45ca66c6e4aa672cda4b"
encodeRos1Pal_vision_msgsFaceRecognitionGoal :: Ros1Pal_vision_msgsFaceRecognitionGoal -> Either Word32 B.ByteString
encodeRos1Pal_vision_msgsFaceRecognitionGoal value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros1Pal_vision_msgsFaceRecognitionGoal_order_id value))
  b1 <- W.encodeText 128 True (ros1Pal_vision_msgsFaceRecognitionGoal_order_argument value)
  W.bounded 133 [b0, b1]
readRos1Pal_vision_msgsFaceRecognitionGoal :: W.Decoder Ros1Pal_vision_msgsFaceRecognitionGoal
readRos1Pal_vision_msgsFaceRecognitionGoal = do
  a0 <- fromIntegral <$> W.unsigned 1
  a1 <- W.text 128 True
  let value = Ros1Pal_vision_msgsFaceRecognitionGoal a0 a1
  case encodeRos1Pal_vision_msgsFaceRecognitionGoal value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_vision_msgsFaceRecognitionGoal :: B.ByteString -> Either Word32 Ros1Pal_vision_msgsFaceRecognitionGoal
decodeRos1Pal_vision_msgsFaceRecognitionGoal = W.runDecoder 133 readRos1Pal_vision_msgsFaceRecognitionGoal
instance Canonical Ros1Pal_vision_msgsFaceRecognitionGoal where
  maximumBytes _ = 133
  encodeValue = encodeRos1Pal_vision_msgsFaceRecognitionGoal
  readValue = readRos1Pal_vision_msgsFaceRecognitionGoal
data Ros1Pal_vision_msgsFaceRecognitionResult = Ros1Pal_vision_msgsFaceRecognitionResult
  {
    -- | \@brief pal_vision_msgs/FaceRecognitionResult.order_id: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsFaceRecognitionResult; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsFaceRecognitionResult_order_id :: Word8
  ,
    -- | \@brief pal_vision_msgs/FaceRecognitionResult.names: string; 0..16 elements; each string is 0..128
    --  bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsFaceRecognitionResult; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsFaceRecognitionResult_names :: [T.Text]
  ,
    -- | \@brief pal_vision_msgs/FaceRecognitionResult.confidence: float32; 0..16 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsFaceRecognitionResult; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsFaceRecognitionResult_confidence :: [Float]
  } deriving (Eq, Show)
defaultRos1Pal_vision_msgsFaceRecognitionResult :: Ros1Pal_vision_msgsFaceRecognitionResult
defaultRos1Pal_vision_msgsFaceRecognitionResult = Ros1Pal_vision_msgsFaceRecognitionResult (0) ([]) ([])
ros1Pal_vision_msgsFaceRecognitionResultCodecIdentity :: String
ros1Pal_vision_msgsFaceRecognitionResultCodecIdentity = "UWVMROS1_47287112c67933fc592f58a910627ff0ddc35f2cf8f38437399ef1ed94e4d36e"
encodeRos1Pal_vision_msgsFaceRecognitionResult :: Ros1Pal_vision_msgsFaceRecognitionResult -> Either Word32 B.ByteString
encodeRos1Pal_vision_msgsFaceRecognitionResult value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros1Pal_vision_msgsFaceRecognitionResult_order_id value))
  if length (ros1Pal_vision_msgsFaceRecognitionResult_names value) > 16 then Left 22 else Right ()
  prefix1 <- W.encodeCount 16 (length (ros1Pal_vision_msgsFaceRecognitionResult_names value))
  b1 <- B.concat <$> mapM (\e -> W.encodeText 128 True (e)) (ros1Pal_vision_msgsFaceRecognitionResult_names value)
  if length (ros1Pal_vision_msgsFaceRecognitionResult_confidence value) > 16 then Left 22 else Right ()
  prefix2 <- W.encodeCount 16 (length (ros1Pal_vision_msgsFaceRecognitionResult_confidence value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros1Pal_vision_msgsFaceRecognitionResult_confidence value)
  W.bounded 2185 [b0, prefix1, b1, prefix2, b2]
readRos1Pal_vision_msgsFaceRecognitionResult :: W.Decoder Ros1Pal_vision_msgsFaceRecognitionResult
readRos1Pal_vision_msgsFaceRecognitionResult = do
  a0 <- fromIntegral <$> W.unsigned 1
  count1 <- W.count 16
  a1 <- replicateM count1 (W.text 128 True)
  count2 <- W.count 16
  a2 <- replicateM count2 (W.float32)
  let value = Ros1Pal_vision_msgsFaceRecognitionResult a0 a1 a2
  case encodeRos1Pal_vision_msgsFaceRecognitionResult value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_vision_msgsFaceRecognitionResult :: B.ByteString -> Either Word32 Ros1Pal_vision_msgsFaceRecognitionResult
decodeRos1Pal_vision_msgsFaceRecognitionResult = W.runDecoder 2185 readRos1Pal_vision_msgsFaceRecognitionResult
instance Canonical Ros1Pal_vision_msgsFaceRecognitionResult where
  maximumBytes _ = 2185
  encodeValue = encodeRos1Pal_vision_msgsFaceRecognitionResult
  readValue = readRos1Pal_vision_msgsFaceRecognitionResult
data Ros1Pal_vision_msgsFaceRecognitionFeedback = Ros1Pal_vision_msgsFaceRecognitionFeedback
  {
    -- | \@brief pal_vision_msgs/FaceRecognitionFeedback.order_id: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsFaceRecognitionFeedback; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsFaceRecognitionFeedback_order_id :: Word8
  ,
    -- | \@brief pal_vision_msgs/FaceRecognitionFeedback.names: string; 0..16 elements; each string is 0..128
    --  bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsFaceRecognitionFeedback; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsFaceRecognitionFeedback_names :: [T.Text]
  ,
    -- | \@brief pal_vision_msgs/FaceRecognitionFeedback.confidence: float32; 0..16 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsFaceRecognitionFeedback; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsFaceRecognitionFeedback_confidence :: [Float]
  } deriving (Eq, Show)
defaultRos1Pal_vision_msgsFaceRecognitionFeedback :: Ros1Pal_vision_msgsFaceRecognitionFeedback
defaultRos1Pal_vision_msgsFaceRecognitionFeedback = Ros1Pal_vision_msgsFaceRecognitionFeedback (0) ([]) ([])
ros1Pal_vision_msgsFaceRecognitionFeedbackCodecIdentity :: String
ros1Pal_vision_msgsFaceRecognitionFeedbackCodecIdentity = "UWVMROS1_42cb3618f562e3083ca7069e0f41233a9584cd00b9a3d2cb791d5956735dbfd7"
encodeRos1Pal_vision_msgsFaceRecognitionFeedback :: Ros1Pal_vision_msgsFaceRecognitionFeedback -> Either Word32 B.ByteString
encodeRos1Pal_vision_msgsFaceRecognitionFeedback value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros1Pal_vision_msgsFaceRecognitionFeedback_order_id value))
  if length (ros1Pal_vision_msgsFaceRecognitionFeedback_names value) > 16 then Left 22 else Right ()
  prefix1 <- W.encodeCount 16 (length (ros1Pal_vision_msgsFaceRecognitionFeedback_names value))
  b1 <- B.concat <$> mapM (\e -> W.encodeText 128 True (e)) (ros1Pal_vision_msgsFaceRecognitionFeedback_names value)
  if length (ros1Pal_vision_msgsFaceRecognitionFeedback_confidence value) > 16 then Left 22 else Right ()
  prefix2 <- W.encodeCount 16 (length (ros1Pal_vision_msgsFaceRecognitionFeedback_confidence value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros1Pal_vision_msgsFaceRecognitionFeedback_confidence value)
  W.bounded 2185 [b0, prefix1, b1, prefix2, b2]
readRos1Pal_vision_msgsFaceRecognitionFeedback :: W.Decoder Ros1Pal_vision_msgsFaceRecognitionFeedback
readRos1Pal_vision_msgsFaceRecognitionFeedback = do
  a0 <- fromIntegral <$> W.unsigned 1
  count1 <- W.count 16
  a1 <- replicateM count1 (W.text 128 True)
  count2 <- W.count 16
  a2 <- replicateM count2 (W.float32)
  let value = Ros1Pal_vision_msgsFaceRecognitionFeedback a0 a1 a2
  case encodeRos1Pal_vision_msgsFaceRecognitionFeedback value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_vision_msgsFaceRecognitionFeedback :: B.ByteString -> Either Word32 Ros1Pal_vision_msgsFaceRecognitionFeedback
decodeRos1Pal_vision_msgsFaceRecognitionFeedback = W.runDecoder 2185 readRos1Pal_vision_msgsFaceRecognitionFeedback
instance Canonical Ros1Pal_vision_msgsFaceRecognitionFeedback where
  maximumBytes _ = 2185
  encodeValue = encodeRos1Pal_vision_msgsFaceRecognitionFeedback
  readValue = readRos1Pal_vision_msgsFaceRecognitionFeedback
data Ros1Pal_vision_msgsFaceTrackingStartRequest = Ros1Pal_vision_msgsFaceTrackingStartRequest deriving (Eq, Show)
defaultRos1Pal_vision_msgsFaceTrackingStartRequest :: Ros1Pal_vision_msgsFaceTrackingStartRequest
defaultRos1Pal_vision_msgsFaceTrackingStartRequest = Ros1Pal_vision_msgsFaceTrackingStartRequest 
ros1Pal_vision_msgsFaceTrackingStartRequestCodecIdentity :: String
ros1Pal_vision_msgsFaceTrackingStartRequestCodecIdentity = "UWVMROS1_e41bf1927b5c764ff89ca9d9049719e35c96c1689ba4bb930d1e90480a13647c"
encodeRos1Pal_vision_msgsFaceTrackingStartRequest :: Ros1Pal_vision_msgsFaceTrackingStartRequest -> Either Word32 B.ByteString
encodeRos1Pal_vision_msgsFaceTrackingStartRequest value = do
  W.bounded 0 []
readRos1Pal_vision_msgsFaceTrackingStartRequest :: W.Decoder Ros1Pal_vision_msgsFaceTrackingStartRequest
readRos1Pal_vision_msgsFaceTrackingStartRequest = do
  let value = Ros1Pal_vision_msgsFaceTrackingStartRequest 
  case encodeRos1Pal_vision_msgsFaceTrackingStartRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_vision_msgsFaceTrackingStartRequest :: B.ByteString -> Either Word32 Ros1Pal_vision_msgsFaceTrackingStartRequest
decodeRos1Pal_vision_msgsFaceTrackingStartRequest = W.runDecoder 0 readRos1Pal_vision_msgsFaceTrackingStartRequest
instance Canonical Ros1Pal_vision_msgsFaceTrackingStartRequest where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_vision_msgsFaceTrackingStartRequest
  readValue = readRos1Pal_vision_msgsFaceTrackingStartRequest
data Ros1Pal_vision_msgsFaceTrackingStartResponse = Ros1Pal_vision_msgsFaceTrackingStartResponse deriving (Eq, Show)
defaultRos1Pal_vision_msgsFaceTrackingStartResponse :: Ros1Pal_vision_msgsFaceTrackingStartResponse
defaultRos1Pal_vision_msgsFaceTrackingStartResponse = Ros1Pal_vision_msgsFaceTrackingStartResponse 
ros1Pal_vision_msgsFaceTrackingStartResponseCodecIdentity :: String
ros1Pal_vision_msgsFaceTrackingStartResponseCodecIdentity = "UWVMROS1_51e6335ecfe5827f0bae5e5610b5dec443373b1233942b40387958b1b47ba4bf"
encodeRos1Pal_vision_msgsFaceTrackingStartResponse :: Ros1Pal_vision_msgsFaceTrackingStartResponse -> Either Word32 B.ByteString
encodeRos1Pal_vision_msgsFaceTrackingStartResponse value = do
  W.bounded 0 []
readRos1Pal_vision_msgsFaceTrackingStartResponse :: W.Decoder Ros1Pal_vision_msgsFaceTrackingStartResponse
readRos1Pal_vision_msgsFaceTrackingStartResponse = do
  let value = Ros1Pal_vision_msgsFaceTrackingStartResponse 
  case encodeRos1Pal_vision_msgsFaceTrackingStartResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_vision_msgsFaceTrackingStartResponse :: B.ByteString -> Either Word32 Ros1Pal_vision_msgsFaceTrackingStartResponse
decodeRos1Pal_vision_msgsFaceTrackingStartResponse = W.runDecoder 0 readRos1Pal_vision_msgsFaceTrackingStartResponse
instance Canonical Ros1Pal_vision_msgsFaceTrackingStartResponse where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_vision_msgsFaceTrackingStartResponse
  readValue = readRos1Pal_vision_msgsFaceTrackingStartResponse
data Ros1Pal_vision_msgsFaceTrackingStopRequest = Ros1Pal_vision_msgsFaceTrackingStopRequest deriving (Eq, Show)
defaultRos1Pal_vision_msgsFaceTrackingStopRequest :: Ros1Pal_vision_msgsFaceTrackingStopRequest
defaultRos1Pal_vision_msgsFaceTrackingStopRequest = Ros1Pal_vision_msgsFaceTrackingStopRequest 
ros1Pal_vision_msgsFaceTrackingStopRequestCodecIdentity :: String
ros1Pal_vision_msgsFaceTrackingStopRequestCodecIdentity = "UWVMROS1_850dd9a2cdf7e12197ac7efad3facaf4609c7be7c63d8157a6b92bc1e56926e5"
encodeRos1Pal_vision_msgsFaceTrackingStopRequest :: Ros1Pal_vision_msgsFaceTrackingStopRequest -> Either Word32 B.ByteString
encodeRos1Pal_vision_msgsFaceTrackingStopRequest value = do
  W.bounded 0 []
readRos1Pal_vision_msgsFaceTrackingStopRequest :: W.Decoder Ros1Pal_vision_msgsFaceTrackingStopRequest
readRos1Pal_vision_msgsFaceTrackingStopRequest = do
  let value = Ros1Pal_vision_msgsFaceTrackingStopRequest 
  case encodeRos1Pal_vision_msgsFaceTrackingStopRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_vision_msgsFaceTrackingStopRequest :: B.ByteString -> Either Word32 Ros1Pal_vision_msgsFaceTrackingStopRequest
decodeRos1Pal_vision_msgsFaceTrackingStopRequest = W.runDecoder 0 readRos1Pal_vision_msgsFaceTrackingStopRequest
instance Canonical Ros1Pal_vision_msgsFaceTrackingStopRequest where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_vision_msgsFaceTrackingStopRequest
  readValue = readRos1Pal_vision_msgsFaceTrackingStopRequest
data Ros1Pal_vision_msgsFaceTrackingStopResponse = Ros1Pal_vision_msgsFaceTrackingStopResponse deriving (Eq, Show)
defaultRos1Pal_vision_msgsFaceTrackingStopResponse :: Ros1Pal_vision_msgsFaceTrackingStopResponse
defaultRos1Pal_vision_msgsFaceTrackingStopResponse = Ros1Pal_vision_msgsFaceTrackingStopResponse 
ros1Pal_vision_msgsFaceTrackingStopResponseCodecIdentity :: String
ros1Pal_vision_msgsFaceTrackingStopResponseCodecIdentity = "UWVMROS1_158adae14ad8a978f5c934c5aee9489306e9ddd31d9afa15ff1a9f9af8872b5f"
encodeRos1Pal_vision_msgsFaceTrackingStopResponse :: Ros1Pal_vision_msgsFaceTrackingStopResponse -> Either Word32 B.ByteString
encodeRos1Pal_vision_msgsFaceTrackingStopResponse value = do
  W.bounded 0 []
readRos1Pal_vision_msgsFaceTrackingStopResponse :: W.Decoder Ros1Pal_vision_msgsFaceTrackingStopResponse
readRos1Pal_vision_msgsFaceTrackingStopResponse = do
  let value = Ros1Pal_vision_msgsFaceTrackingStopResponse 
  case encodeRos1Pal_vision_msgsFaceTrackingStopResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_vision_msgsFaceTrackingStopResponse :: B.ByteString -> Either Word32 Ros1Pal_vision_msgsFaceTrackingStopResponse
decodeRos1Pal_vision_msgsFaceTrackingStopResponse = W.runDecoder 0 readRos1Pal_vision_msgsFaceTrackingStopResponse
instance Canonical Ros1Pal_vision_msgsFaceTrackingStopResponse where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_vision_msgsFaceTrackingStopResponse
  readValue = readRos1Pal_vision_msgsFaceTrackingStopResponse
data Ros1Pal_vision_msgsFollowMeResponse = Ros1Pal_vision_msgsFollowMeResponse
  {
    -- | \@brief pal_vision_msgs/FollowMeResponse.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsFollowMeResponse; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsFollowMeResponse_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief pal_vision_msgs/FollowMeResponse.targetDetected: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsFollowMeResponse; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsFollowMeResponse_targetDetected :: Bool
  } deriving (Eq, Show)
defaultRos1Pal_vision_msgsFollowMeResponse :: Ros1Pal_vision_msgsFollowMeResponse
defaultRos1Pal_vision_msgsFollowMeResponse = Ros1Pal_vision_msgsFollowMeResponse (defaultRos1Std_msgsHeader) (False)
ros1Pal_vision_msgsFollowMeResponseCodecIdentity :: String
ros1Pal_vision_msgsFollowMeResponseCodecIdentity = "UWVMROS1_509edcb3854474332fd562cc897fff9266b789772700de1b4a447670fd0bb24f"
encodeRos1Pal_vision_msgsFollowMeResponse :: Ros1Pal_vision_msgsFollowMeResponse -> Either Word32 B.ByteString
encodeRos1Pal_vision_msgsFollowMeResponse value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Pal_vision_msgsFollowMeResponse_header value)
  b1 <- W.encodeBool (ros1Pal_vision_msgsFollowMeResponse_targetDetected value)
  W.bounded 145 [b0, b1]
readRos1Pal_vision_msgsFollowMeResponse :: W.Decoder Ros1Pal_vision_msgsFollowMeResponse
readRos1Pal_vision_msgsFollowMeResponse = do
  a0 <- readRos1Std_msgsHeader
  a1 <- W.boolean
  let value = Ros1Pal_vision_msgsFollowMeResponse a0 a1
  case encodeRos1Pal_vision_msgsFollowMeResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_vision_msgsFollowMeResponse :: B.ByteString -> Either Word32 Ros1Pal_vision_msgsFollowMeResponse
decodeRos1Pal_vision_msgsFollowMeResponse = W.runDecoder 145 readRos1Pal_vision_msgsFollowMeResponse
instance Canonical Ros1Pal_vision_msgsFollowMeResponse where
  maximumBytes _ = 145
  encodeValue = encodeRos1Pal_vision_msgsFollowMeResponse
  readValue = readRos1Pal_vision_msgsFollowMeResponse
data Ros1Pal_vision_msgsFollowMeStartRequest = Ros1Pal_vision_msgsFollowMeStartRequest
  {
    -- | \@brief pal_vision_msgs/FollowMeStartRequest.maxSecondsTargetLost: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsFollowMeStartRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsFollowMeStartRequest_maxSecondsTargetLost :: Float
  } deriving (Eq, Show)
defaultRos1Pal_vision_msgsFollowMeStartRequest :: Ros1Pal_vision_msgsFollowMeStartRequest
defaultRos1Pal_vision_msgsFollowMeStartRequest = Ros1Pal_vision_msgsFollowMeStartRequest (0)
ros1Pal_vision_msgsFollowMeStartRequestCodecIdentity :: String
ros1Pal_vision_msgsFollowMeStartRequestCodecIdentity = "UWVMROS1_9ad00d43667a3ac5324f5999d68f04b8c176c308d94c2ed4da9d357697b0faba"
encodeRos1Pal_vision_msgsFollowMeStartRequest :: Ros1Pal_vision_msgsFollowMeStartRequest -> Either Word32 B.ByteString
encodeRos1Pal_vision_msgsFollowMeStartRequest value = do
  b0 <- W.encodeFloat32 (ros1Pal_vision_msgsFollowMeStartRequest_maxSecondsTargetLost value)
  W.bounded 4 [b0]
readRos1Pal_vision_msgsFollowMeStartRequest :: W.Decoder Ros1Pal_vision_msgsFollowMeStartRequest
readRos1Pal_vision_msgsFollowMeStartRequest = do
  a0 <- W.float32
  let value = Ros1Pal_vision_msgsFollowMeStartRequest a0
  case encodeRos1Pal_vision_msgsFollowMeStartRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_vision_msgsFollowMeStartRequest :: B.ByteString -> Either Word32 Ros1Pal_vision_msgsFollowMeStartRequest
decodeRos1Pal_vision_msgsFollowMeStartRequest = W.runDecoder 4 readRos1Pal_vision_msgsFollowMeStartRequest
instance Canonical Ros1Pal_vision_msgsFollowMeStartRequest where
  maximumBytes _ = 4
  encodeValue = encodeRos1Pal_vision_msgsFollowMeStartRequest
  readValue = readRos1Pal_vision_msgsFollowMeStartRequest
data Ros1Pal_vision_msgsFollowMeStartResponse = Ros1Pal_vision_msgsFollowMeStartResponse deriving (Eq, Show)
defaultRos1Pal_vision_msgsFollowMeStartResponse :: Ros1Pal_vision_msgsFollowMeStartResponse
defaultRos1Pal_vision_msgsFollowMeStartResponse = Ros1Pal_vision_msgsFollowMeStartResponse 
ros1Pal_vision_msgsFollowMeStartResponseCodecIdentity :: String
ros1Pal_vision_msgsFollowMeStartResponseCodecIdentity = "UWVMROS1_2d61bb56a1595cfb26c8607e75c06b6ad712ee04f23f8bb3ec2055a311d3376a"
encodeRos1Pal_vision_msgsFollowMeStartResponse :: Ros1Pal_vision_msgsFollowMeStartResponse -> Either Word32 B.ByteString
encodeRos1Pal_vision_msgsFollowMeStartResponse value = do
  W.bounded 0 []
readRos1Pal_vision_msgsFollowMeStartResponse :: W.Decoder Ros1Pal_vision_msgsFollowMeStartResponse
readRos1Pal_vision_msgsFollowMeStartResponse = do
  let value = Ros1Pal_vision_msgsFollowMeStartResponse 
  case encodeRos1Pal_vision_msgsFollowMeStartResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_vision_msgsFollowMeStartResponse :: B.ByteString -> Either Word32 Ros1Pal_vision_msgsFollowMeStartResponse
decodeRos1Pal_vision_msgsFollowMeStartResponse = W.runDecoder 0 readRos1Pal_vision_msgsFollowMeStartResponse
instance Canonical Ros1Pal_vision_msgsFollowMeStartResponse where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_vision_msgsFollowMeStartResponse
  readValue = readRos1Pal_vision_msgsFollowMeStartResponse
data Ros1Pal_vision_msgsFollowMeStopRequest = Ros1Pal_vision_msgsFollowMeStopRequest deriving (Eq, Show)
defaultRos1Pal_vision_msgsFollowMeStopRequest :: Ros1Pal_vision_msgsFollowMeStopRequest
defaultRos1Pal_vision_msgsFollowMeStopRequest = Ros1Pal_vision_msgsFollowMeStopRequest 
ros1Pal_vision_msgsFollowMeStopRequestCodecIdentity :: String
ros1Pal_vision_msgsFollowMeStopRequestCodecIdentity = "UWVMROS1_6027cba04b80218bf304f2a426f716bba87534e477b5dda411c921ac27e9a8b2"
encodeRos1Pal_vision_msgsFollowMeStopRequest :: Ros1Pal_vision_msgsFollowMeStopRequest -> Either Word32 B.ByteString
encodeRos1Pal_vision_msgsFollowMeStopRequest value = do
  W.bounded 0 []
readRos1Pal_vision_msgsFollowMeStopRequest :: W.Decoder Ros1Pal_vision_msgsFollowMeStopRequest
readRos1Pal_vision_msgsFollowMeStopRequest = do
  let value = Ros1Pal_vision_msgsFollowMeStopRequest 
  case encodeRos1Pal_vision_msgsFollowMeStopRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_vision_msgsFollowMeStopRequest :: B.ByteString -> Either Word32 Ros1Pal_vision_msgsFollowMeStopRequest
decodeRos1Pal_vision_msgsFollowMeStopRequest = W.runDecoder 0 readRos1Pal_vision_msgsFollowMeStopRequest
instance Canonical Ros1Pal_vision_msgsFollowMeStopRequest where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_vision_msgsFollowMeStopRequest
  readValue = readRos1Pal_vision_msgsFollowMeStopRequest
data Ros1Pal_vision_msgsFollowMeStopResponse = Ros1Pal_vision_msgsFollowMeStopResponse deriving (Eq, Show)
defaultRos1Pal_vision_msgsFollowMeStopResponse :: Ros1Pal_vision_msgsFollowMeStopResponse
defaultRos1Pal_vision_msgsFollowMeStopResponse = Ros1Pal_vision_msgsFollowMeStopResponse 
ros1Pal_vision_msgsFollowMeStopResponseCodecIdentity :: String
ros1Pal_vision_msgsFollowMeStopResponseCodecIdentity = "UWVMROS1_a2b3b521174fc092b8f04cdc09ff4a43113b71b9daa4977e7a233fc8a5c02cdb"
encodeRos1Pal_vision_msgsFollowMeStopResponse :: Ros1Pal_vision_msgsFollowMeStopResponse -> Either Word32 B.ByteString
encodeRos1Pal_vision_msgsFollowMeStopResponse value = do
  W.bounded 0 []
readRos1Pal_vision_msgsFollowMeStopResponse :: W.Decoder Ros1Pal_vision_msgsFollowMeStopResponse
readRos1Pal_vision_msgsFollowMeStopResponse = do
  let value = Ros1Pal_vision_msgsFollowMeStopResponse 
  case encodeRos1Pal_vision_msgsFollowMeStopResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_vision_msgsFollowMeStopResponse :: B.ByteString -> Either Word32 Ros1Pal_vision_msgsFollowMeStopResponse
decodeRos1Pal_vision_msgsFollowMeStopResponse = W.runDecoder 0 readRos1Pal_vision_msgsFollowMeStopResponse
instance Canonical Ros1Pal_vision_msgsFollowMeStopResponse where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_vision_msgsFollowMeStopResponse
  readValue = readRos1Pal_vision_msgsFollowMeStopResponse
data Ros1Pal_vision_msgsGesture = Ros1Pal_vision_msgsGesture
  {
    -- | \@brief pal_vision_msgs/Gesture.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsGesture; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsGesture_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief pal_vision_msgs/Gesture.gestureId: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsGesture; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsGesture_gestureId :: T.Text
  ,
    -- | \@brief pal_vision_msgs/Gesture.position3D: geometry_msgs/Point.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsGesture; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsGesture_position3D :: Ros1Geometry_msgsPoint
  } deriving (Eq, Show)
defaultRos1Pal_vision_msgsGesture :: Ros1Pal_vision_msgsGesture
defaultRos1Pal_vision_msgsGesture = Ros1Pal_vision_msgsGesture (defaultRos1Std_msgsHeader) (T.empty) (defaultRos1Geometry_msgsPoint)
ros1Pal_vision_msgsGestureCodecIdentity :: String
ros1Pal_vision_msgsGestureCodecIdentity = "UWVMROS1_e947cfbffe33a44d3590ff6513d4486c7411747df12fed9c178662e5beb2e4d1"
encodeRos1Pal_vision_msgsGesture :: Ros1Pal_vision_msgsGesture -> Either Word32 B.ByteString
encodeRos1Pal_vision_msgsGesture value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Pal_vision_msgsGesture_header value)
  b1 <- W.encodeText 128 True (ros1Pal_vision_msgsGesture_gestureId value)
  b2 <- encodeRos1Geometry_msgsPoint (ros1Pal_vision_msgsGesture_position3D value)
  W.bounded 300 [b0, b1, b2]
readRos1Pal_vision_msgsGesture :: W.Decoder Ros1Pal_vision_msgsGesture
readRos1Pal_vision_msgsGesture = do
  a0 <- readRos1Std_msgsHeader
  a1 <- W.text 128 True
  a2 <- readRos1Geometry_msgsPoint
  let value = Ros1Pal_vision_msgsGesture a0 a1 a2
  case encodeRos1Pal_vision_msgsGesture value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_vision_msgsGesture :: B.ByteString -> Either Word32 Ros1Pal_vision_msgsGesture
decodeRos1Pal_vision_msgsGesture = W.runDecoder 300 readRos1Pal_vision_msgsGesture
instance Canonical Ros1Pal_vision_msgsGesture where
  maximumBytes _ = 300
  encodeValue = encodeRos1Pal_vision_msgsGesture
  readValue = readRos1Pal_vision_msgsGesture
data Ros1Pal_vision_msgsHeadPanTilt = Ros1Pal_vision_msgsHeadPanTilt
  {
    -- | \@brief pal_vision_msgs/HeadPanTilt.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsHeadPanTilt; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsHeadPanTilt_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief pal_vision_msgs/HeadPanTilt.pan: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsHeadPanTilt; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsHeadPanTilt_pan :: Float
  ,
    -- | \@brief pal_vision_msgs/HeadPanTilt.tilt: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsHeadPanTilt; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsHeadPanTilt_tilt :: Float
  } deriving (Eq, Show)
defaultRos1Pal_vision_msgsHeadPanTilt :: Ros1Pal_vision_msgsHeadPanTilt
defaultRos1Pal_vision_msgsHeadPanTilt = Ros1Pal_vision_msgsHeadPanTilt (defaultRos1Std_msgsHeader) (0) (0)
ros1Pal_vision_msgsHeadPanTiltCodecIdentity :: String
ros1Pal_vision_msgsHeadPanTiltCodecIdentity = "UWVMROS1_69c6664a98a42741b82d5c147ccfabdb7bb7138cae590c77a2b63103cdf899cc"
encodeRos1Pal_vision_msgsHeadPanTilt :: Ros1Pal_vision_msgsHeadPanTilt -> Either Word32 B.ByteString
encodeRos1Pal_vision_msgsHeadPanTilt value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Pal_vision_msgsHeadPanTilt_header value)
  b1 <- W.encodeFloat32 (ros1Pal_vision_msgsHeadPanTilt_pan value)
  b2 <- W.encodeFloat32 (ros1Pal_vision_msgsHeadPanTilt_tilt value)
  W.bounded 152 [b0, b1, b2]
readRos1Pal_vision_msgsHeadPanTilt :: W.Decoder Ros1Pal_vision_msgsHeadPanTilt
readRos1Pal_vision_msgsHeadPanTilt = do
  a0 <- readRos1Std_msgsHeader
  a1 <- W.float32
  a2 <- W.float32
  let value = Ros1Pal_vision_msgsHeadPanTilt a0 a1 a2
  case encodeRos1Pal_vision_msgsHeadPanTilt value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_vision_msgsHeadPanTilt :: B.ByteString -> Either Word32 Ros1Pal_vision_msgsHeadPanTilt
decodeRos1Pal_vision_msgsHeadPanTilt = W.runDecoder 152 readRos1Pal_vision_msgsHeadPanTilt
instance Canonical Ros1Pal_vision_msgsHeadPanTilt where
  maximumBytes _ = 152
  encodeValue = encodeRos1Pal_vision_msgsHeadPanTilt
  readValue = readRos1Pal_vision_msgsHeadPanTilt
data Ros1Pal_vision_msgsHogDetection = Ros1Pal_vision_msgsHogDetection
  {
    -- | \@brief pal_vision_msgs/HogDetection.imageBoundingBox: pal_vision_msgs/Rectangle.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsHogDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsHogDetection_imageBoundingBox :: Ros1Pal_vision_msgsRectangle
  ,
    -- | \@brief pal_vision_msgs/HogDetection.direction: geometry_msgs/Vector3.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsHogDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsHogDetection_direction :: Ros1Geometry_msgsVector3
  ,
    -- | \@brief pal_vision_msgs/HogDetection.hog: float32; 0..16 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsHogDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsHogDetection_hog :: [Float]
  ,
    -- | \@brief pal_vision_msgs/HogDetection.principalEigenVectorRGB: std_msgs/ColorRGBA.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsHogDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsHogDetection_principalEigenVectorRGB :: Ros1Std_msgsColorRGBA
  ,
    -- | \@brief pal_vision_msgs/HogDetection.rgbClusterCenters: std_msgs/ColorRGBA; 0..4 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsHogDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsHogDetection_rgbClusterCenters :: [Ros1Std_msgsColorRGBA]
  ,
    -- | \@brief pal_vision_msgs/HogDetection.rgbDescriptor1: uint32; 0..16 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsHogDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsHogDetection_rgbDescriptor1 :: [Word32]
  ,
    -- | \@brief pal_vision_msgs/HogDetection.rgbDescriptor2: uint32; 0..16 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsHogDetection; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsHogDetection_rgbDescriptor2 :: [Word32]
  } deriving (Eq, Show)
defaultRos1Pal_vision_msgsHogDetection :: Ros1Pal_vision_msgsHogDetection
defaultRos1Pal_vision_msgsHogDetection =
    Ros1Pal_vision_msgsHogDetection
    (defaultRos1Pal_vision_msgsRectangle)
    (defaultRos1Geometry_msgsVector3)
    ([])
    (defaultRos1Std_msgsColorRGBA)
    ([])
    ([])
    ([])
ros1Pal_vision_msgsHogDetectionCodecIdentity :: String
ros1Pal_vision_msgsHogDetectionCodecIdentity = "UWVMROS1_4d745cf6bb2b9fce9d25b0c7b15be14ba7aec15d19a6677f7d8f4dfc40c3dcf4"
encodeRos1Pal_vision_msgsHogDetection :: Ros1Pal_vision_msgsHogDetection -> Either Word32 B.ByteString
encodeRos1Pal_vision_msgsHogDetection value = do
  b0 <- encodeRos1Pal_vision_msgsRectangle (ros1Pal_vision_msgsHogDetection_imageBoundingBox value)
  b1 <- encodeRos1Geometry_msgsVector3 (ros1Pal_vision_msgsHogDetection_direction value)
  if length (ros1Pal_vision_msgsHogDetection_hog value) > 16 then Left 22 else Right ()
  prefix2 <- W.encodeCount 16 (length (ros1Pal_vision_msgsHogDetection_hog value))
  b2 <- B.concat <$> mapM (\e -> W.encodeFloat32 (e)) (ros1Pal_vision_msgsHogDetection_hog value)
  b3 <- encodeRos1Std_msgsColorRGBA (ros1Pal_vision_msgsHogDetection_principalEigenVectorRGB value)
  if length (ros1Pal_vision_msgsHogDetection_rgbClusterCenters value) > 4 then Left 22 else Right ()
  prefix4 <- W.encodeCount 4 (length (ros1Pal_vision_msgsHogDetection_rgbClusterCenters value))
  b4 <- B.concat <$> mapM (\e -> encodeRos1Std_msgsColorRGBA (e)) (ros1Pal_vision_msgsHogDetection_rgbClusterCenters value)
  if length (ros1Pal_vision_msgsHogDetection_rgbDescriptor1 value) > 16 then Left 22 else Right ()
  prefix5 <- W.encodeCount 16 (length (ros1Pal_vision_msgsHogDetection_rgbDescriptor1 value))
  b5 <- B.concat <$> mapM (\e -> W.encodeUnsigned 4 (fromIntegral (e))) (ros1Pal_vision_msgsHogDetection_rgbDescriptor1 value)
  if length (ros1Pal_vision_msgsHogDetection_rgbDescriptor2 value) > 16 then Left 22 else Right ()
  prefix6 <- W.encodeCount 16 (length (ros1Pal_vision_msgsHogDetection_rgbDescriptor2 value))
  b6 <- B.concat <$> mapM (\e -> W.encodeUnsigned 4 (fromIntegral (e))) (ros1Pal_vision_msgsHogDetection_rgbDescriptor2 value)
  W.bounded 344 [b0, b1, prefix2, b2, b3, prefix4, b4, prefix5, b5, prefix6, b6]
readRos1Pal_vision_msgsHogDetection :: W.Decoder Ros1Pal_vision_msgsHogDetection
readRos1Pal_vision_msgsHogDetection = do
  a0 <- readRos1Pal_vision_msgsRectangle
  a1 <- readRos1Geometry_msgsVector3
  count2 <- W.count 16
  a2 <- replicateM count2 (W.float32)
  a3 <- readRos1Std_msgsColorRGBA
  count4 <- W.count 4
  a4 <- replicateM count4 (readRos1Std_msgsColorRGBA)
  count5 <- W.count 16
  a5 <- replicateM count5 (fromIntegral <$> W.unsigned 4)
  count6 <- W.count 16
  a6 <- replicateM count6 (fromIntegral <$> W.unsigned 4)
  let value = Ros1Pal_vision_msgsHogDetection a0 a1 a2 a3 a4 a5 a6
  case encodeRos1Pal_vision_msgsHogDetection value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_vision_msgsHogDetection :: B.ByteString -> Either Word32 Ros1Pal_vision_msgsHogDetection
decodeRos1Pal_vision_msgsHogDetection = W.runDecoder 344 readRos1Pal_vision_msgsHogDetection
instance Canonical Ros1Pal_vision_msgsHogDetection where
  maximumBytes _ = 344
  encodeValue = encodeRos1Pal_vision_msgsHogDetection
  readValue = readRos1Pal_vision_msgsHogDetection
data Ros1Pal_vision_msgsHogDetections = Ros1Pal_vision_msgsHogDetections
  {
    -- | \@brief pal_vision_msgs/HogDetections.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsHogDetections; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsHogDetections_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief pal_vision_msgs/HogDetections.imgID: uint32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsHogDetections; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsHogDetections_imgID :: Word32
  ,
    -- | \@brief pal_vision_msgs/HogDetections.persons: pal_vision_msgs/HogDetection; 0..4 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsHogDetections; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsHogDetections_persons :: [Ros1Pal_vision_msgsHogDetection]
  } deriving (Eq, Show)
defaultRos1Pal_vision_msgsHogDetections :: Ros1Pal_vision_msgsHogDetections
defaultRos1Pal_vision_msgsHogDetections = Ros1Pal_vision_msgsHogDetections (defaultRos1Std_msgsHeader) (0) ([])
ros1Pal_vision_msgsHogDetectionsCodecIdentity :: String
ros1Pal_vision_msgsHogDetectionsCodecIdentity = "UWVMROS1_8ea9e8cc6d81de0b518f3dd1fd3fedca765711f965644e2a0fa88b8d334cbace"
encodeRos1Pal_vision_msgsHogDetections :: Ros1Pal_vision_msgsHogDetections -> Either Word32 B.ByteString
encodeRos1Pal_vision_msgsHogDetections value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Pal_vision_msgsHogDetections_header value)
  b1 <- W.encodeUnsigned 4 (fromIntegral (ros1Pal_vision_msgsHogDetections_imgID value))
  if length (ros1Pal_vision_msgsHogDetections_persons value) > 4 then Left 22 else Right ()
  prefix2 <- W.encodeCount 4 (length (ros1Pal_vision_msgsHogDetections_persons value))
  b2 <- B.concat <$> mapM (\e -> encodeRos1Pal_vision_msgsHogDetection (e)) (ros1Pal_vision_msgsHogDetections_persons value)
  W.bounded 1528 [b0, b1, prefix2, b2]
readRos1Pal_vision_msgsHogDetections :: W.Decoder Ros1Pal_vision_msgsHogDetections
readRos1Pal_vision_msgsHogDetections = do
  a0 <- readRos1Std_msgsHeader
  a1 <- fromIntegral <$> W.unsigned 4
  count2 <- W.count 4
  a2 <- replicateM count2 (readRos1Pal_vision_msgsHogDetection)
  let value = Ros1Pal_vision_msgsHogDetections a0 a1 a2
  case encodeRos1Pal_vision_msgsHogDetections value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_vision_msgsHogDetections :: B.ByteString -> Either Word32 Ros1Pal_vision_msgsHogDetections
decodeRos1Pal_vision_msgsHogDetections = W.runDecoder 1528 readRos1Pal_vision_msgsHogDetections
instance Canonical Ros1Pal_vision_msgsHogDetections where
  maximumBytes _ = 1528
  encodeValue = encodeRos1Pal_vision_msgsHogDetections
  readValue = readRos1Pal_vision_msgsHogDetections
data Ros1Pal_vision_msgsLegDetections = Ros1Pal_vision_msgsLegDetections
  {
    -- | \@brief pal_vision_msgs/LegDetections.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsLegDetections; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsLegDetections_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief pal_vision_msgs/LegDetections.position3D: geometry_msgs/Point; 0..4 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsLegDetections; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsLegDetections_position3D :: [Ros1Geometry_msgsPoint]
  } deriving (Eq, Show)
defaultRos1Pal_vision_msgsLegDetections :: Ros1Pal_vision_msgsLegDetections
defaultRos1Pal_vision_msgsLegDetections = Ros1Pal_vision_msgsLegDetections (defaultRos1Std_msgsHeader) ([])
ros1Pal_vision_msgsLegDetectionsCodecIdentity :: String
ros1Pal_vision_msgsLegDetectionsCodecIdentity = "UWVMROS1_e175101eca8d474e2569d4e4e125fd84e8c8a73c957472cf7e4b6aae9dfa0549"
encodeRos1Pal_vision_msgsLegDetections :: Ros1Pal_vision_msgsLegDetections -> Either Word32 B.ByteString
encodeRos1Pal_vision_msgsLegDetections value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Pal_vision_msgsLegDetections_header value)
  if length (ros1Pal_vision_msgsLegDetections_position3D value) > 4 then Left 22 else Right ()
  prefix1 <- W.encodeCount 4 (length (ros1Pal_vision_msgsLegDetections_position3D value))
  b1 <- B.concat <$> mapM (\e -> encodeRos1Geometry_msgsPoint (e)) (ros1Pal_vision_msgsLegDetections_position3D value)
  W.bounded 244 [b0, prefix1, b1]
readRos1Pal_vision_msgsLegDetections :: W.Decoder Ros1Pal_vision_msgsLegDetections
readRos1Pal_vision_msgsLegDetections = do
  a0 <- readRos1Std_msgsHeader
  count1 <- W.count 4
  a1 <- replicateM count1 (readRos1Geometry_msgsPoint)
  let value = Ros1Pal_vision_msgsLegDetections a0 a1
  case encodeRos1Pal_vision_msgsLegDetections value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_vision_msgsLegDetections :: B.ByteString -> Either Word32 Ros1Pal_vision_msgsLegDetections
decodeRos1Pal_vision_msgsLegDetections = W.runDecoder 244 readRos1Pal_vision_msgsLegDetections
instance Canonical Ros1Pal_vision_msgsLegDetections where
  maximumBytes _ = 244
  encodeValue = encodeRos1Pal_vision_msgsLegDetections
  readValue = readRos1Pal_vision_msgsLegDetections
data Ros1Pal_vision_msgsLookToPixelRequest = Ros1Pal_vision_msgsLookToPixelRequest
  {
    -- | \@brief pal_vision_msgs/LookToPixelRequest.x: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsLookToPixelRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsLookToPixelRequest_x :: Float
  ,
    -- | \@brief pal_vision_msgs/LookToPixelRequest.y: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_vision_msgsLookToPixelRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_vision_msgsLookToPixelRequest_y :: Float
  } deriving (Eq, Show)
defaultRos1Pal_vision_msgsLookToPixelRequest :: Ros1Pal_vision_msgsLookToPixelRequest
defaultRos1Pal_vision_msgsLookToPixelRequest = Ros1Pal_vision_msgsLookToPixelRequest (0) (0)
ros1Pal_vision_msgsLookToPixelRequestCodecIdentity :: String
ros1Pal_vision_msgsLookToPixelRequestCodecIdentity = "UWVMROS1_ead4559133ef68c0248064d865cceaeb335f6104424a199ebc4452e6878383ff"
encodeRos1Pal_vision_msgsLookToPixelRequest :: Ros1Pal_vision_msgsLookToPixelRequest -> Either Word32 B.ByteString
encodeRos1Pal_vision_msgsLookToPixelRequest value = do
  b0 <- W.encodeFloat32 (ros1Pal_vision_msgsLookToPixelRequest_x value)
  b1 <- W.encodeFloat32 (ros1Pal_vision_msgsLookToPixelRequest_y value)
  W.bounded 8 [b0, b1]
readRos1Pal_vision_msgsLookToPixelRequest :: W.Decoder Ros1Pal_vision_msgsLookToPixelRequest
readRos1Pal_vision_msgsLookToPixelRequest = do
  a0 <- W.float32
  a1 <- W.float32
  let value = Ros1Pal_vision_msgsLookToPixelRequest a0 a1
  case encodeRos1Pal_vision_msgsLookToPixelRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_vision_msgsLookToPixelRequest :: B.ByteString -> Either Word32 Ros1Pal_vision_msgsLookToPixelRequest
decodeRos1Pal_vision_msgsLookToPixelRequest = W.runDecoder 8 readRos1Pal_vision_msgsLookToPixelRequest
instance Canonical Ros1Pal_vision_msgsLookToPixelRequest where
  maximumBytes _ = 8
  encodeValue = encodeRos1Pal_vision_msgsLookToPixelRequest
  readValue = readRos1Pal_vision_msgsLookToPixelRequest
data Ros1Pal_vision_msgsLookToPixelResponse = Ros1Pal_vision_msgsLookToPixelResponse deriving (Eq, Show)
defaultRos1Pal_vision_msgsLookToPixelResponse :: Ros1Pal_vision_msgsLookToPixelResponse
defaultRos1Pal_vision_msgsLookToPixelResponse = Ros1Pal_vision_msgsLookToPixelResponse 
ros1Pal_vision_msgsLookToPixelResponseCodecIdentity :: String
ros1Pal_vision_msgsLookToPixelResponseCodecIdentity = "UWVMROS1_137d83d2b779310ee91811bd5a17c4d232fb2114246da1520656876385562ae1"
encodeRos1Pal_vision_msgsLookToPixelResponse :: Ros1Pal_vision_msgsLookToPixelResponse -> Either Word32 B.ByteString
encodeRos1Pal_vision_msgsLookToPixelResponse value = do
  W.bounded 0 []
readRos1Pal_vision_msgsLookToPixelResponse :: W.Decoder Ros1Pal_vision_msgsLookToPixelResponse
readRos1Pal_vision_msgsLookToPixelResponse = do
  let value = Ros1Pal_vision_msgsLookToPixelResponse 
  case encodeRos1Pal_vision_msgsLookToPixelResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_vision_msgsLookToPixelResponse :: B.ByteString -> Either Word32 Ros1Pal_vision_msgsLookToPixelResponse
decodeRos1Pal_vision_msgsLookToPixelResponse = W.runDecoder 0 readRos1Pal_vision_msgsLookToPixelResponse
instance Canonical Ros1Pal_vision_msgsLookToPixelResponse where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_vision_msgsLookToPixelResponse
  readValue = readRos1Pal_vision_msgsLookToPixelResponse
data Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal = Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal deriving (Eq, Show)
defaultRos1Pal_visual_localization_msgsVisualLocAddPlaceGoal :: Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal
defaultRos1Pal_visual_localization_msgsVisualLocAddPlaceGoal = Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal 
ros1Pal_visual_localization_msgsVisualLocAddPlaceGoalCodecIdentity :: String
ros1Pal_visual_localization_msgsVisualLocAddPlaceGoalCodecIdentity = "UWVMROS1_6d84634e1bebf082190a3992acd2379d94a375158775cf0a01c430779105049d"
encodeRos1Pal_visual_localization_msgsVisualLocAddPlaceGoal :: Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal -> Either Word32 B.ByteString
encodeRos1Pal_visual_localization_msgsVisualLocAddPlaceGoal value = do
  W.bounded 0 []
readRos1Pal_visual_localization_msgsVisualLocAddPlaceGoal :: W.Decoder Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal
readRos1Pal_visual_localization_msgsVisualLocAddPlaceGoal = do
  let value = Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal 
  case encodeRos1Pal_visual_localization_msgsVisualLocAddPlaceGoal value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_visual_localization_msgsVisualLocAddPlaceGoal :: B.ByteString -> Either Word32 Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal
decodeRos1Pal_visual_localization_msgsVisualLocAddPlaceGoal = W.runDecoder 0 readRos1Pal_visual_localization_msgsVisualLocAddPlaceGoal
instance Canonical Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_visual_localization_msgsVisualLocAddPlaceGoal
  readValue = readRos1Pal_visual_localization_msgsVisualLocAddPlaceGoal
data Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult = Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult
  {
    -- | \@brief pal_visual_localization_msgs/VisualLocAddPlaceResult.res: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_visual_localization_msgsVisualLocAddPlaceResult_res :: Bool
  } deriving (Eq, Show)
defaultRos1Pal_visual_localization_msgsVisualLocAddPlaceResult :: Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult
defaultRos1Pal_visual_localization_msgsVisualLocAddPlaceResult = Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult (False)
ros1Pal_visual_localization_msgsVisualLocAddPlaceResultCodecIdentity :: String
ros1Pal_visual_localization_msgsVisualLocAddPlaceResultCodecIdentity = "UWVMROS1_604eadb052736d8c3999fff8ab635886d87f779943632ce01e89742d591c265a"
encodeRos1Pal_visual_localization_msgsVisualLocAddPlaceResult :: Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult -> Either Word32 B.ByteString
encodeRos1Pal_visual_localization_msgsVisualLocAddPlaceResult value = do
  b0 <- W.encodeBool (ros1Pal_visual_localization_msgsVisualLocAddPlaceResult_res value)
  W.bounded 1 [b0]
readRos1Pal_visual_localization_msgsVisualLocAddPlaceResult :: W.Decoder Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult
readRos1Pal_visual_localization_msgsVisualLocAddPlaceResult = do
  a0 <- W.boolean
  let value = Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult a0
  case encodeRos1Pal_visual_localization_msgsVisualLocAddPlaceResult value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_visual_localization_msgsVisualLocAddPlaceResult :: B.ByteString -> Either Word32 Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult
decodeRos1Pal_visual_localization_msgsVisualLocAddPlaceResult = W.runDecoder 1 readRos1Pal_visual_localization_msgsVisualLocAddPlaceResult
instance Canonical Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult where
  maximumBytes _ = 1
  encodeValue = encodeRos1Pal_visual_localization_msgsVisualLocAddPlaceResult
  readValue = readRos1Pal_visual_localization_msgsVisualLocAddPlaceResult
data Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback = Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback deriving (Eq, Show)
defaultRos1Pal_visual_localization_msgsVisualLocAddPlaceFeedback :: Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback
defaultRos1Pal_visual_localization_msgsVisualLocAddPlaceFeedback = Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback 
ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedbackCodecIdentity :: String
ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedbackCodecIdentity = "UWVMROS1_ceb1b2594d5bf763de97096f0bb683276be372393e779d3b3334b3adc7a6f3b6"
encodeRos1Pal_visual_localization_msgsVisualLocAddPlaceFeedback :: Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback -> Either Word32 B.ByteString
encodeRos1Pal_visual_localization_msgsVisualLocAddPlaceFeedback value = do
  W.bounded 0 []
readRos1Pal_visual_localization_msgsVisualLocAddPlaceFeedback :: W.Decoder Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback
readRos1Pal_visual_localization_msgsVisualLocAddPlaceFeedback = do
  let value = Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback 
  case encodeRos1Pal_visual_localization_msgsVisualLocAddPlaceFeedback value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_visual_localization_msgsVisualLocAddPlaceFeedback :: B.ByteString -> Either Word32 Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback
decodeRos1Pal_visual_localization_msgsVisualLocAddPlaceFeedback = W.runDecoder 0 readRos1Pal_visual_localization_msgsVisualLocAddPlaceFeedback
instance Canonical Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_visual_localization_msgsVisualLocAddPlaceFeedback
  readValue = readRos1Pal_visual_localization_msgsVisualLocAddPlaceFeedback
data Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal = Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal deriving (Eq, Show)
defaultRos1Pal_visual_localization_msgsVisualLocRecognizeGoal :: Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal
defaultRos1Pal_visual_localization_msgsVisualLocRecognizeGoal = Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal 
ros1Pal_visual_localization_msgsVisualLocRecognizeGoalCodecIdentity :: String
ros1Pal_visual_localization_msgsVisualLocRecognizeGoalCodecIdentity = "UWVMROS1_b1aa9fe3f12a81861385e9421e153869ee3f2ba0949fe55c0ed0fe7170ae4c4a"
encodeRos1Pal_visual_localization_msgsVisualLocRecognizeGoal :: Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal -> Either Word32 B.ByteString
encodeRos1Pal_visual_localization_msgsVisualLocRecognizeGoal value = do
  W.bounded 0 []
readRos1Pal_visual_localization_msgsVisualLocRecognizeGoal :: W.Decoder Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal
readRos1Pal_visual_localization_msgsVisualLocRecognizeGoal = do
  let value = Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal 
  case encodeRos1Pal_visual_localization_msgsVisualLocRecognizeGoal value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_visual_localization_msgsVisualLocRecognizeGoal :: B.ByteString -> Either Word32 Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal
decodeRos1Pal_visual_localization_msgsVisualLocRecognizeGoal = W.runDecoder 0 readRos1Pal_visual_localization_msgsVisualLocRecognizeGoal
instance Canonical Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_visual_localization_msgsVisualLocRecognizeGoal
  readValue = readRos1Pal_visual_localization_msgsVisualLocRecognizeGoal
data Ros1Pal_visual_localization_msgsVisualLocRecognizeResult = Ros1Pal_visual_localization_msgsVisualLocRecognizeResult
  {
    -- | \@brief pal_visual_localization_msgs/VisualLocRecognizeResult.success: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_visual_localization_msgsVisualLocRecognizeResult; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_visual_localization_msgsVisualLocRecognizeResult_success :: Bool
  ,
    -- | \@brief pal_visual_localization_msgs/VisualLocRecognizeResult.confidence: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_visual_localization_msgsVisualLocRecognizeResult; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_visual_localization_msgsVisualLocRecognizeResult_confidence :: Double
  ,
    -- | \@brief pal_visual_localization_msgs/VisualLocRecognizeResult.estimatedPose: geometry_msgs/PoseWithCovarianceStamped.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_visual_localization_msgsVisualLocRecognizeResult; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_visual_localization_msgsVisualLocRecognizeResult_estimatedPose :: Ros1Geometry_msgsPoseWithCovarianceStamped
  } deriving (Eq, Show)
defaultRos1Pal_visual_localization_msgsVisualLocRecognizeResult :: Ros1Pal_visual_localization_msgsVisualLocRecognizeResult
defaultRos1Pal_visual_localization_msgsVisualLocRecognizeResult =
    Ros1Pal_visual_localization_msgsVisualLocRecognizeResult
    (False)
    (0)
    (defaultRos1Geometry_msgsPoseWithCovarianceStamped)
ros1Pal_visual_localization_msgsVisualLocRecognizeResultCodecIdentity :: String
ros1Pal_visual_localization_msgsVisualLocRecognizeResultCodecIdentity = "UWVMROS1_e20e2e4ba374756256518e0e7075689be3c87660703926ab5d1cb33c8ff1c6da"
encodeRos1Pal_visual_localization_msgsVisualLocRecognizeResult :: Ros1Pal_visual_localization_msgsVisualLocRecognizeResult -> Either Word32 B.ByteString
encodeRos1Pal_visual_localization_msgsVisualLocRecognizeResult value = do
  b0 <- W.encodeBool (ros1Pal_visual_localization_msgsVisualLocRecognizeResult_success value)
  b1 <- W.encodeFloat64 (ros1Pal_visual_localization_msgsVisualLocRecognizeResult_confidence value)
  b2 <- encodeRos1Geometry_msgsPoseWithCovarianceStamped (ros1Pal_visual_localization_msgsVisualLocRecognizeResult_estimatedPose value)
  W.bounded 497 [b0, b1, b2]
readRos1Pal_visual_localization_msgsVisualLocRecognizeResult :: W.Decoder Ros1Pal_visual_localization_msgsVisualLocRecognizeResult
readRos1Pal_visual_localization_msgsVisualLocRecognizeResult = do
  a0 <- W.boolean
  a1 <- W.float64
  a2 <- readRos1Geometry_msgsPoseWithCovarianceStamped
  let value = Ros1Pal_visual_localization_msgsVisualLocRecognizeResult a0 a1 a2
  case encodeRos1Pal_visual_localization_msgsVisualLocRecognizeResult value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_visual_localization_msgsVisualLocRecognizeResult :: B.ByteString -> Either Word32 Ros1Pal_visual_localization_msgsVisualLocRecognizeResult
decodeRos1Pal_visual_localization_msgsVisualLocRecognizeResult = W.runDecoder 497 readRos1Pal_visual_localization_msgsVisualLocRecognizeResult
instance Canonical Ros1Pal_visual_localization_msgsVisualLocRecognizeResult where
  maximumBytes _ = 497
  encodeValue = encodeRos1Pal_visual_localization_msgsVisualLocRecognizeResult
  readValue = readRos1Pal_visual_localization_msgsVisualLocRecognizeResult
data Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback = Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback deriving (Eq, Show)
defaultRos1Pal_visual_localization_msgsVisualLocRecognizeFeedback :: Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback
defaultRos1Pal_visual_localization_msgsVisualLocRecognizeFeedback = Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback 
ros1Pal_visual_localization_msgsVisualLocRecognizeFeedbackCodecIdentity :: String
ros1Pal_visual_localization_msgsVisualLocRecognizeFeedbackCodecIdentity = "UWVMROS1_07206e6717d8ba2621e7a00f69d65a2e56102b64e84e0ef66e44e93a4468e65e"
encodeRos1Pal_visual_localization_msgsVisualLocRecognizeFeedback :: Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback -> Either Word32 B.ByteString
encodeRos1Pal_visual_localization_msgsVisualLocRecognizeFeedback value = do
  W.bounded 0 []
readRos1Pal_visual_localization_msgsVisualLocRecognizeFeedback :: W.Decoder Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback
readRos1Pal_visual_localization_msgsVisualLocRecognizeFeedback = do
  let value = Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback 
  case encodeRos1Pal_visual_localization_msgsVisualLocRecognizeFeedback value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_visual_localization_msgsVisualLocRecognizeFeedback :: B.ByteString -> Either Word32 Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback
decodeRos1Pal_visual_localization_msgsVisualLocRecognizeFeedback = W.runDecoder 0 readRos1Pal_visual_localization_msgsVisualLocRecognizeFeedback
instance Canonical Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_visual_localization_msgsVisualLocRecognizeFeedback
  readValue = readRos1Pal_visual_localization_msgsVisualLocRecognizeFeedback
data Ros1Pal_walking_msgsContactState = Ros1Pal_walking_msgsContactState
  {
    -- | \@brief pal_walking_msgs/ContactState.type: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_walking_msgsContactState; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_walking_msgsContactState_type :: Word8
  } deriving (Eq, Show)
defaultRos1Pal_walking_msgsContactState :: Ros1Pal_walking_msgsContactState
defaultRos1Pal_walking_msgsContactState = Ros1Pal_walking_msgsContactState (0)
ros1Pal_walking_msgsContactStateCodecIdentity :: String
ros1Pal_walking_msgsContactStateCodecIdentity = "UWVMROS1_632dc784a31db78e0b56fe3c2f324e19dcdcac6d6bdc72e0f9fab21e2a8ea3a8"
ros1Pal_walking_msgsContactState_TYPE_DS :: Word8
ros1Pal_walking_msgsContactState_TYPE_DS = 0
ros1Pal_walking_msgsContactState_TYPE_LSS :: Word8
ros1Pal_walking_msgsContactState_TYPE_LSS = 1
ros1Pal_walking_msgsContactState_TYPE_RSS :: Word8
ros1Pal_walking_msgsContactState_TYPE_RSS = 2
encodeRos1Pal_walking_msgsContactState :: Ros1Pal_walking_msgsContactState -> Either Word32 B.ByteString
encodeRos1Pal_walking_msgsContactState value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros1Pal_walking_msgsContactState_type value))
  W.bounded 1 [b0]
readRos1Pal_walking_msgsContactState :: W.Decoder Ros1Pal_walking_msgsContactState
readRos1Pal_walking_msgsContactState = do
  a0 <- fromIntegral <$> W.unsigned 1
  let value = Ros1Pal_walking_msgsContactState a0
  case encodeRos1Pal_walking_msgsContactState value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_walking_msgsContactState :: B.ByteString -> Either Word32 Ros1Pal_walking_msgsContactState
decodeRos1Pal_walking_msgsContactState = W.runDecoder 1 readRos1Pal_walking_msgsContactState
instance Canonical Ros1Pal_walking_msgsContactState where
  maximumBytes _ = 1
  encodeValue = encodeRos1Pal_walking_msgsContactState
  readValue = readRos1Pal_walking_msgsContactState
data Ros1Pal_walking_msgsMoveHipFeetRequest = Ros1Pal_walking_msgsMoveHipFeetRequest
  {
    -- | \@brief pal_walking_msgs/MoveHipFeetRequest.hip_poses: geometry_msgs/PoseArray.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_walking_msgsMoveHipFeetRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_walking_msgsMoveHipFeetRequest_hip_poses :: Ros1Geometry_msgsPoseArray
  ,
    -- | \@brief pal_walking_msgs/MoveHipFeetRequest.left_foot_poses: geometry_msgs/PoseArray.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_walking_msgsMoveHipFeetRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_walking_msgsMoveHipFeetRequest_left_foot_poses :: Ros1Geometry_msgsPoseArray
  ,
    -- | \@brief pal_walking_msgs/MoveHipFeetRequest.right_foot_poses: geometry_msgs/PoseArray.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_walking_msgsMoveHipFeetRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_walking_msgsMoveHipFeetRequest_right_foot_poses :: Ros1Geometry_msgsPoseArray
  ,
    -- | \@brief pal_walking_msgs/MoveHipFeetRequest.times_after_previous: duration; 0..16 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_walking_msgsMoveHipFeetRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_walking_msgsMoveHipFeetRequest_times_after_previous :: [Ros1Duration]
  } deriving (Eq, Show)
defaultRos1Pal_walking_msgsMoveHipFeetRequest :: Ros1Pal_walking_msgsMoveHipFeetRequest
defaultRos1Pal_walking_msgsMoveHipFeetRequest =
    Ros1Pal_walking_msgsMoveHipFeetRequest
    (defaultRos1Geometry_msgsPoseArray)
    (defaultRos1Geometry_msgsPoseArray)
    (defaultRos1Geometry_msgsPoseArray)
    ([])
ros1Pal_walking_msgsMoveHipFeetRequestCodecIdentity :: String
ros1Pal_walking_msgsMoveHipFeetRequestCodecIdentity = "UWVMROS1_5fb083fec01e8eab76d0023802e8ec7590fc993ba7a68d1a2033c43065131c5c"
encodeRos1Pal_walking_msgsMoveHipFeetRequest :: Ros1Pal_walking_msgsMoveHipFeetRequest -> Either Word32 B.ByteString
encodeRos1Pal_walking_msgsMoveHipFeetRequest value = do
  b0 <- encodeRos1Geometry_msgsPoseArray (ros1Pal_walking_msgsMoveHipFeetRequest_hip_poses value)
  b1 <- encodeRos1Geometry_msgsPoseArray (ros1Pal_walking_msgsMoveHipFeetRequest_left_foot_poses value)
  b2 <- encodeRos1Geometry_msgsPoseArray (ros1Pal_walking_msgsMoveHipFeetRequest_right_foot_poses value)
  if length (ros1Pal_walking_msgsMoveHipFeetRequest_times_after_previous value) > 16 then Left 22 else Right ()
  prefix3 <- W.encodeCount 16 (length (ros1Pal_walking_msgsMoveHipFeetRequest_times_after_previous value))
  b3 <- B.concat <$> mapM (\e -> encodeRos1Duration (e)) (ros1Pal_walking_msgsMoveHipFeetRequest_times_after_previous value)
  W.bounded 1248 [b0, b1, b2, prefix3, b3]
readRos1Pal_walking_msgsMoveHipFeetRequest :: W.Decoder Ros1Pal_walking_msgsMoveHipFeetRequest
readRos1Pal_walking_msgsMoveHipFeetRequest = do
  a0 <- readRos1Geometry_msgsPoseArray
  a1 <- readRos1Geometry_msgsPoseArray
  a2 <- readRos1Geometry_msgsPoseArray
  count3 <- W.count 16
  a3 <- replicateM count3 (readRos1Duration)
  let value = Ros1Pal_walking_msgsMoveHipFeetRequest a0 a1 a2 a3
  case encodeRos1Pal_walking_msgsMoveHipFeetRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_walking_msgsMoveHipFeetRequest :: B.ByteString -> Either Word32 Ros1Pal_walking_msgsMoveHipFeetRequest
decodeRos1Pal_walking_msgsMoveHipFeetRequest = W.runDecoder 1248 readRos1Pal_walking_msgsMoveHipFeetRequest
instance Canonical Ros1Pal_walking_msgsMoveHipFeetRequest where
  maximumBytes _ = 1248
  encodeValue = encodeRos1Pal_walking_msgsMoveHipFeetRequest
  readValue = readRos1Pal_walking_msgsMoveHipFeetRequest
data Ros1Pal_walking_msgsMoveHipFeetResponse = Ros1Pal_walking_msgsMoveHipFeetResponse deriving (Eq, Show)
defaultRos1Pal_walking_msgsMoveHipFeetResponse :: Ros1Pal_walking_msgsMoveHipFeetResponse
defaultRos1Pal_walking_msgsMoveHipFeetResponse = Ros1Pal_walking_msgsMoveHipFeetResponse 
ros1Pal_walking_msgsMoveHipFeetResponseCodecIdentity :: String
ros1Pal_walking_msgsMoveHipFeetResponseCodecIdentity = "UWVMROS1_d5adee26d6498a466a886f9869495d90adae91081287903faa9b90ac6ab2306e"
encodeRos1Pal_walking_msgsMoveHipFeetResponse :: Ros1Pal_walking_msgsMoveHipFeetResponse -> Either Word32 B.ByteString
encodeRos1Pal_walking_msgsMoveHipFeetResponse value = do
  W.bounded 0 []
readRos1Pal_walking_msgsMoveHipFeetResponse :: W.Decoder Ros1Pal_walking_msgsMoveHipFeetResponse
readRos1Pal_walking_msgsMoveHipFeetResponse = do
  let value = Ros1Pal_walking_msgsMoveHipFeetResponse 
  case encodeRos1Pal_walking_msgsMoveHipFeetResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_walking_msgsMoveHipFeetResponse :: B.ByteString -> Either Word32 Ros1Pal_walking_msgsMoveHipFeetResponse
decodeRos1Pal_walking_msgsMoveHipFeetResponse = W.runDecoder 0 readRos1Pal_walking_msgsMoveHipFeetResponse
instance Canonical Ros1Pal_walking_msgsMoveHipFeetResponse where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_walking_msgsMoveHipFeetResponse
  readValue = readRos1Pal_walking_msgsMoveHipFeetResponse
data Ros1Pal_walking_msgsSMStatus = Ros1Pal_walking_msgsSMStatus
  {
    -- | \@brief pal_walking_msgs/SMStatus.left_foot_pose: geometry_msgs/Pose.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_walking_msgsSMStatus; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_walking_msgsSMStatus_left_foot_pose :: Ros1Geometry_msgsPose
  ,
    -- | \@brief pal_walking_msgs/SMStatus.right_foot_pose: geometry_msgs/Pose.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_walking_msgsSMStatus; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_walking_msgsSMStatus_right_foot_pose :: Ros1Geometry_msgsPose
  ,
    -- | \@brief pal_walking_msgs/SMStatus.stance_foot_side: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_walking_msgsSMStatus; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_walking_msgsSMStatus_stance_foot_side :: Word8
  ,
    -- | \@brief pal_walking_msgs/SMStatus.future_swing_landing_pose: geometry_msgs/Pose.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_walking_msgsSMStatus; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_walking_msgsSMStatus_future_swing_landing_pose :: Ros1Geometry_msgsPose
  ,
    -- | \@brief pal_walking_msgs/SMStatus.future_swing_side: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_walking_msgsSMStatus; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_walking_msgsSMStatus_future_swing_side :: Word8
  } deriving (Eq, Show)
defaultRos1Pal_walking_msgsSMStatus :: Ros1Pal_walking_msgsSMStatus
defaultRos1Pal_walking_msgsSMStatus =
    Ros1Pal_walking_msgsSMStatus
    (defaultRos1Geometry_msgsPose)
    (defaultRos1Geometry_msgsPose)
    (0)
    (defaultRos1Geometry_msgsPose)
    (0)
ros1Pal_walking_msgsSMStatusCodecIdentity :: String
ros1Pal_walking_msgsSMStatusCodecIdentity = "UWVMROS1_490c0966b36899ce64a1271d9c1eaf9802b9285eb7835b0565a3e2bbf01a0c6e"
ros1Pal_walking_msgsSMStatus_right :: Word8
ros1Pal_walking_msgsSMStatus_right = 1
ros1Pal_walking_msgsSMStatus_left :: Word8
ros1Pal_walking_msgsSMStatus_left = 0
encodeRos1Pal_walking_msgsSMStatus :: Ros1Pal_walking_msgsSMStatus -> Either Word32 B.ByteString
encodeRos1Pal_walking_msgsSMStatus value = do
  b0 <- encodeRos1Geometry_msgsPose (ros1Pal_walking_msgsSMStatus_left_foot_pose value)
  b1 <- encodeRos1Geometry_msgsPose (ros1Pal_walking_msgsSMStatus_right_foot_pose value)
  b2 <- W.encodeUnsigned 1 (fromIntegral (ros1Pal_walking_msgsSMStatus_stance_foot_side value))
  b3 <- encodeRos1Geometry_msgsPose (ros1Pal_walking_msgsSMStatus_future_swing_landing_pose value)
  b4 <- W.encodeUnsigned 1 (fromIntegral (ros1Pal_walking_msgsSMStatus_future_swing_side value))
  W.bounded 170 [b0, b1, b2, b3, b4]
readRos1Pal_walking_msgsSMStatus :: W.Decoder Ros1Pal_walking_msgsSMStatus
readRos1Pal_walking_msgsSMStatus = do
  a0 <- readRos1Geometry_msgsPose
  a1 <- readRos1Geometry_msgsPose
  a2 <- fromIntegral <$> W.unsigned 1
  a3 <- readRos1Geometry_msgsPose
  a4 <- fromIntegral <$> W.unsigned 1
  let value = Ros1Pal_walking_msgsSMStatus a0 a1 a2 a3 a4
  case encodeRos1Pal_walking_msgsSMStatus value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_walking_msgsSMStatus :: B.ByteString -> Either Word32 Ros1Pal_walking_msgsSMStatus
decodeRos1Pal_walking_msgsSMStatus = W.runDecoder 170 readRos1Pal_walking_msgsSMStatus
instance Canonical Ros1Pal_walking_msgsSMStatus where
  maximumBytes _ = 170
  encodeValue = encodeRos1Pal_walking_msgsSMStatus
  readValue = readRos1Pal_walking_msgsSMStatus
data Ros1Pal_walking_msgsSitRequest = Ros1Pal_walking_msgsSitRequest
  {
    -- | \@brief pal_walking_msgs/SitRequest.down: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_walking_msgsSitRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_walking_msgsSitRequest_down :: Bool
  ,
    -- | \@brief pal_walking_msgs/SitRequest.weight_threshold: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_walking_msgsSitRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_walking_msgsSitRequest_weight_threshold :: Double
  } deriving (Eq, Show)
defaultRos1Pal_walking_msgsSitRequest :: Ros1Pal_walking_msgsSitRequest
defaultRos1Pal_walking_msgsSitRequest = Ros1Pal_walking_msgsSitRequest (False) (0)
ros1Pal_walking_msgsSitRequestCodecIdentity :: String
ros1Pal_walking_msgsSitRequestCodecIdentity = "UWVMROS1_8dc49a028691c5be0752fad0ad7cf1d2d4cc3e093ff8fe53b0f0f5dcf66241da"
encodeRos1Pal_walking_msgsSitRequest :: Ros1Pal_walking_msgsSitRequest -> Either Word32 B.ByteString
encodeRos1Pal_walking_msgsSitRequest value = do
  b0 <- W.encodeBool (ros1Pal_walking_msgsSitRequest_down value)
  b1 <- W.encodeFloat64 (ros1Pal_walking_msgsSitRequest_weight_threshold value)
  W.bounded 9 [b0, b1]
readRos1Pal_walking_msgsSitRequest :: W.Decoder Ros1Pal_walking_msgsSitRequest
readRos1Pal_walking_msgsSitRequest = do
  a0 <- W.boolean
  a1 <- W.float64
  let value = Ros1Pal_walking_msgsSitRequest a0 a1
  case encodeRos1Pal_walking_msgsSitRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_walking_msgsSitRequest :: B.ByteString -> Either Word32 Ros1Pal_walking_msgsSitRequest
decodeRos1Pal_walking_msgsSitRequest = W.runDecoder 9 readRos1Pal_walking_msgsSitRequest
instance Canonical Ros1Pal_walking_msgsSitRequest where
  maximumBytes _ = 9
  encodeValue = encodeRos1Pal_walking_msgsSitRequest
  readValue = readRos1Pal_walking_msgsSitRequest
data Ros1Pal_walking_msgsSitResponse = Ros1Pal_walking_msgsSitResponse deriving (Eq, Show)
defaultRos1Pal_walking_msgsSitResponse :: Ros1Pal_walking_msgsSitResponse
defaultRos1Pal_walking_msgsSitResponse = Ros1Pal_walking_msgsSitResponse 
ros1Pal_walking_msgsSitResponseCodecIdentity :: String
ros1Pal_walking_msgsSitResponseCodecIdentity = "UWVMROS1_6af9975562de7fe4864f8409ec5c1210f5d144c872e0ce9b553a391a1790df35"
encodeRos1Pal_walking_msgsSitResponse :: Ros1Pal_walking_msgsSitResponse -> Either Word32 B.ByteString
encodeRos1Pal_walking_msgsSitResponse value = do
  W.bounded 0 []
readRos1Pal_walking_msgsSitResponse :: W.Decoder Ros1Pal_walking_msgsSitResponse
readRos1Pal_walking_msgsSitResponse = do
  let value = Ros1Pal_walking_msgsSitResponse 
  case encodeRos1Pal_walking_msgsSitResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_walking_msgsSitResponse :: B.ByteString -> Either Word32 Ros1Pal_walking_msgsSitResponse
decodeRos1Pal_walking_msgsSitResponse = W.runDecoder 0 readRos1Pal_walking_msgsSitResponse
instance Canonical Ros1Pal_walking_msgsSitResponse where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_walking_msgsSitResponse
  readValue = readRos1Pal_walking_msgsSitResponse
data Ros1Pal_walking_msgsStepOverRequest = Ros1Pal_walking_msgsStepOverRequest
  {
    -- | \@brief pal_walking_msgs/StepOverRequest.step_length: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_walking_msgsStepOverRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_walking_msgsStepOverRequest_step_length :: Double
  ,
    -- | \@brief pal_walking_msgs/StepOverRequest.step_time: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_walking_msgsStepOverRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_walking_msgsStepOverRequest_step_time :: Double
  ,
    -- | \@brief pal_walking_msgs/StepOverRequest.step_height: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_walking_msgsStepOverRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_walking_msgsStepOverRequest_step_height :: Double
  ,
    -- | \@brief pal_walking_msgs/StepOverRequest.z_lipm: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_walking_msgsStepOverRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_walking_msgsStepOverRequest_z_lipm :: Double
  } deriving (Eq, Show)
defaultRos1Pal_walking_msgsStepOverRequest :: Ros1Pal_walking_msgsStepOverRequest
defaultRos1Pal_walking_msgsStepOverRequest = Ros1Pal_walking_msgsStepOverRequest (0) (0) (0) (0)
ros1Pal_walking_msgsStepOverRequestCodecIdentity :: String
ros1Pal_walking_msgsStepOverRequestCodecIdentity = "UWVMROS1_00736de4ce830d33f33d93ca8c703dfc555f0ecc2ac86d90002929f4cefaedde"
encodeRos1Pal_walking_msgsStepOverRequest :: Ros1Pal_walking_msgsStepOverRequest -> Either Word32 B.ByteString
encodeRos1Pal_walking_msgsStepOverRequest value = do
  b0 <- W.encodeFloat64 (ros1Pal_walking_msgsStepOverRequest_step_length value)
  b1 <- W.encodeFloat64 (ros1Pal_walking_msgsStepOverRequest_step_time value)
  b2 <- W.encodeFloat64 (ros1Pal_walking_msgsStepOverRequest_step_height value)
  b3 <- W.encodeFloat64 (ros1Pal_walking_msgsStepOverRequest_z_lipm value)
  W.bounded 32 [b0, b1, b2, b3]
readRos1Pal_walking_msgsStepOverRequest :: W.Decoder Ros1Pal_walking_msgsStepOverRequest
readRos1Pal_walking_msgsStepOverRequest = do
  a0 <- W.float64
  a1 <- W.float64
  a2 <- W.float64
  a3 <- W.float64
  let value = Ros1Pal_walking_msgsStepOverRequest a0 a1 a2 a3
  case encodeRos1Pal_walking_msgsStepOverRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_walking_msgsStepOverRequest :: B.ByteString -> Either Word32 Ros1Pal_walking_msgsStepOverRequest
decodeRos1Pal_walking_msgsStepOverRequest = W.runDecoder 32 readRos1Pal_walking_msgsStepOverRequest
instance Canonical Ros1Pal_walking_msgsStepOverRequest where
  maximumBytes _ = 32
  encodeValue = encodeRos1Pal_walking_msgsStepOverRequest
  readValue = readRos1Pal_walking_msgsStepOverRequest
data Ros1Pal_walking_msgsStepOverResponse = Ros1Pal_walking_msgsStepOverResponse
  {
    -- | \@brief pal_walking_msgs/StepOverResponse.result: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_walking_msgsStepOverResponse; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_walking_msgsStepOverResponse_result :: T.Text
  } deriving (Eq, Show)
defaultRos1Pal_walking_msgsStepOverResponse :: Ros1Pal_walking_msgsStepOverResponse
defaultRos1Pal_walking_msgsStepOverResponse = Ros1Pal_walking_msgsStepOverResponse (T.empty)
ros1Pal_walking_msgsStepOverResponseCodecIdentity :: String
ros1Pal_walking_msgsStepOverResponseCodecIdentity = "UWVMROS1_e7803ee0f8ffd0f2c1eb698670454e2eaae232d60f629e5f0b3b57f876dce944"
encodeRos1Pal_walking_msgsStepOverResponse :: Ros1Pal_walking_msgsStepOverResponse -> Either Word32 B.ByteString
encodeRos1Pal_walking_msgsStepOverResponse value = do
  b0 <- W.encodeText 128 True (ros1Pal_walking_msgsStepOverResponse_result value)
  W.bounded 132 [b0]
readRos1Pal_walking_msgsStepOverResponse :: W.Decoder Ros1Pal_walking_msgsStepOverResponse
readRos1Pal_walking_msgsStepOverResponse = do
  a0 <- W.text 128 True
  let value = Ros1Pal_walking_msgsStepOverResponse a0
  case encodeRos1Pal_walking_msgsStepOverResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_walking_msgsStepOverResponse :: B.ByteString -> Either Word32 Ros1Pal_walking_msgsStepOverResponse
decodeRos1Pal_walking_msgsStepOverResponse = W.runDecoder 132 readRos1Pal_walking_msgsStepOverResponse
instance Canonical Ros1Pal_walking_msgsStepOverResponse where
  maximumBytes _ = 132
  encodeValue = encodeRos1Pal_walking_msgsStepOverResponse
  readValue = readRos1Pal_walking_msgsStepOverResponse
data Ros1Pal_walking_msgsWalkStepsRequest = Ros1Pal_walking_msgsWalkStepsRequest
  {
    -- | \@brief pal_walking_msgs/WalkStepsRequest.nsteps: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_walking_msgsWalkStepsRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_walking_msgsWalkStepsRequest_nsteps :: Int32
  ,
    -- | \@brief pal_walking_msgs/WalkStepsRequest.step_length: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_walking_msgsWalkStepsRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_walking_msgsWalkStepsRequest_step_length :: Double
  ,
    -- | \@brief pal_walking_msgs/WalkStepsRequest.step_time: float64.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_walking_msgsWalkStepsRequest; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_walking_msgsWalkStepsRequest_step_time :: Double
  } deriving (Eq, Show)
defaultRos1Pal_walking_msgsWalkStepsRequest :: Ros1Pal_walking_msgsWalkStepsRequest
defaultRos1Pal_walking_msgsWalkStepsRequest = Ros1Pal_walking_msgsWalkStepsRequest (0) (0) (0)
ros1Pal_walking_msgsWalkStepsRequestCodecIdentity :: String
ros1Pal_walking_msgsWalkStepsRequestCodecIdentity = "UWVMROS1_eab28f422b38937bef44f8c9ef8c5f08283d3fefd0f16865a91e641b489e446a"
encodeRos1Pal_walking_msgsWalkStepsRequest :: Ros1Pal_walking_msgsWalkStepsRequest -> Either Word32 B.ByteString
encodeRos1Pal_walking_msgsWalkStepsRequest value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros1Pal_walking_msgsWalkStepsRequest_nsteps value))
  b1 <- W.encodeFloat64 (ros1Pal_walking_msgsWalkStepsRequest_step_length value)
  b2 <- W.encodeFloat64 (ros1Pal_walking_msgsWalkStepsRequest_step_time value)
  W.bounded 20 [b0, b1, b2]
readRos1Pal_walking_msgsWalkStepsRequest :: W.Decoder Ros1Pal_walking_msgsWalkStepsRequest
readRos1Pal_walking_msgsWalkStepsRequest = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- W.float64
  a2 <- W.float64
  let value = Ros1Pal_walking_msgsWalkStepsRequest a0 a1 a2
  case encodeRos1Pal_walking_msgsWalkStepsRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_walking_msgsWalkStepsRequest :: B.ByteString -> Either Word32 Ros1Pal_walking_msgsWalkStepsRequest
decodeRos1Pal_walking_msgsWalkStepsRequest = W.runDecoder 20 readRos1Pal_walking_msgsWalkStepsRequest
instance Canonical Ros1Pal_walking_msgsWalkStepsRequest where
  maximumBytes _ = 20
  encodeValue = encodeRos1Pal_walking_msgsWalkStepsRequest
  readValue = readRos1Pal_walking_msgsWalkStepsRequest
data Ros1Pal_walking_msgsWalkStepsResponse = Ros1Pal_walking_msgsWalkStepsResponse deriving (Eq, Show)
defaultRos1Pal_walking_msgsWalkStepsResponse :: Ros1Pal_walking_msgsWalkStepsResponse
defaultRos1Pal_walking_msgsWalkStepsResponse = Ros1Pal_walking_msgsWalkStepsResponse 
ros1Pal_walking_msgsWalkStepsResponseCodecIdentity :: String
ros1Pal_walking_msgsWalkStepsResponseCodecIdentity = "UWVMROS1_69cf3d1ffea1bbf362863bbaf88af9177ab0324312b2549fb248d3fa21a9522f"
encodeRos1Pal_walking_msgsWalkStepsResponse :: Ros1Pal_walking_msgsWalkStepsResponse -> Either Word32 B.ByteString
encodeRos1Pal_walking_msgsWalkStepsResponse value = do
  W.bounded 0 []
readRos1Pal_walking_msgsWalkStepsResponse :: W.Decoder Ros1Pal_walking_msgsWalkStepsResponse
readRos1Pal_walking_msgsWalkStepsResponse = do
  let value = Ros1Pal_walking_msgsWalkStepsResponse 
  case encodeRos1Pal_walking_msgsWalkStepsResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_walking_msgsWalkStepsResponse :: B.ByteString -> Either Word32 Ros1Pal_walking_msgsWalkStepsResponse
decodeRos1Pal_walking_msgsWalkStepsResponse = W.runDecoder 0 readRos1Pal_walking_msgsWalkStepsResponse
instance Canonical Ros1Pal_walking_msgsWalkStepsResponse where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_walking_msgsWalkStepsResponse
  readValue = readRos1Pal_walking_msgsWalkStepsResponse
data Ros1Pal_walking_msgsWalkingStatus = Ros1Pal_walking_msgsWalkingStatus
  {
    -- | \@brief pal_walking_msgs/WalkingStatus.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_walking_msgsWalkingStatus; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_walking_msgsWalkingStatus_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief pal_walking_msgs/WalkingStatus.hip_reference_pose: geometry_msgs/Pose.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_walking_msgsWalkingStatus; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_walking_msgsWalkingStatus_hip_reference_pose :: Ros1Geometry_msgsPose
  ,
    -- | \@brief pal_walking_msgs/WalkingStatus.foot_reference_pose: geometry_msgs/Pose; exactly 2 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_walking_msgsWalkingStatus; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_walking_msgsWalkingStatus_foot_reference_pose :: [Ros1Geometry_msgsPose]
  ,
    -- | \@brief pal_walking_msgs/WalkingStatus.zmp_reference: geometry_msgs/Point.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_walking_msgsWalkingStatus; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_walking_msgsWalkingStatus_zmp_reference :: Ros1Geometry_msgsPoint
  } deriving (Eq, Show)
defaultRos1Pal_walking_msgsWalkingStatus :: Ros1Pal_walking_msgsWalkingStatus
defaultRos1Pal_walking_msgsWalkingStatus =
    Ros1Pal_walking_msgsWalkingStatus
    (defaultRos1Std_msgsHeader)
    (defaultRos1Geometry_msgsPose)
    (replicate 2 (defaultRos1Geometry_msgsPose))
    (defaultRos1Geometry_msgsPoint)
ros1Pal_walking_msgsWalkingStatusCodecIdentity :: String
ros1Pal_walking_msgsWalkingStatusCodecIdentity = "UWVMROS1_8831e9c68eeb3e065e2986f7671b2925425e07b18a48228e977f984fb9c09e02"
encodeRos1Pal_walking_msgsWalkingStatus :: Ros1Pal_walking_msgsWalkingStatus -> Either Word32 B.ByteString
encodeRos1Pal_walking_msgsWalkingStatus value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Pal_walking_msgsWalkingStatus_header value)
  b1 <- encodeRos1Geometry_msgsPose (ros1Pal_walking_msgsWalkingStatus_hip_reference_pose value)
  if length (ros1Pal_walking_msgsWalkingStatus_foot_reference_pose value) /= 2 then Left 22 else Right ()
  b2 <- B.concat <$> mapM (\e -> encodeRos1Geometry_msgsPose (e)) (ros1Pal_walking_msgsWalkingStatus_foot_reference_pose value)
  b3 <- encodeRos1Geometry_msgsPoint (ros1Pal_walking_msgsWalkingStatus_zmp_reference value)
  W.bounded 336 [b0, b1, b2, b3]
readRos1Pal_walking_msgsWalkingStatus :: W.Decoder Ros1Pal_walking_msgsWalkingStatus
readRos1Pal_walking_msgsWalkingStatus = do
  a0 <- readRos1Std_msgsHeader
  a1 <- readRos1Geometry_msgsPose
  a2 <- replicateM 2 (readRos1Geometry_msgsPose)
  a3 <- readRos1Geometry_msgsPoint
  let value = Ros1Pal_walking_msgsWalkingStatus a0 a1 a2 a3
  case encodeRos1Pal_walking_msgsWalkingStatus value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_walking_msgsWalkingStatus :: B.ByteString -> Either Word32 Ros1Pal_walking_msgsWalkingStatus
decodeRos1Pal_walking_msgsWalkingStatus = W.runDecoder 336 readRos1Pal_walking_msgsWalkingStatus
instance Canonical Ros1Pal_walking_msgsWalkingStatus where
  maximumBytes _ = 336
  encodeValue = encodeRos1Pal_walking_msgsWalkingStatus
  readValue = readRos1Pal_walking_msgsWalkingStatus
data Ros1Std_msgsDuration = Ros1Std_msgsDuration
  {
    -- | \@brief std_msgs/Duration.data: duration.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Std_msgsDuration; document/platform/pal/en_US/language/haskell/API.md
    ros1Std_msgsDuration_data :: Ros1Duration
  } deriving (Eq, Show)
defaultRos1Std_msgsDuration :: Ros1Std_msgsDuration
defaultRos1Std_msgsDuration = Ros1Std_msgsDuration (defaultRos1Duration)
ros1Std_msgsDurationCodecIdentity :: String
ros1Std_msgsDurationCodecIdentity = "UWVMROS1_195444342590aabe87833226c1cce7cc900519e5b1fe13ff460406396e3ce175"
encodeRos1Std_msgsDuration :: Ros1Std_msgsDuration -> Either Word32 B.ByteString
encodeRos1Std_msgsDuration value = do
  b0 <- encodeRos1Duration (ros1Std_msgsDuration_data value)
  W.bounded 8 [b0]
readRos1Std_msgsDuration :: W.Decoder Ros1Std_msgsDuration
readRos1Std_msgsDuration = do
  a0 <- readRos1Duration
  let value = Ros1Std_msgsDuration a0
  case encodeRos1Std_msgsDuration value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Std_msgsDuration :: B.ByteString -> Either Word32 Ros1Std_msgsDuration
decodeRos1Std_msgsDuration = W.runDecoder 8 readRos1Std_msgsDuration
instance Canonical Ros1Std_msgsDuration where
  maximumBytes _ = 8
  encodeValue = encodeRos1Std_msgsDuration
  readValue = readRos1Std_msgsDuration
data Ros1Pal_walking_msgsWalkingStep = Ros1Pal_walking_msgsWalkingStep
  {
    -- | \@brief pal_walking_msgs/WalkingStep.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_walking_msgsWalkingStep; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_walking_msgsWalkingStep_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief pal_walking_msgs/WalkingStep.step_target: humanoid_nav_msgs/StepTarget.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_walking_msgsWalkingStep; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_walking_msgsWalkingStep_step_target :: Ros1Humanoid_nav_msgsStepTarget
  ,
    -- | \@brief pal_walking_msgs/WalkingStep.step_duration: std_msgs/Duration.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_walking_msgsWalkingStep; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_walking_msgsWalkingStep_step_duration :: Ros1Std_msgsDuration
  ,
    -- | \@brief pal_walking_msgs/WalkingStep.step_list_size: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_walking_msgsWalkingStep; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_walking_msgsWalkingStep_step_list_size :: Int32
  } deriving (Eq, Show)
defaultRos1Pal_walking_msgsWalkingStep :: Ros1Pal_walking_msgsWalkingStep
defaultRos1Pal_walking_msgsWalkingStep =
    Ros1Pal_walking_msgsWalkingStep
    (defaultRos1Std_msgsHeader)
    (defaultRos1Humanoid_nav_msgsStepTarget)
    (defaultRos1Std_msgsDuration)
    (0)
ros1Pal_walking_msgsWalkingStepCodecIdentity :: String
ros1Pal_walking_msgsWalkingStepCodecIdentity = "UWVMROS1_b6bacf08a7ff7277b0c96730c5b2691540af208dd61f2662990253ba4d1925dd"
encodeRos1Pal_walking_msgsWalkingStep :: Ros1Pal_walking_msgsWalkingStep -> Either Word32 B.ByteString
encodeRos1Pal_walking_msgsWalkingStep value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Pal_walking_msgsWalkingStep_header value)
  b1 <- encodeRos1Humanoid_nav_msgsStepTarget (ros1Pal_walking_msgsWalkingStep_step_target value)
  b2 <- encodeRos1Std_msgsDuration (ros1Pal_walking_msgsWalkingStep_step_duration value)
  b3 <- W.encodeSigned 4 (fromIntegral (ros1Pal_walking_msgsWalkingStep_step_list_size value))
  W.bounded 181 [b0, b1, b2, b3]
readRos1Pal_walking_msgsWalkingStep :: W.Decoder Ros1Pal_walking_msgsWalkingStep
readRos1Pal_walking_msgsWalkingStep = do
  a0 <- readRos1Std_msgsHeader
  a1 <- readRos1Humanoid_nav_msgsStepTarget
  a2 <- readRos1Std_msgsDuration
  a3 <- fromIntegral <$> W.signed 4
  let value = Ros1Pal_walking_msgsWalkingStep a0 a1 a2 a3
  case encodeRos1Pal_walking_msgsWalkingStep value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_walking_msgsWalkingStep :: B.ByteString -> Either Word32 Ros1Pal_walking_msgsWalkingStep
decodeRos1Pal_walking_msgsWalkingStep = W.runDecoder 181 readRos1Pal_walking_msgsWalkingStep
instance Canonical Ros1Pal_walking_msgsWalkingStep where
  maximumBytes _ = 181
  encodeValue = encodeRos1Pal_walking_msgsWalkingStep
  readValue = readRos1Pal_walking_msgsWalkingStep
data Ros1Pal_wifi_localization_msgsGetWifiMapRequest = Ros1Pal_wifi_localization_msgsGetWifiMapRequest deriving (Eq, Show)
defaultRos1Pal_wifi_localization_msgsGetWifiMapRequest :: Ros1Pal_wifi_localization_msgsGetWifiMapRequest
defaultRos1Pal_wifi_localization_msgsGetWifiMapRequest = Ros1Pal_wifi_localization_msgsGetWifiMapRequest 
ros1Pal_wifi_localization_msgsGetWifiMapRequestCodecIdentity :: String
ros1Pal_wifi_localization_msgsGetWifiMapRequestCodecIdentity = "UWVMROS1_91f308677881cbf1a91911f58602b59adabc3935db966392d28ad81acd70d832"
encodeRos1Pal_wifi_localization_msgsGetWifiMapRequest :: Ros1Pal_wifi_localization_msgsGetWifiMapRequest -> Either Word32 B.ByteString
encodeRos1Pal_wifi_localization_msgsGetWifiMapRequest value = do
  W.bounded 0 []
readRos1Pal_wifi_localization_msgsGetWifiMapRequest :: W.Decoder Ros1Pal_wifi_localization_msgsGetWifiMapRequest
readRos1Pal_wifi_localization_msgsGetWifiMapRequest = do
  let value = Ros1Pal_wifi_localization_msgsGetWifiMapRequest 
  case encodeRos1Pal_wifi_localization_msgsGetWifiMapRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_wifi_localization_msgsGetWifiMapRequest :: B.ByteString -> Either Word32 Ros1Pal_wifi_localization_msgsGetWifiMapRequest
decodeRos1Pal_wifi_localization_msgsGetWifiMapRequest = W.runDecoder 0 readRos1Pal_wifi_localization_msgsGetWifiMapRequest
instance Canonical Ros1Pal_wifi_localization_msgsGetWifiMapRequest where
  maximumBytes _ = 0
  encodeValue = encodeRos1Pal_wifi_localization_msgsGetWifiMapRequest
  readValue = readRos1Pal_wifi_localization_msgsGetWifiMapRequest
data Ros1Pal_wifi_localization_msgsWifiSignal = Ros1Pal_wifi_localization_msgsWifiSignal
  {
    -- | \@brief pal_wifi_localization_msgs/WifiSignal.id: std_msgs/String.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_wifi_localization_msgsWifiSignal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_wifi_localization_msgsWifiSignal_id :: Ros1Std_msgsString
  ,
    -- | \@brief pal_wifi_localization_msgs/WifiSignal.mean: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_wifi_localization_msgsWifiSignal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_wifi_localization_msgsWifiSignal_mean :: Float
  ,
    -- | \@brief pal_wifi_localization_msgs/WifiSignal.std_dev: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_wifi_localization_msgsWifiSignal; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_wifi_localization_msgsWifiSignal_std_dev :: Float
  } deriving (Eq, Show)
defaultRos1Pal_wifi_localization_msgsWifiSignal :: Ros1Pal_wifi_localization_msgsWifiSignal
defaultRos1Pal_wifi_localization_msgsWifiSignal = Ros1Pal_wifi_localization_msgsWifiSignal (defaultRos1Std_msgsString) (0) (0)
ros1Pal_wifi_localization_msgsWifiSignalCodecIdentity :: String
ros1Pal_wifi_localization_msgsWifiSignalCodecIdentity = "UWVMROS1_f2397d50da735cc25a1392f79d7dca7e1a4bf2837e5981cb987bdfbb0dcebf71"
encodeRos1Pal_wifi_localization_msgsWifiSignal :: Ros1Pal_wifi_localization_msgsWifiSignal -> Either Word32 B.ByteString
encodeRos1Pal_wifi_localization_msgsWifiSignal value = do
  b0 <- encodeRos1Std_msgsString (ros1Pal_wifi_localization_msgsWifiSignal_id value)
  b1 <- W.encodeFloat32 (ros1Pal_wifi_localization_msgsWifiSignal_mean value)
  b2 <- W.encodeFloat32 (ros1Pal_wifi_localization_msgsWifiSignal_std_dev value)
  W.bounded 140 [b0, b1, b2]
readRos1Pal_wifi_localization_msgsWifiSignal :: W.Decoder Ros1Pal_wifi_localization_msgsWifiSignal
readRos1Pal_wifi_localization_msgsWifiSignal = do
  a0 <- readRos1Std_msgsString
  a1 <- W.float32
  a2 <- W.float32
  let value = Ros1Pal_wifi_localization_msgsWifiSignal a0 a1 a2
  case encodeRos1Pal_wifi_localization_msgsWifiSignal value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_wifi_localization_msgsWifiSignal :: B.ByteString -> Either Word32 Ros1Pal_wifi_localization_msgsWifiSignal
decodeRos1Pal_wifi_localization_msgsWifiSignal = W.runDecoder 140 readRos1Pal_wifi_localization_msgsWifiSignal
instance Canonical Ros1Pal_wifi_localization_msgsWifiSignal where
  maximumBytes _ = 140
  encodeValue = encodeRos1Pal_wifi_localization_msgsWifiSignal
  readValue = readRos1Pal_wifi_localization_msgsWifiSignal
data Ros1Pal_wifi_localization_msgsWifiSignalList = Ros1Pal_wifi_localization_msgsWifiSignalList
  {
    -- | \@brief pal_wifi_localization_msgs/WifiSignalList.networks: pal_wifi_localization_msgs/WifiSignal; 0..4 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_wifi_localization_msgsWifiSignalList; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_wifi_localization_msgsWifiSignalList_networks :: [Ros1Pal_wifi_localization_msgsWifiSignal]
  ,
    -- | \@brief pal_wifi_localization_msgs/WifiSignalList.start_time: time.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_wifi_localization_msgsWifiSignalList; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_wifi_localization_msgsWifiSignalList_start_time :: Ros1Time
  ,
    -- | \@brief pal_wifi_localization_msgs/WifiSignalList.end_time: time.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_wifi_localization_msgsWifiSignalList; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_wifi_localization_msgsWifiSignalList_end_time :: Ros1Time
  } deriving (Eq, Show)
defaultRos1Pal_wifi_localization_msgsWifiSignalList :: Ros1Pal_wifi_localization_msgsWifiSignalList
defaultRos1Pal_wifi_localization_msgsWifiSignalList = Ros1Pal_wifi_localization_msgsWifiSignalList ([]) (defaultRos1Time) (defaultRos1Time)
ros1Pal_wifi_localization_msgsWifiSignalListCodecIdentity :: String
ros1Pal_wifi_localization_msgsWifiSignalListCodecIdentity = "UWVMROS1_9a15f8c545d1fb461b8b4d42c31fe7803392a5277c9ee0377aa9b79888ae64fc"
encodeRos1Pal_wifi_localization_msgsWifiSignalList :: Ros1Pal_wifi_localization_msgsWifiSignalList -> Either Word32 B.ByteString
encodeRos1Pal_wifi_localization_msgsWifiSignalList value = do
  if length (ros1Pal_wifi_localization_msgsWifiSignalList_networks value) > 4 then Left 22 else Right ()
  prefix0 <- W.encodeCount 4 (length (ros1Pal_wifi_localization_msgsWifiSignalList_networks value))
  b0 <- B.concat <$> mapM (\e -> encodeRos1Pal_wifi_localization_msgsWifiSignal (e)) (ros1Pal_wifi_localization_msgsWifiSignalList_networks value)
  b1 <- encodeRos1Time (ros1Pal_wifi_localization_msgsWifiSignalList_start_time value)
  b2 <- encodeRos1Time (ros1Pal_wifi_localization_msgsWifiSignalList_end_time value)
  W.bounded 580 [prefix0, b0, b1, b2]
readRos1Pal_wifi_localization_msgsWifiSignalList :: W.Decoder Ros1Pal_wifi_localization_msgsWifiSignalList
readRos1Pal_wifi_localization_msgsWifiSignalList = do
  count0 <- W.count 4
  a0 <- replicateM count0 (readRos1Pal_wifi_localization_msgsWifiSignal)
  a1 <- readRos1Time
  a2 <- readRos1Time
  let value = Ros1Pal_wifi_localization_msgsWifiSignalList a0 a1 a2
  case encodeRos1Pal_wifi_localization_msgsWifiSignalList value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_wifi_localization_msgsWifiSignalList :: B.ByteString -> Either Word32 Ros1Pal_wifi_localization_msgsWifiSignalList
decodeRos1Pal_wifi_localization_msgsWifiSignalList = W.runDecoder 580 readRos1Pal_wifi_localization_msgsWifiSignalList
instance Canonical Ros1Pal_wifi_localization_msgsWifiSignalList where
  maximumBytes _ = 580
  encodeValue = encodeRos1Pal_wifi_localization_msgsWifiSignalList
  readValue = readRos1Pal_wifi_localization_msgsWifiSignalList
data Ros1Pal_wifi_localization_msgsWifiSignalMap = Ros1Pal_wifi_localization_msgsWifiSignalMap
  {
    -- | \@brief pal_wifi_localization_msgs/WifiSignalMap.header: std_msgs/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_wifi_localization_msgsWifiSignalMap; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_wifi_localization_msgsWifiSignalMap_header :: Ros1Std_msgsHeader
  ,
    -- | \@brief pal_wifi_localization_msgs/WifiSignalMap.info: nav_msgs/MapMetaData.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_wifi_localization_msgsWifiSignalMap; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_wifi_localization_msgsWifiSignalMap_info :: Ros1Nav_msgsMapMetaData
  ,
    -- | \@brief pal_wifi_localization_msgs/WifiSignalMap.sectors: uint32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_wifi_localization_msgsWifiSignalMap; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_wifi_localization_msgsWifiSignalMap_sectors :: Word32
  ,
    -- | \@brief pal_wifi_localization_msgs/WifiSignalMap.data: pal_wifi_localization_msgs/WifiSignalList; 0..4 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_wifi_localization_msgsWifiSignalMap; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_wifi_localization_msgsWifiSignalMap_data :: [Ros1Pal_wifi_localization_msgsWifiSignalList]
  } deriving (Eq, Show)
defaultRos1Pal_wifi_localization_msgsWifiSignalMap :: Ros1Pal_wifi_localization_msgsWifiSignalMap
defaultRos1Pal_wifi_localization_msgsWifiSignalMap =
    Ros1Pal_wifi_localization_msgsWifiSignalMap
    (defaultRos1Std_msgsHeader)
    (defaultRos1Nav_msgsMapMetaData)
    (0)
    ([])
ros1Pal_wifi_localization_msgsWifiSignalMapCodecIdentity :: String
ros1Pal_wifi_localization_msgsWifiSignalMapCodecIdentity = "UWVMROS1_948926ffa19fd58fabf24b61ae0d2334e09b3815358f79b521dd3b84fe231a3e"
encodeRos1Pal_wifi_localization_msgsWifiSignalMap :: Ros1Pal_wifi_localization_msgsWifiSignalMap -> Either Word32 B.ByteString
encodeRos1Pal_wifi_localization_msgsWifiSignalMap value = do
  b0 <- encodeRos1Std_msgsHeader (ros1Pal_wifi_localization_msgsWifiSignalMap_header value)
  b1 <- encodeRos1Nav_msgsMapMetaData (ros1Pal_wifi_localization_msgsWifiSignalMap_info value)
  b2 <- W.encodeUnsigned 4 (fromIntegral (ros1Pal_wifi_localization_msgsWifiSignalMap_sectors value))
  if length (ros1Pal_wifi_localization_msgsWifiSignalMap_data value) > 4 then Left 22 else Right ()
  prefix3 <- W.encodeCount 4 (length (ros1Pal_wifi_localization_msgsWifiSignalMap_data value))
  b3 <- B.concat <$> mapM (\e -> encodeRos1Pal_wifi_localization_msgsWifiSignalList (e)) (ros1Pal_wifi_localization_msgsWifiSignalMap_data value)
  W.bounded 2548 [b0, b1, b2, prefix3, b3]
readRos1Pal_wifi_localization_msgsWifiSignalMap :: W.Decoder Ros1Pal_wifi_localization_msgsWifiSignalMap
readRos1Pal_wifi_localization_msgsWifiSignalMap = do
  a0 <- readRos1Std_msgsHeader
  a1 <- readRos1Nav_msgsMapMetaData
  a2 <- fromIntegral <$> W.unsigned 4
  count3 <- W.count 4
  a3 <- replicateM count3 (readRos1Pal_wifi_localization_msgsWifiSignalList)
  let value = Ros1Pal_wifi_localization_msgsWifiSignalMap a0 a1 a2 a3
  case encodeRos1Pal_wifi_localization_msgsWifiSignalMap value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_wifi_localization_msgsWifiSignalMap :: B.ByteString -> Either Word32 Ros1Pal_wifi_localization_msgsWifiSignalMap
decodeRos1Pal_wifi_localization_msgsWifiSignalMap = W.runDecoder 2548 readRos1Pal_wifi_localization_msgsWifiSignalMap
instance Canonical Ros1Pal_wifi_localization_msgsWifiSignalMap where
  maximumBytes _ = 2548
  encodeValue = encodeRos1Pal_wifi_localization_msgsWifiSignalMap
  readValue = readRos1Pal_wifi_localization_msgsWifiSignalMap
data Ros1Pal_wifi_localization_msgsGetWifiMapResponse = Ros1Pal_wifi_localization_msgsGetWifiMapResponse
  {
    -- | \@brief pal_wifi_localization_msgs/GetWifiMapResponse.map: pal_wifi_localization_msgs/WifiSignalMap.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros1Pal_wifi_localization_msgsGetWifiMapResponse; document/platform/pal/en_US/language/haskell/API.md
    ros1Pal_wifi_localization_msgsGetWifiMapResponse_map :: Ros1Pal_wifi_localization_msgsWifiSignalMap
  } deriving (Eq, Show)
defaultRos1Pal_wifi_localization_msgsGetWifiMapResponse :: Ros1Pal_wifi_localization_msgsGetWifiMapResponse
defaultRos1Pal_wifi_localization_msgsGetWifiMapResponse =
    Ros1Pal_wifi_localization_msgsGetWifiMapResponse
    (defaultRos1Pal_wifi_localization_msgsWifiSignalMap)
ros1Pal_wifi_localization_msgsGetWifiMapResponseCodecIdentity :: String
ros1Pal_wifi_localization_msgsGetWifiMapResponseCodecIdentity = "UWVMROS1_576278a043277d7621c6fc90fbbf583a0ad0ef9d7704fb8b5cca8b1b86c7bcb3"
encodeRos1Pal_wifi_localization_msgsGetWifiMapResponse :: Ros1Pal_wifi_localization_msgsGetWifiMapResponse -> Either Word32 B.ByteString
encodeRos1Pal_wifi_localization_msgsGetWifiMapResponse value = do
  b0 <- encodeRos1Pal_wifi_localization_msgsWifiSignalMap (ros1Pal_wifi_localization_msgsGetWifiMapResponse_map value)
  W.bounded 2548 [b0]
readRos1Pal_wifi_localization_msgsGetWifiMapResponse :: W.Decoder Ros1Pal_wifi_localization_msgsGetWifiMapResponse
readRos1Pal_wifi_localization_msgsGetWifiMapResponse = do
  a0 <- readRos1Pal_wifi_localization_msgsWifiSignalMap
  let value = Ros1Pal_wifi_localization_msgsGetWifiMapResponse a0
  case encodeRos1Pal_wifi_localization_msgsGetWifiMapResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos1Pal_wifi_localization_msgsGetWifiMapResponse :: B.ByteString -> Either Word32 Ros1Pal_wifi_localization_msgsGetWifiMapResponse
decodeRos1Pal_wifi_localization_msgsGetWifiMapResponse = W.runDecoder 2548 readRos1Pal_wifi_localization_msgsGetWifiMapResponse
instance Canonical Ros1Pal_wifi_localization_msgsGetWifiMapResponse where
  maximumBytes _ = 2548
  encodeValue = encodeRos1Pal_wifi_localization_msgsGetWifiMapResponse
  readValue = readRos1Pal_wifi_localization_msgsGetWifiMapResponse
