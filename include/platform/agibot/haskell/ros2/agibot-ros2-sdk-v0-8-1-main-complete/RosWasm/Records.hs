-- @file Records.hs
-- @brief Full agibot haskell codecs and original record metadata.
-- @details Complete agibot ros2_sdk_v0_8_1_main values in haskell. 72 original records retain 227 fields and 55
-- interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
-- definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
-- profile API manual under document/platform/agibot/en_US/catalog/.
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
data Ros2Aimdk_msgsMsgAgentPropertyIdType = Ros2Aimdk_msgsMsgAgentPropertyIdType
  {
    -- | \@brief aimdk_msgs/msg/AgentPropertyIdType.value: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgAgentPropertyIdType_value :: Word8
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgAgentPropertyIdType :: Ros2Aimdk_msgsMsgAgentPropertyIdType
defaultRos2Aimdk_msgsMsgAgentPropertyIdType = Ros2Aimdk_msgsMsgAgentPropertyIdType (0)
ros2Aimdk_msgsMsgAgentPropertyIdTypeCodecIdentity :: String
ros2Aimdk_msgsMsgAgentPropertyIdTypeCodecIdentity =
    "UWVMROS1_96958ff52528b07c7f9bc239e80676edc77b27faa077a3bed7222cf32d1ebf0b"
ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_UNDEFINED :: Word8
ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_UNDEFINED = 0
ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_LANGUAGE :: Word8
ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_LANGUAGE = 1
ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_RUN_MODE :: Word8
ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_RUN_MODE = 2
ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_GREET :: Word8
ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_GREET = 3
ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_HEAD_FOLLOW :: Word8
ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_HEAD_FOLLOW = 4
ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_DUPLEX_TIMEOUT :: Word8
ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_DUPLEX_TIMEOUT = 5
ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_ENVIRONMENT_SWITCH :: Word8
ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_ENVIRONMENT_SWITCH = 6
ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_WELCOME_STATUS :: Word8
ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_WELCOME_STATUS = 7
encodeRos2Aimdk_msgsMsgAgentPropertyIdType :: Ros2Aimdk_msgsMsgAgentPropertyIdType -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgAgentPropertyIdType value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros2Aimdk_msgsMsgAgentPropertyIdType_value value))
  W.bounded 1 [b0]
readRos2Aimdk_msgsMsgAgentPropertyIdType :: W.Decoder Ros2Aimdk_msgsMsgAgentPropertyIdType
readRos2Aimdk_msgsMsgAgentPropertyIdType = do
  a0 <- fromIntegral <$> W.unsigned 1
  let value = Ros2Aimdk_msgsMsgAgentPropertyIdType a0
  case encodeRos2Aimdk_msgsMsgAgentPropertyIdType value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgAgentPropertyIdType :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgAgentPropertyIdType
decodeRos2Aimdk_msgsMsgAgentPropertyIdType = W.runDecoder 1 readRos2Aimdk_msgsMsgAgentPropertyIdType
instance Canonical Ros2Aimdk_msgsMsgAgentPropertyIdType where
  maximumBytes _ = 1
  encodeValue = encodeRos2Aimdk_msgsMsgAgentPropertyIdType
  readValue = readRos2Aimdk_msgsMsgAgentPropertyIdType
data Ros2Aimdk_msgsMsgAgentPropertiesValue = Ros2Aimdk_msgsMsgAgentPropertiesValue
  {
    -- | \@brief aimdk_msgs/msg/AgentPropertiesValue.key: aimdk_msgs/msg/AgentPropertyIdType.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgAgentPropertiesValue; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgAgentPropertiesValue_key :: Ros2Aimdk_msgsMsgAgentPropertyIdType
  ,
    -- | \@brief aimdk_msgs/msg/AgentPropertiesValue.value: string; each string is 0..128 bytes; strict UTF-8 with
    -- no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgAgentPropertiesValue; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgAgentPropertiesValue_value :: T.Text
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgAgentPropertiesValue :: Ros2Aimdk_msgsMsgAgentPropertiesValue
defaultRos2Aimdk_msgsMsgAgentPropertiesValue = Ros2Aimdk_msgsMsgAgentPropertiesValue
    (defaultRos2Aimdk_msgsMsgAgentPropertyIdType) (T.empty)
ros2Aimdk_msgsMsgAgentPropertiesValueCodecIdentity :: String
ros2Aimdk_msgsMsgAgentPropertiesValueCodecIdentity =
    "UWVMROS1_c7ec8887e5fb223291cb324c1ae21f20490955108ee137db384c6775fb332c6a"
encodeRos2Aimdk_msgsMsgAgentPropertiesValue :: Ros2Aimdk_msgsMsgAgentPropertiesValue -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgAgentPropertiesValue value = do
  b0 <- encodeRos2Aimdk_msgsMsgAgentPropertyIdType (ros2Aimdk_msgsMsgAgentPropertiesValue_key value)
  b1 <- W.encodeText 128 True (ros2Aimdk_msgsMsgAgentPropertiesValue_value value)
  W.bounded 133 [b0, b1]
readRos2Aimdk_msgsMsgAgentPropertiesValue :: W.Decoder Ros2Aimdk_msgsMsgAgentPropertiesValue
readRos2Aimdk_msgsMsgAgentPropertiesValue = do
  a0 <- readRos2Aimdk_msgsMsgAgentPropertyIdType
  a1 <- W.text 128 True
  let value = Ros2Aimdk_msgsMsgAgentPropertiesValue a0 a1
  case encodeRos2Aimdk_msgsMsgAgentPropertiesValue value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgAgentPropertiesValue :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgAgentPropertiesValue
decodeRos2Aimdk_msgsMsgAgentPropertiesValue = W.runDecoder 133 readRos2Aimdk_msgsMsgAgentPropertiesValue
instance Canonical Ros2Aimdk_msgsMsgAgentPropertiesValue where
  maximumBytes _ = 133
  encodeValue = encodeRos2Aimdk_msgsMsgAgentPropertiesValue
  readValue = readRos2Aimdk_msgsMsgAgentPropertiesValue
data Ros2Aimdk_msgsMsgAgentProperties = Ros2Aimdk_msgsMsgAgentProperties
  {
    -- | \@brief aimdk_msgs/msg/AgentProperties.properties: aimdk_msgs/msg/AgentPropertiesValue; 0..4 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgAgentProperties; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgAgentProperties_properties :: [Ros2Aimdk_msgsMsgAgentPropertiesValue]
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgAgentProperties :: Ros2Aimdk_msgsMsgAgentProperties
defaultRos2Aimdk_msgsMsgAgentProperties = Ros2Aimdk_msgsMsgAgentProperties ([])
ros2Aimdk_msgsMsgAgentPropertiesCodecIdentity :: String
ros2Aimdk_msgsMsgAgentPropertiesCodecIdentity =
    "UWVMROS1_e729493bf2dfbd5ed1f726a95ac39d42f33a28f476edd13f66e75f9cb591694f"
encodeRos2Aimdk_msgsMsgAgentProperties :: Ros2Aimdk_msgsMsgAgentProperties -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgAgentProperties value = do
  if length (ros2Aimdk_msgsMsgAgentProperties_properties value) > 4 then Left 22 else Right ()
  prefix0 <- W.encodeCount 4 (length (ros2Aimdk_msgsMsgAgentProperties_properties value))
  b0 <- B.concat <$> mapM (\e -> encodeRos2Aimdk_msgsMsgAgentPropertiesValue (e))
      (ros2Aimdk_msgsMsgAgentProperties_properties value)
  W.bounded 536 [prefix0, b0]
readRos2Aimdk_msgsMsgAgentProperties :: W.Decoder Ros2Aimdk_msgsMsgAgentProperties
readRos2Aimdk_msgsMsgAgentProperties = do
  count0 <- W.count 4
  a0 <- replicateM count0 (readRos2Aimdk_msgsMsgAgentPropertiesValue)
  let value = Ros2Aimdk_msgsMsgAgentProperties a0
  case encodeRos2Aimdk_msgsMsgAgentProperties value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgAgentProperties :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgAgentProperties
decodeRos2Aimdk_msgsMsgAgentProperties = W.runDecoder 536 readRos2Aimdk_msgsMsgAgentProperties
instance Canonical Ros2Aimdk_msgsMsgAgentProperties where
  maximumBytes _ = 536
  encodeValue = encodeRos2Aimdk_msgsMsgAgentProperties
  readValue = readRos2Aimdk_msgsMsgAgentProperties
data Ros2Aimdk_msgsMsgAudioVadStateType = Ros2Aimdk_msgsMsgAudioVadStateType
  {
    -- | \@brief aimdk_msgs/msg/AudioVadStateType.value: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgAudioVadStateType_value :: Word8
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgAudioVadStateType :: Ros2Aimdk_msgsMsgAudioVadStateType
defaultRos2Aimdk_msgsMsgAudioVadStateType = Ros2Aimdk_msgsMsgAudioVadStateType (0)
ros2Aimdk_msgsMsgAudioVadStateTypeCodecIdentity :: String
ros2Aimdk_msgsMsgAudioVadStateTypeCodecIdentity =
    "UWVMROS1_edd7a6f6ad81c2c6479d3331d9e87a2fc66eedfb73f789caf0b888eeb9480526"
ros2Aimdk_msgsMsgAudioVadStateType_AUDIO_VAD_STATE_NONE :: Word8
ros2Aimdk_msgsMsgAudioVadStateType_AUDIO_VAD_STATE_NONE = 0
ros2Aimdk_msgsMsgAudioVadStateType_AUDIO_VAD_STATE_BEGIN :: Word8
ros2Aimdk_msgsMsgAudioVadStateType_AUDIO_VAD_STATE_BEGIN = 1
ros2Aimdk_msgsMsgAudioVadStateType_AUDIO_VAD_STATE_PROCESSING :: Word8
ros2Aimdk_msgsMsgAudioVadStateType_AUDIO_VAD_STATE_PROCESSING = 2
ros2Aimdk_msgsMsgAudioVadStateType_AUDIO_VAD_STATE_END :: Word8
ros2Aimdk_msgsMsgAudioVadStateType_AUDIO_VAD_STATE_END = 3
encodeRos2Aimdk_msgsMsgAudioVadStateType :: Ros2Aimdk_msgsMsgAudioVadStateType -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgAudioVadStateType value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros2Aimdk_msgsMsgAudioVadStateType_value value))
  W.bounded 1 [b0]
readRos2Aimdk_msgsMsgAudioVadStateType :: W.Decoder Ros2Aimdk_msgsMsgAudioVadStateType
readRos2Aimdk_msgsMsgAudioVadStateType = do
  a0 <- fromIntegral <$> W.unsigned 1
  let value = Ros2Aimdk_msgsMsgAudioVadStateType a0
  case encodeRos2Aimdk_msgsMsgAudioVadStateType value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgAudioVadStateType :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgAudioVadStateType
decodeRos2Aimdk_msgsMsgAudioVadStateType = W.runDecoder 1 readRos2Aimdk_msgsMsgAudioVadStateType
instance Canonical Ros2Aimdk_msgsMsgAudioVadStateType where
  maximumBytes _ = 1
  encodeValue = encodeRos2Aimdk_msgsMsgAudioVadStateType
  readValue = readRos2Aimdk_msgsMsgAudioVadStateType
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
ros2Builtin_interfacesMsgTimeCodecIdentity =
    "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7"
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
data Ros2Aimdk_msgsMsgRequestHeader = Ros2Aimdk_msgsMsgRequestHeader
  {
    -- | \@brief aimdk_msgs/msg/RequestHeader.stamp: builtin_interfaces/msg/Time.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgRequestHeader; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgRequestHeader_stamp :: Ros2Builtin_interfacesMsgTime
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgRequestHeader :: Ros2Aimdk_msgsMsgRequestHeader
defaultRos2Aimdk_msgsMsgRequestHeader = Ros2Aimdk_msgsMsgRequestHeader (defaultRos2Builtin_interfacesMsgTime)
ros2Aimdk_msgsMsgRequestHeaderCodecIdentity :: String
ros2Aimdk_msgsMsgRequestHeaderCodecIdentity =
    "UWVMROS1_743efde912144cd1db5072b5a1d26b943c3fb882612b07c1883400784947b000"
encodeRos2Aimdk_msgsMsgRequestHeader :: Ros2Aimdk_msgsMsgRequestHeader -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgRequestHeader value = do
  b0 <- encodeRos2Builtin_interfacesMsgTime (ros2Aimdk_msgsMsgRequestHeader_stamp value)
  W.bounded 8 [b0]
readRos2Aimdk_msgsMsgRequestHeader :: W.Decoder Ros2Aimdk_msgsMsgRequestHeader
readRos2Aimdk_msgsMsgRequestHeader = do
  a0 <- readRos2Builtin_interfacesMsgTime
  let value = Ros2Aimdk_msgsMsgRequestHeader a0
  case encodeRos2Aimdk_msgsMsgRequestHeader value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgRequestHeader :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgRequestHeader
decodeRos2Aimdk_msgsMsgRequestHeader = W.runDecoder 8 readRos2Aimdk_msgsMsgRequestHeader
instance Canonical Ros2Aimdk_msgsMsgRequestHeader where
  maximumBytes _ = 8
  encodeValue = encodeRos2Aimdk_msgsMsgRequestHeader
  readValue = readRos2Aimdk_msgsMsgRequestHeader
data Ros2Aimdk_msgsMsgCommonRequest = Ros2Aimdk_msgsMsgCommonRequest
  {
    -- | \@brief aimdk_msgs/msg/CommonRequest.header: aimdk_msgs/msg/RequestHeader.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgCommonRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgCommonRequest_header :: Ros2Aimdk_msgsMsgRequestHeader
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgCommonRequest :: Ros2Aimdk_msgsMsgCommonRequest
defaultRos2Aimdk_msgsMsgCommonRequest = Ros2Aimdk_msgsMsgCommonRequest (defaultRos2Aimdk_msgsMsgRequestHeader)
ros2Aimdk_msgsMsgCommonRequestCodecIdentity :: String
ros2Aimdk_msgsMsgCommonRequestCodecIdentity =
    "UWVMROS1_d4dd21dc3b43faa42396e4c4aa0f1ad35a507b6bd313f5d197268e79d67dd9d7"
encodeRos2Aimdk_msgsMsgCommonRequest :: Ros2Aimdk_msgsMsgCommonRequest -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgCommonRequest value = do
  b0 <- encodeRos2Aimdk_msgsMsgRequestHeader (ros2Aimdk_msgsMsgCommonRequest_header value)
  W.bounded 8 [b0]
readRos2Aimdk_msgsMsgCommonRequest :: W.Decoder Ros2Aimdk_msgsMsgCommonRequest
readRos2Aimdk_msgsMsgCommonRequest = do
  a0 <- readRos2Aimdk_msgsMsgRequestHeader
  let value = Ros2Aimdk_msgsMsgCommonRequest a0
  case encodeRos2Aimdk_msgsMsgCommonRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgCommonRequest :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgCommonRequest
decodeRos2Aimdk_msgsMsgCommonRequest = W.runDecoder 8 readRos2Aimdk_msgsMsgCommonRequest
instance Canonical Ros2Aimdk_msgsMsgCommonRequest where
  maximumBytes _ = 8
  encodeValue = encodeRos2Aimdk_msgsMsgCommonRequest
  readValue = readRos2Aimdk_msgsMsgCommonRequest
data Ros2Aimdk_msgsMsgResponseHeader = Ros2Aimdk_msgsMsgResponseHeader
  {
    -- | \@brief aimdk_msgs/msg/ResponseHeader.stamp: builtin_interfaces/msg/Time.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgResponseHeader; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgResponseHeader_stamp :: Ros2Builtin_interfacesMsgTime
  ,
    -- | \@brief aimdk_msgs/msg/ResponseHeader.code: int64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgResponseHeader; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgResponseHeader_code :: Int64
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgResponseHeader :: Ros2Aimdk_msgsMsgResponseHeader
defaultRos2Aimdk_msgsMsgResponseHeader = Ros2Aimdk_msgsMsgResponseHeader (defaultRos2Builtin_interfacesMsgTime) (0)
ros2Aimdk_msgsMsgResponseHeaderCodecIdentity :: String
ros2Aimdk_msgsMsgResponseHeaderCodecIdentity =
    "UWVMROS1_1aff5b9cfbca54f9091a6295e28034b45d22481e0dbd8a75b1759cda18b57b90"
encodeRos2Aimdk_msgsMsgResponseHeader :: Ros2Aimdk_msgsMsgResponseHeader -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgResponseHeader value = do
  b0 <- encodeRos2Builtin_interfacesMsgTime (ros2Aimdk_msgsMsgResponseHeader_stamp value)
  b1 <- W.encodeSigned 8 (fromIntegral (ros2Aimdk_msgsMsgResponseHeader_code value))
  W.bounded 16 [b0, b1]
readRos2Aimdk_msgsMsgResponseHeader :: W.Decoder Ros2Aimdk_msgsMsgResponseHeader
readRos2Aimdk_msgsMsgResponseHeader = do
  a0 <- readRos2Builtin_interfacesMsgTime
  a1 <- fromIntegral <$> W.signed 8
  let value = Ros2Aimdk_msgsMsgResponseHeader a0 a1
  case encodeRos2Aimdk_msgsMsgResponseHeader value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgResponseHeader :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgResponseHeader
decodeRos2Aimdk_msgsMsgResponseHeader = W.runDecoder 16 readRos2Aimdk_msgsMsgResponseHeader
instance Canonical Ros2Aimdk_msgsMsgResponseHeader where
  maximumBytes _ = 16
  encodeValue = encodeRos2Aimdk_msgsMsgResponseHeader
  readValue = readRos2Aimdk_msgsMsgResponseHeader
data Ros2Aimdk_msgsMsgCommonState = Ros2Aimdk_msgsMsgCommonState
  {
    -- | \@brief aimdk_msgs/msg/CommonState.value: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgCommonState_value :: Int32
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgCommonState :: Ros2Aimdk_msgsMsgCommonState
defaultRos2Aimdk_msgsMsgCommonState = Ros2Aimdk_msgsMsgCommonState (0)
ros2Aimdk_msgsMsgCommonStateCodecIdentity :: String
ros2Aimdk_msgsMsgCommonStateCodecIdentity =
    "UWVMROS1_263f2829cf13b7b12ceda8109834fa333d2da5828cd7a302a1818c044be4699e"
ros2Aimdk_msgsMsgCommonState_UNKNOWN :: Int32
ros2Aimdk_msgsMsgCommonState_UNKNOWN = 0
ros2Aimdk_msgsMsgCommonState_SUCCESS :: Int32
ros2Aimdk_msgsMsgCommonState_SUCCESS = 1
ros2Aimdk_msgsMsgCommonState_FAILURE :: Int32
ros2Aimdk_msgsMsgCommonState_FAILURE = 2
ros2Aimdk_msgsMsgCommonState_ABORTED :: Int32
ros2Aimdk_msgsMsgCommonState_ABORTED = 3
ros2Aimdk_msgsMsgCommonState_TIMEOUT :: Int32
ros2Aimdk_msgsMsgCommonState_TIMEOUT = 4
ros2Aimdk_msgsMsgCommonState_INVALID :: Int32
ros2Aimdk_msgsMsgCommonState_INVALID = 5
ros2Aimdk_msgsMsgCommonState_IN_MANUAL :: Int32
ros2Aimdk_msgsMsgCommonState_IN_MANUAL = 6
ros2Aimdk_msgsMsgCommonState_NOT_READY :: Int32
ros2Aimdk_msgsMsgCommonState_NOT_READY = 100
ros2Aimdk_msgsMsgCommonState_PENDING :: Int32
ros2Aimdk_msgsMsgCommonState_PENDING = 200
ros2Aimdk_msgsMsgCommonState_CREATED :: Int32
ros2Aimdk_msgsMsgCommonState_CREATED = 300
ros2Aimdk_msgsMsgCommonState_RUNNING :: Int32
ros2Aimdk_msgsMsgCommonState_RUNNING = 400
encodeRos2Aimdk_msgsMsgCommonState :: Ros2Aimdk_msgsMsgCommonState -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgCommonState value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros2Aimdk_msgsMsgCommonState_value value))
  W.bounded 4 [b0]
readRos2Aimdk_msgsMsgCommonState :: W.Decoder Ros2Aimdk_msgsMsgCommonState
readRos2Aimdk_msgsMsgCommonState = do
  a0 <- fromIntegral <$> W.signed 4
  let value = Ros2Aimdk_msgsMsgCommonState a0
  case encodeRos2Aimdk_msgsMsgCommonState value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgCommonState :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgCommonState
decodeRos2Aimdk_msgsMsgCommonState = W.runDecoder 4 readRos2Aimdk_msgsMsgCommonState
instance Canonical Ros2Aimdk_msgsMsgCommonState where
  maximumBytes _ = 4
  encodeValue = encodeRos2Aimdk_msgsMsgCommonState
  readValue = readRos2Aimdk_msgsMsgCommonState
data Ros2Aimdk_msgsMsgCommonResponse = Ros2Aimdk_msgsMsgCommonResponse
  {
    -- | \@brief aimdk_msgs/msg/CommonResponse.header: aimdk_msgs/msg/ResponseHeader.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgCommonResponse_header :: Ros2Aimdk_msgsMsgResponseHeader
  ,
    -- | \@brief aimdk_msgs/msg/CommonResponse.status: aimdk_msgs/msg/CommonState.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgCommonResponse_status :: Ros2Aimdk_msgsMsgCommonState
  ,
    -- | \@brief aimdk_msgs/msg/CommonResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgCommonResponse_message :: T.Text
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgCommonResponse :: Ros2Aimdk_msgsMsgCommonResponse
defaultRos2Aimdk_msgsMsgCommonResponse = Ros2Aimdk_msgsMsgCommonResponse (defaultRos2Aimdk_msgsMsgResponseHeader)
    (defaultRos2Aimdk_msgsMsgCommonState) (T.empty)
ros2Aimdk_msgsMsgCommonResponseCodecIdentity :: String
ros2Aimdk_msgsMsgCommonResponseCodecIdentity =
    "UWVMROS1_03f4cf42f82eef5064c9b0563dcfe07bb9e918e8a8d81e71c4d89490bf66afb6"
encodeRos2Aimdk_msgsMsgCommonResponse :: Ros2Aimdk_msgsMsgCommonResponse -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgCommonResponse value = do
  b0 <- encodeRos2Aimdk_msgsMsgResponseHeader (ros2Aimdk_msgsMsgCommonResponse_header value)
  b1 <- encodeRos2Aimdk_msgsMsgCommonState (ros2Aimdk_msgsMsgCommonResponse_status value)
  b2 <- W.encodeText 128 True (ros2Aimdk_msgsMsgCommonResponse_message value)
  W.bounded 152 [b0, b1, b2]
readRos2Aimdk_msgsMsgCommonResponse :: W.Decoder Ros2Aimdk_msgsMsgCommonResponse
readRos2Aimdk_msgsMsgCommonResponse = do
  a0 <- readRos2Aimdk_msgsMsgResponseHeader
  a1 <- readRos2Aimdk_msgsMsgCommonState
  a2 <- W.text 128 True
  let value = Ros2Aimdk_msgsMsgCommonResponse a0 a1 a2
  case encodeRos2Aimdk_msgsMsgCommonResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgCommonResponse :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgCommonResponse
decodeRos2Aimdk_msgsMsgCommonResponse = W.runDecoder 152 readRos2Aimdk_msgsMsgCommonResponse
instance Canonical Ros2Aimdk_msgsMsgCommonResponse where
  maximumBytes _ = 152
  encodeValue = encodeRos2Aimdk_msgsMsgCommonResponse
  readValue = readRos2Aimdk_msgsMsgCommonResponse
data Ros2Aimdk_msgsMsgCommonTaskResponse = Ros2Aimdk_msgsMsgCommonTaskResponse
  {
    -- | \@brief aimdk_msgs/msg/CommonTaskResponse.header: aimdk_msgs/msg/ResponseHeader.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgCommonTaskResponse_header :: Ros2Aimdk_msgsMsgResponseHeader
  ,
    -- | \@brief aimdk_msgs/msg/CommonTaskResponse.task_id: uint64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgCommonTaskResponse_task_id :: Word64
  ,
    -- | \@brief aimdk_msgs/msg/CommonTaskResponse.state: aimdk_msgs/msg/CommonState.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgCommonTaskResponse_state :: Ros2Aimdk_msgsMsgCommonState
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgCommonTaskResponse :: Ros2Aimdk_msgsMsgCommonTaskResponse
defaultRos2Aimdk_msgsMsgCommonTaskResponse = Ros2Aimdk_msgsMsgCommonTaskResponse
    (defaultRos2Aimdk_msgsMsgResponseHeader) (0) (defaultRos2Aimdk_msgsMsgCommonState)
ros2Aimdk_msgsMsgCommonTaskResponseCodecIdentity :: String
ros2Aimdk_msgsMsgCommonTaskResponseCodecIdentity =
    "UWVMROS1_6e0f13b88f5320fecc86125c92ef073379d31a439c1b8de3a87466c98f1b9ae2"
encodeRos2Aimdk_msgsMsgCommonTaskResponse :: Ros2Aimdk_msgsMsgCommonTaskResponse -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgCommonTaskResponse value = do
  b0 <- encodeRos2Aimdk_msgsMsgResponseHeader (ros2Aimdk_msgsMsgCommonTaskResponse_header value)
  b1 <- W.encodeUnsigned 8 (fromIntegral (ros2Aimdk_msgsMsgCommonTaskResponse_task_id value))
  b2 <- encodeRos2Aimdk_msgsMsgCommonState (ros2Aimdk_msgsMsgCommonTaskResponse_state value)
  W.bounded 28 [b0, b1, b2]
readRos2Aimdk_msgsMsgCommonTaskResponse :: W.Decoder Ros2Aimdk_msgsMsgCommonTaskResponse
readRos2Aimdk_msgsMsgCommonTaskResponse = do
  a0 <- readRos2Aimdk_msgsMsgResponseHeader
  a1 <- fromIntegral <$> W.unsigned 8
  a2 <- readRos2Aimdk_msgsMsgCommonState
  let value = Ros2Aimdk_msgsMsgCommonTaskResponse a0 a1 a2
  case encodeRos2Aimdk_msgsMsgCommonTaskResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgCommonTaskResponse :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgCommonTaskResponse
decodeRos2Aimdk_msgsMsgCommonTaskResponse = W.runDecoder 28 readRos2Aimdk_msgsMsgCommonTaskResponse
instance Canonical Ros2Aimdk_msgsMsgCommonTaskResponse where
  maximumBytes _ = 28
  encodeValue = encodeRos2Aimdk_msgsMsgCommonTaskResponse
  readValue = readRos2Aimdk_msgsMsgCommonTaskResponse
data Ros2Aimdk_msgsMsgMessageHeader = Ros2Aimdk_msgsMsgMessageHeader
  {
    -- | \@brief aimdk_msgs/msg/MessageHeader.stamp: builtin_interfaces/msg/Time.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgMessageHeader_stamp :: Ros2Builtin_interfacesMsgTime
  ,
    -- | \@brief aimdk_msgs/msg/MessageHeader.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgMessageHeader_frame_id :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/MessageHeader.sequence: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgMessageHeader_sequence :: Word32
  ,
    -- | \@brief aimdk_msgs/msg/MessageHeader.meas_stamp: builtin_interfaces/msg/Time.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgMessageHeader_meas_stamp :: Ros2Builtin_interfacesMsgTime
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgMessageHeader :: Ros2Aimdk_msgsMsgMessageHeader
defaultRos2Aimdk_msgsMsgMessageHeader = Ros2Aimdk_msgsMsgMessageHeader (defaultRos2Builtin_interfacesMsgTime)
    (T.empty) (0) (defaultRos2Builtin_interfacesMsgTime)
ros2Aimdk_msgsMsgMessageHeaderCodecIdentity :: String
ros2Aimdk_msgsMsgMessageHeaderCodecIdentity =
    "UWVMROS1_6d8d9a27611d419d618f848c44ebe2c30d5393995d1f4fa7ecd70c34ded52496"
encodeRos2Aimdk_msgsMsgMessageHeader :: Ros2Aimdk_msgsMsgMessageHeader -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgMessageHeader value = do
  b0 <- encodeRos2Builtin_interfacesMsgTime (ros2Aimdk_msgsMsgMessageHeader_stamp value)
  b1 <- W.encodeText 128 True (ros2Aimdk_msgsMsgMessageHeader_frame_id value)
  b2 <- W.encodeUnsigned 4 (fromIntegral (ros2Aimdk_msgsMsgMessageHeader_sequence value))
  b3 <- encodeRos2Builtin_interfacesMsgTime (ros2Aimdk_msgsMsgMessageHeader_meas_stamp value)
  W.bounded 152 [b0, b1, b2, b3]
readRos2Aimdk_msgsMsgMessageHeader :: W.Decoder Ros2Aimdk_msgsMsgMessageHeader
readRos2Aimdk_msgsMsgMessageHeader = do
  a0 <- readRos2Builtin_interfacesMsgTime
  a1 <- W.text 128 True
  a2 <- fromIntegral <$> W.unsigned 4
  a3 <- readRos2Builtin_interfacesMsgTime
  let value = Ros2Aimdk_msgsMsgMessageHeader a0 a1 a2 a3
  case encodeRos2Aimdk_msgsMsgMessageHeader value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgMessageHeader :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgMessageHeader
decodeRos2Aimdk_msgsMsgMessageHeader = W.runDecoder 152 readRos2Aimdk_msgsMsgMessageHeader
instance Canonical Ros2Aimdk_msgsMsgMessageHeader where
  maximumBytes _ = 152
  encodeValue = encodeRos2Aimdk_msgsMsgMessageHeader
  readValue = readRos2Aimdk_msgsMsgMessageHeader
data Ros2Aimdk_msgsMsgFaceEmojiStatus = Ros2Aimdk_msgsMsgFaceEmojiStatus
  {
    -- | \@brief aimdk_msgs/msg/FaceEmojiStatus.header: aimdk_msgs/msg/MessageHeader.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgFaceEmojiStatus_header :: Ros2Aimdk_msgsMsgMessageHeader
  ,
    -- | \@brief aimdk_msgs/msg/FaceEmojiStatus.e_path: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgFaceEmojiStatus_e_path :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/FaceEmojiStatus.e_path_list: string; 0..16 elements; each string is 0..128 bytes;
    -- strict UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgFaceEmojiStatus_e_path_list :: [T.Text]
  ,
    -- | \@brief aimdk_msgs/msg/FaceEmojiStatus.e_id: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgFaceEmojiStatus_e_id :: Word8
  ,
    -- | \@brief aimdk_msgs/msg/FaceEmojiStatus.mode: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgFaceEmojiStatus_mode :: Word8
  ,
    -- | \@brief aimdk_msgs/msg/FaceEmojiStatus.priority: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgFaceEmojiStatus_priority :: Int32
  ,
    -- | \@brief aimdk_msgs/msg/FaceEmojiStatus.status: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgFaceEmojiStatus_status :: Word8
  ,
    -- | \@brief aimdk_msgs/msg/FaceEmojiStatus.time_to_end_ms: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgFaceEmojiStatus_time_to_end_ms :: Double
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgFaceEmojiStatus :: Ros2Aimdk_msgsMsgFaceEmojiStatus
defaultRos2Aimdk_msgsMsgFaceEmojiStatus = Ros2Aimdk_msgsMsgFaceEmojiStatus (defaultRos2Aimdk_msgsMsgMessageHeader)
    (T.empty) ([]) (0) (0) (0) (0) (0)
ros2Aimdk_msgsMsgFaceEmojiStatusCodecIdentity :: String
ros2Aimdk_msgsMsgFaceEmojiStatusCodecIdentity =
    "UWVMROS1_3200d2686ea5f26668f00d0249e774572668b4a36b3f8067dae4f93182af89f7"
ros2Aimdk_msgsMsgFaceEmojiStatus_STATUS_IDLE :: Word8
ros2Aimdk_msgsMsgFaceEmojiStatus_STATUS_IDLE = 0
ros2Aimdk_msgsMsgFaceEmojiStatus_STATUS_START :: Word8
ros2Aimdk_msgsMsgFaceEmojiStatus_STATUS_START = 1
ros2Aimdk_msgsMsgFaceEmojiStatus_STATUS_RUNNING :: Word8
ros2Aimdk_msgsMsgFaceEmojiStatus_STATUS_RUNNING = 2
ros2Aimdk_msgsMsgFaceEmojiStatus_STATUS_FINISHED :: Word8
ros2Aimdk_msgsMsgFaceEmojiStatus_STATUS_FINISHED = 3
ros2Aimdk_msgsMsgFaceEmojiStatus_STATUS_STOPPED :: Word8
ros2Aimdk_msgsMsgFaceEmojiStatus_STATUS_STOPPED = 4
encodeRos2Aimdk_msgsMsgFaceEmojiStatus :: Ros2Aimdk_msgsMsgFaceEmojiStatus -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgFaceEmojiStatus value = do
  b0 <- encodeRos2Aimdk_msgsMsgMessageHeader (ros2Aimdk_msgsMsgFaceEmojiStatus_header value)
  b1 <- W.encodeText 128 True (ros2Aimdk_msgsMsgFaceEmojiStatus_e_path value)
  if length (ros2Aimdk_msgsMsgFaceEmojiStatus_e_path_list value) > 16 then Left 22 else Right ()
  prefix2 <- W.encodeCount 16 (length (ros2Aimdk_msgsMsgFaceEmojiStatus_e_path_list value))
  b2 <- B.concat <$> mapM (\e -> W.encodeText 128 True (e)) (ros2Aimdk_msgsMsgFaceEmojiStatus_e_path_list value)
  b3 <- W.encodeUnsigned 1 (fromIntegral (ros2Aimdk_msgsMsgFaceEmojiStatus_e_id value))
  b4 <- W.encodeUnsigned 1 (fromIntegral (ros2Aimdk_msgsMsgFaceEmojiStatus_mode value))
  b5 <- W.encodeSigned 4 (fromIntegral (ros2Aimdk_msgsMsgFaceEmojiStatus_priority value))
  b6 <- W.encodeUnsigned 1 (fromIntegral (ros2Aimdk_msgsMsgFaceEmojiStatus_status value))
  b7 <- W.encodeFloat64 (ros2Aimdk_msgsMsgFaceEmojiStatus_time_to_end_ms value)
  W.bounded 2415 [b0, b1, prefix2, b2, b3, b4, b5, b6, b7]
readRos2Aimdk_msgsMsgFaceEmojiStatus :: W.Decoder Ros2Aimdk_msgsMsgFaceEmojiStatus
readRos2Aimdk_msgsMsgFaceEmojiStatus = do
  a0 <- readRos2Aimdk_msgsMsgMessageHeader
  a1 <- W.text 128 True
  count2 <- W.count 16
  a2 <- replicateM count2 (W.text 128 True)
  a3 <- fromIntegral <$> W.unsigned 1
  a4 <- fromIntegral <$> W.unsigned 1
  a5 <- fromIntegral <$> W.signed 4
  a6 <- fromIntegral <$> W.unsigned 1
  a7 <- W.float64
  let value = Ros2Aimdk_msgsMsgFaceEmojiStatus a0 a1 a2 a3 a4 a5 a6 a7
  case encodeRos2Aimdk_msgsMsgFaceEmojiStatus value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgFaceEmojiStatus :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgFaceEmojiStatus
decodeRos2Aimdk_msgsMsgFaceEmojiStatus = W.runDecoder 2415 readRos2Aimdk_msgsMsgFaceEmojiStatus
instance Canonical Ros2Aimdk_msgsMsgFaceEmojiStatus where
  maximumBytes _ = 2415
  encodeValue = encodeRos2Aimdk_msgsMsgFaceEmojiStatus
  readValue = readRos2Aimdk_msgsMsgFaceEmojiStatus
data Ros2Aimdk_msgsMsgHandCommand = Ros2Aimdk_msgsMsgHandCommand
  {
    -- | \@brief aimdk_msgs/msg/HandCommand.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded
    -- NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgHandCommand_name :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/HandCommand.position: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgHandCommand_position :: Double
  ,
    -- | \@brief aimdk_msgs/msg/HandCommand.velocity: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgHandCommand_velocity :: Double
  ,
    -- | \@brief aimdk_msgs/msg/HandCommand.acceleration: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgHandCommand_acceleration :: Double
  ,
    -- | \@brief aimdk_msgs/msg/HandCommand.deceleration: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgHandCommand_deceleration :: Double
  ,
    -- | \@brief aimdk_msgs/msg/HandCommand.effort: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgHandCommand_effort :: Double
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgHandCommand :: Ros2Aimdk_msgsMsgHandCommand
defaultRos2Aimdk_msgsMsgHandCommand = Ros2Aimdk_msgsMsgHandCommand (T.empty) (0) (0) (0) (0) (0)
ros2Aimdk_msgsMsgHandCommandCodecIdentity :: String
ros2Aimdk_msgsMsgHandCommandCodecIdentity =
    "UWVMROS1_910f3d9c0907c60b2613097cc4c1426727987e2ab83f8bcc41787feb472dc4e8"
encodeRos2Aimdk_msgsMsgHandCommand :: Ros2Aimdk_msgsMsgHandCommand -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgHandCommand value = do
  b0 <- W.encodeText 128 True (ros2Aimdk_msgsMsgHandCommand_name value)
  b1 <- W.encodeFloat64 (ros2Aimdk_msgsMsgHandCommand_position value)
  b2 <- W.encodeFloat64 (ros2Aimdk_msgsMsgHandCommand_velocity value)
  b3 <- W.encodeFloat64 (ros2Aimdk_msgsMsgHandCommand_acceleration value)
  b4 <- W.encodeFloat64 (ros2Aimdk_msgsMsgHandCommand_deceleration value)
  b5 <- W.encodeFloat64 (ros2Aimdk_msgsMsgHandCommand_effort value)
  W.bounded 172 [b0, b1, b2, b3, b4, b5]
readRos2Aimdk_msgsMsgHandCommand :: W.Decoder Ros2Aimdk_msgsMsgHandCommand
readRos2Aimdk_msgsMsgHandCommand = do
  a0 <- W.text 128 True
  a1 <- W.float64
  a2 <- W.float64
  a3 <- W.float64
  a4 <- W.float64
  a5 <- W.float64
  let value = Ros2Aimdk_msgsMsgHandCommand a0 a1 a2 a3 a4 a5
  case encodeRos2Aimdk_msgsMsgHandCommand value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgHandCommand :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgHandCommand
decodeRos2Aimdk_msgsMsgHandCommand = W.runDecoder 172 readRos2Aimdk_msgsMsgHandCommand
instance Canonical Ros2Aimdk_msgsMsgHandCommand where
  maximumBytes _ = 172
  encodeValue = encodeRos2Aimdk_msgsMsgHandCommand
  readValue = readRos2Aimdk_msgsMsgHandCommand
data Ros2Aimdk_msgsMsgHandType = Ros2Aimdk_msgsMsgHandType
  {
    -- | \@brief aimdk_msgs/msg/HandType.value: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgHandType; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgHandType_value :: Word8
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgHandType :: Ros2Aimdk_msgsMsgHandType
defaultRos2Aimdk_msgsMsgHandType = Ros2Aimdk_msgsMsgHandType (0)
ros2Aimdk_msgsMsgHandTypeCodecIdentity :: String
ros2Aimdk_msgsMsgHandTypeCodecIdentity = "UWVMROS1_e90b6ef9fea68be96eef98d3c6ce0120846da0638145a662f35a96edb690a6e6"
ros2Aimdk_msgsMsgHandType_NONE :: Word8
ros2Aimdk_msgsMsgHandType_NONE = 0
ros2Aimdk_msgsMsgHandType_NIMBLE_HANDS :: Word8
ros2Aimdk_msgsMsgHandType_NIMBLE_HANDS = 1
ros2Aimdk_msgsMsgHandType_CLAW :: Word8
ros2Aimdk_msgsMsgHandType_CLAW = 2
ros2Aimdk_msgsMsgHandType_ERROR :: Word8
ros2Aimdk_msgsMsgHandType_ERROR = 255
encodeRos2Aimdk_msgsMsgHandType :: Ros2Aimdk_msgsMsgHandType -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgHandType value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros2Aimdk_msgsMsgHandType_value value))
  W.bounded 1 [b0]
readRos2Aimdk_msgsMsgHandType :: W.Decoder Ros2Aimdk_msgsMsgHandType
readRos2Aimdk_msgsMsgHandType = do
  a0 <- fromIntegral <$> W.unsigned 1
  let value = Ros2Aimdk_msgsMsgHandType a0
  case encodeRos2Aimdk_msgsMsgHandType value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgHandType :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgHandType
decodeRos2Aimdk_msgsMsgHandType = W.runDecoder 1 readRos2Aimdk_msgsMsgHandType
instance Canonical Ros2Aimdk_msgsMsgHandType where
  maximumBytes _ = 1
  encodeValue = encodeRos2Aimdk_msgsMsgHandType
  readValue = readRos2Aimdk_msgsMsgHandType
data Ros2Aimdk_msgsMsgHandCommandArray = Ros2Aimdk_msgsMsgHandCommandArray
  {
    -- | \@brief aimdk_msgs/msg/HandCommandArray.header: aimdk_msgs/msg/MessageHeader.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgHandCommandArray_header :: Ros2Aimdk_msgsMsgMessageHeader
  ,
    -- | \@brief aimdk_msgs/msg/HandCommandArray.left_hand_type: aimdk_msgs/msg/HandType.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgHandCommandArray_left_hand_type :: Ros2Aimdk_msgsMsgHandType
  ,
    -- | \@brief aimdk_msgs/msg/HandCommandArray.left_hands: aimdk_msgs/msg/HandCommand; 0..4 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgHandCommandArray_left_hands :: [Ros2Aimdk_msgsMsgHandCommand]
  ,
    -- | \@brief aimdk_msgs/msg/HandCommandArray.right_hand_type: aimdk_msgs/msg/HandType.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgHandCommandArray_right_hand_type :: Ros2Aimdk_msgsMsgHandType
  ,
    -- | \@brief aimdk_msgs/msg/HandCommandArray.right_hands: aimdk_msgs/msg/HandCommand; 0..4 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgHandCommandArray_right_hands :: [Ros2Aimdk_msgsMsgHandCommand]
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgHandCommandArray :: Ros2Aimdk_msgsMsgHandCommandArray
defaultRos2Aimdk_msgsMsgHandCommandArray = Ros2Aimdk_msgsMsgHandCommandArray (defaultRos2Aimdk_msgsMsgMessageHeader)
    (defaultRos2Aimdk_msgsMsgHandType) ([]) (defaultRos2Aimdk_msgsMsgHandType) ([])
ros2Aimdk_msgsMsgHandCommandArrayCodecIdentity :: String
ros2Aimdk_msgsMsgHandCommandArrayCodecIdentity =
    "UWVMROS1_6786b9d07c3f807c1b4b98a5f22481a2628c1bd530c04e75ad40a36058f5558e"
encodeRos2Aimdk_msgsMsgHandCommandArray :: Ros2Aimdk_msgsMsgHandCommandArray -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgHandCommandArray value = do
  b0 <- encodeRos2Aimdk_msgsMsgMessageHeader (ros2Aimdk_msgsMsgHandCommandArray_header value)
  b1 <- encodeRos2Aimdk_msgsMsgHandType (ros2Aimdk_msgsMsgHandCommandArray_left_hand_type value)
  if length (ros2Aimdk_msgsMsgHandCommandArray_left_hands value) > 4 then Left 22 else Right ()
  prefix2 <- W.encodeCount 4 (length (ros2Aimdk_msgsMsgHandCommandArray_left_hands value))
  b2 <- B.concat <$> mapM (\e -> encodeRos2Aimdk_msgsMsgHandCommand (e))
      (ros2Aimdk_msgsMsgHandCommandArray_left_hands value)
  b3 <- encodeRos2Aimdk_msgsMsgHandType (ros2Aimdk_msgsMsgHandCommandArray_right_hand_type value)
  if length (ros2Aimdk_msgsMsgHandCommandArray_right_hands value) > 4 then Left 22 else Right ()
  prefix4 <- W.encodeCount 4 (length (ros2Aimdk_msgsMsgHandCommandArray_right_hands value))
  b4 <- B.concat <$> mapM (\e -> encodeRos2Aimdk_msgsMsgHandCommand (e))
      (ros2Aimdk_msgsMsgHandCommandArray_right_hands value)
  W.bounded 1538 [b0, b1, prefix2, b2, b3, prefix4, b4]
readRos2Aimdk_msgsMsgHandCommandArray :: W.Decoder Ros2Aimdk_msgsMsgHandCommandArray
readRos2Aimdk_msgsMsgHandCommandArray = do
  a0 <- readRos2Aimdk_msgsMsgMessageHeader
  a1 <- readRos2Aimdk_msgsMsgHandType
  count2 <- W.count 4
  a2 <- replicateM count2 (readRos2Aimdk_msgsMsgHandCommand)
  a3 <- readRos2Aimdk_msgsMsgHandType
  count4 <- W.count 4
  a4 <- replicateM count4 (readRos2Aimdk_msgsMsgHandCommand)
  let value = Ros2Aimdk_msgsMsgHandCommandArray a0 a1 a2 a3 a4
  case encodeRos2Aimdk_msgsMsgHandCommandArray value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgHandCommandArray :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgHandCommandArray
decodeRos2Aimdk_msgsMsgHandCommandArray = W.runDecoder 1538 readRos2Aimdk_msgsMsgHandCommandArray
instance Canonical Ros2Aimdk_msgsMsgHandCommandArray where
  maximumBytes _ = 1538
  encodeValue = encodeRos2Aimdk_msgsMsgHandCommandArray
  readValue = readRos2Aimdk_msgsMsgHandCommandArray
data Ros2Aimdk_msgsMsgHandState = Ros2Aimdk_msgsMsgHandState
  {
    -- | \@brief aimdk_msgs/msg/HandState.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded
    -- NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgHandState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgHandState_name :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/HandState.position: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgHandState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgHandState_position :: Double
  ,
    -- | \@brief aimdk_msgs/msg/HandState.velocity: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgHandState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgHandState_velocity :: Double
  ,
    -- | \@brief aimdk_msgs/msg/HandState.effort: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgHandState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgHandState_effort :: Double
  ,
    -- | \@brief aimdk_msgs/msg/HandState.state: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgHandState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgHandState_state :: Int32
  ,
    -- | \@brief aimdk_msgs/msg/HandState.faultcode: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgHandState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgHandState_faultcode :: Int32
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgHandState :: Ros2Aimdk_msgsMsgHandState
defaultRos2Aimdk_msgsMsgHandState = Ros2Aimdk_msgsMsgHandState (T.empty) (0) (0) (0) (0) (0)
ros2Aimdk_msgsMsgHandStateCodecIdentity :: String
ros2Aimdk_msgsMsgHandStateCodecIdentity =
    "UWVMROS1_9cfb695f97c9e314103a224bcb6b321de5f279cdae85d5eef7bec0c7968a875c"
encodeRos2Aimdk_msgsMsgHandState :: Ros2Aimdk_msgsMsgHandState -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgHandState value = do
  b0 <- W.encodeText 128 True (ros2Aimdk_msgsMsgHandState_name value)
  b1 <- W.encodeFloat64 (ros2Aimdk_msgsMsgHandState_position value)
  b2 <- W.encodeFloat64 (ros2Aimdk_msgsMsgHandState_velocity value)
  b3 <- W.encodeFloat64 (ros2Aimdk_msgsMsgHandState_effort value)
  b4 <- W.encodeSigned 4 (fromIntegral (ros2Aimdk_msgsMsgHandState_state value))
  b5 <- W.encodeSigned 4 (fromIntegral (ros2Aimdk_msgsMsgHandState_faultcode value))
  W.bounded 164 [b0, b1, b2, b3, b4, b5]
readRos2Aimdk_msgsMsgHandState :: W.Decoder Ros2Aimdk_msgsMsgHandState
readRos2Aimdk_msgsMsgHandState = do
  a0 <- W.text 128 True
  a1 <- W.float64
  a2 <- W.float64
  a3 <- W.float64
  a4 <- fromIntegral <$> W.signed 4
  a5 <- fromIntegral <$> W.signed 4
  let value = Ros2Aimdk_msgsMsgHandState a0 a1 a2 a3 a4 a5
  case encodeRos2Aimdk_msgsMsgHandState value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgHandState :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgHandState
decodeRos2Aimdk_msgsMsgHandState = W.runDecoder 164 readRos2Aimdk_msgsMsgHandState
instance Canonical Ros2Aimdk_msgsMsgHandState where
  maximumBytes _ = 164
  encodeValue = encodeRos2Aimdk_msgsMsgHandState
  readValue = readRos2Aimdk_msgsMsgHandState
data Ros2Aimdk_msgsMsgHandStateArray = Ros2Aimdk_msgsMsgHandStateArray
  {
    -- | \@brief aimdk_msgs/msg/HandStateArray.header: aimdk_msgs/msg/MessageHeader.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgHandStateArray_header :: Ros2Aimdk_msgsMsgMessageHeader
  ,
    -- | \@brief aimdk_msgs/msg/HandStateArray.left_hand_type: aimdk_msgs/msg/HandType.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgHandStateArray_left_hand_type :: Ros2Aimdk_msgsMsgHandType
  ,
    -- | \@brief aimdk_msgs/msg/HandStateArray.left_hands: aimdk_msgs/msg/HandState; 0..4 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgHandStateArray_left_hands :: [Ros2Aimdk_msgsMsgHandState]
  ,
    -- | \@brief aimdk_msgs/msg/HandStateArray.right_hand_type: aimdk_msgs/msg/HandType.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgHandStateArray_right_hand_type :: Ros2Aimdk_msgsMsgHandType
  ,
    -- | \@brief aimdk_msgs/msg/HandStateArray.right_hands: aimdk_msgs/msg/HandState; 0..4 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgHandStateArray_right_hands :: [Ros2Aimdk_msgsMsgHandState]
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgHandStateArray :: Ros2Aimdk_msgsMsgHandStateArray
defaultRos2Aimdk_msgsMsgHandStateArray = Ros2Aimdk_msgsMsgHandStateArray (defaultRos2Aimdk_msgsMsgMessageHeader)
    (defaultRos2Aimdk_msgsMsgHandType) ([]) (defaultRos2Aimdk_msgsMsgHandType) ([])
ros2Aimdk_msgsMsgHandStateArrayCodecIdentity :: String
ros2Aimdk_msgsMsgHandStateArrayCodecIdentity =
    "UWVMROS1_241862e8351ba851c0b7124277b23dfc09df3344bae750f238422af6e820e46d"
encodeRos2Aimdk_msgsMsgHandStateArray :: Ros2Aimdk_msgsMsgHandStateArray -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgHandStateArray value = do
  b0 <- encodeRos2Aimdk_msgsMsgMessageHeader (ros2Aimdk_msgsMsgHandStateArray_header value)
  b1 <- encodeRos2Aimdk_msgsMsgHandType (ros2Aimdk_msgsMsgHandStateArray_left_hand_type value)
  if length (ros2Aimdk_msgsMsgHandStateArray_left_hands value) > 4 then Left 22 else Right ()
  prefix2 <- W.encodeCount 4 (length (ros2Aimdk_msgsMsgHandStateArray_left_hands value))
  b2 <- B.concat <$> mapM (\e -> encodeRos2Aimdk_msgsMsgHandState (e)) (ros2Aimdk_msgsMsgHandStateArray_left_hands
      value)
  b3 <- encodeRos2Aimdk_msgsMsgHandType (ros2Aimdk_msgsMsgHandStateArray_right_hand_type value)
  if length (ros2Aimdk_msgsMsgHandStateArray_right_hands value) > 4 then Left 22 else Right ()
  prefix4 <- W.encodeCount 4 (length (ros2Aimdk_msgsMsgHandStateArray_right_hands value))
  b4 <- B.concat <$> mapM (\e -> encodeRos2Aimdk_msgsMsgHandState (e)) (ros2Aimdk_msgsMsgHandStateArray_right_hands
      value)
  W.bounded 1474 [b0, b1, prefix2, b2, b3, prefix4, b4]
readRos2Aimdk_msgsMsgHandStateArray :: W.Decoder Ros2Aimdk_msgsMsgHandStateArray
readRos2Aimdk_msgsMsgHandStateArray = do
  a0 <- readRos2Aimdk_msgsMsgMessageHeader
  a1 <- readRos2Aimdk_msgsMsgHandType
  count2 <- W.count 4
  a2 <- replicateM count2 (readRos2Aimdk_msgsMsgHandState)
  a3 <- readRos2Aimdk_msgsMsgHandType
  count4 <- W.count 4
  a4 <- replicateM count4 (readRos2Aimdk_msgsMsgHandState)
  let value = Ros2Aimdk_msgsMsgHandStateArray a0 a1 a2 a3 a4
  case encodeRos2Aimdk_msgsMsgHandStateArray value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgHandStateArray :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgHandStateArray
decodeRos2Aimdk_msgsMsgHandStateArray = W.runDecoder 1474 readRos2Aimdk_msgsMsgHandStateArray
instance Canonical Ros2Aimdk_msgsMsgHandStateArray where
  maximumBytes _ = 1474
  encodeValue = encodeRos2Aimdk_msgsMsgHandStateArray
  readValue = readRos2Aimdk_msgsMsgHandStateArray
data Ros2Aimdk_msgsMsgJointCommand = Ros2Aimdk_msgsMsgJointCommand
  {
    -- | \@brief aimdk_msgs/msg/JointCommand.name: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgJointCommand_name :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/JointCommand.position: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgJointCommand_position :: Double
  ,
    -- | \@brief aimdk_msgs/msg/JointCommand.velocity: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgJointCommand_velocity :: Double
  ,
    -- | \@brief aimdk_msgs/msg/JointCommand.effort: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgJointCommand_effort :: Double
  ,
    -- | \@brief aimdk_msgs/msg/JointCommand.stiffness: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgJointCommand_stiffness :: Double
  ,
    -- | \@brief aimdk_msgs/msg/JointCommand.damping: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgJointCommand_damping :: Double
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgJointCommand :: Ros2Aimdk_msgsMsgJointCommand
defaultRos2Aimdk_msgsMsgJointCommand = Ros2Aimdk_msgsMsgJointCommand (T.empty) (0) (0) (0) (0) (0)
ros2Aimdk_msgsMsgJointCommandCodecIdentity :: String
ros2Aimdk_msgsMsgJointCommandCodecIdentity =
    "UWVMROS1_32c4e24dc7ea567136fc811efc68eea5b8d1072a5ed58e1c4b67b4d705a9fc3f"
encodeRos2Aimdk_msgsMsgJointCommand :: Ros2Aimdk_msgsMsgJointCommand -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgJointCommand value = do
  b0 <- W.encodeText 128 True (ros2Aimdk_msgsMsgJointCommand_name value)
  b1 <- W.encodeFloat64 (ros2Aimdk_msgsMsgJointCommand_position value)
  b2 <- W.encodeFloat64 (ros2Aimdk_msgsMsgJointCommand_velocity value)
  b3 <- W.encodeFloat64 (ros2Aimdk_msgsMsgJointCommand_effort value)
  b4 <- W.encodeFloat64 (ros2Aimdk_msgsMsgJointCommand_stiffness value)
  b5 <- W.encodeFloat64 (ros2Aimdk_msgsMsgJointCommand_damping value)
  W.bounded 172 [b0, b1, b2, b3, b4, b5]
readRos2Aimdk_msgsMsgJointCommand :: W.Decoder Ros2Aimdk_msgsMsgJointCommand
readRos2Aimdk_msgsMsgJointCommand = do
  a0 <- W.text 128 True
  a1 <- W.float64
  a2 <- W.float64
  a3 <- W.float64
  a4 <- W.float64
  a5 <- W.float64
  let value = Ros2Aimdk_msgsMsgJointCommand a0 a1 a2 a3 a4 a5
  case encodeRos2Aimdk_msgsMsgJointCommand value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgJointCommand :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgJointCommand
decodeRos2Aimdk_msgsMsgJointCommand = W.runDecoder 172 readRos2Aimdk_msgsMsgJointCommand
instance Canonical Ros2Aimdk_msgsMsgJointCommand where
  maximumBytes _ = 172
  encodeValue = encodeRos2Aimdk_msgsMsgJointCommand
  readValue = readRos2Aimdk_msgsMsgJointCommand
data Ros2Aimdk_msgsMsgJointCommandArray = Ros2Aimdk_msgsMsgJointCommandArray
  {
    -- | \@brief aimdk_msgs/msg/JointCommandArray.header: aimdk_msgs/msg/MessageHeader.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgJointCommandArray; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgJointCommandArray_header :: Ros2Aimdk_msgsMsgMessageHeader
  ,
    -- | \@brief aimdk_msgs/msg/JointCommandArray.joints: aimdk_msgs/msg/JointCommand; 0..64 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgJointCommandArray; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgJointCommandArray_joints :: [Ros2Aimdk_msgsMsgJointCommand]
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgJointCommandArray :: Ros2Aimdk_msgsMsgJointCommandArray
defaultRos2Aimdk_msgsMsgJointCommandArray = Ros2Aimdk_msgsMsgJointCommandArray
    (defaultRos2Aimdk_msgsMsgMessageHeader) ([])
ros2Aimdk_msgsMsgJointCommandArrayCodecIdentity :: String
ros2Aimdk_msgsMsgJointCommandArrayCodecIdentity =
    "UWVMROS1_b8f8d9b00f02524cfdd21f81d7e683290e92ba0b00d086d4506fd3600123d9d6"
encodeRos2Aimdk_msgsMsgJointCommandArray :: Ros2Aimdk_msgsMsgJointCommandArray -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgJointCommandArray value = do
  b0 <- encodeRos2Aimdk_msgsMsgMessageHeader (ros2Aimdk_msgsMsgJointCommandArray_header value)
  if length (ros2Aimdk_msgsMsgJointCommandArray_joints value) > 64 then Left 22 else Right ()
  prefix1 <- W.encodeCount 64 (length (ros2Aimdk_msgsMsgJointCommandArray_joints value))
  b1 <- B.concat <$> mapM (\e -> encodeRos2Aimdk_msgsMsgJointCommand (e)) (ros2Aimdk_msgsMsgJointCommandArray_joints
      value)
  W.bounded 11164 [b0, prefix1, b1]
readRos2Aimdk_msgsMsgJointCommandArray :: W.Decoder Ros2Aimdk_msgsMsgJointCommandArray
readRos2Aimdk_msgsMsgJointCommandArray = do
  a0 <- readRos2Aimdk_msgsMsgMessageHeader
  count1 <- W.count 64
  a1 <- replicateM count1 (readRos2Aimdk_msgsMsgJointCommand)
  let value = Ros2Aimdk_msgsMsgJointCommandArray a0 a1
  case encodeRos2Aimdk_msgsMsgJointCommandArray value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgJointCommandArray :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgJointCommandArray
decodeRos2Aimdk_msgsMsgJointCommandArray = W.runDecoder 11164 readRos2Aimdk_msgsMsgJointCommandArray
instance Canonical Ros2Aimdk_msgsMsgJointCommandArray where
  maximumBytes _ = 11164
  encodeValue = encodeRos2Aimdk_msgsMsgJointCommandArray
  readValue = readRos2Aimdk_msgsMsgJointCommandArray
data Ros2Aimdk_msgsMsgJointState = Ros2Aimdk_msgsMsgJointState
  {
    -- | \@brief aimdk_msgs/msg/JointState.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded
    -- NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgJointState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgJointState_name :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/JointState.position: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgJointState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgJointState_position :: Double
  ,
    -- | \@brief aimdk_msgs/msg/JointState.velocity: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgJointState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgJointState_velocity :: Double
  ,
    -- | \@brief aimdk_msgs/msg/JointState.effort: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgJointState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgJointState_effort :: Double
  ,
    -- | \@brief aimdk_msgs/msg/JointState.coil_temp: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgJointState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgJointState_coil_temp :: Word8
  ,
    -- | \@brief aimdk_msgs/msg/JointState.motor_temp: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgJointState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgJointState_motor_temp :: Word8
  ,
    -- | \@brief aimdk_msgs/msg/JointState.motor_vol: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgJointState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgJointState_motor_vol :: Word8
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgJointState :: Ros2Aimdk_msgsMsgJointState
defaultRos2Aimdk_msgsMsgJointState = Ros2Aimdk_msgsMsgJointState (T.empty) (0) (0) (0) (0) (0) (0)
ros2Aimdk_msgsMsgJointStateCodecIdentity :: String
ros2Aimdk_msgsMsgJointStateCodecIdentity =
    "UWVMROS1_1b786e0a54b6e19cbc8cdad4bffc7458534ce3db05064216eb3cf6b50674610f"
encodeRos2Aimdk_msgsMsgJointState :: Ros2Aimdk_msgsMsgJointState -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgJointState value = do
  b0 <- W.encodeText 128 True (ros2Aimdk_msgsMsgJointState_name value)
  b1 <- W.encodeFloat64 (ros2Aimdk_msgsMsgJointState_position value)
  b2 <- W.encodeFloat64 (ros2Aimdk_msgsMsgJointState_velocity value)
  b3 <- W.encodeFloat64 (ros2Aimdk_msgsMsgJointState_effort value)
  b4 <- W.encodeUnsigned 1 (fromIntegral (ros2Aimdk_msgsMsgJointState_coil_temp value))
  b5 <- W.encodeUnsigned 1 (fromIntegral (ros2Aimdk_msgsMsgJointState_motor_temp value))
  b6 <- W.encodeUnsigned 1 (fromIntegral (ros2Aimdk_msgsMsgJointState_motor_vol value))
  W.bounded 159 [b0, b1, b2, b3, b4, b5, b6]
readRos2Aimdk_msgsMsgJointState :: W.Decoder Ros2Aimdk_msgsMsgJointState
readRos2Aimdk_msgsMsgJointState = do
  a0 <- W.text 128 True
  a1 <- W.float64
  a2 <- W.float64
  a3 <- W.float64
  a4 <- fromIntegral <$> W.unsigned 1
  a5 <- fromIntegral <$> W.unsigned 1
  a6 <- fromIntegral <$> W.unsigned 1
  let value = Ros2Aimdk_msgsMsgJointState a0 a1 a2 a3 a4 a5 a6
  case encodeRos2Aimdk_msgsMsgJointState value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgJointState :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgJointState
decodeRos2Aimdk_msgsMsgJointState = W.runDecoder 159 readRos2Aimdk_msgsMsgJointState
instance Canonical Ros2Aimdk_msgsMsgJointState where
  maximumBytes _ = 159
  encodeValue = encodeRos2Aimdk_msgsMsgJointState
  readValue = readRos2Aimdk_msgsMsgJointState
data Ros2Aimdk_msgsMsgJointStateArray = Ros2Aimdk_msgsMsgJointStateArray
  {
    -- | \@brief aimdk_msgs/msg/JointStateArray.header: aimdk_msgs/msg/MessageHeader.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgJointStateArray_header :: Ros2Aimdk_msgsMsgMessageHeader
  ,
    -- | \@brief aimdk_msgs/msg/JointStateArray.joints: aimdk_msgs/msg/JointState; 0..64 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgJointStateArray_joints :: [Ros2Aimdk_msgsMsgJointState]
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgJointStateArray :: Ros2Aimdk_msgsMsgJointStateArray
defaultRos2Aimdk_msgsMsgJointStateArray = Ros2Aimdk_msgsMsgJointStateArray (defaultRos2Aimdk_msgsMsgMessageHeader)
    ([])
ros2Aimdk_msgsMsgJointStateArrayCodecIdentity :: String
ros2Aimdk_msgsMsgJointStateArrayCodecIdentity =
    "UWVMROS1_6bf212a55e2cbe59e4e1bd675bdb41d3461db28e11d91244c21bac45070683fa"
encodeRos2Aimdk_msgsMsgJointStateArray :: Ros2Aimdk_msgsMsgJointStateArray -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgJointStateArray value = do
  b0 <- encodeRos2Aimdk_msgsMsgMessageHeader (ros2Aimdk_msgsMsgJointStateArray_header value)
  if length (ros2Aimdk_msgsMsgJointStateArray_joints value) > 64 then Left 22 else Right ()
  prefix1 <- W.encodeCount 64 (length (ros2Aimdk_msgsMsgJointStateArray_joints value))
  b1 <- B.concat <$> mapM (\e -> encodeRos2Aimdk_msgsMsgJointState (e)) (ros2Aimdk_msgsMsgJointStateArray_joints
      value)
  W.bounded 10332 [b0, prefix1, b1]
readRos2Aimdk_msgsMsgJointStateArray :: W.Decoder Ros2Aimdk_msgsMsgJointStateArray
readRos2Aimdk_msgsMsgJointStateArray = do
  a0 <- readRos2Aimdk_msgsMsgMessageHeader
  count1 <- W.count 64
  a1 <- replicateM count1 (readRos2Aimdk_msgsMsgJointState)
  let value = Ros2Aimdk_msgsMsgJointStateArray a0 a1
  case encodeRos2Aimdk_msgsMsgJointStateArray value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgJointStateArray :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgJointStateArray
decodeRos2Aimdk_msgsMsgJointStateArray = W.runDecoder 10332 readRos2Aimdk_msgsMsgJointStateArray
instance Canonical Ros2Aimdk_msgsMsgJointStateArray where
  maximumBytes _ = 10332
  encodeValue = encodeRos2Aimdk_msgsMsgJointStateArray
  readValue = readRos2Aimdk_msgsMsgJointStateArray
data Ros2Aimdk_msgsMsgMcAction = Ros2Aimdk_msgsMsgMcAction
  {
    -- | \@brief aimdk_msgs/msg/McAction.value: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgMcAction_value :: Int32
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgMcAction :: Ros2Aimdk_msgsMsgMcAction
defaultRos2Aimdk_msgsMsgMcAction = Ros2Aimdk_msgsMsgMcAction (0)
ros2Aimdk_msgsMsgMcActionCodecIdentity :: String
ros2Aimdk_msgsMsgMcActionCodecIdentity = "UWVMROS1_a43927486ae637ff4e5b8d60e1f45c91a9e3cf07b4505ea00550c6dc58e9354b"
ros2Aimdk_msgsMsgMcAction_PASSIVE_DEFAULT :: Int32
ros2Aimdk_msgsMsgMcAction_PASSIVE_DEFAULT = 1
ros2Aimdk_msgsMsgMcAction_SOFT_EMERGENCY_STOP :: Int32
ros2Aimdk_msgsMsgMcAction_SOFT_EMERGENCY_STOP = 2
ros2Aimdk_msgsMsgMcAction_DAMPING_DEFAULT :: Int32
ros2Aimdk_msgsMsgMcAction_DAMPING_DEFAULT = 3
ros2Aimdk_msgsMsgMcAction_ZERO_TORQUE_DEFAULT :: Int32
ros2Aimdk_msgsMsgMcAction_ZERO_TORQUE_DEFAULT = 4
ros2Aimdk_msgsMsgMcAction_JOINT_DEFAULT :: Int32
ros2Aimdk_msgsMsgMcAction_JOINT_DEFAULT = 100
ros2Aimdk_msgsMsgMcAction_JOINT_FREEZE :: Int32
ros2Aimdk_msgsMsgMcAction_JOINT_FREEZE = 101
ros2Aimdk_msgsMsgMcAction_STAND_DEFAULT :: Int32
ros2Aimdk_msgsMsgMcAction_STAND_DEFAULT = 200
ros2Aimdk_msgsMsgMcAction_STAND_BODY_CONTROL :: Int32
ros2Aimdk_msgsMsgMcAction_STAND_BODY_CONTROL = 201
ros2Aimdk_msgsMsgMcAction_LOCOMOTION_DEFAULT :: Int32
ros2Aimdk_msgsMsgMcAction_LOCOMOTION_DEFAULT = 300
ros2Aimdk_msgsMsgMcAction_RUN_DEFAULT :: Int32
ros2Aimdk_msgsMsgMcAction_RUN_DEFAULT = 301
ros2Aimdk_msgsMsgMcAction_LOCOMOTION_STEP :: Int32
ros2Aimdk_msgsMsgMcAction_LOCOMOTION_STEP = 302
ros2Aimdk_msgsMsgMcAction_VR_REMOTE_CONTROLLER :: Int32
ros2Aimdk_msgsMsgMcAction_VR_REMOTE_CONTROLLER = 400
ros2Aimdk_msgsMsgMcAction_SIT_DOWN_DEFAULT :: Int32
ros2Aimdk_msgsMsgMcAction_SIT_DOWN_DEFAULT = 2000
ros2Aimdk_msgsMsgMcAction_CROUCH_DOWN_DEFAULT :: Int32
ros2Aimdk_msgsMsgMcAction_CROUCH_DOWN_DEFAULT = 2002
ros2Aimdk_msgsMsgMcAction_LIE_DOWN_DEFAULT :: Int32
ros2Aimdk_msgsMsgMcAction_LIE_DOWN_DEFAULT = 2004
ros2Aimdk_msgsMsgMcAction_STAND_UP_DEFAULT :: Int32
ros2Aimdk_msgsMsgMcAction_STAND_UP_DEFAULT = 2005
ros2Aimdk_msgsMsgMcAction_ASCEND_STAIRS :: Int32
ros2Aimdk_msgsMsgMcAction_ASCEND_STAIRS = 2006
ros2Aimdk_msgsMsgMcAction_DESCEND_STAIRS :: Int32
ros2Aimdk_msgsMsgMcAction_DESCEND_STAIRS = 2008
encodeRos2Aimdk_msgsMsgMcAction :: Ros2Aimdk_msgsMsgMcAction -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgMcAction value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros2Aimdk_msgsMsgMcAction_value value))
  W.bounded 4 [b0]
readRos2Aimdk_msgsMsgMcAction :: W.Decoder Ros2Aimdk_msgsMsgMcAction
readRos2Aimdk_msgsMsgMcAction = do
  a0 <- fromIntegral <$> W.signed 4
  let value = Ros2Aimdk_msgsMsgMcAction a0
  case encodeRos2Aimdk_msgsMsgMcAction value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgMcAction :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgMcAction
decodeRos2Aimdk_msgsMsgMcAction = W.runDecoder 4 readRos2Aimdk_msgsMsgMcAction
instance Canonical Ros2Aimdk_msgsMsgMcAction where
  maximumBytes _ = 4
  encodeValue = encodeRos2Aimdk_msgsMsgMcAction
  readValue = readRos2Aimdk_msgsMsgMcAction
data Ros2Aimdk_msgsMsgMcActionCommand = Ros2Aimdk_msgsMsgMcActionCommand
  {
    -- | \@brief aimdk_msgs/msg/McActionCommand.action: aimdk_msgs/msg/McAction.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgMcActionCommand; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgMcActionCommand_action :: Ros2Aimdk_msgsMsgMcAction
  ,
    -- | \@brief aimdk_msgs/msg/McActionCommand.action_desc: string; each string is 0..128 bytes; strict UTF-8 with
    -- no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgMcActionCommand; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgMcActionCommand_action_desc :: T.Text
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgMcActionCommand :: Ros2Aimdk_msgsMsgMcActionCommand
defaultRos2Aimdk_msgsMsgMcActionCommand = Ros2Aimdk_msgsMsgMcActionCommand (defaultRos2Aimdk_msgsMsgMcAction)
    (T.empty)
ros2Aimdk_msgsMsgMcActionCommandCodecIdentity :: String
ros2Aimdk_msgsMsgMcActionCommandCodecIdentity =
    "UWVMROS1_9a529c7988535cbc65c36425ffb0935b210a806906598baa3a2f1f717df4f648"
encodeRos2Aimdk_msgsMsgMcActionCommand :: Ros2Aimdk_msgsMsgMcActionCommand -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgMcActionCommand value = do
  b0 <- encodeRos2Aimdk_msgsMsgMcAction (ros2Aimdk_msgsMsgMcActionCommand_action value)
  b1 <- W.encodeText 128 True (ros2Aimdk_msgsMsgMcActionCommand_action_desc value)
  W.bounded 136 [b0, b1]
readRos2Aimdk_msgsMsgMcActionCommand :: W.Decoder Ros2Aimdk_msgsMsgMcActionCommand
readRos2Aimdk_msgsMsgMcActionCommand = do
  a0 <- readRos2Aimdk_msgsMsgMcAction
  a1 <- W.text 128 True
  let value = Ros2Aimdk_msgsMsgMcActionCommand a0 a1
  case encodeRos2Aimdk_msgsMsgMcActionCommand value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgMcActionCommand :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgMcActionCommand
decodeRos2Aimdk_msgsMsgMcActionCommand = W.runDecoder 136 readRos2Aimdk_msgsMsgMcActionCommand
instance Canonical Ros2Aimdk_msgsMsgMcActionCommand where
  maximumBytes _ = 136
  encodeValue = encodeRos2Aimdk_msgsMsgMcActionCommand
  readValue = readRos2Aimdk_msgsMsgMcActionCommand
data Ros2Aimdk_msgsMsgMcActionStatus = Ros2Aimdk_msgsMsgMcActionStatus
  {
    -- | \@brief aimdk_msgs/msg/McActionStatus.value: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgMcActionStatus_value :: Int32
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgMcActionStatus :: Ros2Aimdk_msgsMsgMcActionStatus
defaultRos2Aimdk_msgsMsgMcActionStatus = Ros2Aimdk_msgsMsgMcActionStatus (0)
ros2Aimdk_msgsMsgMcActionStatusCodecIdentity :: String
ros2Aimdk_msgsMsgMcActionStatusCodecIdentity =
    "UWVMROS1_8c05e9540004b968b042b32ed0164af4857574186776f311be9b3ecde209ad48"
ros2Aimdk_msgsMsgMcActionStatus_IDLE :: Int32
ros2Aimdk_msgsMsgMcActionStatus_IDLE = 0
ros2Aimdk_msgsMsgMcActionStatus_RUNNING :: Int32
ros2Aimdk_msgsMsgMcActionStatus_RUNNING = 100
ros2Aimdk_msgsMsgMcActionStatus_TRANSITION :: Int32
ros2Aimdk_msgsMsgMcActionStatus_TRANSITION = 200
encodeRos2Aimdk_msgsMsgMcActionStatus :: Ros2Aimdk_msgsMsgMcActionStatus -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgMcActionStatus value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros2Aimdk_msgsMsgMcActionStatus_value value))
  W.bounded 4 [b0]
readRos2Aimdk_msgsMsgMcActionStatus :: W.Decoder Ros2Aimdk_msgsMsgMcActionStatus
readRos2Aimdk_msgsMsgMcActionStatus = do
  a0 <- fromIntegral <$> W.signed 4
  let value = Ros2Aimdk_msgsMsgMcActionStatus a0
  case encodeRos2Aimdk_msgsMsgMcActionStatus value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgMcActionStatus :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgMcActionStatus
decodeRos2Aimdk_msgsMsgMcActionStatus = W.runDecoder 4 readRos2Aimdk_msgsMsgMcActionStatus
instance Canonical Ros2Aimdk_msgsMsgMcActionStatus where
  maximumBytes _ = 4
  encodeValue = encodeRos2Aimdk_msgsMsgMcActionStatus
  readValue = readRos2Aimdk_msgsMsgMcActionStatus
data Ros2Aimdk_msgsMsgMcActionInfo = Ros2Aimdk_msgsMsgMcActionInfo
  {
    -- | \@brief aimdk_msgs/msg/McActionInfo.current_action: aimdk_msgs/msg/McAction.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgMcActionInfo_current_action :: Ros2Aimdk_msgsMsgMcAction
  ,
    -- | \@brief aimdk_msgs/msg/McActionInfo.action_desc: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgMcActionInfo_action_desc :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/McActionInfo.status: aimdk_msgs/msg/McActionStatus.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgMcActionInfo_status :: Ros2Aimdk_msgsMsgMcActionStatus
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgMcActionInfo :: Ros2Aimdk_msgsMsgMcActionInfo
defaultRos2Aimdk_msgsMsgMcActionInfo = Ros2Aimdk_msgsMsgMcActionInfo (defaultRos2Aimdk_msgsMsgMcAction) (T.empty)
    (defaultRos2Aimdk_msgsMsgMcActionStatus)
ros2Aimdk_msgsMsgMcActionInfoCodecIdentity :: String
ros2Aimdk_msgsMsgMcActionInfoCodecIdentity =
    "UWVMROS1_9c3c209060709befea26f340e6a607f4c6ddb00c638d1dedf5dd0cfa23f2e5e9"
encodeRos2Aimdk_msgsMsgMcActionInfo :: Ros2Aimdk_msgsMsgMcActionInfo -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgMcActionInfo value = do
  b0 <- encodeRos2Aimdk_msgsMsgMcAction (ros2Aimdk_msgsMsgMcActionInfo_current_action value)
  b1 <- W.encodeText 128 True (ros2Aimdk_msgsMsgMcActionInfo_action_desc value)
  b2 <- encodeRos2Aimdk_msgsMsgMcActionStatus (ros2Aimdk_msgsMsgMcActionInfo_status value)
  W.bounded 140 [b0, b1, b2]
readRos2Aimdk_msgsMsgMcActionInfo :: W.Decoder Ros2Aimdk_msgsMsgMcActionInfo
readRos2Aimdk_msgsMsgMcActionInfo = do
  a0 <- readRos2Aimdk_msgsMsgMcAction
  a1 <- W.text 128 True
  a2 <- readRos2Aimdk_msgsMsgMcActionStatus
  let value = Ros2Aimdk_msgsMsgMcActionInfo a0 a1 a2
  case encodeRos2Aimdk_msgsMsgMcActionInfo value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgMcActionInfo :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgMcActionInfo
decodeRos2Aimdk_msgsMsgMcActionInfo = W.runDecoder 140 readRos2Aimdk_msgsMsgMcActionInfo
instance Canonical Ros2Aimdk_msgsMsgMcActionInfo where
  maximumBytes _ = 140
  encodeValue = encodeRos2Aimdk_msgsMsgMcActionInfo
  readValue = readRos2Aimdk_msgsMsgMcActionInfo
data Ros2Aimdk_msgsMsgMcControlArea = Ros2Aimdk_msgsMsgMcControlArea
  {
    -- | \@brief aimdk_msgs/msg/McControlArea.value: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgMcControlArea_value :: Int32
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgMcControlArea :: Ros2Aimdk_msgsMsgMcControlArea
defaultRos2Aimdk_msgsMsgMcControlArea = Ros2Aimdk_msgsMsgMcControlArea (0)
ros2Aimdk_msgsMsgMcControlAreaCodecIdentity :: String
ros2Aimdk_msgsMsgMcControlAreaCodecIdentity =
    "UWVMROS1_ca241b8a191674136f0eeb0deee84b5e284de71f384038c9a5d6083eb4fc75c9"
ros2Aimdk_msgsMsgMcControlArea_NONE :: Int32
ros2Aimdk_msgsMsgMcControlArea_NONE = 0
ros2Aimdk_msgsMsgMcControlArea_LEFT_HAND :: Int32
ros2Aimdk_msgsMsgMcControlArea_LEFT_HAND = 1
ros2Aimdk_msgsMsgMcControlArea_RIGHT_HAND :: Int32
ros2Aimdk_msgsMsgMcControlArea_RIGHT_HAND = 2
ros2Aimdk_msgsMsgMcControlArea_HEAD :: Int32
ros2Aimdk_msgsMsgMcControlArea_HEAD = 4
ros2Aimdk_msgsMsgMcControlArea_WAIST :: Int32
ros2Aimdk_msgsMsgMcControlArea_WAIST = 8
encodeRos2Aimdk_msgsMsgMcControlArea :: Ros2Aimdk_msgsMsgMcControlArea -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgMcControlArea value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros2Aimdk_msgsMsgMcControlArea_value value))
  W.bounded 4 [b0]
readRos2Aimdk_msgsMsgMcControlArea :: W.Decoder Ros2Aimdk_msgsMsgMcControlArea
readRos2Aimdk_msgsMsgMcControlArea = do
  a0 <- fromIntegral <$> W.signed 4
  let value = Ros2Aimdk_msgsMsgMcControlArea a0
  case encodeRos2Aimdk_msgsMsgMcControlArea value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgMcControlArea :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgMcControlArea
decodeRos2Aimdk_msgsMsgMcControlArea = W.runDecoder 4 readRos2Aimdk_msgsMsgMcControlArea
instance Canonical Ros2Aimdk_msgsMsgMcControlArea where
  maximumBytes _ = 4
  encodeValue = encodeRos2Aimdk_msgsMsgMcControlArea
  readValue = readRos2Aimdk_msgsMsgMcControlArea
data Ros2Aimdk_msgsMsgMcInputAction = Ros2Aimdk_msgsMsgMcInputAction
  {
    -- | \@brief aimdk_msgs/msg/McInputAction.value: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgMcInputAction_value :: Int32
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgMcInputAction :: Ros2Aimdk_msgsMsgMcInputAction
defaultRos2Aimdk_msgsMsgMcInputAction = Ros2Aimdk_msgsMsgMcInputAction (0)
ros2Aimdk_msgsMsgMcInputActionCodecIdentity :: String
ros2Aimdk_msgsMsgMcInputActionCodecIdentity =
    "UWVMROS1_7016737845145fd03a104665957b475c512400775b93981573a40d0da30e15d9"
ros2Aimdk_msgsMsgMcInputAction_INPUTACTION_ADD :: Int32
ros2Aimdk_msgsMsgMcInputAction_INPUTACTION_ADD = 1001
ros2Aimdk_msgsMsgMcInputAction_INPUTACTION_MODIFY :: Int32
ros2Aimdk_msgsMsgMcInputAction_INPUTACTION_MODIFY = 1002
ros2Aimdk_msgsMsgMcInputAction_INPUTACTION_DELETE :: Int32
ros2Aimdk_msgsMsgMcInputAction_INPUTACTION_DELETE = 1003
ros2Aimdk_msgsMsgMcInputAction_INPUTACTION_ENABLE :: Int32
ros2Aimdk_msgsMsgMcInputAction_INPUTACTION_ENABLE = 2001
ros2Aimdk_msgsMsgMcInputAction_INPUTACTION_DISABLE :: Int32
ros2Aimdk_msgsMsgMcInputAction_INPUTACTION_DISABLE = 2002
encodeRos2Aimdk_msgsMsgMcInputAction :: Ros2Aimdk_msgsMsgMcInputAction -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgMcInputAction value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros2Aimdk_msgsMsgMcInputAction_value value))
  W.bounded 4 [b0]
readRos2Aimdk_msgsMsgMcInputAction :: W.Decoder Ros2Aimdk_msgsMsgMcInputAction
readRos2Aimdk_msgsMsgMcInputAction = do
  a0 <- fromIntegral <$> W.signed 4
  let value = Ros2Aimdk_msgsMsgMcInputAction a0
  case encodeRos2Aimdk_msgsMsgMcInputAction value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgMcInputAction :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgMcInputAction
decodeRos2Aimdk_msgsMsgMcInputAction = W.runDecoder 4 readRos2Aimdk_msgsMsgMcInputAction
instance Canonical Ros2Aimdk_msgsMsgMcInputAction where
  maximumBytes _ = 4
  encodeValue = encodeRos2Aimdk_msgsMsgMcInputAction
  readValue = readRos2Aimdk_msgsMsgMcInputAction
data Ros2Aimdk_msgsMsgMcInputSource = Ros2Aimdk_msgsMsgMcInputSource
  {
    -- | \@brief aimdk_msgs/msg/McInputSource.name: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgMcInputSource_name :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/McInputSource.priority: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgMcInputSource_priority :: Int32
  ,
    -- | \@brief aimdk_msgs/msg/McInputSource.timeout: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgMcInputSource_timeout :: Int32
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgMcInputSource :: Ros2Aimdk_msgsMsgMcInputSource
defaultRos2Aimdk_msgsMsgMcInputSource = Ros2Aimdk_msgsMsgMcInputSource (T.empty) (0) (0)
ros2Aimdk_msgsMsgMcInputSourceCodecIdentity :: String
ros2Aimdk_msgsMsgMcInputSourceCodecIdentity =
    "UWVMROS1_4909fe165c71d1104207b393ba76d55347aa02836ebac251f6b57259ced1d1dd"
encodeRos2Aimdk_msgsMsgMcInputSource :: Ros2Aimdk_msgsMsgMcInputSource -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgMcInputSource value = do
  b0 <- W.encodeText 128 True (ros2Aimdk_msgsMsgMcInputSource_name value)
  b1 <- W.encodeSigned 4 (fromIntegral (ros2Aimdk_msgsMsgMcInputSource_priority value))
  b2 <- W.encodeSigned 4 (fromIntegral (ros2Aimdk_msgsMsgMcInputSource_timeout value))
  W.bounded 140 [b0, b1, b2]
readRos2Aimdk_msgsMsgMcInputSource :: W.Decoder Ros2Aimdk_msgsMsgMcInputSource
readRos2Aimdk_msgsMsgMcInputSource = do
  a0 <- W.text 128 True
  a1 <- fromIntegral <$> W.signed 4
  a2 <- fromIntegral <$> W.signed 4
  let value = Ros2Aimdk_msgsMsgMcInputSource a0 a1 a2
  case encodeRos2Aimdk_msgsMsgMcInputSource value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgMcInputSource :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgMcInputSource
decodeRos2Aimdk_msgsMsgMcInputSource = W.runDecoder 140 readRos2Aimdk_msgsMsgMcInputSource
instance Canonical Ros2Aimdk_msgsMsgMcInputSource where
  maximumBytes _ = 140
  encodeValue = encodeRos2Aimdk_msgsMsgMcInputSource
  readValue = readRos2Aimdk_msgsMsgMcInputSource
data Ros2Aimdk_msgsMsgMcLocomotionVelocity = Ros2Aimdk_msgsMsgMcLocomotionVelocity
  {
    -- | \@brief aimdk_msgs/msg/McLocomotionVelocity.header: aimdk_msgs/msg/MessageHeader.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgMcLocomotionVelocity_header :: Ros2Aimdk_msgsMsgMessageHeader
  ,
    -- | \@brief aimdk_msgs/msg/McLocomotionVelocity.source: string; each string is 0..128 bytes; strict UTF-8 with
    -- no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgMcLocomotionVelocity_source :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/McLocomotionVelocity.forward_velocity: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgMcLocomotionVelocity_forward_velocity :: Double
  ,
    -- | \@brief aimdk_msgs/msg/McLocomotionVelocity.lateral_velocity: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgMcLocomotionVelocity_lateral_velocity :: Double
  ,
    -- | \@brief aimdk_msgs/msg/McLocomotionVelocity.angular_velocity: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgMcLocomotionVelocity_angular_velocity :: Double
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgMcLocomotionVelocity :: Ros2Aimdk_msgsMsgMcLocomotionVelocity
defaultRos2Aimdk_msgsMsgMcLocomotionVelocity = Ros2Aimdk_msgsMsgMcLocomotionVelocity
    (defaultRos2Aimdk_msgsMsgMessageHeader) (T.empty) (0) (0) (0)
ros2Aimdk_msgsMsgMcLocomotionVelocityCodecIdentity :: String
ros2Aimdk_msgsMsgMcLocomotionVelocityCodecIdentity =
    "UWVMROS1_a3c45cd56bc3098af00eefba2b2fc5c34c6439228d3429ab077d80b60ef8ca00"
encodeRos2Aimdk_msgsMsgMcLocomotionVelocity :: Ros2Aimdk_msgsMsgMcLocomotionVelocity -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgMcLocomotionVelocity value = do
  b0 <- encodeRos2Aimdk_msgsMsgMessageHeader (ros2Aimdk_msgsMsgMcLocomotionVelocity_header value)
  b1 <- W.encodeText 128 True (ros2Aimdk_msgsMsgMcLocomotionVelocity_source value)
  b2 <- W.encodeFloat64 (ros2Aimdk_msgsMsgMcLocomotionVelocity_forward_velocity value)
  b3 <- W.encodeFloat64 (ros2Aimdk_msgsMsgMcLocomotionVelocity_lateral_velocity value)
  b4 <- W.encodeFloat64 (ros2Aimdk_msgsMsgMcLocomotionVelocity_angular_velocity value)
  W.bounded 308 [b0, b1, b2, b3, b4]
readRos2Aimdk_msgsMsgMcLocomotionVelocity :: W.Decoder Ros2Aimdk_msgsMsgMcLocomotionVelocity
readRos2Aimdk_msgsMsgMcLocomotionVelocity = do
  a0 <- readRos2Aimdk_msgsMsgMessageHeader
  a1 <- W.text 128 True
  a2 <- W.float64
  a3 <- W.float64
  a4 <- W.float64
  let value = Ros2Aimdk_msgsMsgMcLocomotionVelocity a0 a1 a2 a3 a4
  case encodeRos2Aimdk_msgsMsgMcLocomotionVelocity value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgMcLocomotionVelocity :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgMcLocomotionVelocity
decodeRos2Aimdk_msgsMsgMcLocomotionVelocity = W.runDecoder 308 readRos2Aimdk_msgsMsgMcLocomotionVelocity
instance Canonical Ros2Aimdk_msgsMsgMcLocomotionVelocity where
  maximumBytes _ = 308
  encodeValue = encodeRos2Aimdk_msgsMsgMcLocomotionVelocity
  readValue = readRos2Aimdk_msgsMsgMcLocomotionVelocity
data Ros2Aimdk_msgsMsgMcPresetMotion = Ros2Aimdk_msgsMsgMcPresetMotion
  {
    -- | \@brief aimdk_msgs/msg/McPresetMotion.value: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgMcPresetMotion_value :: Int32
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgMcPresetMotion :: Ros2Aimdk_msgsMsgMcPresetMotion
defaultRos2Aimdk_msgsMsgMcPresetMotion = Ros2Aimdk_msgsMsgMcPresetMotion (0)
ros2Aimdk_msgsMsgMcPresetMotionCodecIdentity :: String
ros2Aimdk_msgsMsgMcPresetMotionCodecIdentity =
    "UWVMROS1_7421ee5b50a30799907e6f521dd97874158a945019f09cecf168a8f3130c9153"
ros2Aimdk_msgsMsgMcPresetMotion_RAISE_HAND :: Int32
ros2Aimdk_msgsMsgMcPresetMotion_RAISE_HAND = 1001
ros2Aimdk_msgsMsgMcPresetMotion_WAVE_HAND :: Int32
ros2Aimdk_msgsMsgMcPresetMotion_WAVE_HAND = 1002
ros2Aimdk_msgsMsgMcPresetMotion_SHAKE_HAND :: Int32
ros2Aimdk_msgsMsgMcPresetMotion_SHAKE_HAND = 1003
ros2Aimdk_msgsMsgMcPresetMotion_FLYING_KISS_HAND :: Int32
ros2Aimdk_msgsMsgMcPresetMotion_FLYING_KISS_HAND = 1004
ros2Aimdk_msgsMsgMcPresetMotion_CLAP_HAND :: Int32
ros2Aimdk_msgsMsgMcPresetMotion_CLAP_HAND = 1008
ros2Aimdk_msgsMsgMcPresetMotion_TURN_WAVE_HAND :: Int32
ros2Aimdk_msgsMsgMcPresetMotion_TURN_WAVE_HAND = 2001
ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_BOW :: Int32
ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_BOW = 3001
ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_LIKE :: Int32
ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_LIKE = 3002
ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_YE :: Int32
ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_YE = 3003
ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_SWEATHEART :: Int32
ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_SWEATHEART = 3004
ros2Aimdk_msgsMsgMcPresetMotion_SALUTE :: Int32
ros2Aimdk_msgsMsgMcPresetMotion_SALUTE = 1013
ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_SAD :: Int32
ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_SAD = 3006
ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_LIGHTWAVE :: Int32
ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_LIGHTWAVE = 3007
ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_HUG :: Int32
ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_HUG = 3008
ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_HANDX :: Int32
ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_HANDX = 3009
ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_CHESTWAVE :: Int32
ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_CHESTWAVE = 3010
ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_CHEER :: Int32
ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_CHEER = 3011
ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_BLOWKISS :: Int32
ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_BLOWKISS = 3012
ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_BASSDANCE1 :: Int32
ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_BASSDANCE1 = 3013
ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_BASSDANCE2 :: Int32
ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_BASSDANCE2 = 3014
ros2Aimdk_msgsMsgMcPresetMotion_HITCLAP :: Int32
ros2Aimdk_msgsMsgMcPresetMotion_HITCLAP = 3015
ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_SPEAK :: Int32
ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_SPEAK = 3016
ros2Aimdk_msgsMsgMcPresetMotion_CLIPFIST :: Int32
ros2Aimdk_msgsMsgMcPresetMotion_CLIPFIST = 1009
ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_PHOTOPOSTURE :: Int32
ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_PHOTOPOSTURE = 3018
ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_PHOTOTRIPPLEPOSTURE :: Int32
ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_PHOTOTRIPPLEPOSTURE = 3019
ros2Aimdk_msgsMsgMcPresetMotion_POINT_HEAD :: Int32
ros2Aimdk_msgsMsgMcPresetMotion_POINT_HEAD = 4001
ros2Aimdk_msgsMsgMcPresetMotion_SHAKE_HEAD :: Int32
ros2Aimdk_msgsMsgMcPresetMotion_SHAKE_HEAD = 4002
encodeRos2Aimdk_msgsMsgMcPresetMotion :: Ros2Aimdk_msgsMsgMcPresetMotion -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgMcPresetMotion value = do
  b0 <- W.encodeSigned 4 (fromIntegral (ros2Aimdk_msgsMsgMcPresetMotion_value value))
  W.bounded 4 [b0]
readRos2Aimdk_msgsMsgMcPresetMotion :: W.Decoder Ros2Aimdk_msgsMsgMcPresetMotion
readRos2Aimdk_msgsMsgMcPresetMotion = do
  a0 <- fromIntegral <$> W.signed 4
  let value = Ros2Aimdk_msgsMsgMcPresetMotion a0
  case encodeRos2Aimdk_msgsMsgMcPresetMotion value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgMcPresetMotion :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgMcPresetMotion
decodeRos2Aimdk_msgsMsgMcPresetMotion = W.runDecoder 4 readRos2Aimdk_msgsMsgMcPresetMotion
instance Canonical Ros2Aimdk_msgsMsgMcPresetMotion where
  maximumBytes _ = 4
  encodeValue = encodeRos2Aimdk_msgsMsgMcPresetMotion
  readValue = readRos2Aimdk_msgsMsgMcPresetMotion
data Ros2Aimdk_msgsMsgTtsPriorityLevel = Ros2Aimdk_msgsMsgTtsPriorityLevel
  {
    -- | \@brief aimdk_msgs/msg/TtsPriorityLevel.value: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgTtsPriorityLevel_value :: Word8
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgTtsPriorityLevel :: Ros2Aimdk_msgsMsgTtsPriorityLevel
defaultRos2Aimdk_msgsMsgTtsPriorityLevel = Ros2Aimdk_msgsMsgTtsPriorityLevel (0)
ros2Aimdk_msgsMsgTtsPriorityLevelCodecIdentity :: String
ros2Aimdk_msgsMsgTtsPriorityLevelCodecIdentity =
    "UWVMROS1_38bce7b033528697c6667c348c66d327a0d63f176b519189d3720279591cd90a"
ros2Aimdk_msgsMsgTtsPriorityLevel_UNKNOWN :: Word8
ros2Aimdk_msgsMsgTtsPriorityLevel_UNKNOWN = 0
ros2Aimdk_msgsMsgTtsPriorityLevel_BACKGROUND_L1 :: Word8
ros2Aimdk_msgsMsgTtsPriorityLevel_BACKGROUND_L1 = 1
ros2Aimdk_msgsMsgTtsPriorityLevel_SERVICE_L2 :: Word8
ros2Aimdk_msgsMsgTtsPriorityLevel_SERVICE_L2 = 2
ros2Aimdk_msgsMsgTtsPriorityLevel_MISSION_L4 :: Word8
ros2Aimdk_msgsMsgTtsPriorityLevel_MISSION_L4 = 4
ros2Aimdk_msgsMsgTtsPriorityLevel_INTERACTION_L6 :: Word8
ros2Aimdk_msgsMsgTtsPriorityLevel_INTERACTION_L6 = 6
ros2Aimdk_msgsMsgTtsPriorityLevel_WARNING_L8 :: Word8
ros2Aimdk_msgsMsgTtsPriorityLevel_WARNING_L8 = 8
ros2Aimdk_msgsMsgTtsPriorityLevel_SAFETY_L10 :: Word8
ros2Aimdk_msgsMsgTtsPriorityLevel_SAFETY_L10 = 10
encodeRos2Aimdk_msgsMsgTtsPriorityLevel :: Ros2Aimdk_msgsMsgTtsPriorityLevel -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgTtsPriorityLevel value = do
  b0 <- W.encodeUnsigned 1 (fromIntegral (ros2Aimdk_msgsMsgTtsPriorityLevel_value value))
  W.bounded 1 [b0]
readRos2Aimdk_msgsMsgTtsPriorityLevel :: W.Decoder Ros2Aimdk_msgsMsgTtsPriorityLevel
readRos2Aimdk_msgsMsgTtsPriorityLevel = do
  a0 <- fromIntegral <$> W.unsigned 1
  let value = Ros2Aimdk_msgsMsgTtsPriorityLevel a0
  case encodeRos2Aimdk_msgsMsgTtsPriorityLevel value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgTtsPriorityLevel :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgTtsPriorityLevel
decodeRos2Aimdk_msgsMsgTtsPriorityLevel = W.runDecoder 1 readRos2Aimdk_msgsMsgTtsPriorityLevel
instance Canonical Ros2Aimdk_msgsMsgTtsPriorityLevel where
  maximumBytes _ = 1
  encodeValue = encodeRos2Aimdk_msgsMsgTtsPriorityLevel
  readValue = readRos2Aimdk_msgsMsgTtsPriorityLevel
data Ros2Aimdk_msgsMsgPlayMediaFileRequest = Ros2Aimdk_msgsMsgPlayMediaFileRequest
  {
    -- | \@brief aimdk_msgs/msg/PlayMediaFileRequest.file_name: string; each string is 0..128 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPlayMediaFileRequest_file_name :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/PlayMediaFileRequest.sample_rate: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPlayMediaFileRequest_sample_rate :: Word32
  ,
    -- | \@brief aimdk_msgs/msg/PlayMediaFileRequest.priority_level: aimdk_msgs/msg/TtsPriorityLevel.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPlayMediaFileRequest_priority_level :: Ros2Aimdk_msgsMsgTtsPriorityLevel
  ,
    -- | \@brief aimdk_msgs/msg/PlayMediaFileRequest.priority_weight: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPlayMediaFileRequest_priority_weight :: Word32
  ,
    -- | \@brief aimdk_msgs/msg/PlayMediaFileRequest.domain: string; each string is 0..128 bytes; strict UTF-8 with
    -- no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPlayMediaFileRequest_domain :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/PlayMediaFileRequest.trace_id: string; each string is 0..128 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPlayMediaFileRequest_trace_id :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/PlayMediaFileRequest.is_interrupted: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPlayMediaFileRequest_is_interrupted :: Bool
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgPlayMediaFileRequest :: Ros2Aimdk_msgsMsgPlayMediaFileRequest
defaultRos2Aimdk_msgsMsgPlayMediaFileRequest = Ros2Aimdk_msgsMsgPlayMediaFileRequest (T.empty) (0)
    (defaultRos2Aimdk_msgsMsgTtsPriorityLevel) (0) (T.empty) (T.empty) (False)
ros2Aimdk_msgsMsgPlayMediaFileRequestCodecIdentity :: String
ros2Aimdk_msgsMsgPlayMediaFileRequestCodecIdentity =
    "UWVMROS1_de5d1ad3e7b16b0aaac78736982e24c1a1f3366952cb1b08f59a86bfaf70d254"
encodeRos2Aimdk_msgsMsgPlayMediaFileRequest :: Ros2Aimdk_msgsMsgPlayMediaFileRequest -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgPlayMediaFileRequest value = do
  b0 <- W.encodeText 128 True (ros2Aimdk_msgsMsgPlayMediaFileRequest_file_name value)
  b1 <- W.encodeUnsigned 4 (fromIntegral (ros2Aimdk_msgsMsgPlayMediaFileRequest_sample_rate value))
  b2 <- encodeRos2Aimdk_msgsMsgTtsPriorityLevel (ros2Aimdk_msgsMsgPlayMediaFileRequest_priority_level value)
  b3 <- W.encodeUnsigned 4 (fromIntegral (ros2Aimdk_msgsMsgPlayMediaFileRequest_priority_weight value))
  b4 <- W.encodeText 128 True (ros2Aimdk_msgsMsgPlayMediaFileRequest_domain value)
  b5 <- W.encodeText 128 True (ros2Aimdk_msgsMsgPlayMediaFileRequest_trace_id value)
  b6 <- W.encodeBool (ros2Aimdk_msgsMsgPlayMediaFileRequest_is_interrupted value)
  W.bounded 406 [b0, b1, b2, b3, b4, b5, b6]
readRos2Aimdk_msgsMsgPlayMediaFileRequest :: W.Decoder Ros2Aimdk_msgsMsgPlayMediaFileRequest
readRos2Aimdk_msgsMsgPlayMediaFileRequest = do
  a0 <- W.text 128 True
  a1 <- fromIntegral <$> W.unsigned 4
  a2 <- readRos2Aimdk_msgsMsgTtsPriorityLevel
  a3 <- fromIntegral <$> W.unsigned 4
  a4 <- W.text 128 True
  a5 <- W.text 128 True
  a6 <- W.boolean
  let value = Ros2Aimdk_msgsMsgPlayMediaFileRequest a0 a1 a2 a3 a4 a5 a6
  case encodeRos2Aimdk_msgsMsgPlayMediaFileRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgPlayMediaFileRequest :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgPlayMediaFileRequest
decodeRos2Aimdk_msgsMsgPlayMediaFileRequest = W.runDecoder 406 readRos2Aimdk_msgsMsgPlayMediaFileRequest
instance Canonical Ros2Aimdk_msgsMsgPlayMediaFileRequest where
  maximumBytes _ = 406
  encodeValue = encodeRos2Aimdk_msgsMsgPlayMediaFileRequest
  readValue = readRos2Aimdk_msgsMsgPlayMediaFileRequest
data Ros2Aimdk_msgsMsgPlayTtsRequest = Ros2Aimdk_msgsMsgPlayTtsRequest
  {
    -- | \@brief aimdk_msgs/msg/PlayTtsRequest.text: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPlayTtsRequest_text :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/PlayTtsRequest.priority_level: aimdk_msgs/msg/TtsPriorityLevel.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPlayTtsRequest_priority_level :: Ros2Aimdk_msgsMsgTtsPriorityLevel
  ,
    -- | \@brief aimdk_msgs/msg/PlayTtsRequest.priority_weight: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPlayTtsRequest_priority_weight :: Word32
  ,
    -- | \@brief aimdk_msgs/msg/PlayTtsRequest.domain: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPlayTtsRequest_domain :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/PlayTtsRequest.trace_id: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPlayTtsRequest_trace_id :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/PlayTtsRequest.is_interrupted: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPlayTtsRequest_is_interrupted :: Bool
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgPlayTtsRequest :: Ros2Aimdk_msgsMsgPlayTtsRequest
defaultRos2Aimdk_msgsMsgPlayTtsRequest = Ros2Aimdk_msgsMsgPlayTtsRequest (T.empty)
    (defaultRos2Aimdk_msgsMsgTtsPriorityLevel) (0) (T.empty) (T.empty) (False)
ros2Aimdk_msgsMsgPlayTtsRequestCodecIdentity :: String
ros2Aimdk_msgsMsgPlayTtsRequestCodecIdentity =
    "UWVMROS1_d6410f21a03f560429a39216f36ce03ad040323054f5775b75586b3890802bbd"
encodeRos2Aimdk_msgsMsgPlayTtsRequest :: Ros2Aimdk_msgsMsgPlayTtsRequest -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgPlayTtsRequest value = do
  b0 <- W.encodeText 128 True (ros2Aimdk_msgsMsgPlayTtsRequest_text value)
  b1 <- encodeRos2Aimdk_msgsMsgTtsPriorityLevel (ros2Aimdk_msgsMsgPlayTtsRequest_priority_level value)
  b2 <- W.encodeUnsigned 4 (fromIntegral (ros2Aimdk_msgsMsgPlayTtsRequest_priority_weight value))
  b3 <- W.encodeText 128 True (ros2Aimdk_msgsMsgPlayTtsRequest_domain value)
  b4 <- W.encodeText 128 True (ros2Aimdk_msgsMsgPlayTtsRequest_trace_id value)
  b5 <- W.encodeBool (ros2Aimdk_msgsMsgPlayTtsRequest_is_interrupted value)
  W.bounded 402 [b0, b1, b2, b3, b4, b5]
readRos2Aimdk_msgsMsgPlayTtsRequest :: W.Decoder Ros2Aimdk_msgsMsgPlayTtsRequest
readRos2Aimdk_msgsMsgPlayTtsRequest = do
  a0 <- W.text 128 True
  a1 <- readRos2Aimdk_msgsMsgTtsPriorityLevel
  a2 <- fromIntegral <$> W.unsigned 4
  a3 <- W.text 128 True
  a4 <- W.text 128 True
  a5 <- W.boolean
  let value = Ros2Aimdk_msgsMsgPlayTtsRequest a0 a1 a2 a3 a4 a5
  case encodeRos2Aimdk_msgsMsgPlayTtsRequest value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgPlayTtsRequest :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgPlayTtsRequest
decodeRos2Aimdk_msgsMsgPlayTtsRequest = W.runDecoder 402 readRos2Aimdk_msgsMsgPlayTtsRequest
instance Canonical Ros2Aimdk_msgsMsgPlayTtsRequest where
  maximumBytes _ = 402
  encodeValue = encodeRos2Aimdk_msgsMsgPlayTtsRequest
  readValue = readRos2Aimdk_msgsMsgPlayTtsRequest
data Ros2Aimdk_msgsMsgPlayTtsResponse = Ros2Aimdk_msgsMsgPlayTtsResponse
  {
    -- | \@brief aimdk_msgs/msg/PlayTtsResponse.text: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPlayTtsResponse_text :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/PlayTtsResponse.priority_level: aimdk_msgs/msg/TtsPriorityLevel.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPlayTtsResponse_priority_level :: Ros2Aimdk_msgsMsgTtsPriorityLevel
  ,
    -- | \@brief aimdk_msgs/msg/PlayTtsResponse.priority_weight: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPlayTtsResponse_priority_weight :: Word32
  ,
    -- | \@brief aimdk_msgs/msg/PlayTtsResponse.domain: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPlayTtsResponse_domain :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/PlayTtsResponse.trace_id: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPlayTtsResponse_trace_id :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/PlayTtsResponse.is_success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPlayTtsResponse_is_success :: Bool
  ,
    -- | \@brief aimdk_msgs/msg/PlayTtsResponse.error_message: string; each string is 0..128 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPlayTtsResponse_error_message :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/PlayTtsResponse.estimated_duration: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPlayTtsResponse_estimated_duration :: Word32
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgPlayTtsResponse :: Ros2Aimdk_msgsMsgPlayTtsResponse
defaultRos2Aimdk_msgsMsgPlayTtsResponse = Ros2Aimdk_msgsMsgPlayTtsResponse (T.empty)
    (defaultRos2Aimdk_msgsMsgTtsPriorityLevel) (0) (T.empty) (T.empty) (False) (T.empty) (0)
ros2Aimdk_msgsMsgPlayTtsResponseCodecIdentity :: String
ros2Aimdk_msgsMsgPlayTtsResponseCodecIdentity =
    "UWVMROS1_8347d2c5ae04c1db9ea2fd0c6afdffcb5e1327a170e15a7e861a00a08c8a8af3"
encodeRos2Aimdk_msgsMsgPlayTtsResponse :: Ros2Aimdk_msgsMsgPlayTtsResponse -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgPlayTtsResponse value = do
  b0 <- W.encodeText 128 True (ros2Aimdk_msgsMsgPlayTtsResponse_text value)
  b1 <- encodeRos2Aimdk_msgsMsgTtsPriorityLevel (ros2Aimdk_msgsMsgPlayTtsResponse_priority_level value)
  b2 <- W.encodeUnsigned 4 (fromIntegral (ros2Aimdk_msgsMsgPlayTtsResponse_priority_weight value))
  b3 <- W.encodeText 128 True (ros2Aimdk_msgsMsgPlayTtsResponse_domain value)
  b4 <- W.encodeText 128 True (ros2Aimdk_msgsMsgPlayTtsResponse_trace_id value)
  b5 <- W.encodeBool (ros2Aimdk_msgsMsgPlayTtsResponse_is_success value)
  b6 <- W.encodeText 128 True (ros2Aimdk_msgsMsgPlayTtsResponse_error_message value)
  b7 <- W.encodeUnsigned 4 (fromIntegral (ros2Aimdk_msgsMsgPlayTtsResponse_estimated_duration value))
  W.bounded 538 [b0, b1, b2, b3, b4, b5, b6, b7]
readRos2Aimdk_msgsMsgPlayTtsResponse :: W.Decoder Ros2Aimdk_msgsMsgPlayTtsResponse
readRos2Aimdk_msgsMsgPlayTtsResponse = do
  a0 <- W.text 128 True
  a1 <- readRos2Aimdk_msgsMsgTtsPriorityLevel
  a2 <- fromIntegral <$> W.unsigned 4
  a3 <- W.text 128 True
  a4 <- W.text 128 True
  a5 <- W.boolean
  a6 <- W.text 128 True
  a7 <- fromIntegral <$> W.unsigned 4
  let value = Ros2Aimdk_msgsMsgPlayTtsResponse a0 a1 a2 a3 a4 a5 a6 a7
  case encodeRos2Aimdk_msgsMsgPlayTtsResponse value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgPlayTtsResponse :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgPlayTtsResponse
decodeRos2Aimdk_msgsMsgPlayTtsResponse = W.runDecoder 538 readRos2Aimdk_msgsMsgPlayTtsResponse
instance Canonical Ros2Aimdk_msgsMsgPlayTtsResponse where
  maximumBytes _ = 538
  encodeValue = encodeRos2Aimdk_msgsMsgPlayTtsResponse
  readValue = readRos2Aimdk_msgsMsgPlayTtsResponse
data Ros2Aimdk_msgsMsgPmuState = Ros2Aimdk_msgsMsgPmuState
  {
    -- | \@brief aimdk_msgs/msg/PmuState.pmu_software_version: string; each string is 0..128 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPmuState_pmu_software_version :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/PmuState.pmu_hardware_version: string; each string is 0..128 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPmuState_pmu_hardware_version :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/PmuState.pmu_protocol_version: string; each string is 0..128 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPmuState_pmu_protocol_version :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/PmuState.pmu_bool_status: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPmuState_pmu_bool_status :: Word32
  ,
    -- | \@brief aimdk_msgs/msg/PmuState.head_power_current: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPmuState_head_power_current :: Double
  ,
    -- | \@brief aimdk_msgs/msg/PmuState.output_48v_current: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPmuState_output_48v_current :: Double
  ,
    -- | \@brief aimdk_msgs/msg/PmuState.rk3588_current: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPmuState_rk3588_current :: Double
  ,
    -- | \@brief aimdk_msgs/msg/PmuState.output_12v_current: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPmuState_output_12v_current :: Double
  ,
    -- | \@brief aimdk_msgs/msg/PmuState.bus_48v_current: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPmuState_bus_48v_current :: Double
  ,
    -- | \@brief aimdk_msgs/msg/PmuState.orin_current: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPmuState_orin_current :: Double
  ,
    -- | \@brief aimdk_msgs/msg/PmuState.bus_48v_pmos_voltage: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPmuState_bus_48v_pmos_voltage :: Double
  ,
    -- | \@brief aimdk_msgs/msg/PmuState.battery_voltage: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPmuState_battery_voltage :: Double
  ,
    -- | \@brief aimdk_msgs/msg/PmuState.fan_voltage: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPmuState_fan_voltage :: Double
  ,
    -- | \@brief aimdk_msgs/msg/PmuState.output_12v_voltage: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPmuState_output_12v_voltage :: Double
  ,
    -- | \@brief aimdk_msgs/msg/PmuState.output_48v_voltage: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPmuState_output_48v_voltage :: Double
  ,
    -- | \@brief aimdk_msgs/msg/PmuState.bus_48v_voltage: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPmuState_bus_48v_voltage :: Double
  ,
    -- | \@brief aimdk_msgs/msg/PmuState.head_power_voltage: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPmuState_head_power_voltage :: Double
  ,
    -- | \@brief aimdk_msgs/msg/PmuState.orin_voltage: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPmuState_orin_voltage :: Double
  ,
    -- | \@brief aimdk_msgs/msg/PmuState.rk3588_voltage: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPmuState_rk3588_voltage :: Double
  ,
    -- | \@brief aimdk_msgs/msg/PmuState.bms_manufacturer: string; each string is 0..128 bytes; strict UTF-8 with no
    -- embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPmuState_bms_manufacturer :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/PmuState.bms_serial_number: string; each string is 0..128 bytes; strict UTF-8 with
    -- no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPmuState_bms_serial_number :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/PmuState.bms_hardware_version: string; each string is 0..128 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPmuState_bms_hardware_version :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/PmuState.bms_software_version: string; each string is 0..128 bytes; strict UTF-8
    -- with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPmuState_bms_software_version :: T.Text
  ,
    -- | \@brief aimdk_msgs/msg/PmuState.bms_status_bits: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPmuState_bms_status_bits :: Word32
  ,
    -- | \@brief aimdk_msgs/msg/PmuState.battery_balance_line_resistance: uint16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPmuState_battery_balance_line_resistance :: Word16
  ,
    -- | \@brief aimdk_msgs/msg/PmuState.battery_pack_voltage: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPmuState_battery_pack_voltage :: Double
  ,
    -- | \@brief aimdk_msgs/msg/PmuState.battery_current: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPmuState_battery_current :: Double
  ,
    -- | \@brief aimdk_msgs/msg/PmuState.battery_output_power: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPmuState_battery_output_power :: Double
  ,
    -- | \@brief aimdk_msgs/msg/PmuState.battery_temperature: float64.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPmuState_battery_temperature :: Double
  ,
    -- | \@brief aimdk_msgs/msg/PmuState.battery_remaining_capacity: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPmuState_battery_remaining_capacity :: Word32
  ,
    -- | \@brief aimdk_msgs/msg/PmuState.battery_remaining_capacity_percentage: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPmuState_battery_remaining_capacity_percentage :: Word8
  ,
    -- | \@brief aimdk_msgs/msg/PmuState.battery_cycle_count: uint16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPmuState_battery_cycle_count :: Word16
  ,
    -- | \@brief aimdk_msgs/msg/PmuState.battery_cycle_total_capacity: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgPmuState_battery_cycle_total_capacity :: Word32
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgPmuState :: Ros2Aimdk_msgsMsgPmuState
defaultRos2Aimdk_msgsMsgPmuState = Ros2Aimdk_msgsMsgPmuState (T.empty) (T.empty) (T.empty) (0) (0) (0) (0) (0) (0)
    (0) (0) (0) (0) (0) (0) (0) (0) (0) (0) (T.empty) (T.empty) (T.empty) (T.empty) (0) (0) (0) (0) (0) (0) (0) (0)
    (0) (0)
ros2Aimdk_msgsMsgPmuStateCodecIdentity :: String
ros2Aimdk_msgsMsgPmuStateCodecIdentity = "UWVMROS1_5b7bda78c820384993ef98ff4563e61cc55fa29d5176db91b91bd787c91b8a1c"
encodeRos2Aimdk_msgsMsgPmuState :: Ros2Aimdk_msgsMsgPmuState -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgPmuState value = do
  b0 <- W.encodeText 128 True (ros2Aimdk_msgsMsgPmuState_pmu_software_version value)
  b1 <- W.encodeText 128 True (ros2Aimdk_msgsMsgPmuState_pmu_hardware_version value)
  b2 <- W.encodeText 128 True (ros2Aimdk_msgsMsgPmuState_pmu_protocol_version value)
  b3 <- W.encodeUnsigned 4 (fromIntegral (ros2Aimdk_msgsMsgPmuState_pmu_bool_status value))
  b4 <- W.encodeFloat64 (ros2Aimdk_msgsMsgPmuState_head_power_current value)
  b5 <- W.encodeFloat64 (ros2Aimdk_msgsMsgPmuState_output_48v_current value)
  b6 <- W.encodeFloat64 (ros2Aimdk_msgsMsgPmuState_rk3588_current value)
  b7 <- W.encodeFloat64 (ros2Aimdk_msgsMsgPmuState_output_12v_current value)
  b8 <- W.encodeFloat64 (ros2Aimdk_msgsMsgPmuState_bus_48v_current value)
  b9 <- W.encodeFloat64 (ros2Aimdk_msgsMsgPmuState_orin_current value)
  b10 <- W.encodeFloat64 (ros2Aimdk_msgsMsgPmuState_bus_48v_pmos_voltage value)
  b11 <- W.encodeFloat64 (ros2Aimdk_msgsMsgPmuState_battery_voltage value)
  b12 <- W.encodeFloat64 (ros2Aimdk_msgsMsgPmuState_fan_voltage value)
  b13 <- W.encodeFloat64 (ros2Aimdk_msgsMsgPmuState_output_12v_voltage value)
  b14 <- W.encodeFloat64 (ros2Aimdk_msgsMsgPmuState_output_48v_voltage value)
  b15 <- W.encodeFloat64 (ros2Aimdk_msgsMsgPmuState_bus_48v_voltage value)
  b16 <- W.encodeFloat64 (ros2Aimdk_msgsMsgPmuState_head_power_voltage value)
  b17 <- W.encodeFloat64 (ros2Aimdk_msgsMsgPmuState_orin_voltage value)
  b18 <- W.encodeFloat64 (ros2Aimdk_msgsMsgPmuState_rk3588_voltage value)
  b19 <- W.encodeText 128 True (ros2Aimdk_msgsMsgPmuState_bms_manufacturer value)
  b20 <- W.encodeText 128 True (ros2Aimdk_msgsMsgPmuState_bms_serial_number value)
  b21 <- W.encodeText 128 True (ros2Aimdk_msgsMsgPmuState_bms_hardware_version value)
  b22 <- W.encodeText 128 True (ros2Aimdk_msgsMsgPmuState_bms_software_version value)
  b23 <- W.encodeUnsigned 4 (fromIntegral (ros2Aimdk_msgsMsgPmuState_bms_status_bits value))
  b24 <- W.encodeUnsigned 2 (fromIntegral (ros2Aimdk_msgsMsgPmuState_battery_balance_line_resistance value))
  b25 <- W.encodeFloat64 (ros2Aimdk_msgsMsgPmuState_battery_pack_voltage value)
  b26 <- W.encodeFloat64 (ros2Aimdk_msgsMsgPmuState_battery_current value)
  b27 <- W.encodeFloat64 (ros2Aimdk_msgsMsgPmuState_battery_output_power value)
  b28 <- W.encodeFloat64 (ros2Aimdk_msgsMsgPmuState_battery_temperature value)
  b29 <- W.encodeUnsigned 4 (fromIntegral (ros2Aimdk_msgsMsgPmuState_battery_remaining_capacity value))
  b30 <- W.encodeUnsigned 1 (fromIntegral (ros2Aimdk_msgsMsgPmuState_battery_remaining_capacity_percentage value))
  b31 <- W.encodeUnsigned 2 (fromIntegral (ros2Aimdk_msgsMsgPmuState_battery_cycle_count value))
  b32 <- W.encodeUnsigned 4 (fromIntegral (ros2Aimdk_msgsMsgPmuState_battery_cycle_total_capacity value))
  W.bounded 1097 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15, b16, b17, b18, b19, b20,
      b21, b22, b23, b24, b25, b26, b27, b28, b29, b30, b31, b32]
readRos2Aimdk_msgsMsgPmuState :: W.Decoder Ros2Aimdk_msgsMsgPmuState
readRos2Aimdk_msgsMsgPmuState = do
  a0 <- W.text 128 True
  a1 <- W.text 128 True
  a2 <- W.text 128 True
  a3 <- fromIntegral <$> W.unsigned 4
  a4 <- W.float64
  a5 <- W.float64
  a6 <- W.float64
  a7 <- W.float64
  a8 <- W.float64
  a9 <- W.float64
  a10 <- W.float64
  a11 <- W.float64
  a12 <- W.float64
  a13 <- W.float64
  a14 <- W.float64
  a15 <- W.float64
  a16 <- W.float64
  a17 <- W.float64
  a18 <- W.float64
  a19 <- W.text 128 True
  a20 <- W.text 128 True
  a21 <- W.text 128 True
  a22 <- W.text 128 True
  a23 <- fromIntegral <$> W.unsigned 4
  a24 <- fromIntegral <$> W.unsigned 2
  a25 <- W.float64
  a26 <- W.float64
  a27 <- W.float64
  a28 <- W.float64
  a29 <- fromIntegral <$> W.unsigned 4
  a30 <- fromIntegral <$> W.unsigned 1
  a31 <- fromIntegral <$> W.unsigned 2
  a32 <- fromIntegral <$> W.unsigned 4
  let value = Ros2Aimdk_msgsMsgPmuState a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20
          a21 a22 a23 a24 a25 a26 a27 a28 a29 a30 a31 a32
  case encodeRos2Aimdk_msgsMsgPmuState value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgPmuState :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgPmuState
decodeRos2Aimdk_msgsMsgPmuState = W.runDecoder 1097 readRos2Aimdk_msgsMsgPmuState
instance Canonical Ros2Aimdk_msgsMsgPmuState where
  maximumBytes _ = 1097
  encodeValue = encodeRos2Aimdk_msgsMsgPmuState
  readValue = readRos2Aimdk_msgsMsgPmuState
data Ros2Aimdk_msgsMsgProcessedAudioOutput = Ros2Aimdk_msgsMsgProcessedAudioOutput
  {
    -- | \@brief aimdk_msgs/msg/ProcessedAudioOutput.header: aimdk_msgs/msg/MessageHeader.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgProcessedAudioOutput_header :: Ros2Aimdk_msgsMsgMessageHeader
  ,
    -- | \@brief aimdk_msgs/msg/ProcessedAudioOutput.stream_id: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgProcessedAudioOutput_stream_id :: Word32
  ,
    -- | \@brief aimdk_msgs/msg/ProcessedAudioOutput.audio_vad_state: aimdk_msgs/msg/AudioVadStateType.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgProcessedAudioOutput_audio_vad_state :: Ros2Aimdk_msgsMsgAudioVadStateType
  ,
    -- | \@brief aimdk_msgs/msg/ProcessedAudioOutput.audio_data: uint8; 0..256 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgProcessedAudioOutput_audio_data :: [Word8]
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgProcessedAudioOutput :: Ros2Aimdk_msgsMsgProcessedAudioOutput
defaultRos2Aimdk_msgsMsgProcessedAudioOutput = Ros2Aimdk_msgsMsgProcessedAudioOutput
    (defaultRos2Aimdk_msgsMsgMessageHeader) (0) (defaultRos2Aimdk_msgsMsgAudioVadStateType) ([])
ros2Aimdk_msgsMsgProcessedAudioOutputCodecIdentity :: String
ros2Aimdk_msgsMsgProcessedAudioOutputCodecIdentity =
    "UWVMROS1_8b0ea5b4fc3db2efe41730f74a261ee6ea94ad34ee35ff42ae5288ddf501cc30"
encodeRos2Aimdk_msgsMsgProcessedAudioOutput :: Ros2Aimdk_msgsMsgProcessedAudioOutput -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgProcessedAudioOutput value = do
  b0 <- encodeRos2Aimdk_msgsMsgMessageHeader (ros2Aimdk_msgsMsgProcessedAudioOutput_header value)
  b1 <- W.encodeUnsigned 4 (fromIntegral (ros2Aimdk_msgsMsgProcessedAudioOutput_stream_id value))
  b2 <- encodeRos2Aimdk_msgsMsgAudioVadStateType (ros2Aimdk_msgsMsgProcessedAudioOutput_audio_vad_state value)
  if length (ros2Aimdk_msgsMsgProcessedAudioOutput_audio_data value) > 256 then Left 22 else Right ()
  prefix3 <- W.encodeCount 256 (length (ros2Aimdk_msgsMsgProcessedAudioOutput_audio_data value))
  b3 <- B.concat <$> mapM (\e -> W.encodeUnsigned 1 (fromIntegral (e)))
      (ros2Aimdk_msgsMsgProcessedAudioOutput_audio_data value)
  W.bounded 417 [b0, b1, b2, prefix3, b3]
readRos2Aimdk_msgsMsgProcessedAudioOutput :: W.Decoder Ros2Aimdk_msgsMsgProcessedAudioOutput
readRos2Aimdk_msgsMsgProcessedAudioOutput = do
  a0 <- readRos2Aimdk_msgsMsgMessageHeader
  a1 <- fromIntegral <$> W.unsigned 4
  a2 <- readRos2Aimdk_msgsMsgAudioVadStateType
  count3 <- W.count 256
  a3 <- replicateM count3 (fromIntegral <$> W.unsigned 1)
  let value = Ros2Aimdk_msgsMsgProcessedAudioOutput a0 a1 a2 a3
  case encodeRos2Aimdk_msgsMsgProcessedAudioOutput value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgProcessedAudioOutput :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgProcessedAudioOutput
decodeRos2Aimdk_msgsMsgProcessedAudioOutput = W.runDecoder 417 readRos2Aimdk_msgsMsgProcessedAudioOutput
instance Canonical Ros2Aimdk_msgsMsgProcessedAudioOutput where
  maximumBytes _ = 417
  encodeValue = encodeRos2Aimdk_msgsMsgProcessedAudioOutput
  readValue = readRos2Aimdk_msgsMsgProcessedAudioOutput
data Ros2Aimdk_msgsMsgTouchState = Ros2Aimdk_msgsMsgTouchState
  {
    -- | \@brief aimdk_msgs/msg/TouchState.header: aimdk_msgs/msg/MessageHeader.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgTouchState_header :: Ros2Aimdk_msgsMsgMessageHeader
  ,
    -- | \@brief aimdk_msgs/msg/TouchState.event_type: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgTouchState_event_type :: Word8
  ,
    -- | \@brief aimdk_msgs/msg/TouchState.data: uint32; exactly 8 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgTouchState_data :: [Word32]
  ,
    -- | \@brief aimdk_msgs/msg/TouchState.threshold: uint32; exactly 8 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgTouchState_threshold :: [Word32]
  ,
    -- | \@brief aimdk_msgs/msg/TouchState.is_touched: bool; exactly 8 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsMsgTouchState_is_touched :: [Bool]
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsMsgTouchState :: Ros2Aimdk_msgsMsgTouchState
defaultRos2Aimdk_msgsMsgTouchState = Ros2Aimdk_msgsMsgTouchState (defaultRos2Aimdk_msgsMsgMessageHeader) (0)
    (replicate 8 (0)) (replicate 8 (0)) (replicate 8 (False))
ros2Aimdk_msgsMsgTouchStateCodecIdentity :: String
ros2Aimdk_msgsMsgTouchStateCodecIdentity =
    "UWVMROS1_90d5626f09f2254a102224e74c1f8a4d8db63910b7e5eeafa519afd79c7b1564"
ros2Aimdk_msgsMsgTouchState_UNKNOWN :: Word8
ros2Aimdk_msgsMsgTouchState_UNKNOWN = 0
ros2Aimdk_msgsMsgTouchState_IDLE :: Word8
ros2Aimdk_msgsMsgTouchState_IDLE = 1
ros2Aimdk_msgsMsgTouchState_TOUCH :: Word8
ros2Aimdk_msgsMsgTouchState_TOUCH = 2
ros2Aimdk_msgsMsgTouchState_SLIDE :: Word8
ros2Aimdk_msgsMsgTouchState_SLIDE = 3
ros2Aimdk_msgsMsgTouchState_PAT_ONCE :: Word8
ros2Aimdk_msgsMsgTouchState_PAT_ONCE = 4
ros2Aimdk_msgsMsgTouchState_PAT_TWICE :: Word8
ros2Aimdk_msgsMsgTouchState_PAT_TWICE = 5
ros2Aimdk_msgsMsgTouchState_PAT_TRIPLE :: Word8
ros2Aimdk_msgsMsgTouchState_PAT_TRIPLE = 6
encodeRos2Aimdk_msgsMsgTouchState :: Ros2Aimdk_msgsMsgTouchState -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsMsgTouchState value = do
  b0 <- encodeRos2Aimdk_msgsMsgMessageHeader (ros2Aimdk_msgsMsgTouchState_header value)
  b1 <- W.encodeUnsigned 1 (fromIntegral (ros2Aimdk_msgsMsgTouchState_event_type value))
  if length (ros2Aimdk_msgsMsgTouchState_data value) /= 8 then Left 22 else Right ()
  b2 <- B.concat <$> mapM (\e -> W.encodeUnsigned 4 (fromIntegral (e))) (ros2Aimdk_msgsMsgTouchState_data value)
  if length (ros2Aimdk_msgsMsgTouchState_threshold value) /= 8 then Left 22 else Right ()
  b3 <- B.concat <$> mapM (\e -> W.encodeUnsigned 4 (fromIntegral (e))) (ros2Aimdk_msgsMsgTouchState_threshold
      value)
  if length (ros2Aimdk_msgsMsgTouchState_is_touched value) /= 8 then Left 22 else Right ()
  b4 <- B.concat <$> mapM (\e -> W.encodeBool (e)) (ros2Aimdk_msgsMsgTouchState_is_touched value)
  W.bounded 225 [b0, b1, b2, b3, b4]
readRos2Aimdk_msgsMsgTouchState :: W.Decoder Ros2Aimdk_msgsMsgTouchState
readRos2Aimdk_msgsMsgTouchState = do
  a0 <- readRos2Aimdk_msgsMsgMessageHeader
  a1 <- fromIntegral <$> W.unsigned 1
  a2 <- replicateM 8 (fromIntegral <$> W.unsigned 4)
  a3 <- replicateM 8 (fromIntegral <$> W.unsigned 4)
  a4 <- replicateM 8 (W.boolean)
  let value = Ros2Aimdk_msgsMsgTouchState a0 a1 a2 a3 a4
  case encodeRos2Aimdk_msgsMsgTouchState value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsMsgTouchState :: B.ByteString -> Either Word32 Ros2Aimdk_msgsMsgTouchState
decodeRos2Aimdk_msgsMsgTouchState = W.runDecoder 225 readRos2Aimdk_msgsMsgTouchState
instance Canonical Ros2Aimdk_msgsMsgTouchState where
  maximumBytes _ = 225
  encodeValue = encodeRos2Aimdk_msgsMsgTouchState
  readValue = readRos2Aimdk_msgsMsgTouchState
data Ros2Aimdk_msgsSrvGetAllJointState_Request = Ros2Aimdk_msgsSrvGetAllJointState_Request
  {
    -- | \@brief aimdk_msgs/srv/GetAllJointState_Request.request: aimdk_msgs/msg/CommonRequest.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetAllJointState_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetAllJointState_Request_request :: Ros2Aimdk_msgsMsgCommonRequest
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvGetAllJointState_Request :: Ros2Aimdk_msgsSrvGetAllJointState_Request
defaultRos2Aimdk_msgsSrvGetAllJointState_Request = Ros2Aimdk_msgsSrvGetAllJointState_Request
    (defaultRos2Aimdk_msgsMsgCommonRequest)
ros2Aimdk_msgsSrvGetAllJointState_RequestCodecIdentity :: String
ros2Aimdk_msgsSrvGetAllJointState_RequestCodecIdentity =
    "UWVMROS1_6ebdd4b2a15c8d5f3089fa93003d73adb818d92b51ecb65ea817b72e0ee90260"
encodeRos2Aimdk_msgsSrvGetAllJointState_Request :: Ros2Aimdk_msgsSrvGetAllJointState_Request -> Either Word32
    B.ByteString
encodeRos2Aimdk_msgsSrvGetAllJointState_Request value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonRequest (ros2Aimdk_msgsSrvGetAllJointState_Request_request value)
  W.bounded 8 [b0]
readRos2Aimdk_msgsSrvGetAllJointState_Request :: W.Decoder Ros2Aimdk_msgsSrvGetAllJointState_Request
readRos2Aimdk_msgsSrvGetAllJointState_Request = do
  a0 <- readRos2Aimdk_msgsMsgCommonRequest
  let value = Ros2Aimdk_msgsSrvGetAllJointState_Request a0
  case encodeRos2Aimdk_msgsSrvGetAllJointState_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvGetAllJointState_Request :: B.ByteString -> Either Word32
    Ros2Aimdk_msgsSrvGetAllJointState_Request
decodeRos2Aimdk_msgsSrvGetAllJointState_Request = W.runDecoder 8 readRos2Aimdk_msgsSrvGetAllJointState_Request
instance Canonical Ros2Aimdk_msgsSrvGetAllJointState_Request where
  maximumBytes _ = 8
  encodeValue = encodeRos2Aimdk_msgsSrvGetAllJointState_Request
  readValue = readRos2Aimdk_msgsSrvGetAllJointState_Request
data Ros2Aimdk_msgsSrvGetAllJointState_Response = Ros2Aimdk_msgsSrvGetAllJointState_Response
  {
    -- | \@brief aimdk_msgs/srv/GetAllJointState_Response.reponse: aimdk_msgs/msg/CommonResponse.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetAllJointState_Response_reponse :: Ros2Aimdk_msgsMsgCommonResponse
  ,
    -- | \@brief aimdk_msgs/srv/GetAllJointState_Response.head_joints: aimdk_msgs/msg/JointState; 0..4 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetAllJointState_Response_head_joints :: [Ros2Aimdk_msgsMsgJointState]
  ,
    -- | \@brief aimdk_msgs/srv/GetAllJointState_Response.arm_joints: aimdk_msgs/msg/JointState; 0..4 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetAllJointState_Response_arm_joints :: [Ros2Aimdk_msgsMsgJointState]
  ,
    -- | \@brief aimdk_msgs/srv/GetAllJointState_Response.waist_joints: aimdk_msgs/msg/JointState; 0..4 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetAllJointState_Response_waist_joints :: [Ros2Aimdk_msgsMsgJointState]
  ,
    -- | \@brief aimdk_msgs/srv/GetAllJointState_Response.leg_joints: aimdk_msgs/msg/JointState; 0..4 elements.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetAllJointState_Response_leg_joints :: [Ros2Aimdk_msgsMsgJointState]
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvGetAllJointState_Response :: Ros2Aimdk_msgsSrvGetAllJointState_Response
defaultRos2Aimdk_msgsSrvGetAllJointState_Response = Ros2Aimdk_msgsSrvGetAllJointState_Response
    (defaultRos2Aimdk_msgsMsgCommonResponse) ([]) ([]) ([]) ([])
ros2Aimdk_msgsSrvGetAllJointState_ResponseCodecIdentity :: String
ros2Aimdk_msgsSrvGetAllJointState_ResponseCodecIdentity =
    "UWVMROS1_14baa3fa0f7685798bdc9f15f4f65ca87070ca388fcbe65696fa030b0d68f793"
encodeRos2Aimdk_msgsSrvGetAllJointState_Response :: Ros2Aimdk_msgsSrvGetAllJointState_Response -> Either Word32
    B.ByteString
encodeRos2Aimdk_msgsSrvGetAllJointState_Response value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonResponse (ros2Aimdk_msgsSrvGetAllJointState_Response_reponse value)
  if length (ros2Aimdk_msgsSrvGetAllJointState_Response_head_joints value) > 4 then Left 22 else Right ()
  prefix1 <- W.encodeCount 4 (length (ros2Aimdk_msgsSrvGetAllJointState_Response_head_joints value))
  b1 <- B.concat <$> mapM (\e -> encodeRos2Aimdk_msgsMsgJointState (e))
      (ros2Aimdk_msgsSrvGetAllJointState_Response_head_joints value)
  if length (ros2Aimdk_msgsSrvGetAllJointState_Response_arm_joints value) > 4 then Left 22 else Right ()
  prefix2 <- W.encodeCount 4 (length (ros2Aimdk_msgsSrvGetAllJointState_Response_arm_joints value))
  b2 <- B.concat <$> mapM (\e -> encodeRos2Aimdk_msgsMsgJointState (e))
      (ros2Aimdk_msgsSrvGetAllJointState_Response_arm_joints value)
  if length (ros2Aimdk_msgsSrvGetAllJointState_Response_waist_joints value) > 4 then Left 22 else Right ()
  prefix3 <- W.encodeCount 4 (length (ros2Aimdk_msgsSrvGetAllJointState_Response_waist_joints value))
  b3 <- B.concat <$> mapM (\e -> encodeRos2Aimdk_msgsMsgJointState (e))
      (ros2Aimdk_msgsSrvGetAllJointState_Response_waist_joints value)
  if length (ros2Aimdk_msgsSrvGetAllJointState_Response_leg_joints value) > 4 then Left 22 else Right ()
  prefix4 <- W.encodeCount 4 (length (ros2Aimdk_msgsSrvGetAllJointState_Response_leg_joints value))
  b4 <- B.concat <$> mapM (\e -> encodeRos2Aimdk_msgsMsgJointState (e))
      (ros2Aimdk_msgsSrvGetAllJointState_Response_leg_joints value)
  W.bounded 2712 [b0, prefix1, b1, prefix2, b2, prefix3, b3, prefix4, b4]
readRos2Aimdk_msgsSrvGetAllJointState_Response :: W.Decoder Ros2Aimdk_msgsSrvGetAllJointState_Response
readRos2Aimdk_msgsSrvGetAllJointState_Response = do
  a0 <- readRos2Aimdk_msgsMsgCommonResponse
  count1 <- W.count 4
  a1 <- replicateM count1 (readRos2Aimdk_msgsMsgJointState)
  count2 <- W.count 4
  a2 <- replicateM count2 (readRos2Aimdk_msgsMsgJointState)
  count3 <- W.count 4
  a3 <- replicateM count3 (readRos2Aimdk_msgsMsgJointState)
  count4 <- W.count 4
  a4 <- replicateM count4 (readRos2Aimdk_msgsMsgJointState)
  let value = Ros2Aimdk_msgsSrvGetAllJointState_Response a0 a1 a2 a3 a4
  case encodeRos2Aimdk_msgsSrvGetAllJointState_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvGetAllJointState_Response :: B.ByteString -> Either Word32
    Ros2Aimdk_msgsSrvGetAllJointState_Response
decodeRos2Aimdk_msgsSrvGetAllJointState_Response = W.runDecoder 2712 readRos2Aimdk_msgsSrvGetAllJointState_Response
instance Canonical Ros2Aimdk_msgsSrvGetAllJointState_Response where
  maximumBytes _ = 2712
  encodeValue = encodeRos2Aimdk_msgsSrvGetAllJointState_Response
  readValue = readRos2Aimdk_msgsSrvGetAllJointState_Response
data Ros2Aimdk_msgsSrvGetCurrentInputSource_Request = Ros2Aimdk_msgsSrvGetCurrentInputSource_Request
  {
    -- | \@brief aimdk_msgs/srv/GetCurrentInputSource_Request.request: aimdk_msgs/msg/CommonRequest.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetCurrentInputSource_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetCurrentInputSource_Request_request :: Ros2Aimdk_msgsMsgCommonRequest
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvGetCurrentInputSource_Request :: Ros2Aimdk_msgsSrvGetCurrentInputSource_Request
defaultRos2Aimdk_msgsSrvGetCurrentInputSource_Request = Ros2Aimdk_msgsSrvGetCurrentInputSource_Request
    (defaultRos2Aimdk_msgsMsgCommonRequest)
ros2Aimdk_msgsSrvGetCurrentInputSource_RequestCodecIdentity :: String
ros2Aimdk_msgsSrvGetCurrentInputSource_RequestCodecIdentity =
    "UWVMROS1_d5b73ba9bc2ea2f864884a0e278e2a3e327e0af405594a5e7aac7d3884e7143a"
encodeRos2Aimdk_msgsSrvGetCurrentInputSource_Request :: Ros2Aimdk_msgsSrvGetCurrentInputSource_Request -> Either
    Word32 B.ByteString
encodeRos2Aimdk_msgsSrvGetCurrentInputSource_Request value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonRequest (ros2Aimdk_msgsSrvGetCurrentInputSource_Request_request value)
  W.bounded 8 [b0]
readRos2Aimdk_msgsSrvGetCurrentInputSource_Request :: W.Decoder Ros2Aimdk_msgsSrvGetCurrentInputSource_Request
readRos2Aimdk_msgsSrvGetCurrentInputSource_Request = do
  a0 <- readRos2Aimdk_msgsMsgCommonRequest
  let value = Ros2Aimdk_msgsSrvGetCurrentInputSource_Request a0
  case encodeRos2Aimdk_msgsSrvGetCurrentInputSource_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvGetCurrentInputSource_Request :: B.ByteString -> Either Word32
    Ros2Aimdk_msgsSrvGetCurrentInputSource_Request
decodeRos2Aimdk_msgsSrvGetCurrentInputSource_Request = W.runDecoder 8
    readRos2Aimdk_msgsSrvGetCurrentInputSource_Request
instance Canonical Ros2Aimdk_msgsSrvGetCurrentInputSource_Request where
  maximumBytes _ = 8
  encodeValue = encodeRos2Aimdk_msgsSrvGetCurrentInputSource_Request
  readValue = readRos2Aimdk_msgsSrvGetCurrentInputSource_Request
data Ros2Aimdk_msgsSrvGetCurrentInputSource_Response = Ros2Aimdk_msgsSrvGetCurrentInputSource_Response
  {
    -- | \@brief aimdk_msgs/srv/GetCurrentInputSource_Response.response: aimdk_msgs/msg/CommonTaskResponse.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetCurrentInputSource_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetCurrentInputSource_Response_response :: Ros2Aimdk_msgsMsgCommonTaskResponse
  ,
    -- | \@brief aimdk_msgs/srv/GetCurrentInputSource_Response.input_source: aimdk_msgs/msg/McInputSource.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetCurrentInputSource_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetCurrentInputSource_Response_input_source :: Ros2Aimdk_msgsMsgMcInputSource
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvGetCurrentInputSource_Response :: Ros2Aimdk_msgsSrvGetCurrentInputSource_Response
defaultRos2Aimdk_msgsSrvGetCurrentInputSource_Response = Ros2Aimdk_msgsSrvGetCurrentInputSource_Response
    (defaultRos2Aimdk_msgsMsgCommonTaskResponse) (defaultRos2Aimdk_msgsMsgMcInputSource)
ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseCodecIdentity :: String
ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseCodecIdentity =
    "UWVMROS1_74952e748930b62ef98f8837c39e3925425b6f3a715fadb0d01339104bafbe5e"
encodeRos2Aimdk_msgsSrvGetCurrentInputSource_Response :: Ros2Aimdk_msgsSrvGetCurrentInputSource_Response -> Either
    Word32 B.ByteString
encodeRos2Aimdk_msgsSrvGetCurrentInputSource_Response value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonTaskResponse (ros2Aimdk_msgsSrvGetCurrentInputSource_Response_response value)
  b1 <- encodeRos2Aimdk_msgsMsgMcInputSource (ros2Aimdk_msgsSrvGetCurrentInputSource_Response_input_source value)
  W.bounded 168 [b0, b1]
readRos2Aimdk_msgsSrvGetCurrentInputSource_Response :: W.Decoder Ros2Aimdk_msgsSrvGetCurrentInputSource_Response
readRos2Aimdk_msgsSrvGetCurrentInputSource_Response = do
  a0 <- readRos2Aimdk_msgsMsgCommonTaskResponse
  a1 <- readRos2Aimdk_msgsMsgMcInputSource
  let value = Ros2Aimdk_msgsSrvGetCurrentInputSource_Response a0 a1
  case encodeRos2Aimdk_msgsSrvGetCurrentInputSource_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvGetCurrentInputSource_Response :: B.ByteString -> Either Word32
    Ros2Aimdk_msgsSrvGetCurrentInputSource_Response
decodeRos2Aimdk_msgsSrvGetCurrentInputSource_Response = W.runDecoder 168
    readRos2Aimdk_msgsSrvGetCurrentInputSource_Response
instance Canonical Ros2Aimdk_msgsSrvGetCurrentInputSource_Response where
  maximumBytes _ = 168
  encodeValue = encodeRos2Aimdk_msgsSrvGetCurrentInputSource_Response
  readValue = readRos2Aimdk_msgsSrvGetCurrentInputSource_Response
data Ros2Aimdk_msgsSrvGetHandType_Request = Ros2Aimdk_msgsSrvGetHandType_Request
  {
    -- | \@brief aimdk_msgs/srv/GetHandType_Request.request: aimdk_msgs/msg/CommonRequest.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetHandType_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetHandType_Request_request :: Ros2Aimdk_msgsMsgCommonRequest
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvGetHandType_Request :: Ros2Aimdk_msgsSrvGetHandType_Request
defaultRos2Aimdk_msgsSrvGetHandType_Request = Ros2Aimdk_msgsSrvGetHandType_Request
    (defaultRos2Aimdk_msgsMsgCommonRequest)
ros2Aimdk_msgsSrvGetHandType_RequestCodecIdentity :: String
ros2Aimdk_msgsSrvGetHandType_RequestCodecIdentity =
    "UWVMROS1_d286d9ff63fa2191490e6aa526330d2a448b37fc47231d9e42d61a3b4ddca470"
encodeRos2Aimdk_msgsSrvGetHandType_Request :: Ros2Aimdk_msgsSrvGetHandType_Request -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsSrvGetHandType_Request value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonRequest (ros2Aimdk_msgsSrvGetHandType_Request_request value)
  W.bounded 8 [b0]
readRos2Aimdk_msgsSrvGetHandType_Request :: W.Decoder Ros2Aimdk_msgsSrvGetHandType_Request
readRos2Aimdk_msgsSrvGetHandType_Request = do
  a0 <- readRos2Aimdk_msgsMsgCommonRequest
  let value = Ros2Aimdk_msgsSrvGetHandType_Request a0
  case encodeRos2Aimdk_msgsSrvGetHandType_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvGetHandType_Request :: B.ByteString -> Either Word32 Ros2Aimdk_msgsSrvGetHandType_Request
decodeRos2Aimdk_msgsSrvGetHandType_Request = W.runDecoder 8 readRos2Aimdk_msgsSrvGetHandType_Request
instance Canonical Ros2Aimdk_msgsSrvGetHandType_Request where
  maximumBytes _ = 8
  encodeValue = encodeRos2Aimdk_msgsSrvGetHandType_Request
  readValue = readRos2Aimdk_msgsSrvGetHandType_Request
data Ros2Aimdk_msgsSrvGetHandType_Response = Ros2Aimdk_msgsSrvGetHandType_Response
  {
    -- | \@brief aimdk_msgs/srv/GetHandType_Response.reponse: aimdk_msgs/msg/CommonResponse.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetHandType_Response_reponse :: Ros2Aimdk_msgsMsgCommonResponse
  ,
    -- | \@brief aimdk_msgs/srv/GetHandType_Response.left_hands_type: aimdk_msgs/msg/HandType.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetHandType_Response_left_hands_type :: Ros2Aimdk_msgsMsgHandType
  ,
    -- | \@brief aimdk_msgs/srv/GetHandType_Response.right_hands_type: aimdk_msgs/msg/HandType.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetHandType_Response_right_hands_type :: Ros2Aimdk_msgsMsgHandType
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvGetHandType_Response :: Ros2Aimdk_msgsSrvGetHandType_Response
defaultRos2Aimdk_msgsSrvGetHandType_Response = Ros2Aimdk_msgsSrvGetHandType_Response
    (defaultRos2Aimdk_msgsMsgCommonResponse) (defaultRos2Aimdk_msgsMsgHandType) (defaultRos2Aimdk_msgsMsgHandType)
ros2Aimdk_msgsSrvGetHandType_ResponseCodecIdentity :: String
ros2Aimdk_msgsSrvGetHandType_ResponseCodecIdentity =
    "UWVMROS1_04f69fc5f7df302c1e73d2a51ffaef813b002ec387014b6d4d8a648e1e5d098c"
encodeRos2Aimdk_msgsSrvGetHandType_Response :: Ros2Aimdk_msgsSrvGetHandType_Response -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsSrvGetHandType_Response value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonResponse (ros2Aimdk_msgsSrvGetHandType_Response_reponse value)
  b1 <- encodeRos2Aimdk_msgsMsgHandType (ros2Aimdk_msgsSrvGetHandType_Response_left_hands_type value)
  b2 <- encodeRos2Aimdk_msgsMsgHandType (ros2Aimdk_msgsSrvGetHandType_Response_right_hands_type value)
  W.bounded 154 [b0, b1, b2]
readRos2Aimdk_msgsSrvGetHandType_Response :: W.Decoder Ros2Aimdk_msgsSrvGetHandType_Response
readRos2Aimdk_msgsSrvGetHandType_Response = do
  a0 <- readRos2Aimdk_msgsMsgCommonResponse
  a1 <- readRos2Aimdk_msgsMsgHandType
  a2 <- readRos2Aimdk_msgsMsgHandType
  let value = Ros2Aimdk_msgsSrvGetHandType_Response a0 a1 a2
  case encodeRos2Aimdk_msgsSrvGetHandType_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvGetHandType_Response :: B.ByteString -> Either Word32 Ros2Aimdk_msgsSrvGetHandType_Response
decodeRos2Aimdk_msgsSrvGetHandType_Response = W.runDecoder 154 readRos2Aimdk_msgsSrvGetHandType_Response
instance Canonical Ros2Aimdk_msgsSrvGetHandType_Response where
  maximumBytes _ = 154
  encodeValue = encodeRos2Aimdk_msgsSrvGetHandType_Response
  readValue = readRos2Aimdk_msgsSrvGetHandType_Response
data Ros2Aimdk_msgsSrvGetMcAction_Request = Ros2Aimdk_msgsSrvGetMcAction_Request
  {
    -- | \@brief aimdk_msgs/srv/GetMcAction_Request.request: aimdk_msgs/msg/CommonRequest.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetMcAction_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetMcAction_Request_request :: Ros2Aimdk_msgsMsgCommonRequest
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvGetMcAction_Request :: Ros2Aimdk_msgsSrvGetMcAction_Request
defaultRos2Aimdk_msgsSrvGetMcAction_Request = Ros2Aimdk_msgsSrvGetMcAction_Request
    (defaultRos2Aimdk_msgsMsgCommonRequest)
ros2Aimdk_msgsSrvGetMcAction_RequestCodecIdentity :: String
ros2Aimdk_msgsSrvGetMcAction_RequestCodecIdentity =
    "UWVMROS1_f6dc5b72271fc51bfb1950b67d671619b65dfabc7931e12889a237fe47d18cfe"
encodeRos2Aimdk_msgsSrvGetMcAction_Request :: Ros2Aimdk_msgsSrvGetMcAction_Request -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsSrvGetMcAction_Request value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonRequest (ros2Aimdk_msgsSrvGetMcAction_Request_request value)
  W.bounded 8 [b0]
readRos2Aimdk_msgsSrvGetMcAction_Request :: W.Decoder Ros2Aimdk_msgsSrvGetMcAction_Request
readRos2Aimdk_msgsSrvGetMcAction_Request = do
  a0 <- readRos2Aimdk_msgsMsgCommonRequest
  let value = Ros2Aimdk_msgsSrvGetMcAction_Request a0
  case encodeRos2Aimdk_msgsSrvGetMcAction_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvGetMcAction_Request :: B.ByteString -> Either Word32 Ros2Aimdk_msgsSrvGetMcAction_Request
decodeRos2Aimdk_msgsSrvGetMcAction_Request = W.runDecoder 8 readRos2Aimdk_msgsSrvGetMcAction_Request
instance Canonical Ros2Aimdk_msgsSrvGetMcAction_Request where
  maximumBytes _ = 8
  encodeValue = encodeRos2Aimdk_msgsSrvGetMcAction_Request
  readValue = readRos2Aimdk_msgsSrvGetMcAction_Request
data Ros2Aimdk_msgsSrvGetMcAction_Response = Ros2Aimdk_msgsSrvGetMcAction_Response
  {
    -- | \@brief aimdk_msgs/srv/GetMcAction_Response.header: aimdk_msgs/msg/ResponseHeader.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetMcAction_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetMcAction_Response_header :: Ros2Aimdk_msgsMsgResponseHeader
  ,
    -- | \@brief aimdk_msgs/srv/GetMcAction_Response.info: aimdk_msgs/msg/McActionInfo.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetMcAction_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetMcAction_Response_info :: Ros2Aimdk_msgsMsgMcActionInfo
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvGetMcAction_Response :: Ros2Aimdk_msgsSrvGetMcAction_Response
defaultRos2Aimdk_msgsSrvGetMcAction_Response = Ros2Aimdk_msgsSrvGetMcAction_Response
    (defaultRos2Aimdk_msgsMsgResponseHeader) (defaultRos2Aimdk_msgsMsgMcActionInfo)
ros2Aimdk_msgsSrvGetMcAction_ResponseCodecIdentity :: String
ros2Aimdk_msgsSrvGetMcAction_ResponseCodecIdentity =
    "UWVMROS1_e2518bce930bc6f8e195b638d9eb5c132dffa93449c94b6f044e6192843df18f"
encodeRos2Aimdk_msgsSrvGetMcAction_Response :: Ros2Aimdk_msgsSrvGetMcAction_Response -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsSrvGetMcAction_Response value = do
  b0 <- encodeRos2Aimdk_msgsMsgResponseHeader (ros2Aimdk_msgsSrvGetMcAction_Response_header value)
  b1 <- encodeRos2Aimdk_msgsMsgMcActionInfo (ros2Aimdk_msgsSrvGetMcAction_Response_info value)
  W.bounded 156 [b0, b1]
readRos2Aimdk_msgsSrvGetMcAction_Response :: W.Decoder Ros2Aimdk_msgsSrvGetMcAction_Response
readRos2Aimdk_msgsSrvGetMcAction_Response = do
  a0 <- readRos2Aimdk_msgsMsgResponseHeader
  a1 <- readRos2Aimdk_msgsMsgMcActionInfo
  let value = Ros2Aimdk_msgsSrvGetMcAction_Response a0 a1
  case encodeRos2Aimdk_msgsSrvGetMcAction_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvGetMcAction_Response :: B.ByteString -> Either Word32 Ros2Aimdk_msgsSrvGetMcAction_Response
decodeRos2Aimdk_msgsSrvGetMcAction_Response = W.runDecoder 156 readRos2Aimdk_msgsSrvGetMcAction_Response
instance Canonical Ros2Aimdk_msgsSrvGetMcAction_Response where
  maximumBytes _ = 156
  encodeValue = encodeRos2Aimdk_msgsSrvGetMcAction_Response
  readValue = readRos2Aimdk_msgsSrvGetMcAction_Response
data Ros2Aimdk_msgsSrvGetMute_Request = Ros2Aimdk_msgsSrvGetMute_Request
  {
    -- | \@brief aimdk_msgs/srv/GetMute_Request.request: aimdk_msgs/msg/CommonRequest.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetMute_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetMute_Request_request :: Ros2Aimdk_msgsMsgCommonRequest
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvGetMute_Request :: Ros2Aimdk_msgsSrvGetMute_Request
defaultRos2Aimdk_msgsSrvGetMute_Request = Ros2Aimdk_msgsSrvGetMute_Request (defaultRos2Aimdk_msgsMsgCommonRequest)
ros2Aimdk_msgsSrvGetMute_RequestCodecIdentity :: String
ros2Aimdk_msgsSrvGetMute_RequestCodecIdentity =
    "UWVMROS1_0f3d2a1679b2af2dca96bcdba69e8f076e9a333d4166a53501de40594c723ca5"
encodeRos2Aimdk_msgsSrvGetMute_Request :: Ros2Aimdk_msgsSrvGetMute_Request -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsSrvGetMute_Request value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonRequest (ros2Aimdk_msgsSrvGetMute_Request_request value)
  W.bounded 8 [b0]
readRos2Aimdk_msgsSrvGetMute_Request :: W.Decoder Ros2Aimdk_msgsSrvGetMute_Request
readRos2Aimdk_msgsSrvGetMute_Request = do
  a0 <- readRos2Aimdk_msgsMsgCommonRequest
  let value = Ros2Aimdk_msgsSrvGetMute_Request a0
  case encodeRos2Aimdk_msgsSrvGetMute_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvGetMute_Request :: B.ByteString -> Either Word32 Ros2Aimdk_msgsSrvGetMute_Request
decodeRos2Aimdk_msgsSrvGetMute_Request = W.runDecoder 8 readRos2Aimdk_msgsSrvGetMute_Request
instance Canonical Ros2Aimdk_msgsSrvGetMute_Request where
  maximumBytes _ = 8
  encodeValue = encodeRos2Aimdk_msgsSrvGetMute_Request
  readValue = readRos2Aimdk_msgsSrvGetMute_Request
data Ros2Aimdk_msgsSrvGetMute_Response = Ros2Aimdk_msgsSrvGetMute_Response
  {
    -- | \@brief aimdk_msgs/srv/GetMute_Response.reponse: aimdk_msgs/msg/CommonResponse.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetMute_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetMute_Response_reponse :: Ros2Aimdk_msgsMsgCommonResponse
  ,
    -- | \@brief aimdk_msgs/srv/GetMute_Response.is_mute: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetMute_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetMute_Response_is_mute :: Bool
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvGetMute_Response :: Ros2Aimdk_msgsSrvGetMute_Response
defaultRos2Aimdk_msgsSrvGetMute_Response = Ros2Aimdk_msgsSrvGetMute_Response
    (defaultRos2Aimdk_msgsMsgCommonResponse) (False)
ros2Aimdk_msgsSrvGetMute_ResponseCodecIdentity :: String
ros2Aimdk_msgsSrvGetMute_ResponseCodecIdentity =
    "UWVMROS1_c1beb5c0c269083a0be2c3a4718043ec92639b6ac58cf1d74bae051bec2d8a42"
encodeRos2Aimdk_msgsSrvGetMute_Response :: Ros2Aimdk_msgsSrvGetMute_Response -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsSrvGetMute_Response value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonResponse (ros2Aimdk_msgsSrvGetMute_Response_reponse value)
  b1 <- W.encodeBool (ros2Aimdk_msgsSrvGetMute_Response_is_mute value)
  W.bounded 153 [b0, b1]
readRos2Aimdk_msgsSrvGetMute_Response :: W.Decoder Ros2Aimdk_msgsSrvGetMute_Response
readRos2Aimdk_msgsSrvGetMute_Response = do
  a0 <- readRos2Aimdk_msgsMsgCommonResponse
  a1 <- W.boolean
  let value = Ros2Aimdk_msgsSrvGetMute_Response a0 a1
  case encodeRos2Aimdk_msgsSrvGetMute_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvGetMute_Response :: B.ByteString -> Either Word32 Ros2Aimdk_msgsSrvGetMute_Response
decodeRos2Aimdk_msgsSrvGetMute_Response = W.runDecoder 153 readRos2Aimdk_msgsSrvGetMute_Response
instance Canonical Ros2Aimdk_msgsSrvGetMute_Response where
  maximumBytes _ = 153
  encodeValue = encodeRos2Aimdk_msgsSrvGetMute_Response
  readValue = readRos2Aimdk_msgsSrvGetMute_Response
data Ros2Aimdk_msgsSrvGetVolume_Request = Ros2Aimdk_msgsSrvGetVolume_Request
  {
    -- | \@brief aimdk_msgs/srv/GetVolume_Request.request: aimdk_msgs/msg/CommonRequest.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetVolume_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetVolume_Request_request :: Ros2Aimdk_msgsMsgCommonRequest
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvGetVolume_Request :: Ros2Aimdk_msgsSrvGetVolume_Request
defaultRos2Aimdk_msgsSrvGetVolume_Request = Ros2Aimdk_msgsSrvGetVolume_Request
    (defaultRos2Aimdk_msgsMsgCommonRequest)
ros2Aimdk_msgsSrvGetVolume_RequestCodecIdentity :: String
ros2Aimdk_msgsSrvGetVolume_RequestCodecIdentity =
    "UWVMROS1_6e0d1472098c746f350535d30a3281758480e8e7c7b8ef54485310dae16dfc2b"
encodeRos2Aimdk_msgsSrvGetVolume_Request :: Ros2Aimdk_msgsSrvGetVolume_Request -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsSrvGetVolume_Request value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonRequest (ros2Aimdk_msgsSrvGetVolume_Request_request value)
  W.bounded 8 [b0]
readRos2Aimdk_msgsSrvGetVolume_Request :: W.Decoder Ros2Aimdk_msgsSrvGetVolume_Request
readRos2Aimdk_msgsSrvGetVolume_Request = do
  a0 <- readRos2Aimdk_msgsMsgCommonRequest
  let value = Ros2Aimdk_msgsSrvGetVolume_Request a0
  case encodeRos2Aimdk_msgsSrvGetVolume_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvGetVolume_Request :: B.ByteString -> Either Word32 Ros2Aimdk_msgsSrvGetVolume_Request
decodeRos2Aimdk_msgsSrvGetVolume_Request = W.runDecoder 8 readRos2Aimdk_msgsSrvGetVolume_Request
instance Canonical Ros2Aimdk_msgsSrvGetVolume_Request where
  maximumBytes _ = 8
  encodeValue = encodeRos2Aimdk_msgsSrvGetVolume_Request
  readValue = readRos2Aimdk_msgsSrvGetVolume_Request
data Ros2Aimdk_msgsSrvGetVolume_Response = Ros2Aimdk_msgsSrvGetVolume_Response
  {
    -- | \@brief aimdk_msgs/srv/GetVolume_Response.reponse: aimdk_msgs/msg/CommonResponse.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetVolume_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetVolume_Response_reponse :: Ros2Aimdk_msgsMsgCommonResponse
  ,
    -- | \@brief aimdk_msgs/srv/GetVolume_Response.audio_volume: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvGetVolume_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvGetVolume_Response_audio_volume :: Word32
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvGetVolume_Response :: Ros2Aimdk_msgsSrvGetVolume_Response
defaultRos2Aimdk_msgsSrvGetVolume_Response = Ros2Aimdk_msgsSrvGetVolume_Response
    (defaultRos2Aimdk_msgsMsgCommonResponse) (0)
ros2Aimdk_msgsSrvGetVolume_ResponseCodecIdentity :: String
ros2Aimdk_msgsSrvGetVolume_ResponseCodecIdentity =
    "UWVMROS1_24a04a12d640be4e17e24d372b0bbb2f65a89bd56e4ee1448e252db2c833c266"
encodeRos2Aimdk_msgsSrvGetVolume_Response :: Ros2Aimdk_msgsSrvGetVolume_Response -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsSrvGetVolume_Response value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonResponse (ros2Aimdk_msgsSrvGetVolume_Response_reponse value)
  b1 <- W.encodeUnsigned 4 (fromIntegral (ros2Aimdk_msgsSrvGetVolume_Response_audio_volume value))
  W.bounded 156 [b0, b1]
readRos2Aimdk_msgsSrvGetVolume_Response :: W.Decoder Ros2Aimdk_msgsSrvGetVolume_Response
readRos2Aimdk_msgsSrvGetVolume_Response = do
  a0 <- readRos2Aimdk_msgsMsgCommonResponse
  a1 <- fromIntegral <$> W.unsigned 4
  let value = Ros2Aimdk_msgsSrvGetVolume_Response a0 a1
  case encodeRos2Aimdk_msgsSrvGetVolume_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvGetVolume_Response :: B.ByteString -> Either Word32 Ros2Aimdk_msgsSrvGetVolume_Response
decodeRos2Aimdk_msgsSrvGetVolume_Response = W.runDecoder 156 readRos2Aimdk_msgsSrvGetVolume_Response
instance Canonical Ros2Aimdk_msgsSrvGetVolume_Response where
  maximumBytes _ = 156
  encodeValue = encodeRos2Aimdk_msgsSrvGetVolume_Response
  readValue = readRos2Aimdk_msgsSrvGetVolume_Response
data Ros2Aimdk_msgsSrvLedStripCommand_Request = Ros2Aimdk_msgsSrvLedStripCommand_Request
  {
    -- | \@brief aimdk_msgs/srv/LedStripCommand_Request.request: aimdk_msgs/msg/CommonRequest.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvLedStripCommand_Request_request :: Ros2Aimdk_msgsMsgCommonRequest
  ,
    -- | \@brief aimdk_msgs/srv/LedStripCommand_Request.led_strip_mode: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvLedStripCommand_Request_led_strip_mode :: Word8
  ,
    -- | \@brief aimdk_msgs/srv/LedStripCommand_Request.r: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvLedStripCommand_Request_r :: Word8
  ,
    -- | \@brief aimdk_msgs/srv/LedStripCommand_Request.g: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvLedStripCommand_Request_g :: Word8
  ,
    -- | \@brief aimdk_msgs/srv/LedStripCommand_Request.b: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvLedStripCommand_Request_b :: Word8
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvLedStripCommand_Request :: Ros2Aimdk_msgsSrvLedStripCommand_Request
defaultRos2Aimdk_msgsSrvLedStripCommand_Request = Ros2Aimdk_msgsSrvLedStripCommand_Request
    (defaultRos2Aimdk_msgsMsgCommonRequest) (0) (0) (0) (0)
ros2Aimdk_msgsSrvLedStripCommand_RequestCodecIdentity :: String
ros2Aimdk_msgsSrvLedStripCommand_RequestCodecIdentity =
    "UWVMROS1_bd3167edba193b3ed932c8f6e841d229cf6e6574b2ce0c157d5f8bfc4cbc80a6"
ros2Aimdk_msgsSrvLedStripCommand_Request_LED_STRIP_MODE_CONSTANT :: Word8
ros2Aimdk_msgsSrvLedStripCommand_Request_LED_STRIP_MODE_CONSTANT = 0
ros2Aimdk_msgsSrvLedStripCommand_Request_LED_STRIP_MODE_BREATH :: Word8
ros2Aimdk_msgsSrvLedStripCommand_Request_LED_STRIP_MODE_BREATH = 1
ros2Aimdk_msgsSrvLedStripCommand_Request_LED_STRIP_MODE_FLASH :: Word8
ros2Aimdk_msgsSrvLedStripCommand_Request_LED_STRIP_MODE_FLASH = 2
ros2Aimdk_msgsSrvLedStripCommand_Request_LED_STRIP_MODE_FLOW :: Word8
ros2Aimdk_msgsSrvLedStripCommand_Request_LED_STRIP_MODE_FLOW = 3
ros2Aimdk_msgsSrvLedStripCommand_Request_LED_STRIP_MODE_MAX :: Word8
ros2Aimdk_msgsSrvLedStripCommand_Request_LED_STRIP_MODE_MAX = 4
encodeRos2Aimdk_msgsSrvLedStripCommand_Request :: Ros2Aimdk_msgsSrvLedStripCommand_Request -> Either Word32
    B.ByteString
encodeRos2Aimdk_msgsSrvLedStripCommand_Request value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonRequest (ros2Aimdk_msgsSrvLedStripCommand_Request_request value)
  b1 <- W.encodeUnsigned 1 (fromIntegral (ros2Aimdk_msgsSrvLedStripCommand_Request_led_strip_mode value))
  b2 <- W.encodeUnsigned 1 (fromIntegral (ros2Aimdk_msgsSrvLedStripCommand_Request_r value))
  b3 <- W.encodeUnsigned 1 (fromIntegral (ros2Aimdk_msgsSrvLedStripCommand_Request_g value))
  b4 <- W.encodeUnsigned 1 (fromIntegral (ros2Aimdk_msgsSrvLedStripCommand_Request_b value))
  W.bounded 12 [b0, b1, b2, b3, b4]
readRos2Aimdk_msgsSrvLedStripCommand_Request :: W.Decoder Ros2Aimdk_msgsSrvLedStripCommand_Request
readRos2Aimdk_msgsSrvLedStripCommand_Request = do
  a0 <- readRos2Aimdk_msgsMsgCommonRequest
  a1 <- fromIntegral <$> W.unsigned 1
  a2 <- fromIntegral <$> W.unsigned 1
  a3 <- fromIntegral <$> W.unsigned 1
  a4 <- fromIntegral <$> W.unsigned 1
  let value = Ros2Aimdk_msgsSrvLedStripCommand_Request a0 a1 a2 a3 a4
  case encodeRos2Aimdk_msgsSrvLedStripCommand_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvLedStripCommand_Request :: B.ByteString -> Either Word32
    Ros2Aimdk_msgsSrvLedStripCommand_Request
decodeRos2Aimdk_msgsSrvLedStripCommand_Request = W.runDecoder 12 readRos2Aimdk_msgsSrvLedStripCommand_Request
instance Canonical Ros2Aimdk_msgsSrvLedStripCommand_Request where
  maximumBytes _ = 12
  encodeValue = encodeRos2Aimdk_msgsSrvLedStripCommand_Request
  readValue = readRos2Aimdk_msgsSrvLedStripCommand_Request
data Ros2Aimdk_msgsSrvLedStripCommand_Response = Ros2Aimdk_msgsSrvLedStripCommand_Response
  {
    -- | \@brief aimdk_msgs/srv/LedStripCommand_Response.header: aimdk_msgs/msg/ResponseHeader.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvLedStripCommand_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvLedStripCommand_Response_header :: Ros2Aimdk_msgsMsgResponseHeader
  ,
    -- | \@brief aimdk_msgs/srv/LedStripCommand_Response.status_code: uint16.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvLedStripCommand_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvLedStripCommand_Response_status_code :: Word16
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvLedStripCommand_Response :: Ros2Aimdk_msgsSrvLedStripCommand_Response
defaultRos2Aimdk_msgsSrvLedStripCommand_Response = Ros2Aimdk_msgsSrvLedStripCommand_Response
    (defaultRos2Aimdk_msgsMsgResponseHeader) (0)
ros2Aimdk_msgsSrvLedStripCommand_ResponseCodecIdentity :: String
ros2Aimdk_msgsSrvLedStripCommand_ResponseCodecIdentity =
    "UWVMROS1_3e08fb0103545c0d4e1558eba1dd8adad52f90ef083e7e8fb336087386e3c2a9"
encodeRos2Aimdk_msgsSrvLedStripCommand_Response :: Ros2Aimdk_msgsSrvLedStripCommand_Response -> Either Word32
    B.ByteString
encodeRos2Aimdk_msgsSrvLedStripCommand_Response value = do
  b0 <- encodeRos2Aimdk_msgsMsgResponseHeader (ros2Aimdk_msgsSrvLedStripCommand_Response_header value)
  b1 <- W.encodeUnsigned 2 (fromIntegral (ros2Aimdk_msgsSrvLedStripCommand_Response_status_code value))
  W.bounded 18 [b0, b1]
readRos2Aimdk_msgsSrvLedStripCommand_Response :: W.Decoder Ros2Aimdk_msgsSrvLedStripCommand_Response
readRos2Aimdk_msgsSrvLedStripCommand_Response = do
  a0 <- readRos2Aimdk_msgsMsgResponseHeader
  a1 <- fromIntegral <$> W.unsigned 2
  let value = Ros2Aimdk_msgsSrvLedStripCommand_Response a0 a1
  case encodeRos2Aimdk_msgsSrvLedStripCommand_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvLedStripCommand_Response :: B.ByteString -> Either Word32
    Ros2Aimdk_msgsSrvLedStripCommand_Response
decodeRos2Aimdk_msgsSrvLedStripCommand_Response = W.runDecoder 18 readRos2Aimdk_msgsSrvLedStripCommand_Response
instance Canonical Ros2Aimdk_msgsSrvLedStripCommand_Response where
  maximumBytes _ = 18
  encodeValue = encodeRos2Aimdk_msgsSrvLedStripCommand_Response
  readValue = readRos2Aimdk_msgsSrvLedStripCommand_Response
data Ros2Aimdk_msgsSrvPlayEmoji_Request = Ros2Aimdk_msgsSrvPlayEmoji_Request
  {
    -- | \@brief aimdk_msgs/srv/PlayEmoji_Request.header: aimdk_msgs/msg/CommonRequest.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvPlayEmoji_Request_header :: Ros2Aimdk_msgsMsgCommonRequest
  ,
    -- | \@brief aimdk_msgs/srv/PlayEmoji_Request.emotion_id: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvPlayEmoji_Request_emotion_id :: Word8
  ,
    -- | \@brief aimdk_msgs/srv/PlayEmoji_Request.mode: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvPlayEmoji_Request_mode :: Word8
  ,
    -- | \@brief aimdk_msgs/srv/PlayEmoji_Request.priority: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvPlayEmoji_Request_priority :: Int32
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvPlayEmoji_Request :: Ros2Aimdk_msgsSrvPlayEmoji_Request
defaultRos2Aimdk_msgsSrvPlayEmoji_Request = Ros2Aimdk_msgsSrvPlayEmoji_Request
    (defaultRos2Aimdk_msgsMsgCommonRequest) (0) (0) (0)
ros2Aimdk_msgsSrvPlayEmoji_RequestCodecIdentity :: String
ros2Aimdk_msgsSrvPlayEmoji_RequestCodecIdentity =
    "UWVMROS1_ba31bdc232369e170ee9fb00ac8e51639d81a657de8f6e61f9acfccc2a083d43"
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_UNKNOWN :: Word8
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_UNKNOWN = 0
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_BLINK :: Word8
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_BLINK = 1
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_CALM_1 :: Word8
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_CALM_1 = 10
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_CALM_2 :: Word8
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_CALM_2 = 11
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_GAME :: Word8
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_GAME = 20
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_CUTE_1 :: Word8
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_CUTE_1 = 30
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_CUTE_2 :: Word8
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_CUTE_2 = 31
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_CUTE_3 :: Word8
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_CUTE_3 = 32
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_CUTE_4 :: Word8
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_CUTE_4 = 33
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_CLOSE :: Word8
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_CLOSE = 40
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_OPEN :: Word8
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_OPEN = 50
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_BORING_1 :: Word8
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_BORING_1 = 60
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_ABNORMAL :: Word8
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_ABNORMAL = 70
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_SLEEPY :: Word8
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_SLEEPY = 80
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_HAPPY :: Word8
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_HAPPY = 90
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_EXTREMEHAPPY_1 :: Word8
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_EXTREMEHAPPY_1 = 100
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_EXTREMEHAPPY_2 :: Word8
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_EXTREMEHAPPY_2 = 101
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_SAD :: Word8
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_SAD = 110
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_SYMPATHY :: Word8
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_SYMPATHY = 120
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_CONFUSE :: Word8
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_CONFUSE = 130
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_SHOCK :: Word8
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_SHOCK = 140
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_ACTCUTE :: Word8
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_ACTCUTE = 150
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_SERIOUS :: Word8
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_SERIOUS = 160
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_THINKING :: Word8
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_THINKING = 170
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_ANGRY :: Word8
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_ANGRY = 180
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_EXTREMEANGRY :: Word8
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_EXTREMEANGRY = 190
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_ADORE :: Word8
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_ADORE = 200
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_EXTREMEADORE :: Word8
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_EXTREMEADORE = 210
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_CHARGE :: Word8
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_CHARGE = 220
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_MODE_ONCE :: Word8
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_MODE_ONCE = 1
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_MODE_LOOP :: Word8
ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_MODE_LOOP = 2
encodeRos2Aimdk_msgsSrvPlayEmoji_Request :: Ros2Aimdk_msgsSrvPlayEmoji_Request -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsSrvPlayEmoji_Request value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonRequest (ros2Aimdk_msgsSrvPlayEmoji_Request_header value)
  b1 <- W.encodeUnsigned 1 (fromIntegral (ros2Aimdk_msgsSrvPlayEmoji_Request_emotion_id value))
  b2 <- W.encodeUnsigned 1 (fromIntegral (ros2Aimdk_msgsSrvPlayEmoji_Request_mode value))
  b3 <- W.encodeSigned 4 (fromIntegral (ros2Aimdk_msgsSrvPlayEmoji_Request_priority value))
  W.bounded 14 [b0, b1, b2, b3]
readRos2Aimdk_msgsSrvPlayEmoji_Request :: W.Decoder Ros2Aimdk_msgsSrvPlayEmoji_Request
readRos2Aimdk_msgsSrvPlayEmoji_Request = do
  a0 <- readRos2Aimdk_msgsMsgCommonRequest
  a1 <- fromIntegral <$> W.unsigned 1
  a2 <- fromIntegral <$> W.unsigned 1
  a3 <- fromIntegral <$> W.signed 4
  let value = Ros2Aimdk_msgsSrvPlayEmoji_Request a0 a1 a2 a3
  case encodeRos2Aimdk_msgsSrvPlayEmoji_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvPlayEmoji_Request :: B.ByteString -> Either Word32 Ros2Aimdk_msgsSrvPlayEmoji_Request
decodeRos2Aimdk_msgsSrvPlayEmoji_Request = W.runDecoder 14 readRos2Aimdk_msgsSrvPlayEmoji_Request
instance Canonical Ros2Aimdk_msgsSrvPlayEmoji_Request where
  maximumBytes _ = 14
  encodeValue = encodeRos2Aimdk_msgsSrvPlayEmoji_Request
  readValue = readRos2Aimdk_msgsSrvPlayEmoji_Request
data Ros2Aimdk_msgsSrvPlayEmoji_Response = Ros2Aimdk_msgsSrvPlayEmoji_Response
  {
    -- | \@brief aimdk_msgs/srv/PlayEmoji_Response.header: aimdk_msgs/msg/CommonResponse.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvPlayEmoji_Response_header :: Ros2Aimdk_msgsMsgCommonResponse
  ,
    -- | \@brief aimdk_msgs/srv/PlayEmoji_Response.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvPlayEmoji_Response_success :: Bool
  ,
    -- | \@brief aimdk_msgs/srv/PlayEmoji_Response.message: string; each string is 0..128 bytes; strict UTF-8 with
    -- no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvPlayEmoji_Response_message :: T.Text
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvPlayEmoji_Response :: Ros2Aimdk_msgsSrvPlayEmoji_Response
defaultRos2Aimdk_msgsSrvPlayEmoji_Response = Ros2Aimdk_msgsSrvPlayEmoji_Response
    (defaultRos2Aimdk_msgsMsgCommonResponse) (False) (T.empty)
ros2Aimdk_msgsSrvPlayEmoji_ResponseCodecIdentity :: String
ros2Aimdk_msgsSrvPlayEmoji_ResponseCodecIdentity =
    "UWVMROS1_5e5ba0082cf9bf5d9b9c7eae034efd76bd44503306bb4994e06862a802cfb6b9"
encodeRos2Aimdk_msgsSrvPlayEmoji_Response :: Ros2Aimdk_msgsSrvPlayEmoji_Response -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsSrvPlayEmoji_Response value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonResponse (ros2Aimdk_msgsSrvPlayEmoji_Response_header value)
  b1 <- W.encodeBool (ros2Aimdk_msgsSrvPlayEmoji_Response_success value)
  b2 <- W.encodeText 128 True (ros2Aimdk_msgsSrvPlayEmoji_Response_message value)
  W.bounded 285 [b0, b1, b2]
readRos2Aimdk_msgsSrvPlayEmoji_Response :: W.Decoder Ros2Aimdk_msgsSrvPlayEmoji_Response
readRos2Aimdk_msgsSrvPlayEmoji_Response = do
  a0 <- readRos2Aimdk_msgsMsgCommonResponse
  a1 <- W.boolean
  a2 <- W.text 128 True
  let value = Ros2Aimdk_msgsSrvPlayEmoji_Response a0 a1 a2
  case encodeRos2Aimdk_msgsSrvPlayEmoji_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvPlayEmoji_Response :: B.ByteString -> Either Word32 Ros2Aimdk_msgsSrvPlayEmoji_Response
decodeRos2Aimdk_msgsSrvPlayEmoji_Response = W.runDecoder 285 readRos2Aimdk_msgsSrvPlayEmoji_Response
instance Canonical Ros2Aimdk_msgsSrvPlayEmoji_Response where
  maximumBytes _ = 285
  encodeValue = encodeRos2Aimdk_msgsSrvPlayEmoji_Response
  readValue = readRos2Aimdk_msgsSrvPlayEmoji_Response
data Ros2Aimdk_msgsSrvPlayMediaFile_Request = Ros2Aimdk_msgsSrvPlayMediaFile_Request
  {
    -- | \@brief aimdk_msgs/srv/PlayMediaFile_Request.header: aimdk_msgs/msg/CommonRequest.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvPlayMediaFile_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvPlayMediaFile_Request_header :: Ros2Aimdk_msgsMsgCommonRequest
  ,
    -- | \@brief aimdk_msgs/srv/PlayMediaFile_Request.media_file_req: aimdk_msgs/msg/PlayMediaFileRequest.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvPlayMediaFile_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvPlayMediaFile_Request_media_file_req :: Ros2Aimdk_msgsMsgPlayMediaFileRequest
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvPlayMediaFile_Request :: Ros2Aimdk_msgsSrvPlayMediaFile_Request
defaultRos2Aimdk_msgsSrvPlayMediaFile_Request = Ros2Aimdk_msgsSrvPlayMediaFile_Request
    (defaultRos2Aimdk_msgsMsgCommonRequest) (defaultRos2Aimdk_msgsMsgPlayMediaFileRequest)
ros2Aimdk_msgsSrvPlayMediaFile_RequestCodecIdentity :: String
ros2Aimdk_msgsSrvPlayMediaFile_RequestCodecIdentity =
    "UWVMROS1_546706b9797f99c98a014f9849171aef262775e8ab702cfe6517d92f5047247c"
encodeRos2Aimdk_msgsSrvPlayMediaFile_Request :: Ros2Aimdk_msgsSrvPlayMediaFile_Request -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsSrvPlayMediaFile_Request value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonRequest (ros2Aimdk_msgsSrvPlayMediaFile_Request_header value)
  b1 <- encodeRos2Aimdk_msgsMsgPlayMediaFileRequest (ros2Aimdk_msgsSrvPlayMediaFile_Request_media_file_req value)
  W.bounded 414 [b0, b1]
readRos2Aimdk_msgsSrvPlayMediaFile_Request :: W.Decoder Ros2Aimdk_msgsSrvPlayMediaFile_Request
readRos2Aimdk_msgsSrvPlayMediaFile_Request = do
  a0 <- readRos2Aimdk_msgsMsgCommonRequest
  a1 <- readRos2Aimdk_msgsMsgPlayMediaFileRequest
  let value = Ros2Aimdk_msgsSrvPlayMediaFile_Request a0 a1
  case encodeRos2Aimdk_msgsSrvPlayMediaFile_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvPlayMediaFile_Request :: B.ByteString -> Either Word32 Ros2Aimdk_msgsSrvPlayMediaFile_Request
decodeRos2Aimdk_msgsSrvPlayMediaFile_Request = W.runDecoder 414 readRos2Aimdk_msgsSrvPlayMediaFile_Request
instance Canonical Ros2Aimdk_msgsSrvPlayMediaFile_Request where
  maximumBytes _ = 414
  encodeValue = encodeRos2Aimdk_msgsSrvPlayMediaFile_Request
  readValue = readRos2Aimdk_msgsSrvPlayMediaFile_Request
data Ros2Aimdk_msgsSrvPlayMediaFile_Response = Ros2Aimdk_msgsSrvPlayMediaFile_Response
  {
    -- | \@brief aimdk_msgs/srv/PlayMediaFile_Response.header: aimdk_msgs/msg/CommonResponse.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvPlayMediaFile_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvPlayMediaFile_Response_header :: Ros2Aimdk_msgsMsgCommonResponse
  ,
    -- | \@brief aimdk_msgs/srv/PlayMediaFile_Response.tts_resp: aimdk_msgs/msg/PlayTtsResponse.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvPlayMediaFile_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvPlayMediaFile_Response_tts_resp :: Ros2Aimdk_msgsMsgPlayTtsResponse
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvPlayMediaFile_Response :: Ros2Aimdk_msgsSrvPlayMediaFile_Response
defaultRos2Aimdk_msgsSrvPlayMediaFile_Response = Ros2Aimdk_msgsSrvPlayMediaFile_Response
    (defaultRos2Aimdk_msgsMsgCommonResponse) (defaultRos2Aimdk_msgsMsgPlayTtsResponse)
ros2Aimdk_msgsSrvPlayMediaFile_ResponseCodecIdentity :: String
ros2Aimdk_msgsSrvPlayMediaFile_ResponseCodecIdentity =
    "UWVMROS1_124871324704ab61f208168e64d4789376b3935b34895e824996e07561795099"
encodeRos2Aimdk_msgsSrvPlayMediaFile_Response :: Ros2Aimdk_msgsSrvPlayMediaFile_Response -> Either Word32
    B.ByteString
encodeRos2Aimdk_msgsSrvPlayMediaFile_Response value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonResponse (ros2Aimdk_msgsSrvPlayMediaFile_Response_header value)
  b1 <- encodeRos2Aimdk_msgsMsgPlayTtsResponse (ros2Aimdk_msgsSrvPlayMediaFile_Response_tts_resp value)
  W.bounded 690 [b0, b1]
readRos2Aimdk_msgsSrvPlayMediaFile_Response :: W.Decoder Ros2Aimdk_msgsSrvPlayMediaFile_Response
readRos2Aimdk_msgsSrvPlayMediaFile_Response = do
  a0 <- readRos2Aimdk_msgsMsgCommonResponse
  a1 <- readRos2Aimdk_msgsMsgPlayTtsResponse
  let value = Ros2Aimdk_msgsSrvPlayMediaFile_Response a0 a1
  case encodeRos2Aimdk_msgsSrvPlayMediaFile_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvPlayMediaFile_Response :: B.ByteString -> Either Word32
    Ros2Aimdk_msgsSrvPlayMediaFile_Response
decodeRos2Aimdk_msgsSrvPlayMediaFile_Response = W.runDecoder 690 readRos2Aimdk_msgsSrvPlayMediaFile_Response
instance Canonical Ros2Aimdk_msgsSrvPlayMediaFile_Response where
  maximumBytes _ = 690
  encodeValue = encodeRos2Aimdk_msgsSrvPlayMediaFile_Response
  readValue = readRos2Aimdk_msgsSrvPlayMediaFile_Response
data Ros2Aimdk_msgsSrvPlayTts_Request = Ros2Aimdk_msgsSrvPlayTts_Request
  {
    -- | \@brief aimdk_msgs/srv/PlayTts_Request.header: aimdk_msgs/msg/CommonRequest.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvPlayTts_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvPlayTts_Request_header :: Ros2Aimdk_msgsMsgCommonRequest
  ,
    -- | \@brief aimdk_msgs/srv/PlayTts_Request.tts_req: aimdk_msgs/msg/PlayTtsRequest.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvPlayTts_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvPlayTts_Request_tts_req :: Ros2Aimdk_msgsMsgPlayTtsRequest
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvPlayTts_Request :: Ros2Aimdk_msgsSrvPlayTts_Request
defaultRos2Aimdk_msgsSrvPlayTts_Request = Ros2Aimdk_msgsSrvPlayTts_Request (defaultRos2Aimdk_msgsMsgCommonRequest)
    (defaultRos2Aimdk_msgsMsgPlayTtsRequest)
ros2Aimdk_msgsSrvPlayTts_RequestCodecIdentity :: String
ros2Aimdk_msgsSrvPlayTts_RequestCodecIdentity =
    "UWVMROS1_2325b475e9d2777afe139aff54b29254f3e0ac0fd1fa499db049cf535810c6f7"
encodeRos2Aimdk_msgsSrvPlayTts_Request :: Ros2Aimdk_msgsSrvPlayTts_Request -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsSrvPlayTts_Request value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonRequest (ros2Aimdk_msgsSrvPlayTts_Request_header value)
  b1 <- encodeRos2Aimdk_msgsMsgPlayTtsRequest (ros2Aimdk_msgsSrvPlayTts_Request_tts_req value)
  W.bounded 410 [b0, b1]
readRos2Aimdk_msgsSrvPlayTts_Request :: W.Decoder Ros2Aimdk_msgsSrvPlayTts_Request
readRos2Aimdk_msgsSrvPlayTts_Request = do
  a0 <- readRos2Aimdk_msgsMsgCommonRequest
  a1 <- readRos2Aimdk_msgsMsgPlayTtsRequest
  let value = Ros2Aimdk_msgsSrvPlayTts_Request a0 a1
  case encodeRos2Aimdk_msgsSrvPlayTts_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvPlayTts_Request :: B.ByteString -> Either Word32 Ros2Aimdk_msgsSrvPlayTts_Request
decodeRos2Aimdk_msgsSrvPlayTts_Request = W.runDecoder 410 readRos2Aimdk_msgsSrvPlayTts_Request
instance Canonical Ros2Aimdk_msgsSrvPlayTts_Request where
  maximumBytes _ = 410
  encodeValue = encodeRos2Aimdk_msgsSrvPlayTts_Request
  readValue = readRos2Aimdk_msgsSrvPlayTts_Request
data Ros2Aimdk_msgsSrvPlayTts_Response = Ros2Aimdk_msgsSrvPlayTts_Response
  {
    -- | \@brief aimdk_msgs/srv/PlayTts_Response.header: aimdk_msgs/msg/CommonResponse.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvPlayTts_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvPlayTts_Response_header :: Ros2Aimdk_msgsMsgCommonResponse
  ,
    -- | \@brief aimdk_msgs/srv/PlayTts_Response.tts_resp: aimdk_msgs/msg/PlayTtsResponse.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvPlayTts_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvPlayTts_Response_tts_resp :: Ros2Aimdk_msgsMsgPlayTtsResponse
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvPlayTts_Response :: Ros2Aimdk_msgsSrvPlayTts_Response
defaultRos2Aimdk_msgsSrvPlayTts_Response = Ros2Aimdk_msgsSrvPlayTts_Response
    (defaultRos2Aimdk_msgsMsgCommonResponse) (defaultRos2Aimdk_msgsMsgPlayTtsResponse)
ros2Aimdk_msgsSrvPlayTts_ResponseCodecIdentity :: String
ros2Aimdk_msgsSrvPlayTts_ResponseCodecIdentity =
    "UWVMROS1_a0587cd9d9294f30dc27c095bfc1acdf54d98b47cf4ac8ddd77b6b75530c290a"
encodeRos2Aimdk_msgsSrvPlayTts_Response :: Ros2Aimdk_msgsSrvPlayTts_Response -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsSrvPlayTts_Response value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonResponse (ros2Aimdk_msgsSrvPlayTts_Response_header value)
  b1 <- encodeRos2Aimdk_msgsMsgPlayTtsResponse (ros2Aimdk_msgsSrvPlayTts_Response_tts_resp value)
  W.bounded 690 [b0, b1]
readRos2Aimdk_msgsSrvPlayTts_Response :: W.Decoder Ros2Aimdk_msgsSrvPlayTts_Response
readRos2Aimdk_msgsSrvPlayTts_Response = do
  a0 <- readRos2Aimdk_msgsMsgCommonResponse
  a1 <- readRos2Aimdk_msgsMsgPlayTtsResponse
  let value = Ros2Aimdk_msgsSrvPlayTts_Response a0 a1
  case encodeRos2Aimdk_msgsSrvPlayTts_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvPlayTts_Response :: B.ByteString -> Either Word32 Ros2Aimdk_msgsSrvPlayTts_Response
decodeRos2Aimdk_msgsSrvPlayTts_Response = W.runDecoder 690 readRos2Aimdk_msgsSrvPlayTts_Response
instance Canonical Ros2Aimdk_msgsSrvPlayTts_Response where
  maximumBytes _ = 690
  encodeValue = encodeRos2Aimdk_msgsSrvPlayTts_Response
  readValue = readRos2Aimdk_msgsSrvPlayTts_Response
data Ros2Aimdk_msgsSrvPlayVideo_Request = Ros2Aimdk_msgsSrvPlayVideo_Request
  {
    -- | \@brief aimdk_msgs/srv/PlayVideo_Request.header: aimdk_msgs/msg/CommonRequest.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvPlayVideo_Request_header :: Ros2Aimdk_msgsMsgCommonRequest
  ,
    -- | \@brief aimdk_msgs/srv/PlayVideo_Request.video_path: string; each string is 0..128 bytes; strict UTF-8 with
    -- no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvPlayVideo_Request_video_path :: T.Text
  ,
    -- | \@brief aimdk_msgs/srv/PlayVideo_Request.mode: uint8.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvPlayVideo_Request_mode :: Word8
  ,
    -- | \@brief aimdk_msgs/srv/PlayVideo_Request.priority: int32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvPlayVideo_Request_priority :: Int32
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvPlayVideo_Request :: Ros2Aimdk_msgsSrvPlayVideo_Request
defaultRos2Aimdk_msgsSrvPlayVideo_Request = Ros2Aimdk_msgsSrvPlayVideo_Request
    (defaultRos2Aimdk_msgsMsgCommonRequest) (T.empty) (0) (0)
ros2Aimdk_msgsSrvPlayVideo_RequestCodecIdentity :: String
ros2Aimdk_msgsSrvPlayVideo_RequestCodecIdentity =
    "UWVMROS1_a42348160bfed67c90f9ddc96beaca7b37e6099ba67c8c025d6ac0f95e6bc878"
ros2Aimdk_msgsSrvPlayVideo_Request_EMOTION_MODE_ONCE :: Word8
ros2Aimdk_msgsSrvPlayVideo_Request_EMOTION_MODE_ONCE = 1
ros2Aimdk_msgsSrvPlayVideo_Request_EMOTION_MODE_LOOP :: Word8
ros2Aimdk_msgsSrvPlayVideo_Request_EMOTION_MODE_LOOP = 2
encodeRos2Aimdk_msgsSrvPlayVideo_Request :: Ros2Aimdk_msgsSrvPlayVideo_Request -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsSrvPlayVideo_Request value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonRequest (ros2Aimdk_msgsSrvPlayVideo_Request_header value)
  b1 <- W.encodeText 128 True (ros2Aimdk_msgsSrvPlayVideo_Request_video_path value)
  b2 <- W.encodeUnsigned 1 (fromIntegral (ros2Aimdk_msgsSrvPlayVideo_Request_mode value))
  b3 <- W.encodeSigned 4 (fromIntegral (ros2Aimdk_msgsSrvPlayVideo_Request_priority value))
  W.bounded 145 [b0, b1, b2, b3]
readRos2Aimdk_msgsSrvPlayVideo_Request :: W.Decoder Ros2Aimdk_msgsSrvPlayVideo_Request
readRos2Aimdk_msgsSrvPlayVideo_Request = do
  a0 <- readRos2Aimdk_msgsMsgCommonRequest
  a1 <- W.text 128 True
  a2 <- fromIntegral <$> W.unsigned 1
  a3 <- fromIntegral <$> W.signed 4
  let value = Ros2Aimdk_msgsSrvPlayVideo_Request a0 a1 a2 a3
  case encodeRos2Aimdk_msgsSrvPlayVideo_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvPlayVideo_Request :: B.ByteString -> Either Word32 Ros2Aimdk_msgsSrvPlayVideo_Request
decodeRos2Aimdk_msgsSrvPlayVideo_Request = W.runDecoder 145 readRos2Aimdk_msgsSrvPlayVideo_Request
instance Canonical Ros2Aimdk_msgsSrvPlayVideo_Request where
  maximumBytes _ = 145
  encodeValue = encodeRos2Aimdk_msgsSrvPlayVideo_Request
  readValue = readRos2Aimdk_msgsSrvPlayVideo_Request
data Ros2Aimdk_msgsSrvPlayVideo_Response = Ros2Aimdk_msgsSrvPlayVideo_Response
  {
    -- | \@brief aimdk_msgs/srv/PlayVideo_Response.header: aimdk_msgs/msg/CommonResponse.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvPlayVideo_Response_header :: Ros2Aimdk_msgsMsgCommonResponse
  ,
    -- | \@brief aimdk_msgs/srv/PlayVideo_Response.success: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvPlayVideo_Response_success :: Bool
  ,
    -- | \@brief aimdk_msgs/srv/PlayVideo_Response.message: string; each string is 0..128 bytes; strict UTF-8 with
    -- no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvPlayVideo_Response_message :: T.Text
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvPlayVideo_Response :: Ros2Aimdk_msgsSrvPlayVideo_Response
defaultRos2Aimdk_msgsSrvPlayVideo_Response = Ros2Aimdk_msgsSrvPlayVideo_Response
    (defaultRos2Aimdk_msgsMsgCommonResponse) (False) (T.empty)
ros2Aimdk_msgsSrvPlayVideo_ResponseCodecIdentity :: String
ros2Aimdk_msgsSrvPlayVideo_ResponseCodecIdentity =
    "UWVMROS1_f714873f193ca3ee0d02c822dbc3262033a2fe7913748ba177136a24d5b7f627"
encodeRos2Aimdk_msgsSrvPlayVideo_Response :: Ros2Aimdk_msgsSrvPlayVideo_Response -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsSrvPlayVideo_Response value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonResponse (ros2Aimdk_msgsSrvPlayVideo_Response_header value)
  b1 <- W.encodeBool (ros2Aimdk_msgsSrvPlayVideo_Response_success value)
  b2 <- W.encodeText 128 True (ros2Aimdk_msgsSrvPlayVideo_Response_message value)
  W.bounded 285 [b0, b1, b2]
readRos2Aimdk_msgsSrvPlayVideo_Response :: W.Decoder Ros2Aimdk_msgsSrvPlayVideo_Response
readRos2Aimdk_msgsSrvPlayVideo_Response = do
  a0 <- readRos2Aimdk_msgsMsgCommonResponse
  a1 <- W.boolean
  a2 <- W.text 128 True
  let value = Ros2Aimdk_msgsSrvPlayVideo_Response a0 a1 a2
  case encodeRos2Aimdk_msgsSrvPlayVideo_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvPlayVideo_Response :: B.ByteString -> Either Word32 Ros2Aimdk_msgsSrvPlayVideo_Response
decodeRos2Aimdk_msgsSrvPlayVideo_Response = W.runDecoder 285 readRos2Aimdk_msgsSrvPlayVideo_Response
instance Canonical Ros2Aimdk_msgsSrvPlayVideo_Response where
  maximumBytes _ = 285
  encodeValue = encodeRos2Aimdk_msgsSrvPlayVideo_Response
  readValue = readRos2Aimdk_msgsSrvPlayVideo_Response
data Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request = Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request
  {
    -- | \@brief aimdk_msgs/srv/SetAgentPropertiesRequest_Request.header: aimdk_msgs/msg/CommonRequest.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request_header :: Ros2Aimdk_msgsMsgCommonRequest
  ,
    -- | \@brief aimdk_msgs/srv/SetAgentPropertiesRequest_Request.contents: aimdk_msgs/msg/AgentProperties.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request_contents :: Ros2Aimdk_msgsMsgAgentProperties
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request :: Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request
defaultRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request = Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request
    (defaultRos2Aimdk_msgsMsgCommonRequest) (defaultRos2Aimdk_msgsMsgAgentProperties)
ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestCodecIdentity :: String
ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestCodecIdentity =
    "UWVMROS1_965af85f35239b728d7b2ea3c8e995a7cd54d3254bc1e89d3eeb36612ada5dec"
encodeRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request :: Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request ->
    Either Word32 B.ByteString
encodeRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonRequest (ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request_header value)
  b1 <- encodeRos2Aimdk_msgsMsgAgentProperties (ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request_contents value)
  W.bounded 544 [b0, b1]
readRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request :: W.Decoder
    Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request
readRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request = do
  a0 <- readRos2Aimdk_msgsMsgCommonRequest
  a1 <- readRos2Aimdk_msgsMsgAgentProperties
  let value = Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request a0 a1
  case encodeRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request :: B.ByteString -> Either Word32
    Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request
decodeRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request = W.runDecoder 544
    readRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request
instance Canonical Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request where
  maximumBytes _ = 544
  encodeValue = encodeRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request
  readValue = readRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request
data Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response = Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response
  {
    -- | \@brief aimdk_msgs/srv/SetAgentPropertiesRequest_Response.header: aimdk_msgs/msg/CommonResponse.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response_header :: Ros2Aimdk_msgsMsgCommonResponse
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response :: Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response
defaultRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response = Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response
    (defaultRos2Aimdk_msgsMsgCommonResponse)
ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseCodecIdentity :: String
ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseCodecIdentity =
    "UWVMROS1_193eace6181c5da860dd9fa0d274415bdcb2246f7054acece8ae925414b0a81b"
encodeRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response :: Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response ->
    Either Word32 B.ByteString
encodeRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonResponse (ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response_header value)
  W.bounded 152 [b0]
readRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response :: W.Decoder
    Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response
readRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response = do
  a0 <- readRos2Aimdk_msgsMsgCommonResponse
  let value = Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response a0
  case encodeRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response :: B.ByteString -> Either Word32
    Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response
decodeRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response = W.runDecoder 152
    readRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response
instance Canonical Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response where
  maximumBytes _ = 152
  encodeValue = encodeRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response
  readValue = readRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response
data Ros2Aimdk_msgsSrvSetMcAction_Request = Ros2Aimdk_msgsSrvSetMcAction_Request
  {
    -- | \@brief aimdk_msgs/srv/SetMcAction_Request.header: aimdk_msgs/msg/RequestHeader.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetMcAction_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetMcAction_Request_header :: Ros2Aimdk_msgsMsgRequestHeader
  ,
    -- | \@brief aimdk_msgs/srv/SetMcAction_Request.command: aimdk_msgs/msg/McActionCommand.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetMcAction_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetMcAction_Request_command :: Ros2Aimdk_msgsMsgMcActionCommand
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvSetMcAction_Request :: Ros2Aimdk_msgsSrvSetMcAction_Request
defaultRos2Aimdk_msgsSrvSetMcAction_Request = Ros2Aimdk_msgsSrvSetMcAction_Request
    (defaultRos2Aimdk_msgsMsgRequestHeader) (defaultRos2Aimdk_msgsMsgMcActionCommand)
ros2Aimdk_msgsSrvSetMcAction_RequestCodecIdentity :: String
ros2Aimdk_msgsSrvSetMcAction_RequestCodecIdentity =
    "UWVMROS1_6ad0e14f9aefc0ae34c383eec4498c556c97757f03eb315b74977327691489d5"
encodeRos2Aimdk_msgsSrvSetMcAction_Request :: Ros2Aimdk_msgsSrvSetMcAction_Request -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsSrvSetMcAction_Request value = do
  b0 <- encodeRos2Aimdk_msgsMsgRequestHeader (ros2Aimdk_msgsSrvSetMcAction_Request_header value)
  b1 <- encodeRos2Aimdk_msgsMsgMcActionCommand (ros2Aimdk_msgsSrvSetMcAction_Request_command value)
  W.bounded 144 [b0, b1]
readRos2Aimdk_msgsSrvSetMcAction_Request :: W.Decoder Ros2Aimdk_msgsSrvSetMcAction_Request
readRos2Aimdk_msgsSrvSetMcAction_Request = do
  a0 <- readRos2Aimdk_msgsMsgRequestHeader
  a1 <- readRos2Aimdk_msgsMsgMcActionCommand
  let value = Ros2Aimdk_msgsSrvSetMcAction_Request a0 a1
  case encodeRos2Aimdk_msgsSrvSetMcAction_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvSetMcAction_Request :: B.ByteString -> Either Word32 Ros2Aimdk_msgsSrvSetMcAction_Request
decodeRos2Aimdk_msgsSrvSetMcAction_Request = W.runDecoder 144 readRos2Aimdk_msgsSrvSetMcAction_Request
instance Canonical Ros2Aimdk_msgsSrvSetMcAction_Request where
  maximumBytes _ = 144
  encodeValue = encodeRos2Aimdk_msgsSrvSetMcAction_Request
  readValue = readRos2Aimdk_msgsSrvSetMcAction_Request
data Ros2Aimdk_msgsSrvSetMcAction_Response = Ros2Aimdk_msgsSrvSetMcAction_Response
  {
    -- | \@brief aimdk_msgs/srv/SetMcAction_Response.response: aimdk_msgs/msg/CommonResponse.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetMcAction_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetMcAction_Response_response :: Ros2Aimdk_msgsMsgCommonResponse
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvSetMcAction_Response :: Ros2Aimdk_msgsSrvSetMcAction_Response
defaultRos2Aimdk_msgsSrvSetMcAction_Response = Ros2Aimdk_msgsSrvSetMcAction_Response
    (defaultRos2Aimdk_msgsMsgCommonResponse)
ros2Aimdk_msgsSrvSetMcAction_ResponseCodecIdentity :: String
ros2Aimdk_msgsSrvSetMcAction_ResponseCodecIdentity =
    "UWVMROS1_64c336314ea7d3635494d1e3f9da9b23442653033e3ddfb0936440520141d24f"
encodeRos2Aimdk_msgsSrvSetMcAction_Response :: Ros2Aimdk_msgsSrvSetMcAction_Response -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsSrvSetMcAction_Response value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonResponse (ros2Aimdk_msgsSrvSetMcAction_Response_response value)
  W.bounded 152 [b0]
readRos2Aimdk_msgsSrvSetMcAction_Response :: W.Decoder Ros2Aimdk_msgsSrvSetMcAction_Response
readRos2Aimdk_msgsSrvSetMcAction_Response = do
  a0 <- readRos2Aimdk_msgsMsgCommonResponse
  let value = Ros2Aimdk_msgsSrvSetMcAction_Response a0
  case encodeRos2Aimdk_msgsSrvSetMcAction_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvSetMcAction_Response :: B.ByteString -> Either Word32 Ros2Aimdk_msgsSrvSetMcAction_Response
decodeRos2Aimdk_msgsSrvSetMcAction_Response = W.runDecoder 152 readRos2Aimdk_msgsSrvSetMcAction_Response
instance Canonical Ros2Aimdk_msgsSrvSetMcAction_Response where
  maximumBytes _ = 152
  encodeValue = encodeRos2Aimdk_msgsSrvSetMcAction_Response
  readValue = readRos2Aimdk_msgsSrvSetMcAction_Response
data Ros2Aimdk_msgsSrvSetMcInputSource_Request = Ros2Aimdk_msgsSrvSetMcInputSource_Request
  {
    -- | \@brief aimdk_msgs/srv/SetMcInputSource_Request.request: aimdk_msgs/msg/CommonRequest.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetMcInputSource_Request_request :: Ros2Aimdk_msgsMsgCommonRequest
  ,
    -- | \@brief aimdk_msgs/srv/SetMcInputSource_Request.action: aimdk_msgs/msg/McInputAction.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetMcInputSource_Request_action :: Ros2Aimdk_msgsMsgMcInputAction
  ,
    -- | \@brief aimdk_msgs/srv/SetMcInputSource_Request.input_source: aimdk_msgs/msg/McInputSource.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetMcInputSource_Request_input_source :: Ros2Aimdk_msgsMsgMcInputSource
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvSetMcInputSource_Request :: Ros2Aimdk_msgsSrvSetMcInputSource_Request
defaultRos2Aimdk_msgsSrvSetMcInputSource_Request = Ros2Aimdk_msgsSrvSetMcInputSource_Request
    (defaultRos2Aimdk_msgsMsgCommonRequest) (defaultRos2Aimdk_msgsMsgMcInputAction)
    (defaultRos2Aimdk_msgsMsgMcInputSource)
ros2Aimdk_msgsSrvSetMcInputSource_RequestCodecIdentity :: String
ros2Aimdk_msgsSrvSetMcInputSource_RequestCodecIdentity =
    "UWVMROS1_853ae368291aa7e14c665d3d47caad66ba626c086ad759180c31223a9785b021"
encodeRos2Aimdk_msgsSrvSetMcInputSource_Request :: Ros2Aimdk_msgsSrvSetMcInputSource_Request -> Either Word32
    B.ByteString
encodeRos2Aimdk_msgsSrvSetMcInputSource_Request value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonRequest (ros2Aimdk_msgsSrvSetMcInputSource_Request_request value)
  b1 <- encodeRos2Aimdk_msgsMsgMcInputAction (ros2Aimdk_msgsSrvSetMcInputSource_Request_action value)
  b2 <- encodeRos2Aimdk_msgsMsgMcInputSource (ros2Aimdk_msgsSrvSetMcInputSource_Request_input_source value)
  W.bounded 152 [b0, b1, b2]
readRos2Aimdk_msgsSrvSetMcInputSource_Request :: W.Decoder Ros2Aimdk_msgsSrvSetMcInputSource_Request
readRos2Aimdk_msgsSrvSetMcInputSource_Request = do
  a0 <- readRos2Aimdk_msgsMsgCommonRequest
  a1 <- readRos2Aimdk_msgsMsgMcInputAction
  a2 <- readRos2Aimdk_msgsMsgMcInputSource
  let value = Ros2Aimdk_msgsSrvSetMcInputSource_Request a0 a1 a2
  case encodeRos2Aimdk_msgsSrvSetMcInputSource_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvSetMcInputSource_Request :: B.ByteString -> Either Word32
    Ros2Aimdk_msgsSrvSetMcInputSource_Request
decodeRos2Aimdk_msgsSrvSetMcInputSource_Request = W.runDecoder 152 readRos2Aimdk_msgsSrvSetMcInputSource_Request
instance Canonical Ros2Aimdk_msgsSrvSetMcInputSource_Request where
  maximumBytes _ = 152
  encodeValue = encodeRos2Aimdk_msgsSrvSetMcInputSource_Request
  readValue = readRos2Aimdk_msgsSrvSetMcInputSource_Request
data Ros2Aimdk_msgsSrvSetMcInputSource_Response = Ros2Aimdk_msgsSrvSetMcInputSource_Response
  {
    -- | \@brief aimdk_msgs/srv/SetMcInputSource_Response.response: aimdk_msgs/msg/CommonTaskResponse.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetMcInputSource_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetMcInputSource_Response_response :: Ros2Aimdk_msgsMsgCommonTaskResponse
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvSetMcInputSource_Response :: Ros2Aimdk_msgsSrvSetMcInputSource_Response
defaultRos2Aimdk_msgsSrvSetMcInputSource_Response = Ros2Aimdk_msgsSrvSetMcInputSource_Response
    (defaultRos2Aimdk_msgsMsgCommonTaskResponse)
ros2Aimdk_msgsSrvSetMcInputSource_ResponseCodecIdentity :: String
ros2Aimdk_msgsSrvSetMcInputSource_ResponseCodecIdentity =
    "UWVMROS1_0c0764d24b86f57f3c2f1a59966a787113cf9411cf89f40d29a7708bf03650cb"
encodeRos2Aimdk_msgsSrvSetMcInputSource_Response :: Ros2Aimdk_msgsSrvSetMcInputSource_Response -> Either Word32
    B.ByteString
encodeRos2Aimdk_msgsSrvSetMcInputSource_Response value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonTaskResponse (ros2Aimdk_msgsSrvSetMcInputSource_Response_response value)
  W.bounded 28 [b0]
readRos2Aimdk_msgsSrvSetMcInputSource_Response :: W.Decoder Ros2Aimdk_msgsSrvSetMcInputSource_Response
readRos2Aimdk_msgsSrvSetMcInputSource_Response = do
  a0 <- readRos2Aimdk_msgsMsgCommonTaskResponse
  let value = Ros2Aimdk_msgsSrvSetMcInputSource_Response a0
  case encodeRos2Aimdk_msgsSrvSetMcInputSource_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvSetMcInputSource_Response :: B.ByteString -> Either Word32
    Ros2Aimdk_msgsSrvSetMcInputSource_Response
decodeRos2Aimdk_msgsSrvSetMcInputSource_Response = W.runDecoder 28 readRos2Aimdk_msgsSrvSetMcInputSource_Response
instance Canonical Ros2Aimdk_msgsSrvSetMcInputSource_Response where
  maximumBytes _ = 28
  encodeValue = encodeRos2Aimdk_msgsSrvSetMcInputSource_Response
  readValue = readRos2Aimdk_msgsSrvSetMcInputSource_Response
data Ros2Aimdk_msgsSrvSetMcPresetMotion_Request = Ros2Aimdk_msgsSrvSetMcPresetMotion_Request
  {
    -- | \@brief aimdk_msgs/srv/SetMcPresetMotion_Request.header: aimdk_msgs/msg/RequestHeader.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetMcPresetMotion_Request_header :: Ros2Aimdk_msgsMsgRequestHeader
  ,
    -- | \@brief aimdk_msgs/srv/SetMcPresetMotion_Request.area: aimdk_msgs/msg/McControlArea.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetMcPresetMotion_Request_area :: Ros2Aimdk_msgsMsgMcControlArea
  ,
    -- | \@brief aimdk_msgs/srv/SetMcPresetMotion_Request.motion: aimdk_msgs/msg/McPresetMotion.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetMcPresetMotion_Request_motion :: Ros2Aimdk_msgsMsgMcPresetMotion
  ,
    -- | \@brief aimdk_msgs/srv/SetMcPresetMotion_Request.interrupt: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetMcPresetMotion_Request_interrupt :: Bool
  ,
    -- | \@brief aimdk_msgs/srv/SetMcPresetMotion_Request.ani_path: string; each string is 0..128 bytes; strict
    -- UTF-8 with no embedded NUL.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetMcPresetMotion_Request_ani_path :: T.Text
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvSetMcPresetMotion_Request :: Ros2Aimdk_msgsSrvSetMcPresetMotion_Request
defaultRos2Aimdk_msgsSrvSetMcPresetMotion_Request = Ros2Aimdk_msgsSrvSetMcPresetMotion_Request
    (defaultRos2Aimdk_msgsMsgRequestHeader) (defaultRos2Aimdk_msgsMsgMcControlArea)
    (defaultRos2Aimdk_msgsMsgMcPresetMotion) (False) (T.empty)
ros2Aimdk_msgsSrvSetMcPresetMotion_RequestCodecIdentity :: String
ros2Aimdk_msgsSrvSetMcPresetMotion_RequestCodecIdentity =
    "UWVMROS1_f8789c1eb47184c1a1c219ac861b5551d22bdc624caf1f7022523160c6cd62ea"
encodeRos2Aimdk_msgsSrvSetMcPresetMotion_Request :: Ros2Aimdk_msgsSrvSetMcPresetMotion_Request -> Either Word32
    B.ByteString
encodeRos2Aimdk_msgsSrvSetMcPresetMotion_Request value = do
  b0 <- encodeRos2Aimdk_msgsMsgRequestHeader (ros2Aimdk_msgsSrvSetMcPresetMotion_Request_header value)
  b1 <- encodeRos2Aimdk_msgsMsgMcControlArea (ros2Aimdk_msgsSrvSetMcPresetMotion_Request_area value)
  b2 <- encodeRos2Aimdk_msgsMsgMcPresetMotion (ros2Aimdk_msgsSrvSetMcPresetMotion_Request_motion value)
  b3 <- W.encodeBool (ros2Aimdk_msgsSrvSetMcPresetMotion_Request_interrupt value)
  b4 <- W.encodeText 128 True (ros2Aimdk_msgsSrvSetMcPresetMotion_Request_ani_path value)
  W.bounded 149 [b0, b1, b2, b3, b4]
readRos2Aimdk_msgsSrvSetMcPresetMotion_Request :: W.Decoder Ros2Aimdk_msgsSrvSetMcPresetMotion_Request
readRos2Aimdk_msgsSrvSetMcPresetMotion_Request = do
  a0 <- readRos2Aimdk_msgsMsgRequestHeader
  a1 <- readRos2Aimdk_msgsMsgMcControlArea
  a2 <- readRos2Aimdk_msgsMsgMcPresetMotion
  a3 <- W.boolean
  a4 <- W.text 128 True
  let value = Ros2Aimdk_msgsSrvSetMcPresetMotion_Request a0 a1 a2 a3 a4
  case encodeRos2Aimdk_msgsSrvSetMcPresetMotion_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvSetMcPresetMotion_Request :: B.ByteString -> Either Word32
    Ros2Aimdk_msgsSrvSetMcPresetMotion_Request
decodeRos2Aimdk_msgsSrvSetMcPresetMotion_Request = W.runDecoder 149 readRos2Aimdk_msgsSrvSetMcPresetMotion_Request
instance Canonical Ros2Aimdk_msgsSrvSetMcPresetMotion_Request where
  maximumBytes _ = 149
  encodeValue = encodeRos2Aimdk_msgsSrvSetMcPresetMotion_Request
  readValue = readRos2Aimdk_msgsSrvSetMcPresetMotion_Request
data Ros2Aimdk_msgsSrvSetMcPresetMotion_Response = Ros2Aimdk_msgsSrvSetMcPresetMotion_Response
  {
    -- | \@brief aimdk_msgs/srv/SetMcPresetMotion_Response.response: aimdk_msgs/msg/CommonTaskResponse.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetMcPresetMotion_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetMcPresetMotion_Response_response :: Ros2Aimdk_msgsMsgCommonTaskResponse
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvSetMcPresetMotion_Response :: Ros2Aimdk_msgsSrvSetMcPresetMotion_Response
defaultRos2Aimdk_msgsSrvSetMcPresetMotion_Response = Ros2Aimdk_msgsSrvSetMcPresetMotion_Response
    (defaultRos2Aimdk_msgsMsgCommonTaskResponse)
ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseCodecIdentity :: String
ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseCodecIdentity =
    "UWVMROS1_9534060f44b6d36c7f0c585e7ce1f1e8b06a2561a2161a29fe6d0e4d22c77e85"
encodeRos2Aimdk_msgsSrvSetMcPresetMotion_Response :: Ros2Aimdk_msgsSrvSetMcPresetMotion_Response -> Either Word32
    B.ByteString
encodeRos2Aimdk_msgsSrvSetMcPresetMotion_Response value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonTaskResponse (ros2Aimdk_msgsSrvSetMcPresetMotion_Response_response value)
  W.bounded 28 [b0]
readRos2Aimdk_msgsSrvSetMcPresetMotion_Response :: W.Decoder Ros2Aimdk_msgsSrvSetMcPresetMotion_Response
readRos2Aimdk_msgsSrvSetMcPresetMotion_Response = do
  a0 <- readRos2Aimdk_msgsMsgCommonTaskResponse
  let value = Ros2Aimdk_msgsSrvSetMcPresetMotion_Response a0
  case encodeRos2Aimdk_msgsSrvSetMcPresetMotion_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvSetMcPresetMotion_Response :: B.ByteString -> Either Word32
    Ros2Aimdk_msgsSrvSetMcPresetMotion_Response
decodeRos2Aimdk_msgsSrvSetMcPresetMotion_Response = W.runDecoder 28 readRos2Aimdk_msgsSrvSetMcPresetMotion_Response
instance Canonical Ros2Aimdk_msgsSrvSetMcPresetMotion_Response where
  maximumBytes _ = 28
  encodeValue = encodeRos2Aimdk_msgsSrvSetMcPresetMotion_Response
  readValue = readRos2Aimdk_msgsSrvSetMcPresetMotion_Response
data Ros2Aimdk_msgsSrvSetMute_Request = Ros2Aimdk_msgsSrvSetMute_Request
  {
    -- | \@brief aimdk_msgs/srv/SetMute_Request.request: aimdk_msgs/msg/CommonRequest.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetMute_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetMute_Request_request :: Ros2Aimdk_msgsMsgCommonRequest
  ,
    -- | \@brief aimdk_msgs/srv/SetMute_Request.is_mute: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetMute_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetMute_Request_is_mute :: Bool
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvSetMute_Request :: Ros2Aimdk_msgsSrvSetMute_Request
defaultRos2Aimdk_msgsSrvSetMute_Request = Ros2Aimdk_msgsSrvSetMute_Request (defaultRos2Aimdk_msgsMsgCommonRequest)
    (False)
ros2Aimdk_msgsSrvSetMute_RequestCodecIdentity :: String
ros2Aimdk_msgsSrvSetMute_RequestCodecIdentity =
    "UWVMROS1_a37f6b638f226a9d150315baa5b11e6994422ba8f58541ac7b04df11e5c21fe3"
encodeRos2Aimdk_msgsSrvSetMute_Request :: Ros2Aimdk_msgsSrvSetMute_Request -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsSrvSetMute_Request value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonRequest (ros2Aimdk_msgsSrvSetMute_Request_request value)
  b1 <- W.encodeBool (ros2Aimdk_msgsSrvSetMute_Request_is_mute value)
  W.bounded 9 [b0, b1]
readRos2Aimdk_msgsSrvSetMute_Request :: W.Decoder Ros2Aimdk_msgsSrvSetMute_Request
readRos2Aimdk_msgsSrvSetMute_Request = do
  a0 <- readRos2Aimdk_msgsMsgCommonRequest
  a1 <- W.boolean
  let value = Ros2Aimdk_msgsSrvSetMute_Request a0 a1
  case encodeRos2Aimdk_msgsSrvSetMute_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvSetMute_Request :: B.ByteString -> Either Word32 Ros2Aimdk_msgsSrvSetMute_Request
decodeRos2Aimdk_msgsSrvSetMute_Request = W.runDecoder 9 readRos2Aimdk_msgsSrvSetMute_Request
instance Canonical Ros2Aimdk_msgsSrvSetMute_Request where
  maximumBytes _ = 9
  encodeValue = encodeRos2Aimdk_msgsSrvSetMute_Request
  readValue = readRos2Aimdk_msgsSrvSetMute_Request
data Ros2Aimdk_msgsSrvSetMute_Response = Ros2Aimdk_msgsSrvSetMute_Response
  {
    -- | \@brief aimdk_msgs/srv/SetMute_Response.reponse: aimdk_msgs/msg/CommonResponse.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetMute_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetMute_Response_reponse :: Ros2Aimdk_msgsMsgCommonResponse
  ,
    -- | \@brief aimdk_msgs/srv/SetMute_Response.is_mute: bool.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetMute_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetMute_Response_is_mute :: Bool
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvSetMute_Response :: Ros2Aimdk_msgsSrvSetMute_Response
defaultRos2Aimdk_msgsSrvSetMute_Response = Ros2Aimdk_msgsSrvSetMute_Response
    (defaultRos2Aimdk_msgsMsgCommonResponse) (False)
ros2Aimdk_msgsSrvSetMute_ResponseCodecIdentity :: String
ros2Aimdk_msgsSrvSetMute_ResponseCodecIdentity =
    "UWVMROS1_0ba7d8046b7a0d23deb0b4cdb2ba5d144543a68a2468d657cc0b29f60efdca50"
encodeRos2Aimdk_msgsSrvSetMute_Response :: Ros2Aimdk_msgsSrvSetMute_Response -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsSrvSetMute_Response value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonResponse (ros2Aimdk_msgsSrvSetMute_Response_reponse value)
  b1 <- W.encodeBool (ros2Aimdk_msgsSrvSetMute_Response_is_mute value)
  W.bounded 153 [b0, b1]
readRos2Aimdk_msgsSrvSetMute_Response :: W.Decoder Ros2Aimdk_msgsSrvSetMute_Response
readRos2Aimdk_msgsSrvSetMute_Response = do
  a0 <- readRos2Aimdk_msgsMsgCommonResponse
  a1 <- W.boolean
  let value = Ros2Aimdk_msgsSrvSetMute_Response a0 a1
  case encodeRos2Aimdk_msgsSrvSetMute_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvSetMute_Response :: B.ByteString -> Either Word32 Ros2Aimdk_msgsSrvSetMute_Response
decodeRos2Aimdk_msgsSrvSetMute_Response = W.runDecoder 153 readRos2Aimdk_msgsSrvSetMute_Response
instance Canonical Ros2Aimdk_msgsSrvSetMute_Response where
  maximumBytes _ = 153
  encodeValue = encodeRos2Aimdk_msgsSrvSetMute_Response
  readValue = readRos2Aimdk_msgsSrvSetMute_Response
data Ros2Aimdk_msgsSrvSetVolume_Request = Ros2Aimdk_msgsSrvSetVolume_Request
  {
    -- | \@brief aimdk_msgs/srv/SetVolume_Request.request: aimdk_msgs/msg/CommonRequest.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetVolume_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetVolume_Request_request :: Ros2Aimdk_msgsMsgCommonRequest
  ,
    -- | \@brief aimdk_msgs/srv/SetVolume_Request.audio_volume: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetVolume_Request; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetVolume_Request_audio_volume :: Word32
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvSetVolume_Request :: Ros2Aimdk_msgsSrvSetVolume_Request
defaultRos2Aimdk_msgsSrvSetVolume_Request = Ros2Aimdk_msgsSrvSetVolume_Request
    (defaultRos2Aimdk_msgsMsgCommonRequest) (0)
ros2Aimdk_msgsSrvSetVolume_RequestCodecIdentity :: String
ros2Aimdk_msgsSrvSetVolume_RequestCodecIdentity =
    "UWVMROS1_09161b7a7ae47ab702190725e42e27cd247f681702de05c4f68fa59581f85aad"
encodeRos2Aimdk_msgsSrvSetVolume_Request :: Ros2Aimdk_msgsSrvSetVolume_Request -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsSrvSetVolume_Request value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonRequest (ros2Aimdk_msgsSrvSetVolume_Request_request value)
  b1 <- W.encodeUnsigned 4 (fromIntegral (ros2Aimdk_msgsSrvSetVolume_Request_audio_volume value))
  W.bounded 12 [b0, b1]
readRos2Aimdk_msgsSrvSetVolume_Request :: W.Decoder Ros2Aimdk_msgsSrvSetVolume_Request
readRos2Aimdk_msgsSrvSetVolume_Request = do
  a0 <- readRos2Aimdk_msgsMsgCommonRequest
  a1 <- fromIntegral <$> W.unsigned 4
  let value = Ros2Aimdk_msgsSrvSetVolume_Request a0 a1
  case encodeRos2Aimdk_msgsSrvSetVolume_Request value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvSetVolume_Request :: B.ByteString -> Either Word32 Ros2Aimdk_msgsSrvSetVolume_Request
decodeRos2Aimdk_msgsSrvSetVolume_Request = W.runDecoder 12 readRos2Aimdk_msgsSrvSetVolume_Request
instance Canonical Ros2Aimdk_msgsSrvSetVolume_Request where
  maximumBytes _ = 12
  encodeValue = encodeRos2Aimdk_msgsSrvSetVolume_Request
  readValue = readRos2Aimdk_msgsSrvSetVolume_Request
data Ros2Aimdk_msgsSrvSetVolume_Response = Ros2Aimdk_msgsSrvSetVolume_Response
  {
    -- | \@brief aimdk_msgs/srv/SetVolume_Response.reponse: aimdk_msgs/msg/CommonResponse.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetVolume_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetVolume_Response_reponse :: Ros2Aimdk_msgsMsgCommonResponse
  ,
    -- | \@brief aimdk_msgs/srv/SetVolume_Response.audio_volume: uint32.
    -- \@details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
    -- original field position and signedness; invalid bounds fail instead of truncating the value.
    -- \@units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
    -- frame conversion or normalization.
    -- \@lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
    -- allocator ownership follow the enclosing decode function.
    -- \@see Ros2Aimdk_msgsSrvSetVolume_Response; share/platform/ros/haskell/API-CONTRACT.md
    ros2Aimdk_msgsSrvSetVolume_Response_audio_volume :: Word32
  } deriving (Eq, Show)
defaultRos2Aimdk_msgsSrvSetVolume_Response :: Ros2Aimdk_msgsSrvSetVolume_Response
defaultRos2Aimdk_msgsSrvSetVolume_Response = Ros2Aimdk_msgsSrvSetVolume_Response
    (defaultRos2Aimdk_msgsMsgCommonResponse) (0)
ros2Aimdk_msgsSrvSetVolume_ResponseCodecIdentity :: String
ros2Aimdk_msgsSrvSetVolume_ResponseCodecIdentity =
    "UWVMROS1_e5baf36b9fe876cfa8633c769aa7bcf085b813a7174de2bd6dd2026bc3744a1e"
encodeRos2Aimdk_msgsSrvSetVolume_Response :: Ros2Aimdk_msgsSrvSetVolume_Response -> Either Word32 B.ByteString
encodeRos2Aimdk_msgsSrvSetVolume_Response value = do
  b0 <- encodeRos2Aimdk_msgsMsgCommonResponse (ros2Aimdk_msgsSrvSetVolume_Response_reponse value)
  b1 <- W.encodeUnsigned 4 (fromIntegral (ros2Aimdk_msgsSrvSetVolume_Response_audio_volume value))
  W.bounded 156 [b0, b1]
readRos2Aimdk_msgsSrvSetVolume_Response :: W.Decoder Ros2Aimdk_msgsSrvSetVolume_Response
readRos2Aimdk_msgsSrvSetVolume_Response = do
  a0 <- readRos2Aimdk_msgsMsgCommonResponse
  a1 <- fromIntegral <$> W.unsigned 4
  let value = Ros2Aimdk_msgsSrvSetVolume_Response a0 a1
  case encodeRos2Aimdk_msgsSrvSetVolume_Response value of
    Left c -> W.failure c
    Right _ -> pure value
decodeRos2Aimdk_msgsSrvSetVolume_Response :: B.ByteString -> Either Word32 Ros2Aimdk_msgsSrvSetVolume_Response
decodeRos2Aimdk_msgsSrvSetVolume_Response = W.runDecoder 156 readRos2Aimdk_msgsSrvSetVolume_Response
instance Canonical Ros2Aimdk_msgsSrvSetVolume_Response where
  maximumBytes _ = 156
  encodeValue = encodeRos2Aimdk_msgsSrvSetVolume_Response
  readValue = readRos2Aimdk_msgsSrvSetVolume_Response
