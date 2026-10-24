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
data Ros2Builtin_interfacesMsgDuration = Ros2Builtin_interfacesMsgDuration
  {
    -- | \@brief builtin_interfaces/msg/Duration.sec: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Builtin_interfacesMsgDuration; document/platform/pal/en_US/language/haskell/API.md
    ros2Builtin_interfacesMsgDuration_sec :: Int32
  ,
    -- | \@brief builtin_interfaces/msg/Duration.nanosec: uint32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Builtin_interfacesMsgDuration; document/platform/pal/en_US/language/haskell/API.md
    ros2Builtin_interfacesMsgDuration_nanosec :: Word32
  } deriving (Eq, Show)
defaultRos2Builtin_interfacesMsgDuration :: Ros2Builtin_interfacesMsgDuration
defaultRos2Builtin_interfacesMsgDuration = Ros2Builtin_interfacesMsgDuration (0) (0)
ros2Builtin_interfacesMsgDurationCodecIdentity :: String
ros2Builtin_interfacesMsgDurationCodecIdentity = "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4"
encodeRos2Builtin_interfacesMsgDuration :: Ros2Builtin_interfacesMsgDuration -> Either Word32 B.ByteString
encodeRos2Builtin_interfacesMsgDuration value = do
  if (ros2Builtin_interfacesMsgDuration_nanosec value) >= 1000000000 then Left 22 else Right ()
  b0 <- W.encodeSigned 4 (fromIntegral (ros2Builtin_interfacesMsgDuration_sec value))
  b1 <- W.encodeUnsigned 4 (fromIntegral (ros2Builtin_interfacesMsgDuration_nanosec value))
  W.bounded 8 [b0, b1]
readRos2Builtin_interfacesMsgDuration :: W.Decoder Ros2Builtin_interfacesMsgDuration
readRos2Builtin_interfacesMsgDuration = do
  a0 <- fromIntegral <$> W.signed 4
  a1 <- fromIntegral <$> W.unsigned 4
  let value = Ros2Builtin_interfacesMsgDuration a0 a1
  case encodeRos2Builtin_interfacesMsgDuration value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Builtin_interfacesMsgDuration :: B.ByteString -> Either Word32 Ros2Builtin_interfacesMsgDuration
decodeRos2Builtin_interfacesMsgDuration = W.runDecoder 8 readRos2Builtin_interfacesMsgDuration
instance Canonical Ros2Builtin_interfacesMsgDuration where
  maximumBytes _ = 8
  encodeValue = encodeRos2Builtin_interfacesMsgDuration
  readValue = readRos2Builtin_interfacesMsgDuration
data Ros2Builtin_interfacesMsgTime = Ros2Builtin_interfacesMsgTime
  {
    -- | \@brief builtin_interfaces/msg/Time.sec: int32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Builtin_interfacesMsgTime; document/platform/pal/en_US/language/haskell/API.md
    ros2Builtin_interfacesMsgTime_sec :: Int32
  ,
    -- | \@brief builtin_interfaces/msg/Time.nanosec: uint32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Builtin_interfacesMsgTime; document/platform/pal/en_US/language/haskell/API.md
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
data Ros2Std_msgsMsgColorRGBA = Ros2Std_msgsMsgColorRGBA
  {
    -- | \@brief std_msgs/msg/ColorRGBA.r: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Std_msgsMsgColorRGBA; document/platform/pal/en_US/language/haskell/API.md
    ros2Std_msgsMsgColorRGBA_r :: Float
  ,
    -- | \@brief std_msgs/msg/ColorRGBA.g: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Std_msgsMsgColorRGBA; document/platform/pal/en_US/language/haskell/API.md
    ros2Std_msgsMsgColorRGBA_g :: Float
  ,
    -- | \@brief std_msgs/msg/ColorRGBA.b: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Std_msgsMsgColorRGBA; document/platform/pal/en_US/language/haskell/API.md
    ros2Std_msgsMsgColorRGBA_b :: Float
  ,
    -- | \@brief std_msgs/msg/ColorRGBA.a: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Std_msgsMsgColorRGBA; document/platform/pal/en_US/language/haskell/API.md
    ros2Std_msgsMsgColorRGBA_a :: Float
  } deriving (Eq, Show)
defaultRos2Std_msgsMsgColorRGBA :: Ros2Std_msgsMsgColorRGBA
defaultRos2Std_msgsMsgColorRGBA = Ros2Std_msgsMsgColorRGBA (0) (0) (0) (0)
ros2Std_msgsMsgColorRGBACodecIdentity :: String
ros2Std_msgsMsgColorRGBACodecIdentity = "UWVMROS1_087e0282f02c82a1d8f4580a47ff359ea71b7e72d477da47f49fc6bff61238b2"
encodeRos2Std_msgsMsgColorRGBA :: Ros2Std_msgsMsgColorRGBA -> Either Word32 B.ByteString
encodeRos2Std_msgsMsgColorRGBA value = do
  b0 <- W.encodeFloat32 (ros2Std_msgsMsgColorRGBA_r value)
  b1 <- W.encodeFloat32 (ros2Std_msgsMsgColorRGBA_g value)
  b2 <- W.encodeFloat32 (ros2Std_msgsMsgColorRGBA_b value)
  b3 <- W.encodeFloat32 (ros2Std_msgsMsgColorRGBA_a value)
  W.bounded 16 [b0, b1, b2, b3]
readRos2Std_msgsMsgColorRGBA :: W.Decoder Ros2Std_msgsMsgColorRGBA
readRos2Std_msgsMsgColorRGBA = do
  a0 <- W.float32
  a1 <- W.float32
  a2 <- W.float32
  a3 <- W.float32
  let value = Ros2Std_msgsMsgColorRGBA a0 a1 a2 a3
  case encodeRos2Std_msgsMsgColorRGBA value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Std_msgsMsgColorRGBA :: B.ByteString -> Either Word32 Ros2Std_msgsMsgColorRGBA
decodeRos2Std_msgsMsgColorRGBA = W.runDecoder 16 readRos2Std_msgsMsgColorRGBA
instance Canonical Ros2Std_msgsMsgColorRGBA where
  maximumBytes _ = 16
  encodeValue = encodeRos2Std_msgsMsgColorRGBA
  readValue = readRos2Std_msgsMsgColorRGBA
data Ros2Pal_device_msgsMsgLedFixedColorParams = Ros2Pal_device_msgsMsgLedFixedColorParams
  {
    -- | \@brief pal_device_msgs/msg/LedFixedColorParams.color: std_msgs/msg/ColorRGBA.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsMsgLedFixedColorParams; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsMsgLedFixedColorParams_color :: Ros2Std_msgsMsgColorRGBA
  } deriving (Eq, Show)
defaultRos2Pal_device_msgsMsgLedFixedColorParams :: Ros2Pal_device_msgsMsgLedFixedColorParams
defaultRos2Pal_device_msgsMsgLedFixedColorParams = Ros2Pal_device_msgsMsgLedFixedColorParams (defaultRos2Std_msgsMsgColorRGBA)
ros2Pal_device_msgsMsgLedFixedColorParamsCodecIdentity :: String
ros2Pal_device_msgsMsgLedFixedColorParamsCodecIdentity = "UWVMROS1_486720194d8ed9dff1b17a2c59382a33cf04cab290115ecda1125481a750feac"
encodeRos2Pal_device_msgsMsgLedFixedColorParams :: Ros2Pal_device_msgsMsgLedFixedColorParams -> Either Word32 B.ByteString
encodeRos2Pal_device_msgsMsgLedFixedColorParams value = do
  b0 <- encodeRos2Std_msgsMsgColorRGBA (ros2Pal_device_msgsMsgLedFixedColorParams_color value)
  W.bounded 16 [b0]
readRos2Pal_device_msgsMsgLedFixedColorParams :: W.Decoder Ros2Pal_device_msgsMsgLedFixedColorParams
readRos2Pal_device_msgsMsgLedFixedColorParams = do
  a0 <- readRos2Std_msgsMsgColorRGBA
  let value = Ros2Pal_device_msgsMsgLedFixedColorParams a0
  case encodeRos2Pal_device_msgsMsgLedFixedColorParams value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Pal_device_msgsMsgLedFixedColorParams :: B.ByteString -> Either Word32 Ros2Pal_device_msgsMsgLedFixedColorParams
decodeRos2Pal_device_msgsMsgLedFixedColorParams = W.runDecoder 16 readRos2Pal_device_msgsMsgLedFixedColorParams
instance Canonical Ros2Pal_device_msgsMsgLedFixedColorParams where
  maximumBytes _ = 16
  encodeValue = encodeRos2Pal_device_msgsMsgLedFixedColorParams
  readValue = readRos2Pal_device_msgsMsgLedFixedColorParams
data Ros2Pal_device_msgsMsgLedRainbowParams = Ros2Pal_device_msgsMsgLedRainbowParams
  {
    -- | \@brief pal_device_msgs/msg/LedRainbowParams.transition_duration: builtin_interfaces/msg/Duration.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsMsgLedRainbowParams; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsMsgLedRainbowParams_transition_duration :: Ros2Builtin_interfacesMsgDuration
  } deriving (Eq, Show)
defaultRos2Pal_device_msgsMsgLedRainbowParams :: Ros2Pal_device_msgsMsgLedRainbowParams
defaultRos2Pal_device_msgsMsgLedRainbowParams = Ros2Pal_device_msgsMsgLedRainbowParams (defaultRos2Builtin_interfacesMsgDuration)
ros2Pal_device_msgsMsgLedRainbowParamsCodecIdentity :: String
ros2Pal_device_msgsMsgLedRainbowParamsCodecIdentity = "UWVMROS1_de1034a751e90f65a6f722cf685ee462b658f71c1d71b49ca7ee81177a9fd2e2"
encodeRos2Pal_device_msgsMsgLedRainbowParams :: Ros2Pal_device_msgsMsgLedRainbowParams -> Either Word32 B.ByteString
encodeRos2Pal_device_msgsMsgLedRainbowParams value = do
  b0 <- encodeRos2Builtin_interfacesMsgDuration (ros2Pal_device_msgsMsgLedRainbowParams_transition_duration value)
  W.bounded 8 [b0]
readRos2Pal_device_msgsMsgLedRainbowParams :: W.Decoder Ros2Pal_device_msgsMsgLedRainbowParams
readRos2Pal_device_msgsMsgLedRainbowParams = do
  a0 <- readRos2Builtin_interfacesMsgDuration
  let value = Ros2Pal_device_msgsMsgLedRainbowParams a0
  case encodeRos2Pal_device_msgsMsgLedRainbowParams value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Pal_device_msgsMsgLedRainbowParams :: B.ByteString -> Either Word32 Ros2Pal_device_msgsMsgLedRainbowParams
decodeRos2Pal_device_msgsMsgLedRainbowParams = W.runDecoder 8 readRos2Pal_device_msgsMsgLedRainbowParams
instance Canonical Ros2Pal_device_msgsMsgLedRainbowParams where
  maximumBytes _ = 8
  encodeValue = encodeRos2Pal_device_msgsMsgLedRainbowParams
  readValue = readRos2Pal_device_msgsMsgLedRainbowParams
data Ros2Pal_device_msgsMsgLedFadeParams = Ros2Pal_device_msgsMsgLedFadeParams
  {
    -- | \@brief pal_device_msgs/msg/LedFadeParams.first_color: std_msgs/msg/ColorRGBA.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsMsgLedFadeParams; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsMsgLedFadeParams_first_color :: Ros2Std_msgsMsgColorRGBA
  ,
    -- | \@brief pal_device_msgs/msg/LedFadeParams.second_color: std_msgs/msg/ColorRGBA.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsMsgLedFadeParams; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsMsgLedFadeParams_second_color :: Ros2Std_msgsMsgColorRGBA
  ,
    -- | \@brief pal_device_msgs/msg/LedFadeParams.transition_duration: builtin_interfaces/msg/Duration.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsMsgLedFadeParams; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsMsgLedFadeParams_transition_duration :: Ros2Builtin_interfacesMsgDuration
  ,
    -- | \@brief pal_device_msgs/msg/LedFadeParams.reverse_fade: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsMsgLedFadeParams; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsMsgLedFadeParams_reverse_fade :: Bool
  } deriving (Eq, Show)
defaultRos2Pal_device_msgsMsgLedFadeParams :: Ros2Pal_device_msgsMsgLedFadeParams
defaultRos2Pal_device_msgsMsgLedFadeParams =
    Ros2Pal_device_msgsMsgLedFadeParams
    (defaultRos2Std_msgsMsgColorRGBA)
    (defaultRos2Std_msgsMsgColorRGBA)
    (defaultRos2Builtin_interfacesMsgDuration)
    (False)
ros2Pal_device_msgsMsgLedFadeParamsCodecIdentity :: String
ros2Pal_device_msgsMsgLedFadeParamsCodecIdentity = "UWVMROS1_a1b956d5fbae5ef515a7376ed137b3562722641b7a728ed294f210a1299167e5"
encodeRos2Pal_device_msgsMsgLedFadeParams :: Ros2Pal_device_msgsMsgLedFadeParams -> Either Word32 B.ByteString
encodeRos2Pal_device_msgsMsgLedFadeParams value = do
  b0 <- encodeRos2Std_msgsMsgColorRGBA (ros2Pal_device_msgsMsgLedFadeParams_first_color value)
  b1 <- encodeRos2Std_msgsMsgColorRGBA (ros2Pal_device_msgsMsgLedFadeParams_second_color value)
  b2 <- encodeRos2Builtin_interfacesMsgDuration (ros2Pal_device_msgsMsgLedFadeParams_transition_duration value)
  b3 <- W.encodeBool (ros2Pal_device_msgsMsgLedFadeParams_reverse_fade value)
  W.bounded 41 [b0, b1, b2, b3]
readRos2Pal_device_msgsMsgLedFadeParams :: W.Decoder Ros2Pal_device_msgsMsgLedFadeParams
readRos2Pal_device_msgsMsgLedFadeParams = do
  a0 <- readRos2Std_msgsMsgColorRGBA
  a1 <- readRos2Std_msgsMsgColorRGBA
  a2 <- readRos2Builtin_interfacesMsgDuration
  a3 <- W.boolean
  let value = Ros2Pal_device_msgsMsgLedFadeParams a0 a1 a2 a3
  case encodeRos2Pal_device_msgsMsgLedFadeParams value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Pal_device_msgsMsgLedFadeParams :: B.ByteString -> Either Word32 Ros2Pal_device_msgsMsgLedFadeParams
decodeRos2Pal_device_msgsMsgLedFadeParams = W.runDecoder 41 readRos2Pal_device_msgsMsgLedFadeParams
instance Canonical Ros2Pal_device_msgsMsgLedFadeParams where
  maximumBytes _ = 41
  encodeValue = encodeRos2Pal_device_msgsMsgLedFadeParams
  readValue = readRos2Pal_device_msgsMsgLedFadeParams
data Ros2Pal_device_msgsMsgLedBlinkParams = Ros2Pal_device_msgsMsgLedBlinkParams
  {
    -- | \@brief pal_device_msgs/msg/LedBlinkParams.first_color: std_msgs/msg/ColorRGBA.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsMsgLedBlinkParams; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsMsgLedBlinkParams_first_color :: Ros2Std_msgsMsgColorRGBA
  ,
    -- | \@brief pal_device_msgs/msg/LedBlinkParams.second_color: std_msgs/msg/ColorRGBA.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsMsgLedBlinkParams; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsMsgLedBlinkParams_second_color :: Ros2Std_msgsMsgColorRGBA
  ,
    -- | \@brief pal_device_msgs/msg/LedBlinkParams.first_color_duration: builtin_interfaces/msg/Duration.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsMsgLedBlinkParams; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsMsgLedBlinkParams_first_color_duration :: Ros2Builtin_interfacesMsgDuration
  ,
    -- | \@brief pal_device_msgs/msg/LedBlinkParams.second_color_duration: builtin_interfaces/msg/Duration.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsMsgLedBlinkParams; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsMsgLedBlinkParams_second_color_duration :: Ros2Builtin_interfacesMsgDuration
  } deriving (Eq, Show)
defaultRos2Pal_device_msgsMsgLedBlinkParams :: Ros2Pal_device_msgsMsgLedBlinkParams
defaultRos2Pal_device_msgsMsgLedBlinkParams =
    Ros2Pal_device_msgsMsgLedBlinkParams
    (defaultRos2Std_msgsMsgColorRGBA)
    (defaultRos2Std_msgsMsgColorRGBA)
    (defaultRos2Builtin_interfacesMsgDuration)
    (defaultRos2Builtin_interfacesMsgDuration)
ros2Pal_device_msgsMsgLedBlinkParamsCodecIdentity :: String
ros2Pal_device_msgsMsgLedBlinkParamsCodecIdentity = "UWVMROS1_c1c8148bf78fc5ab210d7aa1498f6f2d84aeab0199ec41362e56054482f349bd"
encodeRos2Pal_device_msgsMsgLedBlinkParams :: Ros2Pal_device_msgsMsgLedBlinkParams -> Either Word32 B.ByteString
encodeRos2Pal_device_msgsMsgLedBlinkParams value = do
  b0 <- encodeRos2Std_msgsMsgColorRGBA (ros2Pal_device_msgsMsgLedBlinkParams_first_color value)
  b1 <- encodeRos2Std_msgsMsgColorRGBA (ros2Pal_device_msgsMsgLedBlinkParams_second_color value)
  b2 <- encodeRos2Builtin_interfacesMsgDuration (ros2Pal_device_msgsMsgLedBlinkParams_first_color_duration value)
  b3 <- encodeRos2Builtin_interfacesMsgDuration (ros2Pal_device_msgsMsgLedBlinkParams_second_color_duration value)
  W.bounded 48 [b0, b1, b2, b3]
readRos2Pal_device_msgsMsgLedBlinkParams :: W.Decoder Ros2Pal_device_msgsMsgLedBlinkParams
readRos2Pal_device_msgsMsgLedBlinkParams = do
  a0 <- readRos2Std_msgsMsgColorRGBA
  a1 <- readRos2Std_msgsMsgColorRGBA
  a2 <- readRos2Builtin_interfacesMsgDuration
  a3 <- readRos2Builtin_interfacesMsgDuration
  let value = Ros2Pal_device_msgsMsgLedBlinkParams a0 a1 a2 a3
  case encodeRos2Pal_device_msgsMsgLedBlinkParams value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Pal_device_msgsMsgLedBlinkParams :: B.ByteString -> Either Word32 Ros2Pal_device_msgsMsgLedBlinkParams
decodeRos2Pal_device_msgsMsgLedBlinkParams = W.runDecoder 48 readRos2Pal_device_msgsMsgLedBlinkParams
instance Canonical Ros2Pal_device_msgsMsgLedBlinkParams where
  maximumBytes _ = 48
  encodeValue = encodeRos2Pal_device_msgsMsgLedBlinkParams
  readValue = readRos2Pal_device_msgsMsgLedBlinkParams
data Ros2Pal_device_msgsMsgLedProgressParams = Ros2Pal_device_msgsMsgLedProgressParams
  {
    -- | \@brief pal_device_msgs/msg/LedProgressParams.first_color: std_msgs/msg/ColorRGBA.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsMsgLedProgressParams; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsMsgLedProgressParams_first_color :: Ros2Std_msgsMsgColorRGBA
  ,
    -- | \@brief pal_device_msgs/msg/LedProgressParams.second_color: std_msgs/msg/ColorRGBA.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsMsgLedProgressParams; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsMsgLedProgressParams_second_color :: Ros2Std_msgsMsgColorRGBA
  ,
    -- | \@brief pal_device_msgs/msg/LedProgressParams.percentage: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsMsgLedProgressParams; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsMsgLedProgressParams_percentage :: Float
  ,
    -- | \@brief pal_device_msgs/msg/LedProgressParams.led_offset: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsMsgLedProgressParams; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsMsgLedProgressParams_led_offset :: Float
  } deriving (Eq, Show)
defaultRos2Pal_device_msgsMsgLedProgressParams :: Ros2Pal_device_msgsMsgLedProgressParams
defaultRos2Pal_device_msgsMsgLedProgressParams =
    Ros2Pal_device_msgsMsgLedProgressParams
    (defaultRos2Std_msgsMsgColorRGBA)
    (defaultRos2Std_msgsMsgColorRGBA)
    (0)
    (0)
ros2Pal_device_msgsMsgLedProgressParamsCodecIdentity :: String
ros2Pal_device_msgsMsgLedProgressParamsCodecIdentity = "UWVMROS1_db7c705edf5aa8c5512323dec23f75af30b0971c3c26a52a6d2c02ea918d7ab0"
encodeRos2Pal_device_msgsMsgLedProgressParams :: Ros2Pal_device_msgsMsgLedProgressParams -> Either Word32 B.ByteString
encodeRos2Pal_device_msgsMsgLedProgressParams value = do
  b0 <- encodeRos2Std_msgsMsgColorRGBA (ros2Pal_device_msgsMsgLedProgressParams_first_color value)
  b1 <- encodeRos2Std_msgsMsgColorRGBA (ros2Pal_device_msgsMsgLedProgressParams_second_color value)
  b2 <- W.encodeFloat32 (ros2Pal_device_msgsMsgLedProgressParams_percentage value)
  b3 <- W.encodeFloat32 (ros2Pal_device_msgsMsgLedProgressParams_led_offset value)
  W.bounded 40 [b0, b1, b2, b3]
readRos2Pal_device_msgsMsgLedProgressParams :: W.Decoder Ros2Pal_device_msgsMsgLedProgressParams
readRos2Pal_device_msgsMsgLedProgressParams = do
  a0 <- readRos2Std_msgsMsgColorRGBA
  a1 <- readRos2Std_msgsMsgColorRGBA
  a2 <- W.float32
  a3 <- W.float32
  let value = Ros2Pal_device_msgsMsgLedProgressParams a0 a1 a2 a3
  case encodeRos2Pal_device_msgsMsgLedProgressParams value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Pal_device_msgsMsgLedProgressParams :: B.ByteString -> Either Word32 Ros2Pal_device_msgsMsgLedProgressParams
decodeRos2Pal_device_msgsMsgLedProgressParams = W.runDecoder 40 readRos2Pal_device_msgsMsgLedProgressParams
instance Canonical Ros2Pal_device_msgsMsgLedProgressParams where
  maximumBytes _ = 40
  encodeValue = encodeRos2Pal_device_msgsMsgLedProgressParams
  readValue = readRos2Pal_device_msgsMsgLedProgressParams
data Ros2Pal_device_msgsMsgLedFlowParams = Ros2Pal_device_msgsMsgLedFlowParams
  {
    -- | \@brief pal_device_msgs/msg/LedFlowParams.first_color: std_msgs/msg/ColorRGBA.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsMsgLedFlowParams; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsMsgLedFlowParams_first_color :: Ros2Std_msgsMsgColorRGBA
  ,
    -- | \@brief pal_device_msgs/msg/LedFlowParams.second_color: std_msgs/msg/ColorRGBA.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsMsgLedFlowParams; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsMsgLedFlowParams_second_color :: Ros2Std_msgsMsgColorRGBA
  ,
    -- | \@brief pal_device_msgs/msg/LedFlowParams.percentage: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsMsgLedFlowParams; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsMsgLedFlowParams_percentage :: Float
  ,
    -- | \@brief pal_device_msgs/msg/LedFlowParams.velocity: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsMsgLedFlowParams; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsMsgLedFlowParams_velocity :: Float
  } deriving (Eq, Show)
defaultRos2Pal_device_msgsMsgLedFlowParams :: Ros2Pal_device_msgsMsgLedFlowParams
defaultRos2Pal_device_msgsMsgLedFlowParams =
    Ros2Pal_device_msgsMsgLedFlowParams
    (defaultRos2Std_msgsMsgColorRGBA)
    (defaultRos2Std_msgsMsgColorRGBA)
    (0)
    (0)
ros2Pal_device_msgsMsgLedFlowParamsCodecIdentity :: String
ros2Pal_device_msgsMsgLedFlowParamsCodecIdentity = "UWVMROS1_6dbf5187ca7c1e7a8c5235832799bf22e3fed9ac7b76f7ce5ee340a5d2b79561"
encodeRos2Pal_device_msgsMsgLedFlowParams :: Ros2Pal_device_msgsMsgLedFlowParams -> Either Word32 B.ByteString
encodeRos2Pal_device_msgsMsgLedFlowParams value = do
  b0 <- encodeRos2Std_msgsMsgColorRGBA (ros2Pal_device_msgsMsgLedFlowParams_first_color value)
  b1 <- encodeRos2Std_msgsMsgColorRGBA (ros2Pal_device_msgsMsgLedFlowParams_second_color value)
  b2 <- W.encodeFloat32 (ros2Pal_device_msgsMsgLedFlowParams_percentage value)
  b3 <- W.encodeFloat32 (ros2Pal_device_msgsMsgLedFlowParams_velocity value)
  W.bounded 40 [b0, b1, b2, b3]
readRos2Pal_device_msgsMsgLedFlowParams :: W.Decoder Ros2Pal_device_msgsMsgLedFlowParams
readRos2Pal_device_msgsMsgLedFlowParams = do
  a0 <- readRos2Std_msgsMsgColorRGBA
  a1 <- readRos2Std_msgsMsgColorRGBA
  a2 <- W.float32
  a3 <- W.float32
  let value = Ros2Pal_device_msgsMsgLedFlowParams a0 a1 a2 a3
  case encodeRos2Pal_device_msgsMsgLedFlowParams value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Pal_device_msgsMsgLedFlowParams :: B.ByteString -> Either Word32 Ros2Pal_device_msgsMsgLedFlowParams
decodeRos2Pal_device_msgsMsgLedFlowParams = W.runDecoder 40 readRos2Pal_device_msgsMsgLedFlowParams
instance Canonical Ros2Pal_device_msgsMsgLedFlowParams where
  maximumBytes _ = 40
  encodeValue = encodeRos2Pal_device_msgsMsgLedFlowParams
  readValue = readRos2Pal_device_msgsMsgLedFlowParams
data Ros2Pal_device_msgsMsgLedPreProgrammedParams = Ros2Pal_device_msgsMsgLedPreProgrammedParams
  {
    -- | \@brief pal_device_msgs/msg/LedPreProgrammedParams.preprogrammed_id: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsMsgLedPreProgrammedParams; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsMsgLedPreProgrammedParams_preprogrammed_id :: Word8
  } deriving (Eq, Show)
defaultRos2Pal_device_msgsMsgLedPreProgrammedParams :: Ros2Pal_device_msgsMsgLedPreProgrammedParams
defaultRos2Pal_device_msgsMsgLedPreProgrammedParams = Ros2Pal_device_msgsMsgLedPreProgrammedParams (0)
ros2Pal_device_msgsMsgLedPreProgrammedParamsCodecIdentity :: String
ros2Pal_device_msgsMsgLedPreProgrammedParamsCodecIdentity = "UWVMROS1_219ebe0cb090162e2975ca24ae26cfdfc0226d535b730114058f11749a4905be"
encodeRos2Pal_device_msgsMsgLedPreProgrammedParams :: Ros2Pal_device_msgsMsgLedPreProgrammedParams -> Either Word32 B.ByteString
encodeRos2Pal_device_msgsMsgLedPreProgrammedParams value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros2Pal_device_msgsMsgLedPreProgrammedParams_preprogrammed_id value))
  W.bounded 1 [b0]
readRos2Pal_device_msgsMsgLedPreProgrammedParams :: W.Decoder Ros2Pal_device_msgsMsgLedPreProgrammedParams
readRos2Pal_device_msgsMsgLedPreProgrammedParams = do
  a0 <- fromIntegral <$> W.unsigned 1
  let value = Ros2Pal_device_msgsMsgLedPreProgrammedParams a0
  case encodeRos2Pal_device_msgsMsgLedPreProgrammedParams value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Pal_device_msgsMsgLedPreProgrammedParams :: B.ByteString -> Either Word32 Ros2Pal_device_msgsMsgLedPreProgrammedParams
decodeRos2Pal_device_msgsMsgLedPreProgrammedParams = W.runDecoder 1 readRos2Pal_device_msgsMsgLedPreProgrammedParams
instance Canonical Ros2Pal_device_msgsMsgLedPreProgrammedParams where
  maximumBytes _ = 1
  encodeValue = encodeRos2Pal_device_msgsMsgLedPreProgrammedParams
  readValue = readRos2Pal_device_msgsMsgLedPreProgrammedParams
data Ros2Pal_device_msgsMsgLedEffectViaTopicParams = Ros2Pal_device_msgsMsgLedEffectViaTopicParams
  {
    -- | \@brief pal_device_msgs/msg/LedEffectViaTopicParams.topic_name: string; each string is 0..128 bytes;
    --  strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsMsgLedEffectViaTopicParams; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsMsgLedEffectViaTopicParams_topic_name :: T.Text
  } deriving (Eq, Show)
defaultRos2Pal_device_msgsMsgLedEffectViaTopicParams :: Ros2Pal_device_msgsMsgLedEffectViaTopicParams
defaultRos2Pal_device_msgsMsgLedEffectViaTopicParams = Ros2Pal_device_msgsMsgLedEffectViaTopicParams (T.empty)
ros2Pal_device_msgsMsgLedEffectViaTopicParamsCodecIdentity :: String
ros2Pal_device_msgsMsgLedEffectViaTopicParamsCodecIdentity = "UWVMROS1_91ab4bac3cb9685f695a523fc63eb3d7c5c7db9c057f75d2b4685b192b39e485"
encodeRos2Pal_device_msgsMsgLedEffectViaTopicParams :: Ros2Pal_device_msgsMsgLedEffectViaTopicParams -> Either Word32 B.ByteString
encodeRos2Pal_device_msgsMsgLedEffectViaTopicParams value = do
  b0 <- W.encodeText 128 True (ros2Pal_device_msgsMsgLedEffectViaTopicParams_topic_name value)
  W.bounded 132 [b0]
readRos2Pal_device_msgsMsgLedEffectViaTopicParams :: W.Decoder Ros2Pal_device_msgsMsgLedEffectViaTopicParams
readRos2Pal_device_msgsMsgLedEffectViaTopicParams = do
  a0 <- W.text 128 True
  let value = Ros2Pal_device_msgsMsgLedEffectViaTopicParams a0
  case encodeRos2Pal_device_msgsMsgLedEffectViaTopicParams value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Pal_device_msgsMsgLedEffectViaTopicParams :: B.ByteString -> Either Word32 Ros2Pal_device_msgsMsgLedEffectViaTopicParams
decodeRos2Pal_device_msgsMsgLedEffectViaTopicParams = W.runDecoder 132 readRos2Pal_device_msgsMsgLedEffectViaTopicParams
instance Canonical Ros2Pal_device_msgsMsgLedEffectViaTopicParams where
  maximumBytes _ = 132
  encodeValue = encodeRos2Pal_device_msgsMsgLedEffectViaTopicParams
  readValue = readRos2Pal_device_msgsMsgLedEffectViaTopicParams
data Ros2Pal_device_msgsMsgLedDataArrayParams = Ros2Pal_device_msgsMsgLedDataArrayParams
  {
    -- | \@brief pal_device_msgs/msg/LedDataArrayParams.data: std_msgs/msg/ColorRGBA; 0..4 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsMsgLedDataArrayParams; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsMsgLedDataArrayParams_data :: [Ros2Std_msgsMsgColorRGBA]
  } deriving (Eq, Show)
defaultRos2Pal_device_msgsMsgLedDataArrayParams :: Ros2Pal_device_msgsMsgLedDataArrayParams
defaultRos2Pal_device_msgsMsgLedDataArrayParams = Ros2Pal_device_msgsMsgLedDataArrayParams ([])
ros2Pal_device_msgsMsgLedDataArrayParamsCodecIdentity :: String
ros2Pal_device_msgsMsgLedDataArrayParamsCodecIdentity = "UWVMROS1_f52b27f234be53ae9cfc421d8434f6a9d0e02ca8fc88de7534dac2472a0a4349"
encodeRos2Pal_device_msgsMsgLedDataArrayParams :: Ros2Pal_device_msgsMsgLedDataArrayParams -> Either Word32 B.ByteString
encodeRos2Pal_device_msgsMsgLedDataArrayParams value = do
  if length (ros2Pal_device_msgsMsgLedDataArrayParams_data value) > 4 then Left 22 else Right ()
  prefix0 <- W.encodeCount 4 (length (ros2Pal_device_msgsMsgLedDataArrayParams_data value))
  b0 <- B.concat <$> mapM (\e -> encodeRos2Std_msgsMsgColorRGBA (e)) (ros2Pal_device_msgsMsgLedDataArrayParams_data value)
  W.bounded 68 [prefix0, b0]
readRos2Pal_device_msgsMsgLedDataArrayParams :: W.Decoder Ros2Pal_device_msgsMsgLedDataArrayParams
readRos2Pal_device_msgsMsgLedDataArrayParams = do
  count0 <- W.count 4
  a0 <- replicateM count0 (readRos2Std_msgsMsgColorRGBA)
  let value = Ros2Pal_device_msgsMsgLedDataArrayParams a0
  case encodeRos2Pal_device_msgsMsgLedDataArrayParams value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Pal_device_msgsMsgLedDataArrayParams :: B.ByteString -> Either Word32 Ros2Pal_device_msgsMsgLedDataArrayParams
decodeRos2Pal_device_msgsMsgLedDataArrayParams = W.runDecoder 68 readRos2Pal_device_msgsMsgLedDataArrayParams
instance Canonical Ros2Pal_device_msgsMsgLedDataArrayParams where
  maximumBytes _ = 68
  encodeValue = encodeRos2Pal_device_msgsMsgLedDataArrayParams
  readValue = readRos2Pal_device_msgsMsgLedDataArrayParams
data Ros2Pal_device_msgsMsgLedEffectParams = Ros2Pal_device_msgsMsgLedEffectParams
  {
    -- | \@brief pal_device_msgs/msg/LedEffectParams.effect_type: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsMsgLedEffectParams_effect_type :: Word8
  ,
    -- | \@brief pal_device_msgs/msg/LedEffectParams.fixed_color: pal_device_msgs/msg/LedFixedColorParams.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsMsgLedEffectParams_fixed_color :: Ros2Pal_device_msgsMsgLedFixedColorParams
  ,
    -- | \@brief pal_device_msgs/msg/LedEffectParams.rainbow: pal_device_msgs/msg/LedRainbowParams.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsMsgLedEffectParams_rainbow :: Ros2Pal_device_msgsMsgLedRainbowParams
  ,
    -- | \@brief pal_device_msgs/msg/LedEffectParams.fade: pal_device_msgs/msg/LedFadeParams.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsMsgLedEffectParams_fade :: Ros2Pal_device_msgsMsgLedFadeParams
  ,
    -- | \@brief pal_device_msgs/msg/LedEffectParams.blink: pal_device_msgs/msg/LedBlinkParams.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsMsgLedEffectParams_blink :: Ros2Pal_device_msgsMsgLedBlinkParams
  ,
    -- | \@brief pal_device_msgs/msg/LedEffectParams.progress: pal_device_msgs/msg/LedProgressParams.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsMsgLedEffectParams_progress :: Ros2Pal_device_msgsMsgLedProgressParams
  ,
    -- | \@brief pal_device_msgs/msg/LedEffectParams.flow: pal_device_msgs/msg/LedFlowParams.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsMsgLedEffectParams_flow :: Ros2Pal_device_msgsMsgLedFlowParams
  ,
    -- | \@brief pal_device_msgs/msg/LedEffectParams.preprogrammed: pal_device_msgs/msg/LedPreProgrammedParams.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsMsgLedEffectParams_preprogrammed :: Ros2Pal_device_msgsMsgLedPreProgrammedParams
  ,
    -- | \@brief pal_device_msgs/msg/LedEffectParams.effect_via_topic: pal_device_msgs/msg/LedEffectViaTopicParams.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsMsgLedEffectParams_effect_via_topic :: Ros2Pal_device_msgsMsgLedEffectViaTopicParams
  ,
    -- | \@brief pal_device_msgs/msg/LedEffectParams.data_array: pal_device_msgs/msg/LedDataArrayParams.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsMsgLedEffectParams_data_array :: Ros2Pal_device_msgsMsgLedDataArrayParams
  } deriving (Eq, Show)
defaultRos2Pal_device_msgsMsgLedEffectParams :: Ros2Pal_device_msgsMsgLedEffectParams
defaultRos2Pal_device_msgsMsgLedEffectParams =
    Ros2Pal_device_msgsMsgLedEffectParams
    (0)
    (defaultRos2Pal_device_msgsMsgLedFixedColorParams)
    (defaultRos2Pal_device_msgsMsgLedRainbowParams)
    (defaultRos2Pal_device_msgsMsgLedFadeParams)
    (defaultRos2Pal_device_msgsMsgLedBlinkParams)
    (defaultRos2Pal_device_msgsMsgLedProgressParams)
    (defaultRos2Pal_device_msgsMsgLedFlowParams)
    (defaultRos2Pal_device_msgsMsgLedPreProgrammedParams)
    (defaultRos2Pal_device_msgsMsgLedEffectViaTopicParams)
    (defaultRos2Pal_device_msgsMsgLedDataArrayParams)
ros2Pal_device_msgsMsgLedEffectParamsCodecIdentity :: String
ros2Pal_device_msgsMsgLedEffectParamsCodecIdentity = "UWVMROS1_dbaf26734baee7c339c249fb6bd35f42672b48bac23966670f525f5d921f8848"
ros2Pal_device_msgsMsgLedEffectParams_FIXED_COLOR :: Word8
ros2Pal_device_msgsMsgLedEffectParams_FIXED_COLOR = 0
ros2Pal_device_msgsMsgLedEffectParams_RAINBOW :: Word8
ros2Pal_device_msgsMsgLedEffectParams_RAINBOW = 1
ros2Pal_device_msgsMsgLedEffectParams_FADE :: Word8
ros2Pal_device_msgsMsgLedEffectParams_FADE = 2
ros2Pal_device_msgsMsgLedEffectParams_BLINK :: Word8
ros2Pal_device_msgsMsgLedEffectParams_BLINK = 3
ros2Pal_device_msgsMsgLedEffectParams_PROGRESS :: Word8
ros2Pal_device_msgsMsgLedEffectParams_PROGRESS = 4
ros2Pal_device_msgsMsgLedEffectParams_FLOW :: Word8
ros2Pal_device_msgsMsgLedEffectParams_FLOW = 5
ros2Pal_device_msgsMsgLedEffectParams_PREPROGRAMMED_EFFECT :: Word8
ros2Pal_device_msgsMsgLedEffectParams_PREPROGRAMMED_EFFECT = 6
ros2Pal_device_msgsMsgLedEffectParams_EFFECT_VIA_TOPIC :: Word8
ros2Pal_device_msgsMsgLedEffectParams_EFFECT_VIA_TOPIC = 7
ros2Pal_device_msgsMsgLedEffectParams_DATA_ARRAY :: Word8
ros2Pal_device_msgsMsgLedEffectParams_DATA_ARRAY = 8
encodeRos2Pal_device_msgsMsgLedEffectParams :: Ros2Pal_device_msgsMsgLedEffectParams -> Either Word32 B.ByteString
encodeRos2Pal_device_msgsMsgLedEffectParams value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros2Pal_device_msgsMsgLedEffectParams_effect_type value))
  b1 <- encodeRos2Pal_device_msgsMsgLedFixedColorParams (ros2Pal_device_msgsMsgLedEffectParams_fixed_color value)
  b2 <- encodeRos2Pal_device_msgsMsgLedRainbowParams (ros2Pal_device_msgsMsgLedEffectParams_rainbow value)
  b3 <- encodeRos2Pal_device_msgsMsgLedFadeParams (ros2Pal_device_msgsMsgLedEffectParams_fade value)
  b4 <- encodeRos2Pal_device_msgsMsgLedBlinkParams (ros2Pal_device_msgsMsgLedEffectParams_blink value)
  b5 <- encodeRos2Pal_device_msgsMsgLedProgressParams (ros2Pal_device_msgsMsgLedEffectParams_progress value)
  b6 <- encodeRos2Pal_device_msgsMsgLedFlowParams (ros2Pal_device_msgsMsgLedEffectParams_flow value)
  b7 <- encodeRos2Pal_device_msgsMsgLedPreProgrammedParams (ros2Pal_device_msgsMsgLedEffectParams_preprogrammed value)
  b8 <- encodeRos2Pal_device_msgsMsgLedEffectViaTopicParams (ros2Pal_device_msgsMsgLedEffectParams_effect_via_topic value)
  b9 <- encodeRos2Pal_device_msgsMsgLedDataArrayParams (ros2Pal_device_msgsMsgLedEffectParams_data_array value)
  W.bounded 395 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9]
readRos2Pal_device_msgsMsgLedEffectParams :: W.Decoder Ros2Pal_device_msgsMsgLedEffectParams
readRos2Pal_device_msgsMsgLedEffectParams = do
  a0 <- fromIntegral <$> W.unsigned 1
  a1 <- readRos2Pal_device_msgsMsgLedFixedColorParams
  a2 <- readRos2Pal_device_msgsMsgLedRainbowParams
  a3 <- readRos2Pal_device_msgsMsgLedFadeParams
  a4 <- readRos2Pal_device_msgsMsgLedBlinkParams
  a5 <- readRos2Pal_device_msgsMsgLedProgressParams
  a6 <- readRos2Pal_device_msgsMsgLedFlowParams
  a7 <- readRos2Pal_device_msgsMsgLedPreProgrammedParams
  a8 <- readRos2Pal_device_msgsMsgLedEffectViaTopicParams
  a9 <- readRos2Pal_device_msgsMsgLedDataArrayParams
  let value = Ros2Pal_device_msgsMsgLedEffectParams a0 a1 a2 a3 a4 a5 a6 a7 a8 a9
  case encodeRos2Pal_device_msgsMsgLedEffectParams value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Pal_device_msgsMsgLedEffectParams :: B.ByteString -> Either Word32 Ros2Pal_device_msgsMsgLedEffectParams
decodeRos2Pal_device_msgsMsgLedEffectParams = W.runDecoder 395 readRos2Pal_device_msgsMsgLedEffectParams
instance Canonical Ros2Pal_device_msgsMsgLedEffectParams where
  maximumBytes _ = 395
  encodeValue = encodeRos2Pal_device_msgsMsgLedEffectParams
  readValue = readRos2Pal_device_msgsMsgLedEffectParams
data Ros2Pal_device_msgsActionDoTimedLedEffect_Goal = Ros2Pal_device_msgsActionDoTimedLedEffect_Goal
  {
    -- | \@brief pal_device_msgs/action/DoTimedLedEffect_Goal.devices: uint32; 0..16 elements.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsActionDoTimedLedEffect_Goal; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsActionDoTimedLedEffect_Goal_devices :: [Word32]
  ,
    -- | \@brief pal_device_msgs/action/DoTimedLedEffect_Goal.params: pal_device_msgs/msg/LedEffectParams.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsActionDoTimedLedEffect_Goal; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsActionDoTimedLedEffect_Goal_params :: Ros2Pal_device_msgsMsgLedEffectParams
  ,
    -- | \@brief pal_device_msgs/action/DoTimedLedEffect_Goal.effect_duration: builtin_interfaces/msg/Duration.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsActionDoTimedLedEffect_Goal; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsActionDoTimedLedEffect_Goal_effect_duration :: Ros2Builtin_interfacesMsgDuration
  ,
    -- | \@brief pal_device_msgs/action/DoTimedLedEffect_Goal.priority: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsActionDoTimedLedEffect_Goal; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsActionDoTimedLedEffect_Goal_priority :: Word8
  } deriving (Eq, Show)
defaultRos2Pal_device_msgsActionDoTimedLedEffect_Goal :: Ros2Pal_device_msgsActionDoTimedLedEffect_Goal
defaultRos2Pal_device_msgsActionDoTimedLedEffect_Goal =
    Ros2Pal_device_msgsActionDoTimedLedEffect_Goal
    ([])
    (defaultRos2Pal_device_msgsMsgLedEffectParams)
    (defaultRos2Builtin_interfacesMsgDuration)
    (0)
ros2Pal_device_msgsActionDoTimedLedEffect_GoalCodecIdentity :: String
ros2Pal_device_msgsActionDoTimedLedEffect_GoalCodecIdentity = "UWVMROS1_a7d6aafeeae03e2122a76727ab8503990df3791f351161c72d75a6ecf868a4f2"
encodeRos2Pal_device_msgsActionDoTimedLedEffect_Goal :: Ros2Pal_device_msgsActionDoTimedLedEffect_Goal -> Either Word32 B.ByteString
encodeRos2Pal_device_msgsActionDoTimedLedEffect_Goal value = do
  if length (ros2Pal_device_msgsActionDoTimedLedEffect_Goal_devices value) > 16 then Left 22 else Right ()
  prefix0 <- W.encodeCount 16 (length (ros2Pal_device_msgsActionDoTimedLedEffect_Goal_devices value))
  b0 <- B.concat <$> mapM (\e -> W.encodeUnsigned 4 (fromIntegral (e))) (ros2Pal_device_msgsActionDoTimedLedEffect_Goal_devices value)
  b1 <- encodeRos2Pal_device_msgsMsgLedEffectParams (ros2Pal_device_msgsActionDoTimedLedEffect_Goal_params value)
  b2 <- encodeRos2Builtin_interfacesMsgDuration (ros2Pal_device_msgsActionDoTimedLedEffect_Goal_effect_duration value)
  b3 <- W.encodeUnsigned 1 (fromIntegral (ros2Pal_device_msgsActionDoTimedLedEffect_Goal_priority value))
  W.bounded 472 [prefix0, b0, b1, b2, b3]
readRos2Pal_device_msgsActionDoTimedLedEffect_Goal :: W.Decoder Ros2Pal_device_msgsActionDoTimedLedEffect_Goal
readRos2Pal_device_msgsActionDoTimedLedEffect_Goal = do
  count0 <- W.count 16
  a0 <- replicateM count0 (fromIntegral <$> W.unsigned 4)
  a1 <- readRos2Pal_device_msgsMsgLedEffectParams
  a2 <- readRos2Builtin_interfacesMsgDuration
  a3 <- fromIntegral <$> W.unsigned 1
  let value = Ros2Pal_device_msgsActionDoTimedLedEffect_Goal a0 a1 a2 a3
  case encodeRos2Pal_device_msgsActionDoTimedLedEffect_Goal value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Pal_device_msgsActionDoTimedLedEffect_Goal :: B.ByteString -> Either Word32 Ros2Pal_device_msgsActionDoTimedLedEffect_Goal
decodeRos2Pal_device_msgsActionDoTimedLedEffect_Goal = W.runDecoder 472 readRos2Pal_device_msgsActionDoTimedLedEffect_Goal
instance Canonical Ros2Pal_device_msgsActionDoTimedLedEffect_Goal where
  maximumBytes _ = 472
  encodeValue = encodeRos2Pal_device_msgsActionDoTimedLedEffect_Goal
  readValue = readRos2Pal_device_msgsActionDoTimedLedEffect_Goal
data Ros2Pal_device_msgsActionDoTimedLedEffect_Result = Ros2Pal_device_msgsActionDoTimedLedEffect_Result deriving (Eq, Show)
defaultRos2Pal_device_msgsActionDoTimedLedEffect_Result :: Ros2Pal_device_msgsActionDoTimedLedEffect_Result
defaultRos2Pal_device_msgsActionDoTimedLedEffect_Result = Ros2Pal_device_msgsActionDoTimedLedEffect_Result 
ros2Pal_device_msgsActionDoTimedLedEffect_ResultCodecIdentity :: String
ros2Pal_device_msgsActionDoTimedLedEffect_ResultCodecIdentity = "UWVMROS1_2191f5a4810fe2c464b9a346a9615ebc44783f7a03037798b1c38c727db852f9"
encodeRos2Pal_device_msgsActionDoTimedLedEffect_Result :: Ros2Pal_device_msgsActionDoTimedLedEffect_Result -> Either Word32 B.ByteString
encodeRos2Pal_device_msgsActionDoTimedLedEffect_Result value = do
  W.bounded 0 []
readRos2Pal_device_msgsActionDoTimedLedEffect_Result :: W.Decoder Ros2Pal_device_msgsActionDoTimedLedEffect_Result
readRos2Pal_device_msgsActionDoTimedLedEffect_Result = do
  let value = Ros2Pal_device_msgsActionDoTimedLedEffect_Result 
  case encodeRos2Pal_device_msgsActionDoTimedLedEffect_Result value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Pal_device_msgsActionDoTimedLedEffect_Result :: B.ByteString -> Either Word32 Ros2Pal_device_msgsActionDoTimedLedEffect_Result
decodeRos2Pal_device_msgsActionDoTimedLedEffect_Result = W.runDecoder 0 readRos2Pal_device_msgsActionDoTimedLedEffect_Result
instance Canonical Ros2Pal_device_msgsActionDoTimedLedEffect_Result where
  maximumBytes _ = 0
  encodeValue = encodeRos2Pal_device_msgsActionDoTimedLedEffect_Result
  readValue = readRos2Pal_device_msgsActionDoTimedLedEffect_Result
data Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback = Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback deriving (Eq, Show)
defaultRos2Pal_device_msgsActionDoTimedLedEffect_Feedback :: Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback
defaultRos2Pal_device_msgsActionDoTimedLedEffect_Feedback = Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback 
ros2Pal_device_msgsActionDoTimedLedEffect_FeedbackCodecIdentity :: String
ros2Pal_device_msgsActionDoTimedLedEffect_FeedbackCodecIdentity = "UWVMROS1_b82ad14c20ec79d1face7e2ca9c6013f6a48010c88f849fc81eee4a2e120fc6d"
encodeRos2Pal_device_msgsActionDoTimedLedEffect_Feedback :: Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback -> Either Word32 B.ByteString
encodeRos2Pal_device_msgsActionDoTimedLedEffect_Feedback value = do
  W.bounded 0 []
readRos2Pal_device_msgsActionDoTimedLedEffect_Feedback :: W.Decoder Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback
readRos2Pal_device_msgsActionDoTimedLedEffect_Feedback = do
  let value = Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback 
  case encodeRos2Pal_device_msgsActionDoTimedLedEffect_Feedback value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Pal_device_msgsActionDoTimedLedEffect_Feedback :: B.ByteString -> Either Word32 Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback
decodeRos2Pal_device_msgsActionDoTimedLedEffect_Feedback = W.runDecoder 0 readRos2Pal_device_msgsActionDoTimedLedEffect_Feedback
instance Canonical Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback where
  maximumBytes _ = 0
  encodeValue = encodeRos2Pal_device_msgsActionDoTimedLedEffect_Feedback
  readValue = readRos2Pal_device_msgsActionDoTimedLedEffect_Feedback
data Ros2Pal_device_msgsMsgBatteryState = Ros2Pal_device_msgsMsgBatteryState
  {
    -- | \@brief pal_device_msgs/msg/BatteryState.charge_state: int8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsMsgBatteryState; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsMsgBatteryState_charge_state :: Int8
  ,
    -- | \@brief pal_device_msgs/msg/BatteryState.battery_percentage: float32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsMsgBatteryState; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsMsgBatteryState_battery_percentage :: Float
  } deriving (Eq, Show)
defaultRos2Pal_device_msgsMsgBatteryState :: Ros2Pal_device_msgsMsgBatteryState
defaultRos2Pal_device_msgsMsgBatteryState = Ros2Pal_device_msgsMsgBatteryState (0) (0)
ros2Pal_device_msgsMsgBatteryStateCodecIdentity :: String
ros2Pal_device_msgsMsgBatteryStateCodecIdentity = "UWVMROS1_a9ea99580734e3ff1f8254e19a2543e049b52bb480642e6b31beda7fff3dc904"
ros2Pal_device_msgsMsgBatteryState_FULL :: Word8
ros2Pal_device_msgsMsgBatteryState_FULL = 5
ros2Pal_device_msgsMsgBatteryState_HIGH :: Word8
ros2Pal_device_msgsMsgBatteryState_HIGH = 4
ros2Pal_device_msgsMsgBatteryState_MEDIUM :: Word8
ros2Pal_device_msgsMsgBatteryState_MEDIUM = 3
ros2Pal_device_msgsMsgBatteryState_LOW :: Word8
ros2Pal_device_msgsMsgBatteryState_LOW = 2
ros2Pal_device_msgsMsgBatteryState_CRITICAL_LOW :: Word8
ros2Pal_device_msgsMsgBatteryState_CRITICAL_LOW = 1
encodeRos2Pal_device_msgsMsgBatteryState :: Ros2Pal_device_msgsMsgBatteryState -> Either Word32 B.ByteString
encodeRos2Pal_device_msgsMsgBatteryState value = do
  b0 <- W.encodeSigned 1 (fromIntegral (ros2Pal_device_msgsMsgBatteryState_charge_state value))
  b1 <- W.encodeFloat32 (ros2Pal_device_msgsMsgBatteryState_battery_percentage value)
  W.bounded 5 [b0, b1]
readRos2Pal_device_msgsMsgBatteryState :: W.Decoder Ros2Pal_device_msgsMsgBatteryState
readRos2Pal_device_msgsMsgBatteryState = do
  a0 <- fromIntegral <$> W.signed 1
  a1 <- W.float32
  let value = Ros2Pal_device_msgsMsgBatteryState a0 a1
  case encodeRos2Pal_device_msgsMsgBatteryState value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Pal_device_msgsMsgBatteryState :: B.ByteString -> Either Word32 Ros2Pal_device_msgsMsgBatteryState
decodeRos2Pal_device_msgsMsgBatteryState = W.runDecoder 5 readRos2Pal_device_msgsMsgBatteryState
instance Canonical Ros2Pal_device_msgsMsgBatteryState where
  maximumBytes _ = 5
  encodeValue = encodeRos2Pal_device_msgsMsgBatteryState
  readValue = readRos2Pal_device_msgsMsgBatteryState
data Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader
  {
    -- | \@brief std_msgs/msg/Header.stamp: builtin_interfaces/msg/Time.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Std_msgsMsgHeader; document/platform/pal/en_US/language/haskell/API.md
    ros2Std_msgsMsgHeader_stamp :: Ros2Builtin_interfacesMsgTime
  ,
    -- | \@brief std_msgs/msg/Header.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Std_msgsMsgHeader; document/platform/pal/en_US/language/haskell/API.md
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
data Ros2Pal_device_msgsMsgBumper = Ros2Pal_device_msgsMsgBumper
  {
    -- | \@brief pal_device_msgs/msg/Bumper.header: std_msgs/msg/Header.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsMsgBumper; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsMsgBumper_header :: Ros2Std_msgsMsgHeader
  ,
    -- | \@brief pal_device_msgs/msg/Bumper.is_pressed: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsMsgBumper; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsMsgBumper_is_pressed :: Bool
  } deriving (Eq, Show)
defaultRos2Pal_device_msgsMsgBumper :: Ros2Pal_device_msgsMsgBumper
defaultRos2Pal_device_msgsMsgBumper = Ros2Pal_device_msgsMsgBumper (defaultRos2Std_msgsMsgHeader) (False)
ros2Pal_device_msgsMsgBumperCodecIdentity :: String
ros2Pal_device_msgsMsgBumperCodecIdentity = "UWVMROS1_3488ad42d9a7cb8a17881026b932b5d9559ecbc1525dc827ce898cd37c69c022"
encodeRos2Pal_device_msgsMsgBumper :: Ros2Pal_device_msgsMsgBumper -> Either Word32 B.ByteString
encodeRos2Pal_device_msgsMsgBumper value = do
  b0 <- encodeRos2Std_msgsMsgHeader (ros2Pal_device_msgsMsgBumper_header value)
  b1 <- W.encodeBool (ros2Pal_device_msgsMsgBumper_is_pressed value)
  W.bounded 141 [b0, b1]
readRos2Pal_device_msgsMsgBumper :: W.Decoder Ros2Pal_device_msgsMsgBumper
readRos2Pal_device_msgsMsgBumper = do
  a0 <- readRos2Std_msgsMsgHeader
  a1 <- W.boolean
  let value = Ros2Pal_device_msgsMsgBumper a0 a1
  case encodeRos2Pal_device_msgsMsgBumper value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Pal_device_msgsMsgBumper :: B.ByteString -> Either Word32 Ros2Pal_device_msgsMsgBumper
decodeRos2Pal_device_msgsMsgBumper = W.runDecoder 141 readRos2Pal_device_msgsMsgBumper
instance Canonical Ros2Pal_device_msgsMsgBumper where
  maximumBytes _ = 141
  encodeValue = encodeRos2Pal_device_msgsMsgBumper
  readValue = readRos2Pal_device_msgsMsgBumper
data Ros2Pal_device_msgsMsgLedGroup = Ros2Pal_device_msgsMsgLedGroup
  {
    -- | \@brief pal_device_msgs/msg/LedGroup.led_mask: uint32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsMsgLedGroup; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsMsgLedGroup_led_mask :: Word32
  } deriving (Eq, Show)
defaultRos2Pal_device_msgsMsgLedGroup :: Ros2Pal_device_msgsMsgLedGroup
defaultRos2Pal_device_msgsMsgLedGroup = Ros2Pal_device_msgsMsgLedGroup (0)
ros2Pal_device_msgsMsgLedGroupCodecIdentity :: String
ros2Pal_device_msgsMsgLedGroupCodecIdentity = "UWVMROS1_9a08d65251c3a90b87f2013644a3d13080e40edb3b70f9d87a21d0c5421973f0"
ros2Pal_device_msgsMsgLedGroup_LEFT_EAR :: Word8
ros2Pal_device_msgsMsgLedGroup_LEFT_EAR = 1
ros2Pal_device_msgsMsgLedGroup_RIGHT_EAR :: Word8
ros2Pal_device_msgsMsgLedGroup_RIGHT_EAR = 2
encodeRos2Pal_device_msgsMsgLedGroup :: Ros2Pal_device_msgsMsgLedGroup -> Either Word32 B.ByteString
encodeRos2Pal_device_msgsMsgLedGroup value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros2Pal_device_msgsMsgLedGroup_led_mask value))
  W.bounded 4 [b0]
readRos2Pal_device_msgsMsgLedGroup :: W.Decoder Ros2Pal_device_msgsMsgLedGroup
readRos2Pal_device_msgsMsgLedGroup = do
  a0 <- fromIntegral <$> W.unsigned 4
  let value = Ros2Pal_device_msgsMsgLedGroup a0
  case encodeRos2Pal_device_msgsMsgLedGroup value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Pal_device_msgsMsgLedGroup :: B.ByteString -> Either Word32 Ros2Pal_device_msgsMsgLedGroup
decodeRos2Pal_device_msgsMsgLedGroup = W.runDecoder 4 readRos2Pal_device_msgsMsgLedGroup
instance Canonical Ros2Pal_device_msgsMsgLedGroup where
  maximumBytes _ = 4
  encodeValue = encodeRos2Pal_device_msgsMsgLedGroup
  readValue = readRos2Pal_device_msgsMsgLedGroup
data Ros2Pal_device_msgsSrvCancelEffect_Request = Ros2Pal_device_msgsSrvCancelEffect_Request
  {
    -- | \@brief pal_device_msgs/srv/CancelEffect_Request.effect_id: uint32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsSrvCancelEffect_Request; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsSrvCancelEffect_Request_effect_id :: Word32
  } deriving (Eq, Show)
defaultRos2Pal_device_msgsSrvCancelEffect_Request :: Ros2Pal_device_msgsSrvCancelEffect_Request
defaultRos2Pal_device_msgsSrvCancelEffect_Request = Ros2Pal_device_msgsSrvCancelEffect_Request (0)
ros2Pal_device_msgsSrvCancelEffect_RequestCodecIdentity :: String
ros2Pal_device_msgsSrvCancelEffect_RequestCodecIdentity = "UWVMROS1_120bf0cc7ea1a4b52b66f30b53feabfc144f7d0fa4436f964b4d78c0249af062"
encodeRos2Pal_device_msgsSrvCancelEffect_Request :: Ros2Pal_device_msgsSrvCancelEffect_Request -> Either Word32 B.ByteString
encodeRos2Pal_device_msgsSrvCancelEffect_Request value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros2Pal_device_msgsSrvCancelEffect_Request_effect_id value))
  W.bounded 4 [b0]
readRos2Pal_device_msgsSrvCancelEffect_Request :: W.Decoder Ros2Pal_device_msgsSrvCancelEffect_Request
readRos2Pal_device_msgsSrvCancelEffect_Request = do
  a0 <- fromIntegral <$> W.unsigned 4
  let value = Ros2Pal_device_msgsSrvCancelEffect_Request a0
  case encodeRos2Pal_device_msgsSrvCancelEffect_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Pal_device_msgsSrvCancelEffect_Request :: B.ByteString -> Either Word32 Ros2Pal_device_msgsSrvCancelEffect_Request
decodeRos2Pal_device_msgsSrvCancelEffect_Request = W.runDecoder 4 readRos2Pal_device_msgsSrvCancelEffect_Request
instance Canonical Ros2Pal_device_msgsSrvCancelEffect_Request where
  maximumBytes _ = 4
  encodeValue = encodeRos2Pal_device_msgsSrvCancelEffect_Request
  readValue = readRos2Pal_device_msgsSrvCancelEffect_Request
data Ros2Pal_device_msgsSrvCancelEffect_Response = Ros2Pal_device_msgsSrvCancelEffect_Response deriving (Eq, Show)
defaultRos2Pal_device_msgsSrvCancelEffect_Response :: Ros2Pal_device_msgsSrvCancelEffect_Response
defaultRos2Pal_device_msgsSrvCancelEffect_Response = Ros2Pal_device_msgsSrvCancelEffect_Response 
ros2Pal_device_msgsSrvCancelEffect_ResponseCodecIdentity :: String
ros2Pal_device_msgsSrvCancelEffect_ResponseCodecIdentity = "UWVMROS1_c54c991922500d0588c4dba48df2580f4a752fda5bdd175d318ebc1c31aad657"
encodeRos2Pal_device_msgsSrvCancelEffect_Response :: Ros2Pal_device_msgsSrvCancelEffect_Response -> Either Word32 B.ByteString
encodeRos2Pal_device_msgsSrvCancelEffect_Response value = do
  W.bounded 0 []
readRos2Pal_device_msgsSrvCancelEffect_Response :: W.Decoder Ros2Pal_device_msgsSrvCancelEffect_Response
readRos2Pal_device_msgsSrvCancelEffect_Response = do
  let value = Ros2Pal_device_msgsSrvCancelEffect_Response 
  case encodeRos2Pal_device_msgsSrvCancelEffect_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Pal_device_msgsSrvCancelEffect_Response :: B.ByteString -> Either Word32 Ros2Pal_device_msgsSrvCancelEffect_Response
decodeRos2Pal_device_msgsSrvCancelEffect_Response = W.runDecoder 0 readRos2Pal_device_msgsSrvCancelEffect_Response
instance Canonical Ros2Pal_device_msgsSrvCancelEffect_Response where
  maximumBytes _ = 0
  encodeValue = encodeRos2Pal_device_msgsSrvCancelEffect_Response
  readValue = readRos2Pal_device_msgsSrvCancelEffect_Response
data Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request = Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request
  {
    -- | \@brief pal_device_msgs/srv/ShutdownAndWakeUpRobot_Request.shutdown_duration: builtin_interfaces/msg/Duration.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request_shutdown_duration :: Ros2Builtin_interfacesMsgDuration
  } deriving (Eq, Show)
defaultRos2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request :: Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request
defaultRos2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request =
    Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request
    (defaultRos2Builtin_interfacesMsgDuration)
ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_RequestCodecIdentity :: String
ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_RequestCodecIdentity = "UWVMROS1_3aa4e835b4cf21c77bd25b980b022133b5425f4eb8798832d4f8403bfc691166"
encodeRos2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request :: Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request -> Either Word32 B.ByteString
encodeRos2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request value = do
  b0 <- encodeRos2Builtin_interfacesMsgDuration (ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request_shutdown_duration value)
  W.bounded 8 [b0]
readRos2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request :: W.Decoder Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request
readRos2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request = do
  a0 <- readRos2Builtin_interfacesMsgDuration
  let value = Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request a0
  case encodeRos2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request :: B.ByteString -> Either Word32 Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request
decodeRos2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request = W.runDecoder 8 readRos2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request
instance Canonical Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request where
  maximumBytes _ = 8
  encodeValue = encodeRos2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request
  readValue = readRos2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request
data Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response = Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response deriving (Eq, Show)
defaultRos2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response :: Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response
defaultRos2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response = Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response 
ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_ResponseCodecIdentity :: String
ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_ResponseCodecIdentity = "UWVMROS1_a3db908cd8f5f47c150070a0e2df18fada891ac05b1492ecbd025ba67d7e46af"
encodeRos2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response :: Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response -> Either Word32 B.ByteString
encodeRos2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response value = do
  W.bounded 0 []
readRos2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response :: W.Decoder Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response
readRos2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response = do
  let value = Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response 
  case encodeRos2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response :: B.ByteString -> Either Word32 Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response
decodeRos2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response = W.runDecoder 0 readRos2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response
instance Canonical Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response where
  maximumBytes _ = 0
  encodeValue = encodeRos2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response
  readValue = readRos2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response
data Ros2Pal_device_msgsSrvTimedBlinkEffect_Request = Ros2Pal_device_msgsSrvTimedBlinkEffect_Request
  {
    -- | \@brief pal_device_msgs/srv/TimedBlinkEffect_Request.leds: pal_device_msgs/msg/LedGroup.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsSrvTimedBlinkEffect_Request_leds :: Ros2Pal_device_msgsMsgLedGroup
  ,
    -- | \@brief pal_device_msgs/srv/TimedBlinkEffect_Request.first_color: std_msgs/msg/ColorRGBA.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsSrvTimedBlinkEffect_Request_first_color :: Ros2Std_msgsMsgColorRGBA
  ,
    -- | \@brief pal_device_msgs/srv/TimedBlinkEffect_Request.second_color: std_msgs/msg/ColorRGBA.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsSrvTimedBlinkEffect_Request_second_color :: Ros2Std_msgsMsgColorRGBA
  ,
    -- | \@brief pal_device_msgs/srv/TimedBlinkEffect_Request.first_color_duration: builtin_interfaces/msg/Duration.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsSrvTimedBlinkEffect_Request_first_color_duration :: Ros2Builtin_interfacesMsgDuration
  ,
    -- | \@brief pal_device_msgs/srv/TimedBlinkEffect_Request.second_color_duration: builtin_interfaces/msg/Duration.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsSrvTimedBlinkEffect_Request_second_color_duration :: Ros2Builtin_interfacesMsgDuration
  ,
    -- | \@brief pal_device_msgs/srv/TimedBlinkEffect_Request.effect_duration: builtin_interfaces/msg/Duration.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsSrvTimedBlinkEffect_Request_effect_duration :: Ros2Builtin_interfacesMsgDuration
  ,
    -- | \@brief pal_device_msgs/srv/TimedBlinkEffect_Request.priority: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsSrvTimedBlinkEffect_Request_priority :: Word8
  } deriving (Eq, Show)
defaultRos2Pal_device_msgsSrvTimedBlinkEffect_Request :: Ros2Pal_device_msgsSrvTimedBlinkEffect_Request
defaultRos2Pal_device_msgsSrvTimedBlinkEffect_Request =
    Ros2Pal_device_msgsSrvTimedBlinkEffect_Request
    (defaultRos2Pal_device_msgsMsgLedGroup)
    (defaultRos2Std_msgsMsgColorRGBA)
    (defaultRos2Std_msgsMsgColorRGBA)
    (defaultRos2Builtin_interfacesMsgDuration)
    (defaultRos2Builtin_interfacesMsgDuration)
    (defaultRos2Builtin_interfacesMsgDuration)
    (0)
ros2Pal_device_msgsSrvTimedBlinkEffect_RequestCodecIdentity :: String
ros2Pal_device_msgsSrvTimedBlinkEffect_RequestCodecIdentity = "UWVMROS1_17a50bf4f71fe6d4d3e9d146df74fac1c2d6ed69c5899c51517785cdfcb9b15c"
encodeRos2Pal_device_msgsSrvTimedBlinkEffect_Request :: Ros2Pal_device_msgsSrvTimedBlinkEffect_Request -> Either Word32 B.ByteString
encodeRos2Pal_device_msgsSrvTimedBlinkEffect_Request value = do
  b0 <- encodeRos2Pal_device_msgsMsgLedGroup (ros2Pal_device_msgsSrvTimedBlinkEffect_Request_leds value)
  b1 <- encodeRos2Std_msgsMsgColorRGBA (ros2Pal_device_msgsSrvTimedBlinkEffect_Request_first_color value)
  b2 <- encodeRos2Std_msgsMsgColorRGBA (ros2Pal_device_msgsSrvTimedBlinkEffect_Request_second_color value)
  b3 <- encodeRos2Builtin_interfacesMsgDuration (ros2Pal_device_msgsSrvTimedBlinkEffect_Request_first_color_duration value)
  b4 <- encodeRos2Builtin_interfacesMsgDuration (ros2Pal_device_msgsSrvTimedBlinkEffect_Request_second_color_duration value)
  b5 <- encodeRos2Builtin_interfacesMsgDuration (ros2Pal_device_msgsSrvTimedBlinkEffect_Request_effect_duration value)
  b6 <- W.encodeUnsigned 1 (fromIntegral (ros2Pal_device_msgsSrvTimedBlinkEffect_Request_priority value))
  W.bounded 61 [b0, b1, b2, b3, b4, b5, b6]
readRos2Pal_device_msgsSrvTimedBlinkEffect_Request :: W.Decoder Ros2Pal_device_msgsSrvTimedBlinkEffect_Request
readRos2Pal_device_msgsSrvTimedBlinkEffect_Request = do
  a0 <- readRos2Pal_device_msgsMsgLedGroup
  a1 <- readRos2Std_msgsMsgColorRGBA
  a2 <- readRos2Std_msgsMsgColorRGBA
  a3 <- readRos2Builtin_interfacesMsgDuration
  a4 <- readRos2Builtin_interfacesMsgDuration
  a5 <- readRos2Builtin_interfacesMsgDuration
  a6 <- fromIntegral <$> W.unsigned 1
  let value = Ros2Pal_device_msgsSrvTimedBlinkEffect_Request a0 a1 a2 a3 a4 a5 a6
  case encodeRos2Pal_device_msgsSrvTimedBlinkEffect_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Pal_device_msgsSrvTimedBlinkEffect_Request :: B.ByteString -> Either Word32 Ros2Pal_device_msgsSrvTimedBlinkEffect_Request
decodeRos2Pal_device_msgsSrvTimedBlinkEffect_Request = W.runDecoder 61 readRos2Pal_device_msgsSrvTimedBlinkEffect_Request
instance Canonical Ros2Pal_device_msgsSrvTimedBlinkEffect_Request where
  maximumBytes _ = 61
  encodeValue = encodeRos2Pal_device_msgsSrvTimedBlinkEffect_Request
  readValue = readRos2Pal_device_msgsSrvTimedBlinkEffect_Request
data Ros2Pal_device_msgsSrvTimedBlinkEffect_Response = Ros2Pal_device_msgsSrvTimedBlinkEffect_Response
  {
    -- | \@brief pal_device_msgs/srv/TimedBlinkEffect_Response.effect_id: uint32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsSrvTimedBlinkEffect_Response; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsSrvTimedBlinkEffect_Response_effect_id :: Word32
  } deriving (Eq, Show)
defaultRos2Pal_device_msgsSrvTimedBlinkEffect_Response :: Ros2Pal_device_msgsSrvTimedBlinkEffect_Response
defaultRos2Pal_device_msgsSrvTimedBlinkEffect_Response = Ros2Pal_device_msgsSrvTimedBlinkEffect_Response (0)
ros2Pal_device_msgsSrvTimedBlinkEffect_ResponseCodecIdentity :: String
ros2Pal_device_msgsSrvTimedBlinkEffect_ResponseCodecIdentity = "UWVMROS1_ea08afa309ccd316b279952de55d50e4d49fe027387ba12e54eba4b488e4d66a"
encodeRos2Pal_device_msgsSrvTimedBlinkEffect_Response :: Ros2Pal_device_msgsSrvTimedBlinkEffect_Response -> Either Word32 B.ByteString
encodeRos2Pal_device_msgsSrvTimedBlinkEffect_Response value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros2Pal_device_msgsSrvTimedBlinkEffect_Response_effect_id value))
  W.bounded 4 [b0]
readRos2Pal_device_msgsSrvTimedBlinkEffect_Response :: W.Decoder Ros2Pal_device_msgsSrvTimedBlinkEffect_Response
readRos2Pal_device_msgsSrvTimedBlinkEffect_Response = do
  a0 <- fromIntegral <$> W.unsigned 4
  let value = Ros2Pal_device_msgsSrvTimedBlinkEffect_Response a0
  case encodeRos2Pal_device_msgsSrvTimedBlinkEffect_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Pal_device_msgsSrvTimedBlinkEffect_Response :: B.ByteString -> Either Word32 Ros2Pal_device_msgsSrvTimedBlinkEffect_Response
decodeRos2Pal_device_msgsSrvTimedBlinkEffect_Response = W.runDecoder 4 readRos2Pal_device_msgsSrvTimedBlinkEffect_Response
instance Canonical Ros2Pal_device_msgsSrvTimedBlinkEffect_Response where
  maximumBytes _ = 4
  encodeValue = encodeRos2Pal_device_msgsSrvTimedBlinkEffect_Response
  readValue = readRos2Pal_device_msgsSrvTimedBlinkEffect_Response
data Ros2Pal_device_msgsSrvTimedColourEffect_Request = Ros2Pal_device_msgsSrvTimedColourEffect_Request
  {
    -- | \@brief pal_device_msgs/srv/TimedColourEffect_Request.leds: pal_device_msgs/msg/LedGroup.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsSrvTimedColourEffect_Request; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsSrvTimedColourEffect_Request_leds :: Ros2Pal_device_msgsMsgLedGroup
  ,
    -- | \@brief pal_device_msgs/srv/TimedColourEffect_Request.color: std_msgs/msg/ColorRGBA.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsSrvTimedColourEffect_Request; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsSrvTimedColourEffect_Request_color :: Ros2Std_msgsMsgColorRGBA
  ,
    -- | \@brief pal_device_msgs/srv/TimedColourEffect_Request.effect_duration: builtin_interfaces/msg/Duration.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsSrvTimedColourEffect_Request; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsSrvTimedColourEffect_Request_effect_duration :: Ros2Builtin_interfacesMsgDuration
  ,
    -- | \@brief pal_device_msgs/srv/TimedColourEffect_Request.priority: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsSrvTimedColourEffect_Request; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsSrvTimedColourEffect_Request_priority :: Word8
  } deriving (Eq, Show)
defaultRos2Pal_device_msgsSrvTimedColourEffect_Request :: Ros2Pal_device_msgsSrvTimedColourEffect_Request
defaultRos2Pal_device_msgsSrvTimedColourEffect_Request =
    Ros2Pal_device_msgsSrvTimedColourEffect_Request
    (defaultRos2Pal_device_msgsMsgLedGroup)
    (defaultRos2Std_msgsMsgColorRGBA)
    (defaultRos2Builtin_interfacesMsgDuration)
    (0)
ros2Pal_device_msgsSrvTimedColourEffect_RequestCodecIdentity :: String
ros2Pal_device_msgsSrvTimedColourEffect_RequestCodecIdentity = "UWVMROS1_bb25c25962a52120bd8575be65dabd983ac46c7a19794f3793b37c2bf8ccbfa8"
encodeRos2Pal_device_msgsSrvTimedColourEffect_Request :: Ros2Pal_device_msgsSrvTimedColourEffect_Request -> Either Word32 B.ByteString
encodeRos2Pal_device_msgsSrvTimedColourEffect_Request value = do
  b0 <- encodeRos2Pal_device_msgsMsgLedGroup (ros2Pal_device_msgsSrvTimedColourEffect_Request_leds value)
  b1 <- encodeRos2Std_msgsMsgColorRGBA (ros2Pal_device_msgsSrvTimedColourEffect_Request_color value)
  b2 <- encodeRos2Builtin_interfacesMsgDuration (ros2Pal_device_msgsSrvTimedColourEffect_Request_effect_duration value)
  b3 <- W.encodeUnsigned 1 (fromIntegral (ros2Pal_device_msgsSrvTimedColourEffect_Request_priority value))
  W.bounded 29 [b0, b1, b2, b3]
readRos2Pal_device_msgsSrvTimedColourEffect_Request :: W.Decoder Ros2Pal_device_msgsSrvTimedColourEffect_Request
readRos2Pal_device_msgsSrvTimedColourEffect_Request = do
  a0 <- readRos2Pal_device_msgsMsgLedGroup
  a1 <- readRos2Std_msgsMsgColorRGBA
  a2 <- readRos2Builtin_interfacesMsgDuration
  a3 <- fromIntegral <$> W.unsigned 1
  let value = Ros2Pal_device_msgsSrvTimedColourEffect_Request a0 a1 a2 a3
  case encodeRos2Pal_device_msgsSrvTimedColourEffect_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Pal_device_msgsSrvTimedColourEffect_Request :: B.ByteString -> Either Word32 Ros2Pal_device_msgsSrvTimedColourEffect_Request
decodeRos2Pal_device_msgsSrvTimedColourEffect_Request = W.runDecoder 29 readRos2Pal_device_msgsSrvTimedColourEffect_Request
instance Canonical Ros2Pal_device_msgsSrvTimedColourEffect_Request where
  maximumBytes _ = 29
  encodeValue = encodeRos2Pal_device_msgsSrvTimedColourEffect_Request
  readValue = readRos2Pal_device_msgsSrvTimedColourEffect_Request
data Ros2Pal_device_msgsSrvTimedColourEffect_Response = Ros2Pal_device_msgsSrvTimedColourEffect_Response
  {
    -- | \@brief pal_device_msgs/srv/TimedColourEffect_Response.effect_id: uint32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsSrvTimedColourEffect_Response; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsSrvTimedColourEffect_Response_effect_id :: Word32
  } deriving (Eq, Show)
defaultRos2Pal_device_msgsSrvTimedColourEffect_Response :: Ros2Pal_device_msgsSrvTimedColourEffect_Response
defaultRos2Pal_device_msgsSrvTimedColourEffect_Response = Ros2Pal_device_msgsSrvTimedColourEffect_Response (0)
ros2Pal_device_msgsSrvTimedColourEffect_ResponseCodecIdentity :: String
ros2Pal_device_msgsSrvTimedColourEffect_ResponseCodecIdentity = "UWVMROS1_5cd500032cfe7a263100061b2ebda37e8639cbf8a9c6fc978e9525f59d9df1f9"
encodeRos2Pal_device_msgsSrvTimedColourEffect_Response :: Ros2Pal_device_msgsSrvTimedColourEffect_Response -> Either Word32 B.ByteString
encodeRos2Pal_device_msgsSrvTimedColourEffect_Response value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros2Pal_device_msgsSrvTimedColourEffect_Response_effect_id value))
  W.bounded 4 [b0]
readRos2Pal_device_msgsSrvTimedColourEffect_Response :: W.Decoder Ros2Pal_device_msgsSrvTimedColourEffect_Response
readRos2Pal_device_msgsSrvTimedColourEffect_Response = do
  a0 <- fromIntegral <$> W.unsigned 4
  let value = Ros2Pal_device_msgsSrvTimedColourEffect_Response a0
  case encodeRos2Pal_device_msgsSrvTimedColourEffect_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Pal_device_msgsSrvTimedColourEffect_Response :: B.ByteString -> Either Word32 Ros2Pal_device_msgsSrvTimedColourEffect_Response
decodeRos2Pal_device_msgsSrvTimedColourEffect_Response = W.runDecoder 4 readRos2Pal_device_msgsSrvTimedColourEffect_Response
instance Canonical Ros2Pal_device_msgsSrvTimedColourEffect_Response where
  maximumBytes _ = 4
  encodeValue = encodeRos2Pal_device_msgsSrvTimedColourEffect_Response
  readValue = readRos2Pal_device_msgsSrvTimedColourEffect_Response
data Ros2Pal_device_msgsSrvTimedFadeEffect_Request = Ros2Pal_device_msgsSrvTimedFadeEffect_Request
  {
    -- | \@brief pal_device_msgs/srv/TimedFadeEffect_Request.leds: pal_device_msgs/msg/LedGroup.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsSrvTimedFadeEffect_Request_leds :: Ros2Pal_device_msgsMsgLedGroup
  ,
    -- | \@brief pal_device_msgs/srv/TimedFadeEffect_Request.first_color: std_msgs/msg/ColorRGBA.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsSrvTimedFadeEffect_Request_first_color :: Ros2Std_msgsMsgColorRGBA
  ,
    -- | \@brief pal_device_msgs/srv/TimedFadeEffect_Request.second_color: std_msgs/msg/ColorRGBA.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsSrvTimedFadeEffect_Request_second_color :: Ros2Std_msgsMsgColorRGBA
  ,
    -- | \@brief pal_device_msgs/srv/TimedFadeEffect_Request.color_change_duration: builtin_interfaces/msg/Duration.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsSrvTimedFadeEffect_Request_color_change_duration :: Ros2Builtin_interfacesMsgDuration
  ,
    -- | \@brief pal_device_msgs/srv/TimedFadeEffect_Request.reverse_fade: bool.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsSrvTimedFadeEffect_Request_reverse_fade :: Bool
  ,
    -- | \@brief pal_device_msgs/srv/TimedFadeEffect_Request.effect_duration: builtin_interfaces/msg/Duration.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsSrvTimedFadeEffect_Request_effect_duration :: Ros2Builtin_interfacesMsgDuration
  ,
    -- | \@brief pal_device_msgs/srv/TimedFadeEffect_Request.priority: uint8.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsSrvTimedFadeEffect_Request_priority :: Word8
  } deriving (Eq, Show)
defaultRos2Pal_device_msgsSrvTimedFadeEffect_Request :: Ros2Pal_device_msgsSrvTimedFadeEffect_Request
defaultRos2Pal_device_msgsSrvTimedFadeEffect_Request =
    Ros2Pal_device_msgsSrvTimedFadeEffect_Request
    (defaultRos2Pal_device_msgsMsgLedGroup)
    (defaultRos2Std_msgsMsgColorRGBA)
    (defaultRos2Std_msgsMsgColorRGBA)
    (defaultRos2Builtin_interfacesMsgDuration)
    (False)
    (defaultRos2Builtin_interfacesMsgDuration)
    (0)
ros2Pal_device_msgsSrvTimedFadeEffect_RequestCodecIdentity :: String
ros2Pal_device_msgsSrvTimedFadeEffect_RequestCodecIdentity = "UWVMROS1_07c57a457aa0767c766865c5c3b0fdbf5c46e39eac881b452fbc08933c1d3b13"
encodeRos2Pal_device_msgsSrvTimedFadeEffect_Request :: Ros2Pal_device_msgsSrvTimedFadeEffect_Request -> Either Word32 B.ByteString
encodeRos2Pal_device_msgsSrvTimedFadeEffect_Request value = do
  b0 <- encodeRos2Pal_device_msgsMsgLedGroup (ros2Pal_device_msgsSrvTimedFadeEffect_Request_leds value)
  b1 <- encodeRos2Std_msgsMsgColorRGBA (ros2Pal_device_msgsSrvTimedFadeEffect_Request_first_color value)
  b2 <- encodeRos2Std_msgsMsgColorRGBA (ros2Pal_device_msgsSrvTimedFadeEffect_Request_second_color value)
  b3 <- encodeRos2Builtin_interfacesMsgDuration (ros2Pal_device_msgsSrvTimedFadeEffect_Request_color_change_duration value)
  b4 <- W.encodeBool (ros2Pal_device_msgsSrvTimedFadeEffect_Request_reverse_fade value)
  b5 <- encodeRos2Builtin_interfacesMsgDuration (ros2Pal_device_msgsSrvTimedFadeEffect_Request_effect_duration value)
  b6 <- W.encodeUnsigned 1 (fromIntegral (ros2Pal_device_msgsSrvTimedFadeEffect_Request_priority value))
  W.bounded 54 [b0, b1, b2, b3, b4, b5, b6]
readRos2Pal_device_msgsSrvTimedFadeEffect_Request :: W.Decoder Ros2Pal_device_msgsSrvTimedFadeEffect_Request
readRos2Pal_device_msgsSrvTimedFadeEffect_Request = do
  a0 <- readRos2Pal_device_msgsMsgLedGroup
  a1 <- readRos2Std_msgsMsgColorRGBA
  a2 <- readRos2Std_msgsMsgColorRGBA
  a3 <- readRos2Builtin_interfacesMsgDuration
  a4 <- W.boolean
  a5 <- readRos2Builtin_interfacesMsgDuration
  a6 <- fromIntegral <$> W.unsigned 1
  let value = Ros2Pal_device_msgsSrvTimedFadeEffect_Request a0 a1 a2 a3 a4 a5 a6
  case encodeRos2Pal_device_msgsSrvTimedFadeEffect_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Pal_device_msgsSrvTimedFadeEffect_Request :: B.ByteString -> Either Word32 Ros2Pal_device_msgsSrvTimedFadeEffect_Request
decodeRos2Pal_device_msgsSrvTimedFadeEffect_Request = W.runDecoder 54 readRos2Pal_device_msgsSrvTimedFadeEffect_Request
instance Canonical Ros2Pal_device_msgsSrvTimedFadeEffect_Request where
  maximumBytes _ = 54
  encodeValue = encodeRos2Pal_device_msgsSrvTimedFadeEffect_Request
  readValue = readRos2Pal_device_msgsSrvTimedFadeEffect_Request
data Ros2Pal_device_msgsSrvTimedFadeEffect_Response = Ros2Pal_device_msgsSrvTimedFadeEffect_Response
  {
    -- | \@brief pal_device_msgs/srv/TimedFadeEffect_Response.effect_id: uint32.
    --  \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
    --  the original field position and signedness; invalid bounds fail instead of truncating the value.
    --  \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    --  scaling, frame conversion or normalization.
    --  \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
    --  and allocator ownership follow the enclosing decode function.
    -- \@see Ros2Pal_device_msgsSrvTimedFadeEffect_Response; document/platform/pal/en_US/language/haskell/API.md
    ros2Pal_device_msgsSrvTimedFadeEffect_Response_effect_id :: Word32
  } deriving (Eq, Show)
defaultRos2Pal_device_msgsSrvTimedFadeEffect_Response :: Ros2Pal_device_msgsSrvTimedFadeEffect_Response
defaultRos2Pal_device_msgsSrvTimedFadeEffect_Response = Ros2Pal_device_msgsSrvTimedFadeEffect_Response (0)
ros2Pal_device_msgsSrvTimedFadeEffect_ResponseCodecIdentity :: String
ros2Pal_device_msgsSrvTimedFadeEffect_ResponseCodecIdentity = "UWVMROS1_2d94870076ef7b1fe03d8ef45d96588fa3850faa0eaf39efd218b21fe947e8f5"
encodeRos2Pal_device_msgsSrvTimedFadeEffect_Response :: Ros2Pal_device_msgsSrvTimedFadeEffect_Response -> Either Word32 B.ByteString
encodeRos2Pal_device_msgsSrvTimedFadeEffect_Response value = do
  b0 <- W.encodeUnsigned 4 (fromIntegral (ros2Pal_device_msgsSrvTimedFadeEffect_Response_effect_id value))
  W.bounded 4 [b0]
readRos2Pal_device_msgsSrvTimedFadeEffect_Response :: W.Decoder Ros2Pal_device_msgsSrvTimedFadeEffect_Response
readRos2Pal_device_msgsSrvTimedFadeEffect_Response = do
  a0 <- fromIntegral <$> W.unsigned 4
  let value = Ros2Pal_device_msgsSrvTimedFadeEffect_Response a0
  case encodeRos2Pal_device_msgsSrvTimedFadeEffect_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Pal_device_msgsSrvTimedFadeEffect_Response :: B.ByteString -> Either Word32 Ros2Pal_device_msgsSrvTimedFadeEffect_Response
decodeRos2Pal_device_msgsSrvTimedFadeEffect_Response = W.runDecoder 4 readRos2Pal_device_msgsSrvTimedFadeEffect_Response
instance Canonical Ros2Pal_device_msgsSrvTimedFadeEffect_Response where
  maximumBytes _ = 4
  encodeValue = encodeRos2Pal_device_msgsSrvTimedFadeEffect_Response
  readValue = readRos2Pal_device_msgsSrvTimedFadeEffect_Response
